/***************************************
 common to both server and client
 ***************************************/

#ifndef _XSPEECH_PROTO_H_
#define _XSPEECH_PROTO_H_

#ifdef __cplusplus			/* do not leave open across includes */
extern "C" {					/* for C++ V2.0 */
#endif

#define SpeechExtensionName	"Speech"

#define SpeechMajorVersion	0
#define SpeechMinorVersion	3

#define SpeechRecognitionEventOrdinal		0
#define SpeechPoorMatchEventOrdinal			1
#define SpeechRejectionEventOrdinal			1
#define SpeechAmbiguousMatchEventOrdinal	2
#define SpeechErrorEventOrdinal					3
#define SpeechUpdateEventOrdinal					4
#define SpeechTrainNeededEventOrdinal		5
/* make some room for now so server recompile not required */
#define SpeechLastEventOrdinal						9
#define SpeechEventNum	(SpeechLastEventOrdinal + 1)

#define SpeechErrorNum	0
/* make some room for now so server recompile not required */
#undef SpeechErrorNum
#define SpeechErrorNum	10

/****************************************

  X's stupid naming conventions:

	xNameReq is structure of request
	sz_xNameReq is #define of length of req in bytes of 4
	xNameReply is structure of reply
	sz_xNameReply is #define of length of req in bytes of 4
	xNameEvent is structure of event
	X_Name is #define minor op code

 ****************************************/

/* request codes */

#define X_SpeechVersion        0
#define X_SpeechSetAppName     1
#define X_SpeechUnload         2
#define X_SpeechVerbose        3

#define X_SpeechSetEnable      10
#define X_SpeechGetEnable      11

#define X_SpeechTemplate           20
#define X_SpeechTemplateEnable     21
#define X_SpeechTemplateNew        22
#define X_SpeechTemplateUpload     23
#define X_SpeechTemplateDownload   24
#define X_SpeechTemplateInfo       25
#define X_SpeechTemplateList       26
#define X_SpeechTemplateActiveList 27
#define X_SpeechTemplateDelete     28

#define X_SpeechTrainTemplate            30
#define X_SpeechUntrainTemplate          31
#define X_SpeechTrainTemplateWithToken   32
#define X_SpeechUntrainTemplateWithToken 33

#define X_SpeechGetToken      40
#define X_SpeechFreeToken     41

#define X_SpeechVocabularyEnable   50
#define X_SpeechVocabularyAdd      51
#define X_SpeechVocabularyRemove   52
#define X_SpeechVocabularyDelete   53

#define X_SpeechEventInterest    60

#define X_SpeechThreshold        70

#define X_SpeechReportRecognition  80
#define X_SpeechAGC                81
#define X_SpeechPlayback           82
#define X_SpeechSynthesis          83
#define X_SpeechButton             84

/* event types */

/* error codes */

#ifdef __cplusplus
}						/* for C++ V2.0 */
#endif

typedef enum
{
	SpeechConditionOff,
	SpeechConditionGlobal,
	SpeechConditionWindow,
	SpeechConditionClass,
	SpeechConditionName,
	SpeechConditionBogus
	} SpeechConditions ;

typedef enum
{
	SpeechEnableNone,
	SpeechEnableNormal,
	SpeechEnableOmni,
	/* SpeechEnableLocked, */
	SpeechEnableBogus
	} SpeechEnables ;

typedef enum
{
	SpeechUpdateNone,
	SpeechUpdateRemove,
	SpeechUpdateAdd,
	SpeechUpdateChange,
	SpeechUpdateFocus,
	SpeechUpdateTrain,
	SpeechUpdateUntrain,
	SpeechUpdateLock,
	SpeechUpdateAddApp,
	SpeechUpdateRemoveApp,
	SpeechUpdataBogus
	} SpeechUpdates ;

#define SpeechRecognitionEventInterest		 ( 1 << SpeechRecognitionEventOrdinal )
#define SpeechPoorMatchEventInterest			 ( 1 << SpeechPoorMatchEventOrdinal )
#define SpeechRejectionEventInterest			 ( 1 << SpeechRejectionEventOrdinal )
#define SpeechAmbiguousMatchEventInterest	 ( 1 << SpeechAmbiguousMatchEventOrdinal )
#define SpeechErrorEventInterest					 ( 1 << SpeechErrorEventOrdinal )
#define SpeechUpdateEventInterest					 ( 1 << SpeechUpdateEventOrdinal )
#define SpeechOmniClientInterest					 ( 1 << SpeechLastEventOrdinal )

typedef enum
{
  SpeechEpRcgOK,
  SpeechEpEndSilTooShort,
  SpeechEpTooSoon,
  SpeechEpTooLow,
  SpeechEpNotriggle,
  SpeechEpNoData,
  SpeechEpTooLong,
  SpeechRcgTooBad,
  SpeechRcgTooClose,
  SpeechRcgNoMatch,
  SpeechRcgBogus
  } SpeechReturnErrorCodes ;

typedef struct { long code ; char* string ; } SpeechErrorMessages ;
static const SpeechErrorMessages speechErrorMessages[] =
{
	{ SpeechEpRcgOK,					"OK" },
	{ SpeechEpEndSilTooShort,	"Short Ending Silence" },
	{ SpeechEpTooSoon,				"Spoke Too Soon" },
	{ SpeechEpTooLow,					"Level Too Low" },
	{ SpeechEpNotriggle,			"No Trigger" },
	{ SpeechEpNoData,					"No Data" },
	{ SpeechEpTooLong,				"Spoke Too Long" },
	{ SpeechRcgTooBad,				"Poor Recognition" },
	{ SpeechRcgTooClose,			"Close Recognition" },
	{ SpeechRcgNoMatch,				"No Match" },
	{ SpeechRcgBogus,					"Bogus" }
	} ;

#define INTS(n) ( ( (n) + 3 ) / 4 )
#define BYTES(n) ( INTS( (n) ) * 4 )

#endif
