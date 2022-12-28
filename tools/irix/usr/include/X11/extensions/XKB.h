/* $XConsortium: XKB.h,v 1.7 94/04/01 18:39:09 erik Exp $ */
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

#ifndef _XKB_H_
#define	_XKB_H_

#define	X_kbUseExtension		 0
#define	X_kbSelectEvents	 	 1
#define	X_kbSendEvent			 2
#define	X_kbBell			 3
#define	X_kbGetState			 4
#define	X_kbLatchLockState		 5
#define	X_kbGetControls			 6
#define	X_kbSetControls			 7
#define	X_kbGetMap			 8
#define	X_kbSetMap			 9
#define	X_kbGetCompatMap		10
#define	X_kbSetCompatMap		11
#define	X_kbGetIndicatorState		12
#define	X_kbGetIndicatorMap		13
#define	X_kbSetIndicatorMap		14
#define	X_kbGetNames			15
#define	X_kbSetNames			16
#define	X_kbListAlternateSyms		17
#define	X_kbGetAlternateSyms		18
#define	X_kbSetAlternateSyms		19
#define	X_kbGetGeometry			20
#define	X_kbSetGeometry			21
#define	X_kbSetDebuggingFlags		101

#define	XkbEventCode			0
#define	XkbNumberEvents			(XkbEventCode+1)

#define XkbMapNotify			0
#define	XkbStateNotify			1
#define XkbControlsNotify		2
#define	XkbIndicatorStateNotify		3
#define	XkbIndicatorMapNotify		4
#define	XkbNamesNotify			5
#define XkbCompatMapNotify		6
#define	XkbAlternateSymsNotify		7
#define	XkbBellNotify			8
#define	XkbActionMessage		9
#define	XkbSlowKeyNotify		10

#define XkbMapNotifyMask		(1L << 0)
#define	XkbStateNotifyMask		(1L << 1)
#define XkbControlsNotifyMask		(1L << 2)
#define	XkbIndicatorStateNotifyMask	(1L << 3)
#define	XkbIndicatorMapNotifyMask	(1L << 4)
#define	XkbNamesNotifyMask		(1L << 5)
#define XkbCompatMapNotifyMask		(1L << 6)
#define XkbAlternateSymsNotifyMask	(1L << 7)
#define	XkbBellNotifyMask		(1L << 8)
#define	XkbActionMessageMask		(1L << 9)
#define	XkbSlowKeyNotifyMask		(1L << 10)
#define	XkbAllEventsMask		(0x07FF)

#define	XkbSK_Press			0
#define	XkbSK_Accept			1
#define	XkbSK_Reject			2
#define	XkbSK_Release			3

#define	XkbSK_PressMask			(1L << 0)
#define	XkbSK_AcceptMask		(1L << 1)
#define	XkbSK_RejectMask		(1L << 2)
#define	XkbSK_ReleaseMask		(1L << 3)
#define	XkbSK_AllEventsMask		(0xf)

#define	XkbKeyboard			0
#define	XkbNumberErrors			1

#define	XkbModifierStateMask		(1L << 0)
#define	XkbModifierBaseMask		(1L << 1)
#define	XkbModifierLatchMask		(1L << 2)
#define	XkbModifierLockMask		(1L << 3)
#define	XkbGroupStateMask		(1L << 4)
#define	XkbGroupBaseMask		(1L << 5)
#define	XkbGroupLatchMask		(1L << 6)
#define XkbGroupLockMask		(1L << 7)
#define	XkbCompatStateMask		(1L << 8)
#define	XkbAllStateComponentsMask	(0x1ff)

#define	XkbRepeatKeysMask	 (1L << 0)
#define	XkbSlowKeysMask		 (1L << 1)
#define	XkbBounceKeysMask	 (1L << 2)
#define	XkbStickyKeysMask	 (1L << 3)
#define	XkbMouseKeysMask	 (1L << 4)
#define	XkbMouseKeysAccelMask	 (1L << 5)
#define	XkbAccessXKeysMask	 (1L << 6)
#define	XkbAccessXTimeoutMask	 (1L << 7)
#define	XkbAccessXFeedbackMask	 (1L << 8)
#define	XkbGroupsWrapMask	 (1L << 9)
#define	XkbAudibleBellMask	 (1L << 10)
#define	XkbAutoAutorepeatMask	 (1L << 11)
#define XkbKeyboardGroupsMask	 (1L << 12)
#define	XkbInternalModsMask	 (1L << 13)
#define	XkbIgnoreLockModsMask	 (1L << 14)
#define	XkbControlsEnabledMask	 (1L << 15)

#define	XkbAllAccessXMask	 (0x0FFF)
#define	XkbAllControlsMask	 (0xFFFF)

#define	XkbAX_SKPressFBMask	(1L << 0)
#define	XkbAX_SKAcceptFBMask	(1L << 1)
#define	XkbAX_FeatureFBMask	(1L << 2)
#define	XkbAX_SlowWarnFBMask	(1L << 3)
#define	XkbAX_IndicatorFBMask	(1L << 4)
#define	XkbAX_StickyKeysFBMask	(1L << 5)
#define	XkbAX_TwoKeysMask	(1L << 6)
#define	XkbAX_LatchToLockMask	(1L << 7)
#define	XkbAX_AllOptionsMask	(0xFF)

#define	XkbUseCoreKbd		0x0100
#define	XkbPrivate		0x4000

#define	XkbNoModifier		0xff
#define	XkbNoModifierMask	0

#define	XkbSA_ClearLocks	(1L << 0)
#define	XkbSA_LatchToLock	(1L << 1)
#define	XkbSA_UseModMapMods	(1L << 2)

#define	XkbSA_GroupAbsolute	(1L << 2)
#define	XkbSA_UseDfltButton	0

#define	XkbSA_ISODfltIsGroup 	 (1L << 7)
#define	XkbSA_ISONoAffectMods	 (1L << 6)
#define	XkbSA_ISONoAffectGroup	 (1L << 5)
#define	XkbSA_ISONoAffectPtr	 (1L << 4)
#define	XkbSA_ISONoAffectCtrls	 (1L << 3)
#define	XkbSA_ISOAffectMask	 (0x78)
#define	XkbSA_MessageOnPress	 (1L << 0)
#define	XkbSA_MessageOnRelease	 (1L << 1)
#define	XkbSA_MessageGenKeyEvent (1L << 2)

	/* flags values for XkbSA_SetPtrDflt */
#define	XkbSA_AffectDfltBtn	1
#define	XkbSA_DfltBtnAbsolute	(1L << 2)

	/* flags for XkbSA_SwitchScreen */
#define	XkbSA_SwitchApplication	(1L << 0)
#define	XkbSA_SwitchAbsolute	(1L << 2)

#define	XkbSA_NoAction		0x00
#define	XkbSA_SetMods		0x01
#define	XkbSA_LatchMods		0x02
#define	XkbSA_LockMods		0x03
#define	XkbSA_SetGroup		0x04
#define	XkbSA_LatchGroup	0x05
#define	XkbSA_LockGroup		0x06
#define	XkbSA_MovePtr		0x07
#define	XkbSA_AccelPtr		0x08
#define	XkbSA_PtrBtn		0x09
#define	XkbSA_ClickPtrBtn	0x0a
#define	XkbSA_LockPtrBtn	0x0b
#define	XkbSA_SetPtrDflt	0x0c
#define	XkbSA_ISOLock		0x0d
#define	XkbSA_Terminate		0x0e
#define	XkbSA_SwitchScreen	0x0f
#define	XkbSA_SetControls	0x10
#define	XkbSA_LockControls	0x11
#define	XkbSA_ActionMessage	0x12
#define	XkbSA_LastAction	XkbSA_ActionMessage
#define	XkbSA_NumActions	(XkbSA_LastAction+1)

#define	XkbKB_Permanent		0x80
#define	XkbKB_OpMask		0x7f
#define	XkbKB_Default		0x00
#define	XkbKB_Lock		0x01
#define	XkbKB_RadioGroup	0x02

#define	XkbMinLegalKeyCode	8
#define	XkbMaxLegalKeyCode	255
#define	XkbNumModifiers		8
#define	XkbNumVirtualMods	16
#define	XkbNumIndicators	32
#define	XkbNumKbdGroups		8
#define	XkbMaxRadioGroups	32
#define	XkbRGMaxMembers		12
#define	XkbActionMessageLength	6
#define	XkbKeyNameLength	4
#define	XkbGeomPtsPerMM		10

#define	XkbOneLevelIndex	0
#define	XkbTwoLevelIndex	1
#define	XkbKeypadIndex		2
#define	XkbLastRequiredType	XkbKeypadIndex
#define	XkbNumRequiredTypes	(XkbLastRequiredType+1)

#define	XkbOneLevelMask		(1<<0)
#define	XkbTwoLevelMask		(1<<1)
#define	XkbKeypadMask		(1<<2)
#define	XkbAllRequiredTypes	(0x7)

#define	XkbName "XKEYBOARD"
#define	XkbMajorVersion	0
#define	XkbMinorVersion	30

#define	XkbExplicitKeyTypeMask	  (1<<0)
#define	XkbExplicitInterpretMask  (1<<1)
#define	XkbExplicitAutorepeatMask (1<<2)
#define	XkbExplicitBehaviorMask	  (1<<3)
#define	XkbAllExplicitMask	  (0xf)

#define	XkbKeyTypesMask		(1<<0)
#define	XkbKeySymsMask		(1<<1)
#define	XkbExplicitComponentsMask (1<<4)
#define XkbKeyActionsMask	(1<<5)
#define	XkbKeyBehaviorsMask	(1<<6)
#define	XkbVirtualModsMask	(1<<7)

#define	XkbFullClientInfoMask	(XkbKeyTypesMask|XkbKeySymsMask)
#define	XkbFullServerInfoMask	(XkbKeyActionsMask|XkbKeyBehaviorsMask|XkbVirtualModsMask|XkbExplicitComponentsMask)
#define	XkbAllMapComponentsMask	(XkbFullClientInfoMask|XkbFullServerInfoMask)
#define	XkbResizableInfoMask	(XkbKeyTypesMask)

#define	XkbSI_Autorepeat	(1<<0)
#define	XkbSI_LockingKey	(1<<1)

#define	XkbSI_LevelOneOnly	(0x80)
#define	XkbSI_OpMask		(0x7f)
#define	XkbSI_NoneOf		(0)
#define	XkbSI_AnyOfOrNone	(1)
#define	XkbSI_AnyOf		(2)
#define	XkbSI_AllOf		(3)
#define	XkbSI_Exactly		(4)

#define	XkbIM_NoExplicit	(1L << 7)
#define	XkbIM_NoAutomatic	(1L << 6)

#define	XkbIM_UseBase		(1L << 0)
#define	XkbIM_UseLatched	(1L << 1)
#define	XkbIM_UseLocked		(1L << 2)
#define	XkbIM_UseEffective	(1L << 3)
#define	XkbIM_UseCompat		(1L << 4)
#define	XkbIM_UseAnyState	(0xF)

#define	XkbModCompatMask	(1<<0)
#define	XkbVirtualModCompatMask	(1<<1)
#define	XkbSymInterpMask	(1<<2)
#define	XkbAllCompatMask	(0x7)

#define	XkbKeycodesNameMask	(1<<0)
#define	XkbGeometryNameMask	(1<<1)
#define	XkbSymbolsNameMask	(1<<2)
#define	XkbSemanticsNameMask	(1<<3)
#define	XkbKeyTypeNamesMask	(1<<4)
#define	XkbKTLevelNamesMask	(1<<5)
#define	XkbIndicatorNamesMask	(1<<6)
#define	XkbModifierNamesMask	(1<<7)
#define	XkbKeyNamesMask		(1<<8)
#define	XkbRGNamesMask		(1<<9)
#define	XkbVirtualModNamesMask	(1<<10)
#define	XkbCharSetsMask		(1<<11)
#define	XkbPhysicalNamesMask	(1<<12)
#define	XkbAllNamesMask		(0x1fff)

#define	XkbGeomNamedColor	(0)
#define	XkbGeomRGBColor		(1)

#define	XkbIsModAction(a)	(((a)->type>=Xkb_SASetMods)&&((a)->type<=XkbSA_LockMods))
#define	XkbIsGroupAction(a)	(((a)->type>=XkbSA_SetGroup)&&((a)->type<=XkbSA_LockGroup))
#define	XkbIsPtrAction(a)	(((a)->type>=XkbSA_MovePtr)&&((a)->type<=XkbSA_SetPtrDflt))

#define	XkbError2(a,b)		((((unsigned)(a))<<24)|(b))
#define	XkbError3(a,b,c)	XkbError2(a,(((unsigned)(b))<<16)|(c))
#define	XkbError4(a,b,c,d)	XkbError3(a,b,((((unsigned)(c))<<8)|(d)))

#endif /* _XKB_H_ */
