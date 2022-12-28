/*
 * qcontrol.h --
 *
 * 	Definitions for qcontrol(3G)
 *
 *
 * Copyright 1990, Silicon Graphics, Inc. 
 * All Rights Reserved.
 *
 * This is UNPUBLISHED PROPRIETARY SOURCE CODE of Silicon Graphics, Inc.;
 * the contents of this file may not be disclosed to third parties, copied or 
 * duplicated in any form, in whole or in part, without the prior written 
 * permission of Silicon Graphics, Inc.
 *
 * RESTRICTED RIGHTS LEGEND:
 * Use, duplication or disclosure by the Government is subject to restrictions 
 * as set forth in subdivision (c)(1)(ii) of the Rights in Technical Data
 * and Computer Software clause at DFARS 252.227-7013, and/or in similar or 
 * successor clauses in the FAR, DOD or NASA FAR Supplement. Unpublished - 
 * rights reserved under the Copyright Laws of the United States.
 */
#ifndef __qcontrol_H__
#define __qcontrol_H__

#ident "$Revision: 1.4 $"

/* GL Queue size in pairs of (dev,val) */
#define GL_MAXQ		600

#define QC_GETKEYWARP	21
#define QC_SETKEYWARP	22
#define QC_GETMOUSEWARP	31
#define QC_SETMOUSEWARP	32
#define QC_GETDIALWARP	41
#define QC_SETDIALWARP	42

#endif /* !__qcontrol_H__ */
