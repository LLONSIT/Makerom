#ifndef __GL_OBJECTGL_H__
#define __GL_OBJECTGL_H__
/**************************************************************************
 *									  *
 * 		 Copyright (C) 1984, Silicon Graphics, Inc.		  *
 *									  *
 *  These coded instructions, statements, and computer programs  contain  *
 *  unpublished  proprietary  information of Silicon Graphics, Inc., and  *
 *  are protected by Federal copyright law.  They  may  not be disclosed  *
 *  to  third  parties  or copied or duplicated in any form, in whole or  *
 *  in part, without the prior written consent of Silicon Graphics, Inc.  *
 *									  *
 **************************************************************************/

#include "dlpers.h"


/*
 *  object constants
 */

#define INITOBJCHUNKSIZE	1020
#define HASHTABLESIZE		 256		/* must be a power of 2 */

#ifdef	SHLIBGL
#define	GL_BRANCH_TABLE_SDL_CDL	   1		/* separates in DL criticals in DL */
#define	GL_BRANCH_TABLE_SDL_CIM	   2		/* separates in DL criticals in IM */
#define	GL_BRANCH_TABLE_SIM_CIM	   3		/* separates in IM criticals in IM */
#ifdef EXPRESS
#define	GL_BRANCH_TABLE_CGL	   4		/* criticals in CGL */
#endif
#endif	/* SHLIBGL */


/* This flag is defined in dgl/initialize.c */
#ifdef GLDSO
extern int  gl_immediate_mode;
#endif

/*
 *  object typedefs
 */

typedef struct cons {
    struct cons	*link;
    short	*item;
} Cons;

typedef struct hashrec {
    struct hashrec	*link;
    short		*item;
    Tag			tag;
    Object		obj;
} Hashrec;

typedef struct objhdr {
    short	*head;		/* ptr to first valid chunk of disp list */
    Cons	*chunks;	/* linked list of chunks of data */
    long	datasize;	/* # shorts of real data */
    long	physicalsize;	/* total physical shorts */
    Cons	*tags;		/* list of tags */
    short	*tailptr;	/* ptr to end of object */
    short	*tailend;	/* end of last chunk */
    int		valid;		/* == 0 ==> object deleted. */
} Objhdr;

/*
 *  object globals
 */

#ifdef	SHLIBGL
extern long  	        gl_branch_table_status;	/* Display list branch tab? */
#endif	/* SHLIBGL */
extern Boolean  	gl_replacemode;
extern Objelem  	*gl_currentpos; /* -> next legal spot in cur chunk */
extern Objelem  	*gl_currentend; /* -> one past end of current chunk */
extern struct objhdr 	*gl_openobjhdr;
extern Object   	gl_openobj;

extern Hashrec	*gl_hashtable[HASHTABLESIZE];
extern long	gl_objchunksize;
extern short	gl_objsizefrozen;

extern Objhdr   *gl_findobjhdr(), *gl_getnewobjhdr();
extern short    *gl_addchunk();
extern void     gl_interpret(Objelem *);
extern void	gl_load_branch_table();
extern void	gl_intrptab_insert(struct intrprec *);
extern void	gl_compile(int, Int32 *);
extern short	*gl_findhash();

#define gl_findobjhdr(n)	(Objhdr *)gl_findhash(n, -1)

DL_INTRP_FORW(retsym);
DL_INTRP_FORW(jump);
DL_INTRP_FORW(tag);
DL_INTRP_FORW(nop);
DL_INTRP_FORW(slopnop2);
DL_INTRP_FORW(slopnop3);
DL_INTRP_FORW(gl_ecallfunc);
DL_INTRP_FORW(nonprim);
DL_INTRP_FORW(quad_nop1);
DL_INTRP_FORW(quad_nop2);
DL_INTRP_FORW(quad_nop3);

#endif	/* !__GL_OBJECTGL_H__ */
