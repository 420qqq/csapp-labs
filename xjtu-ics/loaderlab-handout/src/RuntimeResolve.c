#include <elf.h>
#include <stdlib.h>
#include <stdio.h>

#include "Link.h"
#include "LoaderInternal.h"

Elf64_Addr __attribute__((visibility ("hidden"))) //this makes trampoline to call it w/o plt
runtimeResolve(LinkMap *lib, Elf64_Word reloc_entry)
{
    printf("Resolving address for entry %u\n", reloc_entry);
    /* Your code here */
    int plt_sz = lib->dynInfo[DT_PLTRELSZ]->d_un.d_val;
    int plt_entry_sz = 24;
    Elf64_Sym* sym_tab = (Elf64_Sym*)lib->dynInfo[DT_SYMTAB]->d_un.d_ptr;
    char* str_tab = (char*)lib->dynInfo[DT_STRTAB]->d_un.d_ptr;

    Elf64_Dyn* plt_info = lib->dynInfo[DT_JMPREL];
    Elf64_Rela* rela = (Elf64_Rela*)(plt_info->d_un.d_ptr + reloc_entry * plt_entry_sz);
    char* sym_name = (char*)(str_tab + sym_tab[ELF64_R_SYM(rela->r_info)].st_name);

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
    return sym_address;
}