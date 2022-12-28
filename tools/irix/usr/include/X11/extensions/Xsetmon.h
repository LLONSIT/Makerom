/**************************************************************************
 *                                                                        *
 *              Copyright ( C ) 1994, Silicon Graphics, Inc.              *
 *                                                                        *
 *  These coded instructions, statements, and computer programs  contain  *
 *  unpublished  proprietary  information of Silicon Graphics, Inc., and  *
 *  are protected by Federal copyright law.  They  may  not be disclosed  *
 *  to  third  parties  or copied or duplicated in any form, in whole or  *
 *  in part, without the prior written consent of Silicon Graphics, Inc.  *
 *                                                                        *
 **************************************************************************/

#ifndef _XSETMON_H_
#define _XSETMON_H_

#define SGI_SETMON_ATOM_NAME	"__SGI_SETMON_ATOM__"

typedef struct _XSetmonProp {
	int	flags;
	int	screenWidth;
	int	screenHeight;
} XSetmonProp;


#endif /* _XSETMON_H_ */
