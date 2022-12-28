#ifndef __SYS_GRO_H__
#define __SYS_GRO_H__

/**************************************************************************
 *									  *
 * 		 Copyright (C) 1990, Silicon Graphics, Inc.		  *
 *									  *
 *  These coded instructions, statements, and computer programs  contain  *
 *  unpublished  proprietary  information of Silicon Graphics, Inc., and  *
 *  are protected by Federal copyright law.  They  may  not be disclosed  *
 *  to  third  parties  or copied or duplicated in any form, in whole or  *
 *  in part, without the prior written consent of Silicon Graphics, Inc.  *
 *									  *
 **************************************************************************/

#ident "$Revision: 1.18 $"

#include "sys/gfx.h"

/*
 * Structure returned by ioctl GFX_GETBOARDINFO when executed on G graphics.
 */
struct g_info {
	struct gfx_info gfx_info; 	/* device independent information */
	int bitplanes;			/* available bit planes */
	int zplanes;			/* available Z-buffer bit planes */
};

struct g_validatefocus_args {
	long		rnid;
	unsigned long	focus;
};

struct g_setcursormode_args {
	int	mode;
};

struct g_setcursorcacheid_args {
	int	cache_id;
};

struct g_setcursorcolors_args {
	int	colors[3];
};

struct g_rtnbufbegin_args {
        void *buffer;		/* user buffer virtual address */
        int buflen;		/* length of buffer */
};

struct g_rtnbufend_args {
        int count;		/* feedback data count */
        int overflow;            /* set if buffer length was insufficient */
};

struct g_gsetmem_args {		/* G_SETMEM and G_GETMEM arguments */
	long	offset;		/* offset into boards memory space */
	char	*data;		/* pointer to data */
	long	count;		/* count of data */
};

struct g_download_args {	/* G_DOWNLOAD arguments */
	long	offset;		/* offset into boards memory space */
	long	count;		/* count of data */
	char 	*data;		/* pointer to data */
};

struct g_run_args {		/* G_RUN/G_SIMPLERUN arguments */
	long	pc;		/* initial pc */
	short	water;		/* water mark for FE */
	long	arg;		/* one argument */
};

struct g_cgreg_args {		/* G_RCGREG / G_WCGREG arguments */
	unsigned int reg;	/* register number */
	unsigned char value;	/* value */
};

struct g_setdisplaymode_args {
   	long int wid;
	unsigned long int displaymode;
};

/* Architecture dependent commands */

#define	G_SWITCHZERO		(GFX_PRIVATE_BASE+0)
#define	G_FLUSHPIPE		(GFX_PRIVATE_BASE+1)
#define G_RTNBUFBEGIN		(GFX_PRIVATE_BASE+2)
#define G_RTNBUFEND		(GFX_PRIVATE_BASE+3)
#define G_SETCURSORMODE		(GFX_PRIVATE_BASE+4)
#define G_SETCURSORCACHEID	(GFX_PRIVATE_BASE+5)
#define G_SETCURSORCOLORS	(GFX_PRIVATE_BASE+6)
#define G_VALIDATEFOCUS		(GFX_PRIVATE_BASE+7)
#define G_SETMEM		(GFX_PRIVATE_BASE+8)
#define G_GETMEM		(GFX_PRIVATE_BASE+9)
#define G_SETCRSTATE		(GFX_PRIVATE_BASE+10)
#define G_GETCRSTATE		(GFX_PRIVATE_BASE+11)
#define G_SIMPLERUN		(GFX_PRIVATE_BASE+12)
#define G_RUN			(GFX_PRIVATE_BASE+13)
#define G_DOWNLOAD		(GFX_PRIVATE_BASE+14)
#define G_RDYTST		(GFX_PRIVATE_BASE+15)
#define G_RESET			(GFX_PRIVATE_BASE+16)
#define G_INTRGM		(GFX_PRIVATE_BASE+17)	/* interrupt GM */
#define G_RCGREG		(GFX_PRIVATE_BASE+18)	/* read CG register */
#define G_WCGREG		(GFX_PRIVATE_BASE+19)	/* write CG register*/
#define G_SETDISPLAYMODE	(GFX_PRIVATE_BASE+20)
#define G_DIAGMAPALL		(GFX_PRIVATE_BASE+21)

/* defines for the CG register */
#define CG_MODE_REG		0
#define CG_CONTROL_REG		1
#define CG_HORPHASE_REG		2
#define CG_SUBPHASE_REG		3
#define CG_LASTREG		CG_SUBPHASE_REG


#ifdef _KERNEL
/*
 * Defines for the "G" graphics option using the GF3 board
 */

typedef struct	contextstate {
	ushort *geaddr;			/* kernel virt addr of pipe head */
	shmem_t *shmem;			/* kernel virt addr of user shared mem*/
	sema_t waitsema;		/* synch semaphore for interrupt cmds */
	int    waitflag;		/* state of interrupt request */
} contextstate_t;

struct gro_data {
	struct gfx_data	gfx_data;	/* device independent data */
	struct g_info	info;		/* clover1 specific info */
	ushort *csraddr;		/* pointer to CSR	*/
	void *memaddr;			/* pointer to on-board shared memory */
	graphicsmgr_t	*gmaddr;	/* pointer to manager structure */
	contextstate_t	*curcontext;	/* current context */
	contextstate_t	*kernelcontext;	/* context for driver's use */
	contextstate_t 	contexts[MAXCONTEXTPERBOARD];
	struct rrm_rnode *loadedpcxs[MAXCONTEXTPERBOARD];
	int numcontexts;		/* number of currently assigned cxts */
	int alive;			/* board can be talked to */
	uint offset;			/* current microcode load offset */
	int		timeoutcnt;	/* Number of times fifo timeout */
};

/*
 * Device DEPENDENT rendering node structure
 */
struct gro_rnode {
	int dovalidateclip;
	struct RRM_ValidateClip clip;

        /* user return buffer to copy out data at interrupt time */
        void *rtnbufu;		/* user virtual address of buffer */
        void *rtnbufk;		/* kernel virtual address of buffer */
        long rtnbuflen;		/* buffer size (bytes) */
        long rtnbufcount;	/* number bytes in buffer */
        long rtnbufoverflow;	/* buffer overflowed  */
};

/*
 * address of base of pipe (note that it can be accessed in both
 * A24 and A32 NP and S spaces. all new boards are in A32)
 */
#define GF3_PIPE_A32	0x18900000	/* base address of pipe */
#define GF3_PIPE_SIZE	0x100000	/* 1 Meg pipe		*/

/* Address of 1Meg of shared memory */
#define GF3_SHMEM_A32	0x18800000	/* base address of shared mem */
#define GF3_MEM_SIZE	0x100000	/* 1 Meg of dual ported memory	*/

/* Control and Status register (in Short space) */
#define GF3_CSR_A16	0x2002		/* read status write control */

#define GF3_SR_FEHW	0x8000		/* front-end fifo high water */
#define GF3_SR_FELW	0x4000		/* front-end fifo low water */
#define GF3_SR_FIHW	0x2000		/* input fifo high water */
#define GF3_SR_FILW	0x1000		/* input fifo low water */
#define GF3_SR_GCW	0x0800		/* GC waiting for regfile (assert low)*/
#define GF3_SR_NST	0x0400		/* fifo nesting error (assert low) */
#define GF3_SR_INT	0x0200		/* internal init (assert low) */
#define GF3_SR_HLT	0x0100		/* GM 68020 halted (assert low) */

#define GF3_CR_HEN	0x0040		/* high water enable interrupt */
#define GF3_CR_IGM	0x0020		/* interrupt the GM 020 */
#define GF3_CR_RST	0x0010		/* reset bit (asserted low) */
#define GF3_CR_IEN	0x0008		/* interrupt enable */
#define GF3_CR_INT7	0x0007		/* interrupt on level 7 */
#define GF3_CR_INT6	0x0006		/* interrupt on level 6 */
#define GF3_CR_INT5	0x0005		/* interrupt on level 5 */
#define GF3_CR_INT4	0x0004		/* interrupt on level 4 */
#define GF3_CR_INT3	0x0003		/* interrupt on level 3 */
#define GF3_CR_INT2	0x0002		/* interrupt on level 2 */
#define GF3_CR_INT1	0x0001		/* interrupt on level 1 */
#define GF3_CR_INT0	0x0000		/* interrupt on level 0 */

/*
 * the normal mode for the GF3 is not reset, enable vme interrupts at the 
 * given level
 */
#define CR_STATE (GF3_CR_RST | GF3_CR_IEN | GF3_INTLEVEL | GF3_CR_HEN )
/* Interrupt Vector register (vector provided VME interrupt) */

#define	GF3_RESET_DELAY	30		/* microseconds */

#define GF3_VEC_A16	0x2000

/* Interrupt on level 6 with vector 0x40 (sync with vme.c) */
#define GF3_INTLEVEL	GF3_CR_INT6
#define GF3_INTVEC	0x40

#define GRO_FIFO_TIMEOUT	500	/* spin fifo full timeout */

#define	GROWAIT_TIMEOUT		0x1
#define	GROWAIT_FLUSHPIPE	0x2
#define	GROWAIT_RTNBUF		0x4

#define GRO_REGION_SIZE		 3	/* GE, shmem, csr */


/*
 * GM prom interface definitions.  This is the interface
 * definitions between the host and the GM when the GM is running at
 * the prom level.  The structure resides at low end of core.
 *
 */

/*
 * This is the starting PC of the GM microcode.
 */
#define	GM_ENTRY	0x1004000

/*
 * Water mark for FE GA
 */
#define DEFAULTWATER	0x3626	

/*
 * This structure is at the beginning of the GM memory.  It is used to
 * communicate between the host and the GM proms.
 */
#define	BOOT_CBUFSIZE	32		/* never ever ever ever ever change */
struct	gmprom_hdr {
	long	magic;			/* flag controlling boot process */
	long	(*pc)();		/* starting pc for downloaded code */
	long	havedebug;		/* true if we have the debug board */
	long	drawlogo;		/* true if we should draw sgi logo */
					/* also used for 30/60Hz support */
	long	handshake;		/* used for handshake test or argument 
					   to a downloaded program */
	struct gmprom_cbuf {
		char c[BOOT_CBUFSIZE];
	} c;				/* 32 characters for printing */
#ifdef INPROM
	struct	textport tport;		/* the textport data structures */
#endif
};

/*
 * When the proms go into boot state, the load the following value into
 * long word 0 in the shared dynamic memory.
 * Once the proms load this value into dynamic ram, they wait for it
 * to change.  
 */
#define	BOOT_MAGIC0	0xAAAAAAAA

/*
 * Once the host completes the download into the GM's memory,
 * it stores the value below into the same cell signalling to the proms
 * that the download is complete.
 */
#define	BOOT_MAGIC1	0x55555555

/*
 * When the host wishes to print something using the GM, it writes
 * the magic value below into memory, and places up to 32 characters
 * into the array defined above.
 */
#define	BOOT_MAGIC2	0xCCCCCCCC

/*
 * If the host wishes to reset the graphics display, it issues this
 * call.
 */
#define	BOOT_MAGIC3	0xDDDDDDDD

/*
 * The host uses this command to test for the GF3 running this prom
 * software.  If the handshake is answered properly then the host can
 * assume that the GF3 is in a sane state and doesn't need reseting.
 */
#define	BOOT_MAGIC4	0xEEEEEEEE
#define	BOOT_HANDSHAKE	0xDEADBEEF

#define	GMPROM_HDR_DRAWLOGO	0xBEEDCEED

/*
 * For some machines, the logo should not be drawn.  Therefore, we assume
 * we should not draw it unless gmprom_hdr.drawlogo is set to this
 * magic value (or combined (in sum) with the 30Hz magic). =>
 * 0x0: no logo, 60Hz,
 * 0xdead: no logo, 30 Hz
 * 0xBEEDCEED: logo, 60Hz
 * 0xBEEDCEED + 0xdead: logo, 30Hz
 */
#define	GMPROM_HDR_DRAWLOGO	0xBEEDCEED

#define MONITOR_60HZ 			0x00000000
#define MONITOR_30HZ 			0x00000001
#define MONITOR_NTSC 			0x00000002
#define MONITOR_PAL 			0x00000003
#define MONITOR_343			0x00000004
#define MONITOR_NO_SYNC_ON_GREEN	0x00000010
#define MONITOR_GENLOCK			0x00000020

#endif /* _KERNEL */

#endif /* __SYS_GRO_H__ */
