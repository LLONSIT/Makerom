#ifndef __GL_IMINTERP_H__
#define __GL_IMINTERP_H__
/**************************************************************************
 *									  *
 * 		 Copyright (C) 1989, Silicon Graphics, Inc.	  	  *
 *									  *
 *  These coded instructions, statements, and computer programs  contain  *
 *  unpublished  proprietary  information of Silicon Graphics, Inc., and  *
 *  are protected by Federal copyright law.  They  may  not be disclosed  *
 *  to  third  parties  or copied or duplicated in any form, in whole or  *
 *  in part, without the prior written consent of Silicon Graphics, Inc.  *
 *									  *
 **************************************************************************/

/*
 *  iminterp.h 
 *  - some pretty complex but powerful macros by Herb Kuta to generate
 *    display listable GL commands  
 *
 *  $Revision: 1.23 $
 */

#include "dlsz.h"
#include "dlpers.h"
#include "TheMacro.h"

#define	DL_GENCMD_0(intrp_sclass,name)				\
    DL_IMMED_BEGIN(visible,name,(void))				\
    { 								\
	im_setup; 						\
	im_/**/name();						\
    } 								\
    DL_IMMED_END(name) 						\
    DL_CMPLR_BEGIN(visible,name,(void))				\
    { 								\
	BEGINCOMPILE(DLSZ_/**/name); 				\
	ADDINTRP(name);						\
	ENDCOMPILE(DLSZ_/**/name); 				\
    } 								\
    DL_CMPLR_END(name) 						\
    DL_INTRP_BEGIN(intrp_sclass,name) 				\
    { 								\
	im_/**/name();						\
	thread(name); 						\
    } 								\
    DL_INTRP_END(name)


#define	DL_GENCMD_1(intrp_sclass,name,type)			\
    DL_IMMED_BEGIN(visible,name,( type x))		\
    { 								\
	im_setup; 						\
	im_/**/name(x); 					\
    } 								\
    DL_IMMED_END(name) 						\
    DL_CMPLR_BEGIN(visible,name,( type x))		\
    {						    		\
	BEGINCOMPILE(DLSZ_/**/name); 				\
	ADDINTRP(name);						\
	ADD/**/type(x);						\
	ADDFILL/**/type();					\
	ENDCOMPILE(DLSZ_/**/name); 				\
    } 								\
    DL_CMPLR_END(name) 						\
    DL_INTRP_BEGIN(intrp_sclass,name) 				\
    { 								\
	im_/**/name(TAKE/**/type(0)); 				\
	thread(name); 						\
    } 								\
    DL_INTRP_END(name)


#define	DL_GENCMD_1C(intrp_sclass,name,type)			\
    DL_IMMED_BEGIN(visible,name,( const type x))		\
    { 								\
	im_setup; 						\
	im_/**/name(x); 					\
    } 								\
    DL_IMMED_END(name) 						\
    DL_CMPLR_BEGIN(visible,name,( const type x))		\
    {						    		\
	BEGINCOMPILE(DLSZ_/**/name); 				\
	ADDINTRP(name);						\
	ADD/**/type(x);						\
	ADDFILL/**/type();					\
	ENDCOMPILE(DLSZ_/**/name); 				\
    } 								\
    DL_CMPLR_END(name) 						\
    DL_INTRP_BEGIN(intrp_sclass,name) 				\
    { 								\
	im_/**/name(TAKE/**/type(0)); 				\
	thread(name); 						\
    } 								\
    DL_INTRP_END(name)


#define DL_GENCMD_2(intrp_sclass,name,type)			\
    DL_IMMED_BEGIN(visible,name,( type x, type y))	\
    { 								\
	im_setup; 						\
	im_/**/name(x,y); 					\
    } 								\
    DL_IMMED_END(name) 						\
    DL_CMPLR_BEGIN(visible,name,( type x, type y))	\
    { 								\
	BEGINCOMPILE(DLSZ_/**/name); 				\
	ADDINTRP(name);						\
	ADD/**/type(x);						\
	ADD/**/type(y);						\
	ENDCOMPILE(DLSZ_/**/name); 				\
    } 								\
    DL_CMPLR_END(name) 						\
    DL_INTRP_BEGIN(intrp_sclass,name) 				\
    { 								\
	im_/**/name(TAKE/**/type(0),				\
		    TAKE/**/type(DLSZ_/**/type));		\
	thread(name); 						\
    } 								\
    DL_INTRP_END(name)

#define DL_SPECMD_2(intrp_sclass,name,type1,type2) 		\
    DL_IMMED_BEGIN(visible,name,( type1 x, type2 y))		\
    { 								\
	im_setup; 						\
	im_/**/name(x,y); 					\
    } 								\
    DL_IMMED_END(name) 						\
    DL_CMPLR_BEGIN(visible,name,( type1 x, type2 y))		\
    { 								\
	BEGINCOMPILE(DLSZ_/**/name); 				\
	ADDINTRP(name);						\
	ADD/**/type1(x);					\
	ADD/**/type2(y);					\
	ENDCOMPILE(DLSZ_/**/name); 				\
    } 								\
    DL_CMPLR_END(name) 						\
    DL_INTRP_BEGIN(intrp_sclass,name) 				\
    { 								\
	im_/**/name(TAKE/**/type1(0),				\
		    TAKE/**/type2(DLSZ_/**/type1));		\
	thread(name); 						\
    } 								\
    DL_INTRP_END(name)

#define DL_GENCMD_3(intrp_sclass,name,type)			\
    DL_IMMED_BEGIN(visible,name,( type x, type y, type z)) \
    { 								\
	im_setup; 						\
	im_/**/name(x,y,z); 					\
    } 								\
    DL_IMMED_END(name) 						\
    DL_CMPLR_BEGIN(visible,name,( type x, type y, type z)) \
    { 								\
	BEGINCOMPILE(DLSZ_/**/name); 				\
	ADDINTRP(name);						\
	ADD/**/type(x); 					\
	ADD/**/type(y); 					\
	ADD/**/type(z); 					\
	ADDFILL/**/type();					\
	ENDCOMPILE(DLSZ_/**/name); 				\
    } 								\
    DL_CMPLR_END(name) 						\
    DL_INTRP_BEGIN(intrp_sclass,name) 				\
    { 								\
	im_/**/name(TAKE/**/type(0),				\
		    TAKE/**/type(DLSZ_/**/type),		\
		    TAKE/**/type(2*DLSZ_/**/type)); 		\
	thread(name); 						\
    } 								\
    DL_INTRP_END(name)

#define DL_SPECMD_3(intrp_sclass,name,type1,type2,type3)	\
    DL_IMMED_BEGIN(visible,name,( type1 x, type2 y, type3 z))	\
    { 								\
	im_setup; 						\
	im_/**/name(x,y,z); 					\
    } 								\
    DL_IMMED_END(name) 						\
    DL_CMPLR_BEGIN(visible,name,( type1 x, type2 y, type3 z))   \
    { 								\
	BEGINCOMPILE(DLSZ_/**/name); 				\
	ADDINTRP(name);						\
	ADD/**/type1(x); 					\
	ADD/**/type2(y); 					\
	ADD/**/type3(z); 					\
	ENDCOMPILE(DLSZ_/**/name); 				\
    } 								\
    DL_CMPLR_END(name) 						\
    DL_INTRP_BEGIN(intrp_sclass,name) 				\
    { 								\
	im_/**/name(TAKE/**/type1(0),				\
		    TAKE/**/type2(DLSZ_/**/type1),		\
		    TAKE/**/type3(2*DLSZ_/**/type2)); 		\
	thread(name); 						\
    } 								\
    DL_INTRP_END(name)

#define DL_GENCMD_4(intrp_sclass,name,type)			\
    DL_IMMED_BEGIN(visible,name,( type x, type y, type z, type w)) \
    { 								\
	im_setup; 						\
	im_/**/name(x,y,z,w); 					\
    } 								\
    DL_IMMED_END(name) 						\
    DL_CMPLR_BEGIN(visible,name,( type x, type y, type z, type w)) \
    { 								\
	BEGINCOMPILE(DLSZ_/**/name); 				\
	ADDINTRP(name);						\
	ADD/**/type(x); 					\
	ADD/**/type(y); 					\
	ADD/**/type(z); 					\
	ADD/**/type(w); 					\
	ENDCOMPILE(DLSZ_/**/name); 				\
    } 								\
    DL_CMPLR_END(name) 						\
    DL_INTRP_BEGIN(intrp_sclass,name) 				\
    { 								\
	im_/**/name(TAKE/**/type(0),				\
		    TAKE/**/type(DLSZ_/**/type),		\
		    TAKE/**/type(2*DLSZ_/**/type),		\
		    TAKE/**/type(3*DLSZ_/**/type)); 		\
	thread(name); 						\
    } 								\
    DL_INTRP_END(name)

#define DL_GENCMD_5(intrp_sclass,name,type)			\
    DL_IMMED_BEGIN(visible,name,( type x, type y, type z, type w, type q)) \
    { 								\
	im_setup; 						\
	im_/**/name(x,y,z,w,q);					\
    } 								\
    DL_IMMED_END(name) 						\
    DL_CMPLR_BEGIN(visible,name,( type x, type y, type z, type w, type q)) \
    { 								\
	BEGINCOMPILE(DLSZ_/**/name); 				\
	ADDINTRP(name);						\
	ADD/**/type(x); 					\
	ADD/**/type(y); 					\
	ADD/**/type(z); 					\
	ADD/**/type(w); 					\
	ADD/**/type(q); 					\
	ENDCOMPILE(DLSZ_/**/name); 				\
    } 								\
    DL_CMPLR_END(name) 						\
    DL_INTRP_BEGIN(intrp_sclass,name) 				\
    { 								\
	im_/**/name(TAKE/**/type(0),				\
		    TAKE/**/type(DLSZ_/**/type),		\
		    TAKE/**/type(2*DLSZ_/**/type),		\
		    TAKE/**/type(3*DLSZ_/**/type), 		\
		    TAKE/**/type(4*DLSZ_/**/type)); 		\
	thread(name); 						\
    } 								\
    DL_INTRP_END(name)

#define DL_GENCMD_7(intrp_sclass,name,type)			\
    DL_SPECMD_7(intrp_sclass,name,type,type,type,type,type,type,type)


#define DL_SPECMD_4(intrp_sclass,name,type1,type2,type3,type4)	\
    DL_IMMED_BEGIN(visible,name,( type1 x, type2 y, type3 z, type4 w)) \
    { 								\
	im_setup; 						\
	im_/**/name(x,y,z,w);					\
    } 								\
    DL_IMMED_END(name) 						\
    DL_CMPLR_BEGIN(visible,name,( type1 x, type2 y, type3 z, type4 w)) \
    { 								\
	BEGINCOMPILE(DLSZ_/**/name); 				\
	ADDINTRP(name);						\
	ADD/**/type1(x); 					\
	ADD/**/type2(y); 					\
	ADD/**/type3(z); 					\
	ADD/**/type4(w); 					\
	ENDCOMPILE(DLSZ_/**/name); 				\
    } 								\
    DL_CMPLR_END(name) 						\
    DL_INTRP_BEGIN(intrp_sclass,name) 				\
    { 								\
	im_/**/name(TAKE/**/type1(0),				\
		    TAKE/**/type2(DLSZ_/**/type1),		\
		    TAKE/**/type3(2*DLSZ_/**/type2),		\
		    TAKE/**/type4(3*DLSZ_/**/type3)); 		\
	thread(name); 						\
    } 								\
    DL_INTRP_END(name)

#define DL_SPECMD_6(intrp_sclass,name,type1,type2,type3,type4,type5,type6)	\
    DL_IMMED_BEGIN(visible,name,( type1 x, type2 y, type3 z, type4 w, type5 q, type6 a)) \
    { 								\
	im_setup; 						\
	im_/**/name(x,y,z,w,q,a);				\
    } 								\
    DL_IMMED_END(name) 						\
    DL_CMPLR_BEGIN(visible,name,( type1 x, type2 y, type3 z, type4 w, type5 q, type6 a)) \
    { 								\
	BEGINCOMPILE(DLSZ_/**/name); 				\
	ADDINTRP(name);						\
	ADD/**/type1(x); 					\
	ADD/**/type2(y); 					\
	ADD/**/type3(z); 					\
	ADD/**/type4(w); 					\
	ADD/**/type5(q); 					\
	ADD/**/type6(a); 					\
	ENDCOMPILE(DLSZ_/**/name); 				\
    } 								\
    DL_CMPLR_END(name) 						\
    DL_INTRP_BEGIN(intrp_sclass,name) 				\
    { 								\
	im_/**/name(TAKE/**/type1(0),				\
		    TAKE/**/type2(DLSZ_/**/type1),		\
		    TAKE/**/type3(2*DLSZ_/**/type2),		\
		    TAKE/**/type4(3*DLSZ_/**/type3), 		\
		    TAKE/**/type5(4*DLSZ_/**/type4), 		\
		    TAKE/**/type6(5*DLSZ_/**/type5)); 		\
	thread(name); 						\
    } 								\
    DL_INTRP_END(name)

#define DL_SPECMD_7(intrp_sclass,name,type1,type2,type3,type4,type5,type6,type7)	\
    DL_IMMED_BEGIN(visible,name,( type1 x, type2 y, type3 z, type4 w, type5 q, type6 a, type7 b)) \
    { 								\
	im_setup; 						\
	im_/**/name(x,y,z,w,q,a,b);				\
    } 								\
    DL_IMMED_END(name) 						\
    DL_CMPLR_BEGIN(visible,name,( type1 x, type2 y, type3 z, type4 w, type5 q, type6 a, type7 b)) \
    { 								\
	BEGINCOMPILE(DLSZ_/**/name); 				\
	ADDINTRP(name);						\
	ADD/**/type1(x); 					\
	ADD/**/type2(y); 					\
	ADD/**/type3(z); 					\
	ADD/**/type4(w); 					\
	ADD/**/type5(q); 					\
	ADD/**/type6(a); 					\
	ADD/**/type7(b); 					\
	ENDCOMPILE(DLSZ_/**/name); 				\
    } 								\
    DL_CMPLR_END(name) 						\
    DL_INTRP_BEGIN(intrp_sclass,name) 				\
    { 								\
	im_/**/name(TAKE/**/type1(0),				\
		    TAKE/**/type2(DLSZ_/**/type1),		\
		    TAKE/**/type3(2*DLSZ_/**/type2),		\
		    TAKE/**/type4(3*DLSZ_/**/type3), 		\
		    TAKE/**/type5(4*DLSZ_/**/type4), 		\
		    TAKE/**/type6(5*DLSZ_/**/type5), 		\
		    TAKE/**/type7(6*DLSZ_/**/type6)); 		\
	thread(name); 						\
    } 								\
    DL_INTRP_END(name)

#define DL_GENCMD_CV2(intrp_sclass,name,type)			\
    DL_IMMED_BEGIN(visible,name,( const type v[2]))		\
    { 								\
	im_setup; 						\
	im_/**/name(v[0],v[1]);					\
    } 								\
    DL_IMMED_END(name) 						\
    DL_CMPLR_BEGIN(visible,name,( const type v[2]))		\
    { 								\
	BEGINCOMPILE(DLSZ_/**/name); 				\
	ADDINTRP(name);						\
	ADDV2(type,v);						\
	ENDCOMPILE(DLSZ_/**/name); 				\
    } 								\
    DL_CMPLR_END(name) 						\
    DL_INTRP_BEGIN(intrp_sclass,name) 				\
    { 								\
	im_/**/name(TAKE/**/type(0),				\
		    TAKE/**/type(DLSZ_/**/type));		\
	thread(name); 						\
    } 								\
    DL_INTRP_END(name)


#define DL_GENCMD_CV3(intrp_sclass,name,type)			\
    DL_IMMED_BEGIN(visible,name,( const type v[3]))		\
    { 								\
	im_setup; 						\
	im_/**/name(v[0],v[1],v[2]);				\
    } 								\
    DL_IMMED_END(name) 						\
    DL_CMPLR_BEGIN(visible,name,( const type v[3]))		\
    { 								\
	BEGINCOMPILE(DLSZ_/**/name); 				\
	ADDINTRP(name);						\
	ADDV3(type,v);						\
	ADDFILL/**/type();					\
	ENDCOMPILE(DLSZ_/**/name); 				\
    } 								\
    DL_CMPLR_END(name) 						\
    DL_INTRP_BEGIN(intrp_sclass,name) 				\
    { 								\
	im_/**/name(TAKE/**/type(0),				\
		    TAKE/**/type(DLSZ_/**/type),		\
		    TAKE/**/type(2*DLSZ_/**/type)); 		\
	thread(name); 						\
    } 								\
    DL_INTRP_END(name)

#define DL_GENCMD_CV4(intrp_sclass,name,type)			\
    DL_IMMED_BEGIN(visible,name,( const type v[4]))		\
    { 								\
	im_setup; 						\
	im_/**/name(v[0],v[1],v[2],v[3]);			\
    } 								\
    DL_IMMED_END(name) 						\
    DL_CMPLR_BEGIN(visible,name,( const type v[4]))		\
    { 								\
	BEGINCOMPILE(DLSZ_/**/name); 				\
	ADDINTRP(name);						\
	ADDV4(type,v);						\
	ENDCOMPILE(DLSZ_/**/name); 				\
    } 								\
    DL_CMPLR_END(name) 						\
    DL_INTRP_BEGIN(intrp_sclass,name) 				\
    { 								\
	im_/**/name(TAKE/**/type(0),				\
		    TAKE/**/type(DLSZ_/**/type),		\
		    TAKE/**/type(2*DLSZ_/**/type),		\
		    TAKE/**/type(3*DLSZ_/**/type)); 		\
	thread(name); 						\
    } 								\
    DL_INTRP_END(name)

#define DL_GENCMD_V2(intrp_sclass,name,type)			\
    DL_IMMED_BEGIN(visible,name,( type v[2]))		\
    { 								\
	im_setup; 						\
	im_/**/name(v[0],v[1]);					\
    } 								\
    DL_IMMED_END(name) 						\
    DL_CMPLR_BEGIN(visible,name,( type v[2]))		\
    { 								\
	BEGINCOMPILE(DLSZ_/**/name); 				\
	ADDINTRP(name);						\
	ADDV2(type,v);						\
	ENDCOMPILE(DLSZ_/**/name); 				\
    } 								\
    DL_CMPLR_END(name) 						\
    DL_INTRP_BEGIN(intrp_sclass,aname) 				\
    { 								\
	im_/**/name(TAKE/**/type(0),				\
		    TAKE/**/type(DLSZ_/**/type));		\
	thread(name); 						\
    } 								\
    DL_INTRP_END(name)


#define DL_GENCMD_V3(intrp_sclass,name,type)			\
    DL_IMMED_BEGIN(visible,name,( type v[3]))		\
    { 								\
	im_setup; 						\
	im_/**/name(v[0],v[1],v[2]);				\
    } 								\
    DL_IMMED_END(name) 						\
    DL_CMPLR_BEGIN(visible,name,( type v[3]))		\
    { 								\
	BEGINCOMPILE(DLSZ_/**/name); 				\
	ADDINTRP(name);						\
	ADDV3(type,v);						\
	ADDFILL/**/type();					\
	ENDCOMPILE(DLSZ_/**/name); 				\
    } 								\
    DL_CMPLR_END(name) 						\
    DL_INTRP_BEGIN(intrp_sclass,name) 				\
    { 								\
	im_/**/name(TAKE/**/type(0),				\
		    TAKE/**/type(DLSZ_/**/type),		\
		    TAKE/**/type(2*DLSZ_/**/type)); 		\
	thread(name); 						\
    } 								\
    DL_INTRP_END(name)

#define DL_GENCMD_V4(intrp_sclass,name,type)			\
    DL_IMMED_BEGIN(visible,name,( type v[4]))		\
    { 								\
	im_setup; 						\
	im_/**/name(v[0],v[1],v[2],v[3]);			\
    } 								\
    DL_IMMED_END(name) 						\
    DL_CMPLR_BEGIN(visible,name,( type v[4]))		\
    { 								\
	BEGINCOMPILE(DLSZ_/**/name); 				\
	ADDINTRP(name);						\
	ADDV4(type,v);						\
	ENDCOMPILE(DLSZ_/**/name); 				\
    } 								\
    DL_CMPLR_END(name) 						\
    DL_INTRP_BEGIN(intrp_sclass,name) 				\
    { 								\
	im_/**/name(TAKE/**/type(0),				\
		    TAKE/**/type(DLSZ_/**/type),		\
		    TAKE/**/type(2*DLSZ_/**/type),		\
		    TAKE/**/type(3*DLSZ_/**/type)); 		\
	thread(name); 						\
    } 								\
    DL_INTRP_END(name)

#if defined(LIGHT)||defined(NEWPORT)
/* 
 * the following is used only by LIGHT gfx, so to be safe its ifdef'ed
 * however, it might be usefull to others also
 */
#define DL_VERTEX(name,n,type,taketype)				\
    DL_IMMED_BEGIN(visible,name,(register type v[n]))		\
    {								\
	im_setup;						\
	im_/**/name(v);						\
    }								\
    DL_IMMED_END(name)						\
    DL_CMPLR_BEGIN(visible,name,(register type v[n]))		\
    {								\
	BEGINCOMPILE(DLSZ_/**/name);				\
	ADDINTRP(name);						\
	ADDV/**/n(taketype,v);					\
	ENDCOMPILE(DLSZ_/**/name);				\
    }								\
    DL_CMPLR_END(name)						\
    DL_INTRP_BEGIN(visible,name)				\
    {								\
	im_/**/name(TAKEV(taketype,0));				\
	thread(name);						\
    }								\
    DL_INTRP_END(name)
#endif

#endif	/* !__GL_IMINTERP_H__ */
