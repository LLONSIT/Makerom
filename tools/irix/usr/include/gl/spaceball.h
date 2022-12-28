#ifndef __GL_SPACEBALL_H__
#define __GL_SPACEBALL_H__
#ifdef __cplusplus
extern "C" {
#endif
/*
 * spaceball.h
 *
 * Spaceball(TM) GL library supplement.
 *
 * Copyright (C) 1989, Spatial Systems Inc. All Rights Reserved.
 * Spaceball is a registered trademark of Spatial Systems Inc.
 *
 * RESTRICTIONS
 *
 * The following code is licensed for use and redistribution provided
 * the code is used exclusively in conjunction with a Spaceball.
 * No portion may be used for other purposes without prior written
 * permission from Spatial Systems Inc.  This notice must accompany
 * any full or partial copies.
 *
 * PURPOSE
 *
 *	Declare functions/variables defined in libspaceball.a.
 *
 */
extern short SbVERSION;		/* Spaceball firmware major version */
extern short Sbversion;		/* Spaceball firmware minor version */
extern short Sbvsent;		/* true if version is valid.	    */

extern void sbbeep(char *);	/* causes Spaceball to beep */
extern int sbexists(void);	/* returns TRUE if a Spaceball exists */
extern void sbrezero(void);	/* re-zeros Spaceball */
extern int sbversion(void);	/* returns current version of Spaceball */
extern void sbprompt(void);	/* prompts sball for more data (obsolete) */
extern void rotarbaxis(float, Coord, Coord, Coord, Matrix);
			/* rotation about an arbitrary axis */
extern void sbdominant(Coord *, Coord *, Coord *);
			/* zero all but the largest of x, y, z */
extern void sbdominate(Coord *, int);
			/* zeros all but largest element of array */

#ifdef __cplusplus
}
#endif
#endif /* __GL_SPACEBALL_H__ */
