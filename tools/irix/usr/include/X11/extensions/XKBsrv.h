/* $XConsortium: XKBsrv.h,v 1.11 94/04/08 15:07:52 erik Exp $ */
/************************************************************
Copyright (c) 1993 by Silicon Graphics Computer Systems, Inc.

Permission to use, copy, modify, and distribute this
software and its documentation for any purpose and without
fee is hereby granted, provided that the above copyright
notice appear in all copies and that both that copyright
notice and this permission notice appear in supporting
documentation, and that the name of Silicon Graphics not be 
used in advertising or publicity pertaining to distribution 
of the software without specific prior written permission.
Silicon Graphics makes no representation about the suitability 
of this software for any purpose. It is provided "as is"
without any express or implied warranty.

SILICON GRAPHICS DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS 
SOFTWARE, INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY 
AND FITNESS FOR A PARTICULAR PURPOSE. IN NO EVENT SHALL SILICON
GRAPHICS BE LIABLE FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL 
DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, 
DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE 
OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION  WITH
THE USE OR PERFORMANCE OF THIS SOFTWARE.

********************************************************/

#ifndef _XKBSRV_H_
#define	_XKBSRV_H_

#include <X11/extensions/XKBproto.h>
#include <X11/extensions/XKBstr.h>

typedef struct _XkbInterestRec {
	struct _XkbSrvInfo	*kbd;
	ClientRec		*client;
	CARD16			 stateNotifyMask;
	CARD16			 namesNotifyMask;
	CARD32 			 ctrlsNotifyMask;
	CARD8			 compatNotifyMask;
	BOOL			 bellNotifyWanted;
	BOOL			 actionMessageWanted;
	CARD8			 slowKeyNotifyMask;
	CARD32			 iStateNotifyMask;
	CARD32			 iMapNotifyMask;
	CARD16			 altSymsNotifyMask;
	XID			 resource;
	struct _XkbInterestRec	*next;
} XkbInterestRec,*XkbInterestPtr;

typedef struct _XkbRadioGroup {
	CARD8		flags;
	CARD8		nMembers;
	CARD8		dfltDown;
	CARD8		currentDown;
	CARD8		members[XkbRGMaxMembers];
} XkbRadioGroupRec, *XkbRadioGroupPtr;

#define	_OFF_TIMER		0
#define	_KRG_WARN_TIMER		1
#define	_KRG_TIMER		2
#define	_SK_TIMEOUT_TIMER	3
#define	_ALL_TIMEOUT_TIMER	4

#define	_BEEP_NONE		0
#define	_BEEP_FEATURE_ON	1
#define	_BEEP_FEATURE_OFF	2
#define	_BEEP_FEATURE_CHANGE	3
#define	_BEEP_SLOW_WARN		4
#define	_BEEP_SLOW_PRESS	5
#define	_BEEP_SLOW_ACCEPT	6
#define	_BEEP_SLOW_REJECT	7
#define	_BEEP_STICKY_LATCH	8
#define	_BEEP_STICKY_LOCK	9
#define	_BEEP_STICKY_UNLOCK	10
#define	_BEEP_LED_ON		11
#define	_BEEP_LED_OFF		12
#define	_BEEP_LED_CHANGE	13

typedef struct _XkbSrvInfo {
	XkbStateRec	 state;
	XkbControlsRec	 Controls;
	XkbServerMapRec	 Server;
	XkbClientMapRec	 Map;
	XkbIndicatorRec	 Indicators;
	XkbNamesRec	 Names;
	XkbCompatRec	 Compat;
	XkbDescRec	 desc;

	DeviceIntRec	*device;

	XkbRadioGroupRec *radioGroups;
	CARD8		 nRadioGroups;
	CARD8		 clearMods;
	CARD8		 setMods;
	INT16		 groupChange;

	CARD16		 dfltPtrDelta;

	double		 mouseKeysCurve;
	double		 mouseKeysCurveFactor;
	INT16		 mouseKeysDX;
	INT16		 mouseKeysDY;
	CARD8		 mouseKeysAccel;
	CARD8		 mouseKeysCounter;

	CARD8		 lockedPtrButtons;
	CARD8		 shiftKeyCount;
	KeyCode		 mouseKey;
	KeyCode		 inactiveKey;
	KeyCode		 slowKey;
	KeyCode		 repeatKey;
	CARD8		 krgTimerActive;
	CARD8		 beepType;
	CARD8		 beepCount;

	CARD32		 accessXFlags;
	CARD32		 lastPtrEventTime;
	OsTimerPtr	 beepTimer;
	OsTimerPtr	 mouseKeyTimer;
	OsTimerPtr	 slowKeysTimer;
	OsTimerPtr	 bounceKeysTimer;
	OsTimerPtr	 repeatKeyTimer;
	OsTimerPtr	 krgTimer;

	CARD8		 compatLookupState;
	CARD8		 compatGrabState;
	CARD16		 lookupState;
	CARD16		 grabState;

 	struct {
	    CARD32		 usesBase;
	    CARD32		 usesLatched;
	    CARD32		 usesLocked;
	    CARD32		 usesEffective;
	    CARD32		 usesCompat;
	    CARD32		 usesControls;
	    CARD32		 usedComponents;
	    CARD32		 haveMap;
	} iAccel;
	CARD32		 iStateAuto;
	CARD32		 iStateExplicit;
	CARD32		 iStateEffective;

	CARD8		 repeat[32];

	XkbInterestRec	*interest;
} XkbSrvInfoRec, *XkbSrvInfoPtr;

/************************************************************************
 *
 * Masks for setting/determining the accessx ctrl state.
 */
#define ALLOW_ACCESSX_MASK              (1 << 0)
#define MOUSE_KEYS_MASK                 (1 << 2)
#define TOGGLE_KEYS_MASK                (1 << 3)
#define TWO_KEYS_MASK                   (1 << 6)
#define TIME_OUT_MASK                   (1 << 7)
#define NO_LOCK_ON_TWO_MASK             (1 << 8)
#define STICKY_ONOFF_SOUND_MASK         (1 << 9)
#define STICKY_MOD_SOUND_MASK           (1 << 10)
#define MOUSE_ONOFF_SOUND_MASK          (1 << 11)
#define TOGGLE_ONOFF_SOUND_MASK         (1 << 12)
#define KRG_ONOFF_SOUND_MASK            (1 << 13)
#define KRG_PRESS_SOUND_MASK            (1 << 14)
#define KRG_ACCEPT_SOUND_MASK           (1 << 15)

#define KRG_MASK                (XkbSlowKeysMask|XkbBounceKeysMask)

#define	ALL_FILTERED_MASK	(XkbRepeatKeysMask|KRG_MASK)
#define ANY_OPTIONS_MASK        (XkbStickyKeysMask|XkbMouseKeysMask|KRG_MASK)

/************************************************************************
 *
 * Masks for setting/determining the accessx status.
 */
#define BLOCK_AND_WAKEUP_MASK   (1 << 0)
#define HOLDING_MOUSE_KEY_MASK  (1 << 1)
#define MOVING_MOUSE_MASK       (1 << 2)
#define MOVING_STEADY_MASK      (1 << 3)
#define HOLDING_KRG_KEY_MASK    (1 << 4)
#define HOLDING_SLOW_KEY_MASK   (1 << 5)
#define ISSUED_WARNING_MASK     (1 << 6)
#define REPEATING_MASK          (1 << 7)
#define CALLED_TWO_KEYS_MASK    (1 << 8)
#define WAITING_TO_TIMEOUT_MASK (1 << 9)

#define X_AccessXStickyKeysOn           0
#define X_AccessXStickyKeysOff          1
#define X_AccessXMouseKeysOn            2
#define X_AccessXMouseKeysOff           3
#define X_AccessXKRGWarning             4
#define X_AccessXKRGOn                  5
#define X_AccessXKRGOff                 6
#define X_AccessXToggleKeysOn           7
#define X_AccessXToggleKeysOff          8
#define X_AccessXToggleKeyDown          9
#define X_AccessXToggleKeyUp            10
#define X_AccessXModifierLatch          11
#define X_AccessXModifierUnlatch        12
#define X_AccessXModifierLock           13
#define X_AccessXModifierUnlock         14
#define X_AccessXPressSlowKey           15
#define X_AccessXAcceptSlowKey          16
#define X_AccessXChangeCurrentButton    17
#define X_AccessXPressButton            18
#define X_AccessXReleaseButton          19

extern int	XkbEventBase;
extern int	XkbDisableLockActions;

#ifdef DEBUG
extern CARD16	xkbDebugFlags;
#endif

_XFUNCPROTOBEGIN

extern DeviceIntPtr XkbLookupDevice(
#if NeedFunctionPrototypes
    int			/* id */
#endif
);

extern Bool XkbApplyVirtualModChanges(
#if NeedFunctionPrototypes
    XkbSrvInfoPtr	/* xkb */,
    unsigned		/* changed */,
    XkbChangesPtr	/* pChanges */
#endif
);

extern	unsigned XkbMaskForVMask(
#if NeedFunctionPrototypes
    XkbDescPtr		/* xkb */,
    unsigned		/* vmask */
#endif
);

extern KeySym *_XkbNewSymsForKey(
#if NeedFunctionPrototypes
    XkbDescRec *	/* xkb */,
    unsigned 		/* key */,
    unsigned 		/* needed */
#endif
);

extern XkbAction *_XkbNewActionsForKey(
#if NeedFunctionPrototypes
    XkbDescRec *	/* xkb */,
    unsigned 		/* key */,
    unsigned 		/* needed */
#endif
);

extern void XkbUpdateKeyTypes(
#if NeedFunctionPrototypes
    DeviceIntPtr	/* pXDev */,
    KeyCode 		/* first */,
    CARD8 		/* num */,
    XkbChangesPtr	/* pChanges */
#endif
);

extern void XkbUpdateKeyTypesFromCore(
#if NeedFunctionPrototypes
    DeviceIntPtr	/* pXDev */,
    KeyCode 		/* first */,
    CARD8 		/* num */,
    XkbChangesPtr	/* pChanges */
#endif
);

void
XkbUpdateActions(
#if NeedFunctionPrototypes
    DeviceIntPtr	/* pXDev */,
    KeyCode 		/* first */,
    CARD8 		/* num */,
    XkbChangesPtr  	/* pChanges */
#endif
);

extern void XkbApplyMappingChange(
#if NeedFunctionPrototypes
    DeviceIntPtr	/* pXDev */,
    CARD8 		/* request */,
    KeyCode 		/* firstKey */,
    CARD8 		/* num */
#endif
);

extern void XkbSetIndicators(
#if NeedFunctionPrototypes
    DeviceIntPtr		/* pXDev */,
    CARD32			/* affect */,
    CARD32			/* values */,
    XkbIndicatorChangesPtr	/* pChanges */
#endif
);

extern void XkbUpdateIndicators(
#if NeedFunctionPrototypes
    DeviceIntPtr		/* keybd */,
    CARD32		 	/* changed */,
    XkbIndicatorChangesRec *	/* pChanges */
#endif
);

extern void XkbComputeDerivedState(
#if NeedFunctionPrototypes
    XkbSrvInfoRec *		/* xkb */
#endif
);

extern unsigned XkbStateChangedFlags(
#if NeedFunctionPrototypes
    XkbStateRec *	/* old */,
    XkbStateRec *	/* new */
#endif
);

extern	void XkbSendStateNotify(
#if NeedFunctionPrototypes
       DeviceIntPtr	/* kbd */,
       xkbStateNotify *	/* pSN */
#endif
);

extern	void XkbSendMapNotify(
#if NeedFunctionPrototypes
       DeviceIntPtr	/* kbd */,
       xkbMapNotify *	/* ev */
#endif
);

extern	int  XkbComputeControlsNotify(
#if NeedFunctionPrototypes
	DeviceIntPtr		/* kbd */,
	XkbControlsRec *	/* old */,
	XkbControlsRec *	/* new */,
	xkbControlsNotify *	/* pCN */
#endif
);

extern	void XkbSendControlsNotify(
#if NeedFunctionPrototypes
       DeviceIntPtr		/* kbd */,
       xkbControlsNotify *	/* ev */
#endif
);

extern	void XkbSendIndicatorNotify(
#if NeedFunctionPrototypes
       DeviceIntPtr		/* kbd */,
       xkbIndicatorNotify *	/* ev */
#endif
);

extern	void XkbHandleBell(
#if NeedFunctionPrototypes
       BOOL		/* force */,
       DeviceIntPtr	/* kbd */,
       CARD8		/* percent */,
       pointer 		/* ctrl */,
       CARD8		/* class */,
       Atom		/* name */,
       WindowPtr	/* pWin */,
       ClientPtr	/* pClient */
#endif
);

extern	void XkbSendSlowKeyNotify(
#if NeedFunctionPrototypes
       DeviceIntPtr		/* kbd */,
       xkbSlowKeyNotify *	/* pEv */
#endif
);

extern	void XkbSendNamesNotify(
#if NeedFunctionPrototypes
       DeviceIntPtr	/* kbd */,
       xkbNamesNotify *	/* ev */
#endif
);

extern	void XkbSendCompatNotify(
#if NeedFunctionPrototypes
       DeviceIntPtr		/* kbd */,
       xkbCompatMapNotify *	/* ev */
#endif
);

extern	void XkbSendActionMessage(
#if NeedFunctionPrototypes
       DeviceIntPtr		/* kbd */,
       xkbActionMessage *	/* ev */
#endif
);

extern void XkbSendNotification(
#if NeedFunctionPrototypes
    DeviceIntPtr		/* kbd */,
    XkbChangesRec *		/* pChanges */,
    unsigned			/* keycode */,
    unsigned			/* eventType */,
    unsigned			/* reqMajor */,
    unsigned			/* reqMinor */
#endif
);

extern void XkbProcessKeyboardEvent(
#if NeedFunctionPrototypes
    xEvent * 			/* xE */,
    DeviceIntPtr		/* keybd */,
    int 			/* count */
#endif
);

extern	XkbInterestRec *XkbFindClientResource(
#if NeedFunctionPrototypes
       DevicePtr	/* inDev */,
       ClientPtr	/* client */
#endif
);

extern	XkbInterestRec *XkbAddClientResource(
#if NeedFunctionPrototypes
       DevicePtr	/* inDev */,
       ClientPtr	/* client */,
       XID		/* id */
#endif
);

extern	int XkbRemoveClient(
#if NeedFunctionPrototypes
       DevicePtr	/* inDev */,
       ClientPtr	/* client */
#endif
);

extern	int XkbRemoveResourceClient(
#if NeedFunctionPrototypes
       DevicePtr	/* inDev */,
       XID		/* id */
#endif
);

extern	void DDXUpdateIndicators(
#if NeedFunctionPrototypes
	DeviceIntPtr	/* keybd */,
	CARD32		/* oldState */,
	CARD32		/* newState */
#endif
);

extern	void XkbDisableComputedAutoRepeats(
#if NeedFunctionPrototypes
    DeviceIntPtr 	/* pXDev */,
    unsigned		/* key */
#endif
);

extern	void XkbSetRepeatKeys(
#if NeedFunctionPrototypes
    DeviceIntPtr 	/* pXDev */,
    int		 	/* onoff */
#endif
);

extern	int XkbUsesSoftRepeat(
#if NeedFunctionPrototypes
    DeviceIntPtr 	/* pXDev */
#endif
);

extern	int SProcXkbDispatch(
#if NeedFunctionPrototypes
	ClientPtr	/* client */
#endif
);

#ifdef XKMFORMAT_H

extern Bool	XkmReadTOC(
#if NeedFunctionPrototypes
    FILE *              /* file */,
    XkbDescPtr          /* xkb */,
    xkmFileInfo *       /* file_info */,
    int                 /* max_toc */,
    xkmSectionInfo *    /* toc */
#endif
);

extern xkmSectionInfo *XkmFindTOCEntry(
#if NeedFunctionPrototypes
    xkmFileInfo *       /* finfo */,
    xkmSectionInfo *    /* toc */,
    unsigned            /* type */
#endif
);

extern Bool	XkmReadFileSection(
#if NeedFunctionPrototypes
    FILE *              /* file */,
    xkmSectionInfo *    /* toc */,
    DeviceIntRec *      /* dev */,
    unsigned *          /* loaded_rtrn */
#endif
);

extern	Bool XkmReadFile(
#if NeedFunctionPrototypes
    FILE *              /* file */,
    unsigned            /* type */,
    DeviceIntRec *      /* dev */,
    unsigned *          /* loaded_rtrn */
#endif
);
#endif /* XKMFORMAT_H */

_XFUNCPROTOEND

	/*
	 * bits in xkbClientFlags field of 
	 * ClientRec structure
	 */
#define	XKB_INITIALIZED	(1<<0)
#define	XkbIMMEDIATE	(1<<1)

#endif /* _XKBSRV_H_ */
