#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <sys/stat.h>
#include <unistd.h>
#include <libelf.h>
#include <fcntl.h>
#include <ld>
#include "types.h"
#include "structs.h"

const char *sys_errlist[];
extern s32 func_0040FDE0(struct Segment* segment);
extern s32 func_0040F214(void);
void getOsVersion(void) {

    const char* sp1024;
    char str[0x1000]; //string


    FILE *stream; //file

	//Why put this as a char?
    sp1024 = "/sbin/uname -r";


	 //checking if we have uname
    if ((stream = popen(sp1024, "r")) != 0) {
        fgets(str, 0x1000, stream);
        pclose(stream);
        if (strcmp(str, "5.3\n") == 0) {
            irixVersion = 0;
        } else if (strcmp(str, "6.2\n") == 0) {
            irixVersion = 1;
        } else if (strcmp(str, "6.3\n") == 0) {
            irixVersion = 2;
        } else if (strcmp(str, "6.4\n") == 0) {
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

void makerom_opts(void) {
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


int createRomImage(const char* filename, const char* file) {
    FILE* stream;
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
    s32 ptr;

    if ((sp48 = open(file, 0)) == -1) {
        fprintf(stderr, "makerom: %s: %s\n", file, sys_errlist[errno]);
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
        if (seg->unk_28 & 2) {
            func_0040F758(seg);
        } else if (seg->unk_28 & 4) {
            func_0040FDE0(seg);
        }
        sp4C = seg->unk_24 + seg->text_size + seg->data_rodata_size + seg->sdata_size;
    }
    if ((stream = fopen(filename, "w+")) == NULL) {
        fprintf(stderr, "makerom: %s: %s\n", filename, sys_errlist[errno]);
        return -1;
    }
    if (offset != 0) {
        if ((fseek(stream, offset, 0) != 0)) {
            fprintf(stderr, "makerom: %s: fseek error (%s)\n", filename, sys_errlist[errno]);
            return -1;
        }
    }
    if (fwrite(headerBuf, 1U, headerWordAlignedByteSize, stream) != headerWordAlignedByteSize) {
        fprintf(stderr, "makerom: %s: write error\n", filename);
        return -1;
    }
    if (fseek(stream, offset + 8, 0) != 0) {
        fprintf(stderr, "makerom: %s: fseek error (%s)\n", filename, sys_errlist[errno]);
        return -1;
    }
    if (fwrite(&bootAddress, 4U, 1U, stream) != 1) {
        fprintf(stderr, "makerom: %s: write error\n", filename);
        return -1;
    }
    if (changeclock != 0) {
        ptr = 0;
        if (fseek(stream, offset + 4, 0) != 0) {
            fprintf(stderr, "makerom: %s: fseek error (%s)\n", filename, sys_errlist[errno]);
            return -1;
        }
        if (fread(&ptr, 4U, 1U, stream) != 1) {
            fprintf(stderr, "makerom: %s: read error \n", filename);
            return -1;
        }
        clockrate |=  ptr;
        if (fseek(stream, offset + 4, 0) != 0) {
            fprintf(stderr, "makerom: %s: fseek error (%s)\n", filename, sys_errlist[errno]);
            return -1;
        }
        if (fwrite(&clockrate, 4U, 1U, stream) != 1) {
            fprintf(stderr, "makerom: %s: write error\n", filename);
            return -1;
        }
    }
    if (fseek(stream, offset + 0x40, 0) != 0) {
        fprintf(stderr, "makerom: %s: fseek error (%s)\n", filename, sys_errlist[errno]);
        return -1;
    }
    if (fwrite(bootBuf, 1U, bootWordAlignedByteSize, stream) != bootWordAlignedByteSize) {
        fprintf(stderr, "makerom: %s: write error\n", filename);
        return -1;
    }
    if (nofont == 0) {
        if (fseek(stream, offset + 0xB70, 0) != 0) {
            fprintf(stderr, "makerom: %s: fseek error (%s)\n", filename, sys_errlist[errno]);
            return -1;
        }
        if (fwrite(fontBuf, 1U, fontdataWordAlignedByteSize, stream) != fontdataWordAlignedByteSize) {
            fprintf(stderr, "makerom: %s: write error\n", filename);
            return -1;
        }
    }
    if (fseek(stream, offset + 0x1000, 0) != 0) {
        fprintf(stderr, "makerom: %s: fseek error (%s)\n", filename, sys_errlist[errno]);
        return -1;
    }
    if (fwrite(B_10016A60, 1, sp4C, stream) != sp4C) {
        fprintf(stderr, "makerom: %s: write error\n", filename);
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
                if (fwrite(sp28, 1, 0x2000, stream) != 0x2000) {
                    fprintf(stderr, "makerom: %s: write error %x\n", filename, sp30);
                    return -1;
                }
                sp30 += 0x2000;
            } else {
                if (fwrite(sp28, 1, finalromSize - sp30, stream) != (finalromSize - sp30)) {
                    fprintf(stderr, "makerom: %s: write error\n", filename);
                    return -1;
                }
                sp30 += finalromSize - sp30;
            }
        }
    }

    return 0;
}

s32 Extract(Extract_arg0* arg0) {

    // LDPtr = ldopen(OFileName, NULL);
    if ((LDPtr = ldopen(OFileName, NULL)) == NULL) {
        fprintf(stderr, "Extract(): Cannot open %s.\n", OFileName);
        return -1;
    }

    switch (LDPtr->header.f_magic) {                              /* irregular */
        case MIPSEBMAGIC:
        case MIPSEBMAGIC_2:
        case MIPSEBMAGIC_3:
            Swap = gethostsex() == LITTLEENDIAN;
            break;

        case MIPSELMAGIC:
        case MIPSELMAGIC_2:
        case MIPSELMAGIC_3:
            Swap = gethostsex() == BIGENDIAN;
            break;
    }
    if (ldnshread(LDPtr, SName, &SHeader) == 0) {

    } else {
        ldfseek(LDPtr, SHeader.s_scnptr, 0);
        for (Address = SHeader.s_paddr; (Address - SHeader.s_paddr) < SHeader.s_size; Address += 8) {
                ldfread((char*)&Data0, 1, 4, LDPtr); // Could use a union instead but this seems more likely
                if (Swap) {
                    Data0 = swap_word(Data0);
                }
                ldfread((char*)&Data1, 1, 4, LDPtr);
                if (Swap) {
                    Data1 = swap_word(Data1);
                }
                if (Swap) {
                    arg0->unk0 = Data1;
                    arg0->unk4 = Data0;
                } else {
                    arg0->unk0 = Data0;
                    arg0->unk4 = Data1;
                }
                arg0++;

        }
    }
    ldclose(LDPtr);
    return SHeader.s_size;
}


s32 runLinker(arg0Struct* arg0, const char* arg1, const char* arg2) {
    char* sp34;
    sp30Struct* sp30;
    sp2CStruct* sp2C;
    StringLinkedList* sp28;
    FILE* sp24;

    if ((sp34 = malloc(sysconf(1))) == NULL) {
        fprintf(stderr, "malloc failed\n");
        return -1;
    }
    strcpy(sp34, "$ROOT/usr/lib/PR/nld -32 -g -non_shared -G 0 -elspec ");
    
    strcat(sp34, arg0->unk14);
    strcat(sp34, " -rom ");
    if (loadMap) {
        strcat(sp34, " -m ");
    }
    strcat(sp34, " -o ");
    strcat(sp34, arg0->unk4);
    strcat(sp34, " ");
    strcat(sp34, arg1);
    strcat(sp34, " -objectlist ");
    strcat(sp34, arg2);
    sp24 = fopen(arg2, "w");

    for (sp30 = arg0->unk8; sp30 != NULL; sp30 = sp30->next) {
        sp2C = sp30->unk4;
        if (!(sp2C->unk28 & 2)) {
            continue;
        }
        for (sp28 = sp2C->unk8; sp28 != NULL; sp28 = sp28->next) {
            fprintf(sp24, "%s\n", sp28->name);
        }
    }
    fclose(sp24);
    if (debug) {
        printf("Linking to ELF wave file\n");
        printf("  %s\n", sp34);
    }
    return execCommand(sp34);
}

//Creating a ld script, not compatible with GCC
int createElspec(UnkStruct* arg0) {
    FILE* sp2C;
    sp28UnkStruct* sp28;
    Section* sp24;
    sp20UnkStruct* sp20;

    if ((sp2C = fopen(arg0->unk14, "w")) == NULL) {
        fprintf(stderr, "makerom: %s: cannot create\n", arg0->unk14);
        return -1;
    }
    fprintf(sp2C, "$ignoreoverlaps = true\n\n");
    for (sp28 = arg0->unk8; sp28 != NULL; sp28 = sp28->unk0) {
        sp24 = sp28->unk4;

        if (!(sp24->unk28 & 2)) {
            continue;
        }

        fprintf(sp2C, "beginseg\n");
        fprintf(sp2C, "\tsegtype LOAD\n");
        fprintf(sp2C, "\tsegflags R X\n");
        fprintf(sp2C, "\tvaddr 0x%x\n", sp24->unk10);
        fprintf(sp2C, "\tcontents\n");
        fprintf(sp2C, "\tbeginscn .%s.text\n", sp24->obj);
        fprintf(sp2C, "\t\tscntype PROGBITS\n");
        if (sp24->unk4C != 0) {
            fprintf(sp2C, "\t\tscnalign %d\n", sp24->unk4C);
        }
        fprintf(sp2C, "\t\tscnflags ALLOC EXECINSTR\n");

        for (sp20 = sp24->section; sp20 != NULL; sp20 = sp20->unk0) {
            fprintf(sp2C, "\t\tsection .text in object %s\n", sp20->unk4);
        }

        fprintf(sp2C, "\tendscn\n");
        fprintf(sp2C, "\tbeginscn .%s.data\n", sp24->obj);
        fprintf(sp2C, "\t\tscntype PROGBITS\n");
        if (sp24->unk50 != 0) {
            fprintf(sp2C, "\t\tscnalign %d\n", sp24->unk50);
        }
        fprintf(sp2C, "\t\tscnflags ALLOC WRITE\n");

        for (sp20 = sp24->section; sp20 != NULL; sp20 = sp20->unk0) {
            fprintf(sp2C, "\t\tsection .data in object %s\n", sp20->unk4);
            fprintf(sp2C, "\t\tsection .rodata in object %s\n", sp20->unk4);
        }
        fprintf(sp2C, "\tendscn\n");
        fprintf(sp2C, "\tbeginscn .%s.sdata\n", sp24->obj);
        fprintf(sp2C, "\t\tscntype PROGBITS\n");
        if (sp24->unk54 != 0) {
            fprintf(sp2C, "\t\tscnalign %d\n", sp24->unk54);
        }
        fprintf(sp2C, "\t\tscnflags GPREL ALLOC WRITE\n");
        
        for (sp20 = sp24->section; sp20 != NULL; sp20 = sp20->unk0) {
            fprintf(sp2C, "\t\tsection .sdata in object %s\n", sp20->unk4);
        }

        fprintf(sp2C, "\tendscn\n");
        fprintf(sp2C, "\tbeginscn .%s.sbss\n", sp24->obj);
        fprintf(sp2C, "\t\tscntype NOBITS\n");
        if (sp24->unk58 != 0) {
            fprintf(sp2C, "\t\tscnalign %d\n", sp24->unk58);
        }
        fprintf(sp2C, "\t\tscnflags GPREL ALLOC WRITE\n");

        for (sp20 = sp24->section; sp20 != NULL; sp20 = sp20->unk0) {
            fprintf(sp2C, "\t\tsection .sbss in object %s\n", sp20->unk4);
        }

        fprintf(sp2C, "\tendscn\n");
        fprintf(sp2C, "\tbeginscn .%s.bss\n", sp24->obj);
        fprintf(sp2C, "\t\tscntype NOBITS\n");
        if (sp24->unk5C != 0) {
            fprintf(sp2C, "\t\tscnalign %d\n", sp24->unk5C);
        }
        fprintf(sp2C, "\t\tscnflags ALLOC WRITE\n");

        for (sp20 = sp24->section; sp20 != NULL; sp20 = sp20->unk0) {
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

