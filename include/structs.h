#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include "types.h"
#include <libelf.h>


typedef struct {
    char unk0[0x4];
    char* unk4;
    char unk8[0x4];
    Elf* unkC;
    void* unk10;
    char unk14[0x100];
    int unk114;
} sp40Struct;

typedef struct SegmentList {
    /* 0x00 */ void* next;
    /* 0x04 */ char* name;
    char unk8[0x4];
    sp40Struct* unkC;
    char unk10[0x18];
    unsigned int unk28; // flags
    char unk2C[0x10];
    void* unk3C;
} SegmentList;

//simplified
typedef struct Segment {
    /* 0x00 */ struct Segment* next;
    /* 0x04 */ char* name;
    /* 0x08 */ char unk8[0x20];
    /* 0x28 */ unsigned int unk28;
    /* 0x2C */ size_t unk2C;
    /* 0x30 */ size_t unk30;
    /* 0x34 */ size_t unk34;
    /* 0x08 */ size_t unk38;
    /* 0x3C */ size_t unk3C;
    /* 0x40 */ size_t unk40;
    /* 0x44 */ size_t unk44;
} Segment;

typedef struct sp20UnkStruct {
    struct sp20UnkStruct* unk0;
    char* unk4;
} sp20UnkStruct;

typedef struct sp24UnkStruct {
    char unk0[0x4];
    char* unk4;
    sp20UnkStruct* unk8;
    char unkC[4];
    unsigned int unk10;
    char unk14[0x14];
    unsigned int unk28;
    char unk2C[0x20];
    int unk4C;
    int unk50;
    int unk54;
    int unk58;
    int unk5C;
} sp24UnkStruct;

typedef struct sp28UnkStruct {
    struct sp28UnkStruct* unk0;
    sp24UnkStruct* unk4;
} sp28UnkStruct;

typedef struct UnkStruct {
    char unk0[0x8];
    sp28UnkStruct* unk8;
    char unkC[0x14-0xC];
    char unk14[1]; // ?
} UnkStruct;

typedef struct StringLLElt {
    /* 0 */ struct StringLLElt* next;
    /* 4 */ char* name;
} StringLinkedList;

typedef struct sp2CStruct {
    char unk0[0x8];
    StringLinkedList* unk8;
    char unkC[0x28-0xC];
    unsigned int unk28;
} sp2CStruct;

typedef struct sp30Struct {
    struct sp30Struct* next;
    sp2CStruct* unk4;
} sp30Struct;

typedef struct arg0Struct {
    char unk0[4];
    char* unk4;
    sp30Struct* unk8;
    char unkC[0x8];
    char unk14[1]; // maybe
} arg0Struct;
