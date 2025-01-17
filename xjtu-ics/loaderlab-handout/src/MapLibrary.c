#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include <elf.h>
#include <unistd.h> //for getpagesize
#include <sys/mman.h>
#include <fcntl.h>
#include <sys/stat.h>
#include "Link.h"
#include "LoaderInternal.h"

#define ALIGN_DOWN(base, size) ((base) & -((__typeof__(base))(size)))
#define ALIGN_UP(base, size) ALIGN_DOWN((base) + (size)-1, (size))

static const char *sys_path[] = {
    "/usr/lib/x86_64-linux-gnu/",
    "/lib/x86_64-linux-gnu/",
    ""
};

static const char *fake_so[] = {
    "libc.so.6",
    "ld-linux.so.2",
    ""
};

static void setup_hash(LinkMap *l)
{
    uint32_t *hash;

    /* borrowed from dl-lookup.c:_dl_setup_hash */
    Elf32_Word *hash32 = (Elf32_Word *)l->dynInfo[DT_GNU_HASH]->d_un.d_ptr;
    l->l_nbuckets = *hash32++;
    Elf32_Word symbias = *hash32++;
    Elf32_Word bitmask_nwords = *hash32++;

    l->l_gnu_bitmask_idxbits = bitmask_nwords - 1;
    l->l_gnu_shift = *hash32++;

    l->l_gnu_bitmask = (Elf64_Addr *)hash32;
    hash32 += 64 / 32 * bitmask_nwords;

    l->l_gnu_buckets = hash32;
    hash32 += l->l_nbuckets;
    l->l_gnu_chain_zero = hash32 - symbias;
}

static void fill_info(LinkMap *lib)
{
    Elf64_Dyn *dyn = lib->dyn;
    Elf64_Dyn **dyn_info = lib->dynInfo;

    while (dyn->d_tag != DT_NULL)
    {
        if ((Elf64_Xword)dyn->d_tag < DT_NUM)
            dyn_info[dyn->d_tag] = dyn;
        else if ((Elf64_Xword)dyn->d_tag == DT_RELACOUNT_)
            dyn_info[DT_RELACOUNT] = dyn;
        else if ((Elf64_Xword)dyn->d_tag == DT_GNU_HASH_)
            dyn_info[DT_GNU_HASH] = dyn;
        ++dyn;
    }
    #define rebase(tag)                             \
        do                                          \
        {                                           \
            if (dyn_info[tag])                          \
                dyn_info[tag]->d_un.d_ptr += lib->addr; \
        } while (0)
    rebase(DT_SYMTAB);
    rebase(DT_STRTAB);
    rebase(DT_RELA);
    rebase(DT_JMPREL);
    rebase(DT_GNU_HASH); //DT_GNU_HASH
    rebase(DT_PLTGOT);
    rebase(DT_INIT);
    rebase(DT_INIT_ARRAY);
}

void *MapLibrary(const char *libpath)
{
    /*
     * hint:
     * 
     * lib = malloc(sizeof(LinkMap));
     * 
     * foreach segment:
     * mmap(start_addr, segment_length, segment_prot, MAP_FILE | ..., library_fd, 
     *      segment_offset);
     * 
     * lib -> addr = ...;
     * lib -> dyn = ...;
     * 
     * fill_info(lib);
     * setup_hash(lib);
     * 
     * return lib;
    */
   
    /* Your code here */
    LinkMap* lib = (LinkMap*)malloc(sizeof(LinkMap));
    int lib_fd = open(libpath, O_RDONLY);
    if (lib_fd == -1) {
        printf("error in open file\n");
        exit(-1);
    }

    Elf64_Ehdr* elf_hdr = (Elf64_Ehdr*)malloc(sizeof(Elf64_Ehdr));
    if (read(lib_fd, elf_hdr, sizeof(Elf64_Ehdr)) < 0) {
        perror("error in read file\n");
    }
    Elf64_Phdr* program_hdr = (Elf64_Phdr*)malloc(sizeof(Elf64_Phdr) * elf_hdr->e_phnum);
    if (lseek(lib_fd, elf_hdr->e_phoff, SEEK_SET) == -1) {
        perror("error in lseek\n");
    }
    if (read(lib_fd, program_hdr, sizeof(Elf64_Phdr) * elf_hdr->e_phnum) < 0) {
        perror("error in read file\n");
    }
    if (lseek(lib_fd, 0, SEEK_SET) == -1) {
        perror("error in lseek\n");
    }

    long tot_sz = 0;
    for (int i = 0; i < elf_hdr->e_phnum; ++i) {
        if (program_hdr[i].p_type == PT_LOAD) {
            tot_sz = ALIGN_UP(program_hdr[i].p_vaddr + program_hdr[i].p_memsz, getpagesize());
        }
    }

    lib->addr = (uint64_t)mmap(NULL, tot_sz, PROT_READ | PROT_WRITE, MAP_ANONYMOUS | MAP_PRIVATE, -1, 0);
    if (lib->addr == (uint64_t)MAP_FAILED) {
        printf("mmap error\n");
        exit(-1);
    }

    for (int i = 0; i < elf_hdr->e_phnum; ++i) {
        if (program_hdr[i].p_type == PT_LOAD) {
            int flags = 0;
            if (program_hdr[i].p_flags & PF_W) {
                flags |= PROT_WRITE;
            }
            if (program_hdr[i].p_flags & PF_R) {
                flags |= PROT_READ;
            }
            if (program_hdr[i].p_flags & PF_X) {
                flags |= PROT_EXEC;
            }
            if (lseek(lib_fd, 0, SEEK_SET) == -1) {
                perror("error in lseek\n");
            }
            void* va = mmap((void*)lib->addr + ALIGN_DOWN(program_hdr[i].p_vaddr, getpagesize()),
                            ALIGN_UP(program_hdr[i].p_memsz + program_hdr[i].p_vaddr, getpagesize()) -
                            ALIGN_DOWN(program_hdr[i].p_vaddr, getpagesize()), flags, MAP_FIXED | MAP_PRIVATE,
                            lib_fd, ALIGN_DOWN(program_hdr[i].p_offset, getpagesize()));

            if (va == MAP_FAILED) {
                perror("mmap failed");
                exit(-1);
            }
        }
        if (program_hdr[i].p_type == PT_DYNAMIC) {
            lib->dyn = (Elf64_Dyn*)(program_hdr[i].p_vaddr + lib->addr);
        }
    }

    fill_info(lib);
    setup_hash(lib);

    // DT_NEEDED
    Elf64_Dyn *dyn = lib->dyn;

    while (dyn->d_tag != DT_NULL)
    {
        if ((Elf64_Xword)dyn->d_tag == DT_NEEDED) {
            if (lib->dynInfo[DT_RUNPATH] == NULL) {
                break;
            }
            char* lib_name = (char*)(dyn->d_un.d_val + lib->dynInfo[DT_STRTAB]->d_un.d_ptr);
            char* dep_path = (char*)malloc(strlen(libpath) + 255);
            if (lib->dynInfo[DT_RUNPATH] != NULL) {
                char* run_path = (char*)(lib->dynInfo[DT_RUNPATH]->d_un.d_val + lib->dynInfo[DT_STRTAB]->d_un.d_ptr);
                strcat(dep_path, run_path);
                strcat(dep_path, "/");
            }
            strcat(dep_path, lib_name);
            LinkMap* dep_lib = MapLibrary(dep_path);
            LinkMap* last_lib = lib;
            while (last_lib->searchList != NULL) {
                last_lib = last_lib->searchList;
            }
            last_lib->searchList = dep_lib;
        }
        ++dyn;
    }

    close(lib_fd);
    return lib;
}
