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


const char *sys_errlist[];

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

