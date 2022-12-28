#ifndef __GL_CURVE_H__
#define __GL_CURVE_H__

#ident "$Revision: 1.3 $"

#include "wstatep.h"
#include "attributil.h"

typedef struct {
    short	precision;
    long	basis;
    float	geom[16];
    float	itermat[16];
} Curve;

typedef struct {
    short	precision;
    long	basis;
    short	npts;
    float	*geom;
    float	*itermat;
} Curves;

typedef struct {
    float	gx[16];
    float	gy[16];
    float	gz[16];
    float	gw[16];

    /* specifies the number of "u" curves drawn in approximating the
    surface */
    short	u_curves;

    /* specifies the minimum precision with which mesh curves are drawn */
    short	u_precision;

    /* these values are the precision of the mesh curves after the increase
    in resolution of the curves */
    short	u_mult;

    /* specifies the number of "u" curves drawn in approximating the
    surface */
    short	v_curves;

    /* specifies the minimum precision with which mesh curves are drawn */
    short	v_precision;

    /* these values are the precision of the mesh curves after the increase
    in resolution of the curves */
    short 	v_mult;

    long 	u_basis;
    long 	v_basis;

    /* the first u_precision+1 entries are curves of constant u 
    the remaining curves are of constant v */
    float	*itermats;

} Patch;

extern Basisrec *gl_findbasis();

#endif /* __GL_CURVE_H__ */
