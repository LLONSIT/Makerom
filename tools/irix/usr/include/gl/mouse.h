#ifndef __GL_MOUSE_H__
#define __GL_MOUSE_H__
#ident "$Revision: 1.2 $"

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

struct mouse {
	short 	x;
	short 	y;
	char	left;
	char	middle;
	char	right;
};

#define MOUSEMAXRAW	0x10000

#endif /* __GL_MOUSE_H__ */
