/* 
 * (c) Copyright 1989, 1990, 1991, 1992, 1993, 1994 OPEN SOFTWARE FOUNDATION, INC. 
 * ALL RIGHTS RESERVED 
*/ 
/* 
 * Motif Release 1.2.4
*/ 
/*   $RCSfile: VaSimpleP.h,v $ $Revision: 1.3 $ $Date: 1994/04/20 01:41:36 $ */
/*
*  (c) Copyright 1987, 1988, 1989, 1990, 1991, 1992 HEWLETT-PACKARD COMPANY */
#ifndef _XmVaSimpleP_h
#define _XmVaSimpleP_h

#include <Xm/XmP.h>

#ifdef _NO_PROTO
# include <varargs.h>
# define Va_start(a,b) va_start(a)
#else
# include <stdarg.h>
# define Va_start(a,b) va_start(a,b)
#endif


#ifdef __cplusplus
extern "C" {
#endif

/* In R6, IntrinsicP.h also defines this type, so
   we need to control its declaration in order to compile */
#if (XtSpecificationRelease < 6)
typedef struct _XtTypedArg {
    String      name;
    String      type;
    XtArgVal    value;
    int         size;
} XtTypedArg;
 
typedef struct _XtTypedArg* XtTypedArgList;
#endif

#define StringToName(string) XrmStringToName(string)


/********  Private Function Declarations  ********/
#ifdef _NO_PROTO
extern void _XmCountVaList() ;
extern void _XmVaToTypedArgList() ;
#else
extern void _XmCountVaList( 
                        va_list var,
                        int *button_count,
                        int *args_count,
                        int *typed_count,
                        int *total_count) ;
extern void _XmVaToTypedArgList( 
                        va_list var,
                        int max_count,
                        XtTypedArgList *args_return,
                        Cardinal *num_args_return) ;
#endif /* _NO_PROTO */
/********  End Private Function Declarations  ********/


#ifdef __cplusplus
}  /* Close scope of 'extern "C"' declaration which encloses file. */
#endif

#endif /* _XmVaSimpleP_h */
/* DON'T ADD ANYTHING AFTER THIS #endif */
