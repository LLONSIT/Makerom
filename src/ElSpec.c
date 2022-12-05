/**********************************************************************
 *
 *
 *
 *
 *          MakerRom Application: ElSpec Functionality
 *
 *
 *
 *
 *
 *******************************************************************/




#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <errno.h>
#include <libelf.h>
#include <fcntl.h>
#include "../include/types.h"
#include "../include/structs.h"


int createElspec(UnkStruct* seg) {
    FILE* sp2C;
    sp28UnkStruct* sp28;
    sp24UnkStruct* sp24;
    sp20UnkStruct* sp20;

    if ((sp2C = fopen(seg->unk14, "w")) == NULL) {
        fprintf(stderr, "makerom: %s: cannot create\n", seg->unk14);
        return -1;
    }
    fprintf(sp2C, "$ignoreoverlaps = true\n\n");
    for (sp28 = seg->unk8; sp28 != NULL; sp28 = sp28->unk0) {
        sp24 = sp28->unk4;

        if (!(sp24->unk28 & 2)) {
            continue;
        }

        fprintf(sp2C, "beginseg\n");
        fprintf(sp2C, "\tsegtype LOAD\n");
        fprintf(sp2C, "\tsegflags R X\n");
        fprintf(sp2C, "\tvaddr 0x%x\n", sp24->unk10);
        fprintf(sp2C, "\tcontents\n");
        fprintf(sp2C, "\tbeginscn .%s.text\n", sp24->unk4);
        fprintf(sp2C, "\t\tscntype PROGBITS\n");
        if (sp24->unk4C != 0) {
            fprintf(sp2C, "\t\tscnalign %d\n", sp24->unk4C);
        }
        fprintf(sp2C, "\t\tscnflags ALLOC EXECINSTR\n");

        for (sp20 = sp24->unk8; sp20 != NULL; sp20 = sp20->unk0) {
            fprintf(sp2C, "\t\tsection .text in object %s\n", sp20->unk4);
        }

        fprintf(sp2C, "\tendscn\n");
        fprintf(sp2C, "\tbeginscn .%s.data\n", sp24->unk4);
        fprintf(sp2C, "\t\tscntype PROGBITS\n");
        if (sp24->unk50 != 0) {
            fprintf(sp2C, "\t\tscnalign %d\n", sp24->unk50);
        }
        fprintf(sp2C, "\t\tscnflags ALLOC WRITE\n");

        for (sp20 = sp24->unk8; sp20 != NULL; sp20 = sp20->unk0) {
            fprintf(sp2C, "\t\tsection .data in object %s\n", sp20->unk4);
            fprintf(sp2C, "\t\tsection .rodata in object %s\n", sp20->unk4);
        }
        fprintf(sp2C, "\tendscn\n");
        fprintf(sp2C, "\tbeginscn .%s.sdata\n", sp24->unk4);
        fprintf(sp2C, "\t\tscntype PROGBITS\n");
        if (sp24->unk54 != 0) {
            fprintf(sp2C, "\t\tscnalign %d\n", sp24->unk54);
        }
        fprintf(sp2C, "\t\tscnflags GPREL ALLOC WRITE\n");

        for (sp20 = sp24->unk8; sp20 != NULL; sp20 = sp20->unk0) {
            fprintf(sp2C, "\t\tsection .sdata in object %s\n", sp20->unk4);
        }

        fprintf(sp2C, "\tendscn\n");
        fprintf(sp2C, "\tbeginscn .%s.sbss\n", sp24->unk4);
        fprintf(sp2C, "\t\tscntype NOBITS\n");
        if (sp24->unk58 != 0) {
            fprintf(sp2C, "\t\tscnalign %d\n", sp24->unk58);
        }
        fprintf(sp2C, "\t\tscnflags GPREL ALLOC WRITE\n");

        for (sp20 = sp24->unk8; sp20 != NULL; sp20 = sp20->unk0) {
            fprintf(sp2C, "\t\tsection .sbss in object %s\n", sp20->unk4);
        }

        fprintf(sp2C, "\tendscn\n");
        fprintf(sp2C, "\tbeginscn .%s.bss\n", sp24->unk4);
        fprintf(sp2C, "\t\tscntype NOBITS\n");
        if (sp24->unk5C != 0) {
            fprintf(sp2C, "\t\tscnalign %d\n", sp24->unk5C);
        }
        fprintf(sp2C, "\t\tscnflags ALLOC WRITE\n");

        for (sp20 = sp24->unk8; sp20 != NULL; sp20 = sp20->unk0) {
            fprintf(sp2C, "\t\tsection .bss in object %s\n", sp20->unk4);
        }

        fprintf(sp2C, "\tendscn\n");
        fprintf(sp2C, "endseg\n");
    }

    fprintf(sp2C, "beginseg\n");
    fprintf(sp2C, "\tsegtype noload\n");
    fprintf(sp2C, "\tcontents\n");
    fprintf(sp2C, "\tdefault\n");
    fprintf(sp2C, "\tbeginscn .MIPS.options\n");
    fprintf(sp2C, "\t\tscntype 0x7000000d\n");
    fprintf(sp2C, "\t\tsection .MIPS.options in ldobj\n");
    fprintf(sp2C, "\tendscn\n");
    fprintf(sp2C, "\tbeginscn .reginfo\n");
    fprintf(sp2C, "\t\tscntype 0x70000006\n");
    fprintf(sp2C, "\t\tsection .reginfo in ldobj\n");
    fprintf(sp2C, "\tendscn\n");
    fprintf(sp2C, "endseg\n");

    fclose(sp2C);

    return 0;
}
