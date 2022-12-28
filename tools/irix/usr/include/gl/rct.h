#ifndef __GL_RECT_H__
#define __GL_RECT_H__

#ident "$Revision: 1.2 $"

typedef struct rct {
    int xmin, xmax;
    int ymin, ymax;
} rct;

rct *rctnew();
rct *rctclone();

#endif /* __GL_RECT_H__ */
