#ifndef __GLWS_H__
#define __GLWS_H__

#include	<X11/X.h>
#include	<X11/Xlib.h>
#include	<gl/gl.h>

#define	GLWS_NOERROR	0
#define GLWS_NOCONTEXT	-1
#define GLWS_NODISPLAY	-2
#define GLWS_NOWINDOW	-3
#define GLWS_NOGRAPHICS	-4
#define GLWS_NOTTOP	-5	/* Window is not a top level window */
#define GLWS_NOVISUAL	-6
#define GLWS_BUFSIZE	-7	/* Buffer too small */
#define GLWS_BADWINDOW	-8

#define GLWS_ALREADYBOUND	-100	/* Context already bound */
#define GLWS_BINDFAILED		-101
#define GLWS_SETFAILED		-102

#define GLX_NORMAL	0x1000
#define GLX_OVERLAY	0x2000
#define GLX_POPUP	0x3000
#define GLX_UNDERLAY	0x4000

#define GLX_RGB		0x0001
#define GLX_DOUBLE	0x0002
#define GLX_ZSIZE	0x0003
#define GLX_BUFSIZE	0x0004
#define GLX_STENSIZE	0x0005
#define GLX_ACSIZE	0x0006
#define GLX_VISUAL	0x0007
#define GLX_COLORMAP	0x0008
#define GLX_WINDOW	0x0009
#define GLX_MSSAMPLE	0x000a
#define GLX_MSZSIZE	0x000b
#define GLX_MSSSIZE	0x000c
#define GLX_STEREOBUF	0x000d
#define GLX_RGBSIZE	0x000e

#define GLX_NONE	0
#define GLX_NOCONFIG	0x7fff

#endif /* __GLWS_H__ */
