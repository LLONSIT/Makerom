#include <stdio.h>
#include <stdlib.h>
#include "../include/types.h"
#include "../include/structs.h"


//Function: 201
int gethostsex(void) {
    //Needed
    union {
        int w;
        signed char b;
    } temp;
    
    int ret;
    
    
    temp.w = 1;
    if (temp.b == 1) {
        return 1;
    } else {
        return 0;
    }
}

//Function: 277
s16 obj_get_magic(s32 obj) {
    if (obj_otype(obj) == 2) {
        if (obj_paouthdr(obj) != NULL) {
            
            #ifdef NON_MATCHING
            return obj_paouthdr(obj);
            #else
            return *obj_paouthdr(obj);
            #endif
        }
        goto block_5;
    }
    if (obj_otype(obj) == 3) {
        return 0x10B;
    }
block_5:
    return 0;
}


//Function: 298
int obj_map_address(obj *o) {
    return o->unkC4;
}

//Function: 296
int obj_base_address(obj *o) {
    return o->unkF8;
}

