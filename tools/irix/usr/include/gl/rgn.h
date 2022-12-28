#ifndef __GL_RGN_H__
#define __GL_RGN_H__

#ident "$Revision: 1.2 $"

#include "rct.h"

typedef struct rctlist {
    struct rctlist *next;
    rct	rect;
} rctlist;

typedef struct rgn {
    rct domain;
    rctlist *rects;
} rgn;

rgn *rgnnew();
rgn *rgnclone();
rgn *rgnvisible();

#endif /* __GL_RGN_H__ */
