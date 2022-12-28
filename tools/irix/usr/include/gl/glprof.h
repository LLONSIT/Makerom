/*
 * DGL Profiler
 *
 * NOTE:  This file is for the low-level DGL Profiler and has nothing
 * to do with the GL Profiler product (glprof).
 */

#define TRACE		1	/* GLPROF commands			*/
#define TIMESTAMP	2
#define SAMPLE		3
#define SAMPLERATE	4

#define WALLTIME	0x1	/* bits for AUTOSAMPLE			*/
#define MOUSE		0x2

/*----------------------------------------------------------------------*/
/* internal things - should be moved to another .h file that isn't shipped */
/*----------------------------------------------------------------------*/
#define GLPROF_VERSION 1

extern char *glprof_cmd_names[];
extern char *glprof_auxcmd_names[];
extern int (*glprof_doit)();
