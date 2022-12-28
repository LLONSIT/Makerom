
/*
 * NMBX extension library include file
 *
 * $Revision: 1.4 $
 */

#ifndef _SGI_XNMBX_H_
#define _SGI_XNMBX_H_

/* request codes */
#define X_NMBX_GetVersion			0
#define X_NMBX_GetVisualCapabilities		1
#define X_NMBX_EnableCapability			2
#define X_NMBX_ReleaseCapability		3
#define X_NMBX_CreateExtendedPixmap		4
#define X_NMBX_SetRendererDestination		5
#define X_NMBX_SetRendererSource		6
#define X_NMBX_GetRendererTargets		7
#define X_NMBX_NameBackBuffer			8
#define X_NMBX_CreateBuffers			9
#define X_NMBX_DisplayBuffers			10
#define X_NMBX_DestroyBuffers			11
#define X_NMBX_GetBufferSetAttributes		12
#define X_NMBX_GetBufferAttributes		13
#define X_NMBX_SetBufferEventMask		14
#define X_NMBX_ClearBufferArea			15
#define X_NMBX_RelativeClearArea		16
#define X_NMBX_RelativeGetImage			17

/* renderer targets */
#define sgiNMBX_Front				0
#define sgiNMBX_Back				1
#define sgiNMBX_Other				2

/* update actions */
#define sgiNMBX_Undefined			0
#define sgiNMBX_Background			1
#define sgiNMBX_Untouched			2
#define sgiNMBX_Copied				3

/* update hint */
#define sgiNMBX_Frequent			0
#define sgiNMBX_Intermittent			1
#define sgiNMBX_Static				2

/* clobber state */
#define sgiNMBX_Unclobbered			0
#define sgiNMBX_PartiallyClobbered		1
#define sgiNMBX_FullyClobbered			2

/* events */
#define sgiNMBX_ClobberNotifyMask		0x02000000
#define sgiNMBX_UpdateNotifyMask		0x04000000
#define sgiNMBX_ClobberNotify			0
#define sgiNMBX_UpdateNotify			1
#define sgiNMBX_NumberEvents			2

/* errors */
#define sgiNMBX_BadBuffer			0
#define sgiNMBX_BadCapability			1
#define sgiNMBX_NumberErrors			2

#ifndef _NMBX_SERVER_

typedef XID XBuffer;

typedef struct {
   int type;
   unsigned long serial;
   int send_event;
   Display *display;
   XBuffer buffer;
   int state;
} sgiNMBX_ClobberNotifyEvent;

typedef struct {
   int type;
   unsigned long serial;
   int send_event;
   Display *display;
   XBuffer buffer;
   Time time;
} sgiNMBX_UpdateNotifyEvent;

/* match criterions */
#define sgiNMBX_Equal				0
#define sgiNMBX_NotEqual			1
#define sgiNMBX_Greater				2
#define sgiNMBX_GreaterOrEqual			3
#define sgiNMBX_Less				4
#define sgiNMBX_LessOrEqual			5
#define sgiNMBX_Present				6
#define sgiNMBX_NotPresent			7

typedef struct {
   Atom atom;
   unsigned long value;
   int matchCriterion;
} sgiXnmbxCapability;

_XFUNCPROTOBEGIN

extern Bool sgiXnmbxQueryExtension(
#if NeedFunctionPrototypes
   Display* /* dpy */,
   int * /* event_base_return */,
   int * /* error_base_return */
#endif
);

extern Status sgiXnmbxGetVersion(
#if NeedFunctionPrototypes
   Display* /* dpy */,
   int * /* major_version_return */,
   int * /* minor_version_return */
#endif
);

extern sgiXnmbxCapability* sgiXnmbxGetVisualCapabilities(
#if NeedFunctionPrototypes
   Display* /* dpy */,
   Visual* /* visual */,
   int* /* nCapabilities_return */
#endif
);

extern XVisualInfo* sgiXnmbxGetExtendedVisualInfo(
#if NeedFunctionPrototypes
   Display* /* dpy */,
   long /* vinfoMask */,
   XVisualInfo* /* vinfoTemplate */,
   int* /* nitems */,
   int /* nCriterion */,
   sgiXnmbxCapability* /* criterion */
#endif
);

extern Status sgiXnmbxMatchExtendedVisualInfo(
#if NeedFunctionPrototypes
   Display* /* dpy */,
   int /* screen */,
   int /* depth */,
   int /* class */,
   int /* nitems */,
   sgiXnmbxCapability* /* criterion */,
   XVisualInfo* /* vinfo_return */
#endif
);

extern int sgiXnmbxCreateBuffers(
#if NeedFunctionPrototypes
   Display* /* dpy */,
   Window /* win */,
   unsigned int /* count */,
   int /* updateHint */,
   int /* updateAction */,
   unsigned long /* eventMask */,
   XBuffer* /* buffers */
#endif
);

extern void sgiXnmbxSwapWindow(
#if NeedFunctionPrototypes
   Display* /* dpy */,
   Window /* win */
#endif
);

extern void sgiXnmbxDisplayBuffer(
#if NeedFunctionPrototypes
   Display* /* dpy */,
   XBuffer /* buf */
#endif
);

extern void sgiXnmbxSwapWindowsAndDisplayBuffers(
#if NeedFunctionPrototypes
   Display* /* dpy */,
   unsigned int /* nWins */,
   Window* /* wins */,
   unsigned int /* nBufs */,
   XBuffer* /* bufs */
#endif
);

extern void sgiXnmbxDestroyBuffers(
#if NeedFunctionPrototypes
   Display* /* dpy */,
   Window /* win */
#endif
);

extern void sgiXnmbxSetDestinationOfGC(
#if NeedFunctionPrototypes
   Display* /* dpy */,
   GC /* gc */,
   int /* target */
#endif
);

extern void sgiXnmbxSetSourceOfGC(
#if NeedFunctionPrototypes
   Display* /* dpy */,
   GC /* gc */,
   int /* target */
#endif
);

extern void sgiXnmbxGetTargetsOfGC(
#if NeedFunctionPrototypes
   Display* /* dpy */,
   GC /* gc */,
   int* /* pSource */,
   int* /* pDestination */
#endif
);

extern void sgiXnmbxRelativeClearArea(
#if NeedFunctionPrototypes
   Display* /* dpy */,
   Window /* win */,
   int /* name */,
   int /* x */,
   int /* y */,
   unsigned int /* width */,
   unsigned int /* height */,
   Bool /* exposures */
#endif
);

extern XImage *sgiXnmbxRelativeGetImage(
#if NeedFunctionPrototypes
   Display* /* dpy */,
   Drawable /* d */,
   int /* name */,
   int /* x */,
   int /* y */,
   unsigned int /* width */,
   unsigned int /* height */,
   unsigned long /* plane_mask */,
   int /* format */
#endif
);

extern XImage *sgiXnmbxRelativeGetSubImage(
#if NeedFunctionPrototypes
   Display* /* dpy */,
   Drawable /* d */,
   int /* name */,
   int /* x */,
   int /* y */,
   unsigned int /* width */,
   unsigned int /* height */,
   unsigned long /* plane_mask */,
   int /* format */,
   XImage* /* dest_image */,
   int /* dest_x */,
   int /* dest_y */
#endif
);

extern void sgiXnmbxClearBufferArea(
#if NeedFunctionPrototypes
   Display* /* dpy */,
   XBuffer /* buf */,
   int /* x */,
   int /* y */,
   unsigned int /* width */,
   unsigned int /* height */,
   Bool /* exposures */
#endif
);

extern void sgiXnmbxClearBuffer(
#if NeedFunctionPrototypes
   Display* /* dpy */,
   XBuffer /* buf */
#endif
);

extern XBuffer *sgiXnmbxGetBufferSetAttributes(
#if NeedFunctionPrototypes
   Display* /* dpy */,
   Window /* win */,
   XBuffer* /* displayed */, 
   int* /* num */
#endif
);

extern void sgiXnmbxEnableCapability(
#if NeedFunctionPrototypes
   Display* /* dpy */,
   Window /* win */,
   Atom /* atom */
#endif
);

extern void sgiXnmbxReleaseCapability(
#if NeedFunctionPrototypes
   Display* /* dpy */,
   Window /* win */,
   Atom /* atom */
#endif
);

extern void sgiXnmbxNameBackBuffer(
#if NeedFunctionPrototypes
   Display* /* dpy */,
   XBuffer /* buf */
#endif
);

_XFUNCPROTOEND

#endif /* _NBX_SERVER_ */

#endif /* _SGI_XNMBX_H_ */

