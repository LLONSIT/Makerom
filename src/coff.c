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



s32 readCoff(unsigned char *fname, unsigned int *buf) {
     int textSize;
     int dataSize;
     int bssSize;

    OFileName = fname;

    SName = ".text";
    
    textSize = func_0041093C(buf);
    
    if (textSize < 0) {
        return -1;
    }
    return textSize;
}

s32 Extract(u8** buff) {

        int bytesRead; //UNUSED
    
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
