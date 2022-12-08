

typedef struct Segment {
    /* 0x00 */ struct Segment* next;
    /* 0x04 */ char* name;
    /* 0x08 */ struct SegmentFile* files; // linked list of files?
    /* 0x0C */ char unkC[0x4];
    /* 0x10 */ u32 unk_10;
    /* 0x14 */ u32 unk_14;
    /* 0x18 */ struct SegmentUnk* unk_18;
    /* 0x1C */ struct SegmentUnk* unk_1C;
    /* 0x20 */ u32 alignment;
    /* 0x24 */ u32 unk_24; // related to align
    /* 0x28 */ u32 unk_28; // & 1 is something to do with alignment
    /* 0x2C */ size_t text_size;
    /* 0x30 */ size_t data_rodata_size;
    /* 0x34 */ size_t sdata_size;
    /* 0x38 */ size_t sbss_size;
    /* 0x3C */ size_t bss_size;
    /* 0x40 */ u32 unk_40;
    /* 0x40 */ char unk_44[0x4];
    // s32 unk44;
    /* 0x48 */ u32 romalign;
    /* 0x4C */ u32 text_addralign;
    /* 0x50 */ u32 data_rodata_addralign;
    /* 0x54 */ u32 sdata_addralign;
    /* 0x58 */ u32 sbss_addralign;
    /* 0x5C */ u32 bss_addralign;
    /* 0x60 */ unsigned int sections; // bits indicating presence of sections
    /* 0x64 */ u32 text_offset;
    /* 0x68 */ u32 data_rodata_offset;
    /* 0x6C */ u32 sdata_offset;
    /* 0x70 */ u32 sbss_offset;
    /* 0x74 */ u32 bss_offset;
} Segment;


typedef struct SegmentFile {
    /* 0x00 */ struct SegmentFile* next;
    /* 0x04 */ char* name;
    /* 0x08 */ size_t text_size;
    /* 0x0C */ size_t data_rodata_size;
    /* 0x10 */ size_t sdata_size;
    /* 0x14 */ size_t sbss_size;
    /* 0x18 */ size_t bss_size;
    /* 0x1C */ size_t text_addralign;
    /* 0x20 */ size_t data_rodata_addralign;
    /* 0x24 */ size_t sdata_addralign;
    /* 0x28 */ size_t sbss_addralign;
    /* 0x2C */ size_t bss_addralign;
    /* 0x30 */ size_t unk_30; // text offset?
    /* 0x34 */ size_t unk_34; // data/rodata offset?
    /* 0x38 */ size_t unk_38; // sdata offset?
    /* 0x3C */ size_t unk_3C; // sbss offset?
    /* 0x40 */ size_t unk_40; // bss offset?
    /* 0x44 */ unsigned int sections; // bits indicating presence of sections, text, data/rodata, sdata, bss, sbss
} SegmentFile;


typedef struct SegmentUnk {
    /* 0x00 */ char unk_00[0x10];
    /* 0x10 */ u32 unk_10;
    /* 0x14 */ char unk_14[0x2C];
    /* 0x40 */ u32 unk_40;
} SegmentUnk;



typedef struct sp20UnkStruct {
    struct sp20UnkStruct* unk0;
    char* unk4;
} sp20UnkStruct;

typedef struct Section {
    char unk0[0x4];
    char* obj;
    sp20UnkStruct* section;
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
} Section; //maybe

//We need to clarify this structs

typedef struct sp28UnkStruct {
    struct sp28UnkStruct* unk0;
    Section* unk4;
} sp28UnkStruct;

typedef struct UnkStruct {
    char unk0[0x8];
    sp28UnkStruct* unk8;
    char unkC[0x14-0xC];
    char unk14[1]; // ?
} UnkStruct;

Segment* SegmentList;

typedef struct StringLinkedList {
    struct StringLinkedList* next;
    char* name;
} StringLinkedList;


typedef struct Extract_arg0 {
    u32 unk0;
    u32 unk4;
} Extract_arg0;


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


#if 0

typedef struct Path_s {
    /* 0x0 */ Path* next;
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
    /* 0x0 */ Segment* next;
    /* 0x4 */ unsigned char* name;
    /* 0x8 */ Path* pathList;
    /* 0x10 */ unsigned int address;
    /* 0x14 */ int addrFunc;
    /* 0x18 */ Segment* afterSeg1;
    /* 0x1C */ Segment* afterSeg2;
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
    /* 0x0 */ SegmentChain* next;
    /* 0x4 */ Segment* segment;
} SegmentChain;

struct Wave_s {
    /* 0x0 */ Wave* next;
    /* 0x4 */ unsigned char* name;
    /* 0x8 */ SegmentChain* segmentChain;
    /* 0xC */ Elf* elf;
    /* 0x10 */ Elf32_Ehdr* ehdr;
    /* 0x14 */ unsigned char elspecFile[255];
    /* 0x114 */ int fd;
    /* 0x118 */ size_t searchIndex;
};

typedef struct Wave_s {
    /* 0x0 */ Wave* next;
    /* 0x4 */ unsigned char* name;
    /* 0x8 */ SegmentChain* segmentChain;
    /* 0xC */ Elf* elf;
    /* 0x10 */ Elf32_Ehdr* ehdr;
    /* 0x14 */ unsigned char elspecFile[255];
    /* 0x114 */ int fd;
    /* 0x118 */ size_t searchIndex;
} Wave;

#endif
