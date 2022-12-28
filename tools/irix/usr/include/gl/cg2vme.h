/**************************************************************************
 *									  *
 * 		 Copyright (C) 1986, Silicon Graphics, Inc.		  *
 *									  *
 *  These coded instructions, statements, and computer programs  contain  *
 *  unpublished  proprietary  information of Silicon Graphics, Inc., and  *
 *  are protected by Federal copyright law.  They  may  not be disclosed  *
 *  to  third  parties  or copied or duplicated in any form, in whole or  *
 *  in part, without the prior written consent of Silicon Graphics, Inc.  *
 *									  *
 **************************************************************************/

#ifndef CG2VME
#define CG2VME

#include "videodev.h"

/* Register numbers for the getvideo() and setvideo() gl routines */
#define DE_R1		(VID_CGDE | 0)  /* DE register 1 see addrs.h for bit fields */
#define CG_MODE		(VID_CGDE | 1)	/* mode register */
#define CG_CONTROL	(VID_CGDE | 2)	/* input/output control register */
#define CG_HPHASE	(VID_CGDE | 3)	/* horizontal phase register */
#define CG_CPHASE	(VID_CGDE | 4)	/* color subcarrier phase register */

/*
 * Defines for the CG2 board
 *
 *		       7         6        5      4     3          2  1  0
 * mode register:  | OUTLVL | CSPHASE | HPHASE | VCR | FMT |       MODE       |
 * control         |     Input  Bits                 |  Output bits	      |
 * color subcarrier| 		8 bit value for color subcarrier phase	      |
 * Horizontal      | 		8 bit value for horizontal phase	      |
 *
 * OUTLVL - Composite Output Level 0 - normal, 1 - high
 * CSPHASE - Color subcarrier phase 0 - use pot, 1 - use register
 * HPHASE - Horizontal phase 0 - use pot, 1 - use register
 * VCR - VCR Input bit 0 - normal, 1 - noisy source (a vcr)
 * FMT - Format  0 - NTSC, 1 - PAL (except in mode 4 0 - 30HZ, 1 - 60 HZ)
 * MODE - see documentation
 * (NOTE: The MODE and FMT bits are combined into the CG2_M_MODE? constants)
 *
 */
#define CG2_BASE_A16	0x3200		/* base address of registers */

#define CG2_MODE_OFF		0x0	/* mode register */
#define CG2_CONTROL_OFF		0x4	/* control register */
#define CG2_HORPHASE_OFF	0x8	/* horizontal phase register */
#define CG2_SUBPHASE_OFF	0xC	/* sub phase register */

/* defines for mode register */
#define CG2_M_SELECTMASK	0x07	/* 3 mode select bits */
#define CG2_M_FORMAT		0x08	/* format bit bit */

#define CG2_M_VCR		0x10	/* noisy VCR input */
#define CG2_M_HORPHASE		0x20	/* set horiz phase w/ register bit */
#define CG2_M_SUBPHASE		0x40	/* set color sub phase w/ register bit*/
#define CG2_M_HIGHOUT		0x80	/* high composite output level bit */
#define CG2_M_OPTMASK		0xF0	/* mask to get the option switch bits */
#define CG2_M_MODEF		0x0F	/* Mode F */
#define CG2_M_MODEE		0x0E	/* Mode E */
#define CG2_M_MODED		0x0D	/* Mode D */
#define CG2_M_MODEC		0x0C	/* Mode C */
#define CG2_M_MODEB		0x0B	/* Mode B */
#define CG2_M_MODEA		0x0A	/* Mode A */
#define CG2_M_MODE9		0x09	/* Mode 9 */
#define CG2_M_MODE8		0x08	/* Mode 8 */
#define CG2_M_MODE7		0x07	/* Mode 7 */
#define CG2_M_MODE6		0x06	/* Mode 6 */
#define CG2_M_MODE5		0x05	/* Mode 5 */
#define CG2_M_MODE4		0x04	/* Mode 4 */
#define CG2_M_MODE3		0x03	/* Mode 3 */
#define CG2_M_MODE2		0x02	/* Mode 2 */
#define CG2_M_MODE1		0x01	/* Mode 1 */
#define CG2_M_MODE0		0x00	/* Mode 0 */

/* defines for control port */
#define CG2_C_OUTMASK		0x0f	/* low order bits are latched output */
#define CG2_C_INMASK		0xf0	/* high order bits are input levels */

#endif
