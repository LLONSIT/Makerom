/***************************************************************************
 *
 *
 *
 *            MakeRom Application:  Segment Functionality
 *
 *
 *
 *
 * ***********************************************************************/



#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <errno.h>
#include <libelf.h>
#include <fcntl.h>
#include "../include/types.h"
#include "../include/structs.h"

static void Allocate;



s32 ALIGNn(u32 align, s32 offset) {
    if (align == 0) {
        align = 0x10; //The 0x10 Alignment
    }
      return ((u32) ((offset + align) - 1) / align) * align;
}



int scanSegments() {
    struct Segment* seg;
    u32 offset;
    s32 ptr; //Guess

    offset = 0x50;

    if (elf_version(1) == 0) {
        fprintf(stderr, "makerom: out of date\n");
        return -1;
    }


    for (seg = SegmentList; seg != NULL; seg = seg->unk0) {
        if (seg->unkC == 0) {
            fprintf(stderr, "makerom: segment \"%s\": not found in any wave\n", seg->unk4);
            return -1;
        }

        seg->unk24 = offset;
        if (seg->unk28 & 2) {
            if (func_0040CBA4(seg) == -1) {
                return -1;
            }

        } else if (seg->unk28 & 4) {
            if (func_0040DA68(seg) == -1) {
                return -1;
            }
        }

        offset = seg->unk24;
        offset += seg->unk2C + seg->unk30 + seg->unk34;
        offset = ALIGNn(seg->align, offset); //Segment 0x10 alignment
    }

    ptr = (offset > 0x50) ? offset : 0x50;

    Allocate = calloc(ptr, 1);

    if (Allocate == NULL) { //if the memory allocation fails.
        fprintf(stderr, "makerom: malloc failed [RomSize= %d kB]\n", (ptr + 0x3FF) / 0x400);
        return -1;
    }
    return 0;
}

//IDO special flags here?
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

s32 func_0040FDE0(struct Segment* seg) {
    UnkStruct* spBC; // linked list (files?)
    s32 spB8;
    s32 spB4;
    u32 spB0;
    u32 spAC;
    struct stat sp24;

    spAC = 0;
    spB4 = seg->unk24;

    for (spBC = seg->unk8; spBC != NULL; spBC = spBC->unk0) {
        if ((spB8 = open(spBC->unk4, 0)) == -1) {
            fprintf(stderr, "makerom: %s: %s\n", spBC->unk4, sys_errlist[errno]);
            return -1;
        }
        if (fstat(spB8, &sp24) == -1) {
            fprintf(stderr, "makerom: lstat failed: %s\n", sys_errlist[errno]);
            return -1;
        }

        spB0 = sp24.st_size;
        spAC += spB0;
        if (spAC > seg->unk30) {
            fprintf(stderr, "makerom: %s: segment size changed\n", seg->unk4);
            return -1;
        }
        if (read(spB8, B_10016A60 + spB4, spB0) != spB0) {
            fprintf(stderr, "makerom: %s: read failed (%s)\n", spBC->unk4, sys_errlist[errno]);
            return -1;
        }

        close(spB8);
        spB4 += spB0;
    }

    return 0;
}

s32 checkSizes(void) {
    Segment* seg;
    s32 sp30;

    sp30 = 0;
    for (seg = SegmentList; seg != NULL; seg = seg->next) {
            if ((seg->unk28 & 1) && ((seg->unk2C + seg->unk30 + seg->unk34) > 0x100000)) {
                fprintf(stderr, "makerom: segment \"%s\" (text+data) size ", sp34->name);
                fprintf(stderr, "(%d+%d) = %d (0x%x)\n         ",
                    seg->unk2C,
                    seg->unk30 + seg->unk34,
                    seg->unk2C + seg->unk30 + seg->unk34,
                    seg->unk2C + seg->unk30 + seg->unk34
                    );
                fprintf(stderr, "exceeds maximum BOOT segment size %d (0x%x)\n", 0x100000, 0x100000);
                sp30 = 1;
            }
            if (seg->unk40 > seg->unk44) {
                fprintf(stderr, "makerom: segment \"%s\" (text+data+bss) size ", seg->name);
                fprintf(stderr, "(%d+%d+%d) = %d (0x%x)\n         ",
                    seg->unk2C,
                    seg->unk30 + seg->unk34,
                    seg->unk3C + seg->unk38,
                    seg->unk40, seg->unk40
                    );
                fprintf(stderr, "exceeds given maximum segment size %d (0x%x)\n", sp34->unk44, sp34->unk44);
                sp30 = 1;
            }

    }

    if (sp30 != 0) {
        return -1;
    } else {
        return 0;
    }
}

