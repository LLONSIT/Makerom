#ifndef __GL_SPHERE_H__
#define __GL_SPHERE_H__
/**************************************************************************
 *									  *
 * 		 Copyright (C) 1984, Silicon Graphics, Inc.		  *
 *									  *
 *  These coded instructions, statements, and computer programs  contain  *
 *  unpublished  proprietary  information of Silicon Graphics, Inc., and  *
 *  are protected by Federal copyright law.  They  may  not be disclosed  *
 *  to  third  parties  or copied or duplicated in any form, in whole or  *
 *  in part, without the prior written consent of Silicon Graphics, Inc.  *
 *									  *
 **************************************************************************/

#ifdef __cplusplus
extern "C" {
#endif
#include <gl/gl.h>
/**************************************************************************
 *									  *
 * 		 Copyright (C) 1990, Silicon Graphics, Inc.		  *
 *									  *
 *  These coded instructions, statements, and computer programs  contain  *
 *  unpublished  proprietary  information of Silicon Graphics, Inc., and  *
 *  are protected by Federal copyright law.  They  may  not be disclosed  *
 *  to  third  parties  or copied or duplicated in any form, in whole or  *
 *  in part, without the prior written consent of Silicon Graphics, Inc.  *
 *									  *
 **************************************************************************/


/* sphere modes */
#define SPH_TESS		0
#define SPH_DEPTH		1
#define SPH_PRIM		2
#define SPH_HEMI		3
#define SPH_ORIENT		4

/* sphere types */
#define SPH_OCT			0
#define SPH_ICOS		1
#define SPH_BARY		2
#define SPH_CUBE		3
#define SPH_BILIN		4

/* tesselation depth limit */
#define SPH_MAXDEPTH		30

/* sphere drawing types */
#define SPH_MESH		0
#define SPH_POLY		1
#define SPH_LINE		2
#define SPH_POINT		3
#define SPH_BITMAP		4

extern void     sphbgnbitmap( void );
extern void     sphcolor( float[4] );
extern long     sphdraw( float[4] );
extern void     sphendbitmap( void );
extern void     sphfree( void );
extern long     sphgnpolys( void );
extern long     sphmode( long, long );
extern void     sphobj( Object );
extern void     sphrotmatrix( Matrix );
#ifdef __cplusplus
}
#endif
#endif /* !__GL_SPHERE_H__ */
