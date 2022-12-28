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


#include "readdisplay.h"

#define READDISPLAYNAME "ReadDisplay"

#define READDISPLAY_MAJOR_VERSION	1	/* current version numbers */
#define READDISPLAY_MINOR_VERSION	0

#ifdef _READDISPLAY_SERVER_

typedef struct _ReadDisplayInfo {
    int	(* ReadDisplay) (ClientPtr, ScreenPtr, int, int,
			unsigned int, unsigned int, unsigned long);
    void (* ShutDown) (ScreenPtr);
    unsigned long hintsMask;
} ReadDisplayInfoRec, *ReadDisplayInfoPtr;

extern void ReadDisplayRegisterInfo(ScreenPtr, ReadDisplayInfoPtr);

#endif /* _READDISPLAY_SERVER_ */

typedef struct _ReadDisplayQueryVersion {
	CARD8	reqType;		/* always ShapeReqCode */
	CARD8	readDisplayReqType;	/* always X_ReadDisplayQueryVersion */
	CARD16	length B16;
} xReadDisplayQueryVersionReq;
#define sz_xReadDisplayQueryVersionReq	4

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
} xReadDisplayQueryVersionReply;
#define sz_xReadDisplayQueryVersionReply	32

typedef struct _ReadDisplay {
	CARD8	reqType;	/* always ReadDisplayReqCode */
	CARD8	readDisplayReqType;	/* always X_ReadDisplay */
	CARD16	length B16;
	CARD32	src B32;	/* any window on the screen */
	INT16	x B16;
	INT16	y B16;
	CARD16	w B16;
	CARD16	h B16;
	CARD32  hints B32;
} xReadDisplayReq;		
#define sz_xReadDisplayReq	20

typedef struct {
	BYTE	type;			/* X_Reply */
	CARD8	data1;			/* minor opcode */
	CARD16	sequenceNumber B16;
	CARD32	length B32;		/* number of words following */
	CARD32	hintsReturn B32;
	CARD32	pad2 B32;
	CARD32	pad3 B32;
	CARD32	pad4 B32;
	CARD32	pad5 B32;
	CARD32	pad6 B32;
} xReadDisplayReply;
#define sz_xReadDisplayReply	32

