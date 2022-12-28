
/************************************************************
 Copyright (c) 1993 by Silicon Graphics Computer Systems, Inc.

 Permission to use, copy, modify, and distribute this
 software and its documentation for any purpose and without
 fee is hereby granted, provided that the above copyright
 notice appear in all copies and that both that copyright
 notice and this permission notice appear in supporting
 documentation, and that the name of Silicon Graphics not be 
 used in advertising or publicity pertaining to distribution 
 of the software without specific prior written permission.
 Silicon Graphics makes no representation about the suitability 
 of this software for any purpose. It is provided "as is"
 without any express or implied warranty.

 SILICON GRAPHICS DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS 
 SOFTWARE, INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY 
 AND FITNESS FOR A PARTICULAR PURPOSE. IN NO EVENT SHALL SILICON
 GRAPHICS BE LIABLE FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL 
 DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, 
 DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE 
 OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION  WITH
 THE USE OR PERFORMANCE OF THIS SOFTWARE.

 ********************************************************/

#ifndef IMCOMP_H
#define	IMCOMP_H 1

typedef	CARD16	XimShortKeySym;
#define	XIM_ShortVoidSymbol	0xffff

extern	KeySym	XimShortKSToKS( 
#if NeedFunctionPrototypes
	XimShortKeySym 	/* sym */,
	KeySym *	/* private */
#endif
);

extern XimShortKeySym XimKSToShortKS( 
#if NeedFunctionPrototypes
	KeySym		/* sym */,
	KeySym *	/* private */,
	int		/* create */
#endif
);

/***====================================================================***/

typedef struct _XimCompTbl {
	CARD8		 type;
	CARD8		 keycode;
	CARD16		 useFlags;	/* private to imComp.c */
	CARD16		 kindFlags;
	CARD16		 szResultStr;
	KeySym		 introducer;
	KeySym		*privateSyms;
	CARD8		*resultStr;
	KeySym		*ignore;
	char		*name;
	char		*charset;
	void		*next;
	void		*appPriv;	/* for use by App */
} XimCompTbl;


extern void XimCompInitTables(
#if NeedFunctionPrototypes
	void
#endif
);

extern XimCompTbl *XimCompReadTables(
#if NeedFunctionPrototypes
	char *		/* path */
#endif
);

extern XimCompTbl *XimCompFreeTables(
#if NeedFunctionPrototypes
	XimCompTbl *	/* pTbl */
#endif
);

extern XimCompTbl *XimCompGetTables(
#if NeedFunctionPrototypes
	void
#endif
);

extern XimCompTbl *XimCompSetTables(
#if NeedFunctionPrototypes
	XimCompTbl *	/* pInfo */
#endif
);

extern int XimCompUseTables(
#if NeedFunctionPrototypes
	XimCompTbl *	/* pInfo */,
	XimCompTbl**	/* ppOld */
#endif
);

extern int XimCompEnableTable(
#if NeedFunctionPrototypes
	XimCompTbl *	/* pInfo */,
	int 		/* enable */
#endif
);

/***====================================================================***/

extern	void	*_XimCompStateStart;
extern	void	*_XimCompStateEnd;

#define	XimCompLegalState(p) \
	((!p)||((((void*)(p))>=_XimCompStateStart)&&\
			(((void*)(p))<=_XimCompStateEnd)))
#define	XimCompLegalStatus(p) \
	(((!(p)->compose_ptr)&&((p)->chars_matched==0))\
	 ||(((((void*)(p)->compose_ptr))>=_XimCompStateStart)&&\
			(((void*)(p)->compose_ptr)<=_XimCompStateEnd)))

#define	XIM_COMP_MAX_SYMS	30
#define	XIM_COMP_SYMS_SIZE	(XIM_COMP_MAX_SYMS+1)
#define	XIM_COMP_MAX_CHARS	100
#define	XIM_COMP_CHARS_SIZE	(XIM_COMP_MAX_CHARS+1)

#define	XIM_COMP_MAX_PRIVATE	0x0fff

typedef struct _XimCompRtrn {
	XimCompTbl	*tbl;
	KeySym		 matchSym;
	KeySym		 sym[XIM_COMP_SYMS_SIZE];
	char		 str[XIM_COMP_CHARS_SIZE];
} XimCompRtrn;

	/*
	 * return values for ProcessComposeSym
	 */
#define	XIM_COMP_IGNORE		0
#define	XIM_COMP_IN_PROGRESS	1
#define	XIM_COMP_SUCCEED	2
#define	XIM_COMP_FAIL		3

extern int XimCompIsComposeKey(
#if NeedFunctionPrototypes
	KeySym			/* sym */,
	int 			/* keycode */,
	XComposeStatus *	/* status */
#endif
);

extern int XimCompProcessSym(
#if NeedFunctionPrototypes
	XComposeStatus *	/* status */,
	KeySym 			/* sym */,
	XimCompRtrn *		/* rtrn */
#endif
);

extern void XimCompResetStatus(
#if NeedFunctionPrototypes
	XComposeStatus *	/* status */
#endif
);

#ifdef NOTYET
extern int XimCompGetPreedit(
#if NeedFunctionPrototypes
	XComposeStatus *	/* status */,
	XimCompRtrn *		/* pRtrn */
#endif
);
#endif

#endif /* IMCOMP_H */
