
/************************************************************************


                        Makerom Application: Core



*************************************************************************/

static void* B_10016A60;

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <errno.h>
#include <libelf.h>
#include <fcntl.h>
#include "../include/types.h"
#include "../include/structs.h"
const char* sys_errlist[];
int debug; //debug flag

static void *Allocate;
static void *segmentList;
s32 irixVersion; 



void Checking_IRIX_Version(void) {

    const char* sp1024; ///file?
    
//    #if NON_MATCHING
    //char stream[0x1000];
  //  else
    char stream[0x1000];
    //#endif

    FILE *sp20;
    
    
    sp1024 ="/sbin/uname -r"; //nice!!
    // sp20 = popen(sp1024, "r"); //checking if we have uname
    if ((sp20 = popen(sp1024, "r")) != 0) {
        fgets(stream, 0x1000, sp20);
        pclose(sp20);
        if (strcmp(stream, "5.3\n") == 0) {
            irixVersion = 0;
        } else if (strcmp(stream, "6.2\n") == 0) {
            irixVersion = 1;
        } else if (strcmp(stream, "6.3\n") == 0) {
            irixVersion = 2;
        } else if (strcmp(stream, "6.4\n") == 0) {
            irixVersion = 3;
        } else {
            irixVersion = 4; //in the hypothetical case that we do not have uname, lol
            fprintf(stderr, "makerom: Operating system not recognized.  Trying 6.x ...\n");
        }
    } else {  
        fprintf(stderr, "makerom: Unable to find uname command!\n");
        exit(1);
    }
}

void func_0040A700(void) {
    fprintf(stderr, "usage: makerom [-D<define>] [-I<dir>] -[U<define>]\n");
    fprintf(stderr, "               [-c] [-n] [-d] [-g] [-e] [-m] [-q] [-v]\n");
    fprintf(stderr, "               [-o] [-b bootfile] [-h headerfile]\n");
    fprintf(stderr, "               [-p pif2bootfile]\n");
    fprintf(stderr, "               [-s romsize (Mbits)]\n");
    fprintf(stderr, "               [-f filldata (0x00 - 0xff)]\n");
    fprintf(stderr, "               [-C clockrate] \n");
    fprintf(stderr, "               [-r romfile] specfile\n");
}


s32 Checking_IDO_Version(const char* seg) {
    s32 sp2B4;
    s32 sp2B0;

    //too much characters
    const char sp1B0[0x100];
    char cmd[0x100];
    struct stat sp28;
    FILE* stream;

    sprintf(cmd, "%s/usr/sbin/u64check", seg);
    sp2B4 = (stat(cmd, &sp28) != 0) ? 0 : 1;

    //ah
    sprintf(sp1B0, "/usr/sbin/showprods -D 1 dev"); //IDO installation packages saves a regiter 

    if ((stream = popen(&sp1B0, "r")) != 0) {
        fgets(cmd, 0xFF, stream);
        fgets(cmd, 0xFF, stream);
        fgets(cmd, 0xFF, stream);
        fgets(cmd, 0xFF, stream);
        pclose(stream);
        if (strstr(cmd, "7.0") != NULL) {
            sp2B0 = 1;
        } else {
            sp2B0 = 0;
        }
    }
    if (sp2B0 != 0) {
        fprintf(stderr, "makerom: IDO v7.0 does not work with the Nintendo64\n");
        fprintf(stderr, "         development environment.  Please upgrade to\n");
        fprintf(stderr, "         IDO v7.1.\n");
        exit(1);
    }
    if (sp2B4 != 0) {
        return 2;
    } else {
        return 0;
    }
}


//TODO: we need a valid replacement to sys_errlist 
int execCommand(const char* cmd) {
    int console = system(cmd); //the console command

    if (console == -1) {
        fprintf(stderr, "makerom: cannot execute command: %s\n", sys_errlist[errno]);
        return -1;
    } else if (WIFEXITED(console) && WEXITSTATUS(console) == 0) {
        return 0;
    } else if (keep_going && (WIFEXITED(console) && WEXITSTATUS(console) == 1)) {
            return 1;
    } else {
        if (debug) {
            fprintf(stderr, "makerom: [%s] returned %d (%08x), errno=%d\n", cmd, WEXITSTATUS(console), console, errno);
        }
        return -1;
    }
    
}

char* func_0040B780(char* seg, char* arg1, char* arg2) {
    char* sp34;
    char* sp30;
    s32 pad;
    s32 sp28;

    for (sp28 = 0; sp28 < 3; sp28++) {
        *seg = 0;
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
            strcat(seg, sp30);
        }
        if (arg1 != NULL) {
            strcat(seg, arg1);
            strcat(seg, "/");
        }
        strcat(seg, arg2);
        if (access(seg, 4) == 0) {
            return seg;
        }
    }
    fprintf(stderr, "gloadFindFile: can't find file %s\n", seg);
    *seg = '\0';
    return NULL;
}



#ifdef NON_MATCHING
int createRomImage(const char* arg0, const char* arg1) {
    FILE* sp5C;
    Segment* seg;
    s32 pad;
    char* sp50;
    u32 sp4C;
    s32 sp48;
    Elf* sp44;
    Elf32_Ehdr* sp40;
    Elf_Scn* sp3C;
    Elf32_Shdr* sp38;
    s32 sp34;
    s32 sp30;
    s32 sp2C;
    char* sp28;
    s32 stream;

    if ((sp48 = open(arg1, 0)) == -1) {
        fprintf(stderr, "makerom: %s: %s\n", arg1, sys_errlist[errno]);
        return -1;
    }
    sp44 = elf_begin(sp48, ELF_C_READ, NULL);
    sp40 = elf32_getehdr(sp44);

    for (sp34 = 1; sp34 < sp40->e_shnum; sp34++) {
                sp3C = elf_getscn(sp44, sp34);
        sp38 = elf32_getshdr(sp3C);
        sp50 = elf_strptr(sp44, (u32) sp40->e_shstrndx, sp38->sh_name);
        
        if (strcmp(sp50, ".text") == 0) {
            break;
        }
    }

    //Checking some conditions
    if (sp38->sh_size > 0x50) {
        fprintf(stderr, "makerom: entr size %d is larger than %d\n", sp38->sh_size, 0x50);
        return -1;
    }
    if (lseek(sp48, sp38->sh_offset, 0) == -1) {
        fprintf(stderr, "makerom: lseek of entry section failed\n");
        return -1;
    }
    if (read(sp48, B_10016A60, sp38->sh_size) != sp38->sh_size) {
        fprintf(stderr, "makerom: read of entry section failed\n");
        return -1;
    }
    if (func_0040F214() != 0) {
        return -1;
    }
    for (seg = SegmentList; seg != NULL; seg = seg->next) {
        if (seg->unk28 & 2) {
            func_0040F758(seg);
        } else if (seg->unk28 & 4) {
            func_0040FDE0(seg);
        }
        sp4C = seg->unk24 + seg->unk2C + seg->unk30 + seg->unk34;
    }
    if ((sp5C = fopen(arg0, "w+")) == NULL) {
        fprintf(stderr, "makerom: %s: %s\n", arg0, sys_errlist[errno]);
        return -1;
    }
    if (offset != 0) {
        if ((fseek(sp5C, offset, 0) != 0)) {
            fprintf(stderr, "makerom: %s: fseek error (%s)\n", arg0, sys_errlist[errno]);
            return -1;
        }
    }
    if (fwrite(headerBuf, 1U, headerWordAlignedByteSize, sp5C) != headerWordAlignedByteSize) {
        fprintf(stderr, "makerom: %s: write error\n", arg0);
        return -1;
    }
    if (fseek(sp5C, offset + 8, 0) != 0) {
        fprintf(stderr, "makerom: %s: fseek error (%s)\n", arg0, sys_errlist[errno]);
        return -1;
    }
    if (fwrite(&bootAddress, 4U, 1U, sp5C) != 1) {
        fprintf(stderr, "makerom: %s: write error\n", arg0);
        return -1;
    }
    if (changeclock != 0) {
        stream = 0;
        if (fseek(sp5C, offset + 4, 0) != 0) {
            fprintf(stderr, "makerom: %s: fseek error (%s)\n", arg0, sys_errlist[errno]);
            return -1;
        }
        if (fread(&stream, 4U, 1U, sp5C) != 1) {
            fprintf(stderr, "makerom: %s: read error \n", arg0);
            return -1;
        }
        clockrate |= stream;
        if (fseek(sp5C, offset + 4, 0) != 0) {
            fprintf(stderr, "makerom: %s: fseek error (%s)\n", arg0, sys_errlist[errno]);
            return -1;
        }
        if (fwrite(&clockrate, 4U, 1U, sp5C) != 1) {
            fprintf(stderr, "makerom: %s: write error\n", arg0);
            return -1;
        }
    }
    if (fseek(sp5C, offset + 0x40, 0) != 0) {
        fprintf(stderr, "makerom: %s: fseek error (%s)\n", arg0, sys_errlist[errno]);
        return -1;
    }
    if (fwrite(bootBuf, 1U, bootWordAlignedByteSize, sp5C) != bootWordAlignedByteSize) {
        fprintf(stderr, "makerom: %s: write error\n", arg0);
        return -1;
    }
    if (nofont == 0) {
        if (fseek(sp5C, offset + 0xB70, 0) != 0) {
            fprintf(stderr, "makerom: %s: fseek error (%s)\n", arg0, sys_errlist[errno]);
            return -1;
        }
        if (fwrite(fontBuf, 1U, fontdataWordAlignedByteSize, sp5C) != fontdataWordAlignedByteSize) {
            fprintf(stderr, "makerom: %s: write error\n", arg0);
            return -1;
        }
    }
    if (fseek(sp5C, offset + 0x1000, 0) != 0) {
        fprintf(stderr, "makerom: %s: fseek error (%s)\n", arg0, sys_errlist[errno]);
        return -1;
    }
    if (fwrite(B_10016A60, 1, sp4C, sp5C) != sp4C) {
        fprintf(stderr, "makerom: %s: write error\n", arg0);
        return -1;
    }

    sp30 = sp4C + offset + 0x1000;
    finalromSize <<= 0x11;
    if ((finalromSize != 0) && (sp30 < finalromSize)) {
        if ((sp28 = malloc(0x2000)) == NULL) {
            fprintf(stderr, "malloc failed\n");
            return -1;
        }

        for (sp2C = 0; sp2C < 0x2000; sp2C++) {
            sp28[sp2C] = fillData;
        }
        while (sp30 < finalromSize) {
            if ((finalromSize - sp30) > 0x2000) {
                if (fwrite(sp28, 1, 0x2000, sp5C) != 0x2000) {
                    fprintf(stderr, "makerom: %s: write error %x\n", arg0, sp30);
                    return -1;
                }
                sp30 += 0x2000;
            } else {
                if (fwrite(sp28, 1, finalromSize - sp30, sp5C) != (finalromSize - sp30)) {
                    fprintf(stderr, "makerom: %s: write error\n", arg0);
                    return -1;
                }
                sp30 += finalromSize - sp30;
            }
        }
    }

    return 0;
}
#endif

//Function: 31
int createEntryFile(char* entryFilename, char* outFile) {
    SegmentList* curSeg;
    FILE* entryFile; // 50
    char* compile_cmd; // 4C
    char* sp48;
    unsigned int sp44;
    sp40Struct* sp40;
    unsigned int entryAddr = 0; // 3C
    unsigned int stackAddr = 0; // 38
    char sp28[14] = "__osFinalrom"; // string is only 13 chars

    if ((entryFile = fopen(entryFilename, "w")) == NULL) {
        fprintf(stderr, "makerom: %s: cannot create\n", entryFilename);
        return -1;
    }

    for (curSeg = segmentList; curSeg != NULL; curSeg = curSeg->next) {
        if (curSeg->unk28 & 1) { // BOOT flag?
            sp40 = curSeg->unkC;
            if ((sp40->unk114 = open(sp40->unk4, 0)) == -1) {
                fprintf(stderr, "makerom: %s: %s\n", sp40->unk4, sys_errlist[errno]);
                return -1;
            }
            sp40->unkC = elf_begin(sp40->unk114, ELF_C_READ, NULL);
            if ((elf_kind(sp40->unkC) != 3) || ((sp40->unk10 = elf32_getehdr(sp40->unkC)) == 0)) {
                fprintf(stderr, "makerom: %s: not a valid ELF object file\n", sp40->unk4);
                return -1;
            }
            if ((finalromSize != 0) && (func_0040F3DC(curSeg->unkC, sp28) == 0)) {
                fprintf(stderr, "makerom: use libultra_rom.a to build real game cassette\n");
                return -1;
            }
            if (bootEntryName != NULL) {
                entryAddr = func_0040F3DC(curSeg->unkC, bootEntryName);
                if (entryAddr == 0) {
                    fprintf(stderr, "makerom: %s: cannot find entry symbol %s\n", curSeg->unkC->unk4, bootEntryName);
                    return -1;
                }
            }
            if (bootStackName != NULL) {
                if ((stackAddr = func_0040F3DC(curSeg->unkC, bootStackName)) == 0) {
                    fprintf(stderr, "makerom: %s: cannot find stack symbol %s\n", curSeg->unkC->unk4, bootStackName);
                    return -1;
                }
            } else {
                stackAddr = 0;
            }

            stackAddr += bootStackOffset;
            if ((curSeg->unk3C != 0) && (cosim == 0)) {
                if ((sp48 = malloc(strlen(curSeg->name) + 0x10)) == NULL) {
                    fprintf(stderr, "malloc failed\n");
                    return -1;
                }
                sprintf(sp48, "_%sSegmentBssStart", curSeg->name);
                sp44 = func_0040F3DC(curSeg->unkC, sp48);
                fprintf(entryFile, " la\t$8 0x%x\n", sp44);
                fprintf(entryFile, " li\t$9 0x%x\n", curSeg->unk3C);
                fprintf(entryFile, ".ent entryPoint\n");
                fprintf(entryFile, "entryPoint:\n");
                fprintf(entryFile, " sw $0, 0($8)\n");
                fprintf(entryFile, " sw $0, 4($8)\n");
                fprintf(entryFile, " addi $8, 8\n");
                fprintf(entryFile, " addi $9, 0xfff8\n");
                fprintf(entryFile, " bne  $9, $0, entryPoint\n");
            }
            if (stackAddr != 0) {
                fprintf(entryFile, " la\t$29 0x%x\n", stackAddr);
            }
            if (entryAddr != 0) {
                fprintf(entryFile, " la $10  0x%x\n", entryAddr);
                fprintf(entryFile, " j $10\n");
            }
            fprintf(entryFile, ".end\n");
        }
    }

    free(sp48);
    fclose(entryFile);
    if ((compile_cmd = malloc(sysconf(1))) == NULL) {
        fprintf(stderr, "malloc failed\n");
        return -1;
    }

    strcpy(compile_cmd, "$TOOLROOT/usr/bin/cc -c -non_shared -o ");
    strcat(compile_cmd, outFile);
    strcat(compile_cmd, " ");
    strcat(compile_cmd, entryFilename);

    if (debug) {
        printf("Compiling entry source file\n");
        printf("  %s\n", compile_cmd);
    }
    return execCommand(compile_cmd);
}


int main(int argc, char **argv) {
    int sp364;
    s32 pad1[1];
    StringLinkedList *sp35C;
    char *sp358;
    s32 sp354;
    s32 pad2[2];
    void *sp348;
    void *sp344;
    void *sp340;
    s32 sp33C;
    s32 sp338;
    char sp238[0x100];
    char sp138[0x100];
    char *sp134;
    s32 sp130;
    char sp30[0x100];

    sp348 = NULL;
    sp344 = NULL;
    sp340 = NULL;
    sp33C = 0;
    sp338 = 1;
    sp130 = 0;
    B_10016A20 = argv[0];
    
    // sp354 = sysconf(1); //it checks the system type

    if ((sp354 = sysconf(1)) == -1) { //This is the reason why makerom doesn't work in qemu-irix
        fprintf(stderr, "makerom: sysconf(_SC_ARG_MAX): %s\n", sys_errlist[errno]);
        exit(1);
    }
    // sp358 = malloc(sp354); //memory allocation
    if ((sp358 = malloc(sp354)) == NULL) {
        fprintf(stderr, "malloc failed\n");
        return -1;
    }
    sprintf(sp358, "/usr/lib/cpp -D_LANGUAGE_MAKEROM");
    sp354 -= strlen(sp358) + 1;
    while ((sp364 = getopt(argc, argv, "D:I:U:cdeimnor:gb:h:p:s:f:O:C:QqVv")) != -1) {
        switch (sp364) {
            case 0x3F + 0x5:
            case 0x3F + 0xA:
            case 0x3F + 0x16:
                sp354 -= strlen(optarg) + 3;
                if (sp354 <= 0) {
                    fprintf(stderr, "makerom: too many -[DIU] flags\n");
                    exit(1);
                }
                sprintf(sp358, "%s -%c%s", sp358, sp364, optarg);
                break;

            case 0x3F + 0x24:
                cosim = 1;
                break;

            case 0x3F + 0x25:
                debug = 1;
                break;

            case 0x3F + 0x28:
                gcord = 1;
                break;

            case 0x3F + 0x2C:
                keep_going = 1;
                break;

            case 0x3F + 0x26:
                emulator = 1;
                break;

            case 0x3F + 0x2E:
                loadMap = 1;
                break;

            case 0x3F + 0x2F:
                nofont = 1;
                break;

            case 0x3F + 0x30:
                D_10014204 = 0;
                break;

            case 0x3F + 0x33:
                D_10014200 = optarg;
                break;

            case 0x3F + 0x23:
                sp348 = optarg;
                break;

            case 0x3F + 0x29:
                sp344 = optarg;
                break;

            case 0x3F + 0x31:
                sp340 = optarg;
                break;

            case 0x3F + 0x34:
                finalromSize = strtol(optarg, 0, 0);
                break;

            case 0x3F + 0x27:
                fillData = strtol(optarg, 0, 0);
                break;

            case 0x3F + 0x10:
                offset = strtol(optarg, 0, 0);
                break;

            case 0x3F + 0x4:
                changeclock = 1;
                clockrate = strtol(optarg, 0, 0);
                if (clockrate == 0) {
                    clockrate = 60850000;
                }
                break;
            case 0x3F + 0x0:
                func_0040A700();
                exit(1);

            case 0x3F + 0x12:
            case 0x3F + 0x32:
                sp130 = 1;
                break;

            case 0x3F + 0x17:
            case 0x3F + 0x37:
                func_0040ABA0();
                exit(1);
        }
    }

    if ((argc - optind) != 1) {
        func_0040A700();
        exit(1);
    }
    if ((cosim + emulator) >= 2) {
        fprintf(stderr, "makerom: only specify one of -c, -e, or -i\n");
        exit(1);
    }
    func_0040A810();
    if (sp130 == 0) {
        func_0040ABA0();
    }
    func_0040AC0C(sp348);
    func_0040AE34(sp340);
    func_0040B05C(sp344);
    func_0040B4E8(sp33C);
    if ((unlink(D_10014200) == -1) && (errno != 2)) {
        fprintf(stderr, "makerom: %s: %s\n", D_10014200, sys_errlist[errno]);
        exit(1);
    }
    fileName = argv[optind];
    if ((yyin = fopen(fileName, "r")) == 0) {
        fprintf(stderr, "makerom: %s: %s\n", fileName, sys_errlist[errno]);
        exit(1);
    }
    fclose(yyin);
    sp354 -= strlen(fileName);
    if (sp354 <= 0) {
        fprintf(stderr, "makerom: cpp command line too long\n");
        exit(1);
    }
    sprintf(sp358, "%s %s", sp358, fileName);
    if ((yyin = popen(sp358, "r")) == 0) {
        fprintf(stderr, "makerom: could not run cpp on %s: %s\n", fileName, sys_errlist[errno]);
        exit(1);
    }

    //Flex and bison 
    if (yyparse() != 0) {
        exit(1);
    }
    if (pclose(yyin) != 0) {
        exit(1);
    }
    if (scanSegments() == -1) {
        exit(1);
    }
    if (checkSizes()) {
        sp338 = 0;
    }
    if ((D_10014204 != 0) && checkOverlaps()) {
        sp338 = 0;
    }
    func_0040BA54();
    sigaction(1, &D_100141E0, 0);
    sigaction(2, &D_100141E0, 0);
    sigaction(0xF, &D_100141E0, 0);
    if (debug) {
        printf("Creating segment symbol source file in %s\n", B_10016520);
    }
    if (createSegmentSymbols(B_10016520, B_10016620) == -1) {
        func_0040BC54();
        exit(1);
    }
    for (sp35C = waveList; sp35C != NULL; sp35C = sp35C->next) {
        func_0040B93C(sp35C);
    }
    if ((sp134 = getenv("ROOT")) == NULL) { //Checking if we set the $ROOT shell variable
        sp134 = "/";
    }
    if (irixVersion > 0) { //if we want to run this on modern systems, we may have to remove this
        if (func_0040A9AC(sp134) < 2) {
            fprintf(stderr, "makerom: This IDO version is not compatible with the\n");
            fprintf(stderr, "         Nintendo64 development environment on this\n");
            fprintf(stderr, "         version of IRIX.\n");
            exit(1);
        }
        sprintf(sp238, "%s/usr/sbin/u64check -fmulmul:check:noforce:norepair", sp134);
    } else {
        sprintf(sp238, "%s/usr/sbin/r4300_check", sp134);
    }
    if (debug) {
        printf("Checking fmulmul status\n");
    }
    for (sp35C = waveList; sp35C != NULL; sp35C = sp35C->next) {
            sprintf(sp138, "%s %s", sp238, sp35C->name);
            if (debug != 0) {
                printf("  %s\n", sp138);
            }
            if ((execCommand(sp138) == -1) && !keep_going) {
                func_0040BC54();
                exit(1);
            }
    }
    if (gcord != 0) {
        sprintf(sp238, "%s/usr/lib/PR/gcord ", sp134);
        for (sp35C = waveList; sp35C != NULL; sp35C = sp35C->next) {
            sprintf(sp138, "%s %s", sp238, sp35C->name);
            if (debug != 0) {
                printf("makerom: %s\n", sp138);
            }
            if ((execCommand(sp138) == -1) && (keep_going == 0)) {
                func_0040BC54();
                exit(1);
            }
            strcat(strcpy(sp30, sp35C->name), ".cord");
            strcpy(sp35C->name, sp30);
        }
    }
    if (debug) {
        printf("Creating entry source file in %s\n", B_10016720);
    }
    if (createEntryFile(B_10016720, B_10016820) == -1) {
        func_0040BC54();
        exit(1);
    }
    if (sp338 != 0) {
        if (debug != 0) {
            printf("Extracting sections from ELF wave files");
            printf(" to create ROM image in %s\n", D_10014200);
        }
        if (createRomImage(D_10014200, B_10016820) == -1) {
            func_0040BC54();
            exit(1);
        }
    }
    func_0040BC54();
    if (bootBuf != 0) {
        free(bootBuf);
    }
    if (headerBuf != 0) {
        free(headerBuf);
    }
    if (fontBuf != 0) {
        free(fontBuf);
    }
    // if (sp338 != 0) {
    //     var_s0 = 0;
    // } else {
    //     var_s0 = 1;
    // }
    exit(((sp338 != 0) ? 0 : 1));
    return 0;
}

