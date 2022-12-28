#ifndef __GL_ATTRIBUTIL_H__
#define __GL_ATTRIBUTIL_H__
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

#define ATTRIB_HASH_SIZE 128		/* should be power of two */
#define ATTRIB_HASH(x)	((x) & (ATTRIB_HASH_SIZE - 1))

typedef struct genericrec {
    struct genericrec *next;
    long name;
} Genericrec;

typedef struct basisrec {
    struct basisrec *next;		/* must match genericrec	*/
    long name;				/* must match genericrec	*/
    long internal;
    float basis[16];			/* XXX should be Matrix */
} Basisrec;

typedef struct fontrec {
    struct fontrec *next;		/* must match genericrec	*/
    long name;				/* must match genericrec	*/
    struct font_s *fontdef;
} Fontrec;

typedef struct linestylerec {
        struct linestylerec *next;      /* must match genericrec        */
        long name;                      /* must match genericrec        */
#if defined(LIGHT) || defined(NEWPORT)
        unsigned long  bitpattern;
#else /* !LIGHT */
        unsigned short bitpattern;
#endif /* LIGHT */
#ifdef ECLIPSE /* Take out once right to left lines supported in hardware */
        unsigned short stipints[17];
        float stipfloats[16];
#endif ECLIPSE
} Linestylerec;

extern unsigned char	gl_bitrev[];
/* XXX not sure how to prototype -- CSK 1/2/90 */
extern Genericrec      *gl_find(/*Udptr[], long*/);
extern void 		gl_insert(/*Udptr[], Udptr*/);
extern Genericrec      *gl_remove(/*Udptr[], long*/);

#endif /* !__GL_ATTRIBUTIL_H__ */
