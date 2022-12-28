/************************************************************
Copyright 1989 by Silicon Graphics, Inc.

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


#include "SGIStereo.h"

#define SGISTEREONAME "SGIFullScreenStereo"

#define SGISTEREO_MAJOR_VERSION	1	/* current version numbers */
#define SGISTEREO_MINOR_VERSION	0

typedef struct _SGIStereoQueryVersion {
	CARD8	reqType;		/* always ShapeReqCode */
	CARD8	SGIStereoReqType;	/* always X_SGIStereoQueryVersion */
	CARD16	length B16;
} xSGIStereoQueryVersionReq;
#define sz_xSGIStereoQueryVersionReq	4

typedef struct {
	BYTE	type;			/* X_Reply */
	CARD8	data1;			/* minor opcode */
	CARD16	sequenceNumber B16;
	CARD32	length B32;
	CARD16	majorVersion B16;	/* major version READDISPLAY protocol */
	CARD16	minorVersion B16;	/* minor version READDISPLAY protocol */
	CARD32	pad0 B32;
	CARD32	pad1 B32;
	CARD32	pad2 B32;
	CARD32	pad3 B32;
	CARD32	pad4 B32;
} xSGIStereoQueryVersionReply;
#define sz_xSGIStereoQueryVersionReply	32

typedef struct _SGIQueryStereoMode {
	CARD8	reqType;	/* always SGIQueryStereoModeReqCode */
	CARD8	SGIQueryStereoModeReqType;	/* always X_ReadDisplay */
	CARD16	length B16;
	CARD32	drawable B32;	/* any window on the screen */
} xSGIQueryStereoModeReq;		
#define sz_xSGIQueryStereoModeReq	8

typedef struct {
	BYTE	type;			/* X_Reply */
	CARD8	data1;			/* minor opcode */
	CARD16	sequenceNumber B16;
	CARD32	length B32;		/* number of words following */
	CARD32	mode;
	CARD32	pad1;
	CARD32	pad2;
	CARD32	pad3;
	CARD32	pad4;
	CARD32	pad5;
} xSGIQueryStereoModeReply;
#define sz_xSGIQueryStereoModeReply	32

typedef struct _SGISetStereoMode {
    CARD8	reqType;	/* always SGIReqCode */
    CARD8	sgiReqType;	/* always X_SGISetStereoMode */
    CARD16	length B16;
    Drawable	drawable B32;
    CARD16	height;
    CARD16	offset;
    CARD32	mode;
} xSGISetStereoModeReq;
#define sz_xSGISetStereoModeReq	16

typedef struct _SGISetStereoBuffer {
    CARD8	reqType;	/* always SGIReqCode */
    CARD8	sgiReqType;	/* always X_SGISetStereoBuffer */
    CARD16	length B16;
    Drawable	drawable B32;
    CARD32	buffer B32;
} xSGISetStereoBufferReq;
#define sz_xSGISetStereoBufferReq	12

