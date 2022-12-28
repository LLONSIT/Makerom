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


C ***********************************************************

C  AttribMask 
       integer*4   FGL_CURRENT_BIT
       parameter ( FGL_CURRENT_BIT = 1 ) 	
       integer*4   FGL_POINT_BIT
       parameter ( FGL_POINT_BIT = 2 ) 	
       integer*4   FGL_LINE_BIT
       parameter ( FGL_LINE_BIT = 4 ) 	
       integer*4   FGL_POLYGON_BIT
       parameter ( FGL_POLYGON_BIT = 8 ) 	
       integer*4   FGL_POLYGON_STIPPLE_BIT
       parameter ( FGL_POLYGON_STIPPLE_BIT = 16 ) 	
       integer*4   FGL_PIXEL_MODE_BIT
       parameter ( FGL_PIXEL_MODE_BIT = 32 ) 	
       integer*4   FGL_LIGHTING_BIT
       parameter ( FGL_LIGHTING_BIT = 64 ) 	
       integer*4   FGL_FOG_BIT
       parameter ( FGL_FOG_BIT = 128 ) 	
       integer*4   FGL_DEPTH_BUFFER_BIT
       parameter ( FGL_DEPTH_BUFFER_BIT = 256 ) 	
       integer*4   FGL_ACCUM_BUFFER_BIT
       parameter ( FGL_ACCUM_BUFFER_BIT = 512 ) 	
       integer*4   FGL_STENCIL_BUFFER_BIT
       parameter ( FGL_STENCIL_BUFFER_BIT = 1024 ) 	
       integer*4   FGL_VIEWPORT_BIT
       parameter ( FGL_VIEWPORT_BIT = 2048 ) 	
       integer*4   FGL_TRANSFORM_BIT
       parameter ( FGL_TRANSFORM_BIT = 4096 ) 	
       integer*4   FGL_ENABLE_BIT
       parameter ( FGL_ENABLE_BIT = 8192 ) 	
       integer*4   FGL_COLOR_BUFFER_BIT
       parameter ( FGL_COLOR_BUFFER_BIT = 16384 ) 	
       integer*4   FGL_HINT_BIT
       parameter ( FGL_HINT_BIT = 32768 ) 	
       integer*4   FGL_EVAL_BIT
       parameter ( FGL_EVAL_BIT = 65536 ) 	
       integer*4   FGL_LIST_BIT
       parameter ( FGL_LIST_BIT = 131072 ) 	
       integer*4   FGL_TEXTURE_BIT
       parameter ( FGL_TEXTURE_BIT = 262144 ) 	
       integer*4   FGL_SCISSOR_BIT
       parameter ( FGL_SCISSOR_BIT = 524288 ) 	
       integer*4   FGL_ALL_ATTRIB_BITS
       parameter ( FGL_ALL_ATTRIB_BITS = 1048575 ) 	
C       GL_MULTISAMPLE_BIT_EXT 

C  ClearBufferMask 
C       GL_COLOR_BUFFER_BIT 
C       GL_ACCUM_BUFFER_BIT 
C       GL_STENCIL_BUFFER_BIT 
C       GL_DEPTH_BUFFER_BIT 

C  Boolean 
       integer*4   FGL_FALSE
       parameter ( FGL_FALSE = 0 ) 	
       integer*4   FGL_TRUE
       parameter ( FGL_TRUE = 1 ) 	

C  BeginMode 
       integer*4   FGL_POINTS
       parameter ( FGL_POINTS = 0 ) 	
       integer*4   FGL_LINES
       parameter ( FGL_LINES = 1 ) 	
       integer*4   FGL_LINE_LOOP
       parameter ( FGL_LINE_LOOP = 2 ) 	
       integer*4   FGL_LINE_STRIP
       parameter ( FGL_LINE_STRIP = 3 ) 	
       integer*4   FGL_TRIANGLES
       parameter ( FGL_TRIANGLES = 4 ) 	
       integer*4   FGL_TRIANGLE_STRIP
       parameter ( FGL_TRIANGLE_STRIP = 5 ) 	
       integer*4   FGL_TRIANGLE_FAN
       parameter ( FGL_TRIANGLE_FAN = 6 ) 	
       integer*4   FGL_QUADS
       parameter ( FGL_QUADS = 7 ) 	
       integer*4   FGL_QUAD_STRIP
       parameter ( FGL_QUAD_STRIP = 8 ) 	
       integer*4   FGL_POLYGON
       parameter ( FGL_POLYGON = 9 ) 	

C  AccumOp 
       integer*4   FGL_ACCUM
       parameter ( FGL_ACCUM = 256 ) 	
       integer*4   FGL_LOAD
       parameter ( FGL_LOAD = 257 ) 	
       integer*4   FGL_RETURN
       parameter ( FGL_RETURN = 258 ) 	
       integer*4   FGL_MULT
       parameter ( FGL_MULT = 259 ) 	
       integer*4   FGL_ADD
       parameter ( FGL_ADD = 260 ) 	

C  AlphaFunction 
       integer*4   FGL_NEVER
       parameter ( FGL_NEVER = 512 ) 	
       integer*4   FGL_LESS
       parameter ( FGL_LESS = 513 ) 	
       integer*4   FGL_EQUAL
       parameter ( FGL_EQUAL = 514 ) 	
       integer*4   FGL_LEQUAL
       parameter ( FGL_LEQUAL = 515 ) 	
       integer*4   FGL_GREATER
       parameter ( FGL_GREATER = 516 ) 	
       integer*4   FGL_NOTEQUAL
       parameter ( FGL_NOTEQUAL = 517 ) 	
       integer*4   FGL_GEQUAL
       parameter ( FGL_GEQUAL = 518 ) 	
       integer*4   FGL_ALWAYS
       parameter ( FGL_ALWAYS = 519 ) 	

C  BlendingFactorDest 
       integer*4   FGL_ZERO
       parameter ( FGL_ZERO = 0 ) 	
       integer*4   FGL_ONE
       parameter ( FGL_ONE = 1 ) 	
       integer*4   FGL_SRC_COLOR
       parameter ( FGL_SRC_COLOR = 768 ) 	
       integer*4   FGL_ONE_MINUS_SRC_COLOR
       parameter ( FGL_ONE_MINUS_SRC_COLOR = 769 ) 	
       integer*4   FGL_SRC_ALPHA
       parameter ( FGL_SRC_ALPHA = 770 ) 	
       integer*4   FGL_ONE_MINUS_SRC_ALPHA
       parameter ( FGL_ONE_MINUS_SRC_ALPHA = 771 ) 	
       integer*4   FGL_DST_ALPHA
       parameter ( FGL_DST_ALPHA = 772 ) 	
       integer*4   FGL_ONE_MINUS_DST_ALPHA
       parameter ( FGL_ONE_MINUS_DST_ALPHA = 773 ) 	
C       GL_CONSTANT_COLOR_EXT 
C       GL_ONE_MINUS_CONSTANT_COLOR_EXT 
C       GL_CONSTANT_ALPHA_EXT 
C       GL_ONE_MINUS_CONSTANT_ALPHA_EXT 

C  BlendingFactorSrc 
C       GL_ZERO 
C       GL_ONE 
       integer*4   FGL_DST_COLOR
       parameter ( FGL_DST_COLOR = 774 ) 	
       integer*4   FGL_ONE_MINUS_DST_COLOR
       parameter ( FGL_ONE_MINUS_DST_COLOR = 775 ) 	
       integer*4   FGL_SRC_ALPHA_SATURATE
       parameter ( FGL_SRC_ALPHA_SATURATE = 776 ) 	
C       GL_SRC_ALPHA 
C       GL_ONE_MINUS_SRC_ALPHA 
C       GL_DST_ALPHA 
C       GL_ONE_MINUS_DST_ALPHA 
C       GL_CONSTANT_COLOR_EXT 
C       GL_ONE_MINUS_CONSTANT_COLOR_EXT 
C       GL_CONSTANT_ALPHA_EXT 
C       GL_ONE_MINUS_CONSTANT_ALPHA_EXT 

C  BlendingMode 
C       GL_LOGIC_OP 
C       GL_FUNC_ADD_EXT 
C       GL_MIN_EXT 
C       GL_MAX_EXT 
C       GL_FUNC_SUBTRACT_EXT 
C       GL_FUNC_REVERSE_SUBTRACT_EXT 

C  ColorMaterialFace 
C       GL_FRONT 
C       GL_BACK 
C       GL_FRONT_AND_BACK 

C  ColorMaterialParameter 
C       GL_AMBIENT 
C       GL_DIFFUSE 
C       GL_SPECULAR 
C       GL_EMISSION 
C       GL_AMBIENT_AND_DIFFUSE 

C  ConvolutionBorderMode 
C       GL_REDUCE_EXT 

C  ConvolutionParameter 
C       GL_CONVOLUTION_BORDER_MODE_EXT 
C       GL_CONVOLUTION_FILTER_SCALE_EXT 
C       GL_CONVOLUTION_FILTER_BIAS_EXT 

C  ConvolutionTarget 
C       GL_CONVOLUTION_1D_EXT 
C       GL_CONVOLUTION_2D_EXT 

C  CullFaceMode 
C       GL_FRONT 
C       GL_BACK 
C       GL_FRONT_AND_BACK 

C  DepthFunction 
C       GL_NEVER 
C       GL_LESS 
C       GL_EQUAL 
C       GL_LEQUAL 
C       GL_GREATER 
C       GL_NOTEQUAL 
C       GL_GEQUAL 
C       GL_ALWAYS 

C  DrawBufferMode 
       integer*4   FGL_NONE
       parameter ( FGL_NONE = 0 ) 	
       integer*4   FGL_FRONT_LEFT
       parameter ( FGL_FRONT_LEFT = 1024 ) 	
       integer*4   FGL_FRONT_RIGHT
       parameter ( FGL_FRONT_RIGHT = 1025 ) 	
       integer*4   FGL_BACK_LEFT
       parameter ( FGL_BACK_LEFT = 1026 ) 	
       integer*4   FGL_BACK_RIGHT
       parameter ( FGL_BACK_RIGHT = 1027 ) 	
       integer*4   FGL_FRONT
       parameter ( FGL_FRONT = 1028 ) 	
       integer*4   FGL_BACK
       parameter ( FGL_BACK = 1029 ) 	
       integer*4   FGL_LEFT
       parameter ( FGL_LEFT = 1030 ) 	
       integer*4   FGL_RIGHT
       parameter ( FGL_RIGHT = 1031 ) 	
       integer*4   FGL_FRONT_AND_BACK
       parameter ( FGL_FRONT_AND_BACK = 1032 ) 	
       integer*4   FGL_AUX0
       parameter ( FGL_AUX0 = 1033 ) 	
       integer*4   FGL_AUX1
       parameter ( FGL_AUX1 = 1034 ) 	
       integer*4   FGL_AUX2
       parameter ( FGL_AUX2 = 1035 ) 	
       integer*4   FGL_AUX3
       parameter ( FGL_AUX3 = 1036 ) 	

C  Enable 
C       GL_FOG 
C       GL_LIGHTING 
C       GL_TEXTURE_1D 
C       GL_TEXTURE_2D 
C       GL_LINE_STIPPLE 
C       GL_POLYGON_STIPPLE 
C       GL_CULL_FACE 
C       GL_ALPHA_TEST 
C       GL_BLEND 
C       GL_LOGIC_OP 
C       GL_DITHER 
C       GL_STENCIL_TEST 
C       GL_DEPTH_TEST 
C       GL_CLIP_PLANE0 
C       GL_CLIP_PLANE1 
C       GL_CLIP_PLANE2 
C       GL_CLIP_PLANE3 
C       GL_CLIP_PLANE4 
C       GL_CLIP_PLANE5 
C       GL_LIGHT0 
C       GL_LIGHT1 
C       GL_LIGHT2 
C       GL_LIGHT3 
C       GL_LIGHT4 
C       GL_LIGHT5 
C       GL_LIGHT6 
C       GL_LIGHT7 
C       GL_TEXTURE_GEN_S 
C       GL_TEXTURE_GEN_T 
C       GL_TEXTURE_GEN_R 
C       GL_TEXTURE_GEN_Q 
C       GL_MAP1_VERTEX_3 
C       GL_MAP1_VERTEX_4 
C       GL_MAP1_COLOR_4 
C       GL_MAP1_INDEX 
C       GL_MAP1_NORMAL 
C       GL_MAP1_TEXTURE_COORD_1 
C       GL_MAP1_TEXTURE_COORD_2 
C       GL_MAP1_TEXTURE_COORD_3 
C       GL_MAP1_TEXTURE_COORD_4 
C       GL_MAP2_VERTEX_3 
C       GL_MAP2_VERTEX_4 
C       GL_MAP2_COLOR_4 
C       GL_MAP2_INDEX 
C       GL_MAP2_NORMAL 
C       GL_MAP2_TEXTURE_COORD_1 
C       GL_MAP2_TEXTURE_COORD_2 
C       GL_MAP2_TEXTURE_COORD_3 
C       GL_MAP2_TEXTURE_COORD_4 
C       GL_POINT_SMOOTH 
C       GL_LINE_SMOOTH 
C       GL_POLYGON_SMOOTH 
C       GL_SCISSOR_TEST 
C       GL_COLOR_MATERIAL 
C       GL_NORMALIZE 
C       GL_AUTO_NORMAL 
C       GL_CONVOLUTION_1D_EXT 
C       GL_CONVOLUTION_2D_EXT 
C       GL_SEPARABLE_2D_EXT 
C       GL_HISTOGRAM_EXT 
C       GL_MINMAX_EXT 
C       GL_POLYGON_OFFSET_EXT 
C       GL_TEXTURE_3D_EXT 
C       GL_MULTISAMPLE_SGIS 
C       GL_SAMPLE_ALPHA_TO_MASK_SGIS 
C       GL_SAMPLE_ALPHA_TO_ONE_SGIS 
C       GL_SAMPLE_MASK_SGIS 

C  ErrorCode 
       integer*4   FGL_NO_ERROR
       parameter ( FGL_NO_ERROR = 0 ) 	
       integer*4   FGL_INVALID_ENUM
       parameter ( FGL_INVALID_ENUM = 1280 ) 	
       integer*4   FGL_INVALID_VALUE
       parameter ( FGL_INVALID_VALUE = 1281 ) 	
       integer*4   FGL_INVALID_OPERATION
       parameter ( FGL_INVALID_OPERATION = 1282 ) 	
       integer*4   FGL_STACK_OVERFLOW
       parameter ( FGL_STACK_OVERFLOW = 1283 ) 	
       integer*4   FGL_STACK_UNDERFLOW
       parameter ( FGL_STACK_UNDERFLOW = 1284 ) 	
       integer*4   FGL_OUT_OF_MEMORY
       parameter ( FGL_OUT_OF_MEMORY = 1285 ) 	
C       GL_TABLE_TOO_LARGE_EXT 
C       GL_TEXTURE_TOO_LARGE_EXT 

C  FeedBackMode 
       integer*4   FGL_2D
       parameter ( FGL_2D = 1536 ) 	
       integer*4   FGL_3D
       parameter ( FGL_3D = 1537 ) 	
       integer*4   FGL_3D_COLOR
       parameter ( FGL_3D_COLOR = 1538 ) 	
       integer*4   FGL_3D_COLOR_TEXTURE
       parameter ( FGL_3D_COLOR_TEXTURE = 1539 ) 	
       integer*4   FGL_4D_COLOR_TEXTURE
       parameter ( FGL_4D_COLOR_TEXTURE = 1540 ) 	

C  FeedBackToken 
       integer*4   FGL_PASS_THROUGH_TOKEN
       parameter ( FGL_PASS_THROUGH_TOKEN = 1792 ) 	
       integer*4   FGL_POINT_TOKEN
       parameter ( FGL_POINT_TOKEN = 1793 ) 	
       integer*4   FGL_LINE_TOKEN
       parameter ( FGL_LINE_TOKEN = 1794 ) 	
       integer*4   FGL_POLYGON_TOKEN
       parameter ( FGL_POLYGON_TOKEN = 1795 ) 	
       integer*4   FGL_BITMAP_TOKEN
       parameter ( FGL_BITMAP_TOKEN = 1796 ) 	
       integer*4   FGL_DRAW_PIXEL_TOKEN
       parameter ( FGL_DRAW_PIXEL_TOKEN = 1797 ) 	
       integer*4   FGL_COPY_PIXEL_TOKEN
       parameter ( FGL_COPY_PIXEL_TOKEN = 1798 ) 	
       integer*4   FGL_LINE_RESET_TOKEN
       parameter ( FGL_LINE_RESET_TOKEN = 1799 ) 	

C  FogMode 
C       GL_LINEAR 
       integer*4   FGL_EXP
       parameter ( FGL_EXP = 2048 ) 	
       integer*4   FGL_EXP2
       parameter ( FGL_EXP2 = 2049 ) 	

C  FogParameter 
C       GL_FOG_COLOR 
C       GL_FOG_DENSITY 
C       GL_FOG_END 
C       GL_FOG_INDEX 
C       GL_FOG_MODE 
C       GL_FOG_START 

C  FrontFaceDirection 
       integer*4   FGL_CW
       parameter ( FGL_CW = 2304 ) 	
       integer*4   FGL_CCW
       parameter ( FGL_CCW = 2305 ) 	

C  GetConvolutionParameter 
C       GL_CONVOLUTION_BORDER_MODE_EXT 
C       GL_CONVOLUTION_FILTER_SCALE_EXT 
C       GL_CONVOLUTION_FILTER_BIAS_EXT 
C       GL_CONVOLUTION_FORMAT_EXT 
C       GL_CONVOLUTION_WIDTH_EXT 
C       GL_CONVOLUTION_HEIGHT_EXT 
C       GL_MAX_CONVOLUTION_WIDTH_EXT 
C       GL_MAX_CONVOLUTION_HEIGHT_EXT 

C  GetHistogramParameter 
C       GL_HISTOGRAM_WIDTH_EXT 
C       GL_HISTOGRAM_FORMAT_EXT 
C       GL_HISTOGRAM_RED_SIZE_EXT 
C       GL_HISTOGRAM_GREEN_SIZE_EXT 
C       GL_HISTOGRAM_BLUE_SIZE_EXT 
C       GL_HISTOGRAM_ALPHA_SIZE_EXT 
C       GL_HISTOGRAM_LUMINANCE_SIZE_EXT 
C       GL_HISTOGRAM_SINK_EXT 

C  GetMapTarget 
       integer*4   FGL_COEFF
       parameter ( FGL_COEFF = 2560 ) 	
       integer*4   FGL_ORDER
       parameter ( FGL_ORDER = 2561 ) 	
       integer*4   FGL_DOMAIN
       parameter ( FGL_DOMAIN = 2562 ) 	

C  GetMinmaxParameter 
C       GL_MINMAX_FORMAT_EXT 
C       GL_MINMAX_SINK_EXT 

C  GetPixelMap 
       integer*4   FGL_PIXEL_MAP_I_TO_I
       parameter ( FGL_PIXEL_MAP_I_TO_I = 3184 ) 	
       integer*4   FGL_PIXEL_MAP_S_TO_S
       parameter ( FGL_PIXEL_MAP_S_TO_S = 3185 ) 	
       integer*4   FGL_PIXEL_MAP_I_TO_R
       parameter ( FGL_PIXEL_MAP_I_TO_R = 3186 ) 	
       integer*4   FGL_PIXEL_MAP_I_TO_G
       parameter ( FGL_PIXEL_MAP_I_TO_G = 3187 ) 	
       integer*4   FGL_PIXEL_MAP_I_TO_B
       parameter ( FGL_PIXEL_MAP_I_TO_B = 3188 ) 	
       integer*4   FGL_PIXEL_MAP_I_TO_A
       parameter ( FGL_PIXEL_MAP_I_TO_A = 3189 ) 	
       integer*4   FGL_PIXEL_MAP_R_TO_R
       parameter ( FGL_PIXEL_MAP_R_TO_R = 3190 ) 	
       integer*4   FGL_PIXEL_MAP_G_TO_G
       parameter ( FGL_PIXEL_MAP_G_TO_G = 3191 ) 	
       integer*4   FGL_PIXEL_MAP_B_TO_B
       parameter ( FGL_PIXEL_MAP_B_TO_B = 3192 ) 	
       integer*4   FGL_PIXEL_MAP_A_TO_A
       parameter ( FGL_PIXEL_MAP_A_TO_A = 3193 ) 	

C  GetTarget 
       integer*4   FGL_CURRENT_COLOR
       parameter ( FGL_CURRENT_COLOR = 2816 ) 	
       integer*4   FGL_CURRENT_INDEX
       parameter ( FGL_CURRENT_INDEX = 2817 ) 	
       integer*4   FGL_CURRENT_NORMAL
       parameter ( FGL_CURRENT_NORMAL = 2818 ) 	
       integer*4   FGL_CURRENT_TEXTURE_COORDS
       parameter ( FGL_CURRENT_TEXTURE_COORDS = 2819 ) 	
       integer*4   FGL_CURRENT_RASTER_COLOR
       parameter ( FGL_CURRENT_RASTER_COLOR = 2820 ) 	
       integer*4   FGL_CURRENT_RASTER_INDEX
       parameter ( FGL_CURRENT_RASTER_INDEX = 2821 ) 	
       integer*4   FGL_CURRENT_RASTER_TEXTURE_COORDS
       parameter ( FGL_CURRENT_RASTER_TEXTURE_COORDS = 2822 ) 	
       integer*4   FGL_CURRENT_RASTER_POSITION
       parameter ( FGL_CURRENT_RASTER_POSITION = 2823 ) 	
       integer*4   FGL_CURRENT_RASTER_POSITION_VALID
       parameter ( FGL_CURRENT_RASTER_POSITION_VALID = 2824 ) 	
       integer*4   FGL_CURRENT_RASTER_DISTANCE
       parameter ( FGL_CURRENT_RASTER_DISTANCE = 2825 ) 	
       integer*4   FGL_POINT_SMOOTH
       parameter ( FGL_POINT_SMOOTH = 2832 ) 	
       integer*4   FGL_POINT_SIZE
       parameter ( FGL_POINT_SIZE = 2833 ) 	
       integer*4   FGL_POINT_SIZE_RANGE
       parameter ( FGL_POINT_SIZE_RANGE = 2834 ) 	
       integer*4   FGL_POINT_SIZE_GRANULARITY
       parameter ( FGL_POINT_SIZE_GRANULARITY = 2835 ) 	
       integer*4   FGL_LINE_SMOOTH
       parameter ( FGL_LINE_SMOOTH = 2848 ) 	
       integer*4   FGL_LINE_WIDTH
       parameter ( FGL_LINE_WIDTH = 2849 ) 	
       integer*4   FGL_LINE_WIDTH_RANGE
       parameter ( FGL_LINE_WIDTH_RANGE = 2850 ) 	
       integer*4   FGL_LINE_WIDTH_GRANULARITY
       parameter ( FGL_LINE_WIDTH_GRANULARITY = 2851 ) 	
       integer*4   FGL_LINE_STIPPLE
       parameter ( FGL_LINE_STIPPLE = 2852 ) 	
       integer*4   FGL_LINE_STIPPLE_PATTERN
       parameter ( FGL_LINE_STIPPLE_PATTERN = 2853 ) 	
       integer*4   FGL_LINE_STIPPLE_REPEAT
       parameter ( FGL_LINE_STIPPLE_REPEAT = 2854 ) 	
       integer*4   FGL_LIST_MODE
       parameter ( FGL_LIST_MODE = 2864 ) 	
       integer*4   FGL_MAX_LIST_NESTING
       parameter ( FGL_MAX_LIST_NESTING = 2865 ) 	
       integer*4   FGL_LIST_BASE
       parameter ( FGL_LIST_BASE = 2866 ) 	
       integer*4   FGL_LIST_INDEX
       parameter ( FGL_LIST_INDEX = 2867 ) 	
       integer*4   FGL_POLYGON_MODE
       parameter ( FGL_POLYGON_MODE = 2880 ) 	
       integer*4   FGL_POLYGON_SMOOTH
       parameter ( FGL_POLYGON_SMOOTH = 2881 ) 	
       integer*4   FGL_POLYGON_STIPPLE
       parameter ( FGL_POLYGON_STIPPLE = 2882 ) 	
       integer*4   FGL_EDGE_FLAG
       parameter ( FGL_EDGE_FLAG = 2883 ) 	
       integer*4   FGL_CULL_FACE
       parameter ( FGL_CULL_FACE = 2884 ) 	
       integer*4   FGL_CULL_FACE_MODE
       parameter ( FGL_CULL_FACE_MODE = 2885 ) 	
       integer*4   FGL_FRONT_FACE
       parameter ( FGL_FRONT_FACE = 2886 ) 	
       integer*4   FGL_LIGHTING
       parameter ( FGL_LIGHTING = 2896 ) 	
       integer*4   FGL_LIGHT_MODEL_LOCAL_VIEWER
       parameter ( FGL_LIGHT_MODEL_LOCAL_VIEWER = 2897 ) 	
       integer*4   FGL_LIGHT_MODEL_TWO_SIDE
       parameter ( FGL_LIGHT_MODEL_TWO_SIDE = 2898 ) 	
       integer*4   FGL_LIGHT_MODEL_AMBIENT
       parameter ( FGL_LIGHT_MODEL_AMBIENT = 2899 ) 	
       integer*4   FGL_SHADE_MODEL
       parameter ( FGL_SHADE_MODEL = 2900 ) 	
       integer*4   FGL_COLOR_MATERIAL_FACE
       parameter ( FGL_COLOR_MATERIAL_FACE = 2901 ) 	
       integer*4   FGL_COLOR_MATERIAL_PARAMETER
       parameter ( FGL_COLOR_MATERIAL_PARAMETER = 2902 ) 	
       integer*4   FGL_COLOR_MATERIAL
       parameter ( FGL_COLOR_MATERIAL = 2903 ) 	
       integer*4   FGL_FOG
       parameter ( FGL_FOG = 2912 ) 	
       integer*4   FGL_FOG_INDEX
       parameter ( FGL_FOG_INDEX = 2913 ) 	
       integer*4   FGL_FOG_DENSITY
       parameter ( FGL_FOG_DENSITY = 2914 ) 	
       integer*4   FGL_FOG_START
       parameter ( FGL_FOG_START = 2915 ) 	
       integer*4   FGL_FOG_END
       parameter ( FGL_FOG_END = 2916 ) 	
       integer*4   FGL_FOG_MODE
       parameter ( FGL_FOG_MODE = 2917 ) 	
       integer*4   FGL_FOG_COLOR
       parameter ( FGL_FOG_COLOR = 2918 ) 	
       integer*4   FGL_DEPTH_RANGE
       parameter ( FGL_DEPTH_RANGE = 2928 ) 	
       integer*4   FGL_DEPTH_TEST
       parameter ( FGL_DEPTH_TEST = 2929 ) 	
       integer*4   FGL_DEPTH_WRITEMASK
       parameter ( FGL_DEPTH_WRITEMASK = 2930 ) 	
       integer*4   FGL_DEPTH_CLEAR_VALUE
       parameter ( FGL_DEPTH_CLEAR_VALUE = 2931 ) 	
       integer*4   FGL_DEPTH_FUNC
       parameter ( FGL_DEPTH_FUNC = 2932 ) 	
       integer*4   FGL_ACCUM_CLEAR_VALUE
       parameter ( FGL_ACCUM_CLEAR_VALUE = 2944 ) 	
       integer*4   FGL_STENCIL_TEST
       parameter ( FGL_STENCIL_TEST = 2960 ) 	
       integer*4   FGL_STENCIL_CLEAR_VALUE
       parameter ( FGL_STENCIL_CLEAR_VALUE = 2961 ) 	
       integer*4   FGL_STENCIL_FUNC
       parameter ( FGL_STENCIL_FUNC = 2962 ) 	
       integer*4   FGL_STENCIL_VALUE_MASK
       parameter ( FGL_STENCIL_VALUE_MASK = 2963 ) 	
       integer*4   FGL_STENCIL_FAIL
       parameter ( FGL_STENCIL_FAIL = 2964 ) 	
       integer*4   FGL_STENCIL_PASS_DEPTH_FAIL
       parameter ( FGL_STENCIL_PASS_DEPTH_FAIL = 2965 ) 	
       integer*4   FGL_STENCIL_PASS_DEPTH_PASS
       parameter ( FGL_STENCIL_PASS_DEPTH_PASS = 2966 ) 	
       integer*4   FGL_STENCIL_REF
       parameter ( FGL_STENCIL_REF = 2967 ) 	
       integer*4   FGL_STENCIL_WRITEMASK
       parameter ( FGL_STENCIL_WRITEMASK = 2968 ) 	
       integer*4   FGL_MATRIX_MODE
       parameter ( FGL_MATRIX_MODE = 2976 ) 	
       integer*4   FGL_NORMALIZE
       parameter ( FGL_NORMALIZE = 2977 ) 	
       integer*4   FGL_VIEWPORT
       parameter ( FGL_VIEWPORT = 2978 ) 	
       integer*4   FGL_MODELVIEW_STACK_DEPTH
       parameter ( FGL_MODELVIEW_STACK_DEPTH = 2979 ) 	
       integer*4   FGL_PROJECTION_STACK_DEPTH
       parameter ( FGL_PROJECTION_STACK_DEPTH = 2980 ) 	
       integer*4   FGL_TEXTURE_STACK_DEPTH
       parameter ( FGL_TEXTURE_STACK_DEPTH = 2981 ) 	
       integer*4   FGL_MODELVIEW_MATRIX
       parameter ( FGL_MODELVIEW_MATRIX = 2982 ) 	
       integer*4   FGL_PROJECTION_MATRIX
       parameter ( FGL_PROJECTION_MATRIX = 2983 ) 	
       integer*4   FGL_TEXTURE_MATRIX
       parameter ( FGL_TEXTURE_MATRIX = 2984 ) 	
       integer*4   FGL_ATTRIB_STACK_DEPTH
       parameter ( FGL_ATTRIB_STACK_DEPTH = 2992 ) 	
       integer*4   FGL_ALPHA_TEST
       parameter ( FGL_ALPHA_TEST = 3008 ) 	
       integer*4   FGL_ALPHA_TEST_FUNC
       parameter ( FGL_ALPHA_TEST_FUNC = 3009 ) 	
       integer*4   FGL_ALPHA_TEST_REF
       parameter ( FGL_ALPHA_TEST_REF = 3010 ) 	
       integer*4   FGL_DITHER
       parameter ( FGL_DITHER = 3024 ) 	
       integer*4   FGL_BLEND_DST
       parameter ( FGL_BLEND_DST = 3040 ) 	
       integer*4   FGL_BLEND_SRC
       parameter ( FGL_BLEND_SRC = 3041 ) 	
       integer*4   FGL_BLEND
       parameter ( FGL_BLEND = 3042 ) 	
       integer*4   FGL_LOGIC_OP_MODE
       parameter ( FGL_LOGIC_OP_MODE = 3056 ) 	
       integer*4   FGL_LOGIC_OP
       parameter ( FGL_LOGIC_OP = 3057 ) 	
       integer*4   FGL_AUX_BUFFERS
       parameter ( FGL_AUX_BUFFERS = 3072 ) 	
       integer*4   FGL_DRAW_BUFFER
       parameter ( FGL_DRAW_BUFFER = 3073 ) 	
       integer*4   FGL_READ_BUFFER
       parameter ( FGL_READ_BUFFER = 3074 ) 	
       integer*4   FGL_SCISSOR_BOX
       parameter ( FGL_SCISSOR_BOX = 3088 ) 	
       integer*4   FGL_SCISSOR_TEST
       parameter ( FGL_SCISSOR_TEST = 3089 ) 	
       integer*4   FGL_INDEX_CLEAR_VALUE
       parameter ( FGL_INDEX_CLEAR_VALUE = 3104 ) 	
       integer*4   FGL_INDEX_WRITEMASK
       parameter ( FGL_INDEX_WRITEMASK = 3105 ) 	
       integer*4   FGL_COLOR_CLEAR_VALUE
       parameter ( FGL_COLOR_CLEAR_VALUE = 3106 ) 	
       integer*4   FGL_COLOR_WRITEMASK
       parameter ( FGL_COLOR_WRITEMASK = 3107 ) 	
       integer*4   FGL_INDEX_MODE
       parameter ( FGL_INDEX_MODE = 3120 ) 	
       integer*4   FGL_RGBA_MODE
       parameter ( FGL_RGBA_MODE = 3121 ) 	
       integer*4   FGL_DOUBLEBUFFER
       parameter ( FGL_DOUBLEBUFFER = 3122 ) 	
       integer*4   FGL_STEREO
       parameter ( FGL_STEREO = 3123 ) 	
       integer*4   FGL_RENDER_MODE
       parameter ( FGL_RENDER_MODE = 3136 ) 	
       integer*4   FGL_PERSPECTIVE_CORRECTION_HINT
       parameter ( FGL_PERSPECTIVE_CORRECTION_HINT = 3152 ) 	
       integer*4   FGL_POINT_SMOOTH_HINT
       parameter ( FGL_POINT_SMOOTH_HINT = 3153 ) 	
       integer*4   FGL_LINE_SMOOTH_HINT
       parameter ( FGL_LINE_SMOOTH_HINT = 3154 ) 	
       integer*4   FGL_POLYGON_SMOOTH_HINT
       parameter ( FGL_POLYGON_SMOOTH_HINT = 3155 ) 	
       integer*4   FGL_FOG_HINT
       parameter ( FGL_FOG_HINT = 3156 ) 	
       integer*4   FGL_TEXTURE_GEN_S
       parameter ( FGL_TEXTURE_GEN_S = 3168 ) 	
       integer*4   FGL_TEXTURE_GEN_T
       parameter ( FGL_TEXTURE_GEN_T = 3169 ) 	
       integer*4   FGL_TEXTURE_GEN_R
       parameter ( FGL_TEXTURE_GEN_R = 3170 ) 	
       integer*4   FGL_TEXTURE_GEN_Q
       parameter ( FGL_TEXTURE_GEN_Q = 3171 ) 	
       integer*4   FGL_PIXEL_MAP_I_TO_I_SIZE
       parameter ( FGL_PIXEL_MAP_I_TO_I_SIZE = 3248 ) 	
       integer*4   FGL_PIXEL_MAP_S_TO_S_SIZE
       parameter ( FGL_PIXEL_MAP_S_TO_S_SIZE = 3249 ) 	
       integer*4   FGL_PIXEL_MAP_I_TO_R_SIZE
       parameter ( FGL_PIXEL_MAP_I_TO_R_SIZE = 3250 ) 	
       integer*4   FGL_PIXEL_MAP_I_TO_G_SIZE
       parameter ( FGL_PIXEL_MAP_I_TO_G_SIZE = 3251 ) 	
       integer*4   FGL_PIXEL_MAP_I_TO_B_SIZE
       parameter ( FGL_PIXEL_MAP_I_TO_B_SIZE = 3252 ) 	
       integer*4   FGL_PIXEL_MAP_I_TO_A_SIZE
       parameter ( FGL_PIXEL_MAP_I_TO_A_SIZE = 3253 ) 	
       integer*4   FGL_PIXEL_MAP_R_TO_R_SIZE
       parameter ( FGL_PIXEL_MAP_R_TO_R_SIZE = 3254 ) 	
       integer*4   FGL_PIXEL_MAP_G_TO_G_SIZE
       parameter ( FGL_PIXEL_MAP_G_TO_G_SIZE = 3255 ) 	
       integer*4   FGL_PIXEL_MAP_B_TO_B_SIZE
       parameter ( FGL_PIXEL_MAP_B_TO_B_SIZE = 3256 ) 	
       integer*4   FGL_PIXEL_MAP_A_TO_A_SIZE
       parameter ( FGL_PIXEL_MAP_A_TO_A_SIZE = 3257 ) 	
       integer*4   FGL_UNPACK_SWAP_BYTES
       parameter ( FGL_UNPACK_SWAP_BYTES = 3312 ) 	
       integer*4   FGL_UNPACK_LSB_FIRST
       parameter ( FGL_UNPACK_LSB_FIRST = 3313 ) 	
       integer*4   FGL_UNPACK_ROW_LENGTH
       parameter ( FGL_UNPACK_ROW_LENGTH = 3314 ) 	
       integer*4   FGL_UNPACK_SKIP_ROWS
       parameter ( FGL_UNPACK_SKIP_ROWS = 3315 ) 	
       integer*4   FGL_UNPACK_SKIP_PIXELS
       parameter ( FGL_UNPACK_SKIP_PIXELS = 3316 ) 	
       integer*4   FGL_UNPACK_ALIGNMENT
       parameter ( FGL_UNPACK_ALIGNMENT = 3317 ) 	
       integer*4   FGL_PACK_SWAP_BYTES
       parameter ( FGL_PACK_SWAP_BYTES = 3328 ) 	
       integer*4   FGL_PACK_LSB_FIRST
       parameter ( FGL_PACK_LSB_FIRST = 3329 ) 	
       integer*4   FGL_PACK_ROW_LENGTH
       parameter ( FGL_PACK_ROW_LENGTH = 3330 ) 	
       integer*4   FGL_PACK_SKIP_ROWS
       parameter ( FGL_PACK_SKIP_ROWS = 3331 ) 	
       integer*4   FGL_PACK_SKIP_PIXELS
       parameter ( FGL_PACK_SKIP_PIXELS = 3332 ) 	
       integer*4   FGL_PACK_ALIGNMENT
       parameter ( FGL_PACK_ALIGNMENT = 3333 ) 	
       integer*4   FGL_MAP_COLOR
       parameter ( FGL_MAP_COLOR = 3344 ) 	
       integer*4   FGL_MAP_STENCIL
       parameter ( FGL_MAP_STENCIL = 3345 ) 	
       integer*4   FGL_INDEX_SHIFT
       parameter ( FGL_INDEX_SHIFT = 3346 ) 	
       integer*4   FGL_INDEX_OFFSET
       parameter ( FGL_INDEX_OFFSET = 3347 ) 	
       integer*4   FGL_RED_SCALE
       parameter ( FGL_RED_SCALE = 3348 ) 	
       integer*4   FGL_RED_BIAS
       parameter ( FGL_RED_BIAS = 3349 ) 	
       integer*4   FGL_ZOOM_X
       parameter ( FGL_ZOOM_X = 3350 ) 	
       integer*4   FGL_ZOOM_Y
       parameter ( FGL_ZOOM_Y = 3351 ) 	
       integer*4   FGL_GREEN_SCALE
       parameter ( FGL_GREEN_SCALE = 3352 ) 	
       integer*4   FGL_GREEN_BIAS
       parameter ( FGL_GREEN_BIAS = 3353 ) 	
       integer*4   FGL_BLUE_SCALE
       parameter ( FGL_BLUE_SCALE = 3354 ) 	
       integer*4   FGL_BLUE_BIAS
       parameter ( FGL_BLUE_BIAS = 3355 ) 	
       integer*4   FGL_ALPHA_SCALE
       parameter ( FGL_ALPHA_SCALE = 3356 ) 	
       integer*4   FGL_ALPHA_BIAS
       parameter ( FGL_ALPHA_BIAS = 3357 ) 	
       integer*4   FGL_DEPTH_SCALE
       parameter ( FGL_DEPTH_SCALE = 3358 ) 	
       integer*4   FGL_DEPTH_BIAS
       parameter ( FGL_DEPTH_BIAS = 3359 ) 	
       integer*4   FGL_MAX_EVAL_ORDER
       parameter ( FGL_MAX_EVAL_ORDER = 3376 ) 	
       integer*4   FGL_MAX_LIGHTS
       parameter ( FGL_MAX_LIGHTS = 3377 ) 	
       integer*4   FGL_MAX_CLIP_PLANES
       parameter ( FGL_MAX_CLIP_PLANES = 3378 ) 	
       integer*4   FGL_MAX_TEXTURE_SIZE
       parameter ( FGL_MAX_TEXTURE_SIZE = 3379 ) 	
       integer*4   FGL_MAX_PIXEL_MAP_TABLE
       parameter ( FGL_MAX_PIXEL_MAP_TABLE = 3380 ) 	
       integer*4   FGL_MAX_ATTRIB_STACK_DEPTH
       parameter ( FGL_MAX_ATTRIB_STACK_DEPTH = 3381 ) 	
       integer*4   FGL_MAX_MODELVIEW_STACK_DEPTH
       parameter ( FGL_MAX_MODELVIEW_STACK_DEPTH = 3382 ) 	
       integer*4   FGL_MAX_NAME_STACK_DEPTH
       parameter ( FGL_MAX_NAME_STACK_DEPTH = 3383 ) 	
       integer*4   FGL_MAX_PROJECTION_STACK_DEPTH
       parameter ( FGL_MAX_PROJECTION_STACK_DEPTH = 3384 ) 	
       integer*4   FGL_MAX_TEXTURE_STACK_DEPTH
       parameter ( FGL_MAX_TEXTURE_STACK_DEPTH = 3385 ) 	
       integer*4   FGL_MAX_VIEWPORT_DIMS
       parameter ( FGL_MAX_VIEWPORT_DIMS = 3386 ) 	
       integer*4   FGL_SUBPIXEL_BITS
       parameter ( FGL_SUBPIXEL_BITS = 3408 ) 	
       integer*4   FGL_INDEX_BITS
       parameter ( FGL_INDEX_BITS = 3409 ) 	
       integer*4   FGL_RED_BITS
       parameter ( FGL_RED_BITS = 3410 ) 	
       integer*4   FGL_GREEN_BITS
       parameter ( FGL_GREEN_BITS = 3411 ) 	
       integer*4   FGL_BLUE_BITS
       parameter ( FGL_BLUE_BITS = 3412 ) 	
       integer*4   FGL_ALPHA_BITS
       parameter ( FGL_ALPHA_BITS = 3413 ) 	
       integer*4   FGL_DEPTH_BITS
       parameter ( FGL_DEPTH_BITS = 3414 ) 	
       integer*4   FGL_STENCIL_BITS
       parameter ( FGL_STENCIL_BITS = 3415 ) 	
       integer*4   FGL_ACCUM_RED_BITS
       parameter ( FGL_ACCUM_RED_BITS = 3416 ) 	
       integer*4   FGL_ACCUM_GREEN_BITS
       parameter ( FGL_ACCUM_GREEN_BITS = 3417 ) 	
       integer*4   FGL_ACCUM_BLUE_BITS
       parameter ( FGL_ACCUM_BLUE_BITS = 3418 ) 	
       integer*4   FGL_ACCUM_ALPHA_BITS
       parameter ( FGL_ACCUM_ALPHA_BITS = 3419 ) 	
       integer*4   FGL_NAME_STACK_DEPTH
       parameter ( FGL_NAME_STACK_DEPTH = 3440 ) 	
       integer*4   FGL_AUTO_NORMAL
       parameter ( FGL_AUTO_NORMAL = 3456 ) 	
       integer*4   FGL_MAP1_COLOR_4
       parameter ( FGL_MAP1_COLOR_4 = 3472 ) 	
       integer*4   FGL_MAP1_INDEX
       parameter ( FGL_MAP1_INDEX = 3473 ) 	
       integer*4   FGL_MAP1_NORMAL
       parameter ( FGL_MAP1_NORMAL = 3474 ) 	
       integer*4   FGL_MAP1_TEXTURE_COORD_1
       parameter ( FGL_MAP1_TEXTURE_COORD_1 = 3475 ) 	
       integer*4   FGL_MAP1_TEXTURE_COORD_2
       parameter ( FGL_MAP1_TEXTURE_COORD_2 = 3476 ) 	
       integer*4   FGL_MAP1_TEXTURE_COORD_3
       parameter ( FGL_MAP1_TEXTURE_COORD_3 = 3477 ) 	
       integer*4   FGL_MAP1_TEXTURE_COORD_4
       parameter ( FGL_MAP1_TEXTURE_COORD_4 = 3478 ) 	
       integer*4   FGL_MAP1_VERTEX_3
       parameter ( FGL_MAP1_VERTEX_3 = 3479 ) 	
       integer*4   FGL_MAP1_VERTEX_4
       parameter ( FGL_MAP1_VERTEX_4 = 3480 ) 	
       integer*4   FGL_MAP2_COLOR_4
       parameter ( FGL_MAP2_COLOR_4 = 3504 ) 	
       integer*4   FGL_MAP2_INDEX
       parameter ( FGL_MAP2_INDEX = 3505 ) 	
       integer*4   FGL_MAP2_NORMAL
       parameter ( FGL_MAP2_NORMAL = 3506 ) 	
       integer*4   FGL_MAP2_TEXTURE_COORD_1
       parameter ( FGL_MAP2_TEXTURE_COORD_1 = 3507 ) 	
       integer*4   FGL_MAP2_TEXTURE_COORD_2
       parameter ( FGL_MAP2_TEXTURE_COORD_2 = 3508 ) 	
       integer*4   FGL_MAP2_TEXTURE_COORD_3
       parameter ( FGL_MAP2_TEXTURE_COORD_3 = 3509 ) 	
       integer*4   FGL_MAP2_TEXTURE_COORD_4
       parameter ( FGL_MAP2_TEXTURE_COORD_4 = 3510 ) 	
       integer*4   FGL_MAP2_VERTEX_3
       parameter ( FGL_MAP2_VERTEX_3 = 3511 ) 	
       integer*4   FGL_MAP2_VERTEX_4
       parameter ( FGL_MAP2_VERTEX_4 = 3512 ) 	
       integer*4   FGL_MAP1_GRID_DOMAIN
       parameter ( FGL_MAP1_GRID_DOMAIN = 3536 ) 	
       integer*4   FGL_MAP1_GRID_SEGMENTS
       parameter ( FGL_MAP1_GRID_SEGMENTS = 3537 ) 	
       integer*4   FGL_MAP2_GRID_DOMAIN
       parameter ( FGL_MAP2_GRID_DOMAIN = 3538 ) 	
       integer*4   FGL_MAP2_GRID_SEGMENTS
       parameter ( FGL_MAP2_GRID_SEGMENTS = 3539 ) 	
       integer*4   FGL_TEXTURE_1D
       parameter ( FGL_TEXTURE_1D = 3552 ) 	
       integer*4   FGL_TEXTURE_2D
       parameter ( FGL_TEXTURE_2D = 3553 ) 	
C       GL_BLEND_COLOR_EXT 
C       GL_BLEND_EQUATION_EXT 
C       GL_CONVOLUTION_1D_EXT 
C       GL_CONVOLUTION_2D_EXT 
C       GL_SEPARABLE_2D_EXT 
C       GL_POST_CONVOLUTION_RED_SCALE_EXT 
C       GL_POST_CONVOLUTION_GREEN_SCALE_EXT 
C       GL_POST_CONVOLUTION_BLUE_SCALE_EXT 
C       GL_POST_CONVOLUTION_ALPHA_SCALE_EXT 
C       GL_POST_CONVOLUTION_RED_BIAS_EXT 
C       GL_POST_CONVOLUTION_GREEN_BIAS_EXT 
C       GL_POST_CONVOLUTION_BLUE_BIAS_EXT 
C       GL_POST_CONVOLUTION_ALPHA_BIAS_EXT 
C       GL_HISTOGRAM_EXT 
C       GL_MINMAX_EXT 
C       GL_POLYGON_OFFSET_EXT 
C       GL_POLYGON_OFFSET_FACTOR_EXT 
C       GL_POLYGON_OFFSET_BIAS_EXT 
C       GL_PACK_SKIP_IMAGES_EXT 
C       GL_PACK_IMAGE_HEIGHT_EXT 
C       GL_UNPACK_SKIP_IMAGES_EXT 
C       GL_UNPACK_IMAGE_HEIGHT_EXT 
C       GL_TEXTURE_3D_EXT 
C       GL_MAX_3D_TEXTURE_SIZE_EXT 
C       GL_DETAIL_TEXTURE_2D_BINDING_SGIS 
C       GL_MULTISAMPLE_SGIS 
C       GL_SAMPLE_ALPHA_TO_MASK_SGIS 
C       GL_SAMPLE_ALPHA_TO_ONE_SGIS 
C       GL_SAMPLE_MASK_SGIS 
C       GL_SAMPLE_BUFFERS_SGIS 
C       GL_SAMPLES_SGIS 
C       GL_SAMPLE_MASK_VALUE_SGIS 
C       GL_SAMPLE_MASK_INVERT_SGIS 
C       GL_SAMPLE_PATTERN_SGIS 

C  GetTextureParameter 
C       GL_TEXTURE_MAG_FILTER 
C       GL_TEXTURE_MIN_FILTER 
C       GL_TEXTURE_WRAP_S 
C       GL_TEXTURE_WRAP_T 
       integer*4   FGL_TEXTURE_WIDTH
       parameter ( FGL_TEXTURE_WIDTH = 4096 ) 	
       integer*4   FGL_TEXTURE_HEIGHT
       parameter ( FGL_TEXTURE_HEIGHT = 4097 ) 	
       integer*4   FGL_TEXTURE_COMPONENTS
       parameter ( FGL_TEXTURE_COMPONENTS = 4099 ) 	
       integer*4   FGL_TEXTURE_BORDER_COLOR
       parameter ( FGL_TEXTURE_BORDER_COLOR = 4100 ) 	
       integer*4   FGL_TEXTURE_BORDER
       parameter ( FGL_TEXTURE_BORDER = 4101 ) 	
C       GL_TEXTURE_RED_SIZE_EXT 
C       GL_TEXTURE_GREEN_SIZE_EXT 
C       GL_TEXTURE_BLUE_SIZE_EXT 
C       GL_TEXTURE_ALPHA_SIZE_EXT 
C       GL_TEXTURE_LUMINANCE_SIZE_EXT 
C       GL_TEXTURE_INTENSITY_SIZE_EXT 
C       GL_TEXTURE_DEPTH_EXT 
C       GL_TEXTURE_WRAP_R_EXT 
C       GL_DETAIL_TEXTURE_LEVEL_SGIS 
C       GL_DETAIL_TEXTURE_MODE_SGIS 
C       GL_DETAIL_TEXTURE_FUNC_POINTS_SGIS 
C       GL_SHARPEN_TEXTURE_FUNC_POINTS_SGIS 

C  HintMode 
       integer*4   FGL_DONT_CARE
       parameter ( FGL_DONT_CARE = 4352 ) 	
       integer*4   FGL_FASTEST
       parameter ( FGL_FASTEST = 4353 ) 	
       integer*4   FGL_NICEST
       parameter ( FGL_NICEST = 4354 ) 	

C  HintTarget 
C       GL_PERSPECTIVE_CORRECTION_HINT 
C       GL_POINT_SMOOTH_HINT 
C       GL_LINE_SMOOTH_HINT 
C       GL_POLYGON_SMOOTH_HINT 
C       GL_FOG_HINT 

C  HistogramTarget 
C       GL_HISTOGRAM_EXT 
C       GL_PROXY_HISTOGRAM_EXT 

C  LightModelParameter 
C       GL_LIGHT_MODEL_AMBIENT 
C       GL_LIGHT_MODEL_LOCAL_VIEWER 
C       GL_LIGHT_MODEL_TWO_SIDE 

C  LightParameter 
       integer*4   FGL_AMBIENT
       parameter ( FGL_AMBIENT = 4608 ) 	
       integer*4   FGL_DIFFUSE
       parameter ( FGL_DIFFUSE = 4609 ) 	
       integer*4   FGL_SPECULAR
       parameter ( FGL_SPECULAR = 4610 ) 	
       integer*4   FGL_POSITION
       parameter ( FGL_POSITION = 4611 ) 	
       integer*4   FGL_SPOT_DIRECTION
       parameter ( FGL_SPOT_DIRECTION = 4612 ) 	
       integer*4   FGL_SPOT_EXPONENT
       parameter ( FGL_SPOT_EXPONENT = 4613 ) 	
       integer*4   FGL_SPOT_CUTOFF
       parameter ( FGL_SPOT_CUTOFF = 4614 ) 	
       integer*4   FGL_CONSTANT_ATTENUATION
       parameter ( FGL_CONSTANT_ATTENUATION = 4615 ) 	
       integer*4   FGL_LINEAR_ATTENUATION
       parameter ( FGL_LINEAR_ATTENUATION = 4616 ) 	
       integer*4   FGL_QUADRATIC_ATTENUATION
       parameter ( FGL_QUADRATIC_ATTENUATION = 4617 ) 	

C  ListMode 
       integer*4   FGL_COMPILE
       parameter ( FGL_COMPILE = 4864 ) 	
       integer*4   FGL_COMPILE_AND_EXECUTE
       parameter ( FGL_COMPILE_AND_EXECUTE = 4865 ) 	

C  ListNameType 
       integer*4   FGL_BYTE
       parameter ( FGL_BYTE = 5120 ) 	
       integer*4   FGL_UNSIGNED_BYTE
       parameter ( FGL_UNSIGNED_BYTE = 5121 ) 	
       integer*4   FGL_SHORT
       parameter ( FGL_SHORT = 5122 ) 	
       integer*4   FGL_UNSIGNED_SHORT
       parameter ( FGL_UNSIGNED_SHORT = 5123 ) 	
       integer*4   FGL_INT
       parameter ( FGL_INT = 5124 ) 	
       integer*4   FGL_UNSIGNED_INT
       parameter ( FGL_UNSIGNED_INT = 5125 ) 	
       integer*4   FGL_FLOAT
       parameter ( FGL_FLOAT = 5126 ) 	
       integer*4   FGL_2_BYTES
       parameter ( FGL_2_BYTES = 5127 ) 	
       integer*4   FGL_3_BYTES
       parameter ( FGL_3_BYTES = 5128 ) 	
       integer*4   FGL_4_BYTES
       parameter ( FGL_4_BYTES = 5129 ) 	

C  LogicOp 
       integer*4   FGL_CLEAR
       parameter ( FGL_CLEAR = 5376 ) 	
       integer*4   FGL_AND
       parameter ( FGL_AND = 5377 ) 	
       integer*4   FGL_AND_REVERSE
       parameter ( FGL_AND_REVERSE = 5378 ) 	
       integer*4   FGL_COPY
       parameter ( FGL_COPY = 5379 ) 	
       integer*4   FGL_AND_INVERTED
       parameter ( FGL_AND_INVERTED = 5380 ) 	
       integer*4   FGL_NOOP
       parameter ( FGL_NOOP = 5381 ) 	
       integer*4   FGL_XOR
       parameter ( FGL_XOR = 5382 ) 	
       integer*4   FGL_OR
       parameter ( FGL_OR = 5383 ) 	
       integer*4   FGL_NOR
       parameter ( FGL_NOR = 5384 ) 	
       integer*4   FGL_EQUIV
       parameter ( FGL_EQUIV = 5385 ) 	
       integer*4   FGL_INVERT
       parameter ( FGL_INVERT = 5386 ) 	
       integer*4   FGL_OR_REVERSE
       parameter ( FGL_OR_REVERSE = 5387 ) 	
       integer*4   FGL_COPY_INVERTED
       parameter ( FGL_COPY_INVERTED = 5388 ) 	
       integer*4   FGL_OR_INVERTED
       parameter ( FGL_OR_INVERTED = 5389 ) 	
       integer*4   FGL_NAND
       parameter ( FGL_NAND = 5390 ) 	
       integer*4   FGL_SET
       parameter ( FGL_SET = 5391 ) 	

C  MapTarget 
C       GL_MAP1_COLOR_4 
C       GL_MAP1_INDEX 
C       GL_MAP1_NORMAL 
C       GL_MAP1_TEXTURE_COORD_1 
C       GL_MAP1_TEXTURE_COORD_2 
C       GL_MAP1_TEXTURE_COORD_3 
C       GL_MAP1_TEXTURE_COORD_4 
C       GL_MAP1_VERTEX_3 
C       GL_MAP1_VERTEX_4 
C       GL_MAP2_COLOR_4 
C       GL_MAP2_INDEX 
C       GL_MAP2_NORMAL 
C       GL_MAP2_TEXTURE_COORD_1 
C       GL_MAP2_TEXTURE_COORD_2 
C       GL_MAP2_TEXTURE_COORD_3 
C       GL_MAP2_TEXTURE_COORD_4 
C       GL_MAP2_VERTEX_3 
C       GL_MAP2_VERTEX_4 

C  MaterialFace 
C       GL_FRONT 
C       GL_BACK 
C       GL_FRONT_AND_BACK 

C  MaterialParameter 
       integer*4   FGL_EMISSION
       parameter ( FGL_EMISSION = 5632 ) 	
       integer*4   FGL_SHININESS
       parameter ( FGL_SHININESS = 5633 ) 	
       integer*4   FGL_AMBIENT_AND_DIFFUSE
       parameter ( FGL_AMBIENT_AND_DIFFUSE = 5634 ) 	
       integer*4   FGL_COLOR_INDEXES
       parameter ( FGL_COLOR_INDEXES = 5635 ) 	
C       GL_AMBIENT 
C       GL_DIFFUSE 
C       GL_SPECULAR 

C  MatrixMode 
       integer*4   FGL_MODELVIEW
       parameter ( FGL_MODELVIEW = 5888 ) 	
       integer*4   FGL_PROJECTION
       parameter ( FGL_PROJECTION = 5889 ) 	
       integer*4   FGL_TEXTURE
       parameter ( FGL_TEXTURE = 5890 ) 	

C  MeshMode1 
C       GL_POINT 
C       GL_LINE 

C  MeshMode2 
C       GL_POINT 
C       GL_LINE 
C       GL_FILL 

C  MinmaxTarget 
C       GL_MINMAX_EXT 

C  PixelCopyType 
       integer*4   FGL_COLOR
       parameter ( FGL_COLOR = 6144 ) 	
       integer*4   FGL_DEPTH
       parameter ( FGL_DEPTH = 6145 ) 	
       integer*4   FGL_STENCIL
       parameter ( FGL_STENCIL = 6146 ) 	

C  PixelFormat 
       integer*4   FGL_COLOR_INDEX
       parameter ( FGL_COLOR_INDEX = 6400 ) 	
       integer*4   FGL_STENCIL_INDEX
       parameter ( FGL_STENCIL_INDEX = 6401 ) 	
       integer*4   FGL_DEPTH_COMPONENT
       parameter ( FGL_DEPTH_COMPONENT = 6402 ) 	
       integer*4   FGL_RED
       parameter ( FGL_RED = 6403 ) 	
       integer*4   FGL_GREEN
       parameter ( FGL_GREEN = 6404 ) 	
       integer*4   FGL_BLUE
       parameter ( FGL_BLUE = 6405 ) 	
       integer*4   FGL_ALPHA
       parameter ( FGL_ALPHA = 6406 ) 	
       integer*4   FGL_RGB
       parameter ( FGL_RGB = 6407 ) 	
       integer*4   FGL_RGBA
       parameter ( FGL_RGBA = 6408 ) 	
       integer*4   FGL_LUMINANCE
       parameter ( FGL_LUMINANCE = 6409 ) 	
       integer*4   FGL_LUMINANCE_ALPHA
       parameter ( FGL_LUMINANCE_ALPHA = 6410 ) 	
C       GL_ABGR_EXT 

C  PixelInternalFormat 
C       GL_ALPHA4_EXT 
C       GL_ALPHA8_EXT 
C       GL_ALPHA12_EXT 
C       GL_ALPHA16_EXT 
C       GL_LUMINANCE4_EXT 
C       GL_LUMINANCE8_EXT 
C       GL_LUMINANCE12_EXT 
C       GL_LUMINANCE16_EXT 
C       GL_LUMINANCE4_ALPHA4_EXT 
C       GL_LUMINANCE6_ALPHA2_EXT 
C       GL_LUMINANCE8_ALPHA8_EXT 
C       GL_LUMINANCE12_ALPHA4_EXT 
C       GL_LUMINANCE12_ALPHA12_EXT 
C       GL_LUMINANCE16_ALPHA16_EXT 
C       GL_INTENSITY_EXT 
C       GL_INTENSITY4_EXT 
C       GL_INTENSITY8_EXT 
C       GL_INTENSITY12_EXT 
C       GL_INTENSITY16_EXT 
C       GL_RGB2_EXT 
C       GL_RGB4_EXT 
C       GL_RGB5_EXT 
C       GL_RGB8_EXT 
C       GL_RGB10_EXT 
C       GL_RGB12_EXT 
C       GL_RGB16_EXT 
C       GL_RGBA2_EXT 
C       GL_RGBA4_EXT 
C       GL_RGB5_A1_EXT 
C       GL_RGBA8_EXT 
C       GL_RGB10_A2_EXT 
C       GL_RGBA12_EXT 
C       GL_RGBA16_EXT 

C  PixelMap 
C       GL_PIXEL_MAP_I_TO_I 
C       GL_PIXEL_MAP_S_TO_S 
C       GL_PIXEL_MAP_I_TO_R 
C       GL_PIXEL_MAP_I_TO_G 
C       GL_PIXEL_MAP_I_TO_B 
C       GL_PIXEL_MAP_I_TO_A 
C       GL_PIXEL_MAP_R_TO_R 
C       GL_PIXEL_MAP_G_TO_G 
C       GL_PIXEL_MAP_B_TO_B 
C       GL_PIXEL_MAP_A_TO_A 

C  PixelStore 
C       GL_UNPACK_SWAP_BYTES 
C       GL_UNPACK_LSB_FIRST 
C       GL_UNPACK_ROW_LENGTH 
C       GL_UNPACK_SKIP_ROWS 
C       GL_UNPACK_SKIP_PIXELS 
C       GL_UNPACK_ALIGNMENT 
C       GL_PACK_SWAP_BYTES 
C       GL_PACK_LSB_FIRST 
C       GL_PACK_ROW_LENGTH 
C       GL_PACK_SKIP_ROWS 
C       GL_PACK_SKIP_PIXELS 
C       GL_PACK_ALIGNMENT 
C       GL_PACK_SKIP_IMAGES_EXT 
C       GL_PACK_IMAGE_HEIGHT_EXT 
C       GL_UNPACK_SKIP_IMAGES_EXT 
C       GL_UNPACK_IMAGE_HEIGHT_EXT 

C  PixelTransfer 
C       GL_MAP_COLOR 
C       GL_MAP_STENCIL 
C       GL_INDEX_SHIFT 
C       GL_INDEX_OFFSET 
C       GL_RED_SCALE 
C       GL_RED_BIAS 
C       GL_GREEN_SCALE 
C       GL_GREEN_BIAS 
C       GL_BLUE_SCALE 
C       GL_BLUE_BIAS 
C       GL_ALPHA_SCALE 
C       GL_ALPHA_BIAS 
C       GL_DEPTH_SCALE 
C       GL_DEPTH_BIAS 
C       GL_POST_CONVOLUTION_RED_SCALE_EXT 
C       GL_POST_CONVOLUTION_GREEN_SCALE_EXT 
C       GL_POST_CONVOLUTION_BLUE_SCALE_EXT 
C       GL_POST_CONVOLUTION_ALPHA_SCALE_EXT 
C       GL_POST_CONVOLUTION_RED_BIAS_EXT 
C       GL_POST_CONVOLUTION_GREEN_BIAS_EXT 
C       GL_POST_CONVOLUTION_BLUE_BIAS_EXT 
C       GL_POST_CONVOLUTION_ALPHA_BIAS_EXT 

C  PixelType 
       integer*4   FGL_BITMAP
       parameter ( FGL_BITMAP = 6656 ) 	
C       GL_BYTE 
C       GL_UNSIGNED_BYTE 
C       GL_SHORT 
C       GL_UNSIGNED_SHORT 
C       GL_INT 
C       GL_UNSIGNED_INT 
C       GL_FLOAT 

C  PolygonMode 
       integer*4   FGL_POINT
       parameter ( FGL_POINT = 6912 ) 	
       integer*4   FGL_LINE
       parameter ( FGL_LINE = 6913 ) 	
       integer*4   FGL_FILL
       parameter ( FGL_FILL = 6914 ) 	

C  ReadBufferMode 
C       GL_FRONT_LEFT 
C       GL_FRONT_RIGHT 
C       GL_BACK_LEFT 
C       GL_BACK_RIGHT 
C       GL_FRONT 
C       GL_BACK 
C       GL_LEFT 
C       GL_RIGHT 
C       GL_AUX0 
C       GL_AUX1 
C       GL_AUX2 
C       GL_AUX3 

C  RenderingMode 
       integer*4   FGL_RENDER
       parameter ( FGL_RENDER = 7168 ) 	
       integer*4   FGL_FEEDBACK
       parameter ( FGL_FEEDBACK = 7169 ) 	
       integer*4   FGL_SELECT
       parameter ( FGL_SELECT = 7170 ) 	

C  SamplePattern 
C       GL_1PASS_SGIS 
C       GL_2PASS_0_SGIS 
C       GL_2PASS_1_SGIS 
C       GL_4PASS_0_SGIS 
C       GL_4PASS_1_SGIS 
C       GL_4PASS_2_SGIS 
C       GL_4PASS_3_SGIS 

C  SeparableTarget 
C       GL_SEPARABLE_2D_EXT 

C  ShadingModel 
       integer*4   FGL_FLAT
       parameter ( FGL_FLAT = 7424 ) 	
       integer*4   FGL_SMOOTH
       parameter ( FGL_SMOOTH = 7425 ) 	

C  StencilFunction 
C       GL_NEVER 
C       GL_LESS 
C       GL_EQUAL 
C       GL_LEQUAL 
C       GL_GREATER 
C       GL_NOTEQUAL 
C       GL_GEQUAL 
C       GL_ALWAYS 

C  StencilOp 
C       GL_ZERO 
       integer*4   FGL_KEEP
       parameter ( FGL_KEEP = 7680 ) 	
       integer*4   FGL_REPLACE
       parameter ( FGL_REPLACE = 7681 ) 	
       integer*4   FGL_INCR
       parameter ( FGL_INCR = 7682 ) 	
       integer*4   FGL_DECR
       parameter ( FGL_DECR = 7683 ) 	
C       GL_INVERT 

C  StringName 
       integer*4   FGL_VENDOR
       parameter ( FGL_VENDOR = 7936 ) 	
       integer*4   FGL_RENDERER
       parameter ( FGL_RENDERER = 7937 ) 	
       integer*4   FGL_VERSION
       parameter ( FGL_VERSION = 7938 ) 	
       integer*4   FGL_EXTENSIONS
       parameter ( FGL_EXTENSIONS = 7939 ) 	

C  TextureCoordName 
       integer*4   FGL_S
       parameter ( FGL_S = 8192 ) 	
       integer*4   FGL_T
       parameter ( FGL_T = 8193 ) 	
       integer*4   FGL_R
       parameter ( FGL_R = 8194 ) 	
       integer*4   FGL_Q
       parameter ( FGL_Q = 8195 ) 	

C  TextureEnvMode 
       integer*4   FGL_MODULATE
       parameter ( FGL_MODULATE = 8448 ) 	
       integer*4   FGL_DECAL
       parameter ( FGL_DECAL = 8449 ) 	
C       GL_BLEND 
C       GL_REPLACE_EXT 

C  TextureEnvParameter 
       integer*4   FGL_TEXTURE_ENV_MODE
       parameter ( FGL_TEXTURE_ENV_MODE = 8704 ) 	
       integer*4   FGL_TEXTURE_ENV_COLOR
       parameter ( FGL_TEXTURE_ENV_COLOR = 8705 ) 	

C  TextureEnvTarget 
       integer*4   FGL_TEXTURE_ENV
       parameter ( FGL_TEXTURE_ENV = 8960 ) 	

C  TextureGenMode 
       integer*4   FGL_EYE_LINEAR
       parameter ( FGL_EYE_LINEAR = 9216 ) 	
       integer*4   FGL_OBJECT_LINEAR
       parameter ( FGL_OBJECT_LINEAR = 9217 ) 	
       integer*4   FGL_SPHERE_MAP
       parameter ( FGL_SPHERE_MAP = 9218 ) 	

C  TextureGenParameter 
       integer*4   FGL_TEXTURE_GEN_MODE
       parameter ( FGL_TEXTURE_GEN_MODE = 9472 ) 	
       integer*4   FGL_OBJECT_PLANE
       parameter ( FGL_OBJECT_PLANE = 9473 ) 	
       integer*4   FGL_EYE_PLANE
       parameter ( FGL_EYE_PLANE = 9474 ) 	

C  TextureMagFilter 
       integer*4   FGL_NEAREST
       parameter ( FGL_NEAREST = 9728 ) 	
       integer*4   FGL_LINEAR
       parameter ( FGL_LINEAR = 9729 ) 	
C       GL_LINEAR_DETAIL_SGIS 
C       GL_LINEAR_DETAIL_ALPHA_SGIS 
C       GL_LINEAR_DETAIL_COLOR_SGIS 
C       GL_LINEAR_SHARPEN_SGIS 
C       GL_LINEAR_SHARPEN_ALPHA_SGIS 
C       GL_LINEAR_SHARPEN_COLOR_SGIS 

C  TextureMinFilter 
C       GL_NEAREST 
C       GL_LINEAR 
       integer*4   FGL_NEAREST_MIPMAP_NEAREST
       parameter ( FGL_NEAREST_MIPMAP_NEAREST = 9984 ) 	
       integer*4   FGL_LINEAR_MIPMAP_NEAREST
       parameter ( FGL_LINEAR_MIPMAP_NEAREST = 9985 ) 	
       integer*4   FGL_NEAREST_MIPMAP_LINEAR
       parameter ( FGL_NEAREST_MIPMAP_LINEAR = 9986 ) 	
       integer*4   FGL_LINEAR_MIPMAP_LINEAR
       parameter ( FGL_LINEAR_MIPMAP_LINEAR = 9987 ) 	

C  TextureParameterName 
       integer*4   FGL_TEXTURE_MAG_FILTER
       parameter ( FGL_TEXTURE_MAG_FILTER = 10240 ) 	
       integer*4   FGL_TEXTURE_MIN_FILTER
       parameter ( FGL_TEXTURE_MIN_FILTER = 10241 ) 	
       integer*4   FGL_TEXTURE_WRAP_S
       parameter ( FGL_TEXTURE_WRAP_S = 10242 ) 	
       integer*4   FGL_TEXTURE_WRAP_T
       parameter ( FGL_TEXTURE_WRAP_T = 10243 ) 	
C       GL_TEXTURE_BORDER_COLOR 
C       GL_TEXTURE_WRAP_R_EXT 
C       GL_DETAIL_TEXTURE_LEVEL_SGIS 
C       GL_DETAIL_TEXTURE_MODE_SGIS 

C  TextureTarget 
C       GL_TEXTURE_1D 
C       GL_TEXTURE_2D 
C       GL_PROXY_TEXTURE_1D_EXT 
C       GL_PROXY_TEXTURE_2D_EXT 
C       GL_TEXTURE_3D_EXT 
C       GL_PROXY_TEXTURE_3D_EXT 
C       GL_DETAIL_TEXTURE_2D_SGIS 

C  TextureWrapMode 
       integer*4   FGL_CLAMP
       parameter ( FGL_CLAMP = 10496 ) 	
       integer*4   FGL_REPEAT
       parameter ( FGL_REPEAT = 10497 ) 	

C  ClipPlaneName 
       integer*4   FGL_CLIP_PLANE0
       parameter ( FGL_CLIP_PLANE0 = 12288 ) 	
       integer*4   FGL_CLIP_PLANE1
       parameter ( FGL_CLIP_PLANE1 = 12289 ) 	
       integer*4   FGL_CLIP_PLANE2
       parameter ( FGL_CLIP_PLANE2 = 12290 ) 	
       integer*4   FGL_CLIP_PLANE3
       parameter ( FGL_CLIP_PLANE3 = 12291 ) 	
       integer*4   FGL_CLIP_PLANE4
       parameter ( FGL_CLIP_PLANE4 = 12292 ) 	
       integer*4   FGL_CLIP_PLANE5
       parameter ( FGL_CLIP_PLANE5 = 12293 ) 	

C  LightName 
       integer*4   FGL_LIGHT0
       parameter ( FGL_LIGHT0 = 16384 ) 	
       integer*4   FGL_LIGHT1
       parameter ( FGL_LIGHT1 = 16385 ) 	
       integer*4   FGL_LIGHT2
       parameter ( FGL_LIGHT2 = 16386 ) 	
       integer*4   FGL_LIGHT3
       parameter ( FGL_LIGHT3 = 16387 ) 	
       integer*4   FGL_LIGHT4
       parameter ( FGL_LIGHT4 = 16388 ) 	
       integer*4   FGL_LIGHT5
       parameter ( FGL_LIGHT5 = 16389 ) 	
       integer*4   FGL_LIGHT6
       parameter ( FGL_LIGHT6 = 16390 ) 	
       integer*4   FGL_LIGHT7
       parameter ( FGL_LIGHT7 = 16391 ) 	

C  Extensions 
       integer*4   FGL_EXT_abgr
       parameter ( FGL_EXT_abgr = 1 ) 	
       integer*4   FGL_EXT_blend_color
       parameter ( FGL_EXT_blend_color = 1 ) 	
       integer*4   FGL_EXT_blend_logic_op
       parameter ( FGL_EXT_blend_logic_op = 1 ) 	
       integer*4   FGL_EXT_blend_minmax
       parameter ( FGL_EXT_blend_minmax = 1 ) 	
       integer*4   FGL_EXT_blend_subtract
       parameter ( FGL_EXT_blend_subtract = 1 ) 	
       integer*4   FGL_EXT_convolution
       parameter ( FGL_EXT_convolution = 1 ) 	
       integer*4   FGL_EXT_histogram
       parameter ( FGL_EXT_histogram = 1 ) 	
       integer*4   FGL_EXT_polygon_offset
       parameter ( FGL_EXT_polygon_offset = 1 ) 	
       integer*4   FGL_EXT_subtexture
       parameter ( FGL_EXT_subtexture = 1 ) 	
       integer*4   FGL_EXT_texture
       parameter ( FGL_EXT_texture = 1 ) 	
       integer*4   FGL_EXT_texture3D
       parameter ( FGL_EXT_texture3D = 1 ) 	
       integer*4   FGL_SGIS_detail_texture
       parameter ( FGL_SGIS_detail_texture = 1 ) 	
       integer*4   FGL_SGIS_multisample
       parameter ( FGL_SGIS_multisample = 1 ) 	
       integer*4   FGL_SGIS_sharpen_texture
       parameter ( FGL_SGIS_sharpen_texture = 1 ) 	

C  EXT_abgr 
       integer*4   FGL_ABGR_EXT
       parameter ( FGL_ABGR_EXT = 32768 ) 	

C  EXT_blend_color 
       integer*4   FGL_CONSTANT_COLOR_EXT
       parameter ( FGL_CONSTANT_COLOR_EXT = 32769 ) 	
       integer*4   FGL_ONE_MINUS_CONSTANT_COLOR_EXT
       parameter ( FGL_ONE_MINUS_CONSTANT_COLOR_EXT = 32770 ) 	
       integer*4   FGL_CONSTANT_ALPHA_EXT
       parameter ( FGL_CONSTANT_ALPHA_EXT = 32771 ) 	
       integer*4   FGL_ONE_MINUS_CONSTANT_ALPHA_EXT
       parameter ( FGL_ONE_MINUS_CONSTANT_ALPHA_EXT = 32772 ) 	
       integer*4   FGL_BLEND_COLOR_EXT
       parameter ( FGL_BLEND_COLOR_EXT = 32773 ) 	

C  EXT_blend_minmax 
       integer*4   FGL_FUNC_ADD_EXT
       parameter ( FGL_FUNC_ADD_EXT = 32774 ) 	
       integer*4   FGL_MIN_EXT
       parameter ( FGL_MIN_EXT = 32775 ) 	
       integer*4   FGL_MAX_EXT
       parameter ( FGL_MAX_EXT = 32776 ) 	
       integer*4   FGL_BLEND_EQUATION_EXT
       parameter ( FGL_BLEND_EQUATION_EXT = 32777 ) 	

C  EXT_blend_subtract 
       integer*4   FGL_FUNC_SUBTRACT_EXT
       parameter ( FGL_FUNC_SUBTRACT_EXT = 32778 ) 	
       integer*4   FGL_FUNC_REVERSE_SUBTRACT_EXT
       parameter ( FGL_FUNC_REVERSE_SUBTRACT_EXT = 32779 ) 	

C  EXT_convolution 
       integer*4   FGL_CONVOLUTION_1D_EXT
       parameter ( FGL_CONVOLUTION_1D_EXT = 32784 ) 	
       integer*4   FGL_CONVOLUTION_2D_EXT
       parameter ( FGL_CONVOLUTION_2D_EXT = 32785 ) 	
       integer*4   FGL_SEPARABLE_2D_EXT
       parameter ( FGL_SEPARABLE_2D_EXT = 32786 ) 	
       integer*4   FGL_CONVOLUTION_BORDER_MODE_EXT
       parameter ( FGL_CONVOLUTION_BORDER_MODE_EXT = 32787 ) 	
       integer*4   FGL_CONVOLUTION_FILTER_SCALE_EXT
       parameter ( FGL_CONVOLUTION_FILTER_SCALE_EXT = 32788 ) 	
       integer*4   FGL_CONVOLUTION_FILTER_BIAS_EXT
       parameter ( FGL_CONVOLUTION_FILTER_BIAS_EXT = 32789 ) 	
       integer*4   FGL_REDUCE_EXT
       parameter ( FGL_REDUCE_EXT = 32790 ) 	
       integer*4   FGL_CONVOLUTION_FORMAT_EXT
       parameter ( FGL_CONVOLUTION_FORMAT_EXT = 32791 ) 	
       integer*4   FGL_CONVOLUTION_WIDTH_EXT
       parameter ( FGL_CONVOLUTION_WIDTH_EXT = 32792 ) 	
       integer*4   FGL_CONVOLUTION_HEIGHT_EXT
       parameter ( FGL_CONVOLUTION_HEIGHT_EXT = 32793 ) 	
       integer*4   FGL_MAX_CONVOLUTION_WIDTH_EXT
       parameter ( FGL_MAX_CONVOLUTION_WIDTH_EXT = 32794 ) 	
       integer*4   FGL_MAX_CONVOLUTION_HEIGHT_EXT
       parameter ( FGL_MAX_CONVOLUTION_HEIGHT_EXT = 32795 ) 	
       integer*4   FGL_POST_CONVOLUTION_RED_SCALE_EXT
       parameter ( FGL_POST_CONVOLUTION_RED_SCALE_EXT = 32796 ) 	
       integer*4   FGL_POST_CONVOLUTION_GREEN_SCALE_EXT
       parameter ( FGL_POST_CONVOLUTION_GREEN_SCALE_EXT = 32797 ) 	
       integer*4   FGL_POST_CONVOLUTION_BLUE_SCALE_EXT
       parameter ( FGL_POST_CONVOLUTION_BLUE_SCALE_EXT = 32798 ) 	
       integer*4   FGL_POST_CONVOLUTION_ALPHA_SCALE_EXT
       parameter ( FGL_POST_CONVOLUTION_ALPHA_SCALE_EXT = 32799 ) 	
       integer*4   FGL_POST_CONVOLUTION_RED_BIAS_EXT
       parameter ( FGL_POST_CONVOLUTION_RED_BIAS_EXT = 32800 ) 	
       integer*4   FGL_POST_CONVOLUTION_GREEN_BIAS_EXT
       parameter ( FGL_POST_CONVOLUTION_GREEN_BIAS_EXT = 32801 ) 	
       integer*4   FGL_POST_CONVOLUTION_BLUE_BIAS_EXT
       parameter ( FGL_POST_CONVOLUTION_BLUE_BIAS_EXT = 32802 ) 	
       integer*4   FGL_POST_CONVOLUTION_ALPHA_BIAS_EXT
       parameter ( FGL_POST_CONVOLUTION_ALPHA_BIAS_EXT = 32803 ) 	

C  EXT_histogram 
       integer*4   FGL_HISTOGRAM_EXT
       parameter ( FGL_HISTOGRAM_EXT = 32804 ) 	
       integer*4   FGL_PROXY_HISTOGRAM_EXT
       parameter ( FGL_PROXY_HISTOGRAM_EXT = 32805 ) 	
       integer*4   FGL_HISTOGRAM_WIDTH_EXT
       parameter ( FGL_HISTOGRAM_WIDTH_EXT = 32806 ) 	
       integer*4   FGL_HISTOGRAM_FORMAT_EXT
       parameter ( FGL_HISTOGRAM_FORMAT_EXT = 32807 ) 	
       integer*4   FGL_HISTOGRAM_RED_SIZE_EXT
       parameter ( FGL_HISTOGRAM_RED_SIZE_EXT = 32808 ) 	
       integer*4   FGL_HISTOGRAM_GREEN_SIZE_EXT
       parameter ( FGL_HISTOGRAM_GREEN_SIZE_EXT = 32809 ) 	
       integer*4   FGL_HISTOGRAM_BLUE_SIZE_EXT
       parameter ( FGL_HISTOGRAM_BLUE_SIZE_EXT = 32810 ) 	
       integer*4   FGL_HISTOGRAM_ALPHA_SIZE_EXT
       parameter ( FGL_HISTOGRAM_ALPHA_SIZE_EXT = 32811 ) 	
       integer*4   FGL_HISTOGRAM_LUMINANCE_SIZE_EXT
       parameter ( FGL_HISTOGRAM_LUMINANCE_SIZE_EXT = 32812 ) 	
       integer*4   FGL_HISTOGRAM_SINK_EXT
       parameter ( FGL_HISTOGRAM_SINK_EXT = 32813 ) 	
       integer*4   FGL_MINMAX_EXT
       parameter ( FGL_MINMAX_EXT = 32814 ) 	
       integer*4   FGL_MINMAX_FORMAT_EXT
       parameter ( FGL_MINMAX_FORMAT_EXT = 32815 ) 	
       integer*4   FGL_MINMAX_SINK_EXT
       parameter ( FGL_MINMAX_SINK_EXT = 32816 ) 	
       integer*4   FGL_TABLE_TOO_LARGE_EXT
       parameter ( FGL_TABLE_TOO_LARGE_EXT = 32817 ) 	

C  EXT_polygon_offset 
       integer*4   FGL_POLYGON_OFFSET_EXT
       parameter ( FGL_POLYGON_OFFSET_EXT = 32823 ) 	
       integer*4   FGL_POLYGON_OFFSET_FACTOR_EXT
       parameter ( FGL_POLYGON_OFFSET_FACTOR_EXT = 32824 ) 	
       integer*4   FGL_POLYGON_OFFSET_BIAS_EXT
       parameter ( FGL_POLYGON_OFFSET_BIAS_EXT = 32825 ) 	

C  EXT_texture 
       integer*4   FGL_ALPHA4_EXT
       parameter ( FGL_ALPHA4_EXT = 32827 ) 	
       integer*4   FGL_ALPHA8_EXT
       parameter ( FGL_ALPHA8_EXT = 32828 ) 	
       integer*4   FGL_ALPHA12_EXT
       parameter ( FGL_ALPHA12_EXT = 32829 ) 	
       integer*4   FGL_ALPHA16_EXT
       parameter ( FGL_ALPHA16_EXT = 32830 ) 	
       integer*4   FGL_LUMINANCE4_EXT
       parameter ( FGL_LUMINANCE4_EXT = 32831 ) 	
       integer*4   FGL_LUMINANCE8_EXT
       parameter ( FGL_LUMINANCE8_EXT = 32832 ) 	
       integer*4   FGL_LUMINANCE12_EXT
       parameter ( FGL_LUMINANCE12_EXT = 32833 ) 	
       integer*4   FGL_LUMINANCE16_EXT
       parameter ( FGL_LUMINANCE16_EXT = 32834 ) 	
       integer*4   FGL_LUMINANCE4_ALPHA4_EXT
       parameter ( FGL_LUMINANCE4_ALPHA4_EXT = 32835 ) 	
       integer*4   FGL_LUMINANCE6_ALPHA2_EXT
       parameter ( FGL_LUMINANCE6_ALPHA2_EXT = 32836 ) 	
       integer*4   FGL_LUMINANCE8_ALPHA8_EXT
       parameter ( FGL_LUMINANCE8_ALPHA8_EXT = 32837 ) 	
       integer*4   FGL_LUMINANCE12_ALPHA4_EXT
       parameter ( FGL_LUMINANCE12_ALPHA4_EXT = 32838 ) 	
       integer*4   FGL_LUMINANCE12_ALPHA12_EXT
       parameter ( FGL_LUMINANCE12_ALPHA12_EXT = 32839 ) 	
       integer*4   FGL_LUMINANCE16_ALPHA16_EXT
       parameter ( FGL_LUMINANCE16_ALPHA16_EXT = 32840 ) 	
       integer*4   FGL_INTENSITY_EXT
       parameter ( FGL_INTENSITY_EXT = 32841 ) 	
       integer*4   FGL_INTENSITY4_EXT
       parameter ( FGL_INTENSITY4_EXT = 32842 ) 	
       integer*4   FGL_INTENSITY8_EXT
       parameter ( FGL_INTENSITY8_EXT = 32843 ) 	
       integer*4   FGL_INTENSITY12_EXT
       parameter ( FGL_INTENSITY12_EXT = 32844 ) 	
       integer*4   FGL_INTENSITY16_EXT
       parameter ( FGL_INTENSITY16_EXT = 32845 ) 	
       integer*4   FGL_RGB2_EXT
       parameter ( FGL_RGB2_EXT = 32846 ) 	
       integer*4   FGL_RGB4_EXT
       parameter ( FGL_RGB4_EXT = 32847 ) 	
       integer*4   FGL_RGB5_EXT
       parameter ( FGL_RGB5_EXT = 32848 ) 	
       integer*4   FGL_RGB8_EXT
       parameter ( FGL_RGB8_EXT = 32849 ) 	
       integer*4   FGL_RGB10_EXT
       parameter ( FGL_RGB10_EXT = 32850 ) 	
       integer*4   FGL_RGB12_EXT
       parameter ( FGL_RGB12_EXT = 32851 ) 	
       integer*4   FGL_RGB16_EXT
       parameter ( FGL_RGB16_EXT = 32852 ) 	
       integer*4   FGL_RGBA2_EXT
       parameter ( FGL_RGBA2_EXT = 32853 ) 	
       integer*4   FGL_RGBA4_EXT
       parameter ( FGL_RGBA4_EXT = 32854 ) 	
       integer*4   FGL_RGB5_A1_EXT
       parameter ( FGL_RGB5_A1_EXT = 32855 ) 	
       integer*4   FGL_RGBA8_EXT
       parameter ( FGL_RGBA8_EXT = 32856 ) 	
       integer*4   FGL_RGB10_A2_EXT
       parameter ( FGL_RGB10_A2_EXT = 32857 ) 	
       integer*4   FGL_RGBA12_EXT
       parameter ( FGL_RGBA12_EXT = 32858 ) 	
       integer*4   FGL_RGBA16_EXT
       parameter ( FGL_RGBA16_EXT = 32859 ) 	
       integer*4   FGL_TEXTURE_RED_SIZE_EXT
       parameter ( FGL_TEXTURE_RED_SIZE_EXT = 32860 ) 	
       integer*4   FGL_TEXTURE_GREEN_SIZE_EXT
       parameter ( FGL_TEXTURE_GREEN_SIZE_EXT = 32861 ) 	
       integer*4   FGL_TEXTURE_BLUE_SIZE_EXT
       parameter ( FGL_TEXTURE_BLUE_SIZE_EXT = 32862 ) 	
       integer*4   FGL_TEXTURE_ALPHA_SIZE_EXT
       parameter ( FGL_TEXTURE_ALPHA_SIZE_EXT = 32863 ) 	
       integer*4   FGL_TEXTURE_LUMINANCE_SIZE_EXT
       parameter ( FGL_TEXTURE_LUMINANCE_SIZE_EXT = 32864 ) 	
       integer*4   FGL_TEXTURE_INTENSITY_SIZE_EXT
       parameter ( FGL_TEXTURE_INTENSITY_SIZE_EXT = 32865 ) 	
       integer*4   FGL_REPLACE_EXT
       parameter ( FGL_REPLACE_EXT = 32866 ) 	
       integer*4   FGL_PROXY_TEXTURE_1D_EXT
       parameter ( FGL_PROXY_TEXTURE_1D_EXT = 32867 ) 	
       integer*4   FGL_PROXY_TEXTURE_2D_EXT
       parameter ( FGL_PROXY_TEXTURE_2D_EXT = 32868 ) 	
       integer*4   FGL_TEXTURE_TOO_LARGE_EXT
       parameter ( FGL_TEXTURE_TOO_LARGE_EXT = 32869 ) 	

C  EXT_texture3D 
       integer*4   FGL_PACK_SKIP_IMAGES_EXT
       parameter ( FGL_PACK_SKIP_IMAGES_EXT = 32875 ) 	
       integer*4   FGL_PACK_IMAGE_HEIGHT_EXT
       parameter ( FGL_PACK_IMAGE_HEIGHT_EXT = 32876 ) 	
       integer*4   FGL_UNPACK_SKIP_IMAGES_EXT
       parameter ( FGL_UNPACK_SKIP_IMAGES_EXT = 32877 ) 	
       integer*4   FGL_UNPACK_IMAGE_HEIGHT_EXT
       parameter ( FGL_UNPACK_IMAGE_HEIGHT_EXT = 32878 ) 	
       integer*4   FGL_TEXTURE_3D_EXT
       parameter ( FGL_TEXTURE_3D_EXT = 32879 ) 	
       integer*4   FGL_PROXY_TEXTURE_3D_EXT
       parameter ( FGL_PROXY_TEXTURE_3D_EXT = 32880 ) 	
       integer*4   FGL_TEXTURE_DEPTH_EXT
       parameter ( FGL_TEXTURE_DEPTH_EXT = 32881 ) 	
       integer*4   FGL_TEXTURE_WRAP_R_EXT
       parameter ( FGL_TEXTURE_WRAP_R_EXT = 32882 ) 	
       integer*4   FGL_MAX_3D_TEXTURE_SIZE_EXT
       parameter ( FGL_MAX_3D_TEXTURE_SIZE_EXT = 32883 ) 	

C  SGIS_detail_texture 
       integer*4   FGL_DETAIL_TEXTURE_2D_SGIS
       parameter ( FGL_DETAIL_TEXTURE_2D_SGIS = 32917 ) 	
       integer*4   FGL_DETAIL_TEXTURE_2D_BINDING_SGIS
       parameter ( FGL_DETAIL_TEXTURE_2D_BINDING_SGIS = 32918 ) 	
       integer*4   FGL_LINEAR_DETAIL_SGIS
       parameter ( FGL_LINEAR_DETAIL_SGIS = 32919 ) 	
       integer*4   FGL_LINEAR_DETAIL_ALPHA_SGIS
       parameter ( FGL_LINEAR_DETAIL_ALPHA_SGIS = 32920 ) 	
       integer*4   FGL_LINEAR_DETAIL_COLOR_SGIS
       parameter ( FGL_LINEAR_DETAIL_COLOR_SGIS = 32921 ) 	
       integer*4   FGL_DETAIL_TEXTURE_LEVEL_SGIS
       parameter ( FGL_DETAIL_TEXTURE_LEVEL_SGIS = 32922 ) 	
       integer*4   FGL_DETAIL_TEXTURE_MODE_SGIS
       parameter ( FGL_DETAIL_TEXTURE_MODE_SGIS = 32923 ) 	
       integer*4   FGL_DETAIL_TEXTURE_FUNC_POINTS_SGIS
       parameter ( FGL_DETAIL_TEXTURE_FUNC_POINTS_SGIS = 32924 ) 	

C  SGIS_multisample 
       integer*4   FGL_MULTISAMPLE_BIT_EXT
       parameter ( FGL_MULTISAMPLE_BIT_EXT = 536870912 ) 	
       integer*4   FGL_MULTISAMPLE_SGIS
       parameter ( FGL_MULTISAMPLE_SGIS = 32925 ) 	
       integer*4   FGL_SAMPLE_ALPHA_TO_MASK_SGIS
       parameter ( FGL_SAMPLE_ALPHA_TO_MASK_SGIS = 32926 ) 	
       integer*4   FGL_SAMPLE_ALPHA_TO_ONE_SGIS
       parameter ( FGL_SAMPLE_ALPHA_TO_ONE_SGIS = 32927 ) 	
       integer*4   FGL_SAMPLE_MASK_SGIS
       parameter ( FGL_SAMPLE_MASK_SGIS = 32928 ) 	
       integer*4   FGL_1PASS_SGIS
       parameter ( FGL_1PASS_SGIS = 32929 ) 	
       integer*4   FGL_2PASS_0_SGIS
       parameter ( FGL_2PASS_0_SGIS = 32930 ) 	
       integer*4   FGL_2PASS_1_SGIS
       parameter ( FGL_2PASS_1_SGIS = 32931 ) 	
       integer*4   FGL_4PASS_0_SGIS
       parameter ( FGL_4PASS_0_SGIS = 32932 ) 	
       integer*4   FGL_4PASS_1_SGIS
       parameter ( FGL_4PASS_1_SGIS = 32933 ) 	
       integer*4   FGL_4PASS_2_SGIS
       parameter ( FGL_4PASS_2_SGIS = 32934 ) 	
       integer*4   FGL_4PASS_3_SGIS
       parameter ( FGL_4PASS_3_SGIS = 32935 ) 	
       integer*4   FGL_SAMPLE_BUFFERS_SGIS
       parameter ( FGL_SAMPLE_BUFFERS_SGIS = 32936 ) 	
       integer*4   FGL_SAMPLES_SGIS
       parameter ( FGL_SAMPLES_SGIS = 32937 ) 	
       integer*4   FGL_SAMPLE_MASK_VALUE_SGIS
       parameter ( FGL_SAMPLE_MASK_VALUE_SGIS = 32938 ) 	
       integer*4   FGL_SAMPLE_MASK_INVERT_SGIS
       parameter ( FGL_SAMPLE_MASK_INVERT_SGIS = 32939 ) 	
       integer*4   FGL_SAMPLE_PATTERN_SGIS
       parameter ( FGL_SAMPLE_PATTERN_SGIS = 32940 ) 	

C  SGIS_sharpen_texture 
       integer*4   FGL_LINEAR_SHARPEN_SGIS
       parameter ( FGL_LINEAR_SHARPEN_SGIS = 32941 ) 	
       integer*4   FGL_LINEAR_SHARPEN_ALPHA_SGIS
       parameter ( FGL_LINEAR_SHARPEN_ALPHA_SGIS = 32942 ) 	
       integer*4   FGL_LINEAR_SHARPEN_COLOR_SGIS
       parameter ( FGL_LINEAR_SHARPEN_COLOR_SGIS = 32943 ) 	
       integer*4   FGL_SHARPEN_TEXTURE_FUNC_POINTS_SGIS
       parameter ( FGL_SHARPEN_TEXTURE_FUNC_POINTS_SGIS = 32944 ) 	

C ***********************************************************


       character*128       fglGetString
       integer             fglGetError
       integer*4           fglRenderMode
       logical*1           fglAreTexturesResidentEXT
       logical*1           fglIsEnabled
       logical*1           fglIsList
       logical*1           fglIsTextureEXT
       logical*4           fglGenLists
       logical*4           fglGenTexturesEXT
