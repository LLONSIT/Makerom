#include <stdio.h>
#include <stdlib.h>
#include "../include/structs.h"

//Function: 435
int obj_tstamp_not_match(obj *o, obj *arg1, int arg2) {
    return obj_liblist_tstamp(arg1, arg2) != o->unk14C;
}


//Function 460
int obj_fd(obj* o) {
    return o->unkF4;
}

//Function: 492
void warning(char *warn, int warn1, int warn2, int warn3) {
    fprintf(stderr, "Warning:");
    fprintf(stderr, warn, warn1, warn2, warn3);
}
