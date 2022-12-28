/***************************************
 server interface - wire protocol
 ***************************************/

/**** these are no longer listed in any organized manner */

#include	<XSpeechProto.h>

/***************************************
 requests only
 ***************************************/

typedef struct _SpeechUnloadReq
{
	CARD8 reqType;			/* assert SpeechMajorOpCode */
	CARD8 speechRequestType;	/* assert client->noClientException */
	CARD16 length;			/* assert 1 */
	} xSpeechUnloadReq ;
#define sz_xSpeechUnloadReq (1*4)

typedef struct _SpeechVerboseReq
{
	CARD8 reqType;			/* assert SpeechMajorOpCode */
	CARD8 speechRequestType;	/* assert client->noClientException */
	CARD16 length;			/* assert 1 */
	CARD32 enable ;			/* flag for enabling */
	} xSpeechVerboseReq ;
#define sz_xSpeechVerboseReq (2*4)

typedef struct _SpeechReportRecognitionReq
{
	CARD8 reqType;			/* assert SpeechMajorOpCode */
	CARD8 speechRequestType;	/* assert client->noClientException */
	CARD16 length;			/* assert 1 */
	XID id ;			
	} xSpeechReportRecognitionReq ;
#define sz_xSpeechReportRecognitionReq (2*4)

typedef struct _SpeechAGCReq
{
	CARD8 reqType;			/* assert SpeechMajorOpCode */
	CARD8 speechRequestType;	/* assert client->noClientException */
	CARD16 length;			/* assert 1 */
	CARD32 enable ;			/* flag for enabling */
	} xSpeechAGCReq ;
#define sz_xSpeechAGCReq (2*4)

typedef struct _SpeechSynthesisReq
{
	CARD8 reqType;			/* assert SpeechMajorOpCode */
	CARD8 speechRequestType;	/* assert client->noClientException */
	CARD16 length;			/* assert 1 */
	CARD32 textLength ;
	} xSpeechSynthesisReq ;
#define sz_xSpeechSynthesisReq (2*4)

typedef struct _SpeechPlaybackReq
{
	CARD8 reqType;			/* assert SpeechMajorOpCode */
	CARD8 speechRequestType;	/* assert client->noClientException */
	CARD16 length;			/* assert 1 */
	CARD32 enable ;			/* not used enabling */
	} xSpeechPlaybackReq ;
#define sz_xSpeechPlaybackReq (2*4)

typedef struct _SpeechTrainTemplateReq
{
	CARD8 reqType;			/* assert SpeechMajorOpCode */
	CARD8 speechRequestType;	/* assert client->noClientException */
	CARD16 length;			/* assert 1 */
	CARD32 id ;					/* template to train */
	} xSpeechTrainTemplateReq ;
#define sz_xSpeechTrainTemplateReq (2*4)

typedef struct _SpeechUntrainTemplateReq
{
	CARD8 reqType;			/* assert SpeechMajorOpCode */
	CARD8 speechRequestType;	/* assert client->noClientException */
	CARD16 length;			/* assert 1 */
	CARD32 id ;					/* template to untrain */
	CARD32 dataLength ;					/* template to untrain */
	} xSpeechUntrainTemplateReq ;
#define sz_xSpeechUntrainTemplateReq (3*4)

typedef struct _SpeechTrainTemplateWithTokenReq
{
	CARD8 reqType;			/* assert SpeechMajorOpCode */
	CARD8 speechRequestType;	/* assert client->noClientException */
	CARD16 length;			/* assert 1 */
	CARD32 templateID ;					/* template to train */
	CARD32 tokenID ;				
	} xSpeechTrainTemplateWithTokenReq ;
#define sz_xSpeechTrainTemplateWithTokenReq (3*4)

typedef struct _SpeechUntrainTemplateWithTokenReq
{
	CARD8 reqType;			/* assert SpeechMajorOpCode */
	CARD8 speechRequestType;	/* assert client->noClientException */
	CARD16 length;			/* assert 1 */
	CARD32 templateID ;					/* template to train */
	CARD32 tokenID ;					
	} xSpeechUntrainTemplateWithTokenReq ;
#define sz_xSpeechUntrainTemplateWithTokenReq (3*4)

typedef struct _SpeechSetAppNameReq
{
	CARD8 reqType;
	CARD8 speechRequestType;
	CARD16 length;
	CARD32 nameLength ;
	} xSpeechSetAppNameReq ;
#define sz_xSpeechSetAppNameReq (2*4)

typedef struct _SpeechSetEnableReq
{
	CARD8 reqType;			/* assert SpeechMajorOpCode */
	CARD8 speechRequestType;	/* assert SpeechSetEnableMinorOpcode */
	CARD16 length;			/* assert 2 */
	CARD32 enable ;			/* flag for enabling */
	} xSpeechSetEnableReq ;
#define sz_xSpeechSetEnableReq (2*4)

typedef struct _SpeechGetEnableReq
{
	CARD8 reqType;			/* assert SpeechMajorOpCode */
	CARD8 speechRequestType;	/* assert SpeechGetEnableMinorOpcode */
	CARD16 length;			/* assert 2 */
	CARD32 enable ;			/* flag for enabling */
	} xSpeechGetEnableReq ;
#define sz_xSpeechGetEnableReq (2*4)
typedef struct _SpeechGetEnableReply
{
	CARD8 replyType;		/* assert X_Reply */
	CARD8 pad;
	CARD16 sequenceNumber B16;
	CARD32 length;			/* 0 */
	CARD32 enable ;
	CARD32 pad0 ;
	CARD32 pad1 ;
	CARD32 pad2 ;
	CARD32 pad3 ;
	CARD32 pad4 ;
	} xSpeechGetEnableReply ;
#define sz_xSpeechGetEnableReply (8*4)

typedef struct _SpeechVocabularyEnableReq
{
	CARD8 reqType;
	CARD8 speechRequestType;
	CARD16 length;
	CARD32 vocabulary ;
	CARD32  conditionSize ;  /* created in app by XCreate*Windiow */
	} xSpeechVocabularyEnableReq ;
#define sz_xSpeechVocabularyEnableReq (3*4)

typedef struct _SpeechVocabularyAddReq
{
	CARD8 reqType;
	CARD8 speechRequestType;
	CARD16 length;
	CARD32 vocabulary ;
	CARD32 word ;
	} xSpeechVocabularyAddReq ;
#define sz_xSpeechVocabularyAddReq (3*4)

typedef struct _SpeechVocabularyRemoveReq
{
	CARD8 reqType;
	CARD8 speechRequestType;
	CARD16 length;
	CARD32 vocabulary ;
	CARD32 word ;
	} xSpeechVocabularyRemoveReq ;
#define sz_xSpeechVocabularyRemoveReq (3*4)

typedef struct _SpeechEventInterestReq
{
	CARD8 reqType;
	CARD8 speechRequestType;
	CARD16 length;
	CARD32 events ;
	} xSpeechEventInterestReq ;
#define sz_xSpeechEventInterestReq (2*4)

/***************************************
 requests with replies
 ***************************************/

/***************************************
 version
 ***************************************/

typedef struct _SpeechVersionReq
{
	CARD8 reqType;			/* assert SpeechMajorOpCode */
	CARD8 speechRequestType;	/* assert client->noClientException */
	CARD16 length;			/* assert 1 */
	} xSpeechVersionReq ;
#define sz_xSpeechVersionReq (1*4)
typedef struct _SpeechVersionReply
{
	CARD8 replyType;		/* assert X_Reply */
	CARD8 pad;
	CARD16 sequenceNumber B16;
	CARD32 length;			/* 0 */
	CARD32 majorVersion ;
	CARD32 minorVersion ;
	CARD32 pad1 ;
	CARD32 pad2 ;
	CARD32 pad3 ;
	CARD32 pad4 ;
	} xSpeechVersionReply ;
#define sz_xSpeechVersionReply (8*4)

typedef struct _SpeechThresholdReq
{
	CARD8 reqType;			/* assert SpeechMajorOpCode */
	CARD8 speechRequestType;	/* assert client->noClientException */
	CARD16 length;			/* assert 1 */
	CARD32 score ;
	CARD32 delta ;
	} xSpeechThresholdReq ;
#define sz_xSpeechThresholdReq (3*4)
typedef struct _SpeechThresholdReply
{
	CARD8 replyType;		/* assert X_Reply */
	CARD8 pad;
	CARD16 sequenceNumber B16;
	CARD32 length;			/* 0 */
	CARD32 score ;
	CARD32 delta ;
	CARD32 pad1 ;
	CARD32 pad2 ;
	CARD32 pad3 ;
	CARD32 pad4 ;
	} xSpeechThresholdReply ;
#define sz_xSpeechThresholdReply (8*4)

/***************************************
 template
 ***************************************/

typedef struct _SpeechTemplateReq
{
	CARD8	reqType;
	CARD8	speechRequestType;
	CARD16	length;
	CARD32  id B32 ;  /* create in client lib using XAllocID */
	CARD32	nameLength ;  /* data follows after request */
	CARD32	actionLength ;  /* data follows after request */
	CARD32  conditionSize ;  /* condition buffer */
	} xSpeechTemplateReq ;
#define sz_xSpeechTemplateReq (5*4)
typedef struct _SpeechTemplateReply
{
	CARD8 replyType;		/* assert X_Reply */
	CARD8 pad;
	CARD16 sequenceNumber B16;
	CARD32 length;			/* 0 */
	CARD32 id B32 ;
	CARD32 loaded ;
	CARD32 enable ;
	CARD32 pad2 ;
	CARD32 pad3 ;
	CARD32 pad4 ;
	} xSpeechTemplateReply ;
#define sz_xSpeechTemplateReply (8*4)

typedef struct _SpeechTemplateDeleteReq
{
	CARD8	reqType;
	CARD8	speechRequestType;
	CARD16	length;
	CARD32  id B32 ;
	} xSpeechTemplateDeleteReq ;
#define sz_xSpeechTemplateDeleteReq (2*4)

typedef struct _SpeechVocabularyDeleteReq
{
	CARD8	reqType;
	CARD8	speechRequestType;
	CARD16	length;
	CARD32  id B32 ;
	} xSpeechVocabularyDeleteReq ;
#define sz_xSpeechVocabularyDeleteReq (2*4)

typedef struct _SpeechTemplateUploadReq
{
	CARD8 reqType;
	CARD8 speechRequestType;
	CARD16 length;
	CARD32  id B32 ;  /* create in client lib using XAllocID */
	CARD32	nameLength ;  /* followed by name */
	CARD32	actionLength ;  /* data follows after request */
	CARD32	conditionSize ;		/* focus, exclusion, window, ... */
	CARD32	dataSize ;  /* followed by data */
	} xSpeechTemplateUploadReq ;
#define sz_xSpeechTemplateUploadReq (6*4)

typedef struct _SpeechTemplateDownloadReq
{
	CARD8 reqType;
	CARD8 speechRequestType;
	CARD16 length;
	CARD32  id B32 ;  /* create in client lib using XAllocID */
	} xSpeechTemplateDownloadReq ;
#define sz_xSpeechTemplateDownloadReq (2*4)
typedef struct _SpeechTemplateDownloadReply
{
	CARD8 replyType;		/* assert X_Reply */
	CARD8 pad;
	CARD16 sequenceNumber B16;
	CARD32 length;
	CARD32 id B32 ;
	CARD32 PADtrainCount ;
	CARD32 PADscore ;
	CARD32 PADactive ;
	CARD32 PADcondition ;
	/* CARD32 PADwindow ; */
	/* CARD32 PADnameLength ; */
	/* CARD32 PADoriginLength ; */
	CARD32 dataLength ;
	} xSpeechTemplateDownloadReply ;
#define sz_xSpeechTemplateDownloadReply (8*4)

typedef struct _SpeechGetTokenReq
{
	CARD8 reqType;
	CARD8 speechRequestType;
	CARD16 length;
	CARD32 id ;
	} xSpeechGetTokenReq ;
#define sz_xSpeechGetTokenReq (2*4)
#ifdef CLIENT_TOKEN
typedef struct _SpeechGetTokenReply
{
	CARD8 replyType;		/* assert X_Reply */
	CARD8 pad;
	CARD16 sequenceNumber B16;
	CARD32 length;
	CARD32 dataLength ;
	CARD32 PADid ;
	CARD32 PADtrainCount ;
	CARD32 PADscore ;
	CARD32 PADactive ;
	CARD32 PADcondition ;
	} xSpeechGetTokenReply ;
#define sz_xSpeechGetTokenReply (8*4)
#else
typedef struct _SpeechFreeTokenReq
{
	CARD8 reqType;
	CARD8 speechRequestType;
	CARD16 length;
	CARD32 id ;
	} xSpeechFreeTokenReq ;
#define sz_xSpeechFreeTokenReq (2*4)
#endif

typedef struct _SpeechTemplateNewReq
{
	CARD8	reqType;
	CARD8	speechRequestType;
	CARD16	length;
	CARD32  id B32 ;  /* create in client lib using XAllocID */
	CARD32	conditionSize ;		/* focus, exclusion, window, ... */
	CARD32	nameLength ;  /* followed by data */
	CARD32	actionLength ;  /* data follows after request */
	} xSpeechTemplateNewReq ;
#define sz_xSpeechTemplateNewReq (5*4)

typedef struct _SpeechTemplateInfoReq
{
	CARD8	reqType;
	CARD8	speechRequestType;
	CARD16	length;
	CARD32  id B32 ;
	} xSpeechTemplateInfoReq ;
#define sz_xSpeechTemplateInfoReq (2*4)
typedef struct _SpeechTemplateInfoReply
{
	CARD8 replyType;		/* assert X_Reply */
	CARD8 pad;
	CARD16 sequenceNumber B16;
	CARD32 length;			/* 0 */
	CARD32 id B32 ;
	CARD32 trainCount ;
	CARD32 score ;
	CARD32 active ;
	CARD32 conditionSize ;
	CARD32 nameLength ;
	CARD32 actionLength ;
	CARD32 originLength ;
	CARD32 applicationLength ;
	} xSpeechTemplateInfoReply ;
#define sz_xSpeechTemplateInfoReply (11*4)

typedef struct _SpeechTemplateListReq
{
	CARD8	reqType;
	CARD8	speechRequestType;
	CARD16	length;
	} xSpeechTemplateListReq ;
#define sz_xSpeechTemplateListReq (1*4)
typedef struct _SpeechTemplateActiveListReq
{
	CARD8	reqType;
	CARD8	speechRequestType;
	CARD16	length;
	} xSpeechTemplateActiveListReq ;
#define sz_xSpeechTemplateActiveListReq (1*4)
typedef struct _SpeechTemplateListReply
{
	CARD8 replyType;		/* assert X_Reply */
	CARD8 pad;
	CARD16 sequenceNumber B16;
	CARD32 length;			/* 0 */
	CARD32 numTemplates ;
	CARD32 pad4 ;
	CARD32 pad5 ;
	CARD32 pad6 ;
	CARD32 pad7 ;
	CARD32 pad8 ;
	} xSpeechTemplateListReply ;
/* #define sz_xSpeechTemplateListReply (3*4) */
#define sz_xSpeechTemplateListReply (8*4)
typedef xSpeechTemplateListReply xSpeechTemplateActiveListReply ;

/***************************************
 template enable
 ***************************************/

typedef struct _SpeechTemplateEnableReq
{
	CARD8	reqType;		/* assert SpeechMajorOpCode */
	CARD8	speechRequestType;	/* assert SpeechEnableMinorOpcode */
	CARD16	length;			/* length of request packet */
	CARD32	id B32 ;
	CARD32	conditionSize ;		/* focus, exclusion, window, ... */
	} xSpeechTemplateEnableReq ;
#define sz_xSpeechTemplateEnableReq (3*4)

/***************************************
 pretend keystrokes
 ***************************************/

typedef struct _SpeechButtonReq
{
	CARD8	reqType;		/* assert SpeechMajorOpCode */
	CARD8	speechRequestType;	/* assert SpeechEnableMinorOpcode */
	CARD16	length;			/* length of request packet */
	CARD32	direction ;
	CARD32	value ;
	} xSpeechButtonReq ;
#define sz_xSpeechButtonReq (3*4)

/***************************************
 event structures
 	SpeechAnyEvent structure must be the first in all events
 ***************************************/

typedef struct _SpeechAnyEvent {
    CARD8	type;
    CARD8	first;	/* first event sent for this action */
    CARD16	sequenceNumber B16;
    /* CARD8	microphone ; */
    CARD32	focusWindow B32;
    CARD32	pointerWindow B32;
    /* CARD32	toplevelWindow B32; */
    Time	time B32;
    /* INT16	x B16; */
    /* INT16	y B16; */
    INT16	root_x B16;
    INT16	root_y B16;
/* #define sz_xSpeechAnyEvent	(5*4) */
} xSpeechAnyEvent;

typedef struct _SpeechRecognitionEvent {
    CARD8	type;
    CARD8	first;
    CARD16	sequenceNumber B16;
    /* CARD8	microphone ; */
    CARD32	focusWindow B32;
    CARD32	pointerWindow B32;
    /* CARD32	toplevelWindow B32; */
    Time	time B32;
    /* INT16	x B16; */
    /* INT16	y B16; */
    INT16	root_x B16;
    INT16	root_y B16;

    CARD32	identifier B32;
    CARD16	score ;
/* #define sz_xSpeechRecognitionEvent	(6.5*4) */
    CARD16	pad0 ;
    CARD32	pad1 ;
} xSpeechRecognitionEvent;

typedef struct _SpeechPoorMatchEvent {
    CARD8	type;
    CARD8	first;
    CARD16	sequenceNumber B16;
    /* CARD8	microphone ; */
    CARD32	focusWindow B32;
    CARD32	pointerWindow B32;
    /* CARD32	toplevelWindow B32; */
    Time	time B32;
    /* INT16	x B16; */
    /* INT16	y B16; */
    INT16	root_x B16;
    INT16	root_y B16;

    CARD32	identifier B32;
    CARD16	score ;
/* #define sz_xSpeechPoorMatchEvent	(5.5*4) */
    CARD16	pad0 ;
    CARD32	pad1 ;
} xSpeechPoorMatchEvent;

typedef struct _SpeechAmbiguousMatchEvent {
    CARD8	type;
    CARD8	first;
    CARD16	sequenceNumber B16;
    /* CARD8	microphone ; */
    CARD32	focusWindow B32;
    CARD32	pointerWindow B32;
    /* CARD32	toplevelWindow B32; */
    Time	time B32;
    /* INT16	x B16; */
    /* INT16	y B16; */
    INT16	root_x B16;
    INT16	root_y B16;

    CARD32	identifier1 B32;
    CARD32	identifier2 B32;
    CARD16	score1 ;
    CARD16	score2 ;
/* #define sz_xSpeechAmbiguousMatchEvent	(8*4) */
} xSpeechAmbiguousMatchEvent;

typedef struct _SpeechErrorEvent {
    CARD8	type;
    CARD8	first;
    CARD16	sequenceNumber B16;
    /* CARD8	microphone ; */
    CARD32	focusWindow B32;
    CARD32	pointerWindow B32;
    /* CARD32	toplevelWindow B32; */
    Time	time B32;
    /* INT16	x B16; */
    /* INT16	y B16; */
    INT16	root_x B16;
    INT16	root_y B16;

    CARD32	errorType B32;
/* #define sz_xSpeechErrorEvent	(6*4) */
    CARD32	pad0 ;
    CARD32	pad1 ;
} xSpeechErrorEvent;

typedef struct _SpeechUpdateEvent {
    CARD8	type;
    CARD8	first;
    CARD16	sequenceNumber B16;
    /* CARD8	microphone ; */
    CARD32	focusWindow B32;
    CARD32	pointerWindow B32;
    /* CARD32	toplevelWindow B32; */
    Time	time B32;
    /* INT16	x B16; */
    /* INT16	y B16; */
    INT16	root_x B16;
    INT16	root_y B16;

    XID	updateType B32;
/* #define sz_xSpeechErrorEvent	(6*4) */
    CARD32	updateID ;
    CARD32	pad1 ;
} xSpeechUpdateEvent;

typedef struct _SpeechTrainNeededEvent {
    CARD8	type;
    CARD8	first;
    CARD16	sequenceNumber B16;
    /* CARD8	microphone ; */
    CARD32	focusWindow B32;
    CARD32	pointerWindow B32;
    /* CARD32	toplevelWindow B32; */
    Time	time B32;
    /* INT16	x B16; */
    /* INT16	y B16; */
    INT16	root_x B16;
    INT16	root_y B16;

    CARD32	trainNeededID ;
    CARD32	pad1 ;
    CARD32	pad2 ;
} xSpeechTrainNeededEvent;

