/*
 * Copyright (c) 1987 by Silicon Graphics, Inc.
 *		Glen Williams
 */

/*		The Font Manager Client Interface		*/

#ifndef FMCLIENT
#define FMCLIENT

#ifdef __cplusplus
extern "C" {
#endif

typedef long *fmfonthandle;

typedef struct fmfontinfo {
	long printermatched;
	long reserved0;
	double matrix00;
	double matrix01;
	double matrix10;
	double matrix11;
	long type;		/* see fmfontinfo->type  below */
	long encoding;
	long fixed_width;
	long xorig;
	long yorig;
	long xsize;
	long ysize;
	long height;
	long nglyphs;
	long bitsdeep;	    /* if nonzero, the depth of all glyphs in font */
	long width;	    /* the largest setwidth in the font */
	long resolution;
	long weight;	    /* [0..1000], the # of black bits that would be on
			       if this were an of 1000-pixel chars */
	long reserved1;
	long reserved2;
	long reserved3;
	long padding[27];   /* for future expansion */
} fmfontinfo;


typedef struct fmglyphinfo {
	long xsize, ysize;		/* dimensions of the glyph in pixels */
	long xorig, yorig;		/* origin */
	float xmove, ymove;		/* move  */
	long gtype;			/* The type of glyph this is. */
	long bitsdeep;			/* depth of the pixels, if pixels */
}fmglyphinfo;


/* ******************************************************/
/* Overall font information subscripts: fmfontinfo	*/
/* ******************************************************/

#define FMFPRINTERMATCHED 0
#define FMFMATRIX00 1
#define FMFMATRIX01 2
#define FMFMATRIX10 3
#define FMFMATRIX11 4
#define FMFTYPE	    5
#define FMFENCODING 6
#define FMFFIXED_WIDTH 7
#define FMFXORIG 8
#define FMFYORIG 9
#define FMFXSIZE 10
#define FMFYSIZE 11
#define FMFNGLYPHS 12
#define FMFBITSDEEP 13
#define FMFWIDTH 14
#define FMFRESOLUTION 15
#define	FMFWEIGHT 16

/* enumeration of fmfontinfo->type */
#define FMBITMAPFONT	    0
#define FMWIDTHFONT	    1
#define FMPRINTERWIDTHFONT	2
#define FMSPLINEFONT	    3
#define FMVECTORFONT	    4
#define FMGREYSCALEFONT	    5
#define FMRGBFONT	    6
#define FMGREEKFONT	    7
#define FMPERSPECTIVEFONT   8
#define FMCOLORMAP	    9
#define FMMIXED		    10

/* enumeration of fmfontinfo->encoding */
#define FMASCII		0
#define FMADOBE		1
#define FMJISC6226	2
#define FMCYRILLIC	3
#define FMHANGUL	4
#define FMDEVENAGERI	5
#define FMISO88591	6	/* ISO 8859-1 */
#define FMDECTECH	7	/* DEC DECTECH */
#define FMJISX020819760	8	/* JISX208.1976-0 */
#define FMJISX020119760	9	/* JISX201.1976-0 */
#define FMSUNOLCURSOR1	10	/* SUN OPEN LOOK CURSOR 1 */	
#define FMSUNOLGLYPH1	11	/* SUN OPEN LOOK GLYPH 1 */
#define FMSPECIFIC	12	/* FONT SPECIFIC */
#define FMJISX020819830	13	/* JISX0208.1983-0 */
#define FMKSC560119870	14	/* KSC5601.1987-0 */
#define FMGB231219800	15	/* GB2312.1980-0 */

/* *****************************************************/
/* Character glyph information subscripts: fmglyphinfo */
/* *****************************************************/
#define FMXSIZE	0
#define FMYSIZE	1
#define FMXORIG	2
#define FMYORIG	3
#define FMXMOVE	4
#define FMYMOVE	5
#define FMGTYPE	6
#define FMBITSDEEP	7


/* fmglyphinfo->gtype */
#define FMNOTDEFINED	    0
#define FMBITMAPGLYPH	    1
#define FMIMAGERGBGLYPH    2
#define FMIMAGECGLYPH	    3
#define FMLINEGLYPH	    4
#define FMSHAPEGLYPH	    5

#define FMCACHE_QUANTUM 100000

#if defined(__mips) || defined(__STDC__) || defined(__cplusplus)
extern int		fmcachelimit(void);
extern void		fmconcatpagematrix(double [3][2]);
#ifdef	__cplusplus
void			fminit();
char			*fmfontpath(); /* pass back the path */
int			fmgetcacheused();
void			fminitpagematrix();
void			fmcacheenable();
void			fmcachedisable();
#else
/* no args declared because this C compiler can't handle them. */
extern void		fmenumerate(void (*callback)(char *));
extern void		fminit(void);
extern char		*fmfontpath(void); /* pass back the path */
extern int		fmgetcacheused(void);
extern void		fminitpagematrix(void);
extern void		fmcacheenable(void);
extern void		fmcachedisable(void);
#endif
extern fmfonthandle	fmfindfont(const char *);
extern void		fmfreefont(fmfonthandle);
extern void		fmsetpath(const char *);/* pass in the path */
extern long		fmgetchrwidth(fmfonthandle, const unsigned char);
extern int		fmgetcomment(fmfonthandle, int, char *);
extern int		fmgetfontinfo(fmfonthandle, fmfontinfo *);
extern int		fmgetfontname(fmfonthandle, int len, char *);
extern void		fmgetpagematrix(double [3][2]);
extern long		fmgetstrwidth(fmfonthandle, const char *);
extern long		fmgetwholemetrics(fmfonthandle, fmglyphinfo *);
extern fmfonthandle	fmmakefont(fmfonthandle, double[3][2]);
extern long		fmoutchar(fmfonthandle, const unsigned int);
extern void		fmprintermatch(int);
extern int		fmprstr(const char *);
extern void		fmrotatepagematrix(double);
extern fmfonthandle	fmscalefont(fmfonthandle, double);
extern void		fmsetcachelimit(int);
extern void		fmsetfont(fmfonthandle);
extern void		fmsetpagematrix(double [3][2]);
extern void		fmscalepagematrix(double);
extern int	fmfprstr(fmfonthandle, unsigned char *, short, int, int);

#ifdef __cplusplus
/* temporary __cplusplus functions - NOT SUPPORTED */
long		fmOutString(unsigned char *ch, short len, int x, int y);
void		fmForceFixedWidth(fmfonthandle);
#endif

#else	/* not __mips and not __STDC__ and not __cplusplus */

extern int		fmcachelimit();
extern void		fminit();

extern void		fmenumerate();
extern fmfonthandle	fmfindfont();
extern fmfonthandle	fmscalefont();
extern void		fmsetfont();

extern void		fmconcatpagematrix();
extern int		fmgetcacheused();
extern void		fmgetpagematrix();
extern void		fminitpagematrix();
extern void		fmrotatepagematrix();
extern void		fmscalepagematrix();
extern void		fmsetcachelimit();
extern void		fmsetpagematrix();

extern char		*fmfontpath();
extern void		fmsetpath();
extern void		fmfreefont();

extern long		fmgetchrwidth();
extern int		fmgetcomment();
extern int		fmgetfontinfo();
extern int		fmgetfontname();
extern long		fmgetstrwidth();
extern int		fmgetwholemetrics();

extern fmfonthandle	fmmakefont();
extern void		fmprintermatch();

extern void		fmcacheenable();
extern void		fmcachedisable();
extern long		fmoutchar();
extern int		fmprstr();
extern int		fmfprstr();
#endif

#ifdef __cplusplus
}
#endif

#endif
