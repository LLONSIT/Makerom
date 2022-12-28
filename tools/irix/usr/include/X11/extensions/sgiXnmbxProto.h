
/*
 * NMBX protocol encoding include file
 *
 * $Revision: 1.2 $
 */

#ifndef _SGI_XNMBX_PROTO_H_
#define _SGI_XNMBX_PROTO_H_

#include "sgiXnmbx.h"

#if defined(__STDC__) && !defined(UNIXCPP)
#define sgiXnmbxGetReq(name,req,info) \
   GetReq(name, req) ; \
   req->reqType = info->codes->major_opcode; \
   req->nmbxReqType = X_ ## name;
#else
#define sgiXnmbxGetReq(name,req,info) \
   GetReq(name, req) ; \
   req->reqType = info->codes->major_opcode; \
   req->nmbxReqType = X_/**/name;
#endif

#define SGI_NMBX_NAME "SGI-NewMultibuffering"
#define SGI_NMBX_MAJOR_VERSION 1
#define SGI_NMBX_MINOR_VERSION 0

#define XBufferID CARD32

typedef struct {
   Atom atom;
   CARD32 value;
} xNMBX_Capability;

typedef struct {
    BYTE type;
    BYTE state;
    CARD16 sequenceNumber B16;
    CARD32 buffer B32;
    CARD32 unused1 B32;
    CARD32 unused2 B32;
    CARD32 unused3 B32;
    CARD32 unused4 B32;
    CARD32 unused5 B32;
    CARD32 unused6 B32;
} xNMBX_ClobberNotifyEvent;

typedef struct {
    BYTE type;
    BYTE unused;
    CARD16 sequenceNumber B16;
    CARD32 buffer B32;
    CARD32 timeStamp B32;
    CARD32 unused1 B32;
    CARD32 unused2 B32;
    CARD32 unused3 B32;
    CARD32 unused4 B32;
    CARD32 unused5 B32;
} xNMBX_UpdateNotifyEvent;

/* extended visuals requests and replies */

typedef struct {
   CARD8 reqType; /* nmbxReqCode */
   CARD8 nmbxReqType; /* always X_NMBX_GetVersion */
   CARD16 length B16;
} xNMBX_GetVersionReq;
#define sz_xNMBX_GetVersionReq 4

typedef struct {
   BYTE type; /* X_Reply */
   BYTE pad;
   CARD16 sequenceNumber B16;
   CARD32 length B32;
   CARD8 majorVersion;
   CARD8 minorVersion; 
   CARD16 pad1 B16;
   CARD32 pad2 B32;
   CARD32 pad3 B32;
   CARD32 pad4 B32;
   CARD32 pad5 B32;
   CARD32 pad6 B32;
} xNMBX_GetVersionReply;
#define sz_xNMBX_GetVersionReply 32

typedef struct {
   CARD8 reqType; /* nmbxReqCode */
   CARD8 nmbxReqType; /* always X_NMBX_GetVisualCapabilities */
   CARD16 length B16;
   VisualID visual B32;
} xNMBX_GetVisualCapabilitiesReq;
#define sz_xNMBX_GetVisualCapabilitiesReq 8

typedef struct {
   BYTE type; /* X_Reply */
   BYTE pad;
   CARD16 sequenceNumber B16;
   CARD32 length B32;
   CARD16 numCapabilities B16;
   CARD16 pad1 B16;
   CARD32 pad2 B32;
   CARD32 pad3 B32;
   CARD32 pad4 B32;
   CARD32 pad5 B32;
   CARD32 pad6 B32;
} xNMBX_GetVisualCapabilitiesReply; /* followed by LISTofCAPABILTIY */
#define sz_xNMBX_GetVisualCapabilitiesReply 32

typedef struct {
   CARD8 reqType; /* nmbxReqCode */
   CARD8 nmbxReqType; /* always X_NMBX_EnableCapability */
   CARD16 length B16;
   Window window B32;
   Atom atom B32; 
} xNMBX_EnableCapabilityReq;
#define sz_xNMBX_EnableCapabilityReq 12

typedef struct {
   CARD8 reqType; /* nmbxReqCode */
   CARD8 nmbxReqType; /* always X_NMBX_ReleaseCapability */
   CARD16 length B16;
   Window window B32;
   Atom atom B32; 
} xNMBX_ReleaseCapabilityReq;
#define sz_xNMBX_ReleaseCapabilityReq 12

typedef struct {
   CARD8 reqType; /* nmbxReqCode */
   CARD8 nmbxReqType; /* always X_NMBX_CreateExtendedPixmap */
   CARD16 length B16;
   Pixmap pixmap B32;
   VisualID visual B32; 
   CARD16 height B16;
   CARD16 width B16;
   CARD8 depth;
   CARD8 pad1;
   CARD16 pad2 B16;
} xNMBX_CreateExtendedPixmapReq;
#define sz_xNMBX_CreateExtendedPixmapReq 20

/* double and multi-buffering requests and replies */

typedef struct {
   CARD8 reqType; /* nmbxReqCode */
   CARD8 nmbxReqType; /* always X_NMBX_CreateBuffers */
   CARD16 length B16;
   Window window B32;
   CARD32 eventMask B32;
   CARD8 updateHint;
   CARD8 updateAction;
   CARD16 pad B16;
} xNMBX_CreateBuffersReq; /* followed by LISTofBUFFER */
#define sz_xNMBX_CreateBuffersReq 16

typedef struct {
   BYTE type; /* X_Reply */
   BYTE pad;
   CARD16 sequenceNumber B16;
   CARD32 length B32;
   CARD16 numBuffers B16;
   CARD16 pad1 B16;
   CARD32 pad2 B32;
   CARD32 pad3 B32;
   CARD32 pad4 B32;
   CARD32 pad5 B32;
   CARD32 pad6 B32;
} xNMBX_CreateBuffersReply;
#define sz_xNMBX_CreateBuffersReply 32

typedef struct {
   CARD8 reqType; /* nmbxReqCode */
   CARD8 nmbxReqType; /* always X_NMBX_NameBackBuffer */
   CARD16 length B16;
   XBufferID buffer B32;
} xNMBX_NameBackBufferReq;
#define sz_xNMBX_NameBackBufferReq 8

typedef struct {
   CARD8 reqType; /* nmbxReqCode */
   CARD8 nmbxReqType; /* always X_NMBX_DestroyBuffers */
   CARD16 length B16;
   Window window B32;
} xNMBX_DestroyBuffersReq;
#define sz_xNMBX_DestroyBuffersReq 8

typedef struct {
   CARD8 reqType; /* nmbxReqCode */
   CARD8 nmbxReqType; /* always X_NMBX_DisplayBuffers */
   CARD16 length B16;
} xNMBX_DisplayBuffersReq; /* followed by LISTofWINDOWorBUFFER */
#define sz_xNMBX_DisplayBuffersReq 4

typedef struct {
   CARD8 reqType; /* nmbxReqCode */
   CARD8 nmbxReqType; /* always X_NMBX_SetRendererDestination */
   CARD16 length B16;
   XID renderer B32;
   CARD8 target;
   CARD8 pad1;
   CARD16 pad2 B16;
} xNMBX_SetRendererDestinationReq;
#define sz_xNMBX_SetRendererDestinationReq 12

typedef struct {
   CARD8 reqType; /* nmbxReqCode */
   CARD8 nmbxReqType; /* always X_NMBX_SetRendererSource */
   CARD16 length B16;
   XID renderer B32;
   CARD8 target;
   CARD8 pad1;
   CARD16 pad2 B16;
} xNMBX_SetRendererSourceReq;
#define sz_xNMBX_SetRendererSourceReq 12

typedef struct {
   CARD8 reqType; /* nmbxReqCode */
   CARD8 nmbxReqType; /* always X_NMBX_SetRendererSource */
   CARD16 length B16;
   XID renderer B32;
} xNMBX_GetRendererTargetsReq;
#define sz_xNMBX_GetRendererTargetsReq 8

typedef struct {
   BYTE type; /* X_Reply */
   BYTE pad;
   CARD16 sequenceNumber B16;
   CARD32 length B32;
   CARD8 source;
   CARD8 destination;
   CARD16 pad1 B32;
   CARD32 pad2 B32;
   CARD32 pad3 B32;
   CARD32 pad4 B32;
   CARD32 pad5 B32;
   CARD32 pad6 B32;
} xNMBX_GetRendererTargetsReply;
#define sz_xNMBX_GetRendererTargetsReply 32

typedef struct {
   CARD8 reqType; /* nmbxReqCode */
   CARD8 nmbxReqType; /* always X_NMBX_GetBufferSetAttributes */
   CARD16 length B16;
   Window window B32;
} xNMBX_GetBufferSetAttributesReq;
#define sz_xNMBX_GetBufferSetAttributesReq 8

typedef struct {
   BYTE type; /* X_Reply */
   CARD8 updateHint;
   CARD16 sequenceNumber B16;
   CARD32 length B32;
   XBufferID buffer B32;
   CARD32 pad1 B32;
   CARD32 pad2 B32;
   CARD32 pad3 B32;
   CARD32 pad4 B32;
   CARD32 pad5 B32;
} xNMBX_GetBufferSetAttributesReply; /* followed by LISTofBUFFER */
#define sz_xNMBX_GetBufferSetAttributesReply 32

typedef struct {
   CARD8 reqType; /* nmbxReqCode */
   CARD8 nmbxReqType; /* always X_NMBX_GetBufferAttributes */
   CARD16 length B16;
   XBufferID buffer B32;
} xNMBX_GetBufferAttributesReq;
#define sz_xNMBX_GetBufferAttributesReq 8

typedef struct {
   BYTE type; /* X_Reply */
   BYTE pad;
   CARD16 sequenceNumber B16;
   CARD32 length B32;
   Window window B32;
   CARD32 eventMask B32;
   CARD16 index B16;
   CARD16 pad1 B16;
   CARD32 pad2 B32;
   CARD32 pad3 B32;
   CARD32 pad4 B32;
} xNMBX_GetBufferAttributesReply;
#define sz_xNMBX_GetBufferAttributesReply 32

typedef struct {
   CARD8 reqType; /* nmbxReqCode */
   CARD8 nmbxReqType; /* always X_NMBX_SetBufferEventMask */
   CARD16 length B16;
   XBufferID buffer B32;
   CARD32 eventMask B32;
} xNMBX_SetBufferEventMaskReq;
#define sz_xNMBX_SetBufferEventMaskReq 12

typedef struct {
   CARD8 reqType; /* nmbxReqCode */
   CARD8 nmbxReqType; /* always X_NMBX_ClearBufferArea */
   CARD16 length B16;
   XBufferID buffer B32;
   INT16 x B16;
   INT16 y B16;
   CARD16 width B16;
   CARD16 height B16;
   BOOL exposures;
   CARD8 pad1;
   CARD16 pad2;
} xNMBX_ClearBufferAreaReq;
#define sz_xNMBX_ClearBufferAreaReq 20

typedef struct {
   CARD8 reqType; /* nmbxReqCode */
   CARD8 nmbxReqType; /* always X_NMBX_RelativeClearArea */
   CARD16 length B16;
   Window window B32;
   INT16 x B16;
   INT16 y B16;
   CARD16 width B16;
   CARD16 height B16;
   BOOL exposures;
   CARD8 name;
   CARD16 pad2;
} xNMBX_RelativeClearAreaReq;
#define sz_xNMBX_RelativeClearAreaReq 20

typedef struct {
   CARD8 reqType; /* nmbxReqCode */
   CARD8 nmbxReqType; /* always X_NMBX_RelativeGetImage */
   CARD16 length B16;
   Drawable drawable B32;
   INT16 x B16;
   INT16 y B16;
   CARD16 width B16;
   CARD16 height B16;
   CARD32 planeMask B32;
   CARD8 name;
   CARD8 format;
   CARD16 pad2 B16;
} xNMBX_RelativeGetImageReq;
#define sz_xNMBX_RelativeGetImageReq 24

typedef struct {
   BYTE type; /* X_Reply */
   CARD8 depth;
   CARD16 sequenceNumber B16;
   CARD32 length B32;
   VisualID visual B32;
   CARD32 pad1 B32;
   CARD32 pad2 B32;
   CARD32 pad3 B32;
   CARD32 pad4 B32;
   CARD32 pad5 B32;
} xNMBX_RelativeGetImageReply; /* followed by LISTofBYTE */
#define sz_xNMBX_RelativeGetImageReply 32

#undef XBufferID

#endif /* _SGI_XNMBX_PROTO_H_ */

