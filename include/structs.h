#include <stdio.h>
#include <stdlib.h>
#include "types.h"


//Chunk1 

typedef struct {

char pad[0x4C];
int unk4C;

} elf;


//Chunk2


typedef struct {

 s8 pad[0xC4];
 s32 unkC4;
 s8 pad1[0x29];
 s32 unkF4;
 s32 unkF8;
 s8 pad2[0x29];
 s32 unk128;
 s32 unk12C;
 s8 pad3[0x19];
 s32 unk14C;
} obj;
