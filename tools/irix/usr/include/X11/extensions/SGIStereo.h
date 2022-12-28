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


#ifndef _SGISTEREO_H_
#define _SGISTEREO_H_

#define X_SGIStereoQueryVersion			0
#define X_SGIQueryStereoMode			1
#define X_SGISetStereoMode			2
#define X_SGISetStereoBuffer			3

#ifndef _SGISTEREO_SERVER_

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

extern Bool XSGIStereoQueryExtension (
#if NeedFunctionPrototypes
    Display *		/* dpy */,
    int *		/* event_basep */,
    int *		/* error_basep */
#endif
);

extern Status XSGIStereoQueryVersion (
#if NeedFunctionPrototypes
    Display *		/* dpy */,
    int *		/* major_versionp */,
    int *		/* minor_versionp */
#endif
);

extern int XSGIQueryStereoMode(
#if NeedFunctionPrototypes
	Display *,
	Window
#endif
);

extern Status XSGISetStereoMode(
#if NeedFunctionPrototypes
	Display *,
	Window,
	unsigned short,
	unsigned short,
	int
#endif
);

extern Status XSGISetStereoBuffer(
#if NeedFunctionPrototypes
	Display *,
	Window,
	int
#endif
);


#ifdef __cplusplus
}						/* for C++ V2.0 */
#endif

#endif /* _SGISTEREO_SERVER_ */

/* For SetStereoMode */

#define X_STEREO_UNSUPPORTED -1
#define STEREO_OFF 0
#define STEREO_BOTTOM 1
#define STEREO_TOP 2

/* For SetStereoBuffer */

#define STEREO_BUFFER_NONE 0
#define STEREO_BUFFER_LEFT 1
#define STEREO_BUFFER_RIGHT 2

#endif /* _SGISTEREO_H_ */
