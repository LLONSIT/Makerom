#ifndef __GL_GLTYPES_H__
#define __GL_GLTYPES_H__
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

#ifndef PATTERN_16_SIZE
#define PATTERN_16_SIZE		16
#define PATTERN_32_SIZE		64
#define PATTERN_64_SIZE		256
#endif /* !PATTERN_16_SIZE */
#if 0
/* Lines encapulated by #if 0/#endif will not appear in the public gl.h */
#endif

/* typedefs */

typedef unsigned char Byte;
typedef long Boolean;
typedef char *String;
typedef void *Lstring;

typedef short Angle;
typedef short Screencoord;
typedef short Scoord;
typedef long Icoord;
typedef float Coord;
typedef float Matrix[4][4];

typedef unsigned short Colorindex;
typedef unsigned char RGBvalue;

typedef unsigned short Device;

typedef unsigned short Pattern16[PATTERN_16_SIZE];
typedef unsigned short Pattern32[PATTERN_32_SIZE];
typedef unsigned short Pattern64[PATTERN_64_SIZE];

typedef unsigned short Linestyle;

typedef struct {
	unsigned long value;
	unsigned long offset;
	short w,h;
	short xoff,yoff;
	short xmove, ymove;
} Lfontchar;

typedef struct {
	unsigned short offset;
	Byte w,h;
#ifdef _LANGUAGE_C_PLUS_PLUS
	char xoff,yoff;
#else
	signed char xoff,yoff;
#endif
	short width;
} Fontchar;

typedef long Object;
typedef long Tag;
typedef long Offset;

typedef void (*__PFV_)();	/* C++ can't handle function ptr prototype */

typedef struct {
    int buffer;
    int mode;
    int arg;
} GLXconfig;

/* obsolete typedefs */
#ifndef X_H
typedef unsigned short Cursor[16];	/* a C16X1 cursor */
#endif
#endif /* !__GL_GLTYPES_H__ */
