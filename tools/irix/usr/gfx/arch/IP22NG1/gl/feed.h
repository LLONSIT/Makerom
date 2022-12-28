#ifndef __GL_FEED_H__
#define __GL_FEED_H__
/**************************************************************************
 *									  *
 * 		 Copyright (C) 1988, Silicon Graphics, Inc.		  *
 *									  *
 *  These coded instructions, statements, and computer programs  contain  *
 *  unpublished  proprietary  information of Silicon Graphics, Inc., and  *
 *  are protected by Federal copyright law.  They  may  not be disclosed  *
 *  to  third  parties  or copied or duplicated in any form, in whole or  *
 *  in part, without the prior written consent of Silicon Graphics, Inc.  *
 *									  *
 **************************************************************************/

/*
 *  feed.h - This file contains the product specific defines for feedback
 *	     mode.  The Personal Iris returns 11 different feedback tokens
 *	     and 3 data formats. The feedback buffer contains the floating
 *	     point token followed by floating point data.
 *
 *	     FB_POINT, FB_MOVE, FB_DRAW all return 6 floats (x,y,z,r,g,b)
 *	     in the data buffer. FB_POLYGON returns a count of the number
 *	     of floats and then sets of 6 floats for each vertex.
 *
 *	     FB_CMOV returns 3 floats (x,y,z).
 *
 *	     FB_PASSTHROUGH, FB_ZBUFFER, FB_LINESTYLE, FB_SETPATTERN,
 *	     FB_LINEWIDTH, and FB_LSREPEAT all return 1 float.
 *
 *  $Revision: 1.1 $
 */

/* defines for PI raw feedback */
#define FB_POINT	95.0
#define FB_MOVE		103.0
#define FB_DRAW		113.0
#define FB_POLYGON	72.0
#define FB_CMOV		163.0
#define FB_PASSTHROUGH	176.0
#define FB_ZBUFFER	46.0
#define FB_LINESTYLE	76.0
#define FB_SETPATTERN	133.0
#define FB_LINEWIDTH	77.0
#define FB_LSREPEAT 	90.0

#endif /* !__GL_FEED_H__ */
