#include <dlfcn.h> //turn to dlsym for help at fake load object
#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <elf.h>
#include <link.h>
#include <string.h>

#include "Link.h"

void trampoline();

// glibc version to hash a symbol
static uint_fast32_t
dl_new_hash(const char *s)
{
    uint_fast32_t h = 5381;
    for (unsigned char c = *s; c != '\0'; c = *++s)
        h = h * 33 + c;
    return h & 0xffffffff;
}

// find symbol `name` inside the symbol table of `dep`
void *symbolLookup(LinkMap *dep, const char *name)
{
    if(dep->fake)
    {
        void *handle = dlopen(dep->name, RTLD_LAZY);
        if(!handle)
        {
            fprintf(stderr, "relocLibrary error: cannot dlopen a fake object named %s", dep->name);
            abort();
        }
        dep->fakeHandle = handle;
        return dlsym(handle, name);
    }

    Elf64_Sym *symtab = (Elf64_Sym *)dep->dynInfo[DT_SYMTAB]->d_un.d_ptr;
    const char *strtab = (const char *)dep->dynInfo[DT_STRTAB]->d_un.d_ptr;

    uint_fast32_t new_hash = dl_new_hash(name);
    Elf64_Sym *sym;
    const Elf64_Addr *bitmask = dep->l_gnu_bitmask;
    uint32_t symidx;
    Elf64_Addr bitmask_word = bitmask[(new_hash / __ELF_NATIVE_CLASS) & dep->l_gnu_bitmask_idxbits];
    unsigned int hashbit1 = new_hash & (__ELF_NATIVE_CLASS - 1);
    unsigned int hashbit2 = ((new_hash >> dep->l_gnu_shift) & (__ELF_NATIVE_CLASS - 1));
    if ((bitmask_word >> hashbit1) & (bitmask_word >> hashbit2) & 1)
    {
        Elf32_Word bucket = dep->l_gnu_buckets[new_hash % dep->l_nbuckets];
        if (bucket != 0)
        {
            const Elf32_Word *hasharr = &dep->l_gnu_chain_zero[bucket];
            do
            {
                if (((*hasharr ^ new_hash) >> 1) == 0)
                {
                    symidx = hasharr - dep->l_gnu_chain_zero;
                    /* now, symtab[symidx] is the current symbol.
                       Hash table has done its job */
                    const char *symname = strtab + symtab[symidx].st_name;
                    if (!strcmp(symname, name))
                    {    
                        Elf64_Sym *s = &symtab[symidx];
                        // return the real address of found symbol
                        return (void *)(s->st_value + dep->addr);
                    }
                }
            } while ((*hasharr++ & 1u) == 0);
        }
    }
    return NULL; //not this dependency
}

void RelocLibrary(LinkMap *lib, int mode)
{
    /* Your code here */
    // relocate dependencies
    if (lib->searchList != NULL) {
        RelocLibrary(lib->searchList, mode);
    }

    // relocate plt and fake in the end
    Elf64_Dyn* plt_info = lib->dynInfo[DT_JMPREL];
    if (plt_info != NULL) {
        int plt_sz = lib->dynInfo[DT_PLTRELSZ]->d_un.d_val;
        int plt_entry_sz = 24;
        Elf64_Sym* sym_tab = (Elf64_Sym*)lib->dynInfo[DT_SYMTAB]->d_un.d_ptr;
        char* str_tab = (char*)lib->dynInfo[DT_STRTAB]->d_un.d_ptr;
        for (int i = 0; i < plt_sz / plt_entry_sz; ++i) {
            Elf64_Rela* rela = (Elf64_Rela*)(plt_info->d_un.d_ptr + i * plt_entry_sz);

            char* sym_name = (char*)(str_tab + sym_tab[ELF64_R_SYM(rela->r_info)].st_name);
            if (mode == 0) {
                LinkMap* cur_map = lib;
                uint64_t sym_address = 0;
                while(sym_address == (uint64_t)NULL) {
                    sym_address = (uint64_t)symbolLookup(cur_map, sym_name);
                    if (cur_map->searchList == NULL) {
                        if (sym_address == (uint64_t)NULL) {
                            cur_map = (LinkMap*) malloc(sizeof(LinkMap));
                            *cur_map = *lib;
                            cur_map->fake = 1;
                            sym_address = (uint64_t)symbolLookup(cur_map, sym_name);
                        }
                        break;
                    }
                    cur_map = cur_map->searchList;
                }
                if (sym_address == (uint64_t)NULL) {
                    perror("error in symbol relocation\n");
                }
                *(uint64_t *)(lib->addr + rela->r_offset) = sym_address + rela->r_addend;
            } else {

                // lazy binding
                *(uint64_t *)(lib->addr + rela->r_offset) = lib->addr + 0x1036 + i * 0x10;

                uint64_t* got_tab = (void*)lib->dynInfo[DT_PLTGOT]->d_un.d_ptr;
                got_tab[1] = (uint64_t)lib;
                got_tab[2] = (uint64_t)trampoline;
                //got_tab[2] = (uint64_t) 0x7370 + lib->addr;//symbolLookup(lib, "trampoline");
            }
        }
    }

    // relocate dyn
    Elf64_Dyn* rela_info = lib->dynInfo[DT_RELA];
    if (rela_info != NULL) {
        Elf64_Rela* rela;
        int rela_sz = lib->dynInfo[DT_RELASZ]->d_un.d_val;
        int rela_ent = lib->dynInfo[DT_RELAENT]->d_un.d_val;
        Elf64_Sym* sym_tab = (Elf64_Sym*)lib->dynInfo[DT_SYMTAB]->d_un.d_ptr;
        char* str_tab = (char*)lib->dynInfo[DT_STRTAB]->d_un.d_ptr;
        for (int i = 0; i < rela_sz / rela_ent; ++i) {
            rela = (Elf64_Rela*)(rela_info->d_un.d_ptr + i * rela_ent);
            // R_X86_64_RELATIVE
            if (ELF64_R_TYPE(rela->r_info) == R_X86_64_RELATIVE) {
                *(uint64_t *)(lib->addr + rela->r_offset) = rela->r_addend + lib->addr;
            }
            // R_X86_64_GLOB_DAT
            if (ELF64_R_TYPE(rela->r_info) == R_X86_64_GLOB_DAT) {
                Elf64_Sym* sym = &sym_tab[ELF64_R_SYM(rela->r_info)];
                if (ELF64_ST_BIND(sym->st_info) == STB_WEAK) {
                    continue;
                }
                char* sym_name = (char*)(str_tab + sym->st_name);

                LinkMap* cur_map = lib;
                uint64_t sym_address = 0;
                while(sym_address == (uint64_t)NULL) {
                    sym_address = (uint64_t)symbolLookup(cur_map, sym_name);
                    if (cur_map->searchList == NULL) {
                        break;
                    }
                    cur_map = cur_map->searchList;
                }
                if (sym_address == (uint64_t)NULL) {
                    perror("error in symbol relocation\n");
                }

                *(uint64_t *)(lib->addr + rela->r_offset) = lib->addr + sym->st_value;
            }
        }
    }
}
