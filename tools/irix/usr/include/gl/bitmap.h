#ifndef __GL_BITMAP_H__
#define __GL_BITMAP_H__
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
 *  bitmap.h
 *
 *  $Revision: 1.5 $
 *
 * WARNING: Do not change order of data in structure.  The EXPRESS 
 *          gl_outcharmap code relies on xsize, xorig, xmove, and sper
 *          being long word aligned.
 */

typedef struct bitmap {
    unsigned short	*base; 		/* pointer to first word */
    short		xsize, ysize;	/* dimensions of the bitmap */
    short		xorig, yorig;	/* origin - used for cursors */
    short		xmove, ymove;	/* move - used by characters */
    short		sper;		/* shorts per row */
} Bitmap;

/* Structure for storing Bitmap's hashed by name */
typedef struct bitmaprec {
        struct bitmaprec *next;         /* must match genericrec */
        unsigned long name;             /* must match genericrec */
        Bitmap bm;                      /* note a struct, not a ptr */
} Bitmaprec;
#define BM_TILE	2048			/* tile sizes in shorts */

#endif	/* !__GL_BITMAP_H__ */
