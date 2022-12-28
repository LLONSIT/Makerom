C
C  Copyright 1991-1993, Silicon Graphics, Inc.
C  All Rights Reserved.
C  
C  This is UNPUBLISHED PROPRIETARY SOURCE CODE of Silicon Graphics, Inc.;
C  the contents of this file may not be disclosed to third parties, copied or
C  duplicated in any form, in whole or in part, without the prior written
C  permission of Silicon Graphics, Inc.
C  
C  RESTRICTED RIGHTS LEGEND:
C  Use, duplication or disclosure by the Government is subject to restrictions
C  as set forth in subdivision (c)(1)(ii) of the Rights in Technical Data
C  and Computer Software clause at DFARS 252.227-7013, and/or in similar or
C  successor clauses in the FAR, DOD or NASA FAR Supplement. Unpublished -
C  rights reserved under the Copyright Laws of the United States.
C


C ***		Generic constants 		***

C  Errors: (return value 0 = no error) 
       integer*4   FGLU_INVALID_ENUM
       parameter ( FGLU_INVALID_ENUM = 100900 ) 	
       integer*4   FGLU_INVALID_VALUE
       parameter ( FGLU_INVALID_VALUE = 100901 ) 	
       integer*4   FGLU_OUT_OF_MEMORY
       parameter ( FGLU_OUT_OF_MEMORY = 100902 ) 	

C  For laughs: 
       integer*4   FGLU_TRUE
       parameter ( FGLU_TRUE = GLTRUE ) 	
       integer*4   FGLU_FALSE
       parameter ( FGLU_FALSE = GLFALS ) 	


C *** 		Quadric constants 		***

C  Types of normals: 
       integer*4   FGLU_SMOOTH
       parameter ( FGLU_SMOOTH = 100000 ) 	
       integer*4   FGLU_FLAT
       parameter ( FGLU_FLAT = 100001 ) 	
       integer*4   FGLU_NONE
       parameter ( FGLU_NONE = 100002 ) 	

C  DrawStyle types: 
       integer*4   FGLU_POINT
       parameter ( FGLU_POINT = 100010 ) 	
       integer*4   FGLU_LINE
       parameter ( FGLU_LINE = 100011 ) 	
       integer*4   FGLU_FILL
       parameter ( FGLU_FILL = 100012 ) 	
       integer*4   FGLU_SILHOUETTE
       parameter ( FGLU_SILHOUETTE = 100013 ) 	

C  Orientation types: 
       integer*4   FGLU_OUTSIDE
       parameter ( FGLU_OUTSIDE = 100020 ) 	
       integer*4   FGLU_INSIDE
       parameter ( FGLU_INSIDE = 100021 ) 	

C  Callback types: 
C       GLU_ERROR		100103 


C ***	 	Tesselation constants 		***

C  Callback types: 
       integer*4   FGLU_BEGIN
       parameter ( FGLU_BEGIN = 100100 ) 	
       integer*4   FGLU_VERTEX
       parameter ( FGLU_VERTEX = 100101 ) 	
       integer*4   FGLU_END
       parameter ( FGLU_END = 100102 ) 	
       integer*4   FGLU_ERROR
       parameter ( FGLU_ERROR = 100103 ) 	
       integer*4   FGLU_EDGE_FLAG
       parameter ( FGLU_EDGE_FLAG = 100104 ) 	

C  Contours types: 
       integer*4   FGLU_CW
       parameter ( FGLU_CW = 100120 ) 	
       integer*4   FGLU_CCW
       parameter ( FGLU_CCW = 100121 ) 	
       integer*4   FGLU_INTERIOR
       parameter ( FGLU_INTERIOR = 100122 ) 	
       integer*4   FGLU_EXTERIOR
       parameter ( FGLU_EXTERIOR = 100123 ) 	
       integer*4   FGLU_UNKNOWN
       parameter ( FGLU_UNKNOWN = 100124 ) 	

       integer*4   FGLU_TESS_ERROR1
       parameter ( FGLU_TESS_ERROR1 = 100151 ) 	
       integer*4   FGLU_TESS_ERROR2
       parameter ( FGLU_TESS_ERROR2 = 100152 ) 	
       integer*4   FGLU_TESS_ERROR3
       parameter ( FGLU_TESS_ERROR3 = 100153 ) 	
       integer*4   FGLU_TESS_ERROR4
       parameter ( FGLU_TESS_ERROR4 = 100154 ) 	
       integer*4   FGLU_TESS_ERROR5
       parameter ( FGLU_TESS_ERROR5 = 100155 ) 	
       integer*4   FGLU_TESS_ERROR6
       parameter ( FGLU_TESS_ERROR6 = 100156 ) 	
       integer*4   FGLU_TESS_ERROR7
       parameter ( FGLU_TESS_ERROR7 = 100157 ) 	
       integer*4   FGLU_TESS_ERROR8
       parameter ( FGLU_TESS_ERROR8 = 100158 ) 	


C ***		NURBS constants			***

C  Properties: 
       integer*4   FGLU_AUTO_LOAD_MATRIX
       parameter ( FGLU_AUTO_LOAD_MATRIX = 100200 ) 	
       integer*4   FGLU_CULLING
       parameter ( FGLU_CULLING = 100201 ) 	
       integer*4   FGLU_SAMPLING_TOLERANCE
       parameter ( FGLU_SAMPLING_TOLERANCE = 100203 ) 	
       integer*4   FGLU_DISPLAY_MODE
       parameter ( FGLU_DISPLAY_MODE = 100204 ) 	

C  Trimming curve types 
       integer*4   FGLU_MAP1_TRIM_2
       parameter ( FGLU_MAP1_TRIM_2 = 100210 ) 	
       integer*4   FGLU_MAP1_TRIM_3
       parameter ( FGLU_MAP1_TRIM_3 = 100211 ) 	

C  Display modes: 
C       GLU_FILL 		100012 
       integer*4   FGLU_OUTLINE_POLYGON
       parameter ( FGLU_OUTLINE_POLYGON = 100240 ) 	
       integer*4   FGLU_OUTLINE_PATCH
       parameter ( FGLU_OUTLINE_PATCH = 100241 ) 	

C  Callbacks: 
C       GLU_ERROR		100103 

C  Errors: 
       integer*4   FGLU_NURBS_ERROR1
       parameter ( FGLU_NURBS_ERROR1 = 100251 ) 	
       integer*4   FGLU_NURBS_ERROR2
       parameter ( FGLU_NURBS_ERROR2 = 100252 ) 	
       integer*4   FGLU_NURBS_ERROR3
       parameter ( FGLU_NURBS_ERROR3 = 100253 ) 	
       integer*4   FGLU_NURBS_ERROR4
       parameter ( FGLU_NURBS_ERROR4 = 100254 ) 	
       integer*4   FGLU_NURBS_ERROR5
       parameter ( FGLU_NURBS_ERROR5 = 100255 ) 	
       integer*4   FGLU_NURBS_ERROR6
       parameter ( FGLU_NURBS_ERROR6 = 100256 ) 	
       integer*4   FGLU_NURBS_ERROR7
       parameter ( FGLU_NURBS_ERROR7 = 100257 ) 	
       integer*4   FGLU_NURBS_ERROR8
       parameter ( FGLU_NURBS_ERROR8 = 100258 ) 	
       integer*4   FGLU_NURBS_ERROR9
       parameter ( FGLU_NURBS_ERROR9 = 100259 ) 	
       integer*4   FGLU_NURBS_ERROR10
       parameter ( FGLU_NURBS_ERROR10 = 100260 ) 	
       integer*4   FGLU_NURBS_ERROR11
       parameter ( FGLU_NURBS_ERROR11 = 100261 ) 	
       integer*4   FGLU_NURBS_ERROR12
       parameter ( FGLU_NURBS_ERROR12 = 100262 ) 	
       integer*4   FGLU_NURBS_ERROR13
       parameter ( FGLU_NURBS_ERROR13 = 100263 ) 	
       integer*4   FGLU_NURBS_ERROR14
       parameter ( FGLU_NURBS_ERROR14 = 100264 ) 	
       integer*4   FGLU_NURBS_ERROR15
       parameter ( FGLU_NURBS_ERROR15 = 100265 ) 	
       integer*4   FGLU_NURBS_ERROR16
       parameter ( FGLU_NURBS_ERROR16 = 100266 ) 	
       integer*4   FGLU_NURBS_ERROR17
       parameter ( FGLU_NURBS_ERROR17 = 100267 ) 	
       integer*4   FGLU_NURBS_ERROR18
       parameter ( FGLU_NURBS_ERROR18 = 100268 ) 	
       integer*4   FGLU_NURBS_ERROR19
       parameter ( FGLU_NURBS_ERROR19 = 100269 ) 	
       integer*4   FGLU_NURBS_ERROR20
       parameter ( FGLU_NURBS_ERROR20 = 100270 ) 	
       integer*4   FGLU_NURBS_ERROR21
       parameter ( FGLU_NURBS_ERROR21 = 100271 ) 	
       integer*4   FGLU_NURBS_ERROR22
       parameter ( FGLU_NURBS_ERROR22 = 100272 ) 	
       integer*4   FGLU_NURBS_ERROR23
       parameter ( FGLU_NURBS_ERROR23 = 100273 ) 	
       integer*4   FGLU_NURBS_ERROR24
       parameter ( FGLU_NURBS_ERROR24 = 100274 ) 	
       integer*4   FGLU_NURBS_ERROR25
       parameter ( FGLU_NURBS_ERROR25 = 100275 ) 	
       integer*4   FGLU_NURBS_ERROR26
       parameter ( FGLU_NURBS_ERROR26 = 100276 ) 	
       integer*4   FGLU_NURBS_ERROR27
       parameter ( FGLU_NURBS_ERROR27 = 100277 ) 	
       integer*4   FGLU_NURBS_ERROR28
       parameter ( FGLU_NURBS_ERROR28 = 100278 ) 	
       integer*4   FGLU_NURBS_ERROR29
       parameter ( FGLU_NURBS_ERROR29 = 100279 ) 	
       integer*4   FGLU_NURBS_ERROR30
       parameter ( FGLU_NURBS_ERROR30 = 100280 ) 	
       integer*4   FGLU_NURBS_ERROR31
       parameter ( FGLU_NURBS_ERROR31 = 100281 ) 	
       integer*4   FGLU_NURBS_ERROR32
       parameter ( FGLU_NURBS_ERROR32 = 100282 ) 	
       integer*4   FGLU_NURBS_ERROR33
       parameter ( FGLU_NURBS_ERROR33 = 100283 ) 	
       integer*4   FGLU_NURBS_ERROR34
       parameter ( FGLU_NURBS_ERROR34 = 100284 ) 	
       integer*4   FGLU_NURBS_ERROR35
       parameter ( FGLU_NURBS_ERROR35 = 100285 ) 	
       integer*4   FGLU_NURBS_ERROR36
       parameter ( FGLU_NURBS_ERROR36 = 100286 ) 	
       integer*4   FGLU_NURBS_ERROR37
       parameter ( FGLU_NURBS_ERROR37 = 100287 ) 	


       character*128       fgluErrorString
       character*128       fgluGetString
       integer*4           fgluBuild1DMipmaps
       integer*4           fgluBuild2DMipmaps
       integer*4           fgluProject
       integer*4           fgluScaleImage
       integer*4           fgluUnProject
