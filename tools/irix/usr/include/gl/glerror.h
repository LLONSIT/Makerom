#ifndef	__GL_GLERROR_H__
#define	__GL_GLERROR_H__
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

/* severities -- the rest are gl.h, but shouldn't be */
#define ABORT			5	/* call abort() after printing message*/


/* error codes */
#define ERR_SINGMATRIX		1
#define ERR_OUTMEM		2
#define ERR_NEGSIDES		3
#define ERR_BADWINDOW		4
#define ERR_NOOPENOBJ		5
#define ERR_NOFONTRAM		6
#define ERR_FOV			7
#define ERR_BASISID		8
#define ERR_NEGINDEX		9
#define ERR_NOCLIPPERS		10
#define ERR_STRINGBUG		11
#define ERR_NOCURVBASIS		12
#define ERR_BADCURVID		13
#define ERR_NOPTCHBASIS		14
#define ERR_FEEDPICK		15
#define ERR_INPICK		16
#define ERR_NOTINPICK		17
#define ERR_ZEROPICK		18
#define ERR_FONTBUG		19
#define ERR_INRGB		20
#define ERR_NOTINRGBMODE	21
#define ERR_BADINDEX		22
#define ERR_BADVALUATOR		23
#define ERR_BADBUTTON		24
#define ERR_NOTINDBMODE		25
#define ERR_BADINDEXBUG		26
#define ERR_ZEROVIEWPORT	27
#define ERR_DIALBUG		28
#define ERR_MOUSEBUG		29
#define ERR_RETRACEBUG		30
#define ERR_MAXRETRACE		31
#define ERR_NOSUCHTAG		32
#define ERR_DELBUG		33
#define ERR_DELTAG		34
#define ERR_NEGTAG		35
#define ERR_TAGEXISTS		36
#define ERR_OFFTOOBIG		37
#define ERR_ILLEGALID		38
#define ERR_GECONVERT		39
#define ERR_BADAXIS		40
#define ERR_BADDEVICE		42
#define ERR_PATCURVES		44
#define ERR_PATPREC		45
#define ERR_CURVPREC		46
#define	ERR_PUSHATTR		47
#define	ERR_POPATTR		48
#define	ERR_PUSHMATRIX		49
#define	ERR_POPMATRIX		50
#define	ERR_PUSHVIEWPORT	51
#define	ERR_POPVIEWPORT		52
#define ERR_SIZEFIXED		53
#define ERR_SETMONITOR		54
#define ERR_CHANGEINDEX0	55
#define ERR_BADPATTERN		56
#define ERR_CURSORNOTFOUND	57
#define ERR_FONTHOLES		58
#define ERR_REPLACE		59
#define ERR_STARTFEED		60
#define ERR_CYCLEMAP		61
#define ERR_TAGINREPLACE	62
#define ERR_TOOFEWPTS		63
#define ERR_UNDEFINEDCHAR	64
#define ERR_BADCURSOR		65
#define ERR_NOTINCOLORMODE	66
#define ERR_UNKNOWNINTRP	67
#define ERR_INFEEDBACK		68
#define ERR_DURINGFEEDBACK	69
#define ERR_DURINGSELECT	70
#define ERR_ARGMISMATCH		71
#define ERR_TOOMANYARGS		72
#define ERR_OBJNOTFOUND		73
#define ERR_MAKEROOMINREPLACEMODE 74
#define ERR_UNABLETOOPEN	75
#define ERR_QUEUINGDEVICE	76
#define ERR_UNQUEUINGDEVICE	77
#define ERR_GETBUTTONERROR	78
#define ERR_GETVALUATORERROR	79
#define ERR_SETVALERROR		80
#define ERR_TIEERROR		81
#define ERR_NOISEERROR		82
#define ERR_ATTACHCURSOR	83
#define ERR_MAPDEVICE		84
#define ERR_WINATTACH		85
#define ERR_NOSUCHWINDOW	86
#define ERR_CLOSEDLASTWINDOW	87
#define ERR_LINESTYLENOTFOUND   88
#define ERR_PATTERNNOTFOUND	89
#define ERR_NULLWSINCLONING	90
#define ERR_USERERROR		91
#define ERR_NOFONTFOUND		92
#define ERR_WMANIPC		93
#define ERR_INPUTOPEN		94
#define ERR_RESETINGQ		95
#define ERR_GETTP		96
#define ERR_TOOMANYSIDES	97
#define ERR_INVALIDMODE		98
#define ERR_INVALIDPARENT	99
#define ERR_KNOTS		100
#define ERR_TRIMCURVE		101
#define ERR_NURBS		102
#define ERR_FEEDBUFTOOBIG	103
#define	ERR_NODIALDAEMON	104
#define	ERR_WRTDIALDAEMON	105
#define	ERR_NOWINDOWSERVER	106
#define	ERR_INVALIDGDESC	107
#define	ERR_INTERNALERROR	108
#define ERR_BADFONTFILE		109
#define ERR_INVALIDVALUE	110
#define ERR_BADALIGNMENT	111
#define ERR_CANTCONSTRAINORIGIN	112
#define ERR_ACSIZEISZERO	113
#define ERR_NOGRAPHICS		114

extern void	gl_ErrorHandler(long, long, char *);

#endif	/* !__GL_GLERROR_H__ */
