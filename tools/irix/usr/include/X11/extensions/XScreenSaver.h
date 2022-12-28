/* EXPERIMENTAL! THIS HAS NO OFFICIAL X CONSORTIUM BLESSING */

/* $XConsortium$ */
#ifndef _XSCREEN_SAVER_H_
#define _XSCREEN_SAVER_H_

/* ----------------------------------------------------------------------    */
/* request codes */
#define X_ScreenSaverQueryVersion	0
#define X_ScreenSaverEnable		1
#define X_ScreenSaverDisable		2

/* event types */
#define ScreenSaverStart		0		/* start saving */
#define ScreenSaverEnd			1		/* end saving */
#define ScreenSaverNumberEvents		(ScreenSaverEnd + 1)

/* error codes (NONE) */
/* ----------------------------------------------------------------------    */

#ifdef __cplusplus			/* do not leave open across includes */
extern "C" {					/* for C++ V2.0 */
#endif

#ifndef _XSCREEN_SAVER_SERVER_
typedef struct 	{
    int	type;		    /* of event */
    unsigned long serial;   /* # of last request processed by server */
    Bool send_event;	    /* true if this came frome a SendEvent request */
    Display *display;	    /* Display the event was read from */
    Window window;	    /* Not Used */
    int screen;		    /* screen to start/end on */
} XScreenSaverEvent;

Bool XScreenSaverQueryExtension(
#if NeedFunctionPrototypes
    Display*		/* display */,
    int*		/* event_base_return */,
    int*		/* error_base_return */
#endif
);

Bool XScreenSaverQueryVersion(
#if NeedFunctionPrototypes
    Display*		/* display */,
    int*		/* major_version_return */,
    int*		/* minor_version_return */
#endif
);

Status XScreenSaverEnable(
#if NeedFunctionPrototypes
    Display*		/* display */,
    int			/* screen */
#endif
);

Status XScreenSaverDisable(
#if NeedFunctionPrototypes
    Display*		/* display */,
    int			/* screen */
#endif
);

#ifdef __cplusplus
}						/* for C++ V2.0 */
#endif

#endif

#endif
