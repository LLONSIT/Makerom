#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <sys/stat.h>
#include <unistd.h>
#include <libelf.h>
#include <fcntl.h>
#include "types.h"
#include "makerom.h"

s32 runLinker(Wave* wave, unsigned char* symbolFile, unsigned char* objListFile) {
    char* cmd;
    SegmentChain* sc;
    Segment* seg;
    Path* p;
    FILE* objfd;

    if ((cmd = malloc(sysconf(1))) == NULL) {
        fprintf(stderr, "malloc failed\n");
        return -1;
    }
    strcpy(cmd, "$ROOT/usr/lib/PR/nld -32 -g -non_shared -G 0 -elspec ");
    
    strcat(cmd, wave->elspecFile);
    strcat(cmd, " -rom ");
    if (loadMap) {
        strcat(cmd, " -m ");
    }
    strcat(cmd, " -o ");
    strcat(cmd, wave->name);
    strcat(cmd, " ");
    strcat(cmd, symbolFile);
    strcat(cmd, " -objectlist ");
    strcat(cmd, objListFile);
    objfd = fopen(objListFile, "w");

    for (sc = wave->segmentChain; sc != NULL; sc = sc->next) {
        seg = sc->segment;
        if (!(seg->flags & 2)) {
            continue;
        }
        for (p = seg->pathList; p != NULL; p = p->next) {
            fprintf(objfd, "%s\n", p->name);
        }
    }
    fclose(objfd);
    if (debug) {
        printf("Linking to ELF wave file\n");
        printf("  %s\n", cmd);
    }
    return execCommand(cmd);
}



int createElspec(Wave* wave) {
    FILE* f;
    SegmentChain* sc;
    Segment* seg;
    Path* p;

    if ((f = fopen(wave->elspecFile, "w")) == NULL) {
        fprintf(stderr, "makerom: %s: cannot create\n", wave->elspecFile);
        return -1;
    }
    fprintf(f, "$ignoreoverlaps = true\n\n");
    for (sc = wave->segmentChain; sc != NULL; sc = sc->next) {
        seg = sc->segment;

        if (!(seg->flags & 2)) { //MACRO
            continue;
        }

        fprintf(f, "beginseg\n");
        fprintf(f, "\tsegtype LOAD\n");
        fprintf(f, "\tsegflags R X\n");
        fprintf(f, "\tvaddr 0x%x\n", seg->address);
        fprintf(f, "\tcontents\n");
        fprintf(f, "\tbeginscn .%s.text\n", seg->name);
        fprintf(f, "\t\tscntype PROGBITS\n");
        if (seg->textAlign != 0) {
            fprintf(f, "\t\tscnalign %d\n", seg->textAlign);
        }
        fprintf(f, "\t\tscnflags ALLOC EXECINSTR\n");

        for (p = seg->pathList; p != NULL; p = p->next) {
            fprintf(f, "\t\tsection .text in object %s\n", p->name);
        }

        fprintf(f, "\tendscn\n");
        fprintf(f, "\tbeginscn .%s.data\n", seg->name);
        fprintf(f, "\t\tscntype PROGBITS\n");
        if (seg->dataAlign != 0) {
            fprintf(f, "\t\tscnalign %d\n", seg->dataAlign);
        }
        fprintf(f, "\t\tscnflags ALLOC WRITE\n");

        for (p = seg->pathList; p != NULL; p = p->next) {
            fprintf(f, "\t\tsection .data in object %s\n", p->name);
            fprintf(f, "\t\tsection .rodata in object %s\n", p->name);
        }
        fprintf(f, "\tendscn\n");
        fprintf(f, "\tbeginscn .%s.sdata\n", seg->name);
        fprintf(f, "\t\tscntype PROGBITS\n");
        if (seg->sdataAlign != 0) {
            fprintf(f, "\t\tscnalign %d\n", seg->sdataAlign);
        }
        fprintf(f, "\t\tscnflags GPREL ALLOC WRITE\n");
        
        for (p = seg->pathList; p != NULL; p = p->next) {
            fprintf(f, "\t\tsection .sdata in object %s\n", p->name);
        }

        fprintf(f, "\tendscn\n");
        fprintf(f, "\tbeginscn .%s.sbss\n", seg->name);
        fprintf(f, "\t\tscntype NOBITS\n");
        if (seg->sbssAlign != 0) {
            fprintf(f, "\t\tscnalign %d\n", seg->sbssAlign);
        }
        fprintf(f, "\t\tscnflags GPREL ALLOC WRITE\n");

        for (p = seg->pathList; p != NULL; p = p->next) {
            fprintf(f, "\t\tsection .sbss in object %s\n", p->name);
        }

        fprintf(f, "\tendscn\n");
        fprintf(f, "\tbeginscn .%s.bss\n", seg->name);
        fprintf(f, "\t\tscntype NOBITS\n");
        if (seg->bssAlign != 0) {
            fprintf(f, "\t\tscnalign %d\n", seg->bssAlign);
        }
        fprintf(f, "\t\tscnflags ALLOC WRITE\n");

        for (p = seg->pathList; p != NULL; p = p->next) {
            fprintf(f, "\t\tsection .bss in object %s\n", p->name);
        }

        fprintf(f, "\tendscn\n");
        fprintf(f, "endseg\n");
    }

    fprintf(f, "beginseg\n");
    fprintf(f, "\tsegtype noload\n");
    fprintf(f, "\tcontents\n");
    fprintf(f, "\tdefault\n");
    fprintf(f, "\tbeginscn .MIPS.options\n");
    fprintf(f, "\t\tscntype 0x7000000d\n");
    fprintf(f, "\t\tsection .MIPS.options in ldobj\n");
    fprintf(f, "\tendscn\n");
    fprintf(f, "\tbeginscn .reginfo\n");
    fprintf(f, "\t\tscntype 0x70000006\n");
    fprintf(f, "\t\tsection .reginfo in ldobj\n");
    fprintf(f, "\tendscn\n");
    fprintf(f, "endseg\n");

    fclose(f);

    return 0;
}
