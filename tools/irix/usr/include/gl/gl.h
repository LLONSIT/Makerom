#ifndef __GL_GL_H__
#define __GL_GL_H__
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
/*
 * Workarounds for collisions with X header files.  gl.h contains
 * two copies of this, once to define and once to undef
 */

#ifdef _GL_UNDEF_TYPES

/* this is the second time, remove my ugliness */
#undef String
#undef Boolean
#undef Object

#else

/* this is the first time, create the ugliness */
#ifdef _XtIntrinsic_h
#define String GL_String
#define Boolean GL_Boolean
#endif

#ifdef _XtObject_h
#define Object GL_Object
#endif

#define _GL_UNDEF_TYPES

#endif

/* Graphics Libary constants */

#ifndef	NULL
#define NULL			0
#endif

#ifndef	FALSE
#define FALSE			0
#endif

#ifndef	TRUE
#define TRUE			1
#endif


/* various hardware/software limits */
#define ATTRIBSTACKDEPTH	10
#define VPSTACKDEPTH		8
#define MATRIXSTACKDEPTH	32
#define NAMESTACKDEPTH		1025

/* special pre-defined tags */
#define STARTTAG		-2
#define ENDTAG			-3

/* names for colors in color map loaded by greset */
#define BLACK			0
#define RED			1
#define GREEN			2
#define YELLOW			3
#define BLUE			4
#define MAGENTA			5
#define CYAN			6
#define WHITE			7

/* popup colors */
#define PUP_CLEAR		0
#define PUP_COLOR		1
#define PUP_BLACK		2
#define PUP_WHITE		3

/* defines for drawmode and mswapbuffers*/
#define NORMALDRAW		0x010
#define PUPDRAW			0x020
#define OVERDRAW		0x040
#define UNDERDRAW		0x080
#define CURSORDRAW		0x100
#define DUALDRAW		0x200	/* obselete skywriter only */
#define GANGDRAW		0x200	/* not available on skywriter */
#define HYPER0			0x10000
#define HYPER1			0x20000
#define HYPER2			0x40000

/* defines for defpattern */
#define PATTERN_16		16
#define PATTERN_32		32
#define PATTERN_64		64

#define PATTERN_16_SIZE		16
#define PATTERN_32_SIZE		64
#define PATTERN_64_SIZE		256

/* defines for readsource */
#define SRC_NULL		-1
#define SRC_AUTO		0
#define SRC_FRONT		1
#define SRC_FRONTLEFT	 	1
#define SRC_BACK		2
#define SRC_BACKLEFT	 	2
#define SRC_ZBUFFER		3
#define SRC_PUP			4
#define SRC_OVER		5
#define SRC_UNDER		6
#define SRC_FRAMEGRABBER 	7
#define SRC_FRONTRIGHT	 	8
#define SRC_BACKRIGHT	 	9
#define SRC_ILBUFFER_1		1000
#define SRC_ILBUFFER_2		1001
#define SRC_ILBUFFER_3		1002
#define SRC_ILBUFFER_4		1003
#define SRC_ILBUFFER_5		1004
#define SRC_ILBUFFER_6		1005
#define SRC_ILBUFFER_7		1006
#define SRC_ILBUFFER_8		1007
#define SRC_ILBUFFER_9		1008
#define SRC_ILBUFFER_10		1009
#define SRC_ILBUFFER_11		1010
#define SRC_ILBUFFER_12		1011
#define SRC_ILBUFFER_13		1012
#define SRC_ILBUFFER_14		1013
#define SRC_ILBUFFER_15		1014
#define SRC_ILBUFFER_16		1015

/* minmax */
#define MINMAX_ENABLE           0
#define MINMAX_DISABLE          1
#define MINMAX_INIT             2

/* histogram */
#define HIST_ENABLE		0
#define HIST_DISABLE		1
#define HIST_CLEAR		2

/* defines for readcomponent */
#define RC_ABGR			4
#define RC_ALPHA		0
#define RC_BLUE			1
#define RC_GREEN		2
#define RC_RED			3

/* defines for blendfunction */
#define BF_ZERO			0
#define BF_ONE			1
#define BF_DC			2
#define BF_SC			2
#define BF_MDC			3
#define BF_MSC			3
#define BF_SA			4
#define BF_MSA			5
#define BF_DA			6
#define BF_MDA			7
#define BF_MIN_SA_MDA		8
#define BF_CA			9
#define BF_MCA			10
#define BF_CC			11
#define BF_MCC			12
#define BF_MIN			13
#define BF_MAX			14

/* defines for afunction */
#define AF_NEVER        	0
#define AF_LESS         	1
#define AF_EQUAL        	2
#define AF_LEQUAL       	3
#define AF_GREATER      	4
#define AF_NOTEQUAL     	5
#define AF_GEQUAL       	6
#define AF_ALWAYS       	7

/* defines for zfunction */
#define ZF_NEVER		0
#define ZF_LESS			1
#define ZF_EQUAL		2
#define ZF_LEQUAL		3
#define ZF_GREATER		4
#define ZF_NOTEQUAL		5
#define ZF_GEQUAL		6
#define ZF_ALWAYS		7

/* defines for zsource */
#define ZSRC_DEPTH		0
#define ZSRC_COLOR		1

/* defines for pntsmooth */
#define SMP_OFF			0x0
#define SMP_ON			0x1
#define SMP_SMOOTHER		0x2

/* defines for linesmooth */
#define SML_OFF			0x0
#define SML_ON			0x1
#define SML_SMOOTHER		0x2
#define SML_END_CORRECT		0x4

/* defines for polysmooth, NOTE, these must be decimal to allow
 * macros in STAPUFT pe ucode (modes.m) to build
 */
#define PYSM_OFF                0
#define PYSM_ON                 1
#define PYSM_SHRINK             2

/* defines for msalpha */
#define MSA_MASK		0x0
#define MSA_MASK_ONE		0x1
#define MSA_ALPHA		0x2

/* defines for mssample */
#define MSS_POINT		0x0
#define MSS_AREA		0x1
#define MSS_CENTER_POINT	0x2

/* defines for mspattern */
#define MSP_DEFAULT		0x0
#define MSP_2PASS_0		0x1
#define MSP_2PASS_1		0x2
#define MSP_4PASS_0		0x3
#define MSP_4PASS_1		0x4
#define MSP_4PASS_2		0x5
#define MSP_4PASS_3		0x6

/* dither modes	*/
#define DT_OFF			0
#define DT_ON			1

/* defines for setpup */
#define PUP_NONE		0
#define PUP_GREY		0x1
#define PUP_BOX			0x2
#define PUP_CHECK		0x4

/* defines for glcompat */
#define GLC_OLDPOLYGON		0
#define GLC_ZRANGEMAP		1
#define GLC_MQUEUERATE		2
#define GLC_SOFTATTACH		3
#define GLC_MANAGEBG		4
#define GLC_SLOWMAPCOLORS	5
#define GLC_INPUTCHANGEBUG	6
#define GLC_NOBORDERBUG		7
#define GLC_SET_VSYNC		8
#define GLC_GET_VSYNC		9
#define GLC_VSYNC_SLEEP		10
#define GLC_FORCECIMAP		11
#define GLC_TABLETSCALE		12
#define GLC_ILCMD		1008
#define GLC_IL_READCOMPONENT	0
#define GLC_IL_RECTZOOMOFF	1
#define GLC_IL_CONVOLVE		2
#define GLC_IL_LRECTPROC	3
#define GLC_IL_HISTOGRAM	4
#define GLC_IL_GETHISTOGRAM	5
#define GLC_IL_MINMAX		6
#define GLC_IL_GETMINMAX	7
#define GLC_IL_PIXELMAP		8
#define GLC_IL_PIXELTRANSFER	9
#define GLC_IL_ILBUFFER		0xa
#define GLC_IL_ILDRAW		0xb
#define GLC_IL_SUBTEXLOAD	0xc
#define GLC_IL_LEFTBUFFER	0xd
#define GLC_IL_RIGHTBUFFER	0xe
#define GLC_IL_STEREOBUFFER	0xf
#define GLC_IL_MONOBUFFER	0x10
#define GLC_IL_FBSUBTEXLOAD	0x11
#define GLC_IL_ISTEXLOADED	0x12
#define GLC_IL_BLENDCOLOR	0x13

/* value for GLC_MQUEUERATE which is compatible with 3.3 */
#define GLC_COMPATRATE		15
/* value for GLC_MQUEUERATE which causes maximum compression */
#define GLC_CMPRESS		1

/* defines for curstype */
#define C16X1			0
#define C16X2			1
#define C32X1			2
#define C32X2			3
#define CCROSS			4

/* defines for shademodel */
#define FLAT			0	/* For compatibility */
#define GOURAUD			1	/* For compatibility */

/* defines for logicop */
#define LO_ZERO			0x0
#define LO_AND			0x1
#define LO_ANDR			0x2
#define LO_SRC			0x3
#define LO_ANDI			0x4
#define LO_DST			0x5
#define LO_XOR			0x6
#define LO_OR			0x7
#define LO_NOR			0x8
#define LO_XNOR			0x9
#define LO_NDST			0xa
#define LO_ORR			0xb
#define LO_NSRC			0xc
#define LO_ORI			0xd
#define LO_NAND			0xe
#define LO_ONE			0xf

/* define for scrnselect */
#define INFOCUSSCRN		-2

/* defines for stencil */
#define ST_KEEP			0
#define ST_ZERO			1
#define ST_REPLACE		2
#define ST_INCR			3
#define ST_DECR			4
#define ST_INVERT		5
#define SF_NEVER		0
#define SF_LESS			1
#define SF_EQUAL		2
#define SF_LEQUAL		3
#define SF_GREATER		4
#define SF_NOTEQUAL		5
#define SF_GEQUAL		6
#define SF_ALWAYS		7

/* defines for scrsubdivide */
#define SS_OFF			0
#define SS_DEPTH		1

/* defines for polymode */
#define PYM_FILL		1
#define PYM_POINT		2
#define PYM_LINE		3
#define PYM_HOLLOW		4
#define PYM_LINE_FAST		5

/* defines for fogvertex */
#define FG_OFF			0
#define FG_ON			1
#define FG_DEFINE		2
#define FG_VTX_EXP		2 /* aka FG_DEFINE*/
#define FG_VTX_LIN		3
#define FG_PIX_EXP		4
#define FG_PIX_LIN		5
#define FG_VTX_EXP2		6 
#define FG_PIX_EXP2		7

/* defines for pixmode */
#define PM_SHIFT		0
#define PM_EXPAND		1
#define PM_C0			2
#define PM_C1			3
#define PM_ADD24		4
#define PM_SIZE			5
#define PM_OFFSET		6
#define PM_STRIDE		7
#define PM_TTOB			8
#define PM_RTOL			9
#define PM_ZDATA		10
#define PM_WARP			11
#define PM_RDX			12
#define PM_RDY			13
#define PM_CDX			14
#define PM_CDY			15
#define PM_XSTART		16
#define PM_YSTART		17
#define PM_VO1			1000	/* internal use only */

/* defines for VENICE float path pixels/texels */
#define PM_INPUT_FORMAT		11
#define PM_INPUT_TYPE		12
#define PM_OUTPUT_FORMAT	13
#define PM_OUTPUT_TYPE		14
#define PM_ABGR			0
#define PM_BGR			1
#define PM_RGBA			2
#define PM_RGB			3
#define PM_LUMINANCE		4
#define PM_LUMINANCEA		5
#define PM_ALPHA		6
#define PM_COLOR_INDEX		7
#define PM_STENCIL_INDEX	8
#define PM_DEPTH		9
#define PM_RED			10
#define PM_GREEN		11
#define PM_BLUE			12


#define PM_BITMAP		0
#define PM_BYTE			1
#define PM_UNSIGNED_BYTE	2
#define PM_SHORT_12		3
#define PM_UNSIGNED_SHORT_12	4
#define PM_SHORT		5
#define PM_UNSIGNED_SHORT	6
#define PM_INT			7
#define PM_UNSIGNED_INT		8
#define PM_FLOAT		9

/* defines for convolve */
#define CV_OFF			0
#define CV_GENERAL		1
#define CV_SEPARABLE		2
#define CV_REDUCE		1

/* defines for pixelmap */
#define MAP_I_TO_I		0
#define MAP_I_TO_R		1
#define MAP_I_TO_G		2
#define MAP_I_TO_B		3
#define MAP_I_TO_A		4
#define MAP_R_TO_R		5
#define MAP_G_TO_G		6
#define MAP_B_TO_B		7
#define MAP_A_TO_A		8

/* defines for pixeltransfer */
#define PT_MAP_COLOR		0
#define PT_MAP_DISABLE		0
#define PT_MAP_CLAMP		1
#define PT_MAP_ENABLE		2

#define PT_RED_SCALE		1
#define PT_RED_BIAS		2
#define PT_GREEN_SCALE		3
#define PT_GREEN_BIAS		4
#define PT_BLUE_SCALE		5
#define PT_BLUE_BIAS		6
#define PT_ALPHA_SCALE		7
#define PT_ALPHA_BIAS		8

/* defines for nmode */
#define NAUTO			0
#define NNORMALIZE		1

/* defines for acbuf */
#define AC_CLEAR                0
#define AC_ACCUMULATE           1
#define AC_CLEAR_ACCUMULATE     2
#define AC_RETURN               3
#define AC_MULT                 4
#define AC_ADD                  5

/* defines for clipplane */
#define CP_OFF                  0
#define CP_ON                   1
#define CP_DEFINE               2

/* defines for scrbox */
#define SB_RESET                0
#define SB_TRACK                1
#define SB_HOLD                 2


/* defines for readdisplay */
#define RD_FREEZE		0x00000001
#define RD_ALPHAONE		0x00000002
#define RD_IGNORE_UNDERLAY	0x00000004
#define RD_IGNORE_OVERLAY	0x00000008
#define RD_IGNORE_PUP		0x00000010
#define RD_OFFSCREEN		0x00000020

/* defines for getgconfig */
#define GC_BITS_CMODE		0
#define GC_BITS_RED		1
#define GC_BITS_GREEN		2
#define GC_BITS_BLUE		3
#define GC_BITS_ALPHA		4
#define GC_BITS_ZBUFFER		5
#define GC_ZMIN			6
#define GC_ZMAX			7
#define GC_BITS_STENCIL		8
#define GC_BITS_ACBUF		9
#define GC_MS_SAMPLES		10
#define GC_BITS_MS_ZBUFFER	11
#define GC_MS_ZMIN		12
#define GC_MS_ZMAX		13
#define GC_BITS_MS_STENCIL	14
#define GC_STEREO		15
#define GC_DOUBLE		16


/* 
 * START defines for getgdesc 
 */

#define GD_XPMAX		0
#define GD_YPMAX		1
#define GD_XMMAX		2
#define GD_YMMAX		3
#define GD_ZMIN			4
#define GD_ZMAX			5
#define GD_BITS_NORM_SNG_RED	6
#define GD_BITS_NORM_SNG_GREEN	7
#define GD_BITS_NORM_SNG_BLUE	8
#define GD_BITS_NORM_DBL_RED	9
#define GD_BITS_NORM_DBL_GREEN	10
#define GD_BITS_NORM_DBL_BLUE	11
#define GD_BITS_NORM_SNG_CMODE	12
#define GD_BITS_NORM_DBL_CMODE	13
#define GD_BITS_NORM_SNG_MMAP	14
#define GD_BITS_NORM_DBL_MMAP	15
#define GD_BITS_NORM_ZBUFFER	16
#define GD_BITS_OVER_SNG_CMODE	17
#define GD_BITS_UNDR_SNG_CMODE	18
#define GD_BITS_PUP_SNG_CMODE	19
#define GD_BITS_NORM_SNG_ALPHA	21 
#define GD_BITS_NORM_DBL_ALPHA	22
#define GD_BITS_CURSOR		23
#define GD_OVERUNDER_SHARED	24
#define GD_BLEND		25
#define GD_CIFRACT		26
#define GD_CROSSHAIR_CINDEX	27
#define GD_DITHER		28
#define GD_LINESMOOTH_CMODE	30
#define GD_LINESMOOTH_RGB	31
#define GD_LOGICOP		33
#define GD_NSCRNS		35
#define GD_NURBS_ORDER		36
#define GD_NBLINKS		37
#define GD_NVERTEX_POLY		39
#define GD_PATSIZE_64		40
#define GD_PNTSMOOTH_CMODE	41
#define GD_PNTSMOOTH_RGB	42
#define GD_PUP_TO_OVERUNDER	43
#define GD_READSOURCE		44
#define GD_READSOURCE_ZBUFFER	48
#define GD_STEREO		50
#define GD_SUBPIXEL_LINE	51
#define GD_SUBPIXEL_PNT		52
#define GD_SUBPIXEL_POLY	53
#define GD_TRIMCURVE_ORDER	54
#define GD_WSYS			55
#define GD_ZDRAW_GEOM		57
#define GD_ZDRAW_PIXELS		58
#define GD_SCRNTYPE		61
#define GD_TEXTPORT		62
#define GD_NMMAPS		63
#define GD_FRAMEGRABBER		64
#define GD_TIMERHZ		66
#define GD_DBBOX		67
#define GD_AFUNCTION		68
#define GD_ALPHA_OVERUNDER	69
#define GD_BITS_ACBUF		70
#define GD_BITS_ACBUF_HW	71
#define GD_BITS_STENCIL		72
#define GD_CLIPPLANES		73
#define GD_FOGVERTEX		74
#define GD_LIGHTING_TWOSIDE	76
#define GD_POLYMODE		77
#define GD_POLYSMOOTH		78
#define GD_SCRBOX		79
#define GD_TEXTURE		80
#define GD_FOGPIXEL		81
#define GD_TEXTURE_PERSP	82
#define GD_MUXPIPES		83
#define GD_MULTISAMPLE		84
#define GD_TEXTURE_3D		85
#define GD_TEXTURE_LUT		86
#define GD_TEXTURE_SHARP	87
#define GD_TEXTURE_DETAIL	88
#define GD_STEREO_IN_WINDOW	89
#define GD_BLENDCOLOR		90
#define GD_LIGHTING_SPOTLIGHT	91
#define GD_LIGHTING_ATT2	92
#define GD_AFUNCTION_MODES	93


/* return value for inquiries when there is no limit */
#define GD_NOLIMIT		-2

/* return values for GD_WSYS */
#define GD_WSYS_NONE		0
#define GD_WSYS_4S		1

/* return values for GD_SCRNTYPE */
#define GD_SCRNTYPE_WM		0
#define GD_SCRNTYPE_NOWM	1

/* 
 * END defines for getgdesc 
 */


/* 
 * START NURBS interface definitions 
 */

/* NURBS Rendering Properties */
#define N_PIXEL_TOLERANCE 	1
#define N_CULLING		2
#define N_DISPLAY		3
#define N_ERRORCHECKING		4
#define N_SUBDIVISIONS		5
#define N_S_STEPS		6
#define N_T_STEPS		7
#define N_TILES			8
#define N_TMP1			9
#define N_TMP2			10
#define N_TMP3			11
#define N_TMP4			12
#define N_TMP5			13
#define N_TMP6			14

#define N_FILL			1.0
#define N_OUTLINE_POLY		2.0
#define N_OUTLINE_PATCH		5.0
#define N_ISOLINE_S		12.0

/*---------------------------------------------------------------------------
 * FLAGS FOR NURBS SURFACES AND CURVES			
 * WARNING: Any changes to these flags should be checked against the 
 * decoding macros in nurbs.h.
 *
 * Bit: 876 5432 10 
 *     |ttt|nnnn|rr|   :  rr - 2 bits = 1 if rational coordinate exists
 *		       : nnn - 4 bits for number of coordinates
 *		       : ttt - 3 bits for type of data (color, position, etc.)
 *	
 *
 * NURBS data type
 * N_T_ST	 	0	 parametric space data
 * N_T_XYZ		1	 model space data
 * N_T_TEX		2	 texture coordinate data
 * N_T_RGBA		3	 color data
 *
 * Number of coordinates per datum
 * N_COORD2	 	2	 2 coords
 * N_COORD3		3	 3 coords
 * N_COORD4		4	 4 coords
 * N_COORD5		5	 5 coords
 *
 * rational or non-rational data and position in memory 
 * N_NONRATIONAL	0	 non-rational data
 * N_RATIONAL		1	 rational data with rat coord after rest
 *
 * N_MKFLAG(t,n,r) ((t<<6) | (n<<2) | r)
 *	
 *---------------------------------------------------------------------------
 */
#define N_ST 	 0x8	/* N_MKFLAG( N_T_ST,  N_COORD2, N_NONRATIONAL ) */
#define N_STW 	 0xd	/* N_MKFLAG( N_T_ST,  N_COORD3, N_RATIONAL ) 	*/
#define N_XYZ	 0x4c	/* N_MKFLAG( N_T_XYZ, N_COORD3, N_NONRATIONAL ) */
#define N_XYZW	 0x51	/* N_MKFLAG( N_T_XYZ, N_COORD4, N_RATIONAL ) 	*/
#define N_TEX	 0x88	/* N_MKFLAG( N_T_TEX, N_COORD2, N_NONRATIONAL ) */
#define N_TEXW	 0x8d	/* N_MKFLAG( N_T_TEX, N_COORD3, N_RATIONAL ) */
#define N_RGBA	 0xd0	/* N_MKFLAG( N_T_RGBA, N_COORD4, N_NONRATIONAL ) */
#define N_RGBAW	 0xd5	/* N_MKFLAG( N_T_RGBA, N_COORD5, N_RATIONAL ) */

/* New versions of above constants */

#define N_P2D	 0x8	/* N_MKFLAG( N_T_ST,  N_COORD2, N_NONRATIONAL ) */
#define N_P2DR	 0xd	/* N_MKFLAG( N_T_ST,  N_COORD3, N_RATIONAL ) 	*/
#define N_V3D	 0x4c	/* N_MKFLAG( N_T_XYZ, N_COORD3, N_NONRATIONAL ) */
#define N_V3DR	 0x51	/* N_MKFLAG( N_T_XYZ, N_COORD4, N_RATIONAL ) 	*/
#define N_T2D	 0x88	/* N_MKFLAG( N_T_TEX, N_COORD2, N_NONRATIONAL ) */
#define N_T2DR	 0x8d	/* N_MKFLAG( N_T_TEX, N_COORD3, N_RATIONAL ) */
#define N_C4D	 0xd0	/* N_MKFLAG( N_T_RGBA, N_COORD4, N_NONRATIONAL ) */
#define N_C4DR	 0xd5	/* N_MKFLAG( N_T_RGBA, N_COORD5, N_RATIONAL ) */

/* 
 * END NURBS interface definitions 
 */


/* 
 * START lighting model defines 
 */

#define LMNULL			0.0

/* MATRIX modes	*/
#define MSINGLE			0
#define MPROJECTION		1
#define MVIEWING		2
#define MTEXTURE		3

/* LIGHT constants */
#define MAXLIGHTS		8
#define MAXRESTRICTIONS		4

/* MATERIAL properties */
#define DEFMATERIAL		0
#define EMISSION		1
#define AMBIENT			2
#define DIFFUSE			3
#define SPECULAR		4
#define SHININESS		5
#define COLORINDEXES		6
#define ALPHA			7

/* LIGHT properties */
#define DEFLIGHT		100
#define LCOLOR			101
#define POSITION		102
#define SPOTDIRECTION		103
#define SPOTLIGHT		104


/* LIGHTINGMODEL properties */
#define DEFLMODEL		200
#define LOCALVIEWER		201
#define ATTENUATION		202
#define ATTENUATION2		203
#define TWOSIDE			204


/* TARGET constants */
#define MATERIAL		1000
#define BACKMATERIAL		1001
#define LIGHT0			1100
#define LIGHT1			1101
#define LIGHT2			1102
#define LIGHT3			1103
#define LIGHT4			1104
#define LIGHT5			1105
#define LIGHT6			1106
#define LIGHT7			1107
#define LMODEL			1200

/* lmcolor modes */
#define LMC_COLOR		0
#define LMC_EMISSION		1
#define LMC_AMBIENT		2
#define LMC_DIFFUSE		3
#define LMC_SPECULAR		4
#define LMC_AD			5
#define LMC_NULL		6

/*
 * END lighting model defines 
 */


/* 
 * START texturing defines 
 */

/* texdef param token values */
#define TX_MINFILTER		0x100
#define TX_MAGFILTER		0x200
#define TX_MAGFILTER_COLOR      0xa00
#define TX_MAGFILTER_ALPHA      0xb00
#define TX_WRAP			0x300
#define TX_WRAP_S		0x310
#define TX_WRAP_T		0x320
#define TX_WRAP_R		0x330
#define TX_TILE			0x400
#define	TX_BORDER		0x500
#define TX_DETAIL               0xe00
#define TX_FAST_DEFINE		0x0f00
#define TX_NOCOPY                               TX_FAST_DEFINE /* obsolete */
#define TX_FRAMEBUFFER_SRC                      0x1000 /* obsolete */
#define TX_SUBTEXLOAD                           0x2000 /* obsolete */
#define TX_FORMATTED_16bit_64x64	0x2000
#define TX_FORMATTED_ABGR_8_128x128	0x2010
#define TX_CONTROL_POINT        0xc00
#define TX_CONTROL_CLAMP        0xd00
#define TX_NULL			0x000

/* texture external formats */
#define TX_EXTERNAL_FORMAT      0x700
#define TX_PACK_8               0x710   /* just like STAPUFT 4.0 */
#define TX_PACK_16              0x720   /* */
#define TX_NOPACK_12		0x730   /* 12 bits in 12 lsb bits of short */
#define TX_PIXMODE		0x3000
#define	TX_BICUBIC_FILTER	0x4000	/* user bicubic kernel parameters */

#define TX_INTERNAL_FORMAT      0x600
/* choices for TX_INTERNAL_FORMAT */
#define TX_I_12                 0x610   /* 1-comp                      full    speed */
#define TX_I_12A_4              0x610   /*        2-comp               full    speed */
#define TX_I_8                  0x620   /* 1-comp                      full    speed */
#define TX_IA_8                 0x620   /*        2-comp               full    speed */
#define TX_RGB_5                0x630   /*               3-comp        full    speed */
#define TX_RGBA_4               0x640   /*                      4-comp full    speed */
#define TX_IA_12                0x650   /*        2-comp               half    speed */
#define TX_RGBA_8               0x660   /*                      4-comp half    speed */
#define TX_RGB_8                0x660   /*               3-comp        half    speed */
#define TX_RGB_12               0x680   /*               3-comp        third   speed */
#define TX_RGBA_12              0x670   /*                      4-comp quarter speed */
#define TX_I_16                 0x690	/* should only be used in SHADOW mode */


#define TX_MIPMAP_FILTER_KERNEL 0x900   /* seperable 8x8x8 filter kernel */

/* texture filter choices */
#define TX_POINT		0x110
#define TX_BILINEAR		0x220
#define TX_MIPMAP		0x120
#define TX_MIPMAP_POINT		0x121
#define TX_MIPMAP_LINEAR	0x122
#define TX_MIPMAP_BILINEAR	0x123
#define TX_MIPMAP_TRILINEAR	0x124
#define TX_BICUBIC                      0x230
#define TX_SHARPEN                      0x240
#define TX_MODULATE_DETAIL              0x250
#define TX_ADD_DETAIL                   0x260
#define TX_TRILINEAR                    0x270
#define TX_MIPMAP_QUADLINEAR            0x280
#define TX_BICUBIC_GEQUAL               0x290
#define TX_BICUBIC_LEQUAL               0x2a0
#define TX_BILINEAR_GEQUAL              0x2b0
#define TX_BILINEAR_LEQUAL              0x2c0


/* texture wrapping access choices */
#define TX_REPEAT		0x301
#define TX_CLAMP		0x302
#define TX_SELECT		0x303

/* texture targets */
#define TX_TEXTURE_0		0
#define TX_TEXTURE_DETAIL       1 /* This binds a texture to the DETAIL texture resource */
#define TX_TEXTURE_IDLE		2

/* texture environment definitions */
#define TV_MODULATE		0x101
#define TV_BLEND		0x102
#define TV_DECAL		0x103
#define TV_COLOR		0x200
#define TV_SHADOW               0x104
#define TV_ALPHA                0x105
#define TV_COMPONENT_SELECT     0x300
#define TV_I_GETS_R             0x310
#define TV_I_GETS_G             0x320
#define TV_I_GETS_B             0x330
#define TV_I_GETS_A             0x340
#define TV_IA_GETS_RG           0x350
#define TV_IA_GETS_BA           0x360
#define TV_I_GETS_I             0x370
#define TV_NULL			0x000

/* texture lookup table definitions */
#define TL_NULL                 0x0
#define TL_TLUT_0		0

/* texture environment targets */
#define TV_ENV0 		0

/* defines for texgen */
#define TX_S			0
#define TX_T			1
#define TX_R			2
#define TX_Q			3
#define TG_OFF			0
#define TG_ON			1
#define TG_CONTOUR		2
#define TG_LINEAR		3
#define TG_SPHEREMAP		4
#define TG_REFRACTMAP		5	/* not yet approved! */

/*
 * END texturing defines 
 */

/* 
 * START multi-byte character types for lcharstr and lstrwidth
 */

#define STR_B	0x000
#define STR_2B	0x001
#define STR_3B	0x010
#define STR_4B	0x011
#define STR_16	0x100
#define STR_32	0x101

/* 
 * END mbcharstr defines
 */

/* 
 * START Distributed Graphics Library defines 
 */

#define DGLSINK			0	/* sink connection	*/
#define DGLLOCAL		1	/* local connection	*/
#define DGLTSOCKET		2	/* tcp socket connection*/
#define DGL4DDN			3	/* 4DDN (DECnet)	*/

/* 
 * END Distributed Graphics Library defines 
 */


/* 
 * START obsolete defines - included for backwards compatibility 
 */

#define GLDEF			__GL_GL_H__

#define PUP_CURSOR		PUP_COLOR

#define FATAL           1       /* exit from program after printing message */
#define WARNING         2       /* print message and continue */
#define ASK_CONT        3       /* ask if program should continue */
#define ASK_RESTART     4       /* ask if program should be restarted */

/* high-resolution monitor */
#define XMAXSCREEN		1279
#define YMAXSCREEN		1023

/* medium-resolution monitor */
#define XMAXMEDIUM		1023	
#define YMAXMEDIUM		767

/* RS-170 */
#define XMAX170			645	
#define YMAX170			484

/* PAL */
#define XMAXPAL			779	
#define YMAXPAL			574

/* 
 * END obsolete defines
 */


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

extern GLXconfig *      GLXgetconfig( void *, long, GLXconfig * );
extern void     acbuf( long, float );
extern void     acsize( long );
extern void     addtopup( long, String, ... );
extern void     afunction( long, long );
extern void     arc( Coord, Coord, Coord, Angle, Angle );
extern void     arcf( Coord, Coord, Coord, Angle, Angle );
extern void     arcfi( Icoord, Icoord, Icoord, Angle, Angle );
extern void     arcfs( Scoord, Scoord, Scoord, Angle, Angle );
extern void     arci( Icoord, Icoord, Icoord, Angle, Angle );
extern void     arcs( Scoord, Scoord, Scoord, Angle, Angle );
extern void     attachcursor( Device, Device );
extern void     backbuffer( Boolean );
extern void     backface( Boolean );
extern void     bbox2( Screencoord, Screencoord, Coord, Coord, Coord, Coord );
extern void     bbox2i( Screencoord, Screencoord, Icoord, Icoord, Icoord, Icoord );
extern void     bbox2s( Screencoord, Screencoord, Scoord, Scoord, Scoord, Scoord );
extern void     bgnclosedline( void );
extern void     bgncurve( void );
extern void     bgnline( void );
extern void     bgnpoint( void );
extern void     bgnpolygon( void );
extern void     bgnqstrip( void );
extern void     bgnsurface( void );
extern void     bgntmesh( void );
extern void     bgntrim( void );
extern void     blankscreen( Boolean );
extern void     blanktime( long );
extern void     blendcolor( float, float, float, float );
extern void     blendfunction( long, long );
extern void     blink( short, Colorindex, short, short, short );
extern long     blkqread( short[], short );
extern void     c3f( const float[3] );
extern void     c3i( const long[3] );
extern void     c3s( const short[3] );
extern void     c4f( const float[4] );
extern void     c4i( const long[4] );
extern void     c4s( const short[4] );
extern void     callfunc( __PFV_, long, ... );          /* not recommended */
extern void     callobj( Object );
extern void     charstr( String );
extern void     chunksize( long );
extern void     circ( Coord, Coord, Coord );
extern void     circf( Coord, Coord, Coord );
extern void     circfi( Icoord, Icoord, Icoord );
extern void     circfs( Scoord, Scoord, Scoord );
extern void     circi( Icoord, Icoord, Icoord );
extern void     circs( Scoord, Scoord, Scoord );
extern void     clear( void );
extern void     clearhitcode( void );                   /* not recommended */
extern void     clipplane( long, long, const float[] );
extern void     clkoff( void );
extern void     clkon( void );
extern void     closeobj( void );
extern void     cmode( void );
extern void     cmov( Coord, Coord, Coord );
extern void     cmov2( Coord, Coord );
extern void     cmov2i( Icoord, Icoord );
extern void     cmov2s( Scoord, Scoord );
extern void     cmovi( Icoord, Icoord, Icoord );
extern void     cmovs( Scoord, Scoord, Scoord );
extern void     color( Colorindex );
extern void     colorf( float );
extern void     compactify( Object );
extern void     concave( Boolean );
extern void     convolve( long, long, long, long, const float[], float );
extern void     cpack( unsigned long );
extern void     crv( const Coord[4][3] );
extern void     crvn( long, const Coord[][3] );
extern void     curorigin( short, short, short );
extern void     cursoff( void );
extern void     curson( void );
extern void     curstype( long );
extern void     curvebasis( short );
extern void     curveit( short );
extern void     curveprecision( short );
extern void     cyclemap( short, short, short );
extern void     czclear( unsigned long, long );
extern void     dbtext( char[8] );
extern void     defbasis( short, const Matrix );
extern void     defcursor( short, const unsigned short[128] );
extern void     deflfont( short, short, const Lfontchar[], long, const unsigned short[] );
extern void     deflinestyle( short, Linestyle );
extern void     defpattern( short, short, const unsigned short[] );
extern long     defpup( String, ... );
extern void     defrasterfont( short, short, short, const Fontchar[], short, const unsigned short[] );
extern void     delobj( Object );
extern void     deltag( Tag );
extern void     depthcue( Boolean );
extern void     dglclose( long );
extern long     dglopen( String, long );
extern void     displacepolygon( float );
extern void     dither( long );
extern long     dopup( long );
extern void     doublebuffer( void );
extern void     draw( Coord, Coord, Coord );
extern void     draw2( Coord, Coord );
extern void     draw2i( Icoord, Icoord );
extern void     draw2s( Scoord, Scoord );
extern void     drawi( Icoord, Icoord, Icoord );
extern void     drawmode( long );
extern void     draws( Scoord, Scoord, Scoord );
extern void     editobj( Object );
extern void     endclosedline( void );
extern void     endcurve( void );
extern long     endfeedback( void * );
extern void     endfullscrn( void );
extern void     endline( void );
extern long     endpick( short[] );
extern void     endpoint( void );
extern void     endpolygon( void );
extern void     endpupmode( void );                     /* obsolete */
extern void     endqstrip( void );
extern long     endselect( short[] );
extern void     endsurface( void );
extern void     endtmesh( void );
extern void     endtrim( void );
extern void     fbsubtexload( long, long, long, long, float, float, float, float, unsigned long );
extern void     feedback( void *, long );
extern void     finish( void );
extern void     fogvertex( long, const float[32] );
extern void     font( short );
extern void     foreground( void );
extern void     freepup( long );
extern void     frontbuffer( Boolean );
extern void     frontface( Boolean );
extern void     fudge( long, long );
extern void     fullscrn( void );
extern void     gammaramp( const short[256], const short[256], const short[256] );
extern void     gbegin( void );                         /* not recommended */
extern void     gconfig( void );
extern Object   genobj( void );
extern Tag      gentag( void );
extern long     getbackface( void );
extern long     getbuffer( void );
extern Boolean  getbutton( Device );
extern Boolean  getcmmode( void );
extern long     getcolor( void );
extern void     getcpos( short *, short * );
extern void     getcursor( short *, Colorindex *, Colorindex *, Boolean * );
extern Boolean  getdcm( void );
extern void     getdepth( Screencoord *, Screencoord * ); /* obsolete */
extern long     getdescender( void );
extern void     getdev( long, const Device[], short[] );
extern long     getdisplaymode( void );
extern long     getdrawmode( void );
extern long     getfont( void );
extern long     getgconfig( long );
extern long     getgdesc( long );
extern void     getgpos( Coord *, Coord *, Coord *, Coord * );
extern long     getheight( void );
extern void     gethgram( unsigned long[16384] );
extern long     gethitcode( void );                     /* not recommended */
extern Boolean  getlsbackup( void );                    /* not recommended */
extern long     getlsrepeat( void );
extern long     getlstyle( void );
extern long     getlwidth( void );
extern long     getmap( void );
extern void     getmatrix( Matrix );
extern void     getmcolor( Colorindex, short *, short *, short * );
extern void     getminmax( float[8] );
extern long     getmmode( void );
extern long     getmonitor( void );
extern Boolean  getmultisample( void );
extern void     getnurbsproperty( long, float * );
extern Object   getopenobj( void );
extern void     getorigin( long *, long * );
extern long     getothermonitor( void );                /* obsolete */
extern long     getpattern( void );
extern long     getplanes( void );
extern void     getport( String );                      /* obsolete */
extern Boolean  getresetls( void );                     /* not recommended */
extern void     getscrbox( long *, long *, long *, long * );
extern void     getscrmask( Screencoord *, Screencoord *, Screencoord *, Screencoord * );
extern long     getshade( void );                       /* obsolete */
extern void     getsize( long *, long * );
extern long     getsm( void );
extern long     getvaluator( Device );
extern long     getvideo( long );
extern void     getviewport( Screencoord *, Screencoord *, Screencoord *, Screencoord * );
extern long     getwritemask( void );
extern long     getwscrn( void );
extern Boolean  getzbuffer( void );
extern void     gexit( void );
extern void     gflush( void );
extern void     ginit( void );                          /* not recommended */
extern void     glcompat( long, long );
extern long     GLXlink( void *, GLXconfig * );
extern long     GLXunlink( void *, unsigned long );
extern long     GLXwinset( void *, unsigned long );
extern void     greset( void );                         /* not recommended */
extern void     gRGBcolor( short *, short *, short * );
extern void     gRGBcursor( short *, short *, short *, short *, short *, short *, short *, Boolean * ); /* obsolete */
extern void     gRGBmask( short *, short *, short * );
extern void     gselect( short[], long );
extern void     gsync( void );
extern long     gversion( char[12] );
extern void     hgram( unsigned long, unsigned long );
extern void     iconsize( long, long );
extern void     icontitle( String );
extern long     ilbuffer( unsigned long );
extern void     ildraw( unsigned long );
extern void     imakebackground( void );
extern void     initnames( void );
extern Boolean  ismex( void );                          /* obsolete */
extern Boolean  isobj( Object );
extern Boolean  isqueued( Device );
extern Boolean  istag( Tag );
extern long     istexloaded( long, long );
extern void     keepaspect( long, long );
extern void     lampoff( Byte );                        /* not recommended */
extern void     lampon( Byte );                         /* not recommended */
extern void     lcharstr( long, Lstring );
extern void     leftbuffer( Boolean );
extern void     linesmooth( unsigned long );
extern void     linewidth( short );
extern void     linewidthf( float );
extern void     lmbind( short, short );
extern void     lmcolor( long );
extern void     lmdef( short, short, short, const float[] );
extern void     loadmatrix( const Matrix );
extern void     loadname( short );
extern void     logicop( long );
extern void     lookat( Coord, Coord, Coord, Coord, Coord, Coord, Angle );
extern long     lrectread( Screencoord, Screencoord, Screencoord, Screencoord, unsigned long[] );
extern void     lrectwrite( Screencoord, Screencoord, Screencoord, Screencoord, const unsigned long[] );
extern void     lRGBrange( short, short, short, short, short, short, long, long );
extern void     lsbackup( Boolean );                    /* not recommended */
extern void     lsetdepth( long, long );
extern void     lshaderange( Colorindex, Colorindex, long, long );
extern void     lsrepeat( long );
extern long     lstrwidth( long, Lstring );
extern void     makeobj( Object );
extern void     maketag( Tag );
extern void     mapcolor( Colorindex, short, short, short );
extern void     mapw( Object, Screencoord, Screencoord, Coord *, Coord *, Coord *, Coord *, Coord *, Coord * );
extern void     mapw2( Object, Screencoord, Screencoord, Coord *, Coord * );
extern void     maxsize( long, long );
extern void     minmax( unsigned long, unsigned long );
extern void     minsize( long, long );
extern void     mmode( short );
extern void     monobuffer( void );
extern void     move( Coord, Coord, Coord );
extern void     move2( Coord, Coord );
extern void     move2i( Icoord, Icoord );
extern void     move2s( Scoord, Scoord );
extern void     movei( Icoord, Icoord, Icoord );
extern void     moves( Scoord, Scoord, Scoord );
extern void     msalpha( long );
extern void     msmask( float, Boolean );
extern void     mspattern( long );
extern void     mssample( long );
extern void     mssize( long, long, long );
extern void     mswapbuffers( long );
extern void     multimap( void );
extern void     multisample( Boolean );
extern void     multmatrix( const Matrix );
extern void     n3f( const float[3] );
extern long     newpup( void );
extern void     newtag( Tag, Tag, Offset );
extern void     nmode( long );
extern void     noborder( void );
extern void     noise( Device, short );
extern void     noport( void );
extern void     normal( const Coord[3] );               /* obsolete */
extern void     nurbscurve( long, const double[], long, const double[], long, long );
extern void     nurbssurface( long, const double[], long, const double[], long, long, const double[], long, long, long );
extern void     objdelete( Tag, Tag );
extern void     objinsert( Tag );
extern void     objreplace( Tag );
extern void     onemap( void );
extern void     ortho( Coord, Coord, Coord, Coord, Coord, Coord );
extern void     ortho2( Coord, Coord, Coord, Coord );
extern void     overlay( long );
extern void     pagecolor( Colorindex );                /* not recommended */
extern void     passthrough( short );
extern void     patch( const Matrix, const Matrix, const Matrix );
extern void     patchbasis( long, long );
extern void     patchcurves( long, long );
extern void     patchprecision( long, long );
extern void     pclos( void );
extern void     pdr( Coord, Coord, Coord );
extern void     pdr2( Coord, Coord );
extern void     pdr2i( Icoord, Icoord );
extern void     pdr2s( Scoord, Scoord );
extern void     pdri( Icoord, Icoord, Icoord );
extern void     pdrs( Scoord, Scoord, Scoord );
extern void     perspective( Angle, float, Coord, Coord );
extern void     pick( short[], long );
extern void     picksize( short, short );
extern void     pixelmap( long, long, unsigned short[16384] );
extern void     pixeltransfer( long, float );
extern void     pixmode( long, long );
extern void     pixmodef( long, float );
extern void     pmv( Coord, Coord, Coord );
extern void     pmv2( Coord, Coord );
extern void     pmv2i( Icoord, Icoord );
extern void     pmv2s( Scoord, Scoord );
extern void     pmvi( Icoord, Icoord, Icoord );
extern void     pmvs( Scoord, Scoord, Scoord );
extern void     pnt( Coord, Coord, Coord );
extern void     pnt2( Coord, Coord );
extern void     pnt2i( Icoord, Icoord );
extern void     pnt2s( Scoord, Scoord );
extern void     pnti( Icoord, Icoord, Icoord );
extern void     pnts( Scoord, Scoord, Scoord );
extern void     pntsize( short );
extern void     pntsizef( float );
extern void     pntsmooth( unsigned long );
extern void     polarview( Coord, Angle, Angle, Angle );
extern void     polf( long, const Coord[][3] );
extern void     polf2( long, const Coord[][2] );
extern void     polf2i( long, const Icoord[][2] );
extern void     polf2s( long, const Scoord[][2] );
extern void     polfi( long, const Icoord[][3] );
extern void     polfs( long, const Scoord[][3] );
extern void     poly( long, const Coord[][3] );
extern void     poly2( long, const Coord[][2] );
extern void     poly2i( long, const Icoord[][2] );
extern void     poly2s( long, const Scoord[][2] );
extern void     polyi( long, const Icoord[][3] );
extern void     polymode( long );
extern void     polys( long, const Scoord[][3] );
extern void     polysmooth( long );
extern void     popattributes( void );
extern void     popmatrix( void );
extern void     popname( void );
extern void     popviewport( void );
extern void     prefposition( long, long, long, long );
extern void     prefsize( long, long );
extern void     pupmode( void );                        /* obsolete */
extern void     pushattributes( void );
extern void     pushmatrix( void );
extern void     pushname( short );
extern void     pushviewport( void );
extern void     pwlcurve( long, const double[], long, long );
extern long     qcontrol( long, long, const short[], long, short[] );
extern void     qdevice( Device );
extern void     qenter( Device, short );
extern long     qgetfd( void );
extern long     qread( short * );
extern void     qreset( void );
extern long     qtest( void );
extern void     rcrv( const Coord[4][4] );
extern void     rcrvn( long, const Coord[][4] );
extern void     rdr( Coord, Coord, Coord );
extern void     rdr2( Coord, Coord );
extern void     rdr2i( Icoord, Icoord );
extern void     rdr2s( Scoord, Scoord );
extern void     rdri( Icoord, Icoord, Icoord );
extern void     rdrs( Scoord, Scoord, Scoord );
extern void     readcomponent( long );
extern long     readdisplay( Screencoord, Screencoord, Screencoord, Screencoord, unsigned long[], unsigned long );
extern long     readpixels( short, Colorindex[] );
extern long     readRGB( short, RGBvalue[], RGBvalue[], RGBvalue[] );
extern void     readsource( long );
extern void     rect( Coord, Coord, Coord, Coord );
extern void     rectcopy( Screencoord, Screencoord, Screencoord, Screencoord, Screencoord, Screencoord );
extern void     rectf( Coord, Coord, Coord, Coord );
extern void     rectfi( Icoord, Icoord, Icoord, Icoord );
extern void     rectfs( Scoord, Scoord, Scoord, Scoord );
extern void     recti( Icoord, Icoord, Icoord, Icoord );
extern long     rectread( Screencoord, Screencoord, Screencoord, Screencoord, Colorindex[] );
extern void     rects( Scoord, Scoord, Scoord, Scoord );
extern void     rectwrite( Screencoord, Screencoord, Screencoord, Screencoord, const Colorindex[] );
extern void     rectzoom( float, float );
extern void     resetls( Boolean );                     /* not recommended */
extern void     reshapeviewport( void );
extern void     RGBcolor( short, short, short );
extern void     RGBcursor( short, short, short, short, short, short, short ); /* obsolete */
extern void     RGBmode( void );
extern void     RGBrange( short, short, short, short, short, short, Screencoord, Screencoord ); /* obsolete */
extern void     RGBsize( unsigned long );
extern void     RGBwritemask( short, short, short );
extern void     rightbuffer( Boolean );
extern void     ringbell( void );
extern void     rmv( Coord, Coord, Coord );
extern void     rmv2( Coord, Coord );
extern void     rmv2i( Icoord, Icoord );
extern void     rmv2s( Scoord, Scoord );
extern void     rmvi( Icoord, Icoord, Icoord );
extern void     rmvs( Scoord, Scoord, Scoord );
extern void     rot( float, char );
extern void     rotate( Angle, char );
extern void     rpatch( const Matrix, const Matrix, const Matrix, const Matrix );
extern void     rpdr( Coord, Coord, Coord );
extern void     rpdr2( Coord, Coord );
extern void     rpdr2i( Icoord, Icoord );
extern void     rpdr2s( Scoord, Scoord );
extern void     rpdri( Icoord, Icoord, Icoord );
extern void     rpdrs( Scoord, Scoord, Scoord );
extern void     rpmv( Coord, Coord, Coord );
extern void     rpmv2( Coord, Coord );
extern void     rpmv2i( Icoord, Icoord );
extern void     rpmv2s( Scoord, Scoord );
extern void     rpmvi( Icoord, Icoord, Icoord );
extern void     rpmvs( Scoord, Scoord, Scoord );
extern void     sbox( Coord, Coord, Coord, Coord );
extern void     sboxf( Coord, Coord, Coord, Coord );
extern void     sboxfi( Icoord, Icoord, Icoord, Icoord );
extern void     sboxfs( Scoord, Scoord, Scoord, Scoord );
extern void     sboxi( Icoord, Icoord, Icoord, Icoord );
extern void     sboxs( Scoord, Scoord, Scoord, Scoord );
extern void     scale( float, float, float );
extern void     sclear( unsigned long );
extern void     scrbox( long );
extern void     screenspace( void );
extern void     scrmask( Screencoord, Screencoord, Screencoord, Screencoord );
extern long     scrnattach( long );
extern long     scrnselect( long );
extern void     scrsubdivide( long, const float[] );
extern void     setbell( Byte );
extern void     setcursor( short, Colorindex, Colorindex );
extern void     setdblights( unsigned long );
extern void     setdepth( Screencoord, Screencoord );   /* obsolete */
extern void     setlinestyle( short );
extern void     setmap( short );
extern void     setmonitor( short );
extern void     setnurbsproperty( long, float );
extern void     setpattern( short );
extern void     setpup( long, long, unsigned long );
extern void     setshade( Colorindex );
extern void     setvaluator( Device, short, short, short );
extern void     setvideo( long, long );
extern void     shademodel( long );
extern void     shaderange( Colorindex, Colorindex, Screencoord, Screencoord ); /* obsolete */
extern void     singlebuffer( void );
extern void     smoothline( long );                     /* obsolete */
extern void     spclos( void );                         /* obsolete */
extern void     splf( long, const Coord[][3], const Colorindex[] );
extern void     splf2( long, const Coord[][2], const Colorindex[] );
extern void     splf2i( long, const Icoord[][2], const Colorindex[] );
extern void     splf2s( long, const Scoord[][2], const Colorindex[] );
extern void     splfi( long, const Icoord[][3], const Colorindex[] );
extern void     splfs( long, const Scoord[][3], const Colorindex[] );
extern void     stencil( long, unsigned long, long, unsigned long, long, long, long );
extern void     stensize( long );
extern void     stepunit( long, long );
extern void     stereobuffer( void );
extern long     strwidth( String );
extern void     subpixel( Boolean );
extern void     subtexload( long, long, float, float, float, float, long, const unsigned long[], unsigned long );
extern void     swapbuffers( void );
extern void     swapinterval( short );
extern void     swaptmesh( void );
extern long     swinopen( long );
extern void     swritemask( unsigned long );
extern void     t2d( const double[2] );
extern void     t2f( const float[2] );
extern void     t2i( const long[2] );
extern void     t2s( const short[2] );
extern void     t3d( const double[3] );
extern void     t3f( const float[3] );
extern void     t3i( const long[3] );
extern void     t3s( const short[3] );
extern void     t4d( const double[4] );
extern void     t4f( const float[4] );
extern void     t4i( const long[4] );
extern void     t4s( const short[4] );
extern void     tevbind( long, long );
extern void     tevdef( long, long, const float[] );
extern void     texbind( long, long );
extern void     texdef2d( long, long, long, long, const unsigned long[], long, const float[] );
extern void     texdef3d( long, long, long, long, long, const unsigned long[], long, const float[] );
extern void     texgen( long, long, const float[] );
extern void     textcolor( Colorindex );                /* not recommended */
extern void     textinit( void );                       /* not recommended */
extern void     textport( Screencoord, Screencoord, Screencoord, Screencoord ); /* not recommended */
extern void     tie( Device, Device, Device );
extern void     tlutbind( long, long );
extern void     tlutdef( long, long, long, const unsigned long[], long, const float[] );
extern void     tpoff( void );                          /* not recommended */
extern void     tpon( void );                           /* not recommended */
extern void     translate( Coord, Coord, Coord );
extern void     underlay( long );
extern void     unqdevice( Device );
extern void     v2d( const double[2] );
extern void     v2f( const float[2] );
extern void     v2i( const long[2] );
extern void     v2s( const short[2] );
extern void     v3d( const double[3] );
extern void     v3f( const float[3] );
extern void     v3i( const long[3] );
extern void     v3s( const short[3] );
extern void     v4d( const double[4] );
extern void     v4f( const float[4] );
extern void     v4i( const long[4] );
extern void     v4s( const short[4] );
extern void     videocmd( long );
extern void     viewport( Screencoord, Screencoord, Screencoord, Screencoord );
extern long     winattach( void );                      /* obsolete */
extern void     winclose( long );
extern void     winconstraints( void );
extern long     windepth( long );
extern void     window( Coord, Coord, Coord, Coord, Coord, Coord );
extern long     winget( void );
extern void     winmove( long, long );
extern long     winopen( String );
extern void     winpop( void );
extern void     winposition( long, long, long, long );
extern void     winpush( void );
extern void     winset( long );
extern void     wintitle( String );
extern void     wmpack( unsigned long );
extern void     writemask( Colorindex );
extern void     writepixels( short, const Colorindex[] );
extern void     writeRGB( short, const RGBvalue[], const RGBvalue[], const RGBvalue[] );
extern void     xfpt( Coord, Coord, Coord );            /* not recommended */
extern void     xfpt2( Coord, Coord );                  /* not recommended */
extern void     xfpt2i( Icoord, Icoord );               /* not recommended */
extern void     xfpt2s( Scoord, Scoord );               /* not recommended */
extern void     xfpt4( Coord, Coord, Coord, Coord );    /* not recommended */
extern void     xfpt4i( Icoord, Icoord, Icoord, Icoord ); /* not recommended */
extern void     xfpt4s( Scoord, Scoord, Scoord, Scoord ); /* not recommended */
extern void     xfpti( Icoord, Icoord, Icoord );        /* not recommended */
extern void     xfpts( Scoord, Scoord, Scoord );        /* not recommended */
extern void     zbsize( long );
extern void     zbuffer( Boolean );
extern void     zclear( void );
extern void     zdraw( Boolean );
extern void     zfunction( long );
extern void     zsource( long );                        /* not recommended */
extern void     zwritemask( unsigned long );
/*
 * Workarounds for collisions with X header files.  gl.h contains
 * two copies of this, once to define and once to undef
 */

#ifdef _GL_UNDEF_TYPES

/* this is the second time, remove my ugliness */
#undef String
#undef Boolean
#undef Object

#else

/* this is the first time, create the ugliness */
#ifdef _XtIntrinsic_h
#define String GL_String
#define Boolean GL_Boolean
#endif

#ifdef _XtObject_h
#define Object GL_Object
#endif

#define _GL_UNDEF_TYPES

#endif
#ifdef __cplusplus
}
#endif
#endif /* !__GL_GL_H__ */
