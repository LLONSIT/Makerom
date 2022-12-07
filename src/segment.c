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

s32 readCoff(s32 arg0, void *arg1) {
    s32 sp2C;
    s32 pad[0x2];

    
    OFileName = arg0;
    
    SName = ".text";
    
    sp2C = func_0041093C(arg1);
    
    if (sp2C < 0) {
        return -1;
    }
    return sp2C;
}


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

#define TO_PHYSICAL(addr) ((u32)(addr) & 0x1FFFFFFF)

int checkOverlaps(void) {
    Wave* w;
    SegmentChain* sp38;
    SegmentChain* sp34;
    Segment* sp30;
    Segment* sp2C;
    int sp28;

    sp28 = 0;
    
    for (w = waveList; w != NULL; w = w->next) {
        for (sp38 = w->segmentChain; sp38 != NULL; sp38 = sp38->next) {
            for (sp34 = sp38->next; sp34 != NULL; sp34 = sp34->next) {
                sp30 = sp38->segment;
                sp2C = sp34->segment;
                if ((sp30->address >= 0x80000000) && (sp30->address < 0xC0000000) 
                        && (sp2C->address >= 0x80000000) && (sp2C->address < 0xC0000000) 
                        && ((TO_PHYSICAL(sp30->address) + sp30->totalSize) > TO_PHYSICAL(sp2C->address)) 
                        && ((TO_PHYSICAL(sp2C->address) + sp2C->totalSize) > TO_PHYSICAL(sp30->address))) {
                    fprintf(stderr, "makerom: segment \"%s\" [0x%x, 0x%x) overlaps with\n", sp30->name, sp30->address, sp30->address + sp30->totalSize);
                    fprintf(stderr, "         segment \"%s\" [0x%x, 0x%x)\n", sp2C->name, sp2C->address, sp2C->address + sp2C->totalSize);
                    fprintf(stderr, "         in wave \"%s\"\n", w->name);
                    sp28 = 1;
                }
            }
        }
    }
    return sp28;
}
