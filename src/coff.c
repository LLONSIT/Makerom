#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <sys/stat.h>
#include <unistd.h>
#include <libelf.h>

#ifdef __sgi
#include <ldfcn.h>
#else
#include <dlfcn.h>
#include <sgi_structs.h>
#endif

#include "types.h"
#include "makerom.h"

//Macros

//libmld
#define  MIPSEBMAGIC	0x0160
#define  MIPSELMAGIC	0x0162
#define  SMIPSEBMAGIC	0x6001
#define  SMIPSELMAGIC	0x6201
#define  MIPSEBUMAGIC	0x0180
#define  MIPSELUMAGIC	0x0182
#define  MIPSEBMAGIC_2	0x0163
#define  MIPSELMAGIC_2	0x0166
#define  SMIPSEBMAGIC_2	0x6301
#define  SMIPSELMAGIC_2	0x6601
#define  MIPSEBMAGIC_3	0x0140
#define  MIPSELMAGIC_3	0x0142
#define  SMIPSEBMAGIC_3	0x4001
#define  SMIPSELMAGIC_3	0x4201

u32 Address;
 u32 Data0;
 u32 Data1;
 struct ldfile* LDPtr;
 char* OFileName;
 struct scnhdr SHeader;
 char* SName;
 s32 Swap;
/*
 * Byte sex constants
 */
#define BIGENDIAN	0
#define LITTLEENDIAN	1
#define UNKNOWNENDIAN	2


//SGI
#ifdef compiling_libmld
int gethostsex(void) {
    union {
        int word;
        char byte;
    } sex;

    sex.word = 1;
    return sex.byte == 1 ? LITTLEENDIAN : BIGENDIAN;
}
#endif

s32 readCoff(unsigned char *fname, unsigned int *buf) {
     int textSize;
     int dataSize; //unused
     int bssSize;  //unused

    OFileName = fname;

    SName = ".text";

    textSize = Extract(buf);

    if (textSize < 0) {
        return -1;
    }
    return textSize;
}

s32 Extract(u32* buff) {

    int bytesRead; //unused
    
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
                    buff[0] = Data1; 
                    buff[1] = Data0;
                } else {
                    buff[0] = Data0;
                    buff[1] = Data1;
                }
                buff += 2;

        }
    }
    ldclose(LDPtr);
    return SHeader.s_size;
}

