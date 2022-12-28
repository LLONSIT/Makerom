#ifndef __GL_THEMACRO_H__
#define __GL_THEMACRO_H__
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

/*
 * TheMacro.h
 *  - display list manipulation macros
 * 
 * $Revision: 1.23 $
 */

#include "dlpers.h"
#include "dlproto.h"
#include "dlsz.h"
#include "objectgl.h"

/* must be called with a constant for max_dlsz	*/
#define BEGINCOMPILE(max_dlsz)					\
{								\
    Int32 temparray[max_dlsz/2+1];   /* save room for retsym */	\
    register Objelem *PC = (Objelem *)temparray;
    
/* can be called with a variable for actual_dlsz */
#define ENDCOMPILE(actual_dlsz)					\
    gl_compile(actual_dlsz,temparray);				\
}

/* add size of composite to display list; use with NONPR definitions */
#define	NONPRCOMPILE(composite_dlsz)				\
    if (!gl_nonprim_checkspace(DLSZ_nonprim+composite_dlsz))	\
	return;							\
    BEGINCOMPILE(DLSZ_nonprim);					\
    ADDINTRP(nonprim);						\
    ADDInt32(DLSZ_nonprim+composite_dlsz);			\
    ENDCOMPILE(DLSZ_nonprim)
    

/* 
 * Macros to add things to a display list.
 *
 * ASSERT(sizeof(Objelem) == sizeof(Int16) == sizeof(Uint16))
 */
#ifdef lint
#define	_ADDTYPE(type,x)	(void)LINT_ADD/**/type(PC,x)
#else
#define	_ADDTYPE(type,x)	{ *(type *)PC = (x); PC+=DLSZ_/**/type ; }
#endif
#define ADDInt8(x)		*PC++ = (Int16)(x)
#define ADDUint8(x)		*(Uint16 *)PC++ = (Uint16)(x)
#define ADDChar8(x)		*(Uint16 *)PC++ = (Uint16)(x)
#define ADDInt16(x)		*PC++ = (x)
#define ADDUint16(x)		*(Uint16 *)PC++ = (x)
#define ADDInt32(x)		_ADDTYPE(Int32,x)
#define ADDUint32(x)		_ADDTYPE(Uint32,x)
#define ADDFloat32(x)	    	_ADDTYPE(Float32,x)
#define ADDUdptr(x)		_ADDTYPE(Udptr,(Udptr)(x))
#define ADDVfptr(x)		_ADDTYPE(Vfptr,(Vfptr)(x))
#define ADDMatrix(x)		{ gl_copymatrix4d(PC,x); PC+=DLSZ_Matrix ; }

#define ADDConst_Int8(x)	*PC++ = (Int16)(x)
#define ADDConst_Uint8(x)	*(Uint16 *)PC++ = (Uint16)(x)
#define ADDConst_Char8(x)	*(Uint16 *)PC++ = (Uint16)(x)
#define ADDConst_Int16(x)	*PC++ = (x)
#define ADDConst_Uint16(x)	*(Uint16 *)PC++ = (x)
#define ADDConst_Int32(x)	_ADDTYPE(Int32,x)
#define ADDConst_Uint32(x)	_ADDTYPE(Uint32,x)
#define ADDConst_Float32(x)    	_ADDTYPE(Float32,x)

/* convert Float64 to Float32 when building the display list */
#if defined(ECLIPSE) || defined(CLOVER1) || defined(EXPRESS) || defined(LIGHT) || defined(NEWPORT)
#define ADDFloat64(x)		ADDFloat32((Float32)(x))
#endif
/*
 * WARNING: the following 2 only work for big-endian Float64s
 */
#if	defined(CLOVER2)
#define ADDFloat64(x)						\
	_iptr = (Int32 *)&x; 	 				\
	*(_iptr + 1) &= 0x00000000; 				\
	ADDFloat32((Float32)x)
#endif
#if	defined(STAPUFT)
#define ADDFloat64(x)						\
	_iptr = (Int32 *)&x;   	 				\
	*(_iptr + 1) &= 0xE0000000 ; 				\
	ADDFloat32((Float32)x)
#endif
#if	defined(VENICE) /* XXX may not work */
#define ADDFloat64(x)						\
	_iptr = (Int32 *)&x;   	 				\
	*(_iptr + 1) &= 0xE0000000 ; 				\
	ADDFloat32((Float32)x)
#endif

#define ADDConst_Float64(x)	ADDFloat64(x)

/* add the address of the interpreter for <name> */
#define ADDINTRP(name)		_ADDTYPE(Intrpfptr,DL_INTRP_NAME(name))
#if 0
#define ADDINTRP(name)						\
    *(Intrpfptr *)PC = DL_INTRP_NAME(name); PC+=DLSZ_Intrpfptr
#endif

/* used for aligning to word boundaries; use ADDInt16(0xdead) when debugging */
#define ADDFILLER()		ADDInt16(0)	

/* used when don't need to fill */
#define NOFILLER()		/* no filler */

#define	ADDFILLInt8()   	ADDFILLInt16()
#define	ADDFILLUint8()  	ADDFILLUint16()
#define	ADDFILLChar8()  	ADDFILLUint16()
#define	ADDFILLInt16()  	ADDFILLER()
#define	ADDFILLUint16() 	ADDFILLER()
#define	ADDFILLInt32()  	NOFILLER()
#define	ADDFILLUint32() 	NOFILLER()
#define	ADDFILLFloat32()	NOFILLER()
#define	ADDFILLFloat64()	NOFILLER()
#define	ADDFILLUdptr()		NOFILLER()
#define	ADDFILLVfptr()		NOFILLER()
#define	ADDFILLMatrix() 	NOFILLER()

#define	ADDFILLConst_Int8()   	ADDFILLInt16()
#define	ADDFILLConst_Uint8()  	ADDFILLUint16()
#define	ADDFILLConst_Char8()  	ADDFILLUint16()
#define	ADDFILLConst_Int16()  	ADDFILLER()
#define	ADDFILLConst_Uint16() 	ADDFILLER()
#define	ADDFILLConst_Int32()  	NOFILLER()
#define	ADDFILLConst_Uint32() 	NOFILLER()
#define	ADDFILLConst_Float32()	NOFILLER()
#define	ADDFILLConst_Float64()	NOFILLER()

#define ADDV2(type,v)		{ ADD/**/type(v[0]); ADD/**/type(v[1]); }
#define ADDV3(type,v)		{ ADD/**/type(v[0]); ADD/**/type(v[1]); ADD/**/type(v[2]); }
#define ADDV4(type,v)		{ ADD/**/type(v[0]); ADD/**/type(v[1]); ADD/**/type(v[2]); ADD/**/type(v[3]); }


/* 
 * Macros to take things from a display list.
 */
#ifdef lint
#define	_TAKETYPE(type,offset)	(type)LINT_TAKE/**/type(PC,offset)
#define	TAKEV(type,offset)	(type *)PC
#else
#define	_TAKETYPE(type,offset)	(*(type *)(PC+(offset)))
#define	TAKEV(type,offset)	((type *)(PC+(offset)))
#endif
#define TAKEInt8(offset)	_TAKETYPE(Int16,offset)
#define TAKEUint8(offset)	_TAKETYPE(Uint16,offset)
#define TAKEChar8(offset)	_TAKETYPE(Uint16,offset)
#define TAKEInt16(offset)	_TAKETYPE(Int16,offset)
#define TAKEUint16(offset)	_TAKETYPE(Uint16,offset)
#define TAKEInt32(offset)	_TAKETYPE(Int32,offset)
#define TAKEUint32(offset)	_TAKETYPE(Uint32,offset)
#define TAKEFloat32(offset)	_TAKETYPE(Float32,offset)

#define TAKEConst_Int8(offset)	_TAKETYPE(Int16,offset)
#define TAKEConst_Uint8(offset)	_TAKETYPE(Uint16,offset)
#define TAKEConst_Char8(offset)	_TAKETYPE(Uint16,offset)
#define TAKEConst_Int16(offset)	_TAKETYPE(Int16,offset)
#define TAKEConst_Uint16(offset)	_TAKETYPE(Uint16,offset)
#define TAKEConst_Int32(offset)	_TAKETYPE(Int32,offset)
#define TAKEConst_Uint32(offset)	_TAKETYPE(Uint32,offset)
#define TAKEConst_Float32(offset)	_TAKETYPE(Float32,offset)

/* conversion from Float64 to Float32 done when building the display list */
#define TAKEFloat64(offset)	_TAKETYPE(Float32,offset)

#define TAKEUdptr(offset)	_TAKETYPE(Udptr,offset)
#define TAKEVfptr(offset)	_TAKETYPE(Vfptr,offset)
#define	TAKEMatrix(offset)	_TAKETYPE(Matrix,offset)

#endif	/* !__GL_THEMACRO_H__ */
