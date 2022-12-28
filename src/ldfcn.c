#include <stdio.h>
#include <stdlib.h>
#include "sgi_structs.h"
#include "types.h"


#ifdef __sgi
s32 ldfseek(struct ldfile* f, s32 offset, s32 whence) {

    switch (whence) {                                 /* irregular */
        case 0:
            f->ioptr->_ptr = &f->ioptr->_base[offset];
            break;
        case 2:
            f->ioptr->_ptr = &f->ioptr->_base[f->ioptr->_cnt] - offset;
            break;
        case 1:
            f->ioptr->_ptr = &f->ioptr->_ptr[offset];
            break;
        default:
            fprintf(stderr, "Bad  offset in ldfseek\n"); //iob purposes
            return -1;
            break;
    }

    return 0;
}
#else
#if 0
s32 ldfseek(struct ldfile* f, s32 offset, s32 whence) {

    switch (whence) {                                 /* irregular */
        case 0:
            f->ioptr->_ptr = &f->ioptr->base[offset];
            break;
        case 2:
            f->ioptr->_ptr = &f->ioptr->_base[f->ioptr->cnt] - offset;
            break;
        case 1:
            f->ioptr->_ptr = &f->ioptr->ptr[offset];
            break;
        default:
            fprintf(stderr, "Bad  offset in ldfseek\n"); //iob purposes
            return -1;
            break;
    }

    return 0;
}
#endif
#endif
