/* 
 * (c) Copyright 1989, 1990, 1991, 1992, 1993 OPEN SOFTWARE FOUNDATION, INC. 
 * ALL RIGHTS RESERVED 
*/ 
/* 
 * Motif Release 1.2.3
*/ 
/*   $RCSfile: DragC.h,v $ $Revision: 1.2 $ $Date: 1994/04/20 01:31:08 $ */
/*
*  (c) Copyright 1990, 1991, 1992 HEWLETT-PACKARD COMPANY */
/* $Header: /proj/irix5.3/isms/motif/src/lib/XmAbi_1.2.4/RCS/DragC.h,v 1.2 1994/04/20 01:31:08 blean Exp $ */

#ifndef _XmDragController_h
#define _XmDragController_h

#include <Xm/Xm.h>
#include <Xm/Display.h>

#ifdef __cplusplus
extern "C" {
#endif


/* defines for the dragFinish completionStatus field */

#define XmHELP			2

/*
 * Some global stuff that will go into Xm.h
 */
typedef unsigned int	XmID;

/***********************************************************************
 *
 * DragContext
 *
 ***********************************************************************/

#ifndef XmIsDragContext
#define XmIsDragContext(w) XtIsSubclass(w,xmDragContextClass)
#endif /* XmIsDragContext */

#ifndef _XA_MOTIF_DROP
#define _XA_MOTIF_DROP "_MOTIF_DROP"
#define _XA_DRAG_FAILURE "_MOTIF_DRAG_FAILURE"
#define _XA_DRAG_SUCCESS "_MOTIF_DRAG_SUCCESS"
#endif /* _XA_MOTIF_DROP */


/* enums used for the message_type in client messages */

enum{	XmTOP_LEVEL_ENTER,		XmTOP_LEVEL_LEAVE,
	XmDRAG_MOTION,			XmDROP_SITE_ENTER,
	XmDROP_SITE_LEAVE,		XmDROP_START,
	XmDROP_FINISH,			XmDRAG_DROP_FINISH,
	XmOPERATION_CHANGED
	} ;

/* enums for completionStatus */
enum{	XmDROP,				XmDROP_HELP,
	XmDROP_CANCEL,			XmDROP_INTERRUPT
	} ;

/* values for operation */
#define	XmDROP_NOOP	0L
#define XmDROP_MOVE 	(1L << 0)
#define XmDROP_COPY	(1L << 1)
#define XmDROP_LINK	(1L << 2)

enum{	XmBLEND_ALL,			XmBLEND_STATE_SOURCE,
	XmBLEND_JUST_SOURCE,		XmBLEND_NONE
	} ;

enum{  	XmDROP_FAILURE,			XmDROP_SUCCESS
	} ;


/* enums used for the public callback reason */

enum{	XmCR_TOP_LEVEL_ENTER,		XmCR_TOP_LEVEL_LEAVE,
	XmCR_DRAG_MOTION,		XmCR_DROP_SITE_ENTER,
	XmCR_DROP_SITE_LEAVE,		XmCR_DROP_START,
	XmCR_DROP_FINISH,		XmCR_DRAG_DROP_FINISH,
	XmCR_OPERATION_CHANGED,

	_XmNUMBER_DND_CB_REASONS
	} ;


/* Class record constants */
typedef struct _XmDragContextClassRec	*XmDragContextClass;
typedef struct _XmDragContextRec	*XmDragContext;
externalref WidgetClass xmDragContextClass;

typedef struct _XmAnyICCCallbackStruct{
    int          	reason;
    XEvent          	*event;
    Time            	timeStamp;
}XmAnyICCCallbackStruct, *XmAnyICCCallback;

typedef struct _XmTopLevelEnterCallbackStruct{
    int          	reason;
    XEvent          	*event;
    Time            	timeStamp;
    Screen		*screen;
    /*
     * the window field is different if this is an outbound or inbound
     * callback. Outbound == reciever, Inbound == initiator.
     */
    Window		window;
    Position		x, y;
    unsigned char	dragProtocolStyle;
    Atom		iccHandle;
}XmTopLevelEnterCallbackStruct, *XmTopLevelEnterCallback;

typedef struct _XmTopLevelLeaveCallbackStruct{
    int          	reason;
    XEvent          	*event;
    Time            	timeStamp;
    Screen		*screen;
    Window		window;
}XmTopLevelLeaveCallbackStruct, *XmTopLevelLeaveCallback;

/* 
 * this message is sent from the receiver to the initiator to
 * indicate that the motion message with the associated timestamp has
 * caused a drop-site to be entered
 */
typedef struct _XmDropSiteEnterCallbackStruct{
    int          	reason;
    XEvent          	*event;
    Time            	timeStamp;
    unsigned char	operation;
    unsigned char	operations;
    unsigned char	dropSiteStatus;
    Position		x, y;
}XmDropSiteEnterCallbackStruct, *XmDropSiteEnterCallback;

/* 
 * this message is sent from the receiver to the initiator to
 * indicate that the motion message with the associated timestamp has
 * caused a drop-site to be left
 */
typedef struct _XmDropSiteLeaveCallbackStruct{
    int          	reason;
    XEvent          	*event;
    Time            	timeStamp;
}XmDropSiteLeaveCallbackStruct, *XmDropSiteLeaveCallback;

typedef struct _XmDragMotionCallbackStruct{
    int          	reason;
    XEvent          	*event;
    Time            	timeStamp;
    unsigned char	operation;
    unsigned char	operations;
    unsigned char	dropSiteStatus;
    Position		x, y;
}XmDragMotionCallbackStruct, *XmDragMotionCallback;

typedef struct _XmOperationChangedCallbackStruct{
    int          	reason;
    XEvent          	*event;
    Time            	timeStamp;
    unsigned char	operation;
    unsigned char	operations;
    unsigned char	dropSiteStatus;
}XmOperationChangedCallbackStruct, *XmOperationChangedCallback;

typedef struct _XmDropStartCallbackStruct{
    int          	reason;
    XEvent          	*event;
    Time            	timeStamp;
    unsigned char	operation;
    unsigned char	operations;
    unsigned char	dropSiteStatus;
    unsigned char	dropAction;
    Position		x, y;
    Window		window;
    Atom		iccHandle;
}XmDropStartCallbackStruct, *XmDropStartCallback;

typedef struct _XmDropFinishCallbackStruct{
    int          	reason;
    XEvent          	*event;
    Time            	timeStamp;
    unsigned char	operation;
    unsigned char	operations;
    unsigned char	dropSiteStatus;
    unsigned char	dropAction;
    unsigned char	completionStatus;
}XmDropFinishCallbackStruct, *XmDropFinishCallback;

typedef struct _XmDragDropFinishCallbackStruct{
    int          	reason;
    XEvent          	*event;
    Time            	timeStamp;
}XmDragDropFinishCallbackStruct, *XmDragDropFinishCallback;


/********    Public Function Declarations    ********/
#ifdef _NO_PROTO

extern Widget XmDragStart() ;
extern void XmDragCancel() ;
extern Boolean XmTargetsAreCompatible() ;

#else

extern Widget XmDragStart( 
                        Widget w,
                        XEvent *event,
                        ArgList args,
                        Cardinal numArgs) ;
extern void XmDragCancel( 
                        Widget dragContext) ;
extern Boolean XmTargetsAreCompatible( 
                        Display *dpy,
                        Atom *exportTargets,
                        Cardinal numExportTargets,
                        Atom *importTargets,
                        Cardinal numImportTargets) ;

#endif /* _NO_PROTO */
/********    End Public Function Declarations    ********/


#ifdef __cplusplus
}  /* Close scope of 'extern "C"' declaration which encloses file. */
#endif

#endif /* _DragController_h */
/* DON'T ADD STUFF AFTER THIS #endif */
