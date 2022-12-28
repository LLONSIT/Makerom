/************************************************************
Copyright 1989 by The Massachusetts Institute of Technology

Permission to use, copy, modify, and distribute this
software and its documentation for any purpose and without
fee is hereby granted, provided that the above copyright
no- tice appear in all copies and that both that copyright
no- tice and this permission notice appear in supporting
docu- mentation, and that the name of MIT not be used in
advertising or publicity pertaining to distribution of the
software without specific prior written permission.
M.I.T. makes no representation about the suitability of
this software for any purpose. It is provided "as is"
without any express or implied warranty.

********************************************************/

/* RANDOM CRUFT! THIS HAS NO OFFICIAL X CONSORTIUM BLESSING */

/* $XConsortium: SGIMisc.h,v 1.1 89/10/08 19:39:25 rws Exp $ */

#ifndef _XSGIMISC_H_
#define _XSGIMISC_H_

#include <malloc.h> /* needed for XSGIMallocInfo */

#define X_SGISetAutoRepeatRate		0
#define X_SGIGetAutoRepeatRate		1
#define X_SGIDeviceControl		2
#define X_SGIDeviceQuery		3
#define X_SGISetThirdCursorColor	4
#define X_SGISetPointerBox		5
#define X_SGICycleColorCell		6
#define X_SGIConstrainValuator		7
#define X_SGIMallocInfo			8
#define X_SGISetSpecialDestroyInterest	9

#define SGIMiscSpecialDestroy		0
#define SGIMiscNumberEvents		1

#define SGIMiscNumberErrors		0

#define SGIMaxDeviceNameLen	15
#define SGIMaxDeviceDataLen	23
#define SGIDeviceRtrnLen	24

#define SGIPointerX		256
#define SGIPointerY		257

#ifndef _SGIMISC_SERVER_
Bool XSGIMiscQueryExtension(Display *, int *, int *);
Status XSGIMiscClearPointerBox(Display *, XID);
Status XSGIMiscSetPointerBox(Display *, Window, unsigned short,
    unsigned short, unsigned short, unsigned short, XID *);
Status XSGIMiscCycleColorCell(Display *, Colormap, short, XColor *);
Status XSGIMiscSetThirdCursorColor(Display *, Cursor, XColor *);
Status XSGIMiscSetAutoRepeatRate(Display *, unsigned int, unsigned int);
Bool XSGIMiscGetAutoRepeatRate(Display *, unsigned int *, unsigned int *);

Bool XSGIDeviceControl(Display *, int, char *, char *);
Bool XSGIDeviceQuery(Display *, int, char *, char *);
Bool XSGIMiscConstrainValuator(Display *, int, int, int, int);
Bool XSGIMallocInfo(Display *, struct mallinfo *);

/*
 * The routines below are used so direct rendering OpenGL
 * implementations using soft ancillary buffers can know to
 * deallocate the buffers when their associated window is
 * destroyed.  This is an internal, private interface.
 * Don't rely on it.
 */

typedef void (*_XSGISpecialDestroyHandler) (
    Display*            /* display */,
    Window              /* window */
);

_XSGISpecialDestroyHandler _XSGISetSpecialDestroyHandler(_XSGISpecialDestroyHandler);
Status _XSGISetSpecialDestroyInterest(Display *dpy, Window win);

#endif /* _SGIMISC_SERVER_ */

#endif /* _XSGIMISC_H_ */
