/*
 * ansicode.h
 *	- Contains defines for ANSI command codes as described in
 *	  ANSI X3.64-1979.
 *	- Not complete.
 *	- There are defines for DEC and SGI extensions.
 */

/*
 * This define allows the coding of commands to be done similarly to the
 * `col/row' notation used throughout X3.64.
 */
#define	ansicode(col,row)	    (((col)<<4) | (row))

/*
 * ANSI characters
 */

#define ESC		ansicode(1,11)
#define NUL		ansicode(0,0)
#define BEL		ansicode(0,7)
#define DEL		ansicode(7,15)

/*
 * 8-bit versions
 */
#define IND		ansicode(8,4)
#define NEL		ansicode(8,5)
#define RI		ansicode(8,13)
#define CSI		ansicode(9,11)
#define DCS		ansicode(9,0)
#define ST		ansicode(9,12)

/*
 * 7-bit, 2 character versions (lead-in is ESC)
 */
#define IND_2		(IND-ansicode(4,0)) /* ASCII D */
#define NEL_2		(NEL-ansicode(4,0)) /* ASCII E */
#define RI_2		(RI-ansicode(4,0))  /* ASCII M */
#define CSI_2		(CSI-ansicode(4,0)) /* ASCII [ */
#define DCS_2		(DCS-ansicode(4,0)) /* ASCII P */
#define ST_2		(ST-ansicode(4,0))  /* ASCII \ */
#define RIS_2		ansicode(6,3)	    /* ASCII c */


/*
 * lead-ins for private parameters
 */
#define DECPARAM	ansicode(3,15)	    /* ASCII ? */
#define SGICPARAM	ansicode(3,13)	    /* ASCII = */
#define SGISPARAM	ansicode(3,14)	    /* ASCII > */



/*
 * ANSI commands with CSI lead-in
 */

#define ICH		ansicode(4,0)	    /* ASCII @ */
#define CUU		ansicode(4,1)	    /* ASCII A */
#define CUD		ansicode(4,2)	    /* ASCII B */
#define CUF		ansicode(4,3)	    /* ASCII C */
#define CUB		ansicode(4,4)	    /* ASCII D */
#define CNL		ansicode(4,5)	    /* ASCII E */
#define CPL		ansicode(4,6)	    /* ASCII F */
#define CHA		ansicode(4,7)	    /* ASCII G */
#define CUP		ansicode(4,8)	    /* ASCII H */
#define CHT		ansicode(4,9)	    /* ASCII I */
#define ED		ansicode(4,10)	    /* ASCII J */
#define EL		ansicode(4,11)	    /* ASCII K */
#define IL		ansicode(4,12)	    /* ASCII L */
#define DL		ansicode(4,13)	    /* ASCII M */
#define EF		ansicode(4,14)	    /* ASCII N */
#define EA		ansicode(4,15)	    /* ASCII O */
#define DCH		ansicode(5,0)	    /* ASCII P */
#define CPR		ansicode(5,1)	    /* ASCII Q */
#define SEE		ansicode(5,2)	    /* ASCII R */
#define SU		ansicode(5,3)	    /* ASCII S */
#define SD		ansicode(5,4)	    /* ASCII T */
#define NP		ansicode(5,5)	    /* ASCII U */
#define PP		ansicode(5,5)	    /* ASCII V */
#define CTC		ansicode(5,6)	    /* ASCII W */
#define ECH		ansicode(5,7)	    /* ASCII X */
#define CVT		ansicode(5,8)	    /* ASCII Y */
#define CBT		ansicode(5,9)	    /* ASCII Z */
#define HPA		ansicode(6,0)	    /* ASCII ` */
#define HPR		ansicode(6,1)	    /* ASCII a */
#define REP		ansicode(6,2)	    /* ASCII b */
#define DA		ansicode(6,3)	    /* ASCII c */
#define VPA		ansicode(6,4)	    /* ASCII d */
#define VPR		ansicode(6,5)	    /* ASCII e */
#define HVP		ansicode(6,6)	    /* ASCII f */
#define TBC		ansicode(6,7)	    /* ASCII g */
#define SM		ansicode(6,8)	    /* ASCII h */
#define MC		ansicode(6,9)	    /* ASCII i */
#define HPB		ansicode(6,10)	    /* ASCII j */
#define VPB		ansicode(6,11)	    /* ASCII k */
#define RM		ansicode(6,12)	    /* ASCII l */
#define SGR		ansicode(6,13)	    /* ASCII m */
#define DSR		ansicode(6,14)	    /* ASCII n */
#define DAQ		ansicode(6,15)	    /* ASCII o */


/*
 * DEC commands with ESC lead-in
 */

#define DECSC		ansicode(3,7)	    /* ASCII 7 */
#define DECRC		ansicode(3,8)	    /* ASCII 8 */
#define DECKPAM		ansicode(3,13)	    /* ASCII = */
#define DECKPNM		ansicode(3,14)	    /* ASCII > */


/*
 * DEC commands with CSI lead-in
 */
#define DECSTBM		ansicode(7,2)	    /* ASCII r */

/*
 * IBM commands with CSI lead-in
 */
#define IBMFKEY		ansicode(7,1)	    /* ASCII q */

/*
 * SGI commands with CSI lead-in
 */
#define SGIFINAL	ansicode(7,9)	    /* ASCII y */
#define SGICINTERM	ansicode(2,15)	    /* ASCII / */
#define SGISINTERM	ansicode(2,14)	    /* ASCII . */

#define SGIPI		DA	/* parameter inquiry (same as DA, but
				 * parameters are of type SGIPARAM) */

/*
 * ANSI standard mode parameter values
 */
#define KAM		2	/* keyboard action mode (lock/unlock) (LED) */
#define CRM		3	/* control representation mode (monitor md) */
#define IRM		4	/* insertion/replacement mode */
#define SRM		12	/* send/receive mode (local mode) (LED) */


/*
 * DEC VT100 mode parameter values
 */
#define DECCKM		1	/* applic cursor key mode enabled */
#define DECAWN		7	/* wrap long lines enable/disable */
#define DECTCEM		25	/* text cursor on/off */


/*
 * SGI parameter values
 */

/* modes */
#define SGISBEL		1	/* send BEL character enable/disable */
#define SGIPAGN		2	/* pagination enable/disable */
#define SGICBNK		3	/* text cursor blink enable/disable */
#define SGITXPT		4	/* textport on/off */
#define SGIHOLD		5	/* hold textport after child exits  */
#define SGISLCK		6	/* if not in fixed terminal size mode, lock
				 * window size */
#define SGIALTK		7	/* alternate keypad mode (same as
				 * DECKPAM/DECKPNM) */
#define SGIRGBM		8	/* RGB mode (inquiry only) */
#define SGIVBEL		9	/* visible bell on/off */
#define SGILOGF		10	/* logfile on/off */
#define SGIFIXT		11	/* fixed terminal size mode on/off */
#define SGIMOEN		98	/* mouse click enable/disable */
#define SGIMKEN		99	/* meta key enable/disable */

/* commands */
#define SGIRPAG		1	/* reset pagination line count */
#define SGITXIN		2	/* textinit() */
#define SGIPUSW		3	/* push window */
#define SGIPOPW		4	/* pop window */
#define SGIATTW		5	/* attach window */
#define SGISELW		6	/* select window */
#define SGIREPW		7	/* repaint window */
#define SGIREFD		8	/* reread font directory */
#define SGIOPCP		9	/* overwrite pushed cursor position */
#define SGIPAO		10	/* push attributes once */
#define SGIPSHA		11	/* push attributes */
#define SGIPOPA		12	/* pop attributes */

/* set attribute values */
#define SGITCI		101	/* set text color index */
#define SGIBCI		102	/* set background color index */
#define SGIHCI		103	/* set highlight color index */
#define SGICCI		104	/* set connected cursor color index */
#define SGIDCI		105	/* set disconnected cursor color index */
#define SGIFWM		106	/* set foreground writemask */
#define SGIBWM		107	/* set background writemask */
#define SGIBNKR		108	/* set blink rate <int> tenths of frames/sec */
#define SGIKMAP		109	/* set key map type */
#define SGIHMOV		110	/* set how window moves on set size */
	/* argument values: */
#define	    SGIHMOV_CENTER  0	/* pin center */
#define	    SGIHMOV_PIN_LL  1	/* pin lower-left corner */
#define	    SGIHMOV_PIN_LR  2	/* pin lower-right corner */
#define	    SGIHMOV_PIN_UR  3	/* pin upper-right corner */
#define	    SGIHMOV_PIN_UL  4	/* pin upper-left corner */
#define SGITEA		196	/* set tell size action */
#define SGIMKEY		197	/* set meta key */
#define SGIMKA		198	/* set meta key action */
#define SGIMOA		199	/* set mouse click action */

#define SGIMSZC		201	/* maximum textport size (cols, rows) */
#define SGIMSZP		202	/* maximum textport size (in pixels) */
#define SGIWSZC		203	/* set window on textport size (cols, rows) */
#define SGIWSZP		204	/* set window on textport size (in pixels) */
#define SGIPOS		205	/* set textport position (pixels) */
#define SGIISZC		206	/* initial window size inq (cols, rows) */
#define SGIISZP		207	/* initial window size inq (in pixels) */
#define SGIIPOS		208	/* initial textport position inq (pixels) */
#define SGIMINC		209	/* set minimum legal term size (cols, rows) */
#define SGIMINP		210	/* set minimum legal term size (pixels) */
#define SGITSZC		211	/* terminal size (cols, rows) */
#define SGITSZP		212	/* terminal size (in pixels) */

#define SGITRGB 	301	/* set text RGB */
#define SGIBRGB 	302	/* set background RGB */
#define SGIHRGB 	303	/* set highlight RGB */
#define SGICRGB 	304	/* set connected cursor RGB */
#define SGIDRGB 	305	/* set disconnected cursor RGB */
#define SGIFRGB 	306	/* set foreground RGB writemask */
#define SGIKRGB 	307	/* set background RGB writemask */

#define SGIMCLK		501	/* mouse click paramter value */

/* set strings */
#define SGITITL 	1	/* set title */
#define SGISLOG 	2	/* set logfile name */
#define SGIKEYB		101	/* set binding of function key <int> */
#define SGIFNTB		102	/* bind font in file <file> to font <int>*/



#define MAXCSIPARAMS	10	/* maximum number of parameters
				 * a CSI can have.  NB. SM and RM can have
				 * many parameters */

