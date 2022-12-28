/************************************************************
Copyright 1991 by Silicon Graphics, Inc.

Permission to use, copy, modify, and distribute this
software and its documentation for any purpose and without
fee is hereby granted, provided that the above copyright
no- tice appear in all copies and that both that copyright
no- tice and this permission notice appear in supporting
docu- mentation, and that the name of SGI not be used in
advertising or publicity pertaining to distribution of the
software without specific prior written permission.
S.G.I. makes no representation about the suitability of
this software for any purpose. It is provided "as is"
without any express or implied warranty.

SGI DISCLAIMS ALL WARRANTIES WITH REGARD TO  THIS  SOFTWARE,
INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FIT-
NESS FOR A PARTICULAR PURPOSE. IN NO EVENT SHALL SUN BE  LI-
ABLE  FOR  ANY SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR
ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE,  DATA  OR
PROFITS,  WHETHER  IN  AN  ACTION OF CONTRACT, NEGLIGENCE OR
OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION  WITH
THE USE OR PERFORMANCE OF THIS SOFTWARE.

********************************************************/


#ifndef _READDISPLAY_H_
#define _READDISPLAY_H_

#define X_ReadDisplayQueryVersion	0
#define X_ReadDisplay			1

#ifndef _READDISPLAY_SERVER_


#ifndef NeedFunctionPrototypes
#if defined(FUNCPROTO) || defined(__STDC__) || defined(__cplusplus) || defined(c_plusplus)
#define NeedFunctionPrototypes 1
#else
#define NeedFunctionPrototypes 0
#endif /* __STDC__ */
#endif /* NeedFunctionPrototypes */

#ifndef NeedWidePrototypes
#if defined(NARROWPROTO)
#define NeedWidePrototypes 0
#else
#define NeedWidePrototypes 1		/* default to make interropt. easier */
#endif
#endif

#ifdef __cplusplus			/* do not leave open across includes */
extern "C" {					/* for C++ V2.0 */
#endif

extern Bool XReadDisplayQueryExtension (
#if NeedFunctionPrototypes
    Display *		/* dpy */,
    int *		/* event_basep */,
    int *		/* error_basep */
#endif
);

extern Status XReadDisplayQueryVersion (
#if NeedFunctionPrototypes
    Display *		/* dpy */,
    int *		/* major_versionp */,
    int *		/* minor_versionp */
#endif
);

extern XImage *XReadDisplay (
#if NeedFunctionPrototypes
	Display *	/* dpy */,
	Window		/* src */,
	int		/* x */,
	int		/* y */,
	unsigned int	/* w */,
	unsigned int	/* h */,
	unsigned long	/* hints */,
	unsigned long *	/* hints_return */
#endif
);

#ifdef __cplusplus
}						/* for C++ V2.0 */
#endif

#endif /* _READDISPLAY_SERVER_ */
#define XRD_READ_ALPHA             0x00000001
#define XRD_TRANSPARENT            0x00000002
#define XRD_READ_POINTER           0x00000004

#define XRD_IGNORE_LAYER_0         0x01000000
#define XRD_IGNORE_LAYER_1         0x02000000
#define XRD_IGNORE_LAYER_2         0x04000000
#define XRD_IGNORE_LAYER_3         0x08000000
#define XRD_IGNORE_LAYER_4         0x10000000
#define XRD_IGNORE_LAYER_5         0x20000000
#define XRD_IGNORE_LAYER_6         0x40000000
#define XRD_IGNORE_LAYER_7         0x80000000
#define XRD_IGNORE_LAYER_MINUS_1   0x00800000
#define XRD_IGNORE_LAYER_MINUS_2   0x00400000
#define XRD_IGNORE_LAYER_MINUS_3   0x00200000
#define XRD_IGNORE_LAYER_MINUS_4   0x00100000
#define XRD_IGNORE_LAYER_MINUS_5   0x00080000
#define XRD_IGNORE_LAYER_MINUS_6   0x00040000
#define XRD_IGNORE_LAYER_MINUS_7   0x00020000

#define XRD_IGNORE_POSITIVE_LAYERS 0xfe010000
#define XRD_IGNORE_NEGATIVE_LAYERS 0x00fe8000
#endif /* _READDISPLAY_H_ */
