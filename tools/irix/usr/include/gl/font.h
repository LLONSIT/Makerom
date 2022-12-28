#ifndef __GL_FONT_H__
#define __GL_FONT_H__
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

/*
 *  font.h
 *
 *  $Revision: 1.6 $
 */

#include "bitmap.h"

/* since with deflfont new characters may be added to a 
 * raster font after initial definition, a linked list
 * of raster data areas must be maintained 
 */
typedef struct raslist {
	unsigned short	*raster;
	Bitmaprec	*chars;
	struct raslist	*next;
} Rasterlist;


#ifndef LIBFM
/* font_s instead of font allows GL font() to be a #define */
typedef struct font_s {
    short descender;
    short width;
    short height;
    Bitmap *chars;
    long nchars;		/* used to be a short! */
    Rasterlist *rlist;		/* the raster areas */
    Bitmaprec **bh;		/* hash table of Bitmap's */
} Font;

#else
/* Some tools from the font manager require the previous version
   of the Font structure. */
/* font_s instead of font allows GL font() to be a #define */
typedef struct font_s {
    short descender;
    short width;
    short height;
    short nchars;
    short bitsdeep;
#if defined(LIGHT)||defined(NEWPORT)
    Bitmap *chars;			/* an array of bitmap structs	*/
    unsigned short *rasters;		/* the raster bits		*/
#else /* !LIGHT||NEWPORT */
    Bitmap **chars;
#endif /* LIGHT||NEWPORT */
} Font;
#endif

#endif	/* !__GL_FONT_H__ */
