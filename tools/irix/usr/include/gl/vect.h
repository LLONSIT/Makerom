#ifndef	__GL_VECT_H__
#define	__GL_VECT_H__

#include <math.h>

typedef struct vect {
    float x, y, z, w;
} vect;

float vlength();
float vdot();
vect *vnew();
vect *vclone();

#define VECTDEF		/* for backwards compatibility */
#endif	/* !__GL_VECT_H__ */
