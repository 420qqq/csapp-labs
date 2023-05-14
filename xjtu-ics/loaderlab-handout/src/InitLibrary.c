#include <stdlib.h>
#include <stdio.h>
#include <elf.h>
#include <stdint.h>

#include "Link.h"
#include "LoaderInternal.h"

void InitLibrary(LinkMap *l)
{
    /* Your code here */
    if (l->searchList != NULL) {
        InitLibrary(l->searchList);
    }
    Elf64_Dyn* init_info = l->dynInfo[DT_INIT];
    if (init_info != NULL) {
        void (*func)(void);
        func = (void (*)(void))init_info->d_un.d_ptr;
        func();
        int func_sz = l->dynInfo[DT_INIT_ARRAYSZ]->d_un.d_val;
        for (int i = 0; i < func_sz / sizeof(void*); ++i) {
            func = (void (*)(void))(*(uint64_t*)(l->dynInfo[DT_INIT_ARRAY]->d_un.d_ptr + i*sizeof(void*)));
            func();
        }
    }
}
