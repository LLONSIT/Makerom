#ifndef __GL_GLIPC_H__
#define __GL_GLIPC_H__
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

/* processes we can send to */

#define WINDOWMAN	(-1)
#define CONMAN		1

#define PORTNAMESIZE	14	/* how big a name getport etc can take */
#define CONSOLEWSHICNO	2	/* XXX vicious hack */

#define	SENDSIZE	36	/* < sizeof(sh->smallbuf) */
struct	sendrec {
	short	msg;		/* message to process */
	short	len;		/* length of message */
	short	data[SENDSIZE];	/* data to msg */
};

/* messages to window manager */

struct portreq {
    short	minsizex;
    short	minsizey;
    short	maxsizex;
    short	maxsizey;
    short	keepaspect;
    short	aspectx;
    short	aspecty;
    short	prefsize;
    short	prefsizex;
    short	prefsizey;
    short	preforigin;
    short	preforiginx;
    short	preforiginy;
    short	xunit;
    short	yunit;
    short	xunitfudge;
    short	yunitfudge;
    short	imakebackground;
    short	imakemap;
    short	gfnum;
#ifdef mips			/* don't change this!! */
    short	icnum;
#endif
    long	pid;
    char	name[PORTNAMESIZE+1];
    short	ginitflag;
    short	noborderflag;
    short	iconsize;
    short	iconsizex;
    short	iconsizey;
};

struct textportreq {
    short	x1;
    short	x2;
    short	y1;
    short	y2;
};

#define BOUNCE		 9
#define PORTREQ		10
#define TEXTPORTREQ	11
#define BACKGROUNDREQ	12
#define PUSHREQ		13
#define POPREQ		14
#define ATTACHREQ	15
#define MOVEREQ		16
#define RESHAPEREQ	17
#define SETTITLEREQ	18
#define BEGINPUPMODE	20
#define ENDPUPMODE	21
#define WINDOWAT	22
#define INCHANAT	23
#define SETNAMEREQ	24
#define TXOPEN		25
#define TXCLOSE		26
#define NEWHINTS	27
#define BEGINFSMODE	28
#define ENDFSMODE	29
#define WINCLOSEREQ	30

/* the following allow us to blink the keyboard lights etc. */

#define PROC_CLKON		41
#define PROC_CLKOFF		42
#define PROC_LAMPON		43
#define PROC_LAMPOFF		44
#define PROC_SETBELL		45
#define PROC_RINGBELL		46
#define PROC_SETDBLIGHTS	47
#define PROC_DBTEXT		48
#define PROC_KBDPORT		49	
#define PROC_DIALPORT		50

#define MEX_GO_DORMANT		70
#define MEX_WAKEUP		71
#define MEX_REINIT		72

extern void gl_save_wm_hints(struct portreq *);
extern void gl_restore_wm_hints(struct portreq *);

#endif	/* !__GL_GLIPC_H__ */
