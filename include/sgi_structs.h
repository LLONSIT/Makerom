#include <stdio.h>
#include <stdlib.h>


struct filehdr {
	unsigned short	f_magic;	/* magic number */
	unsigned short	f_nscns;	/* number of sections */
	long		f_timdat;	/* time & date stamp */
	long		f_symptr;	/* file pointer to symbolic header */
	long		f_nsyms;	/* sizeof(symbolic hdr) */
	unsigned short	f_opthdr;	/* sizeof(optional hdr) */
	unsigned short	f_flags;	/* flags */
	};


struct	ldfile {
	int		_fnum_;	/* so each instance of an LDFILE is unique */
	FILE	*	ioptr;	/* system I/O pointer value */
	long		offset;	/* absolute offset to the start of the file */
	struct filehdr		header;	/* the file header of the opened file */
// #ifdef __mips
	unsigned char		pchdr;  /* pointer to the symbol table */
	long		lastindex; /* index of last symbol accessed */
	unsigned short	type;	/* indicator of the type of the file */
	unsigned	fswap : 1;	/* if set, we must swap */
	unsigned	fBigendian : 1;	/* if set, we must swap aux for the
					 * last retrieved symbol
					 */
// #else
// 	unsigned short	type;		/* indicator of the type of the file */
// #endif /* __mips */
};
