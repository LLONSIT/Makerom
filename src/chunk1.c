#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include "../include/types.h"
#include "../include/structs.h"

//Makerom function: 11
char* func_0040B780(char* arg0, char* arg1, char* arg2) {
    char* sp34;
    char* sp30;
    s32 pad;
    s32 sp28;

    for (sp28 = 0; sp28 < 3; sp28++) {
        *arg0 = 0;
        switch (sp28) {
        case 0:
            sp34 = "ROOT";
            break;
        case 1:
            sp34 = "WORKAREA";
            break;
        case 2:
            sp34 = NULL;
            break;
        }

        if (sp34 != NULL) {
            if ((sp30 = getenv(sp34)) == NULL) {
                continue;
            }
            strcat(arg0, sp30);
        }
        if (arg1 != NULL) {
            strcat(arg0, arg1);
            strcat(arg0, "/");
        }
        strcat(arg0, arg2);
        if (access(arg0, 4) == 0) {
            return arg0;
        }
    }
    fprintf(stderr, "gloadFindFile: can't find file %s\n", arg0);
    *arg0 = '\0';
    return NULL;
}

//TODO: elf or obj  sruct?
//Function: 198
s32 elf_kind(elf* arg0) {
    if (arg0 == NULL) {
        return 0;
    }
    return arg0->unk4C;
}
