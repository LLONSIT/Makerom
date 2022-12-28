/**************************************************************************
 *									  *
 * 		 Copyright (C) 1989, Silicon Graphics, Inc.		  *
 *									  *
 *  These coded instructions, statements, and computer programs  contain  *
 *  unpublished  proprietary  information of Silicon Graphics, Inc., and  *
 *  are protected by Federal copyright law.  They  may  not be disclosed  *
 *  to  third  parties  or copied or duplicated in any form, in whole or  *
 *  in part, without the prior written consent of Silicon Graphics, Inc.  *
 *									  *
 **************************************************************************/

#ifndef __GL_GRI_IOCTL_H__
#define __GL_GRI_IOCTL_H__
/*
 * Ioctl's for input side of graphics.
 *
 * Written by: Kipp Hickman
 *
 * head/gl/gri_ioctl.h
 * $Revision: 1.15 $
 */

/*
 * Versions this system supports.  Version tags must be in the upper
 * 8 bits of the ioctl command (an unsigned long).
 */
#define	GRI_v1	1

/*
 * Masks to get at parts of ioctl command
 */
#define	GRI_CMD		((unsigned long)0x000000FF)
#define	GRI_IN		((unsigned long)0x0000FF00)
#define	GRI_OUT		((unsigned long)0x0FFF0000)
#define	GRI_VERS	((unsigned long)0xF0000000)

/*
 * Macros to get values out of ioctl command
 */
#define	GRI_cmd(cmd)	((unsigned long)(cmd) & GRI_CMD)
#define	GRI_in(cmd)	((unsigned long)((cmd) & GRI_IN) >> 8)
#define	GRI_out(cmd)	((unsigned long)((cmd) & GRI_OUT) >> 16)
#define	GRI_vers(cmd)	((unsigned long)((cmd) & GRI_VERS) >> 28)

/*
 * Construct an ioctl from its version, command, input-size,
 * and output-size
 */
#define	GRI_ioctl(vers, cmd, in, out) \
	(((vers) << 28) | ((out) << 16) | ((in) << 8) | (cmd))

#ifdef	GRI_v1

#define	GRI_Q_SIZE		(50)
/*
 * Version 1 graphic input ioctl's
 */
#define	__v1(c)			GRI_ioctl(GRI_v1, c, 0, 0)
#define	__v1R(c, in)		GRI_ioctl(GRI_v1, c, in, 0)
#define	__v1W(c, out)		GRI_ioctl(GRI_v1, c, 0, out)
#define	__v1RW(c, in, out)	GRI_ioctl(GRI_v1, c, in, out)

/* ioclt's */
/* queue commands */
#define GRI_ISMEX		__v1(0) /* OBSOLETE */
#define GRI_INITINPUT		__v1(1)
#define GRI_NULL		__v1(2)
#define GRI_QDEVICE		__v1(3)
#define GRI_UNQDEVICE		__v1(4)
#define GRI_SETVALUATOR		__v1R(5,4*sizeof(short))
#define GRI_GETVALUATOR		__v1(6)
#define GRI_GETBUTTON		__v1(7)
#define GRI_QRESET		__v1(8)
#define GRI_QREAD		__v1W(9,2*sizeof(short))
#define GRI_QENTER		__v1R(10,2*sizeof(short))
#define GRI_NOISE		__v1R(11,2*sizeof(short))
#define GRI_TIE			__v1R(12,3*sizeof(short))
#define GRI_ATTACHCURSOR	__v1R(13,2*sizeof(short))
#define GRI_ISQUEUED		__v1(14)
#define GRI_SCRTIMEOUT		__v1(15)
#define GRI_CHANGEBUTTON	__v1(16)
#define GRI_CHANGEVALUATOR	__v1(17)
#define GRI_CHANGEDEVICE	__v1(18)
#define GRI_RESERVEBUTTON	__v1R(21,2*sizeof(short)) /* OBSOLETE */
#define GRI_GETDEV		__v1R(30,4*sizeof(short))	
#define GRI_MOUSEWARP		__v1R(31,2*sizeof(short))
#define GRI_ANYQENTER		__v1R(32,3*sizeof(short)) /* OBSOLETE */
#define GRI_CURRENTIC		__v1(33)		  /* OBSOLETE */
#define GRI_FINDDEV		__v1(34)
#define GRI_CURSOROFFSET	__v1R(37,2*sizeof(short))
#define GRI_ANYISQUEUED		__v1R(38,2*sizeof(short))
#define GRI_QTEST		__v1(40)
#define GRI_SAVE_QUEUE		__v1W(42, GRI_Q_SIZE )	  /* OBSOLETE */
#define GRI_RESTORE_QUEUE	__v1R(43, GRI_Q_SIZE )	  /* OBSOLETE */
#define GRI_MEX_DORMANT 	__v1(44)		  /* OBSOLETE */
#define GRI_BLKANYQENTER	__v1R(45, GRI_Q_SIZE )
#define GRI_BLKCHANGEDEVICE	__v1R(46, GRI_Q_SIZE )
#define GRI_SETREPEAT		__v1R(47,2*sizeof(short))
#define GRI_GETREPEAT		__v1W(48,2*sizeof(short))
#define GRI_GETMOUSEWARP	__v1W(49,2*sizeof(short))
#define GRI_ADDDEVICE		__v1R(50,2*sizeof(short))
#define GRI_SETFOCUS		__v1R(51,1*sizeof(short))
#define GRI_GETFOCUS		__v1W(52,1*sizeof(short))

/*
 * define this to be the largest number of SHORTS copied in or out
 */
#define	GRI_v1_LARGEST		GRI_Q_SIZE
#endif /* GRI_v1 */

#endif /* __GL_GRI_IOCTL_H__ */
