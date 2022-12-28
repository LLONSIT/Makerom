#ifndef __GL_DGL_H__
#define __GL_DGL_H__
/**************************************************************************
 *									  *
 * 		 Copyright (C) 1989, Silicon Graphics, Inc.		  *
 *									  *
 *  These coded instructions, statements, and computer programs  contain  *
 *  unpublished  proprietary  information of Silicon Graphics, Inc., and  *
 *  are protected by Federal copyright law.  They  may  not be disclosed  *
 *  to  third  parties  or copied or duplicated in any form, in whole or  *
 *  in part, without the prior written consent of Silicon Graphics, Inc.  *
 *									  *
 **************************************************************************/
/*----------------------------------------------------------------------*/
/* dgl.h */
/*  - Header file used to build the DGL, its associated test programs,  */
/*    and dgld. */
/*  - No user application should ever include this file. */
/* */
/* $Revision: 1.30 $ */
/*----------------------------------------------------------------------*/


/*----------------------------------------------------------------------*/
/*		SECTION 1 - machine dependent statements */
/*----------------------------------------------------------------------*/

/*----------------------------------------------------------------------*/
/* IRIS machine dependent statements */
/*----------------------------------------------------------------------*/
#if sgi
#define MACHINE_WORD_FORMAT	DGL_BIG_ENDIAN
#define MACHINE_FLOAT_FORMAT	DGL_BIG_IEEE
#if m68000			/* on 3K, times() returns 60'ths regardless */
#undef HZ
#define HZ 60
#define double long float	/* make m68020 behave like everyone else*/
#endif /* m68000 */
#endif /* sgi */

/*----------------------------------------------------------------------*/
/* ALLIANT/BSD machine dependent statements */
/*----------------------------------------------------------------------*/
#ifdef ALLIANT
#define alliant 1
#define MACHINE_WORD_FORMAT	DGL_BIG_ENDIAN
#define MACHINE_FLOAT_FORMAT	DGL_BIG_IEEE

#define __STDC__		/* need to define this when using pcc	*/

				/* ALLIANT default is signed chars	*/
				/* Leave the rest of the next line empty*/
#define signed
#define h_errno errno		/* BSD has these merged???		*/
typedef unsigned long ulong;	/* missing from types.h			*/
#endif /* ALLIANT */

/*----------------------------------------------------------------------*/
/* CONVEX machine dependent statements */
/*----------------------------------------------------------------------*/
#if convex
#define MACHINE_WORD_FORMAT	DGL_BIG_ENDIAN
#define MACHINE_FLOAT_FORMAT	DGL_BIG_IEEE

#undef HZ			/* times() returns 60'ths regardless	*/
#define HZ 60
#define strchr index		/* strchr(s,c) equivalent to index(s,c) */
#define signed			/* CONVEX default is signed chars	*/
#define h_errno errno		/* BSD has these merged???		*/
typedef unsigned long ulong;	/* missing from types.h			*/
#endif /* convex */

/*----------------------------------------------------------------------*/
/* CRAY machine dependent statements */
/*----------------------------------------------------------------------*/
#ifdef CRAY
#define MACHINE_WORD_FORMAT	DGL_BIG_ENDIAN
#define MACHINE_FLOAT_FORMAT	DGL_BIG_IEEE
#define signed			/* CRAY default is signed chars	*/
#include <use_stdc.h>		/* Make sure we use the ANSI C compiler. */
#endif /* CRAY */

/*----------------------------------------------------------------------*/
/* SUN/BSD machine dependent statements */
/*----------------------------------------------------------------------*/
#if sun
#define MACHINE_WORD_FORMAT	DGL_BIG_ENDIAN
#define MACHINE_FLOAT_FORMAT	DGL_BIG_IEEE

#define signed			/* SUN default is signed chars		*/
#define h_errno errno		/* BSD has these merged???		*/
typedef unsigned long ulong;	/* missing from types.h			*/
#endif /* sun */

/*----------------------------------------------------------------------*/
/* VAX VMS/BSD machine dependent statements */
/*----------------------------------------------------------------------*/
#if vax
#define MACHINE_WORD_FORMAT	DGL_LITTLE_ENDIAN
#define MACHINE_FLOAT_FORMAT	DGL_NON_IEEE

#define signed			/* VAX default is signed chars		*/

#if vms				/* VMS only statements			*/
#define	HZ	100		/* missing from param.h			*/

#define dn_perror dgl_perror	/* use normal error handler		*/
#define fork vfork		/* just for now - doesn't really work	*/

#else				/* VAX/BSD only statements		*/
#define HZ 60			/* missing from param.h			*/
typedef unsigned long ulong;	/* missing from types.h			*/
extern int errno;		/* missing from errno.h			*/
#endif /* vms */
#endif /* vax */

/*----------------------------------------------------------------------*/
/* IBM RS/6000 series machine dependent statements */
/*----------------------------------------------------------------------*/
#ifdef _IBMR2
#define MACHINE_WORD_FORMAT	DGL_BIG_ENDIAN
#define MACHINE_FLOAT_FORMAT	DGL_BIG_IEEE
#undef DOUBLE	/* bogusly defined in <gai/g3dm2types.h> */
#endif


/*----------------------------------------------------------------------*/
/* 32/64-bit architecture dependent statements */
/*----------------------------------------------------------------------*/
#ifdef CRAY

#define size_char 1
#define size_short 2
#define size_int 4
#define size_long 4
#define size_float 4
#define size_double 8
#define size_Fontchar 8
#define size_Lfontchar 20
#define size_fmglyphinfo 32
#define size_fmfontinfo 212		/* careful with this one */
#ifdef __STDC__
#define SIZEOF(x) size_##x
#else
#define SIZEOF(x) size_/**/x
#endif /*__STDC__*/  

/* These macros expect a pointer to the communications buffer; in the case of
   a Cray they do nothing. */
#define DGL_NTOH_LONG_CBUF(p)   {}
#define DGL_NTOH_SHORT_CBUF(p)  {}
#define DGL_NTOH_FLOAT_CBUF(p)  {}

/* Store a long(short) with no byteswapping conversion. */
#define PUT_LONG(p,l)	DGL_HTON_LONG( p,l)
#define PUT_SHORT(p,s) 	DGL_HTON_SHORT( p,s)

/* Make an expression that interprets 4(2) chars as a long(short). */
#define GET_LONG(p) \
	( (p)[0] & 0x80 ? \
	    ((p)[0] << 24 | (p)[1] << 16 | (p)[2] << 8  | (p)[3]) \
	      | ~0xffffffff \
	 : ((p)[0] << 24 | (p)[1] << 16 | (p)[2] << 8  | (p)[3]) \
	)
#define GET_SHORT(p) \
	( (p)[0] & 0x80 ? \
	    ((p)[0] << 8 | (p)[1]) | ~0xffff \
	  : ((p)[0] << 8 | (p)[1]) \
	)

#else /* not CRAY */
#define SIZEOF(x) sizeof(x)

/* These macros expect a pointer to the communications buffer; they perform
   byteswapping conversion, if needed, on values found in the buffer. */
#define DGL_NTOH_LONG_CBUF(p)   DGL_NTOH_LONG( LONG(p), LONG(p))
#define DGL_NTOH_SHORT_CBUF(p)  DGL_NTOH_SHORT( SHORT(p), SHORT(p))
#define DGL_NTOH_FLOAT_CBUF(p)  DGL_NTOH_FLOAT( FLOAT(p), FLOAT(p))

/* Store a long(short) with no byteswapping conversions. */
#define PUT_LONG(p,l)	(LONG(p) = l)
#define PUT_SHORT(p,s) 	(SHORT(p) = s)

/* Make an expression that interprets 4(2) chars as a long(short). */
#define GET_LONG(p)	LONG(p)
#define GET_SHORT(p) 	SHORT(p)
#define GET_FLOAT(p) 	FLOAT(p)

#endif /* ifdef CRAY */

/*----------------------------------------------------------------------*/
/*		SECTION 2 - capability variables */
/*----------------------------------------------------------------------*/

/*----------------------------------------------------------------------*/
/* COMMUNICATION variables */
/*----------------------------------------------------------------------*/
				
/* supports LOCAL connections */
#define GLLOCAL (sgi && mips)	/* only 4D's, not 3K's */

/* supports TCP socket connections */
#define GLTSOCKET sgi || sun || convex || (vax && !vms) || _IBMR2 || cray

/* supports DECnet connections */
#define GL4DDN	(sgi && mips) || vms	/* 4DDN is only on 4Ds, not 3K's */

/*----------------------------------------------------------------------*/
/* SYSTEM/LIBRARY variables */
/*----------------------------------------------------------------------*/
#define CUSERID BSD		/* use our own cuserid() subroutine	*/
#define DOPRNT	vms		/* use our own _doprnt subroutine	*/
#define GETTIMEOFDAY vms	/* use our own gettimeofday subroutine	*/

/* private definitions for DGLTYPE variable
 * public values are
 * DGLSINK	0
 * DGLLOCAL	1
 * DGLTSOCKET	2
 * DGL4DDN	3
 */
#define DGLNOTYPE		4	/* default connection	*/
#define DGLNOHOST		5	/* default hostname	*/


/*----------------------------------------------------------------------*/
/* MACHINE CAPABILITY variables */
/*----------------------------------------------------------------------*/
#define WORDALIGN mips		/* requires word alignment on copies	*/


/*----------------------------------------------------------------------*/
/*		SECTION 3 - GL renaming macros */
/*----------------------------------------------------------------------*/

/* 
 * GLCMD is the macro used to redefine all GL names
 * FGLCMD is the macro used to redefine all FGL names
 */

#ifdef GLBUILD
#define GLCMD(name) gl_d_/**/name
#else
#define GLCMD(name) name
#endif

#ifdef	__STDC__
#define FGLCMD(name) name##_	
#else
#define FGLCMD(name) name/**/_
#endif

#if defined(CRAY) && defined(LIBFGL)
#define FGLNAME(lower,upper) FGLCMD(upper)	/* upper case externals */
#else
#define FGLNAME(lower,upper) FGLCMD(lower)	/* lower case externals */
#endif


/*----------------------------------------------------------------------*/
/*		SECTION 4 - data conversion */
/*----------------------------------------------------------------------*/

/*----------------------------------------------------------------------*/
/* first some defines for the various data formats */
/*----------------------------------------------------------------------*/
#define DGL_LITTLE_ENDIAN 1		/* integer formats		*/
#define DGL_BIG_ENDIAN 2

#define DGL_BIG_IEEE 1		/* floating point formats	*/
#define DGL_NON_IEEE 3

/*----------------------------------------------------------------------*/
/* here are the data conversion (byte swapping) algorithms */
/*	HTON - client host to network (server) */
/*	NTOH - network (server) to client host */
/*----------------------------------------------------------------------*/

/*----------------------------------------------------------------------*/
/* these macros are the same on all machines because chars need no */
/* conversion whatsoever */
/*----------------------------------------------------------------------*/
#define DGL_HTON_CHAR(t,f) t=f
#define DGL_NTOH_CHAR DGL_HTON_CHAR
#define DGL_HTON_CHAR_ARRAY gl_mem_copy_array
#define DGL_NTOH_CHAR_ARRAY gl_mem_copy_array

/*----------------------------------------------------------------------*/
/* these macros are the same on all machines because the procedure */
/* code invokes the appropriate conversion macro within a loop */
/*----------------------------------------------------------------------*/
#define DGL_HTON_SHORT_ARRAY gl_mem_hton_short_array
#define DGL_NTOH_SHORT_ARRAY gl_mem_ntoh_short_array
#define DGL_HTON_LONG_ARRAY gl_mem_hton_long_array
#define DGL_NTOH_LONG_ARRAY gl_mem_ntoh_long_array
#define DGL_HTON_FLOAT_ARRAY gl_mem_hton_float_array
#define DGL_NTOH_FLOAT_ARRAY gl_mem_ntoh_float_array
#define DGL_HTON_DOUBLE_ARRAY gl_mem_hton_double_array
#define DGL_NTOH_DOUBLE_ARRAY gl_mem_ntoh_double_array
#define DGL_HTON_FONTCHAR_ARRAY gl_mem_hton_fontchar_array
#define DGL_NTOH_FONTCHAR_ARRAY gl_mem_ntoh_fontchar_array
#define DGL_HTON_LFONTCHAR_ARRAY gl_mem_hton_lfontchar_array
#define DGL_NTOH_LFONTCHAR_ARRAY gl_mem_ntoh_lfontchar_array
#define DGL_HTON_FMFONTINFO_ARRAY gl_mem_hton_fmfontinfo_array
#define DGL_NTOH_FMFONTINFO_ARRAY gl_mem_ntoh_fmfontinfo_array
#define DGL_HTON_FMGLYPHINFO_ARRAY gl_mem_hton_fmglyphinfo_array
#define DGL_NTOH_FMGLYPHINFO_ARRAY gl_mem_ntoh_fmglyphinfo_array
#define DGL_NTOH_WFMOUTLINE_ARRAY gl_mem_ntoh_wfmoutline_array

/*----------------------------------------------------------------------*/
/* DGL_BIG_ENDIAN: no conversion necessary (INTEGER) */
/*----------------------------------------------------------------------*/
#ifdef	CRAY
extern long dgl_ntoh_long();
extern short dgl_ntoh_short();
#define DGL_HTON_CMD(t,f) DGL_HTON_LONG(t,f)
#define DGL_NTOH_LONG(t,f)  t = dgl_ntoh_long(f)
#define DGL_NTOH_SHORT(t,f)  t = dgl_ntoh_short(f)
#else
#if MACHINE_WORD_FORMAT == DGL_BIG_ENDIAN
#define DGL_HTON_CMD(t,f) t = f		
#define DGL_HTON_SHORT(t,f) t = f
#define DGL_NTOH_SHORT DGL_HTON_SHORT
#define DGL_HTON_LONG(t,f) t = f
#define DGL_NTOH_LONG DGL_HTON_LONG
#endif
#endif

/*----------------------------------------------------------------------*/
/* DGL_BIG_IEEE: no conversion necessary (FLOAT) */
/*----------------------------------------------------------------------*/
#ifdef CRAY
extern float dgl_ntoh_float();
extern float dgl_ntoh_double();
#define DGL_NTOH_FLOAT(t,f)  t = dgl_ntoh_float(f)
#define DGL_NTOH_DOUBLE(t,f)  t = dgl_ntoh_double(f)
#else 	/* !CRAY */
#if MACHINE_FLOAT_FORMAT == DGL_BIG_IEEE
#define DGL_HTON_FLOAT(t,f) t = f
#define DGL_NTOH_FLOAT DGL_HTON_FLOAT
#define DGL_HTON_DOUBLE(t,f) memcpy(&(t),&(f),sizeof(double))
#define DGL_NTOH_DOUBLE DGL_HTON_DOUBLE
#endif
#endif

/*----------------------------------------------------------------------*/
/* DGL_LITTLE_ENDIAN: conversion necessary (INTEGER) */
/*	NOTE: non-floating point conversions are the same for both */
/*		directions and thus one macro suffices */
/*----------------------------------------------------------------------*/
#if MACHINE_WORD_FORMAT == DGL_LITTLE_ENDIAN
/* like DGL_HTON_LONG, but more efficient if f is a constant */
#define DGL_HTON_CMD(t,f)  t = (f << 24) | ((f & 0xff00) << 8) |	\
			((f & 0xff0000) >> 8) | ((f >> 24) & 0xff)
#define DGL_HTON_SHORT(t,f) 	\
	{			\
		short _from = f,_to;	\
		((char *)&_to)[0] = ((char *)&_from)[1];	\
		((char *)&_to)[1] = ((char *)&_from)[0];	\
		t = _to;	\
	}
#define DGL_NTOH_SHORT DGL_HTON_SHORT
#define DGL_HTON_LONG(t,f)	\
	{			\
		long _from = f,_to;	\
		((char *)&_to)[0] = ((char *)&_from)[3];	\
		((char *)&_to)[1] = ((char *)&_from)[2];	\
		((char *)&_to)[2] = ((char *)&_from)[1];	\
		((char *)&_to)[3] = ((char *)&_from)[0];	\
		t = _to;	\
	}
#define DGL_NTOH_LONG DGL_HTON_LONG
#endif

/*----------------------------------------------------------------------*/
/* DGL_NON_IEEE: conversion necessary (FLOAT) */
/*	conversion is done within procedure calls for simplicity */
/*----------------------------------------------------------------------*/
#if MACHINE_FLOAT_FORMAT == DGL_NON_IEEE
#define DGL_HTON_FLOAT(t,f) gl_mem_hton_float(&t,&f)
#define DGL_NTOH_FLOAT(t,f) gl_mem_ntoh_float(&t,&f)
#define DGL_HTON_DOUBLE(t,f) gl_mem_hton_double(&t,&f)
#define DGL_NTOH_DOUBLE(t,f) gl_mem_ntoh_double(&t,&f)
#endif

/*----------------------------------------------------------------------*/
/* copy & convert a fontchar structure */
/*----------------------------------------------------------------------*/
#ifdef CRAY
#define DGL_HTON_FONTCHAR(t,f)	{		\
	((char *)t)[0] = (f).offset >> 8; 	\
	((char *)t)[1] = (f).offset; 		\
	((char *)t)[2] = (f).w;			\
	((char *)t)[3] = (f).h;			\
	((char *)t)[4] = (f).xoff;		\
	((char *)t)[5] = (f).yoff;		\
	((char *)t)[6] = (f).width >> 8;	\
	((char *)t)[7] = (f).width;		\
}
#define DGL_NTOH_FONTCHAR(t,f)	{		\
	(t).offset = ((unsigned char *)f)[0] << 8 | ((unsigned char *)f)[1];	\
	(t).w    = ((unsigned char *)f)[2];	\
	(t).h    = ((unsigned char *)f)[3];	\
	(t).xoff = ((unsigned char *)f)[4];	\
	(t).yoff = ((unsigned char *)f)[5];	\
	(t).width = ((unsigned char *)f)[6] << 8 | ((unsigned char *)f)[7];	\
	if (((unsigned char *)f)[6] & 0x80)	\
		(t).width |= ~0xffff;		\
}
#define DGL_HTON_LFONTCHAR(t,f)	{		\
	((char *)t)[0] = (f).value >> 24; 	\
	((char *)t)[1] = (f).value >> 16; 	\
	((char *)t)[2] = (f).value >> 8; 	\
	((char *)t)[3] = (f).value; 		\
	((char *)t)[4] = (f).offset >> 24; 	\
	((char *)t)[5] = (f).offset >> 16; 	\
	((char *)t)[6] = (f).offset >> 8; 	\
	((char *)t)[7] = (f).offset; 		\
	((char *)t)[8] = (f).w >> 8;		\
	((char *)t)[9] = (f).w;			\
	((char *)t)[10] = (f).h >> 8;		\
	((char *)t)[11] = (f).h;		\
	((char *)t)[12] = (f).xoff >> 8;	\
	((char *)t)[13] = (f).xoff;		\
	((char *)t)[14] = (f).yoff >> 8;	\
	((char *)t)[15] = (f).yoff;		\
	((char *)t)[16] = (f).xmove >> 8;	\
	((char *)t)[17] = (f).xmove;		\
	((char *)t)[18] = (f).ymove >> 8;	\
	((char *)t)[19] = (f).ymove;		\
}
#define DGL_NTOH_LFONTCHAR(t,f)	{		\
	(t).value = ((unsigned char *)f)[0] << 24 | ((unsigned char *)f)[1] << 16 | ((unsigned char *)f)[2] << 8 | ((unsigned char *)f)[3]; \
	(t).offset = ((unsigned char *)f)[4] << 24 | ((unsigned char *)f)[5] << 16 | ((unsigned char *)f)[6] << 8 | ((unsigned char *)f)[7]; \
	(t).w = ((unsigned char *)f)[8] << 8 | ((unsigned char *)f)[9]; \
	if (((unsigned char *)f)[8] & 0x80)	\
		(t).w |= ~0xffff;		\
	(t).h = ((unsigned char *)f)[10] << 8 | ((unsigned char *)f)[11]; \
	if (((unsigned char *)f)[10] & 0x80)	\
		(t).h |= ~0xffff;		\
	(t).xoff = ((unsigned char *)f)[12] << 8 | ((unsigned char *)f)[13]; \
	if (((unsigned char *)f)[12] & 0x80)	\
		(t).xoff |= ~0xffff;		\
	(t).yoff = ((unsigned char *)f)[14] << 8 | ((unsigned char *)f)[15]; \
	if (((unsigned char *)f)[14] & 0x80)	\
		(t).yoff |= ~0xffff;		\
	(t).xmove = ((unsigned char *)f)[16] << 8 | ((unsigned char *)f)[17]; \
	if (((unsigned char *)f)[16] & 0x80)	\
		(t).xmove |= ~0xffff;		\
	(t).ymove = ((unsigned char *)f)[18] << 8 | ((unsigned char *)f)[19]; \
	if (((unsigned char *)f)[18] & 0x80)	\
		(t).ymove |= ~0xffff;		\
}
#else
#define DGL_HTON_FONTCHAR(t,f)	{		\
	DGL_HTON_SHORT((t).offset,(f).offset);	\
	DGL_HTON_CHAR((t).w,(f).w);		\
	DGL_HTON_CHAR((t).h,(f).h);		\
	DGL_HTON_CHAR((t).xoff,(f).xoff);	\
	DGL_HTON_CHAR((t).yoff,(f).yoff);	\
	DGL_HTON_SHORT((t).width,(f).width);	\
}
#define DGL_NTOH_FONTCHAR DGL_HTON_FONTCHAR
#define DGL_HTON_LFONTCHAR(t,f)	{		\
	DGL_HTON_LONG((t).value,(f).value);		\
	DGL_HTON_LONG((t).offset,(f).offset);	\
	DGL_HTON_SHORT((t).w,(f).w);		\
	DGL_HTON_SHORT((t).h,(f).h);		\
	DGL_HTON_SHORT((t).xoff,(f).xoff);	\
	DGL_HTON_SHORT((t).yoff,(f).yoff);	\
	DGL_HTON_SHORT((t).xmove,(f).xmove);	\
	DGL_HTON_SHORT((t).ymove,(f).ymove);	\
}
#define DGL_NTOH_LFONTCHAR DGL_HTON_LFONTCHAR

#define DGL_HTON_FMGLYPHINFO(t,f)	{		\
	DGL_HTON_LONG((t).xsize,(f).xsize);	\
	DGL_HTON_LONG((t).ysize,(f).ysize);	\
	DGL_HTON_LONG((t).xorig,(f).xorig);	\
	DGL_HTON_LONG((t).yorig,(f).yorig);	\
	DGL_HTON_FLOAT((t).xmove,(f).xmove);	\
	DGL_HTON_FLOAT((t).ymove,(f).ymove);	\
	DGL_HTON_LONG((t).gtype,(f).gtype);	\
	DGL_HTON_LONG((t).bitsdeep,(f).bitsdeep);	\
}
#define DGL_NTOH_FMGLYPHINFO DGL_HTON_FMGLYPHINFO

#define DGL_HTON_FMFONTINFO(t,f)	{		\
	DGL_HTON_LONG((t).printermatched,(f).printermatched);	\
	DGL_HTON_LONG((t).reserved0,(f).reserved0);	\
	DGL_HTON_DOUBLE((t).matrix00,(f).matrix00);	\
	DGL_HTON_DOUBLE((t).matrix01,(f).matrix01);	\
	DGL_HTON_DOUBLE((t).matrix10,(f).matrix10);	\
	DGL_HTON_DOUBLE((t).matrix11,(f).matrix11);	\
	DGL_HTON_LONG((t).type,(f).type);	\
	DGL_HTON_LONG((t).encoding,(f).encoding);	\
	DGL_HTON_LONG((t).fixed_width,(f).fixed_width);	\
	DGL_HTON_LONG((t).xorig,(f).xorig);	\
	DGL_HTON_LONG((t).yorig,(f).yorig);	\
	DGL_HTON_LONG((t).xsize,(f).xsize);	\
	DGL_HTON_LONG((t).ysize,(f).ysize);	\
	DGL_HTON_LONG((t).height,(f).height);	\
	DGL_HTON_LONG((t).nglyphs,(f).nglyphs);	\
	DGL_HTON_LONG((t).bitsdeep,(f).bitsdeep);	\
	DGL_HTON_LONG((t).width,(f).width);	\
	DGL_HTON_LONG((t).resolution,(f).resolution);	\
	DGL_HTON_LONG((t).weight,(f).weight);	\
	DGL_HTON_LONG((t).reserved1,(f).reserved1);	\
	DGL_HTON_LONG((t).reserved2,(f).reserved2);	\
	DGL_HTON_LONG((t).reserved3,(f).reserved3);	\
}
#define DGL_NTOH_FMFONTINFO DGL_HTON_FMFONTINFO
#endif 	/* CRAY */

/*----------------------------------------------------------------------*/
/*			SECTION 5 - internal DGL statements */
/*		     *** DO NOT CHANGE ANYTHING BELOW HERE *** */
/*----------------------------------------------------------------------*/

#ifndef NULL			/* define NULL in not already defined	*/
#define NULL	0
#endif

#define DGL_VERSION 1		/* old DGL version number		*/
#define DGL_NEW_VERSION 2	/* current DGL version (supports Xauthority) */
#define CMD_SPECIAL 0x00001234	/* special token to check byte ordering	*/
#define RETAINED 0x80000000	/* special negative number for arrays	*/
#define MAXARGS 100		/* maximum number of args per DGL routine */
#define MAXCALLBACKS 16		/* maximum number of callback procedures*/
#define COMMBUFSIZE (4*1024)	/* default comm buffer size in bytes	*/
#define AVGSIZE 20		/* average size (bytes) of command	*/
#define END_OF_BUFFER 0		/* special DGL command token		*/
#define DGL_NOP -1		/* special DGL command token		*/
#define RESET_COMM_CURBUFPOS comm_curbufpos = comm_buffer + 4
#define RESET_COMM_ENDBUFFER	\
	comm_endbuffer = comm_buffer + comm_stdsize - 4 - AVGSIZE

#define MAX_GFILES 256		/* maximum number of gfiles		*/
#define DGL_MAXIO 0x37777770	/* maximum number of bytes per i/o	*/
#define DGL_LASTFRAG 0x10000000	/* high bit of 32 bit word		*/

/*----------------------------------------------------------------------*/
/* get/set a data item located at address p regardless what it really is */
/*----------------------------------------------------------------------*/
#ifdef CRAY
#define LONG(p) (p)
#define FLOAT(p) (p)
#define DOUBLE(p) (p)
#define SHORT(p) (p)
#define FONTCHAR(p) (p)
#define LFONTCHAR(p) (p)
#define CHAR(p) (*(char *)(p))
#else /* !CRAY */
#define LONG(p) (*(long *)(p))
#define FLOAT(p) (*(float *)(p))
#define DOUBLE(p) (*(double *)(p))
#define SHORT(p) (*(short *)(p))
#define CHAR(p) (*(char *)(p))
#define FONTCHAR(p) (*(Fontchar *)(p))
#define LFONTCHAR(p) (*(Lfontchar *)(p))
#define FMGLYPHINFO(p) (*(fmglyphinfo *)(p))
#define FMFONTINFO(p) (*(fmfontinfo *)(p))
#endif

/*----------------------------------------------------------------------*/
/* this is the graphics file data structure */
/*----------------------------------------------------------------------*/
typedef struct gfile {
    int id;			/* my id (index into table)		*/
    int type;			/* type of connection			*/
    int maxio;			/* maximum bytes for one i/o operation	*/
    int fd_read;		/* file descriptor for reading		*/
    int fd_write;		/* file descriptor for writing		*/
    int fd_extra;		/* extra one for special hacks		*/
    int (*readproc)();		/* read data procedure			*/
    int (*writeproc)();		/* write data procedure			*/
    int (*closeproc)();		/* close file procedure			*/
    char fname_read [80];	/* the 2 file names			*/
    char fname_write[80];
    int fd_queue;		/* queue file descriptor		*/
    char rhost[200];
    int floatfeedback;		/* boolean: use floats or shorts	*/
    int isdefault;		/* this is default connection		*/
    int is4xrelease;		/* this connection to a 4.0.x release	*/
} Gfile;

extern Gfile *comm_gfiles[];	/* all the gfiles			*/
extern Gfile *comm_curgfile;	/* the current gfile			*/

extern char *comm_buffer;			/* THE BUFFER		*/

extern long dgl_debug;				/* debug flag		*/
extern int dgl_errors;				/* error counter	*/
extern int dgl_testmode;			/* test mode flag	*/
extern int dgl_exitflag;			/* exit flag		*/
extern int dgl_glprof;				/* profiling flag	*/
extern int dgl_positional;			/* test variable	*/
extern int (*dgl_interpreter)();		/* the dgl interpreter	*/

extern float gl_util_timer();			/* utility timer	*/

/* dgld versions follow */

extern Gfile *dcom_gfiles[];	/* all the gfiles			*/
extern Gfile *dcom_curgfile;	/* the current gfile			*/

extern char *dgld_myname;			/* the program's name	*/
extern char *dcom_buffer;			/* THE BUFFER		*/

extern long dgld_debug;				/* debug flag		*/
extern int dgld_errors;				/* error counter	*/
extern int dgld_testmode;			/* test mode flag	*/
extern int dgld_exitflag;			/* exit flag		*/
extern int dgld_glprof;				/* profiling flag	*/
extern int dgld_positional;			/* test variable	*/
extern int (*dgld_interpreter)();		/* the dgl interpreter	*/

extern signed char gen_char();			/* test routine		*/
extern float gen_float();			/* test routine		*/
extern float util_timer();			/* utility timer	*/

#endif /* __GL_DGL_H__ */
