#ifndef	__GL_GET_H__
#define	__GL_GET_H__
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


/* definitions for returned values of get* routines */


/* bits in value returned by getbuffer */

#define BCKBUFFER		0x1
#define FRNTBUFFER		0x2
#define DRAWZBUFFER		0x4

/* values returned by getdisplaymode */

#define DMRGB			0	/* RGB single buffer */
#define DMSINGLE		1	/* color map single buffer */
#define DMDOUBLE		2	/* color map double buffer */
#define DMRGBDOUBLE		5	/* RGB double buffer */

/* values returned by getmonitor */

#define HZ30			0	/* 30 HZ monitor */
#define HZ60			1	/* std 60 HZ monitor */
#define NTSC			2	/* RS 170 monitor */
#define HDTV			3	/* high definition TV */
#define VGA			4	/* VGA 640 x 496 non'laced */
#define IRIS3K			5	/* 3000 series format 1024 x 768 */
#define PR60			6	/* 1/4 resolution HZ60 (replicated) */
#define PAL			9	/* PAL/SECAM monitor */
#define HZ30_SG			11	/* 30 HZ with sync on green */
#define A343			14	/* RS 343 monitor GT 959 vis lines */
#define STR_RECT		15	/* StereoGraphics Stereo, 1280x492x2 */
#define VOF0			16	/* User defined video format 0 */
#define VOF1			17	/* User defined video format 1 */
#define VOF2			18	/* User defined video format 2 */
#define VOF3			19	/* User defined video format 3 */
#define SGI0			20	/* SGI format 650 x 650 non'laced */
#define SGI1			21	/* SGI format 1280 x 485 'laced */
#define SGI2			22	/* SGI format 645 x 485 non'laced */
#define HZ72			23	/* multi-scan 72 HZ monitor */
#define HZ50			24	/* 50HZ monitor timing*/
#define HZ76			25	/* 76HZ monitor timing*/
#define HZ70			26	/* 70HZ monitor timing*/
#define STR_BOT			27	/* Stereo, bottom buffer primary */
#define STR_TOP			28	/* Stereo, top buffer primary */
#define PRESENTER		29	/* IndyPresenter */
#define HZ48			30	/* 48HZ, framelock to movie cameras */ 
#define SGI_VIDEO_FORMAT_OTHER	999	/* undefined video format */
/* VOF IDs from 1000 on are reserved for custom customer codes */

/* values returned by getvideo(GLVIDEO_REG) */

#define GL_VIDEO_REG	0x00800000
#define GLV_GENLOCK	0x00000001	/* genlock to external signal */
#define GLV_UNBLANK	0x00000002	/* unblank the screen */
#define GLV_SRED	0x00000004	/* provide sync on red */
#define GLV_SGREEN	0x00000008	/* provide sync on green */
#define GLV_SBLUE	0x00000010	/* provide sync on blue */
#define GLV_SALPHA	0x00000020	/* provide sync on alpha */
#define GLV_TTLGENLOCK	0x00000080	/* expect TTL level genlock source */
					/* otherwise, its normal video level */
#define GLV_TTLSYNC	GLV_TTLGENLOCK	/* OBSOLETE, keep for compatibility */
#define GLV_GREENGENLOCK 0x0000100	/* expect genlock source on green input */
					/* otherwise, its on sync input */

/* individual hit bits returned by gethitcode */

#define LEFTPLANE		0x0001
#define RIGHTPLANE		0x0002
#define BOTTOMPLANE		0x0004
#define TOPPLANE		0x0008
#define NEARPLANE		0x0010
#define FARPLANE		0x0020


/* obsolete symbols */

#define	GETDEF			__GL_GET_H__

#define NOBUFFER		0x0
#define BOTHBUFFERS		0x3

#define DMINTENSITYSINGLE	3
#define DMINTENSITYDOUBLE 	4

#define MONSPECIAL		0x20
#define MONA			5
#define MONB			6
#define MONC			7
#define MOND			8

#define MON_ALL			12
#define MON_GEN_ALL		13

#define CMAPMULTI		0
#define CMAPONE			1

#endif	/* !__GL_GET_H__ */
