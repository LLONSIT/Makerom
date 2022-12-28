/* $XConsortium: XKBlib.h,v 1.8 94/04/08 15:11:49 erik Exp $ */
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

#ifndef _XKBLIB_H_
#define _XKBLIB_H_

#include <X11/extensions/XKBstr.h>

typedef struct _XkbAnyEvent {
	int type;		/* XkbAnyEvent */
	unsigned long serial;	/* # of last request processed by server */
	Bool send_event;	/* true if this came from a SendEvent request */
	Display *display;	/* Display the event was read from */
	Time time;		/* milliseconds */
	int xkb_type;		/* XkbStateNotify ... XkbCompatMapNotify */
	unsigned int device;	/* device ID */
} XkbAnyEvent;

typedef struct _XkbStateNotifyEvent {
	int type;		/* XkbAnyEvent */
	unsigned long serial;	/* # of last request processed by server */
	Bool send_event;	/* true if this came from a SendEvent request */
	Display *display;	/* Display the event was read from */
	Time time;		/* milliseconds */
	int xkb_type;		/* XkbStateNotify */
	unsigned int device;	/* device ID */
	unsigned int keycode;	/* keycode that caused the change */
	unsigned int event_type;/* KeyPress or KeyRelease */
	unsigned int req_major;/* Major opcode of request */
	unsigned int req_minor;/* Minor opcode of request */
	unsigned int changed;	/* mask of changed state components */
	unsigned int group;	/* keyboard group */
	unsigned int base_group;/* base keyboard group */
	unsigned int latched_group;/* latched keyboard group */
	unsigned int locked_group; /* locked keyboard group */
	unsigned int mods;	  /* modifier state */
	unsigned int base_mods;	  /* base modifier state */
	unsigned int latched_mods; /* latched modifiers */
	unsigned int locked_mods;  /* locked modifiers */
	unsigned int compat_state; /* compatibility state */
} XkbStateNotifyEvent;

typedef struct _XkbMapNotifyEvent {
	int type;		/* XkbAnyEvent */
	unsigned long serial;	/* of last request processed by server */
	Bool send_event;	/* true if this came from a SendEvent request */
	Display *display;	/* Display the event was read from */
	Time time;		/* milliseconds */
	int xkb_type;		/* XkbMapNotify */
	unsigned int device;	/* device ID */
	unsigned int changed;		/* fields which have been changed */
	unsigned int resized;		/* fields which have been resized */
	unsigned int first_type;	/* first changed key type */
	unsigned int num_types;		/* number of changed key types */
	unsigned int first_key_sym;	/* first changed key sym */
	unsigned int num_key_syms;	/* number of changed key syms */
	unsigned int first_key_act;	/* first changed key act */
	unsigned int num_key_acts;	/* number of changed key acts */
	unsigned int first_key_behavior;/* first changed key behavior */
	unsigned int num_key_behaviors;	/* number of changed key behaviors */
	unsigned int vmods;	/* mask of changed virtual mods */
	unsigned int first_key_explicit;/* range of keys with changed... */
	unsigned int num_key_explicit;	/* ...explicit component settings */
} XkbMapNotifyEvent;

typedef struct _XkbControlsNotify {
	int type;		/* XkbAnyEvent */
	unsigned long serial;	/* of last request processed by server */
	Bool send_event;	/* true if this came from a SendEvent request */
	Display *display;	/* Display the event was read from */
	Time time;		/* milliseconds */
	int xkb_type;		/* XkbControlsNotify */
	unsigned int device;	/* device ID */
	unsigned long int changed_ctrls;
	unsigned long int enabled_ctrls;
	unsigned long int enabled_ctrl_changes;
	unsigned int keycode;
	unsigned int event_type;
	unsigned int req_major;
	unsigned int req_minor;
} XkbControlsNotifyEvent;

typedef struct _XkbIndicatorNotify {
	int type;		/* XkbAnyEvent */
	unsigned long serial;	/* of last request processed by server */
	Bool send_event;	/* true if this came from a SendEvent request */
	Display *display;	/* Display the event was read from */
	Time time;		/* milliseconds */
	int xkb_type;		/* XkbIndicatorNotify */
	unsigned int device;	/* device ID */
	unsigned int state_changed;/* indicators that have changed state */
	unsigned int state;	 /* current state of all indicators */
	unsigned int map_changed;/* indicators whose maps have changed */
} XkbIndicatorNotifyEvent;

typedef struct _XkbBellNotify {
	int type;		/* XkbAnyEvent */
	unsigned long serial;	/* of last request processed by server */
	Bool send_event;	/* true if this came from a SendEvent request */
	Display *display;	/* Display the event was read from */
	Time time;		/* milliseconds */
	int xkb_type;		/* XkbBellNotify */
	unsigned int device;	/* device ID */
	unsigned int percent;	/* requested volume as a percent of maximum */
	unsigned int pitch;	/* requested pitch in Hz */
	unsigned int duration;	/* requested duration in milliseconds */
	unsigned int bell_class;/* (input extension) class of feedback */
	unsigned int bell_id;	/* (input extension) ID of feedback */
	Atom name;		/* "name" of requested bell */
	Window window;		/* window associated with event (if any) */
} XkbBellNotifyEvent;

typedef struct _XkbSlowKeyNotify {
	int type;		/* XkbAnyEvent */
	unsigned long serial;	/* of last request processed by server */
	Bool send_event;	/* true if this came from a SendEvent request */
	Display *display;	/* Display the event was read from */
	Time time;		/* milliseconds */
	int xkb_type;		/* XkbSlowKeyNotify */
	unsigned int device;	/* device ID */
	unsigned int slow_key_state;/* press, release, accept, reject */
	unsigned int keycode;	/* key of event */
	unsigned int delay;	/* current delay in milliseconds */
} XkbSlowKeyNotifyEvent;

typedef struct _XkbNamesNotify {
	int type;		/* XkbAnyEvent */
	unsigned long serial;	/* of last request processed by server */
	Bool send_event;	/* true if this came from a SendEvent request */
	Display *display;	/* Display the event was read from */
	Time time;		/* milliseconds */
	int xkb_type;		/* XkbNamesNotify */
	unsigned int device;	/* device ID */
	unsigned int changed;	/* names that have changed */
	unsigned int first_type;	/* first key type with new name */
	unsigned int num_types;		/* number of key types with new names */
	unsigned int first_lvl;	/* first key type new new level names */
	unsigned int num_lvls;	/* # of key types w/new level names */
	unsigned int first_radio_group;	/* first radio group with new name */
	unsigned int num_radio_groups;	/* # of radio groups with new names */
	unsigned int num_char_sets;	/* total number of charsets */
	unsigned int changed_mods;	/* modifiers with new names */
	unsigned int changed_vmods;/* virtual modifiers with new names */
	unsigned int changed_indicators;/* indicators with new names */
} XkbNamesNotifyEvent;

typedef struct _XkbCompatMapNotify {
	int type;		/* XkbAnyEvent */
	unsigned long serial;	/* of last request processed by server */
	Bool send_event;	/* true if this came from a SendEvent request */
	Display *display;	/* Display the event was read from */
	Time time;		/* milliseconds */
	int xkb_type;		/* XkbCompatMapNotify */
	unsigned int device;	/* device ID */
	unsigned int changed_mods;	/* modifiers with new compat maps */
	unsigned int changed_vmods;/* virtual mods w/new compat maps */
	unsigned int first_si;		/* first new symbol interp */
	unsigned int num_si;		/* number of new symbol interps */
	unsigned int num_total_si;	/* total # of symbol interps */
} XkbCompatMapNotifyEvent;

typedef struct _XkbAlternateSymsNotify {
	int type;		/* XkbAnyEvent */
	unsigned long serial;	/* of last request processed by server */
	Bool send_event;	/* true if this came from a SendEvent request */
	Display *display;	/* Display the event was read from */
	Time time;		/* milliseconds */
	int xkb_type;		/* XkbAlternateSymsNotify */
	unsigned int device;	/* device ID */
	unsigned int alt_syms_id;/* identifier of changed alt symbol set */
	unsigned int first_key;	/* first key with new alternate syms */
	unsigned int num_keys;	/* number of keys with alternate syms */
} XkbAlternateSymsNotifyEvent;

typedef struct _XkbActionMessage {
	int type;		/* XkbAnyEvent */
	unsigned long serial;	/* of last request processed by server */
	Bool send_event;	/* true if this came from a SendEvent request */
	Display *display;	/* Display the event was read from */
	Time time;		/* milliseconds */
	int xkb_type;		/* XkbActionMessage */
	unsigned int device;	/* device ID */
	unsigned int keycode;	/* key that generated the event */
	Bool press;		/* true if act caused by key press */
	Bool key_event_follows;	/* true if key event is also generated */
	char message[XkbActionMessageLength]; /* message generated by key */
} XkbActionMessageEvent;

typedef union _XkbEvent {
	int			type;
	XkbAnyEvent		any;
	XkbStateNotifyEvent	state;
	XkbMapNotifyEvent	map;
	XkbControlsNotifyEvent	ctrls;
	XkbIndicatorNotifyEvent indicators;
	XkbBellNotifyEvent	bell;
	XkbSlowKeyNotifyEvent	slow_key;
	XkbNamesNotifyEvent	names;
	XkbCompatMapNotifyEvent	compat;
	XkbAlternateSymsNotifyEvent alt_syms;
	XkbActionMessageEvent	message;
	XEvent			core;
} XkbEvent;

typedef struct	_XkbKbdDpyState	XkbKbdDpyStateRec,*XkbKbdDpyStatePtr;

_XFUNCPROTOBEGIN

extern	Bool	XkbIgnoreExtension(
#if NeedFunctionPrototypes
	Bool			/* ignore */
#endif
);

extern	Bool	XkbQueryExtension(
#if NeedFunctionPrototypes
	Display *		/* display */,
	int *			/* opcodeReturn */,
	int *			/* eventBaseReturn */,
	int *			/* errorBaseReturn */,
	int *			/* majorRtrn */,
	int *			/* minorRtrn */
#endif
);

extern	Bool	XkbUseExtension(
#if NeedFunctionPrototypes
	Display *		/* display */
#endif
);

extern	Status	XkbLibraryVersion(
#if NeedFunctionPrototypes
	int *			/* libMajorRtrn */,
	int *			/* libMinorRtrn */
#endif
);


extern	unsigned	XkbKeysymToModifiers(
#if NeedFunctionPrototypes
    Display *			/* dpy */,
    KeySym 			/* ks */
#endif
);

extern	int		XkbTranslateKey(
#if NeedFunctionPrototypes
    Display *			/* dpy */,
    KeyCode 			/* keycode */,
    unsigned int 		/* modifiers */,
    unsigned int *		/* modifiers_return */,
    KeySym *			/* keysym_return */
#endif
);

extern	int		XkbTranslateKeySym(
#if NeedFunctionPrototypes
    Display *			/* dpy */,
    register KeySym *		/* sym_return */,
    unsigned int 		/* modifiers */,
    char *			/* buffer */,
    int 			/* nbytes */
#endif
);

extern	Status	XkbSetAutoRepeatRate(
#if NeedFunctionPrototypes
	Display *		/* display */,
	unsigned		/* deviceSpec */,
	unsigned		/* delay */,
	unsigned		/* interval */
#endif
);

extern	Bool	XkbGetAutoRepeatRate(
#if NeedFunctionPrototypes
	Display *		/* display */,
	unsigned		/* deviceSpec */,
	unsigned *		/* delayRtrn */,
	unsigned *		/* intervalRtrn */
#endif
);

extern	Bool	XkbDeviceBell(
#if NeedFunctionPrototypes
	Display *		/* display */,
	Window			/* win */,
	int			/* deviceSpec */,
	int			/* bellClass */,
	int			/* bellID */,
	int			/* percent */,
	Atom			/* name */
#endif
);

extern	Bool	XkbForceDeviceBell(
#if NeedFunctionPrototypes
	Display *		/* display */,
	int			/* deviceSpec */,
	int			/* bellClass */,
	int			/* bellID */,
	int			/* percent */
#endif
);

extern	Bool	XkbBell(
#if NeedFunctionPrototypes
	Display *		/* display */,
	Window			/* win */,
	int			/* percent */,
	Atom			/* name */
#endif
);

extern	Bool	XkbForceBell(
#if NeedFunctionPrototypes
	Display *		/* display */,
	int			/* percent */
#endif
);

extern	Bool	XkbSelectEvents(
#if NeedFunctionPrototypes
	Display *		/* display */,
	unsigned		/* deviceID */,
	unsigned long		/* affect */,
	unsigned long		/* values */
#endif
);

extern	Bool	XkbSelectEventDetails(
#if NeedFunctionPrototypes
	Display *		/* display */,
	unsigned 		/* deviceID */,
	unsigned 		/* eventType */,
	unsigned long 		/* affect */,
	unsigned long 		/* details */
#endif
);

extern	Status	XkbGetIndicatorState(
#if NeedFunctionPrototypes
    Display *			/* dpy */,
    unsigned int 		/* deviceSpec */,
    unsigned int *		/* pStateRtrn */
#endif
);

extern	Status	 XkbGetIndicatorMap(
#if NeedFunctionPrototypes
	Display *		/* display */,
	unsigned long		/* which */,
	XkbDescPtr		/* desc */
#endif
);

extern	Status	 XkbSetIndicatorMap(
#if NeedFunctionPrototypes
	Display *		/* display */,
	unsigned long 		/* which */,
	XkbDescPtr		/* desc */
#endif
);

extern	Status	XkbLockModifiers(
#if NeedFunctionPrototypes
	Display *		/* display */,
	unsigned 		/* deviceSpec */,
	unsigned 		/* affect */,
	unsigned 		/* values */
#endif
);

extern	Status	XkbLatchModifiers(
#if NeedFunctionPrototypes
	Display *		/* display */,
	unsigned 		/* deviceSpec */,
	unsigned 		/* affect */,
	unsigned 		/* values */
#endif
);

extern	Status	XkbSetServerInternalMods(
#if NeedFunctionPrototypes
	Display *		/* display */,
	unsigned 		/* deviceSpec */,
	unsigned 		/* affect */,
	unsigned 		/* values */
#endif
);

extern	Status	XkbSetIgnoreLockMods(
#if NeedFunctionPrototypes
	Display *		/* display */,
	unsigned 		/* deviceSpec */,
	unsigned 		/* affect */,
	unsigned 		/* values */
#endif
);


extern	Status	XkbVirtualModsToReal(
#if NeedFunctionPrototypes
	XkbDescPtr		/* xkb */,
	unsigned		/* virtual_mask */,
	unsigned *		/* mask_rtrn */
#endif
);

extern	Status XkbComputeEffectiveMap(
#if NeedFunctionPrototypes
	XkbDescPtr 		/* xkb */,
	XkbKeyTypePtr		/* type */,
	unsigned char *		/* map_rtrn */
#endif
);

extern	Status XkbInitCanonicalKeyTypes(
#if NeedFunctionPrototypes
    XkbDescPtr			/* xkb */,
    unsigned			/* which */,
    int				/* keypadVMod */
#endif
);

extern	Status XkbAllocKeyType(
#if NeedFunctionPrototypes
	XkbKeyTypePtr *		/* type_inout */,
	unsigned		/* nVMapEntries */
#endif
);

extern	Status XkbAllocClientMap(
#if NeedFunctionPrototypes
	XkbDescPtr		/* xkb */,
	unsigned		/* which */,
	unsigned		/* nTypes */
#endif
);

extern	Status XkbAllocServerMap(
#if NeedFunctionPrototypes
	XkbDescPtr		/* xkb */,
	unsigned		/* which */,
	unsigned		/* nActions */
#endif
);

extern	XkbDescPtr XkbGetMap(
#if NeedFunctionPrototypes
	Display *		/* display */,
	unsigned 		/* which */,
	unsigned 		/* deviceSpec */
#endif
);

extern	Status	XkbGetUpdatedMap(
#if NeedFunctionPrototypes
	Display *		/* display */,
	unsigned 		/* which */,
	XkbDescPtr		/* desc */
#endif
);

extern	Status	XkbGetMapChanges(
#if NeedFunctionPrototypes
	Display *		/* display */,
	XkbDescPtr		/* desc */,
	XkbChangesPtr		/* changes */
#endif
);

extern	Status	XkbGetActions(
#if NeedFunctionPrototypes
	Display *		/* display */,
	unsigned 		/* firstAction */,
	unsigned		/* nActions */,
	XkbDescPtr		/* desc */
#endif
);

extern	Status	XkbGetRadioGroups(
#if NeedFunctionPrototypes
	Display *		/* display */,
	unsigned 		/* firstRadioGroup */,
	unsigned		/* nRadioGroups */,
	XkbDescPtr		/* desc */
#endif
);

extern	Status	XkbGetKeySyms(
#if NeedFunctionPrototypes
	Display *		/* display */,
	unsigned 		/* firstKey */,
	unsigned		/* nKeys */,
	XkbDescPtr		/* desc */
#endif
);

extern	Status	XkbGetKeyActions(
#if NeedFunctionPrototypes
	Display *		/* display */,
	unsigned 		/* firstKey */,
	unsigned		/* nKeys */,
	XkbDescPtr		/* desc */
#endif
);

extern	Status	XkbGetKeyBehaviors(
#if NeedFunctionPrototypes
	Display *		/* display */,
	unsigned 		/* firstKey */,
	unsigned		/* nKeys */,
	XkbDescPtr		/* desc */
#endif
);

extern	Status	XkbGetVirtualMods(
#if NeedFunctionPrototypes
	Display *		/* display */,
	unsigned 		/* which */,
	XkbDescPtr		/* desc */
#endif
);

extern	Status	XkbGetKeyExplicitComponents(
#if NeedFunctionPrototypes
	Display *		/* display */,
	unsigned 		/* firstKey */,
	unsigned		/* nKeys */,
	XkbDescPtr		/* desc */
#endif
);

extern	Status	XkbGetControls(
#if NeedFunctionPrototypes
	Display *		/* display */,
	unsigned long		/* which */,
	XkbDescPtr		/* desc */
#endif
);

extern	Status	XkbSetControls(
#if NeedFunctionPrototypes
	Display *		/* display */,
	unsigned long		/* which */,
	XkbDescPtr		/* desc */
#endif
);

extern	Status	XkbAllocCompatMap(
#if NeedFunctionPrototypes
    XkbDescPtr			/* xkb */,
    unsigned			/* which */,
    unsigned			/* nInterpret */
#endif
);

extern	Status XkbFreeCompatMap(
#if NeedFunctionPrototypes
    XkbDescPtr			/* xkb */,
    Bool			/* all */,
    unsigned			/* which */
#endif
);

extern Status XkbGetCompatMap(
#if NeedFunctionPrototypes
	Display *		/* dpy */,
	unsigned 		/* which */,
	XkbDescPtr 		/* xkb */
#endif
);

extern Status XkbSetCompatMap(
#if NeedFunctionPrototypes
	Display *		/* dpy */,
	unsigned 		/* which */,
	XkbDescPtr 		/* xkb */,
	Bool			/* updateActions */
#endif
);

extern	Status XkbAllocNames(
#if NeedFunctionPrototypes
	XkbDescPtr		/* xkb */,
	unsigned		/* which */
#endif
);

extern	Status XkbFreeNames(
#if NeedFunctionPrototypes
	XkbDescPtr		/* xkb */,
	Bool			/* all */,
	unsigned		/* which */
#endif
);

extern	Status	XkbGetNames(
#if NeedFunctionPrototypes
	Display *		/* display */,
	unsigned		/* which */,
	XkbDescPtr		/* desc */
#endif
);

extern	Status	XkbSetNames(
#if NeedFunctionPrototypes
	Display *		/* display */,
	unsigned		/* which */,
	unsigned		/* firstColMap */,
	unsigned		/* nColMaps */,
	XkbDescPtr		/* desc */
#endif
);

extern	Status	XkbGetState(
#if NeedFunctionPrototypes
	Display *		/* display */,
	unsigned 		/* deviceSpec */,
	XkbStatePtr		/* rtrnState */
#endif
);

extern	Status	XkbSetMap(
#if NeedFunctionPrototypes
	Display *		/* display */,
	unsigned		/* which */,
	XkbDescPtr		/* desc */
#endif
);

extern	Status	XkbChangeMap(
#if NeedFunctionPrototypes
	Display*		/* display */,
	XkbDescPtr		/* desc */,
	XkbMapChangesRec *	/* changes */
#endif
);

extern	KeySym *XkbEnlargeKeySyms(
#if NeedFunctionPrototypes
	XkbDescPtr		/* desc */,
	int 			/* forKey */,
	int 			/* symsNeeded */
#endif
);

extern	XkbAction *XkbEnlargeKeyActions(
#if NeedFunctionPrototypes
	XkbDescPtr		/* desc */,
	int 			/* forKey */,
	int 			/* actsNeeded */
#endif
);

extern	Status XkbChangeTypeOfKey(
#if NeedFunctionPrototypes
	XkbDescPtr		/* xkb */,
	unsigned 		/* key */,
	unsigned		/* newType */,
	XkbMapChangesRec *	/* pChanges */
#endif
);

extern	Status XkbChangeSymsForKey(
#if NeedFunctionPrototypes
	XkbDescPtr		/* xkb */,
	unsigned 		/* key */,
	unsigned		/* count */,
	KeySym *                /* syms */,
	XkbMapChangesRec *	/* pChanges */
#endif
);

#ifdef NOTYET

extern	XkbKbdGeometryRec	*XkbGetKbdGeometry(
#if NeedFunctionPrototypes
    Display *dpy, char *name
#endif
);

extern	XkbKbdDpyStateRec	*XkbKbdZoom(
#if NeedFunctionPrototypes
    XkbKbdGeometryRec*,int w,int h
#endif
);
extern	XkbKbdKeyRec		*XkbKbdNextKey(
#if NeedFunctionPrototypes
    XkbKbdDpyStatePtr pState,
    int *left,int *top,
    int *right,int *bottom
#endif
);
#endif

extern	Status			 XkbSetDebuggingFlags(
#if NeedFunctionPrototypes
    Display *		/* dpy */,
    unsigned int	/* mask */,
    unsigned int	/* flags */,
    char *		/* msg */,
    unsigned int *	/* rtrnFlags */,
    Bool *		/* disableLocks */
#endif
);

_XFUNCPROTOEND

#endif /* _XKBLIB_H_ */
