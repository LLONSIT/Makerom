
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

#ifndef IMCOMPINT_H
#define	IMCOMPINT_H 1

#include "imComp.h"

	/*
	 * values for useFlags in imCompTbl
	 */
#define	XIM_COMP_CAN_FREE	(1<<0)
#define	XIM_COMP_INACTIVE	(1<<1)

/***====================================================================***/

typedef struct _XimCompState {
	int			(*proc)(
#if NeedFunctionPrototypes
		XComposeStatus *,
		KeySym,
		XimCompRtrn *
#endif
	);
	XComposeStatus *	sanity;
	XimCompTbl *		table;
	void *			state;
} XimCompState;

/***====================================================================***/

#define	XIM_COMP_TREE	1
#define	XIM_COMP_TREE_SHORTCUT	2
#define	XIM_COMP_STRING	3

#define	NEXT_IS_UNDEFINED 'U'
#define	NEXT_IS_NODE	'N'
#define	NEXT_IS_RESULT	'R'

typedef struct _XimCompTreeNode {
	CARD16		 back;
	XimShortKeySym	 sym;
	CARD16		 str;
	XimShortKeySym	*nextSym;
	CARD32		*next;
	char		*what;
} XimCompTreeNode;

typedef struct _XimCompTree {
	XimCompTbl	 common;
	XimCompTreeNode	*node;
	int		 nNodes;
} XimCompTree;

#define	CTResultSym(i,n,x)	(XimShortKSToKS((n)->next[x]&0xffff,\
						(i)->common.privateSyms))
#define	CTResultStr(i,n,x)	(&(i)->common.resultStr[((n)->next[x]>>16)&0xffff])

#define	CTNextIndex(n,x)	((n)->next[x]&0xffff)
#define	CTNodeNext(i,n,x)	(&(i)->node[(n)->next[x]&0xffff])
#define	CTNode(i,n)		(&(i)->node[n])
#define	CTNodeIndex(i,n)	((n)-(i)->node)

typedef struct _XimCompTreeShortcut {
	XimCompTbl	 common;
	XimCompTree	*tbl;
	XimCompTreeNode	*node;
} XimCompTreeShortcut;

typedef struct _XimCompStringTbl {
	XimCompTbl		common;
	int			maxLen;
	int		  	nSequence;
	XimShortKeySym **	sequence;
	CARD32 *		yields;
	KeySym *		terminators;
} XimCompStringTbl;

#ifdef _XLCPUBLIC_H_

#include "XKBlibint.h"

_XFUNCPROTOBEGIN

extern	Bool	_XimCheckIfCompProcessing(
#if NeedFunctionPrototypes
    Xim          /* im */
#endif
);

extern	Bool	_XimCompOpenIM(
#if NeedFunctionPrototypes
    Xim		/* im */
#endif
);

extern	void	_XimCompIMFree(
#if NeedFunctionPrototypes
    Xim		/* im */
#endif
);

extern	XIC	_XimCompCreateIC(
#if NeedFunctionPrototypes
    XIM		/* im */,
    XIMArg *	/* values */
#endif
);

extern	Bool	_XimCompFilter(
#if NeedFunctionPrototypes
    Display *	/* d */,
    Window 	/* w */,
    XEvent *	/* ev */,
    XPointer 	/* client_data */
#endif
);

extern int	_XimCompMbLookupString(
#if NeedFunctionPrototypes
    XIC		/* xic */,
    XKeyEvent *	/* ev */,
    char *	/* buffer */,
    int		/* bytes */,
    KeySym *	/* keysym */,
    Status *	/* status */
#endif
);

extern	int	_XimCompWcLookupString(
#if NeedFunctionPrototypes
    XIC		/* xic */,
    XKeyEvent *	/* ev */,
    wchar_t *	/* buffer */,
    int		/* wlen */,
    KeySym *	/* keysym */,
    Status *	/* status */
#endif
);

_XFUNCPROTOEND

typedef struct _XimCompPrivateRec {
	XIC			 current_ic;
	XimCompTbl		*tables;
	XlcConv			 ctom_conv;
	XlcConv			 ctow_conv;

	char *			 charset;
	XkbConverters		 cvt;
} XimCompPrivateRec;

typedef struct _XicCompPrivateRec {
	long			 value_mask;
	XComposeStatus		 xstatus;
	int			 status;
	XimCompRtrn		 rtrn;

	XIMResourceList		 ic_resources;
	unsigned int		 ic_num_resources;
} XicCompPrivateRec;

#endif

#endif /* IMCOMPINT_H */
