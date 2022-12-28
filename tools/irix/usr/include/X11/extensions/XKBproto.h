/* $XConsortium: XKBproto.h,v 1.13 94/04/02 14:19:54 erik Exp $ */
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

#ifndef _XKBPROTO_H_
#define	_XKBPROTO_H_

#include <X11/Xmd.h>

#define Window CARD32
#define Atom CARD32
#define Time CARD32
#define KeyCode CARD8
#define KeySym CARD32

#define	XkbPaddedSize(n)	((((unsigned)(n)+3) >> 2) << 2)

typedef struct _xkbUseExtension {
    CARD8	reqType;
    CARD8	xkbReqType;	/* always X_KBUseExtension */
    CARD16	length B16;
    CARD16	wantedMajor B16;
    CARD16	wantedMinor B16;
} xkbUseExtensionReq;
#define	sz_xkbUseExtensionReq	8

typedef struct _xkbUseExtensionReply {
    BYTE	type;		/* X_Reply */
    BOOL	supported;
    CARD16	sequenceNumber B16;
    CARD32	length B32;
    CARD16	serverMajor B16;
    CARD16	serverMinor B16;
    CARD32	pad1 B32;
    CARD32	pad2 B32;
    CARD32	pad3 B32;
    CARD32	pad4 B32;
    CARD32	pad5 B32;
} xkbUseExtensionReply;
#define	sz_xkbUseExtensionReply	32

typedef	struct _xkbSelectEvents {
    CARD8	reqType;
    CARD8	xkbReqType;	/* X_KBSelectEvents */
    CARD16	length B16;
    CARD16	deviceSpec B16;
    CARD16	affectWhich B16;
    CARD16	clear B16;
    CARD16	selectAll B16;
    CARD16	affectMap B16;
    CARD16	map B16;
} xkbSelectEventsReq;
#define	sz_xkbSelectEventsReq	16

#ifdef NEED_EVENTS

typedef struct _xkbSendEvent {
    CARD8	reqType;
    CARD8	xkbReqType;	/* X_KBSendEvent */
    CARD16	length B16;
    BOOL	propagate;
    BOOL	synthesizeClick;
    CARD16	pad B16;
    CARD32	destination;	/* Window */
    CARD32	eventMask B32;
    xEvent	event;
} xkbSendEventReq;
#define	sz_xkbSendEventReq	48

#endif /* NEED_EVENTS */

typedef struct _xkbBell {
    CARD8	reqType;
    CARD8	xkbReqType;	/* X_KBBell */
    CARD16	length B16;
    CARD16	deviceSpec B16;
    CARD8	bellClass;
    CARD8	bellID;
    INT8	percent;
    BOOL	override;
    CARD16	pad2 B16;
    Atom	name B32;
    Window	window B32;
} xkbBellReq;
#define	sz_xkbBellReq		20

typedef struct _xkbGetState {
	CARD8		reqType;
	CARD8		xkbReqType;	/* always X_KBGetState */
	CARD16		length B16;
	CARD16		deviceSpec B16;
	CARD16		pad B16;
} xkbGetStateReq;
#define	sz_xkbGetStateReq	8

typedef	struct _xkbGetStateReply {
    BYTE	type;
    BYTE	deviceID;
    CARD16	sequenceNumber B16;
    CARD32	length B32;
    CARD32	pad1 B32;
    CARD8	mods;
    CARD8	baseMods;
    CARD8	latchedMods;
    CARD8	lockedMods;
    CARD8	group;
    CARD8	baseGroup;
    CARD8	latchedGroup;
    CARD8	lockedGroup;
    CARD8	compatState;
    CARD8	pad2;
    CARD16	pad3 B16;
    CARD32	pad4 B32;
    CARD32	pad5 B32;
} xkbGetStateReply;
#define	sz_xkbGetStateReply	32

typedef struct _xkbLatchLockState {
    CARD8	reqType;
    CARD8	xkbReqType;	/* always X_KBLatchLockState */
    CARD16	length B16;
    CARD16	deviceSpec B16;
    CARD8	affectModLocks;
    CARD8	modLocks;
    BOOL	lockGroup;
    CARD8	groupLock;
    CARD8	affectModLatches;
    CARD8	modLatches;
    BOOL	latchGroup;
    CARD8	groupLatch;
    CARD16	pad B16;
} xkbLatchLockStateReq;
#define	sz_xkbLatchLockStateReq		16

typedef struct _xkbGetControls {
    CARD8	reqType;
    CARD8	xkbReqType;	/* always X_KBGetControls */
    CARD16	length B16;
    CARD16	deviceSpec B16;
    CARD16	pad B16;
} xkbGetControlsReq;
#define	sz_xkbGetControlsReq	8

typedef struct _xkbGetControlsReply {
    BYTE	type;		/* X_Reply */
    CARD8	deviceID;
    CARD16	sequenceNumber B16;
    CARD32	length B32;
    CARD8	mouseKeysDfltBtn;
    CARD8	numGroups;
    CARD8	internalMods B16;
    CARD8	ignoreLockMods B16;
    CARD8	internalRealMods;
    CARD8	ignoreLockRealMods;
    CARD16	internalVirtualMods B16;
    CARD16	ignoreLockVirtualMods B16;
    CARD8	accessXOptions;
    CARD8	pad1;
    CARD32	enabledControls B32;
    CARD16	repeatDelay B16;
    CARD16	repeatInterval B16;
    CARD16	slowKeysDelay B16;
    CARD16	debounceDelay B16;
    CARD16	mouseKeysDelay B16;
    CARD16	mouseKeysInterval B16;
    CARD16	mouseKeysTimeToMax B16;
    CARD16	mouseKeysMaxSpeed B16;
    CARD16	mouseKeysCurve B16;
    CARD16	accessXTimeout B16;
    CARD32	accessXTimeoutMask B32;
} xkbGetControlsReply;
#define	sz_xkbGetControlsReply	48

typedef struct _xkbSetControls {
    CARD8	reqType;
    CARD8	xkbReqType;	/* always X_KBSetControls */
    CARD16	length B16;
    CARD16	deviceSpec B16;
    CARD8	affectInternalRealMods;
    CARD8	internalRealMods;
    CARD8	affectIgnoreLockRealMods;
    CARD8	ignoreLockRealMods;
    CARD16	affectInternalVirtualMods B16;
    CARD16	internalVirtualMods B16;
    CARD16	affectIgnoreLockVirtualMods B16;
    CARD16	ignoreLockVirtualMods B16;
    CARD8	mouseKeysDfltBtn;
    CARD8	accessXOptions;
    CARD32	affectEnabledControls B32;
    CARD32	enabledControls B32;
    CARD32	changeControls B32;
    CARD16	repeatDelay B16;
    CARD16	repeatInterval B16;
    CARD16	slowKeysDelay B16;
    CARD16	debounceDelay B16;
    CARD16	mouseKeysDelay B16;
    CARD16	mouseKeysInterval B16;
    CARD16	mouseKeysTimeToMax B16;
    CARD16	mouseKeysMaxSpeed B16;
    CARD16	mouseKeysCurve B16;
    CARD16	accessXTimeout B16;
    CARD32	accessXTimeoutMask B32;
} xkbSetControlsReq;
#define	sz_xkbSetControlsReq	56

typedef	struct _xkbKTMapEntryWireDesc {
    BOOL	active;
    CARD8	mask;
    CARD8	level;
    CARD8	realMods;
    CARD16	virtualMods B16;
    CARD16	pad B16;
} xkbKTMapEntryWireDesc;
#define sz_xkbKTMapEntryWireDesc	8

typedef struct _xkbKTSetMapEntryWireDesc {
    CARD8	level;
    CARD8	realMods;
    CARD16	virtualMods B16;
} xkbKTSetMapEntryWireDesc;
#define	sz_xkbKTSetMapEntryWireDesc	4

typedef struct _xkbKTPreserveWireDesc {
    CARD8	mask;		/* GetMap only */
    CARD8	realMods;
    CARD16	virtualMods B16;
} xkbKTPreserveWireDesc;
#define	sz_xkbKTPreserveWireDesc	4

typedef struct _xkbKeyTypeWireDesc {
    CARD8	mask;
    CARD8	realMods;
    CARD16	virtualMods B16;
    CARD8	groupWidth;
    CARD8	nMapEntries;
    BOOL	preserve;
    CARD8	pad;
} xkbKeyTypeWireDesc;
#define	sz_xkbKeyTypeWireDesc	8

typedef struct _xkbSymMapWireDesc {
    CARD8	ktIndex;
    CARD8	groupInfo;
    CARD16	nSyms B16;
} xkbSymMapWireDesc;
#define	sz_xkbSymMapWireDesc	4

typedef struct _xkbGetMap {
    CARD8	reqType;
    CARD8	xkbReqType;	/* always X_KBGetMap */
    CARD16	length B16;
    CARD16	deviceSpec B16;
    CARD16	full B16;
    CARD16	partial B16;
    CARD8	firstType;
    CARD8	nTypes;
    KeyCode	firstKeySym;
    CARD8	nKeySyms;
    KeyCode	firstKeyAction;
    CARD8	nKeyActions;
    KeyCode	firstKeyBehavior;
    CARD8	nKeyBehaviors;
    CARD16	virtualMods B16;
    KeyCode	firstKeyExplicit;
    CARD8	nKeyExplicit;
    CARD16	pad B16;
} xkbGetMapReq;
#define	sz_xkbGetMapReq	24

typedef struct _xkbGetMapReply {
    CARD8	type;		/* always X_Reply */
    CARD8	deviceID;
    CARD16	sequenceNumber B16;
    CARD32	length B32;
    KeyCode	minKeyCode;
    KeyCode	maxKeyCode;
    CARD16	present B16;
    CARD8	firstType;
    CARD8	nTypes;
    CARD8	totalTypes;
    KeyCode	firstKeySym;
    CARD8	nKeySyms;
    KeyCode	firstKeyAction;
    CARD8	nKeyActions;
    CARD8	totalKeyBehaviors;
    CARD16	virtualMods B16;
    CARD16	totalSyms B16;
    CARD16	totalActions B16;
    CARD8	totalKeyExplicit;
    CARD8	pad1;
    CARD32	pad2 B32;
} xkbGetMapReply;
#define	sz_xkbGetMapReply		32

typedef struct _xkbSetMap {
    CARD8	reqType;
    CARD8	xkbReqType;	/* always X_KBSetMap */
    CARD16	length B16;
    CARD16	deviceSpec B16;
    CARD16	present B16;
    CARD16	resize B16;
    CARD8	firstType;
    CARD8	nTypes;
    KeyCode	firstKeySym;
    CARD8	nKeySyms;
    KeyCode	firstKeyAction;
    CARD8	nKeyActions;
    CARD16	virtualMods B16;
    CARD8	totalKeyBehaviors;
    CARD8	totalKeyExplicit;
    CARD16	totalSyms B16;
    CARD16	totalActions B16;
} xkbSetMapReq;
#define	sz_xkbSetMapReq	24

typedef struct _xkbBehaviorWireDesc {
	CARD8	key;
	CARD8	type;
	CARD8	data;
	CARD8	pad;
} xkbBehaviorWireDesc;
#define	sz_xkbBehaviorWireDesc	4

typedef	struct _xkbActionWireDesc {
    CARD8	type;
    CARD8	data[7];
} xkbActionWireDesc;
#define	sz_xkbActionWireDesc	8

typedef struct _xkbModCompatWireDesc {
    CARD8	mods;
    CARD8	groups;
} xkbModCompatWireDesc;
#define	sz_xkbModCompatWireDesc	2

typedef struct _xkbSymInterpretWireDesc {
    CARD32		sym;
    CARD8		mods;
    CARD8		match;
    CARD8		virtualMod;
    CARD8		flags;
    xkbActionWireDesc	act;
} xkbSymInterpretWireDesc;
#define	sz_xkbSymInterpretWireDesc	16

typedef struct _xkbGetCompatMap {
    CARD8	reqType;
    CARD8	xkbReqType;	/* always X_KBGetCompatMap */
    CARD16	length B16;
    CARD16	deviceSpec B16;
    CARD16	virtualMods;
    CARD8	mods;
    BOOL	getAllSI;
    CARD16	firstSI B16;
    CARD16	nSI B16;
    CARD16	pad;
} xkbGetCompatMapReq;
#define	sz_xkbGetCompatMapReq	16

typedef struct _xkbGetCompatMapReply {
    CARD8	type;		/* always X_Reply */
    CARD8	deviceID;
    CARD16	sequenceNumber B16;
    CARD32	length B32;
    CARD8	pad1;
    CARD8	mods;
    CARD16	virtualMods B16;
    CARD16	firstSI B16;
    CARD16	nSI B16;
    CARD16	nTotalSI B16;
    CARD16	pad2 B16;
    CARD32	pad3 B32;
    CARD32	pad4 B32;
    CARD32	pad5 B32;
} xkbGetCompatMapReply;
#define	sz_xkbGetCompatMapReply		32

typedef struct _xkbSetCompatMap {
    CARD8	reqType;
    CARD8	xkbReqType;	/* always X_KBSetCompatMap */
    CARD16	length B16;
    CARD16	deviceSpec B16;
    BOOL	recomputeActions;
    BOOL	truncateSI;
    CARD8	pad1;
    CARD8	mods;
    CARD16	virtualMods B16;
    CARD16	firstSI B16;
    CARD16	nSI B16;
} xkbSetCompatMapReq;
#define	sz_xkbSetCompatMapReq	16

typedef struct _xkbGetIndicatorState {
    CARD8	reqType;
    CARD8	xkbReqType;	/* always X_KBGetIndicatorState */
    CARD16	length B16;
    CARD16	deviceSpec B16;
    CARD16	pad B16;
} xkbGetIndicatorStateReq;
#define	sz_xkbGetIndicatorStateReq	8

typedef struct _xkbGetIndicatorStateReply {
    CARD8	type;		/* always X_Reply */
    CARD8	deviceID;
    CARD16	sequenceNumber B16;
    CARD32	length B32;
    CARD32	state B32;
    CARD32	pad1 B32;
    CARD32	pad2 B32;
    CARD32	pad3 B32;
    CARD32	pad4 B32;
    CARD32	pad5 B32;
} xkbGetIndicatorStateReply;
#define	sz_xkbGetIndicatorStateReply	32

typedef struct _xkbGetIndicatorMap {
    CARD8	reqType;
    CARD8	xkbReqType;	/* always X_KBGetIndicatorMap */
    CARD16	length B16;
    CARD16	deviceSpec B16;
    CARD16	pad B16;
    CARD32	which B32;
} xkbGetIndicatorMapReq;
#define	sz_xkbGetIndicatorMapReq	12

typedef struct _xkbGetIndicatorMapReply {
    CARD8	type;		/* always X_Reply */
    CARD8	deviceID;
    CARD16	sequenceNumber B16;
    CARD32	length B32;
    CARD32	which B32;
    CARD8	nRealIndicators;
    CARD8	nIndicators;
    CARD16	pad2 B16;
    CARD32	pad3 B32;
    CARD32	pad4 B32;
    CARD32	pad5 B32;
    CARD32	pad6 B32;
} xkbGetIndicatorMapReply;
#define	sz_xkbGetIndicatorMapReply	32

typedef struct _xkbIndicatorMapWireDesc {
    CARD8	flags;
    CARD8	whichGroups;
    CARD8	groups;
    CARD8	whichMods;
    CARD8	mods;
    CARD8	realMods;
    CARD16	virtualMods B16;
    CARD32	ctrls B32;
} xkbIndicatorMapWireDesc;
#define	sz_xkbIndicatorMapWireDesc	12

typedef struct _xkbSetIndicatorMap {
    CARD8	reqType;
    CARD8	xkbReqType;	/* always X_KBSetIndicatorMap */
    CARD16	length B16;
    CARD16	deviceSpec B16;
    CARD16	pad1 B16;
    CARD32	which B32;
} xkbSetIndicatorMapReq;
#define	sz_xkbSetIndicatorMapReq	12

typedef struct _xkbGetNames {
    CARD8	reqType;
    CARD8	xkbReqType;	/* always X_KBGetNames */
    CARD16	length B16;
    CARD16	deviceSpec B16;
    CARD16	pad B16;
    CARD32	which B32;
} xkbGetNamesReq;
#define	sz_xkbGetNamesReq		12

typedef	struct _xkbGetNamesReply {
    BYTE	type;
    BYTE	deviceID;
    CARD16	sequenceNumber B16;
    CARD32	length B32;
    CARD32	which B32;
    CARD8	nTypes;
    CARD8	modifiers;
    CARD16	virtualMods B16;
    KeyCode	firstKey;
    CARD8	nKeys;
    CARD8	nRadioGroups;
    CARD8	nCharSets;
    CARD32	indicators B32;
    CARD32	pad1 B32;
    CARD32	pad2 B32;
} xkbGetNamesReply;
#define	sz_xkbGetNamesReply	32

typedef struct _xkbSetNames {
    CARD8	reqType;
    CARD8	xkbReqType;	/* always X_KBSetNames */
    CARD16	length B16;
    CARD16	deviceSpec B16;
    CARD16	pad1 B16;
    CARD32	which B32;
    CARD8	firstType;
    CARD8	nTypes;
    CARD8	firstKTLevel;
    CARD8	nKTLevels;
    CARD32	indicators B32;
    CARD8	modifiers;
    CARD8	pad2;
    CARD16	virtualMods B16;
    CARD8	nRadioGroups;
    CARD8	nCharSets;
    KeyCode	firstKey;
    CARD8	nKeys;
    CARD32	resize B32;
} xkbSetNamesReq;
#define	sz_xkbSetNamesReq	32

typedef struct _xkbListAlternateSyms {
    CARD8	reqType;
    CARD8	xkbReqType;	/* always X_KBListAlternateSyms */
    CARD16	length B16;
    CARD16	deviceSpec B16;
    CARD16	pad B16;
    Atom	name B32;
    Atom	charset B32;
} xkbListAlternateSymsReq;
#define	sz_xkbListAlternateSymsReq	16

typedef struct _xkbListAlternateSymsReply {
    BYTE	type;		/* X_Reply */
    CARD8	deviceID;
    CARD16	sequenceNumber B16;
    CARD32	length B32;
    CARD8	nAlternateSyms;
    CARD8	pad1;
    CARD16	pad2 B16;
    CARD8	indices[20];
} xkbListAlternateSymsReply;
#define sz_xkbListAlternateSymsReply	32

typedef struct _xkbGetAlternateSyms {
    CARD8	reqType;
    CARD8	xkbReqType;	/* always X_KBGetAlternateSyms */
    CARD16	length B16;
    CARD16	deviceSpec B16;
    CARD8	index;
    KeyCode	firstKey;
    CARD8	nKeys;
    CARD8	pad1;
    CARD16	pad2 B16;
} xkbGetAlternateSymsReq;
#define	sz_xkbGetAlternateSymsReq		12

typedef	struct _xkbGetAlternateSymsReply {
    BYTE	type;
    BYTE	deviceID;
    CARD16	sequenceNumber B16;
    CARD32	length B32;
    Atom	name B32;
    CARD8	index;
    CARD8	nCharSets;
    KeyCode	firstKey;
    CARD8	nKeys;
    CARD16	totalSyms B16;
    CARD16	pad2 B16;
    CARD32	pad3 B32;
    CARD32	pad4 B32;
    CARD32	pad5 B32;
} xkbGetAlternateSymsReply;
#define	sz_xkbGetAlternateSymsReply	32

typedef struct _xkbSetAlternateSyms {
    CARD8	reqType;
    CARD8	xkbReqType;	/* always X_KBSetAlternateSyms */
    CARD16	length B16;
    CARD16	deviceSpec B16;
    BOOL	create;
    CARD8	replace;
    CARD16	present B16;
    CARD16	pad1 B16;
    Atom	name B32;
    CARD8	nCharSets;
    KeyCode	firstKey;
    CARD8	nKeys;
    CARD8	pad;
} xkbSetAlternateSymsReq;
#define	sz_xkbSetAlternateSymsReq		20

typedef struct _xkbPointWireDesc {
    CARD16	x B16;
    CARD16	y B16;
} xkbPointWireDesc;
#define	sz_xkbPointWireDesc	4

typedef struct _xkbShapeWireDesc {
    CARD8	nOutlines;
    CARD8	approxOutline;
    CARD8	primaryOutline;
    CARD8	pad;
    CARD8	name[4];
} xkbShapeWireDesc;
#define	sz_xkbShapeWireDesc	8

typedef struct _xkbDoodadWireDesc {
    CARD16	top B16;
    CARD16	left B16;
    CARD8	shape;
    CARD8	color;
    CARD16	angle B16;
} xkbDoodadWireDesc;
#define	sz_xkbDoodadWireDesc	8

typedef struct _xkbLabelWireDesc {
    CARD16	baseline B16;
    CARD16	left B16;
    CARD16	angle B16;
    CARD8	color;
    CARD8	length;
} xkbLabelWireDesc;
#define	sz_xkbLabelWireDesc	8

typedef struct _xkbKeyWireDesc {
    KeyCode	keycode;
    CARD8	shape;
    CARD8	gap;
    CARD8	color;
    CARD8	name[4];
} xkbKeyWireDesc;
#define	sz_xkbKeyWireDesc	8

typedef struct _xkbRowWireDesc {
    CARD16	top B16;
    CARD16	left B16;
    CARD8	nKeys;
    BOOL	vertical;
    CARD16	pad B16;
} xkbRowWireDesc;
#define	sz_xkbRowWireDesc	8

typedef struct _xkbSectionWireDesc {
    Atom	name B32;
    CARD16	top B16;
    CARD16	left B16;
    CARD16	width B16;
    CARD16	height B16;
    CARD16	angle B16;
    CARD8	nRows;
    CARD8	nDoodads;
} xkbSectionWireDesc;
#define	sz_xkbSectionWireDesc	16

typedef struct _xkbGetGeometry {
    CARD8	reqType;
    CARD8	xkbReqType;	/* always X_KBGetGeometry */
    CARD16	length B16;
    CARD16	deviceSpec B16;
    CARD16	pad B16;
    Atom	name B32;
} xkbGetGeometryReq;
#define	sz_xkbGetGeometryReq	12

typedef struct _xkbGetGeometryReply {
    CARD8	type;		/* always X_Reply */
    CARD8	deviceID;
    CARD16	sequenceNumber B16;
    CARD32	length B32;
    Atom	name B32;
    CARD16	width B16;
    CARD16	height B16;
    CARD8	shape;
    CARD8	color;
    CARD8	nShapes;
    CARD8	nSections;
    CARD16	nPoints B16;
    CARD16	nOutlines B16;
    CARD8	nColors;
    CARD8	nDoodads;
    CARD8	nLabels;
    CARD8	nFonts;
    CARD32	pad1 B32;
} xkbGetGeometryReply;
#define	sz_xkbGetGeometryReply	32

#define	XkbGMByName		1
#define	XkbGMDescription	2
typedef struct _xkbSetGeometry {
    CARD8	reqType;
    CARD8	xkbReqType;	/* always X_KBSetGeometry */
    CARD16	length B16;
    CARD16	deviceSpec B16;
    CARD8	nShapes;
    CARD8	nSections;
    Atom	name B32;
    CARD16	widthMM B16;
    CARD16	heightMM B16;
} xkbSetGeometryReq;
#define	sz_xkbSetGeometryReq	16

#define	XkbNormalLocks	0
#define	XkbDisableLocks	1
#define	XkbLeaveLocks	2
typedef struct _xkbSetDebuggingFlags {
    CARD8	reqType;
    CARD8	xkbReqType;	/* always X_KBSetDebuggingFlags */
    CARD16	length B16;
    CARD16	mask B16;
    CARD16	flags B16;
    CARD16	msgLength B16;
    CARD8	disableLocks;
    CARD8	pad;
} xkbSetDebuggingFlagsReq;
#define	sz_xkbSetDebuggingFlagsReq	12

typedef struct _xkbSetDebuggingFlagsReply {
    BYTE	type;		/* X_Reply */
    CARD8	disableLocks;
    CARD16	sequenceNumber B16;
    CARD32	length B32;
    CARD16	currentFlags B16;
    CARD16	pad1 B16;
    CARD32	pad2 B32;
    CARD32	pad3 B32;
    CARD32	pad4 B32;
    CARD32	pad5 B32;
    CARD32	pad6 B32;
} xkbSetDebuggingFlagsReply;
#define	sz_xkbSetDebuggingFlagsReply	32

	/*
	 * X KEYBOARD EXTENSION EVENT STRUCTURES
	 */

typedef struct _xkbAnyEvent {
    BYTE	type;
    BYTE	xkbType;
    CARD16	sequenceNumber B16;
    Time	time B32;
    CARD8	deviceID;
    CARD8	pad1;
    CARD16	pad2 B16;
    CARD32	pad3 B32;
    CARD32	pad4 B32;
    CARD32	pad5 B32;
    CARD32	pad6 B32;
    CARD32	pad7 B32;
} xkbAnyEvent;
#define	sz_xkbAnyEvent 32

typedef	struct _xkbStateNotify {
    BYTE	type;
    BYTE	xkbType;
    CARD16	sequenceNumber B16;
    Time	time B32;
    CARD8	deviceID;
    CARD8	mods;
    CARD8	baseMods;
    CARD8	latchedMods;
    CARD8	lockedMods;
    CARD8	group;
    CARD8	baseGroup;
    CARD8	latchedGroup;
    CARD8	lockedGroup;
    CARD8	compatState;
    KeyCode	keycode;
    CARD8	eventType;
    CARD8	requestMajor;
    CARD8	requestMinor;
    CARD16	changed B16;
    CARD32	pad1 B32;
    CARD32	pad2 B32;
} xkbStateNotify;
#define	sz_xkbStateNotify	32

typedef	struct _xkbMapNotify {
    BYTE	type;
    BYTE	xkbType;
    CARD16	sequenceNumber B16;
    Time	time B32;
    CARD8	pad1;
    CARD8	deviceID;
    CARD16	changed B16;
    CARD8	firstType;
    CARD8	nTypes;
    KeyCode	firstKeySym;
    CARD8	nKeySyms;
    KeyCode	firstKeyAction;
    CARD8	nKeyActions;
    KeyCode	firstKeyBehavior;
    CARD8	nKeyBehaviors;
    CARD16	virtualMods B16;
    KeyCode	firstKeyExplicit;
    CARD8	nKeyExplicit;
    CARD32	pad2 B32;
    CARD32	pad3 B32;
} xkbMapNotify;
#define	sz_xkbMapNotify	32

typedef struct _xkbControlsNotify {
    BYTE	type;
    BYTE	xkbType;
    CARD16	sequenceNumber B16;
    Time	time B32;
    CARD8	deviceID;
    CARD8	pad1;
    CARD16	pad2 B16;
    CARD32	changedControls B32;
    CARD32	enabledControls B32;
    CARD32	enabledControlChanges B32;
    KeyCode	keycode;
    CARD8	eventType;
    CARD8	requestMajor;
    CARD8	requestMinor;
    CARD32	pad3 B32;
} xkbControlsNotify;
#define	sz_xkbControlsNotify	32

typedef struct _xkbIndicatorNotify {
    BYTE	type;
    BYTE	xkbType;
    CARD16	sequenceNumber B16;
    Time	time B32;
    CARD8	deviceID;
    CARD8	pad1;
    CARD16	pad2 B16;
    CARD32	stateChanged B32;
    CARD32	state B32;
    CARD32	mapChanged B32;
    CARD32	pad3 B32;
    CARD32	pad4 B32;
} xkbIndicatorNotify;
#define	sz_xkbIndicatorNotify	32

typedef struct _xkbBellNotify {
    BYTE	type;
    BYTE	xkbType;
    CARD16	sequenceNumber B16;
    Time	time B32;
    CARD8	deviceID;
    CARD8	bellClass;
    CARD8	bellID;
    CARD8	percent;
    CARD16	pitch B16;
    CARD16	duration B16;
    Atom	name B32;
    Window	window B32;
    CARD32	pad1 B32;
    CARD32	pad2 B32;
} xkbBellNotify;
#define	sz_xkbBellNotify	32

typedef struct _xkbSlowKeyNotify {
    BYTE	type;
    BYTE	xkbType;
    CARD16	sequenceNumber B16;
    Time	time B32;
    CARD8	deviceID;
    CARD8	slowKeyState;
    KeyCode	keycode;
    CARD8	pad1;
    CARD16	delay B16;
    CARD16	pad2 B16;
    CARD32	pad3 B32;
    CARD32	pad4 B32;
    CARD32	pad5 B32;
    CARD32	pad6 B32;
} xkbSlowKeyNotify;
#define	sz_xkbSlowKeyNotify	32

typedef struct _xkbNamesNotify {
    BYTE	type;
    BYTE	xkbType;
    CARD16	sequenceNumber B16;
    Time	time B32;
    CARD8	deviceID;
    CARD8	pad1;
    CARD16	changed B16;
    CARD8	firstType;
    CARD8	nTypes;
    CARD8	firstLevelName;
    CARD8	nLevelNames;
    CARD8	firstRadioGroup;
    CARD8	nRadioGroups;
    CARD8	nCharSets;
    CARD8	changedMods;
    CARD16	changedVirtualMods B16;
    CARD16	pad2 B16;
    CARD32	changedIndicators B32;
    CARD32	pad3 B32;
} xkbNamesNotify;
#define	sz_xkbNamesNotify	32

typedef struct _xkbCompatMapNotify {
    BYTE	type;
    BYTE	xkbType;
    CARD16	sequenceNumber B16;
    Time	time B32;
    CARD8	deviceID;
    CARD8	changedMods;
    CARD16	changedVirtualMods B16;
    CARD16	firstSI B16;
    CARD16	nSI B16;
    CARD16	nTotalSI B16;
    CARD16	pad1 B16;
    CARD32	pad2 B32;
    CARD32	pad3 B32;
    CARD32	pad4 B32;
} xkbCompatMapNotify;
#define sz_xkbCompatMapNotify	32

typedef struct _xkbAlternateSymsNotify {
    BYTE	type;
    BYTE	xkbType;
    CARD16	sequenceNumber B16;
    Time	time B32;
    CARD8	deviceID;
    CARD8	altSymsID;
    KeyCode	firstKey;
    CARD8	nKeys;
    CARD32	pad2 B32;
    CARD32	pad3 B32;
    CARD32	pad4 B32;
    CARD32	pad5 B32;
    CARD32	pad6 B32;
} xkbAlternateSymsNotify;
#define	sz_xkbAlternateSymsNotify	32

typedef struct _xkbActionMessage {
    BYTE	type;
    BYTE	xkbType;
    CARD16	sequenceNumber B16;
    Time	time B32;
    CARD8	deviceID;
    KeyCode	keycode;
    BOOL	press;
    BOOL	keyEventFollows;
    CARD8	message[8];
    CARD32	pad1 B32;
    CARD32	pad2 B32;
    CARD32	pad3 B32;
} xkbActionMessage;
#define	sz_xkbActionMessage		32

typedef struct _xkbEvent {
    union {
	xkbAnyEvent		any;
	xkbStateNotify		state;
	xkbMapNotify		map;
	xkbControlsNotify	ctrls;
	xkbIndicatorNotify	indicators;
	xkbBellNotify		bell;
	xkbSlowKeyNotify	slowkey;
	xkbNamesNotify		names;
	xkbCompatMapNotify	compat;
	xkbAlternateSymsNotify	altSyms;
	xkbActionMessage	message;
    } u;
} xkbEvent;
#define sz_xkbEvent	32

#undef Window
#undef Atom
#undef Time
#undef KeyCode
#undef KeySym

#endif /* _XKBPROTO_H_ */
