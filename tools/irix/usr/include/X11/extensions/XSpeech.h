/***************************************
 lib interface
 ***************************************/

#ifndef _XSPEECH_H_
#define _XSPEECH_H_

#include	<X11/Xlibint.h>
#include	"XSpeechProto.h"

#ifdef __cplusplus			/* do not leave open across includes */
extern "C" {					/* for C++ V2.0 */
#endif

/* events */

typedef struct 	{
    int	type;		    /* of event */
    unsigned long serial;   /* # of last request processed by server */
    Bool send_event;	    /* true if this came frome a SendEvent request */
    Display *display;	    /* Display the event was read from */
    /* int microphone ; */
    Window focusWindow ;
    Window pointerWindow ;
    /* Window toplevelWindow ; */
    int	first;		    /* first event sent for this action */
    Time time ;
    /* INT16	x ; */
    /* INT16	y ; */
    INT16	root_x ;
    INT16	root_y ;
} XSpeechAnyEvent;

typedef struct 	{
    int	type;		    /* of event */
    unsigned long serial;   /* # of last request processed by server */
    Bool send_event;	    /* true if this came frome a SendEvent request */
    Display *display;	    /* Display the event was read from */
    /* int microphone ; */
    Window focusWindow ;
    Window pointerWindow ;
    /* Window toplevelWindow ; */
    int	first;		    /* first event sent for this action */
    Time time ;
    /* INT16	x ; */
    /* INT16	y ; */
    INT16	root_x ;
    INT16	root_y ;
    int identifier ;		    /* identifier */
    int score ;
} XSpeechRecognitionEvent;

typedef struct 	{
    int	type;		    /* of event */
    unsigned long serial;   /* # of last request processed by server */
    Bool send_event;	    /* true if this came frome a SendEvent request */
    Display *display;	    /* Display the event was read from */
    /* int microphone ; */
    Window focusWindow ;
    Window pointerWindow ;
    /* Window toplevelWindow ; */
    int	first;		    /* first event sent for this action */
    Time time ;
    /* INT16	x ; */
    /* INT16	y ; */
    INT16	root_x ;
    INT16	root_y ;
    int identifier ;		    /* identifier */
    int score ;
} XSpeechPoorMatchEvent ;

typedef struct 	{
    int	type;		    /* of event */
    unsigned long serial;   /* # of last request processed by server */
    Bool send_event;	    /* true if this came frome a SendEvent request */
    Display *display;	    /* Display the event was read from */
    /* int microphone ; */
    Window focusWindow ;
    Window pointerWindow ;
    /* Window toplevelWindow ; */
    int	first;		    /* first event sent for this action */
    Time time ;
    /* INT16	x ; */
    /* INT16	y ; */
    INT16	root_x ;
    INT16	root_y ;
    int identifier1 ;
    int identifier2 ;
    int score1 ;
    int score2 ;
} XSpeechAmbiguousMatchEvent ;

typedef struct 	{
    int	type;		    /* of event */
    unsigned long serial;   /* # of last request processed by server */
    Bool send_event;	    /* true if this came frome a SendEvent request */
    Display *display;	    /* Display the event was read from */
    /* int microphone ; */
    Window focusWindow ;
    Window pointerWindow ;
    /* Window toplevelWindow ; */
    int	first;		    /* first event sent for this action */
    Time time ;
    /* INT16	x ; */
    /* INT16	y ; */
    INT16	root_x ;
    INT16	root_y ;
    int errorType ;
} XSpeechErrorEvent;

typedef struct 	{
    int	type;		    /* of event */
    unsigned long serial;   /* # of last request processed by server */
    Bool send_event;	    /* true if this came frome a SendEvent request */
    Display *display;	    /* Display the event was read from */
    /* int microphone ; */
    Window focusWindow ;
    Window pointerWindow ;
    /* Window toplevelWindow ; */
    int	first;		    /* first event sent for this action */
    Time time ;
    /* INT16	x ; */
    /* INT16	y ; */
    INT16	root_x ;
    INT16	root_y ;
    XID updateType ;
    XID updateID ;
} XSpeechUpdateEvent;

typedef struct 	{
    int	type;		    /* of event */
    unsigned long serial;   /* # of last request processed by server */
    Bool send_event;	    /* true if this came frome a SendEvent request */
    Display *display;	    /* Display the event was read from */
    /* int microphone ; */
    Window focusWindow ;
    Window pointerWindow ;
    /* Window toplevelWindow ; */
    int	first;		    /* first event sent for this action */
    Time time ;
    /* INT16	x ; */
    /* INT16	y ; */
    INT16	root_x ;
    INT16	root_y ;
    XID trainNeededID ;
} XSpeechTrainNeededEvent;

/* prototypes */
Bool XSpeechQueryExtension(
#if NeedFunctionPrototypes
    Display*		/* display */,
    long*		/* event_base_return */,
    long*		/* error_base_return */
#endif
);

Bool XSpeechQueryVersion(
#if NeedFunctionPrototypes
    Display*		/* display */,
    long*		/* major_version_return */,
    long*		/* minor_version_return */
#endif
);

Bool XSpeechThresholds(
#if NeedFunctionPrototypes
    Display*		/* display */,
    long*		/* score */,
    long*		/* delta */
#endif
);

Status XSpeechSetEnable(
#if NeedFunctionPrototypes
    Display*		/* display */,
    long			/* enable */
#endif
);

Status XSpeechGetEnable(
#if NeedFunctionPrototypes
    Display*		/* display */,
    long*			/* enable */
#endif
);

Status XSpeechUnload(
#if NeedFunctionPrototypes
    Display*		/* display */
#endif
);

Status XSpeechVerbose(
#if NeedFunctionPrototypes
    Display*		/* display */,
    long			/* enable */
#endif
);

Status XSpeechReportRecognition(
#if NeedFunctionPrototypes
    Display*		/* display */,
    XID			/* id */
#endif
);

Status XSpeechAGC(
#if NeedFunctionPrototypes
    Display*		/* display */,
    long			/* enable */
#endif
);

Status XSpeechSynthesis(
#if NeedFunctionPrototypes
    Display*		/* display */,
    char*			/* text */,
    long			/* length */
#endif
);

Status XSpeechPlayback(
#if NeedFunctionPrototypes
    Display*		/* display */,
    long			/* enable */
#endif
);

Status XSpeechTemplateDelete(
#if NeedFunctionPrototypes
    Display*		/* display */,
    XID					/* id */
#endif
);

Status XSpeechVocabularyDelete(
#if NeedFunctionPrototypes
    Display*		/* display */,
    XID					/* id */
#endif
);

Status XSpeechTrainTemplate(
#if NeedFunctionPrototypes
    Display*		/* display */,
    XID					/* id */
#endif
);

Status XSpeechUntrainTemplate(
#if NeedFunctionPrototypes
    Display*		/* display */,
    XID					/* id */
#endif
);

Status XSpeechTrainTemplateWithToken(
#if NeedFunctionPrototypes
    Display*		/* display */,
    XID					/* template id */,
		XID					/* token id  */
#endif
);

Status XSpeechUntrainTemplateWithToken(
#if NeedFunctionPrototypes
    Display*		/* display */,
    XID					/* template id */,
		XID					/* token id */
#endif
);

Status XSpeechTemplate(
#if NeedFunctionPrototypes
  Display*		/* display */,
	char* /* name */,
	char* /* action */,
  unsigned char*			/* condition */,
	long /* size */,
	XID* /* id */
#endif
);

Status XSpeechTemplateUpload(
#if NeedFunctionPrototypes
  Display*		/* display */,
	char* /* name */,
	char* /* action */,
	unsigned char*      /* condition */,
	long /* size */,
	XID* /* id */,
	unsigned char* templateData ,
	long templateDataLength 
#endif
);

Status XSpeechTemplateEnable(
#if NeedFunctionPrototypes
	Display*		/* display */,
	XID /* id */,
	unsigned char*      /* conditoin */,
	long /* size */
#endif
);

Status XSpeechButton(
#if NeedFunctionPrototypes
	Display*		/* display */,
	int /* direction */,
	int /* value */
#endif
);

Status XSpeechVocabularyEnable(
#if NeedFunctionPrototypes
    Display*		/* display */,
		XID /* vocabulary */,
    unsigned char*			/* conditoin buffer */,
    long			/* condition size */
#endif
);

Status XSpeechVocabularyAdd(
#if NeedFunctionPrototypes
    Display*		/* display */,
		XID /* vocabulary */,
    XID			/* word */
#endif
);

Status XSpeechVocabularyRemove(
#if NeedFunctionPrototypes
    Display*		/* display */,
		XID /* vocabulary */,
    XID			/* word */
#endif
);

Status XSpeechEventInterest(
#if NeedFunctionPrototypes
    Display*		/* display */,
		unsigned long /* events */
#endif
);

/* functions that don't generate protocol */

Status XSpeechVocabularyCreate(
#if NeedFunctionPrototypes
    Display*		/* display */,
		XID* /* vocabulary */
#endif
);

/* functions for spanel */

Status XSpeechTemplateNew(
#if NeedFunctionPrototypes
    Display*		/* display */,
		char* /* name */,
		char* /* action */,
		unsigned char*      /* condition */,
		long /* condition size */,
		XID* /* id */
#endif
);

Status XSpeechTemplateInfo(
#if NeedFunctionPrototypes
    Display*		/* display */,
		XID /* word */,
		char** /* name */,
		char** /* action */,
		long* /* trains */,
		long* /* lastScore */,
		long* /* active */,
		unsigned char** /* condition buffer */,
		long* /* condition Size */,
		char** /* origin */,
		char** /* application */
#endif
);

Status XSpeechTemplateList(
#if NeedFunctionPrototypes
    Display*		/* display */,
		XID** /* templates */,
		long* /* nTemplates */
#endif
);

Status XSpeechTemplateActiveList(
#if NeedFunctionPrototypes
    Display*		/* display */,
		XID** /* templates */,
		long* /* nTemplates */
#endif
);

Status XSpeechSetAppName(
#if NeedFunctionPrototypes
    Display*		/* display */,
		char* /* name */
#endif
);

Status XSpeechTemplateDownload(
#if NeedFunctionPrototypes
    Display*		/* display */,
		XID /* word */,
		unsigned char**	/* data */,
		long*	/* length */
#endif
);

Status XSpeechGetToken(
#if NeedFunctionPrototypes
    Display*		/* display */,
		XID*	/* id */
#endif
);

Status XSpeechFreeToken(
#if NeedFunctionPrototypes
    Display*		/* display */,
		XID	/* id */
#endif
);

#ifdef __cplusplus
}						/* for C++ V2.0 */
#endif

#endif
