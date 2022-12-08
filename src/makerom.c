#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <sys/stat.h>
#include <unistd.h>
#include <libelf.h>
#include <fcntl.h>
#include <dlfcn.h>
#include "sex.h"
#include "types.h"
#include "structs.h"

const char *sys_errlist[];
extern s32 func_0040FDE0(struct Segment* segment);
extern s32 func_0040F214(void);



void getOsVersion(void) {

    const char* cmd;
    char buf[0x1000]; //string


    FILE *procPtr; //file

	
	//Why put this as a char?
    

    #ifdef NON_MATCHING
	 //checking if we have uname
    if ((procPtr = popen("/sbin/uname -r", "r")) != 0) {
    
    #else

        cmd = "/sbin/uname -r";
            
    if ((procPtr = popen(cmd, "r")) != 0)
    #endif        
        
        fgets(buf, 0x1000, procPtr);
        pclose(procPtr);
        if (strcmp(buf, "5.3\n") == 0) {
            irixVersion = 0;
        } else if (strcmp(buf, "6.2\n") == 0) {
            irixVersion = 1;
        } else if (strcmp(buf, "6.3\n") == 0) {
            irixVersion = 2;
        } else if (strcmp(buf, "6.4\n") == 0) {
            irixVersion = 3;
        } else {
            irixVersion = 4;
            fprintf(stderr, "makerom: Operating system not recognized.  Trying 6.x ...\n");
        }
    } else {
        fprintf(stderr, "makerom: Unable to find uname command!\n");
        exit(1);
    }
}

void usage(void) {
    fprintf(stderr, "usage: makerom [-D<define>] [-I<dir>] -[U<define>]\n");
    fprintf(stderr, "               [-c] [-n] [-d] [-g] [-e] [-m] [-q] [-v]\n");
    fprintf(stderr, "               [-o] [-b bootfile] [-h headerfile]\n");
    fprintf(stderr, "               [-p pif2bootfile]\n");
    fprintf(stderr, "               [-s romsize (Mbits)]\n");
    fprintf(stderr, "               [-f filldata (0x00 - 0xff)]\n");
    fprintf(stderr, "               [-C clockrate] \n");
    fprintf(stderr, "               [-r romfile] specfile\n");
}


#ifdef __sgi
int checkIdoVersion(const char* seg) {
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
#endif

//TODO: we need a replacement for sys_errlist
int execCommand(const char* cmd) {
    int console = system(cmd); //the console command

    if (console == -1) { //this condition doesn't work
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


void func_0040B05C(char *arg0) {
    s32 sp2BC;
    char sp1BC[0x100];
    struct stat sp134;
    char sp34[0x100];
    char sp30[4];
    s32 sp2C;
    s32 sp28;
    s32 sp24;
    s32 sp20;
    // s32 temp_t8;
    // u8 *temp_t6_2;
    
    if ((arg0 == NULL) && (gloadFindFile(sp1BC, "/usr/lib/PR", "romheader") != 0)) {
        arg0 = sp1BC;
    }
    if (arg0 != NULL) {
        if ((sp2BC = open(arg0, 0x800)) < 0) {
            sprintf(sp34, "%s unable to open %s", B_10016A20, arg0);
            perror(sp34);
            exit(1);
        }
        if (fstat(sp2BC, &sp134) < 0) {
            sprintf(sp34, "%s unable to stat %s", B_10016A20, arg0);
            perror(sp34);
            close(sp2BC);
            exit(1);
        }
        
        headerWordAlignedByteSize = sp134.st_size;
        
        headerBuf = malloc(headerWordAlignedByteSize);
        
        if (headerBuf == 0) {
            fprintf(stderr, "%s: unable to malloc buffer to hold %d bytes\n", B_10016A20, headerWordAlignedByteSize);
            close(sp2BC);
            exit(1);
        }

        sp30[1] = '\0';
        for (sp28 = 0, sp24 = 0; sp24 < headerWordAlignedByteSize; sp28++, sp24++) {
                sp20 = read(sp2BC, &sp30, 1);
                if (sp20 != 1) {
                    fprintf(stderr, "%s: short read from %s.\n", B_10016A20, arg0);
                    free(headerBuf);
                    close(sp2BC);
                    exit(1);
                }
                if (sp30[0] == 0xA) {
                    if (++sp24 < headerWordAlignedByteSize) {
                        sp20 = read(sp2BC, &sp30, 1);
                        if (sp20 != 1) {
                            fprintf(stderr, "%s: short read from %s.\n", B_10016A20, arg0);
                            free(headerBuf);
                            close(sp2BC);
                            exit(1);
                        }
                    }
                }
                sp2C = strtol(sp30, 0, 16);
                if (sp28 % 2) {
                    headerBuf[sp28 >> 1] |= sp2C;
                } else {
                    headerBuf[sp28 >> 1] = sp2C << 4;
                }
        }
        
        headerWordAlignedByteSize = (s32) (sp28 - 1) >> 1;
        if (headerWordAlignedByteSize & 3) {
            headerWordAlignedByteSize += 4;
            headerWordAlignedByteSize &= ~3;
        }
        close(sp2BC);
    } else {
        headerBuf = 0;
    }
}

//Checking Some environment variables
char* gloadFindFile(char* dest, char* arg1, char* arg2) {
    char* name;
    char* src;

    #ifdef MATCHING
    s32 pad; //
    #endif

    int i;

    for (i = 0; i < 3; i++) {
        *dest = 0;
        switch (i) {
        case 0:
            name = "ROOT";
            break;
        case 1:
            name = "WORKAREA";
            break;
        case 2:
            name = NULL;
            break;
        }

        if (name != NULL) {
            if ((src = getenv(name)) == NULL) {
                continue;
            }
            strcat(dest, src);
        }
        if (arg1 != NULL) {
            strcat(dest, arg1);
            strcat(dest, "/");
        }
        strcat(dest, arg2);
        if (access(dest, 4) == 0) {
            return dest;
        }
    }
    fprintf(stderr, "gloadFindFile: can't find file %s\n", dest);
    *dest = '\0';
    return NULL;
}





int main(int argc, char** argv) {
    int c;
    FILE* f;
    Wave* wave;
    char* cppCmd;
    long cppCmdCount;
    int headerFd;
    int pif2bootFd;
    char* bootFileName = NULL;
    char* headerFileName = NULL;
    char* pif2bootFileName = NULL;
    char* fontFileName = NULL;
    int createRom = 1;
    char CheckerBuf[0x100];
    char NameBuf[0x100];
    char* rootName;
    int quietMode = 0;

    B_1000BA40 = argv[0];

    if ((cppCmdCount = sysconf(1)) == -1) {
        fprintf(stderr, "makerom: sysconf(_SC_ARG_MAX): %s\n", sys_errlist[errno]);
        exit(1);
    }

    if ((cppCmd = malloc(cppCmdCount)) == NULL) {
        fprintf(stderr, "malloc failed\n");
        return -1;
    }

    sprintf(cppCmd, "/usr/lib/cpp -D_LANGUAGE_MAKEROM");
    cppCmdCount -= strlen(cppCmd) + 1;

    // Parse options
    while ((c = getopt(argc, argv, "D:I:U:cdeimnor:gb:h:p:s:f:O:C:QqVv")) != -1) {
        switch (c) {
            case 'D':
            case 'I':
            case 'U':
                cppCmdCount -= strlen(optarg) + 3;
                if (cppCmdCount <= 0) {
                    fprintf(stderr, "makerom: too many -[DIU] flags\n");
                    exit(1);
                }
                sprintf(cppCmd, "%s -%c%s", cppCmd, c, optarg);
                continue;

            case 'c':
                cosim = 1;
                continue;

            case 'd':
                debug = 1;
                continue;

            case 'g':
                gcord = 1;
                continue;

            case 'k':
                keep_going = 1;
                continue;

            case 'e':
                emulator = 1;
                continue;

            case 'm':
                loadMap = 1;
                continue;

            case 'n':
                nofont = 1;
                continue;

            case 'o':
                D_10009224 = 0;
                continue;

            case 'r':
                D_10009220 = optarg;
                continue;

            case 'b':
                bootFileName = optarg;
                continue;

            case 'h':
                headerFileName = optarg;
                continue;

            case 'p':
                pif2bootFileName = optarg;
                continue;

            case 's':
                finalromSize = strtol(optarg, 0, 0);
                continue;

            case 'f':
                fillData = strtol(optarg, 0, 0);
                continue;

            case 'O':
                offset = strtol(optarg, 0, 0);
                continue;

            case 'C':
                changeclock = 1;
                clockrate = strtol(optarg, 0, 0);
                if (clockrate == 0) {
                    clockrate = 60850000;
                }
                continue;

            case '?':
                usage();
                exit(1);

            case 'Q':
            case 'q':
                quietMode = 1;
                continue;

            case 'V':
            case 'v':
                printVersion();
                exit(1);
        }
    }

    // Check options
    if ((argc - optind) != 1) {
        usage();
        exit(1);
    }

    if ((cosim + emulator) > 1) {
        // "-i"?
        fprintf(stderr, "makerom: only specify one of -c, -e, or -i\n");
        exit(1);
    }

    getOsVersion();
    if (!quietMode) {
        printVersion();
    }

    getBootFile(bootFileName);
    getPif2BootFile(pif2bootFileName);
    getRomheaderFile(headerFileName);
    getFontDataFile(fontFileName);

    if ((unlink(D_10009220) == -1) && (errno != 2)) {
        fprintf(stderr, "makerom: %s: %s\n", D_10009220, sys_errlist[errno]);
        exit(1);
    }

    fileName = argv[optind];
    if ((yyin = fopen(fileName, "r")) == 0) {
        fprintf(stderr, "makerom: %s: %s\n", fileName, sys_errlist[errno]);
        exit(1);
    }
    fclose(yyin);

    cppCmdCount -= strlen(fileName);
    if (cppCmdCount <= 0) {
        fprintf(stderr, "makerom: cpp command line too long\n");
        exit(1);
    }

    sprintf(cppCmd, "%s %s", cppCmd, fileName);
    if ((yyin = popen(cppCmd, "r")) == 0) {
        fprintf(stderr, "makerom: could not run cpp on %s: %s\n", fileName, sys_errlist[errno]);
        exit(1);
    }

    if (yyparse() != 0) {
        exit(1);
    }

    if (pclose(yyin) != 0) {
        exit(1);
    }

    if (scanSegments() == -1) {
        exit(1);
    }

    if (checkSizes() != 0) {
        createRom = 0;
    }

    if (D_10009224 && checkOverlaps()) {
        createRom = 0;
    }

    nameTempFiles();
    sigaction(1, &D_10009200, NULL);
    sigaction(2, &D_10009200, NULL);
    sigaction(15, &D_10009200, NULL);

    if (debug) {
        printf("Creating segment symbol source file in %s\n", B_1000B540);
    }

    if (createSegmentSymbols(B_1000B540, B_1000B640) == -1) {
        unlinkTempFiles();
        exit(1);
    }

    for (wave = waveList; wave != NULL; wave = wave->next) {
        doWave(wave);
    }

    if ((rootName = getenv("ROOT")) == NULL) {
        rootName = "/";
    }

    if (irixVersion > IRIX_VERSION_53) {
        if (checkIdoVersion(rootName) < 2) {
            fprintf(stderr, "makerom: This IDO version is not compatible with the\n");
            fprintf(stderr, "         Nintendo64 development environment on this\n");
            fprintf(stderr, "         version of IRIX.\n");
            exit(1);
        }
        sprintf(CheckerBuf, "%s/usr/sbin/u64check -fmulmul:check:noforce:norepair", rootName);
    } else {
        sprintf(CheckerBuf, "%s/usr/sbin/r4300_check", rootName);
    }

    if (debug) {
        printf("Checking fmulmul status\n");
    }

    for (wave = waveList; wave != NULL; wave = wave->next) {
        sprintf(NameBuf, "%s %s", CheckerBuf, wave->name);
        if (debug) {
            printf("  %s\n", NameBuf);
        }
        if ((execCommand(NameBuf) == -1) && !keep_going) {
            unlinkTempFiles();
            exit(1);
        }
    }

    if (gcord) {
        sprintf(CheckerBuf, "%s/usr/lib/PR/gcord ", rootName);
        for (wave = waveList; wave != NULL; wave = wave->next) {
            char gcordFileBuf[0x100];

            sprintf(NameBuf, "%s %s", CheckerBuf, wave->name);
            if (debug) {
                printf("makerom: %s\n", NameBuf);
            }
            if ((execCommand(NameBuf) == -1) && !keep_going) {
                unlinkTempFiles();
                exit(1);
            }
            strcat(strcpy(gcordFileBuf, wave->name), ".cord");
            strcpy(wave->name, gcordFileBuf);
        }
    }

    if (debug) {
        printf("Creating entry source file in %s\n", B_1000B740);
    }
    if (createEntryFile(B_1000B740, B_1000B840) == -1) {
        unlinkTempFiles();
        exit(1);
    }

    if (createRom) {
        if (debug) {
            printf("Extracting sections from ELF wave files");
            printf(" to create ROM image in %s\n", D_10009220);
        }
        if (createRomImage(D_10009220, B_1000B840) == -1) {
            unlinkTempFiles();
            exit(1);
        }
    }
    unlinkTempFiles();
    if (bootBuf != NULL) {
        free(bootBuf);
    }
    if (headerBuf != NULL) {
        free(headerBuf);
    }
    if (fontBuf != NULL) {
        free(fontBuf);
    }

    exit(createRom ? 0 : 1);
    return 0;
}

