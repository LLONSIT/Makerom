/*
 * GM addresses.  Each object addressable by the GM has 4mb of address
 * space assigned.
 *
 * Written by: Kipp Hickman
 *
 * head/gl/addrs.h
 * $Revision: 1.14 $
 *  Revised: 2 Jun 86 to include seperate address space for Register File
 */

/* DE2 chip addresses */
#define DE2ADDR_REG1		0x0003000
#define DE2ADDR_REG2		0x0003800
#define DE2ADDR_REG3		0x0007000

#define DE2ADDR_XBAR0		0x0040000
#define DE2ADDR_XBAR1		0x0040800
#define DE2ADDR_XBAR2		0x0041000
#define DE2ADDR_XBAR3		0x0041800
#define DE2ADDR_XBAR4		0x0042000
#define DE2ADDR_XBARCOM		0x0042800

#define DE2ADDR_PMAP0		0x0044000
#define DE2ADDR_PMAP1		0x0044800
#define DE2ADDR_PMAP2		0x0045000
#define DE2ADDR_PMAP3		0x0045800
#define DE2ADDR_PMAP4		0x0046000
#define DE2ADDR_PMAPCOM		0x0046800

/* GM addresses */
#define	GMADDR_PROM		0x0000000
#define	GMADDR_SRAM		0x0400000
#define	GMADDR_DUART		0x0800000
#define	GMADDR_DE1		0x0C00000
#define	GMADDR_DE2		0x0C00000
#define	GMADDR_TB1		0x0C30000
#define	GMADDR_TB1_COLORMAP	GMADDR_TB1 + 0xf
#define	GMADDR_DRAM		0x1000000
#define	GMADDR_DRAMSPECIAL	0x1400000
#define	GMADDR_PARITYERROR	0x1800000
#define	GMADDR_MICROCODE	0x1C00000
#define	GMADDR_MAGICFIFO	0x2400000
#define	GMADDR_PIPETAIL		0x2800000
#define GMADDR_GC_REGFILE	0x2C00000
#define GMADDR_GC_REGFILE_NOGO	0x2C00020
#define GMADDR_DE2_XBARPMAP	GMADDR_DE1 + DE2ADDR_XBARCOM

/*
 * Size of static ram 
 */
#define	GMSRAM_SIZE		2048
/*
 * Put an 8k stack at low memory
 */
#define	GMADDR_STACKTOP		0x2000 + GMADDR_DRAM

/*
 * Read Registers Physcical
 */
#define GMADDR_TRAP_STAT	0x2000000
#define GMADDR_MF_NOCMDS	0x2000010
#define GMADDR_MF_EMPTY		0x2000012
#define GMADDR_CNTXTEQ_	    	0x2000014
#define GMADDR_MF_FULL		0x2000016
#define GMADDR_MF_NEST_		0x2000018
#define GMADDR_FO_DAVL		0x200001a
#define GMADDR_FO_LOW		0x200001c
#define GMADDR_FO_HIGH		0x200001e
/*
 * Write Registers Physical
 */
#define GMADDR_MFCONTROL	0x2000000
#define GMADDR_INTRPTHOST	0x2000010
#define GMADDR_FORCENEST	0x2000020
#define GMADDR_GMCONTROL	0x2000030
#define 	GM_MFINT_ENAB		0x2	 /* MFCONTROL bits */
#define 	GM_BLKCONTEXT		0x4
#define 	GM_UNRESETMF		0x8
#define 	GM_UNRESETGE		0x10
#define 	GM_EOC			0x20
#define 	GM_FORCENEST		0x40
#define 	GM_FORCENONEST_		0x80


#define RESET 0

#define GM_READBACK	0x100
#define GM_INT_ENAB	0x200
#define GM_UNRESET_DE	0x4000
#define GM_OWNS		0x8000
#define NOBODY_OWNS	0x8800
#define GC_OWNS		0x8c00

#define MF_HEADHIGH	0x0800
#define MF_HEADLOW	0x0400
#define MF_FOTRAP_TAIL	0x0200
#define MF_FITRAP_HEAD	0x0100
#define MF_CONTEXT	0xff

#define GM_GCSTATUS_READ	0x2000020

#define GC_WAIT_FOR_SM_		0x8000
#define GM_OWNS_RF		0x4000
#define MF_FULL			0x2000
#define GC_HALT			0x1000
#define UC_DONE			0x0800

/* DE Regsiter 1 */
#define DER1_STEREO		0x01	/* stereoptic bit */
#define DER1_SYNCG		0x02	/* Sync on green */
#define DER1_UNBLANK		0x08	/* Enable screen output */
/* the video codes (look at bits in reverse order to make sense) */
#define DER1_RESET		0x00	/* Blank the screen */
#define DER1_60HZ		0x40	/* Standard 60 Hz */
#define DER1_G_60HZ		0xC0	/* genlocked 60 Hz */
#define DER1_170		0x20	/* RS170 */
#define DER1_G_170		0xA0	/* genlocked RS170 */
#define DER1_PAL		0x60	/* PAL or SECAM */
#define DER1_G_PAL		0xE0	/* genlocked PAL or SECAM */
#define DER1_30HZ		0x10	/* 30 HZ High Res */
#define DER1_G_30HZ		0x90	/* genlocked 30 HZ High Res */
#define DER1_A343		0x30	/* RS343 for the GT 959 vis lines */
#define DER1_G_A343		0xB0	/* genlocked RS343 for the GT */
#define DER1_STEREO_RECT	0xD0	/* 1280x512x2 (non-square) not on 4D70G */
#define DER1_STEREO_SQUARE	0x50	/* 640x512x2  not on 4D70G */
#define DER1_VMASK		0xF0	/* mask for video code bits */
