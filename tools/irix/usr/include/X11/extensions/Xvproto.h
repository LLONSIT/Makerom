/***********************************************************
Copyright 1991 by Digital Equipment Corporation, Maynard, Massachusetts,
and the Massachusetts Institute of Technology, Cambridge, Massachusetts.

                        All Rights Reserved

Permission to use, copy, modify, and distribute this software and its 
documentation for any purpose and without fee is hereby granted, 
provided that the above copyright notice appear in all copies and that
both that copyright notice and this permission notice appear in 
supporting documentation, and that the names of Digital or MIT not be
used in advertising or publicity pertaining to distribution of the
software without specific, written prior permission.  

DIGITAL DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE, INCLUDING
ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO EVENT SHALL
DIGITAL BE LIABLE FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR
ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS,
WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION,
ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS
SOFTWARE.

******************************************************************/
#ifndef _XVPROTO_H
#define _XVPROTO_H
/*
** File: 
**
**   Xvproto.h --- Xv protocol header file
**
** Author: 
**
**   David Carver (Digital Workstation Engineering/Project Athena)
**
** Revisions:
**
**   11.06.91 Carver
**     - changed SetPortControl to SetPortAttribute
**     - changed GetPortControl to GetPortAttribute
**     - changed QueryBestSize
**
**   15.05.91 Carver
**     - version 2.0 upgrade
**
**   24.01.91 Carver
**     - version 1.4 upgrade
**
*/

#include <X11/Xmd.h>

/* Symbols: These are undefined at the end of this file to restore the
   values they have in Xv.h */

#define XvPortID CARD32
#define XvEncodingID CARD32

/* Structures */

typedef struct {
  INT32 numerator B32;
  INT32 denominator B32;
} xvRational;
#define sz_xvRational 8

typedef struct {
  XvPortID base_id B32;
  CARD16 name_size B16;
  CARD16 num_ports B16;
  CARD16 num_formats B16;
  CARD8 type;
  CARD8 pad;
} xvAdaptorInfo;
#define sz_xvAdaptorInfo 12

typedef struct {
  XvEncodingID encoding B32;
  CARD16 name_size B16;
  CARD16 width B16, height B16;
  xvRational rate;
  CARD16 pad B16;
} xvEncodingInfo;
#define sz_xvEncodingInfo (12 + sz_xvRational)

typedef struct {
  VisualID visual B32;
  CARD8 depth;
  CARD8 pad1;
  CARD16 pad2 B16;
} xvFormat;
#define sz_xvFormat 8

/* Requests */

#define xv_QueryExtension                  0
#define	xv_QueryAdaptors                   1
#define	xv_QueryEncodings                  2
#define xv_GrabPort                        3
#define xv_UngrabPort                      4
#define xv_PutVideo                        5
#define xv_PutStill                        6
#define xv_GetVideo                        7
#define xv_GetStill                        8
#define xv_StopVideo                       9
#define xv_SelectVideoNotify              10
#define xv_SelectPortNotify               11
#define xv_QueryBestSize                  12
#define xv_SetPortAttribute               13
#define xv_GetPortAttribute               14
#define xv_LastRequest                    15

#define xvNumRequests                     (xv_LastRequest)

typedef struct {
  CARD8 reqType;
  CARD8 xvReqType;
  CARD16 length B16;
} xvQueryExtensionReq;
#define sz_xvQueryExtensionReq 4

typedef struct {
  CARD8 reqType;
  CARD8 xvReqType;
  CARD16 length B16;
  CARD32 window B32;
} xvQueryAdaptorsReq;
#define sz_xvQueryAdaptorsReq 8

typedef struct {
  CARD8 reqType;
  CARD8 xvReqType;
  CARD16 length B16;
  CARD32 port B32;
} xvQueryEncodingsReq;
#define sz_xvQueryEncodingsReq 8

typedef struct {
  CARD8 reqType;
  CARD8 xvReqType;
  CARD16 length B16;
  XvPortID port B32;
  Drawable drawable B32;
  GContext gc B32;
  INT16 vid_x B16;
  INT16 vid_y B16;
  CARD16 vid_w B16;
  CARD16 vid_h B16;
  INT16 drw_x B16;
  INT16 drw_y B16;
  CARD16 drw_w B16;
  CARD16 drw_h B16;
} xvPutVideoReq;
#define sz_xvPutVideoReq 32

typedef struct {
  CARD8 reqType;
  CARD8 xvReqType;
  CARD16 length B16;
  XvPortID port B32;
  Drawable drawable B32;
  GContext gc B32;
  INT16 vid_x B16;
  INT16 vid_y B16;
  CARD16 vid_w B16;
  CARD16 vid_h B16;
  INT16 drw_x B16;
  INT16 drw_y B16;
  CARD16 drw_w B16;
  CARD16 drw_h B16;
} xvPutStillReq;
#define sz_xvPutStillReq 32

typedef struct {
  CARD8 reqType;
  CARD8 xvReqType;
  CARD16 length B16;
  XvPortID port B32;
  Drawable drawable B32;
  GContext gc B32;
  INT16 vid_x B16;
  INT16 vid_y B16;
  CARD16 vid_w B16;
  CARD16 vid_h B16;
  INT16 drw_x B16;
  INT16 drw_y B16;
  CARD16 drw_w B16;
  CARD16 drw_h B16;
} xvGetVideoReq;
#define sz_xvGetVideoReq 32

typedef struct {
  CARD8 reqType;
  CARD8 xvReqType;
  CARD16 length B16;
  XvPortID port B32;
  Drawable drawable B32;
  GContext gc B32;
  INT16 vid_x B16;
  INT16 vid_y B16;
  CARD16 vid_w B16;
  CARD16 vid_h B16;
  INT16 drw_x B16;
  INT16 drw_y B16;
  CARD16 drw_w B16;
  CARD16 drw_h B16;
} xvGetStillReq;
#define sz_xvGetStillReq 32

typedef struct {
  CARD8 reqType;
  CARD8 xvReqType;
  CARD16 length B16;
  XvPortID port B32;
  Time time B32;
} xvGrabPortReq;
#define sz_xvGrabPortReq 12

typedef struct {
  CARD8 reqType;
  CARD8 xvReqType;
  CARD16 length B16;
  XvPortID port B32;
  Time time B32;
} xvUngrabPortReq;
#define sz_xvUngrabPortReq 12

typedef struct {
  CARD8 reqType;
  CARD8 xvReqType;
  CARD16 length B16;
  Drawable drawable B32;
  BOOL onoff;
  CARD8 pad1;
  CARD16 pad2;
} xvSelectVideoNotifyReq;
#define sz_xvSelectVideoNotifyReq 12

typedef struct {
  CARD8 reqType;
  CARD8 xvReqType;
  CARD16 length B16;
  XvPortID port B32;
  BOOL onoff;
  CARD8 pad1;
  CARD16 pad2;
} xvSelectPortNotifyReq;
#define sz_xvSelectPortNotifyReq 12

typedef struct {
  CARD8 reqType;
  CARD8 xvReqType;
  CARD16 length B16;
  XvPortID port B32;
  Drawable drawable B32;
} xvStopVideoReq;
#define sz_xvStopVideoReq 12

typedef struct {
  CARD8 reqType;
  CARD8 xvReqType;
  CARD16 length B16;
  XvPortID port B32;
  Atom attribute B32;
  INT32 value B32;
} xvSetPortAttributeReq;
#define sz_xvSetPortAttributeReq 16

typedef struct {
  CARD8 reqType;
  CARD8 xvReqType;
  CARD16 length B16;
  XvPortID port B32;
  Atom attribute B32;
} xvGetPortAttributeReq;
#define sz_xvGetPortAttributeReq 12

typedef struct {
  CARD8 reqType;
  CARD8 xvReqType;
  CARD16 length B16;
  XvPortID port B32;
  CARD16 vid_w B16;
  CARD16 vid_h B16;
  CARD16 drw_w B16;
  CARD16 drw_h B16;
  CARD8 motion;
  CARD8 pad1;
  CARD16 pad2 B16;
} xvQueryBestSizeReq;
#define sz_xvQueryBestSizeReq 20

/* Replies */

typedef struct _QueryExtensionReply {
  BYTE type;   /* X_Reply */
  CARD8 padb1;
  CARD16 sequenceNumber B16;
  CARD32 length B32;
  CARD16 version B16;
  CARD16 revision B16;
  CARD32 padl4 B32;
  CARD32 padl5 B32;
  CARD32 padl6 B32;
  CARD32 padl7 B32;
  CARD32 padl8 B32;
} xvQueryExtensionReply;
#define sz_xvQueryExtensionReply 32

typedef struct _QueryAdaptorsReply {
  BYTE type;   /* X_Reply */
  CARD8 padb1;
  CARD16 sequenceNumber B16;
  CARD32 length B32;
  CARD16 num_adaptors B16;
  CARD16 pads3 B16;
  CARD32 padl4 B32;
  CARD32 padl5 B32;
  CARD32 padl6 B32;
  CARD32 padl7 B32;
  CARD32 padl8 B32;
} xvQueryAdaptorsReply;
#define sz_xvQueryAdaptorsReply 32

typedef struct _QueryEncodingsReply {
  BYTE type;   /* X_Reply */
  CARD8 padb1;
  CARD16 sequenceNumber B16;
  CARD32 length B32;
  CARD16 num_encodings B16;
  CARD32 padl3 B32;
  CARD32 padl4 B32;
  CARD32 padl5 B32;
  CARD32 padl6 B32;
  CARD32 padl7 B32;
  CARD32 padl8 B32;
} xvQueryEncodingsReply;
#define sz_xvQueryEncodingsReply 32

typedef struct {
  BYTE type;  /* X_Reply */
  BYTE result;
  CARD16 sequenceNumber B16;
  CARD32 length B32;  /* 0 */
  CARD32 padl3 B32;
  CARD32 padl4 B32;
  CARD32 padl5 B32;
  CARD32 padl6 B32;
  CARD32 padl7 B32;
  CARD32 padl8 B32;
} xvGrabPortReply;
#define sz_xvGrabPortReply 32

typedef struct {
  BYTE type;  /* X_Reply */
  BYTE padb1;
  CARD16 sequenceNumber B16;
  CARD32 length B32;  /* 0 */
  INT32 value B32;
  CARD32 padl4 B32;
  CARD32 padl5 B32;
  CARD32 padl6 B32;
  CARD32 padl7 B32;
  CARD32 padl8 B32;
} xvGetPortAttributeReply;
#define sz_xvGetPortAttributeReply 32

typedef struct {
  BYTE type;  /* X_Reply */
  BYTE padb1;
  CARD16 sequenceNumber B16;
  CARD32 length B32;  /* 0 */
  CARD16 actual_width B16;
  CARD16 actual_height B16;
  CARD32 padl4 B32;
  CARD32 padl5 B32;
  CARD32 padl6 B32;
  CARD32 padl7 B32;
  CARD32 padl8 B32;
} xvQueryBestSizeReply;
#define sz_xvQueryBestSizeReply 32

/* DEFINE EVENT STRUCTURE */

typedef struct {
  union {
    struct {
      BYTE type;
      BYTE detail;
      CARD16 sequenceNumber B16;
    } u;
    struct {
      BYTE type;
      BYTE reason;
      CARD16 sequenceNumber B16;
      Time time B32;
      Drawable drawable B32;
      XvPortID port B32;
      CARD32 padl5 B32;
      CARD32 padl6 B32;
      CARD32 padl7 B32;
      CARD32 padl8 B32;
    } videoNotify;
    struct {
      BYTE type;
      BYTE padb1;
      CARD16 sequenceNumber B16;
      Time time B32;
      XvPortID port B32;
      Atom attribute B32;
      INT32 value B32;
      CARD32 padl6 B32;
      CARD32 padl7 B32;
      CARD32 padl8 B32;
    } portNotify;
  } u;
} xvEvent;

#undef XvPortID
#undef XvEncodingID

#endif /* _XVPROTO_H */

