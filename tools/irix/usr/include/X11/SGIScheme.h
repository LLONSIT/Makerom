#ifndef SGISCHEME_H
#define SGISCHEME_H

/**************************************************************************
 *                                                                        *
 *               Copyright (C) 1992, Silicon Graphics, Inc.               *
 *                                                                        *
 *  These coded instructions, statements, and computer programs  contain  *
 *  unpublished  proprietary  information of Silicon Graphics, Inc., and  *
 *  are protected by Federal copyright law.  They  may  not be disclosed  *
 *  to  third  parties  or copied or duplicated in any form, in whole or  *
 *  in part, without the prior written consent of Silicon Graphics, Inc.  *
 *                                                                        *
 **************************************************************************/

#ident "$Revision: 1.8 $"

#include <X11/Xfuncproto.h>

_XFUNCPROTOBEGIN

void SgiLoadScheme(
#if NeedFunctionPrototypes
    Display*		/* dpy */
#endif
);

XrmDatabase SgiGetSchemeDatabase(
#if NeedFunctionPrototypes
    Display*		/* dpy */,
    _Xconst char*	/* name */, 
    _Xconst char*	/* className */, 
    char*		/* scheme */
#endif
);

void SgiLoadNamedScheme(
#if NeedFunctionPrototypes
    Display*		/* dpy */, 
    _Xconst char*	/* name */, 
    _Xconst char*	/* className */,
    char*		/* scheme */
#endif
);

void SgiUseSchemes(
#if NeedFunctionPrototypes
    char *		/* value */
#endif
);

_XFUNCPROTOEND

#endif
