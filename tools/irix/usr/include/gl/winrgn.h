#ifndef __GL_WINRGNDEF_H__
#define __GL_WINRGNDEF_H__
#ident "$Revision: 1.2 $"
#include "rct.h"

#define MAXPIECES    512

typedef struct winrgnhdr {
	unsigned int icno;
	int npieces;
} winrgnhdr;

typedef struct winrgn {
	winrgnhdr h;
        rct pieces[MAXPIECES];
} winrgn;

#endif /*__GL_WINRGNDEF_H__ */
