#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include "../include/structs.h"

//Function: 300
int obj_map_diff(int obj) {
    int total; //Temp variable

    total = obj_base_address();
    return total - obj_map_address(obj);
}

//Function: 310
int obj_got(obj* o) {
    return o->unk128;
}


//function: 347 
int obj_extgot(obj* o) {
    return o->unk12C;
}

