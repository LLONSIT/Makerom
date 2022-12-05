#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <sys/stat.h>
#include <unistd.h>
#include <libelf.h>
#include <fcntl.h>
#include "types.h"
#include "structs.h"
#include "functions.h"

const char *sys_errlist[];


s32 func_0040FDE0(struct Segment* segment) {
    Segment* seg; // linked list (files?)
    s32 spB8;
    s32 spB4;
    u32 spB0;
    u32 spAC;
    struct stat sp24;

    spAC = 0;
    spB4 = segment->unk_24;

    for (seg = segment->files; seg != NULL; seg = seg->next) {
        if ((spB8 = open(seg->name, 0)) == -1) {
            fprintf(stderr, "makerom: %s: %s\n", seg->name, sys_errlist[errno]);
            return -1;
        }
        if (fstat(spB8, &sp24) == -1) {
            fprintf(stderr, "makerom: lstat failed: %s\n", sys_errlist[errno]);
            return -1;
        }

        spB0 = sp24.st_size;
        spAC += spB0;
        if (spAC > segment->data_rodata_size) {
            fprintf(stderr, "makerom: %s: segment size changed\n", segment->name);
            return -1;
        }
        if (read(spB8, B_10016A60 + spB4, spB0) != spB0) {
            fprintf(stderr, "makerom: %s: read failed (%s)\n", seg->name, sys_errlist[errno]);
            return -1;
        }

        close(spB8);
        spB4 += spB0;
    }

    return 0;
}
