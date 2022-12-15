
#include <stdio.h>
#include <stdlib.h>
#include <elf.h>


typedef struct Path_s {
    /* 0x0 */ struct Path_s* next;
    /* 0x4 */ unsigned char* name;
    /* 0x8 */ unsigned int textSize;
    /* 0xC */ unsigned int dataSize;
    /* 0x10 */ unsigned int sdataSize;
    /* 0x14 */ unsigned int sbssSize;
    /* 0x18 */ unsigned int bssSize;
    /* 0x1C */ unsigned int textAlign;
    /* 0x20 */ unsigned int dataAlign;
    /* 0x24 */ unsigned int sdataAlign;
    /* 0x28 */ unsigned int sbssAlign;
    /* 0x2C */ unsigned int bssAlign;
    /* 0x30 */ unsigned int textStart;
    /* 0x34 */ unsigned int dataStart;
    /* 0x38 */ unsigned int sdataStart;
    /* 0x3C */ unsigned int sbssStart;
    /* 0x40 */ unsigned int bssStart;
    /* 0x44 */ unsigned int sectionsExisting;
} Path;

typedef struct Segment_s {
    /* 0x0 */ struct Segment_s* next;
    /* 0x4 */ unsigned char* name;
    /* 0x8 */ Path* pathList;
    /* 0xC */ struct Wave_s *w;
    /* 0x10 */ unsigned int address;
    /* 0x14 */ int addrFunc;
    /* 0x18 */ struct Segment_s* afterSeg1;
    /* 0x1C */ struct Segment_s* afterSeg2;
    /* 0x20 */ unsigned int align;
    /* 0x24 */ unsigned int romOffset;
    /* 0x28 */ int flags;
    /* 0x2C */ unsigned int textSize;
    /* 0x30 */ unsigned int dataSize;
    /* 0x34 */ unsigned int sdataSize;
    /* 0x38 */ unsigned int sbssSize;
    /* 0x3C */ unsigned int bssSize;
    /* 0x40 */ unsigned int totalSize;
    /* 0x44 */ unsigned int maxSize;
    /* 0x48 */ int romalign;
    /* 0x4C */ unsigned int textAlign;
    /* 0x50 */ unsigned int dataAlign;
    /* 0x54 */ unsigned int sdataAlign;
    /* 0x58 */ unsigned int sbssAlign;
    /* 0x5C */ unsigned int bssAlign;
    /* 0x60 */ unsigned int sectionsExisting;
    /* 0x64 */ unsigned int textStart;
    /* 0x68 */ unsigned int dataStart;
    /* 0x6C */ unsigned int sdataStart;
    /* 0x70 */ unsigned int sbssStart;
    /* 0x74 */ unsigned int bssStart;
} Segment;

typedef struct SegmentChain_s {
    /* 0x0 */ struct SegmentChain_s* next;
    /* 0x4 */ Segment* segment;
} SegmentChain;

typedef struct Wave_s {
    /* 0x0 */ struct Wave_s* next;
    /* 0x4 */ unsigned char* name;
    /* 0x8 */ SegmentChain* segmentChain;
    /* 0xC */ Elf* elf;
    /* 0x10 */ Elf32_Ehdr* ehdr;
    /* 0x14 */ unsigned char elspecFile[255];
    /* 0x114 */ int fd;
    /* 0x118 */ size_t searchIndex;
} Wave;

Wave* waveList;

