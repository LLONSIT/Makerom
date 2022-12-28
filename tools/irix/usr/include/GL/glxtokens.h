/*
** Copyright 1991-1993, Silicon Graphics, Inc.
** All Rights Reserved.
** 
** This is UNPUBLISHED PROPRIETARY SOURCE CODE of Silicon Graphics, Inc.;
** the contents of this file may not be disclosed to third parties, copied or
** duplicated in any form, in whole or in part, without the prior written
** permission of Silicon Graphics, Inc.
** 
** RESTRICTED RIGHTS LEGEND:
** Use, duplication or disclosure by the Government is subject to restrictions
** as set forth in subdivision (c)(1)(ii) of the Rights in Technical Data
** and Computer Software clause at DFARS 252.227-7013, and/or in similar or
** successor clauses in the FAR, DOD or NASA FAR Supplement. Unpublished -
** rights reserved under the Copyright Laws of the United States.
*/

#ifndef __GLXTOKENS
#define __GLXTOKENS

#ifdef __cplusplus
extern "C" {
#endif

/*
** Names for attributes to glXGetConfig.
*/
#define GLX_USE_GL		1	/* support GLX rendering */
#define GLX_BUFFER_SIZE		2	/* depth of the color buffer */
#define GLX_LEVEL		3	/* level in plane stacking */
#define GLX_RGBA		4	/* true if RGBA mode */
#define GLX_DOUBLEBUFFER	5	/* double buffering supported */
#define GLX_STEREO		6	/* stereo buffering supported */
#define GLX_AUX_BUFFERS 	7	/* number of aux buffers */
#define GLX_RED_SIZE		8	/* number of red component bits */
#define GLX_GREEN_SIZE		9	/* number of green component bits */
#define GLX_BLUE_SIZE		10	/* number of blue component bits */
#define GLX_ALPHA_SIZE		11	/* number of alpha component bits */
#define GLX_DEPTH_SIZE		12	/* number of depth bits */
#define GLX_STENCIL_SIZE	13	/* number of stencil bits */
#define GLX_ACCUM_RED_SIZE	14	/* number of red accum bits */
#define GLX_ACCUM_GREEN_SIZE	15	/* number of green accum bits */
#define GLX_ACCUM_BLUE_SIZE	16	/* number of blue accum bits */
#define GLX_ACCUM_ALPHA_SIZE	17	/* number of alpha accum bits */

#define GLX_SAMPLES_SGIS	100000	/* number of samples per pixel */
#define GLX_SAMPLE_BUFFER_SGIS 	100001	/* the number of multisample buffers */

/*
** Error return values from glXGetConfig.  Success is indicated by
** a value of 0.
*/
#define GLX_BAD_SCREEN		1	/* screen # is bad */
#define GLX_BAD_ATTRIBUTE	2	/* attribute to get is bad */
#define GLX_NO_EXTENSION	3	/* no glx extension on server */
#define GLX_BAD_VISUAL		4	/* visual # not known by GLX */
#define GLX_BAD_CONTEXT		5
#define GLX_BAD_VALUE       	6
#define GLX_BAD_ENUM		7

/*
** Errors.
*/
#define GLXBadContext           0
#define GLXBadContextState      1
#define GLXBadDrawable          2
#define GLXBadPixmap            3
#define GLXBadContextTag        4
#define GLXBadCurrentWindow     5
#define GLXBadRenderRequest     6
#define GLXBadLargeRequest      7
#define GLXUnsupportedPrivateRequest    8

#define __GLX_NUMBER_ERRORS 8
#define __GLX_NUMBER_EVENTS 1

#define GLX_EXTENSION_NAME      "GLX"
#define GLX_EXTENSION_ALIAS     "SGI-GLX"

#define GLX_VENDOR		1
#define GLX_VERSION		2
#define GLX_EXTENSIONS 		3

/*****************************************************************************/

/*
** GLX Extension Strings
*/
#define GLX_SGI_swap_control	1
#define GLX_SGI_video_sync	1
#define GLX_SGIS_multisample	1

/* Swap modes */
#define GLX_SWAP_DEFAULT_SGI	1
#define GLX_SWAP_MUXPIPE_SGI	2
#define GLX_SWAP_GANG_SGI	3

/* Mode specific parameters */
#define GLX_MUXPIPE0_SGI	0x1
#define GLX_MUXPIPE1_SGI	0x2
#define GLX_MUXPIPE2_SGI	0x4

#ifdef __cplusplus
}
#endif

#endif /* __GLXTOKENS */
