/* $XConsortium: Xlibint.h,v 11.143 94/04/17 20:21:50 rws Exp $ */

/*

Copyright (c) 1984, 1985, 1987, 1989  X Consortium

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be included
in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE X CONSORTIUM BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

Except as contained in this notice, the name of the X Consortium shall
not be used in advertising or otherwise to promote the sale, use or
other dealings in this Software without prior written authorization
from the X Consortium.

*/

/*
 *	Xlibint.h - Header definition and support file for the internal
 *	support routines used by the C subroutine interface
 *	library (Xlib) to the X Window System.
 *
 *	Warning, there be dragons here....
 */

#if !defined(NEED_EVENTS) && !NeedFunctionPrototypes
#define _XEVENT_
#endif

#include <X11/Xlib.h>

#ifdef WIN32
#define _XFlush _XFlushIt
#endif

struct _XGC
{
    XExtData *ext_data;	/* hook for extension to hang data */
    GContext gid;	/* protocol ID for graphics context */
    Bool rects;		/* boolean: TRUE if clipmask is list of rectangles */
    Bool dashes;	/* boolean: TRUE if dash-list is really a list */
    unsigned long dirty;/* cache dirty bits */
    XGCValues values;	/* shadow structure of values */
};

struct _XDisplay
{
	XExtData *ext_data;	/* hook for extension to hang data */
	struct _XFreeFuncs *free_funcs; /* internal free functions */
	int fd;			/* Network socket. */
	int conn_checker;         /* ugly thing used by _XEventsQueued */
	int proto_major_version;/* maj. version of server's X protocol */
	int proto_minor_version;/* minor version of server's X protocol */
	char *vendor;		/* vendor of the server hardware */
        XID resource_base;	/* resource ID base */
	XID resource_mask;	/* resource ID mask bits */
	XID resource_id;	/* allocator current ID */
	int resource_shift;	/* allocator shift to correct bits */
#if NeedFunctionPrototypes
        XID (*resource_alloc)(Display *);/* allocator function */
#else 
        XID (*resource_alloc)();/* allocator function */
#endif
	int byte_order;		/* screen byte order, LSBFirst, MSBFirst */
	int bitmap_unit;	/* padding and data requirements */
	int bitmap_pad;		/* padding requirements on bitmaps */
	int bitmap_bit_order;	/* LeastSignificant or MostSignificant */
	int nformats;		/* number of pixmap formats in list */
	ScreenFormat *pixmap_format;	/* pixmap format list */
	int vnumber;		/* Xlib's X protocol version number. */
	int release;		/* release of the server */
	struct _XSQEvent *head, *tail;	/* Input event queue. */
	int qlen;		/* Length of input event queue */
	unsigned long last_request_read; /* seq number of last event read */
	unsigned long request;	/* sequence number of last request. */
	char *last_req;		/* beginning of last request, or dummy */
	char *buffer;		/* Output buffer starting address. */
	char *bufptr;		/* Output buffer index pointer. */
	char *bufmax;		/* Output buffer maximum+1 address. */
	unsigned max_request_size; /* maximum number 32 bit words in request*/
	struct _XrmHashBucketRec *db;
#if NeedFunctionPrototypes
        int (*synchandler)(Display *);  /* Synchronization handler */
#else 
        int (*synchandler)();   /* Synchronization handler */
#endif
	char *display_name;	/* "host:display" string used on this connect*/
	int default_screen;	/* default screen for operations */
	int nscreens;		/* number of screens on this server*/
	Screen *screens;	/* pointer to list of screens */
	unsigned long motion_buffer;	/* size of motion buffer */
	unsigned long flags;	   /* internal connection flags */
	int min_keycode;	/* minimum defined keycode */
	int max_keycode;	/* maximum defined keycode */
	KeySym *keysyms;	/* This server's keysyms */
	XModifierKeymap *modifiermap;	/* This server's modifier keymap */
	int keysyms_per_keycode;/* number of rows */
	char *xdefaults;	/* contents of defaults from server */
	char *scratch_buffer;	/* place to hang scratch buffer */
	unsigned long scratch_length;	/* length of scratch buffer */
	int ext_number;		/* extension number on this display */
	struct _XExten *ext_procs; /* extensions initialized on this display */
	/*
	 * the following can be fixed size, as the protocol defines how
	 * much address space is available. 
	 * While this could be done using the extension vector, there
	 * may be MANY events processed, so a search through the extension
	 * list to find the right procedure for each event might be
	 * expensive if many extensions are being used.
	 */
	Bool (*event_vec[128])();  /* vector for wire to event */
	Status (*wire_vec[128])(); /* vector for event to wire */
	KeySym lock_meaning;	   /* for XLookupString */
	struct _XLockInfo *lock;   /* multi-thread state, display lock */
	struct _XInternalAsync *async_handlers; /* for internal async */
	unsigned long bigreq_size; /* max size of big requests */
	struct _XLockPtrs *lock_fns; /* pointers to threads functions */
	void (*idlist_alloc)();	   /* XID list allocator function */
	/* things above this line should not move, for binary compatibility */
	struct _XKeytrans *key_bindings; /* for XLookupString */
	Font cursor_font;	   /* for XCreateFontCursor */
	struct _XDisplayAtoms *atoms; /* for XInternAtom */
	unsigned int mode_switch;  /* keyboard group modifiers */
	unsigned int num_lock;  /* keyboard numlock modifiers */
	struct _XContextDB *context_db; /* context database */
	Bool (**error_vec)();      /* vector for wire to error */
	/*
	 * Xcms information
	 */
	struct {
	   XPointer defaultCCCs;  /* pointer to an array of default XcmsCCC */
	   XPointer clientCmaps;  /* pointer to linked list of XcmsCmapRec */
	   XPointer perVisualIntensityMaps;
				  /* linked list of XcmsIntensityMap */
	} cms;
	struct _XIMFilter *im_filters;
	struct _XSQEvent *qfree; /* unallocated event queue elements */
	unsigned long next_event_serial_num; /* inserted into next queue elt */
	struct _XExten *flushes; /* Flush hooks */
	struct _XConnectionInfo *im_fd_info; /* _XRegisterInternalConnection */
	int im_fd_length;	/* number of im_fd_info */
	struct _XConnWatchInfo *conn_watchers; /* XAddConnectionWatch */
	int watcher_count;	/* number of conn_watchers */
	XPointer filedes;	/* struct pollfd cache for _XWaitForReadable */
	int (*savedsynchandler)(); /* user synchandler when Xlib usurps */
	XID resource_max;	/* allocator max ID */
	int xcmisc_opcode;	/* major opcode for XC-MISC */
	struct _XkbInfoRec *xkb_info; /* XKB info */
	struct _XtransConnInfo *trans_conn; /* transport connection object */
#ifdef SGI_SHM_TRANS
        struct _shmdata *shmdata;  /* used for sgi shared memory transport */
#endif /* SGI_SHM_TRANS */
};

#define XAllocIDs(dpy,ids,n) (*(dpy)->idlist_alloc)(dpy,ids,n)

/*
 * define the following if you want the Data macro to be a procedure instead
 */
#ifdef CRAY
#define DataRoutineIsProcedure
#endif /* CRAY */

#ifndef _XEVENT_
/*
 * _QEvent datatype for use in input queueing.
 */
typedef struct _XSQEvent
{
    struct _XSQEvent *next;
    XEvent event;
    unsigned long qserial_num;	/* so multi-threaded code can find new ones */
} _XQEvent;
#endif

#ifdef XTHREADS			/* for xReply */
#define NEED_REPLIES
#endif

#if NeedFunctionPrototypes	/* prototypes require event type definitions */
#define NEED_EVENTS
#define NEED_REPLIES
#endif
#include <X11/Xproto.h>
#ifdef __sgi
#define _SGI_MP_SOURCE  /* turn this on to get MP safe errno */
#endif /* __sgi */
#include <errno.h>
#define _XBCOPYFUNC _Xbcopy
#include <X11/Xfuncs.h>
#include <X11/Xosdefs.h>

#ifdef SGI_SHM_TRANS
#include "XShmTrans.h"
#endif

/* Utek leaves kernel macros around in include files (bleah) */
#ifdef dirty
#undef dirty
#endif

#ifndef X_NOT_STDC_ENV
#include <stdlib.h>
#include <string.h>
#else
char *malloc(), *realloc(), *calloc();
void exit();
#ifdef SYSV
#include <string.h>
#else
#include <strings.h>
#endif
#endif

/*
 * The following definitions can be used for locking requests in multi-threaded
 * address spaces.
 */
#ifdef XTHREADS
/* Author: Stephen Gildea, MIT X Consortium
 *
 * declarations for C Threads locking
 */

#include <X11/Xfuncproto.h>

struct _XLockPtrs {
    /* used by all, including extensions; do not move */
    void (*lock_display)();
    void (*unlock_display)();
};

typedef struct _LockInfoRec *LockInfoPtr;

#if defined(WIN32) && !defined(_XLIBINT_)
#define _XCreateMutex_fn (*_XCreateMutex_fn_p)
#define _XFreeMutex_fn (*_XFreeMutex_fn_p)
#define _XLockMutex_fn (*_XLockMutex_fn_p)
#define _XUnlockMutex_fn (*_XUnlockMutex_fn_p)
#define _Xglobal_lock (*_Xglobal_lock_p)
#endif

/* in XlibInt.c */
extern void (*_XCreateMutex_fn)(
#if NeedFunctionPrototypes
    LockInfoPtr /* lock */
#endif
);
extern void (*_XFreeMutex_fn)(
#if NeedFunctionPrototypes
    LockInfoPtr /* lock */
#endif
);
extern void (*_XLockMutex_fn)(
#if NeedFunctionPrototypes
    LockInfoPtr	/* lock */
#if defined(XTHREADS_WARN) || defined(XTHREADS_FILE_LINE)
    , char * /* file */
    , int /* line */
#endif
#endif
);
extern void (*_XUnlockMutex_fn)(
#if NeedFunctionPrototypes
    LockInfoPtr	/* lock */
#if defined(XTHREADS_WARN) || defined(XTHREADS_FILE_LINE)
    , char * /* file */
    , int /* line */
#endif
#endif
);

extern LockInfoPtr _Xglobal_lock;

#if defined(XTHREADS_WARN) || defined(XTHREADS_FILE_LINE)
#define LockDisplay(d)	     if ((d)->lock_fns) (*(d)->lock_fns->lock_display)((d),__FILE__,__LINE__)
#define UnlockDisplay(d)     if ((d)->lock_fns) (*(d)->lock_fns->unlock_display)((d),__FILE__,__LINE__)
#define _XLockMutex(lock)		if (_XLockMutex_fn) (*_XLockMutex_fn)(lock,__FILE__,__LINE__)
#define _XUnlockMutex(lock)	if (_XUnlockMutex_fn) (*_XUnlockMutex_fn)(lock,__FILE__,__LINE__)
#else
/* used everywhere, so must be fast if not using threads */
#define LockDisplay(d)	     if ((d)->lock_fns) (*(d)->lock_fns->lock_display)(d)
#define UnlockDisplay(d)     if ((d)->lock_fns) (*(d)->lock_fns->unlock_display)(d)
#define _XLockMutex(lock)		if (_XLockMutex_fn) (*_XLockMutex_fn)(lock)
#define _XUnlockMutex(lock)	if (_XUnlockMutex_fn) (*_XUnlockMutex_fn)(lock)
#endif
#define _XCreateMutex(lock)	if (_XCreateMutex_fn) (*_XCreateMutex_fn)(lock);
#define _XFreeMutex(lock)	if (_XFreeMutex_fn) (*_XFreeMutex_fn)(lock);

#else /* XTHREADS */
#define LockDisplay(dis)
#define _XLockMutex(lock)
#define _XUnlockMutex(lock)
#define UnlockDisplay(dis)
#define _XCreateMutex(lock)
#define _XFreeMutex(lock)
#endif

#define Xfree(ptr) free((ptr))

/*
 * Note that some machines do not return a valid pointer for malloc(0), in
 * which case we provide an alternate under the control of the
 * define MALLOC_0_RETURNS_NULL.  This is necessary because some
 * Xlib code expects malloc(0) to return a valid pointer to storage.
 */
#ifdef MALLOC_0_RETURNS_NULL

# define Xmalloc(size) malloc(((size) > 0 ? (size) : 1))
# define Xrealloc(ptr, size) realloc((ptr), ((size) > 0 ? (size) : 1))
# define Xcalloc(nelem, elsize) calloc(((nelem) > 0 ? (nelem) : 1), (elsize))

#else

# define Xmalloc(size) malloc((size))
# define Xrealloc(ptr, size) realloc((ptr), (size))
# define Xcalloc(nelem, elsize) calloc((nelem), (elsize))

#endif

#ifndef NULL
#define NULL 0
#endif
#define LOCKED 1
#define UNLOCKED 0

#ifdef X_NOT_STDC_ENV
extern int errno;			/* Internal system error number. */
#endif

#ifndef BUFSIZE
#define BUFSIZE 2048			/* X output buffer size. */
#endif
#ifndef PTSPERBATCH
#define PTSPERBATCH 1024		/* point batching */
#endif
#ifndef WLNSPERBATCH
#define WLNSPERBATCH 50			/* wide line batching */
#endif
#ifndef ZLNSPERBATCH
#define ZLNSPERBATCH 1024		/* thin line batching */
#endif
#ifndef WRCTSPERBATCH
#define WRCTSPERBATCH 10		/* wide line rectangle batching */
#endif
#ifndef ZRCTSPERBATCH
#define ZRCTSPERBATCH 256		/* thin line rectangle batching */
#endif
#ifndef FRCTSPERBATCH
#define FRCTSPERBATCH 256		/* filled rectangle batching */
#endif
#ifndef FARCSPERBATCH
#define FARCSPERBATCH 256		/* filled arc batching */
#endif
#ifndef CURSORFONT
#define CURSORFONT "cursor"		/* standard cursor fonts */
#endif

/*
 * Display flags
 */
#define XlibDisplayIOError	(1L << 0)
#define XlibDisplayClosing	(1L << 1)
#define XlibDisplayNoXkb	(1L << 2)
#define XlibDisplayPrivSync	(1L << 3)
#define XlibDisplayProcConni	(1L << 4) /* in _XProcessInternalConnection */
#define XlibDisplayReadEvents	(1L << 5) /* in _XReadEvents */
#define XlibDisplayReply	(1L << 5) /* in _XReply */
#define XlibDisplayWriting	(1L << 6) /* in _XFlushInt, _XSend */

/*
 * X Protocol packetizing macros.
 */

/*   Need to start requests on 64 bit word boundaries
 *   on a CRAY computer so add a NoOp (127) if needed.
 *   A character pointer on a CRAY computer will be non-zero
 *   after shifting right 61 bits of it is not pointing to
 *   a word boundary.
 */
#ifdef WORD64
#define WORD64ALIGN if ((long)dpy->bufptr >> 61) {\
           dpy->last_req = dpy->bufptr;\
           *(dpy->bufptr)   = X_NoOperation;\
           *(dpy->bufptr+1) =  0;\
           *(dpy->bufptr+2) =  0;\
           *(dpy->bufptr+3) =  1;\
             dpy->request++;\
             dpy->bufptr += 4;\
         }
#else /* else does not require alignment on 64-bit boundaries */
#define WORD64ALIGN
#endif /* WORD64 */


/*
 * GetReq - Get the next available X request packet in the buffer and
 * return it. 
 *
 * "name" is the name of the request, e.g. CreatePixmap, OpenFont, etc.
 * "req" is the name of the request pointer.
 *
 */

#ifdef SGI_SHM_TRANS

#if (__STDC__ && !defined(UNIXCPP)) || defined(ANSICPP)
#define GetReq(name, req) \
    WORD64ALIGN\
    { \
	shmdata_t *shmdata = dpy->shmdata;\
	if ( shmdata ) \
	{ \
	    shmdata->curreqptr = shmdata->reqendptr; \
	    _XShmAlloc(req, x##name##Req *, shmdata, dpy, SIZEOF(x##name##Req) );\
	    shmdata->curreqptr = (unsigned char *) req ; \
	} else { \
	    if ((dpy->bufptr + SIZEOF(x##name##Req)) > dpy->bufmax)\
		_XFlush(dpy);\
	    req = (x##name##Req *)(dpy->last_req = dpy->bufptr);\
	    dpy->bufptr += SIZEOF(x##name##Req);\
	} \
    } \
    req->reqType = X_##name;\
    req->length = (SIZEOF(x##name##Req))>>2;\
    dpy->request++

#else  /* non-ANSI C uses empty comment instead of "##" for token concatenation */
#define GetReq(name, req) \
    WORD64ALIGN\
    { \
	shmdata_t *shmdata = dpy->shmdata;\
	if ( shmdata ) \
	{ \
	    shmdata->curreqptr = shmdata->reqendptr; \
	    _XShmAlloc(req, x/**/name/**/Req *, shmdata, dpy, SIZEOF(x/**/name/**/Req) );\
	    shmdata->curreqptr = (unsigned char *) req ; \
	} else { \
	    if ((dpy->bufptr + SIZEOF(x/**/name/**/Req)) > dpy->bufmax)\
		_XFlush(dpy);\
	    req = (x/**/name/**/Req *)(dpy->last_req = dpy->bufptr);\
	    dpy->bufptr += SIZEOF(x/**/name/**/Req);\
	} \
    } \
    req->reqType = X_/**/name;\
    req->length = (SIZEOF(x/**/name/**/Req))>>2;\
    dpy->request++
#endif

#else /* SGI_SHM_TRANS */

#if (__STDC__ && !defined(UNIXCPP)) || defined(ANSICPP)
#define GetReq(name, req) \
        WORD64ALIGN\
	if ((dpy->bufptr + SIZEOF(x##name##Req)) > dpy->bufmax)\
		_XFlush(dpy);\
	req = (x##name##Req *)(dpy->last_req = dpy->bufptr);\
	req->reqType = X_##name;\
	req->length = (SIZEOF(x##name##Req))>>2;\
	dpy->bufptr += SIZEOF(x##name##Req);\
	dpy->request++

#else  /* non-ANSI C uses empty comment instead of "##" for token concatenation */
#define GetReq(name, req) \
        WORD64ALIGN\
	if ((dpy->bufptr + SIZEOF(x/**/name/**/Req)) > dpy->bufmax)\
		_XFlush(dpy);\
	req = (x/**/name/**/Req *)(dpy->last_req = dpy->bufptr);\
	req->reqType = X_/**/name;\
	req->length = (SIZEOF(x/**/name/**/Req))>>2;\
	dpy->bufptr += SIZEOF(x/**/name/**/Req);\
	dpy->request++
#endif

#endif /* SGI_SHM_TRANS */

/* GetReqExtra is the same as GetReq, but allocates "n" additional
   bytes after the request. "n" must be a multiple of 4!  */

#ifdef SGI_SHM_TRANS

#if (__STDC__ && !defined(UNIXCPP)) || defined(ANSICPP)
#define GetReqExtra(name, n, req) \
    WORD64ALIGN\
    { \
	shmdata_t *shmdata = dpy->shmdata;\
	if ( shmdata ) \
	{ \
	    shmdata->curreqptr = shmdata->reqendptr; \
	    _XShmAlloc(req, x##name##Req *, shmdata, dpy, SIZEOF(x##name##Req) + n );\
	    shmdata->curreqptr = (unsigned char *) req ; \
	} else { \
	    if ((dpy->bufptr + SIZEOF(x##name##Req) + n) > dpy->bufmax)\
		_XFlush(dpy);\
	    req = (x##name##Req *)(dpy->last_req = dpy->bufptr);\
	    dpy->bufptr += SIZEOF(x##name##Req) + n;\
	} \
    } \
    req->reqType = X_##name;\
    req->length = (SIZEOF(x##name##Req) + n)>>2;\
    dpy->request++
#else
#define GetReqExtra(name, n, req) \
    WORD64ALIGN\
    { \
	shmdata_t *shmdata = dpy->shmdata;\
	if ( shmdata ) \
	{ \
	    shmdata->curreqptr = shmdata->reqendptr; \
	    _XShmAlloc(req, x/**/name/**/Req *, shmdata, dpy, SIZEOF(x/**/name/**/Req) + n );\
	    shmdata->curreqptr = (unsigned char *) req ; \
	} else { \
	    if ((dpy->bufptr + SIZEOF(x/**/name/**/Req) + n) > dpy->bufmax)\
		_XFlush(dpy);\
	    req = (x/**/name/**/Req *)(dpy->last_req = dpy->bufptr);\
	    dpy->bufptr += SIZEOF(x/**/name/**/Req) + n;\
	} \
    } \
    req->reqType = X_/**/name;\
    req->length = (SIZEOF(x/**/name/**/Req) + n)>>2;\
    dpy->request++
#endif

#else /* SGI_SHM_TRANS */

#if (__STDC__ && !defined(UNIXCPP)) || defined(ANSICPP)
#define GetReqExtra(name, n, req) \
        WORD64ALIGN\
	if ((dpy->bufptr + SIZEOF(x##name##Req) + n) > dpy->bufmax)\
		_XFlush(dpy);\
	req = (x##name##Req *)(dpy->last_req = dpy->bufptr);\
	req->reqType = X_##name;\
	req->length = (SIZEOF(x##name##Req) + n)>>2;\
	dpy->bufptr += SIZEOF(x##name##Req) + n;\
	dpy->request++
#else
#define GetReqExtra(name, n, req) \
        WORD64ALIGN\
	if ((dpy->bufptr + SIZEOF(x/**/name/**/Req) + n) > dpy->bufmax)\
		_XFlush(dpy);\
	req = (x/**/name/**/Req *)(dpy->last_req = dpy->bufptr);\
	req->reqType = X_/**/name;\
	req->length = (SIZEOF(x/**/name/**/Req) + n)>>2;\
	dpy->bufptr += SIZEOF(x/**/name/**/Req) + n;\
	dpy->request++
#endif

#endif /* SGI_SHM_TRANS */

/*
 * GetResReq is for those requests that have a resource ID 
 * (Window, Pixmap, GContext, etc.) as their single argument.
 * "rid" is the name of the resource. 
 */

#ifdef SGI_SHM_TRANS

#if (__STDC__ && !defined(UNIXCPP)) || defined(ANSICPP)
#define GetResReq(name, rid, req) \
    WORD64ALIGN\
    { \
	shmdata_t *shmdata = dpy->shmdata;\
	if ( shmdata ) \
	{ \
	    shmdata->curreqptr = shmdata->reqendptr; \
	    _XShmAlloc(req, xResourceReq *, shmdata, dpy, SIZEOF(xResourceReq) );\
	    shmdata->curreqptr = (unsigned char *) req ; \
	} \
	else \
	{ \
	    if ((dpy->bufptr + SIZEOF(xResourceReq)) > dpy->bufmax)\
		_XFlush(dpy);\
	    req = (xResourceReq *) (dpy->last_req = dpy->bufptr);\
	    dpy->bufptr += SIZEOF(xResourceReq);\
	} \
    } \
    req->reqType = X_##name;\
    req->length = 2;\
    req->id = (rid);\
    dpy->request++
#else
#define GetResReq(name, rid, req) \
    WORD64ALIGN\
    { \
	shmdata_t *shmdata = dpy->shmdata;\
	if ( shmdata ) \
	{ \
	    shmdata->curreqptr = shmdata->reqendptr; \
	    _XShmAlloc(req, xResourceReq *, shmdata, dpy, SIZEOF(xResourceReq) );\
	    shmdata->curreqptr = (unsigned char *) req ; \
	} \
	else \
	{ \
	    if ((dpy->bufptr + SIZEOF(xResourceReq)) > dpy->bufmax)\
		_XFlush(dpy);\
	    req = (xResourceReq *) (dpy->last_req = dpy->bufptr);\
	    dpy->bufptr += SIZEOF(xResourceReq);\
	} \
    } \
    req->reqType = X_/**/name;\
    req->length = 2;\
    req->id = (rid);\
    dpy->request++
#endif

#else /* SGI_SHM_TRANS */

#if (__STDC__ && !defined(UNIXCPP)) || defined(ANSICPP)
#define GetResReq(name, rid, req) \
        WORD64ALIGN\
	if ((dpy->bufptr + SIZEOF(xResourceReq)) > dpy->bufmax)\
	    _XFlush(dpy);\
	req = (xResourceReq *) (dpy->last_req = dpy->bufptr);\
	req->reqType = X_##name;\
	req->length = 2;\
	req->id = (rid);\
	dpy->bufptr += SIZEOF(xResourceReq);\
	dpy->request++
#else
#define GetResReq(name, rid, req) \
        WORD64ALIGN\
	if ((dpy->bufptr + SIZEOF(xResourceReq)) > dpy->bufmax)\
	    _XFlush(dpy);\
	req = (xResourceReq *) (dpy->last_req = dpy->bufptr);\
	req->reqType = X_/**/name;\
	req->length = 2;\
	req->id = (rid);\
	dpy->bufptr += SIZEOF(xResourceReq);\
	dpy->request++
#endif

#endif /* SGI_SHM_TRANS */

/*
 * GetEmptyReq is for those requests that have no arguments
 * at all. 
 */

#ifdef SGI_SHM_TRANS

#if (__STDC__ && !defined(UNIXCPP)) || defined(ANSICPP)
#define GetEmptyReq(name, req) \
    WORD64ALIGN\
    { \
	shmdata_t *shmdata = dpy->shmdata;\
	if ( shmdata ) \
	{ \
	    shmdata->curreqptr = shmdata->reqendptr; \
	    _XShmAlloc(req, xReq *, shmdata, dpy, SIZEOF(xReq) );\
	    shmdata->curreqptr = (unsigned char *) req ; \
	} \
	else \
	{ \
	    if ((dpy->bufptr + SIZEOF(xReq)) > dpy->bufmax)\
		_XFlush(dpy);\
	    req = (xReq *) (dpy->last_req = dpy->bufptr);\
	    dpy->bufptr += SIZEOF(xReq);\
	} \
    } \
    req->reqType = X_##name;\
    req->length = 1;\
    dpy->request++
#else
#define GetEmptyReq(name, req) \
    WORD64ALIGN\
    { \
	shmdata_t *shmdata = dpy->shmdata;\
	if ( shmdata ) \
	{ \
	    shmdata->curreqptr = shmdata->reqendptr; \
	    _XShmAlloc(req, xReq *, shmdata, dpy, SIZEOF(xReq) );\
	    shmdata->curreqptr = (unsigned char *) req ; \
	} \
	else \
	{ \
	    if ((dpy->bufptr + SIZEOF(xReq)) > dpy->bufmax)\
		_XFlush(dpy);\
	    req = (xReq *) (dpy->last_req = dpy->bufptr);\
	    dpy->bufptr += SIZEOF(xReq);\
	} \
    } \
    req->reqType = X_/**/name;\
    req->length = 1;\
    dpy->request++
#endif

#else /* SGI_SHM_TRANS */

#if (__STDC__ && !defined(UNIXCPP)) || defined(ANSICPP)
#define GetEmptyReq(name, req) \
        WORD64ALIGN\
	if ((dpy->bufptr + SIZEOF(xReq)) > dpy->bufmax)\
	    _XFlush(dpy);\
	req = (xReq *) (dpy->last_req = dpy->bufptr);\
	req->reqType = X_##name;\
	req->length = 1;\
	dpy->bufptr += SIZEOF(xReq);\
	dpy->request++
#else
#define GetEmptyReq(name, req) \
        WORD64ALIGN\
	if ((dpy->bufptr + SIZEOF(xReq)) > dpy->bufmax)\
	    _XFlush(dpy);\
	req = (xReq *) (dpy->last_req = dpy->bufptr);\
	req->reqType = X_/**/name;\
	req->length = 1;\
	dpy->bufptr += SIZEOF(xReq);\
	dpy->request++
#endif

#endif /* SGI_SHM_TRANS */

#ifdef WORD64
#define MakeBigReq(req,n) \
    { \
    char _BRdat[4]; \
    unsigned long _BRlen = req->length - 1; \
    req->length = 0; \
    memcpy(_BRdat, ((char *)req) + (_BRlen << 2), 4); \
    memmove(((char *)req) + 8, ((char *)req) + 4, _BRlen << 2); \
    memcpy(((char *)req) + 4, _BRdat, 4); \
    Data32(dpy, (long *)&_BRdat, 4); \
    }
#else
#define MakeBigReq(req,n) \
    { \
    long _BRdat; \
    unsigned long _BRlen = req->length - 1; \
    req->length = 0; \
    _BRdat = ((long *)req)[_BRlen]; \
    memmove(((char *)req) + 8, ((char *)req) + 4, _BRlen << 2); \
    ((unsigned long *)req)[1] = _BRlen + n + 2; \
    Data32(dpy, &_BRdat, 4); \
    }
#endif

#define SetReqLen(req,n,badlen) \
    if ((req->length + n) > (unsigned)65535) { \
	if (dpy->bigreq_size) { \
	    MakeBigReq(req,n) \
	} else { \
	    n = badlen; \
	    req->length += n; \
	} \
    } else \
	req->length += n

#define SyncHandle() \
	if (dpy->synchandler) (*dpy->synchandler)(dpy)

#define FlushGC(dpy, gc) \
	if ((gc)->dirty) _XFlushGCCache((dpy), (gc))
/*
 * Data - Place data in the buffer and pad the end to provide
 * 32 bit word alignment.  Transmit if the buffer fills.
 *
 * "dpy" is a pointer to a Display.
 * "data" is a pinter to a data buffer.
 * "len" is the length of the data buffer.
 *  We can presume buffer less than 2^16 bytes, so bcopy can be used safely.
 */
#ifndef DataRoutineIsProcedure

# ifdef SGI_SHM_TRANS

#define shmbcopy(src, dest, len) \
	if ( ( (int)(src) | (int)(dest) | (int)(len) ) & 0x3 ) \
	{ /* unaligned in some way */ \
		memcpy( (dest), (src), (len) ); \
	} \
	else /* src and dest are word aligned, and length is mod 4 */ \
	{ \
		int wordlen = (len) >> 2; \
		if ( wordlen > 31 ) \
		{ \
			_XShmFastBcopy( (src), (dest), (len) ); \
		} \
		else \
		{ \
			volatile unsigned int *mysrc; \
			volatile unsigned int *mydest; \
			mysrc = (volatile unsigned int *)(src); \
			mydest = (volatile unsigned int *)(dest); \
			while( wordlen >= 8 ) \
			{ \
			    unsigned long int t1, t2, t3, t4; \
			    t1 = mysrc[0]; \
			    t2 = mysrc[1]; \
			    t3 = mysrc[2]; \
			    t4 = mysrc[3]; \
			    mydest[0] = t1; \
			    mydest[1] = t2; \
			    mydest[2] = t3; \
			    mydest[3] = t4; \
			    t1 = mysrc[4]; \
			    t2 = mysrc[5]; \
			    t3 = mysrc[6]; \
			    t4 = mysrc[7]; \
			    mydest[4] = t1; \
			    mydest[5] = t2; \
			    mydest[6] = t3; \
			    mydest[7] = t4; \
			    wordlen -= 8; \
			    mydest += 8; \
			    mysrc += 8; \
			} \
			switch(wordlen) { \
				case 7: \
					mydest[6] = mysrc[6]; \
				case 6: \
					mydest[5] = mysrc[5]; \
				case 5: \
					mydest[4] = mysrc[4]; \
				case 4: \
					mydest[3] = mysrc[3]; \
				case 3: \
					mydest[2] = mysrc[2]; \
				case 2: \
					mydest[1] = mysrc[1]; \
				case 1: \
					mydest[0] = mysrc[0]; \
			} \
		} \
	}

#define Data(dpy, data, len) \
{ \
	shmdata_t *da_shmdata = dpy->shmdata;\
	if (da_shmdata) { \
		unsigned char *data_ptr; \
		unsigned int *src_ptr = (unsigned int *)(data); \
		int da_len = ( (len) + 3 ) & ~3; \
		_XShmAlloc(data_ptr, unsigned char *, da_shmdata, dpy, da_len);\
		shmbcopy( (int *)src_ptr, (int *)data_ptr, (len) ); \
	} else if (dpy->bufptr + (len) <= dpy->bufmax) {\
		memcpy(dpy->bufptr, data, (int)len);\
		dpy->bufptr += ((len) + 3) & ~3;\
	} else\
		_XSend(dpy,(void *) data, len); \
}

# else /* SGI_SHM_TRANS */

#define Data(dpy, data, len) \
	if (dpy->bufptr + (len) <= dpy->bufmax) {\
		memcpy(dpy->bufptr, data, (int)len);\
		dpy->bufptr += ((len) + 3) & ~3;\
	} else\
		_XSend(dpy, data, len)

# endif /* SGI_SHM_TRANS */

#endif /* DataRoutineIsProcedure */


/* Allocate bytes from the buffer.  No padding is done, so if
 * the length is not a multiple of 4, the caller must be
 * careful to leave the buffer aligned after sending the
 * current request.
 *
 * "type" is the type of the pointer being assigned to.
 * "ptr" is the pointer being assigned to.
 * "n" is the number of bytes to allocate.
 *
 * Example: 
 *    xTextElt *elt;
 *    BufAlloc (xTextElt *, elt, nbytes)
 */

#ifdef SGI_SHM_TRANS

#define BufAlloc(type, ptr, n) \
{ \
    shmdata_t *ba_shmdata = dpy->shmdata;\
    if ( ba_shmdata ) { \
	_XShmAlloc(ptr, type, ba_shmdata, dpy, (n));\
    } \
    else { \
	if (dpy->bufptr + (n) > dpy->bufmax) \
            _XFlush (dpy); \
	ptr = (type) dpy->bufptr; \
	dpy->bufptr += (n); \
    } \
}

#else /* SGI_SHM_TRANS */

#define BufAlloc(type, ptr, n) \
    if (dpy->bufptr + (n) > dpy->bufmax) \
        _XFlush (dpy); \
    ptr = (type) dpy->bufptr; \
    dpy->bufptr += (n);

#endif /* SGI_SHM_TRANS */

#ifdef WORD64
#define Data16(dpy, data, len) _XData16(dpy, (short *)data, len)
#define Data32(dpy, data, len) _XData32(dpy, (long *)data, len)
#else
#define Data16(dpy, data, len) Data((dpy), (char *)(data), (len))
#define _XRead16Pad(dpy, data, len) _XReadPad((dpy), (char *)(data), (len))
#define _XRead16(dpy, data, len) _XRead((dpy), (char *)(data), (len))
#ifdef LONG64
#define Data32(dpy, data, len) _XData32(dpy, (long *)data, len)
#else
#define Data32(dpy, data, len) Data((dpy), (char *)(data), (len))
#define _XRead32(dpy, data, len) _XRead((dpy), (char *)(data), (len))
#endif
#endif /* not WORD64 */

#define PackData16(dpy,data,len) Data16 (dpy, data, len)
#define PackData32(dpy,data,len) Data32 (dpy, data, len)

/* Xlib manual is bogus */
#define PackData(dpy,data,len) PackData16 (dpy, data, len)

#define min(a,b) (((a) < (b)) ? (a) : (b))
#define max(a,b) (((a) > (b)) ? (a) : (b))

#define CI_NONEXISTCHAR(cs) (((cs)->width == 0) && \
			     (((cs)->rbearing|(cs)->lbearing| \
			       (cs)->ascent|(cs)->descent) == 0))

/* 
 * CI_GET_CHAR_INFO_1D - return the charinfo struct for the indicated 8bit
 * character.  If the character is in the column and exists, then return the
 * appropriate metrics (note that fonts with common per-character metrics will
 * return min_bounds).  If none of these hold true, try again with the default
 * char.
 */
#define CI_GET_CHAR_INFO_1D(fs,col,def,cs) \
{ \
    cs = def; \
    if (col >= fs->min_char_or_byte2 && col <= fs->max_char_or_byte2) { \
	if (fs->per_char == NULL) { \
	    cs = &fs->min_bounds; \
	} else { \
	    cs = &fs->per_char[(col - fs->min_char_or_byte2)]; \
	    if (CI_NONEXISTCHAR(cs)) cs = def; \
	} \
    } \
}

#define CI_GET_DEFAULT_INFO_1D(fs,cs) \
  CI_GET_CHAR_INFO_1D (fs, fs->default_char, NULL, cs)



/*
 * CI_GET_CHAR_INFO_2D - return the charinfo struct for the indicated row and 
 * column.  This is used for fonts that have more than row zero.
 */
#define CI_GET_CHAR_INFO_2D(fs,row,col,def,cs) \
{ \
    cs = def; \
    if (row >= fs->min_byte1 && row <= fs->max_byte1 && \
	col >= fs->min_char_or_byte2 && col <= fs->max_char_or_byte2) { \
	if (fs->per_char == NULL) { \
	    cs = &fs->min_bounds; \
	} else { \
	    cs = &fs->per_char[((row - fs->min_byte1) * \
			        (fs->max_char_or_byte2 - \
				 fs->min_char_or_byte2 + 1)) + \
			       (col - fs->min_char_or_byte2)]; \
	    if (CI_NONEXISTCHAR(cs)) cs = def; \
        } \
    } \
}

#define CI_GET_DEFAULT_INFO_2D(fs,cs) \
{ \
    unsigned int r = (fs->default_char >> 8); \
    unsigned int c = (fs->default_char & 0xff); \
    CI_GET_CHAR_INFO_2D (fs, r, c, NULL, cs); \
}


#ifdef MUSTCOPY

/* for when 32-bit alignment is not good enough */
#define OneDataCard32(dpy,dstaddr,srcvar) \
  { dpy->bufptr -= 4; Data32 (dpy, (char *) &(srcvar), 4); }

#else

/* srcvar must be a variable for large architecture version */
#define OneDataCard32(dpy,dstaddr,srcvar) \
  { *(CARD32 *)(dstaddr) = (srcvar); }

#endif /* MUSTCOPY */

typedef struct _XInternalAsync {
    struct _XInternalAsync *next;
    Bool (*handler)();
    XPointer data;
} _XAsyncHandler;

typedef struct _XAsyncEState {
    unsigned long min_sequence_number;
    unsigned long max_sequence_number;
    unsigned char error_code;
    unsigned char major_opcode;
    unsigned short minor_opcode;
    unsigned char last_error_received;
    int error_count;
} _XAsyncErrorState;

#define DeqAsyncHandler(dpy,handler) { \
    if (dpy->async_handlers == (handler)) \
	dpy->async_handlers = (handler)->next; \
    else \
	_XDeqAsyncHandler(dpy, handler); \
    }

/*
 * This structure is private to the library.
 */
typedef struct _XFreeFuncs {
    void (*atoms)();		/* _XFreeAtomTable */
    int (*modifiermap)();	/* XFreeModifierMap */
    void (*key_bindings)();	/* _XFreeKeyBindings */
    void (*context_db)();	/* _XFreeContextDB */
    void (*defaultCCCs)();	/* _XcmsFreeDefaultCCCs */
    void (*clientCmaps)();	/* _XcmsFreeClientCmaps */
    void (*intensityMaps)();	/* _XcmsFreeIntensityMaps */
    void (*im_filters)();	/* _XFreeIMFilters */
    void (*xkb)();		/* _XkbFreeInfo */
} _XFreeFuncRec;

/*
 * This structure is private to the library.
 */
typedef struct _XExten {	/* private to extension mechanism */
	struct _XExten *next;	/* next in list */
	XExtCodes codes;	/* public information, all extension told */
	int (*create_GC)();	/* routine to call when GC created */
	int (*copy_GC)();	/* routine to call when GC copied */
	int (*flush_GC)();	/* routine to call when GC flushed */
	int (*free_GC)();	/* routine to call when GC freed */
	int (*create_Font)();	/* routine to call when Font created */
	int (*free_Font)();	/* routine to call when Font freed */
	int (*close_display)();	/* routine to call when connection closed */
	int (*error)();		/* who to call when an error occurs */
        char *(*error_string)();  /* routine to supply error string */
	char *name;		/* name of this extension */
	void (*error_values)(); /* routine to supply error values */
	void (*before_flush)();	/* routine to call when sending data */
	struct _XExten *next_flush; /* next in list of those with flushes */
} _XExtension;

/* extension hooks */

_XFUNCPROTOBEGIN

#ifdef DataRoutineIsProcedure
extern void Data();
#endif
extern int _XError(
#if NeedFunctionPrototypes
    Display*	/* dpy */,
    xError*	/* rep */
#endif
);
extern int _XIOError(
#if NeedFunctionPrototypes
    Display*	/* dpy */
#endif
);
extern int (*_XIOErrorFunction)(
#if NeedNestedPrototypes
    Display*	/* dpy */
#endif
);
extern int (*_XErrorFunction)(
#if NeedNestedPrototypes
    Display*		/* dpy */,
    XErrorEvent*	/* error_event */
#endif
);
extern void _XEatData(
#if NeedFunctionPrototypes
    Display*		/* dpy */,
    unsigned long	/* n */
#endif
);
extern char *_XAllocScratch(
#if NeedFunctionPrototypes
    Display*		/* dpy */,
    unsigned long	/* nbytes */
#endif
);
extern char *_XAllocTemp(
#if NeedFunctionPrototypes
    Display*		/* dpy */,
    unsigned long	/* nbytes */
#endif
);
extern void _XFreeTemp(
#if NeedFunctionPrototypes
    Display*		/* dpy */,
    char*		/* buf */,
    unsigned long	/* nbytes */
#endif
);
extern Visual *_XVIDtoVisual(
#if NeedFunctionPrototypes
    Display*	/* dpy */,
    VisualID	/* id */
#endif
);
extern unsigned long _XSetLastRequestRead(
#if NeedFunctionPrototypes
    Display*		/* dpy */,
    xGenericReply*	/* rep */
#endif
);
extern int _XGetHostname(
#if NeedFunctionPrototypes
    char*	/* buf */,
    int		/* maxlen */
#endif
);
extern Screen *_XScreenOfWindow(
#if NeedFunctionPrototypes
    Display*	/* dpy */,
    Window	/* w */
#endif
);
extern Bool _XAsyncErrorHandler(
#if NeedFunctionPrototypes
    Display*	/* dpy */,
    xReply*	/* rep */,
    char*	/* buf */,
    int		/* len */,
    XPointer	/* data */
#endif
);
extern char *_XGetAsyncReply(
#if NeedFunctionPrototypes
    Display*	/* dpy */,
    char*	/* replbuf */,
    xReply*	/* rep */,
    char*	/* buf */,
    int		/* len */,
    int		/* extra */,
    Bool	/* discard */
#endif
);
extern _XFlush(
#if NeedFunctionPrototypes
    Display*	/* dpy */
#endif
);
extern int _XEventsQueued(
#if NeedFunctionPrototypes
    Display*	/* dpy */,
    int 	/* mode */
#endif
);
extern _XReadEvents(
#if NeedFunctionPrototypes
    Display*	/* dpy */
#endif
);
extern _XRead(
#if NeedFunctionPrototypes
    Display*	/* dpy */,
    char*	/* data */,
    long	/* size */
#endif
);
extern _XReadPad(
#if NeedFunctionPrototypes
    Display*	/* dpy */,
    char*	/* data */,
    long	/* size */
#endif
);
extern _XSend(
#if NeedFunctionPrototypes
    Display*		/* dpy */,
    _Xconst char*	/* data */,
    long		/* size */
#endif
);
extern Status _XReply(
#if NeedFunctionPrototypes
    Display*	/* dpy */,
    xReply*	/* rep */,
    int		/* extra */,
    Bool	/* discard */
#endif
);
extern _XEnq(
#if NeedFunctionPrototypes
    Display*	/* dpy */,
    xEvent*	/* event */
#endif
);
extern _XDeq(
#if NeedFunctionPrototypes
    Display*	/* dpy */,
    _XQEvent*	/* prev */,
    _XQEvent*	/* qelt */
#endif
);

extern int (*XESetCreateGC(
#if NeedFunctionPrototypes
    Display*		/* display */,
    int			/* extension */,
    int (*) (
#if NeedNestedPrototypes
	      Display*			/* display */,
	      GC			/* gc */,
	      XExtCodes*		/* codes */
#endif
	    )		/* proc */
#endif
))(
#if NeedNestedPrototypes
    Display*, GC, XExtCodes*
#endif
);

extern int (*XESetCopyGC(
#if NeedFunctionPrototypes
    Display*		/* display */,
    int			/* extension */,
    int (*) (
#if NeedNestedPrototypes
	      Display*			/* display */,
              GC			/* gc */,
              XExtCodes*		/* codes */
#endif
            )		/* proc */	      
#endif
))(
#if NeedNestedPrototypes
    Display*, GC, XExtCodes*
#endif
);

extern int (*XESetFlushGC(
#if NeedFunctionPrototypes
    Display*		/* display */,
    int			/* extension */,
    int (*) (
#if NeedNestedPrototypes
	      Display*			/* display */,
              GC			/* gc */,
              XExtCodes*		/* codes */
#endif
            )		/* proc */	     
#endif
))(
#if NeedNestedPrototypes
    Display*, GC, XExtCodes*
#endif
);

extern int (*XESetFreeGC(
#if NeedFunctionPrototypes
    Display*		/* display */,
    int			/* extension */,
    int (*) (
#if NeedNestedPrototypes
	      Display*			/* display */,
              GC			/* gc */,
              XExtCodes*		/* codes */
#endif
            )		/* proc */	     
#endif
))(
#if NeedNestedPrototypes
    Display*, GC, XExtCodes*
#endif
);

extern int (*XESetCreateFont(
#if NeedFunctionPrototypes
    Display*		/* display */,
    int			/* extension */,
    int (*) (
#if NeedNestedPrototypes
	      Display*			/* display */,
              XFontStruct*		/* fs */,
              XExtCodes*		/* codes */
#endif
            )		/* proc */    
#endif
))(
#if NeedNestedPrototypes
    Display*, XFontStruct*, XExtCodes*
#endif
);

extern int (*XESetFreeFont(
#if NeedFunctionPrototypes
    Display*		/* display */,
    int			/* extension */,
    int (*) (
#if NeedNestedPrototypes
	      Display*			/* display */,
              XFontStruct*		/* fs */,
              XExtCodes*		/* codes */
#endif
            )		/* proc */    
#endif
))(
#if NeedNestedPrototypes
    Display*, XFontStruct*, XExtCodes*
#endif
); 

extern int (*XESetCloseDisplay(
#if NeedFunctionPrototypes
    Display*		/* display */,
    int			/* extension */,
    int (*) (
#if NeedNestedPrototypes
	      Display*			/* display */,
              XExtCodes*		/* codes */
#endif
            )		/* proc */    
#endif
))(
#if NeedNestedPrototypes
    Display*, XExtCodes*
#endif
);

extern int (*XESetError(
#if NeedFunctionPrototypes
    Display*		/* display */,
    int			/* extension */,
    int (*) (
#if NeedNestedPrototypes
	      Display*			/* display */,
              xError*			/* err */,
              XExtCodes*		/* codes */,
              int*			/* ret_code */
#endif
            )		/* proc */    
#endif
))(
#if NeedNestedPrototypes
    Display*, xError*, XExtCodes*, int*
#endif
);

extern char* (*XESetErrorString(
#if NeedFunctionPrototypes
    Display*		/* display */,
    int			/* extension */,
    char* (*) (
#if NeedNestedPrototypes
	        Display*		/* display */,
                int			/* code */,
                XExtCodes*		/* codes */,
                char*			/* buffer */,
                int			/* nbytes */
#endif
              )		/* proc */	       
#endif
))(
#if NeedNestedPrototypes
    Display*, int, XExtCodes*, char*, int
#endif
);

extern void (*XESetPrintErrorValues (
#if NeedFunctionPrototypes
    Display*		/* display */,
    int			/* extension */,
    void (*)(
#if NeedNestedPrototypes
	      Display*			/* display */,
	      XErrorEvent*		/* ev */,
	      void*			/* fp */
#endif
	     )		/* proc */
#endif
))(
#if NeedNestedPrototypes
    Display*, XErrorEvent*, void*
#endif
);

extern Bool (*XESetWireToEvent(
#if NeedFunctionPrototypes
    Display*		/* display */,
    int			/* event_number */,
    Bool (*) (
#if NeedNestedPrototypes
	       Display*			/* display */,
               XEvent*			/* re */,
               xEvent*			/* event */
#endif
             )		/* proc */    
#endif
))(
#if NeedNestedPrototypes
    Display*, XEvent*, xEvent*
#endif
);

extern Status (*XESetEventToWire(
#if NeedFunctionPrototypes
    Display*		/* display */,
    int			/* event_number */,
    Status (*) (
#if NeedNestedPrototypes
	      Display*			/* display */,
              XEvent*			/* re */,
              xEvent*			/* event */
#endif
            )		/* proc */   
#endif
))(
#if NeedNestedPrototypes
    Display*, XEvent*, xEvent*
#endif
);

extern Bool (*XESetWireToError(
#if NeedFunctionPrototypes
    Display*		/* display */,
    int			/* error_number */,
    Bool (*) (
#if NeedNestedPrototypes
	       Display*			/* display */,
	       XErrorEvent*		/* he */,
	       xError*			/* we */
#endif
            )		/* proc */   
#endif
))(
#if NeedNestedPrototypes
    Display*, XErrorEvent*, xError*
#endif
);

extern void (*XESetBeforeFlush(
#if NeedFunctionPrototypes
    Display*		/* display */,
    int			/* error_number */,
    void (*) (
#if NeedNestedPrototypes
	       Display*			/* display */,
	       XExtCodes*		/* codes */,
	       char*			/* data */,
	       long			/* len */
#endif
            )		/* proc */   
#endif
))(
#if NeedNestedPrototypes
    Display*, XExtCodes*, char*, long
#endif
);

/* internal connections for IMs */

typedef void (*_XInternalConnectionProc)(
#if NeedFunctionPrototypes
    Display*			/* dpy */,
    int				/* fd */,
    XPointer			/* call_data */
#endif
);


extern Status _XRegisterInternalConnection(
#if NeedFunctionPrototypes
    Display*			/* dpy */,
    int				/* fd */,
    _XInternalConnectionProc	/* callback */,
    XPointer			/* call_data */
#endif
);

extern void _XUnregisterInternalConnection(
#if NeedFunctionPrototypes
    Display*			/* dpy */,
    int				/* fd */
#endif
);

/* Display structure has pointers to these */

struct _XConnectionInfo {	/* info from _XRegisterInternalConnection */
    int fd;
    _XInternalConnectionProc read_callback;
    XPointer call_data;
    XPointer *watch_data;	/* set/used by XConnectionWatchProc */
    struct _XConnectionInfo *next;
};

struct _XConnWatchInfo {	/* info from XAddConnectionWatch */
    XConnectionWatchProc fn;
    XPointer client_data;
    struct _XConnWatchInfo *next;
};

_XFUNCPROTOEND
