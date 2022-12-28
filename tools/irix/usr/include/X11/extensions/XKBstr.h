/* $XConsortium: XKBstr.h,v 1.10 94/04/08 02:57:04 erik Exp $ */
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

#ifndef _XKBSTR_H_
#define	_XKBSTR_H_

#include <X11/extensions/XKB.h>

#define	XkbCharToInt(v)		((v)&0x80?(int)((v)|(~0xff)):(int)((v)&0x7f))
#define	XkbIntTo2Chars(i,h,l)	(((h)=((i>>8)&0xff)),((l)=((i)&0xff)))

#if defined(WORD64) && defined(UNSIGNEDBITFIELDS)
#define	Xkb2CharsToInt(h,l)	((h)&0x80?(int)(((h)<<8)|(l)|(~0xffff)):\
					  (int)(((h)<<8)|(l)&0x7fff))
#else
#define	Xkb2CharsToInt(h,l)	((short)(((h)<<8)|(l)))
#endif

	/*
	 * Common data structures and access macros
	 */

typedef struct _XkbStateRec {
	unsigned char	group;
	unsigned char	base_group;
	unsigned char	latched_group;
	unsigned char   locked_group;
	unsigned char	mods;
	unsigned char	base_mods;
	unsigned char	latched_mods;
	unsigned char	locked_mods;
	unsigned char	compat_state;
} XkbStateRec,*XkbStatePtr;
#define	XkbModLocks(s)	 ((s)->locked_mods)
#define	XkbStateMods(s)	 ((s)->base_mods|(s)->latched_mods|XkbModLocks(s))
#define	XkbGroupLock(s)	 ((s)->locked_group)
#define	XkbStateGroup(s) ((s)->base_group+(s)->latched_group+XkbGroupLock(s))

typedef struct _XkbKTMapEntry {
	Bool		active;
	unsigned char	mask;	/* effective mods */
	unsigned char	level;
	unsigned char	real_mods;
	unsigned short	vmods;
} XkbKTMapEntryRec,*XkbKTMapEntryPtr;

typedef struct _XkbKTPreserve {
	unsigned char	mask;
	unsigned char	real_mods;
	unsigned short	vmods;
} XkbKTPreserveRec, *XkbKTPreservePtr;

typedef struct _XkbKeyType {
	unsigned char	  mask;
	unsigned char	  real_mods;
	unsigned short	  vmods;
	unsigned char	  group_width;
	unsigned char	  free;
	unsigned char	  map_count;
	XkbKTMapEntryPtr  map;
	XkbKTPreservePtr  preserve;
	Atom		  name;
	Atom		 *lvl_names;
} XkbKeyTypeRec, *XkbKeyTypePtr;
#define	XkbNoFreeKTLevelNames	(1<<4)
#define	XkbNoFreeKTPreserve	(1<<5)
#define	XkbNoFreeKTMap		(1<<6)
#define	XkbNoFreeKTStruct	(1<<7)

#define	XkbNumGroups(g)		((g)&0x1f)
#define	XkbGroupsWrap(g)	(((g)&0x80)!=0)
#define	XkbSetGroupInfo(g,w)	(((w)?0x80:0x00)|((g)&0x1f))
#define	XkbSetNumGroups(g,n)	(((g)&0x80)|((n)&0x1f))
#define	XkbSetGroupsWrap(g,w)	(((w)?0x80:0x00)|((g)&0x1f))

	/*
	 * Structures and access macros used primarily by the server
	 */

typedef struct _XkbBehavior {
	unsigned char	type;
	unsigned char	data;
} XkbBehavior;

#define	XkbAnyActionDataSize 7
typedef	struct _XkbAnyAction {
	unsigned char	type;
	unsigned char	data[XkbAnyActionDataSize];
} XkbAnyAction;

typedef struct _XkbModAction {
	unsigned char	type;
	unsigned char	flags;
	unsigned char	mask;
	unsigned char	real_mods;
	unsigned char	vmods1;
	unsigned char	vmods2;
} XkbModAction;
#define	XkbModActionVMods(a)      \
	((short)(((a)->vmods1<<8)|((a)->vmods2)))
#define	XkbSetModActionVMods(a,v) \
	(((a)->vmods1=(((v)>>8)&0xff)),(a)->vmods2=((v)&0xff))

typedef struct _XkbGroupAction {
	unsigned char	type;
	unsigned char	flags;
	char		group_XXX;
} XkbGroupAction;
#define	XkbSAGroup(a)		(XkbCharToInt((a)->group_XXX))
#define	XkbSASetGroup(a,g)	((a)->group_XXX=(g))

typedef struct _XkbISOAction {
	unsigned char	type;
	unsigned char	flags;
	unsigned char	mask;
	unsigned char	real_mods;
	char		group_XXX;
	unsigned char	affect;
	unsigned char	vmods1;
	unsigned char	vmods2;
} XkbISOAction;

typedef struct _XkbPtrAction {
	unsigned char	type;
	unsigned char	flags;
	unsigned char	high_XXX;
	unsigned char	low_XXX;
	unsigned char	high_YYY;
	unsigned char	low_YYY;
} XkbPtrAction;
#define	XkbPtrActionX(a)      (Xkb2CharsToInt((a)->high_XXX,(a)->low_XXX))
#define	XkbPtrActionY(a)      (Xkb2CharsToInt((a)->high_YYY,(a)->low_YYY))
#define	XkbSetPtrActionX(a,x) (XkbIntTo2Chars(x,(a)->high_XXX,(a)->low_XXX))
#define	XkbSetPtrActionY(a,y) (XkbIntTo2Chars(y,(a)->high_YYY,(a)->low_YYY))

typedef struct _XkbPtrBtnAction {
	unsigned char	type;
	unsigned char	flags;
	unsigned char	count;
	unsigned char	button;
} XkbPtrBtnAction;

typedef struct _XkbPtrDfltAction {
	unsigned char	type;
	unsigned char	flags;
	unsigned char	affect;
	char		valueXXX;
} XkbPtrDfltAction;
#define	XkbSAPtrDfltValue(a)		(XkbCharToInt((a)->valueXXX))
#define	XkbSASetPtrDfltValue(a,c)	((a)->valueXXX= ((c)&0xff))

typedef struct _XkbSwitchScreenAction {
	unsigned char	type;
	unsigned char	flags;
	char		screenXXX;
} XkbSwitchScreenAction;
#define	XkbSAScreen(a)			(XkbCharToInt((a)->screenXXX))
#define	XkbSASetScreen(a,s)		((a)->screenXXX= ((s)&0xff))

typedef struct _XkbCtrlsAction {
	unsigned char	type;
	unsigned char	flags;
	unsigned char	ctrls3;
	unsigned char	ctrls2;
	unsigned char	ctrls1;
	unsigned char	ctrls0;
} XkbCtrlsAction;
#define	XkbActionSetCtrls(a,c)	(((a)->ctrls3=(((c)>>24)&0xff)),\
					((a)->ctrls2=(((c)>>16)&0xff)),\
					((a)->ctrls1=(((c)>>8)&0xff)),\
					((a)->ctrls0=((c)&0xff)))
#define	XkbActionCtrls(a) ((((unsigned)(a)->ctrls3)<<24)|\
			   (((unsigned)(a)->ctrls2)<<16)|\
			   (((unsigned)(a)->ctrls1)<<8)|((a)->ctrls0))

typedef struct _XkbMessageAction {
	unsigned char	type;
	unsigned char	flags;
	unsigned char	message[6];
} XkbMessageAction;

typedef	union _XkbAction {
	XkbAnyAction		any;
	XkbModAction		mods;
	XkbGroupAction		group;
	XkbISOAction		iso;
	XkbPtrAction		ptr;
	XkbPtrBtnAction		btn;
	XkbPtrDfltAction	dflt;
	XkbSwitchScreenAction	screen;
	XkbCtrlsAction		ctrls;
	XkbMessageAction	msg;
	unsigned char 		type;
} XkbAction;

typedef	struct _XkbControls {
	unsigned char	mouse_keys_dflt_btn;
	unsigned char	num_groups;
	unsigned char	internal_mask;
	unsigned char	ignore_lock_mask;
	unsigned char	internal_real_mods;
	unsigned char	ignore_lock_real_mods;
	unsigned short	internal_vmods;
	unsigned short	ignore_lock_vmods;
	unsigned char	accessx_options;
	unsigned int	enabled_ctrls;
	unsigned short	repeat_delay;
	unsigned short	repeat_interval;
	unsigned short	slow_keys_delay;
	unsigned short	debounce_delay;
	unsigned short	mouse_keys_delay;
	unsigned short	mouse_keys_interval;
	unsigned short	mouse_keys_time_to_max;
	unsigned short	mouse_keys_max_speed;
	unsigned short	mouse_keys_curve;
	unsigned short	accessx_timeout;
	unsigned int	accessx_timeout_mask;
} XkbControlsRec, *XkbControlsPtr;

#define	XkbAX_AnyFeedback(c)	((c)->enabled_ctrls&XkbAccessXFeedbackMask)
#define	XkbAX_NeedOption(c,w)	((c)->accessx_options&(w))
#define	XkbAX_NeedFeedback(c,w)	(XkbAX_AnyFeedback(c)&&XkbAX_NeedOption(c,w))

typedef struct _XkbServerMapRec {
	unsigned short		 num_acts;
	unsigned short		 size_acts;
	XkbAction		*acts;

	XkbBehavior		*behaviors;
	unsigned short		*key_acts;
	unsigned char		*explicit;
	unsigned char		 vmods[XkbNumVirtualMods];
} XkbServerMapRec, *XkbServerMapPtr;

#define	XkbSMKeyActionsPtr(m,k) (&(m)->acts[(m)->key_acts[k]])

	/*
	 * Structures and access macros used primarily by clients
	 */

typedef	struct _XkbSymMapRec {
	unsigned char	 kt_index;
	unsigned char	 group_info;
	unsigned short	 offset;
} XkbSymMapRec, *XkbSymMapPtr;

typedef struct _XkbClientMapRec {
	unsigned char		 size_types;
	unsigned char		 num_types;
	XkbKeyTypeRec		*types;

	unsigned short		 size_syms;
	unsigned short		 num_syms;
	KeySym			*syms;
	XkbSymMapRec		*key_sym_map;
} XkbClientMapRec, *XkbClientMapPtr;

#define	XkbCMKeyGroupsWrap(m,k) (XkbGroupsWrap((m)->key_sym_map[k].group_info))
#define	XkbCMKeyNumGroups(m,k)	(XkbNumGroups((m)->key_sym_map[k].group_info))
#define	XkbCMKeyGroupWidth(m,k)	(XkbCMKeyType(m,k)->group_width)
#define	XkbCMKeyTypeIndex(m,k)	((m)->key_sym_map[k].kt_index)
#define	XkbCMKeyType(m,k)	(&(m)->types[XkbCMKeyTypeIndex(m,k)])
#define	XkbCMKeyNumSyms(m,k)	(XkbCMKeyGroupWidth(m,k)*XkbCMKeyNumGroups(m,k))
#define	XkbCMKeySymsOffset(m,k)	((m)->key_sym_map[k].offset)
#define	XkbCMKeySymsPtr(m,k)	(&(m)->syms[XkbCMKeySymsOffset(m,k)])

	/*
	 * Compatibility structures and access macros
	 */

typedef struct _XkbModCompatRec {
	unsigned char	mods;
	unsigned char	groups;
} XkbModCompatRec,*XkbModCompatPtr;

typedef struct _XkbSymInterpretRec {
	KeySym		sym;
	unsigned char	flags;
	unsigned char	match;
	unsigned char	mods;
	unsigned char	virtual_mod;
	XkbAnyAction	act;
} XkbSymInterpretRec,*XkbSymInterpretPtr;

typedef struct _XkbCompatRec {
	XkbSymInterpretRec	*sym_interpret;
	XkbModCompatRec		 real_mod_compat[XkbNumModifiers];
	XkbModCompatRec		 vmod_compat[XkbNumVirtualMods];
	XkbModCompatPtr		 mod_compat[XkbNumModifiers];
	unsigned short		 num_si;
	unsigned short		 size_si;
} XkbCompatRec, *XkbCompatPtr;

typedef struct _XkbIndicatorMapRec {
	unsigned char	flags;
	unsigned char	which_groups;
	unsigned char	groups;
	unsigned char	which_mods;
	unsigned char	mask;
	unsigned char	real_mods;
	unsigned short	vmods;
	unsigned int	ctrls;
} XkbIndicatorMapRec, *XkbIndicatorMapPtr;

typedef struct _XkbIndicatorRec {
	unsigned char	  	num_phys_indicators;
	XkbIndicatorMapRec	maps[XkbNumIndicators];
} XkbIndicatorRec,*XkbIndicatorPtr;

typedef	struct _XkbKeyNameRec {
	char	name[4];
} XkbKeyNameRec,*XkbKeyNamePtr;

	/*
	 * Names for everything 
	 */
typedef struct _XkbNamesRec {
	Atom		  keycodes;
	Atom		  geometry;
	Atom		  symbols;
	Atom		  semantics;
	Atom		  mods[XkbNumModifiers];
	Atom		  vmods[XkbNumVirtualMods];
	Atom		  indicators[XkbNumIndicators];
	XkbKeyNamePtr	  keys;
	Atom		 *radio_groups;
	Atom		 *char_sets;
	Atom		  phys_symbols;
	Atom		  phys_geometry;

	unsigned char	  num_keys;
	unsigned short	  num_rg;
	unsigned short	  num_char_sets;
} XkbNamesRec,*XkbNamesPtr;

	/*
	 * Alternate Symbol Sets
	 */
typedef struct _XkbAlternateSymsRec {
	Atom		 name;
	unsigned char	 index;
	unsigned char	 num_char_sets;
	Atom		*char_sets;
	unsigned char	 first_key;
	unsigned char	 num_keys;
	unsigned short	 num_syms;
	unsigned short	 size_syms;
	KeySym		*syms;
	XkbSymMapRec	*maps;
	struct _XkbAlternateSymsRec	*next;
} XkbAlternateSymsRec, *XkbAlternateSymsPtr;

typedef	struct _XkbGeometry	*XkbGeometryPtr;
	/*
	 * Tie it all together into one big keyboard description
	 */
typedef	struct _XkbDesc {
	unsigned short	 	flags;
	unsigned short		device_spec;
	KeyCode			min_key_code;
	KeyCode			max_key_code;

	XkbControlsPtr		ctrls;
	XkbServerMapPtr		server;
	XkbClientMapPtr		map;
	XkbIndicatorPtr		indicators;
	XkbNamesPtr		names;
	XkbCompatPtr		compat;
	XkbAlternateSymsPtr	alt_syms;
	XkbGeometryPtr		geom;
} XkbDescRec, *XkbDescPtr;
#define	XkbKeyKeyTypeIndex(d,k)	(XkbCMKeyTypeIndex((d)->map,k))
#define	XkbKeyKeyType(d,k)	(XkbCMKeyType((d)->map,k))
#define	XkbKeyGroupWidth(d,k)	(XkbKeyKeyType(d,k)->group_width)
#define	XkbKeyGroupsWrap(d,k)	(XkbCMKeyGroupsWrap((d)->map,(k)))
#define	XkbKeyNumGroups(d,k)	(XkbCMKeyNumGroups((d)->map,(k)))
#define	XkbKeyNumSyms(d,k)	(XkbCMKeyNumSyms((d)->map,(k)))
#define	XkbKeySymsPtr(d,k)	(XkbCMKeySymsPtr((d)->map,(k)))
#define	XkbKeySym(d,k,n)	(XkbKeySymsPtr(d,k)[n])

#define	XkbKeyHasActions(d,k)	((d)->server->key_acts[k]!=0)
#define	XkbKeyNumActions(d,k)	(XkbKeyHasActions(d,k)?XkbKeyNumSyms(d,k):1)
#define	XkbKeyActionsPtr(d,k)	(XkbSMKeyActionsPtr((d)->server,k))
#define	XkbNumKeys(d)		((d)->max_key_code-(d)->min_key_code+1)

typedef struct _XkbMapChanges {
	unsigned short		 changed;
	unsigned char		 first_type;
	unsigned char		 num_types;
	unsigned char		 first_key_sym;
	unsigned char		 num_key_syms;
	unsigned char		 first_key_act;
	unsigned char		 num_key_acts;
	unsigned char		 first_key_behavior;
	unsigned char		 num_key_behaviors;
	unsigned short		 vmods;
	unsigned char		 first_key_explicit;
	unsigned char		 num_key_explicit;
} XkbMapChangesRec,*XkbMapChangesPtr;

typedef struct _XkbControlsChanges {
	unsigned 		 changed_ctrls;
	unsigned		 enabled_ctrls_changes;
} XkbControlsChangesRec,*XkbControlsChangesPtr;

typedef struct _XkbIndicatorChanges {
	unsigned		 state_changes;
	unsigned		 map_changes;
} XkbIndicatorChangesRec,*XkbIndicatorChangesPtr;

typedef struct _XkbNameChanges {
	unsigned short		changed;
	unsigned char		first_type;
	unsigned char		num_types;
	unsigned char		first_lvl;
	unsigned char		num_lvls;
	unsigned char		first_rg;
	unsigned char		num_rg;
	unsigned		changed_indicators;
	unsigned char		changed_mods;
	unsigned short		changed_vmods;
} XkbNameChangesRec,*XkbNameChangesPtr;

typedef struct _XkbCompatChanges {
	unsigned char		changed_mods;
	unsigned short		changed_vmods;
	unsigned short		first_si;
	unsigned short		num_si;
} XkbCompatChangesRec,*XkbCompatChangesPtr;

typedef struct _XkbAlternateSymChanges {
	unsigned char		id;
	unsigned char		first_key;
	unsigned char		num_keys;
} XkbAlternateSymChanges,*XkbAlternateSymsChangesPtr;

typedef struct _XkbChanges {
	unsigned short		 device_spec;
	unsigned short		 state_changes;
	XkbMapChangesRec	 map;
	XkbControlsChangesRec	 ctrls;
	XkbIndicatorChangesRec	 indicators;
	XkbNameChangesRec	 names;
	XkbCompatChangesRec	 compat;
} XkbChangesRec, *XkbChangesPtr;

#endif /* _XKBSTR_H_ */
