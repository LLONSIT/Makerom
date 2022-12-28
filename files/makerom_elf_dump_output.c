Warning: missing "jr $ra" in last block (.initial).

Warning: missing "jr $ra" in last block (.L00409740).

struct _struct_B_1001A230_0x34 {
    /* 0x00 */ u32 unk0;                            /* inferred */
    /* 0x04 */ s32 unk4;                            /* inferred */
    /* 0x08 */ s32 unk8;                            /* inferred */
    /* 0x0C */ char padC[0x1C];                     /* maybe part of unk8[8]? */
    /* 0x28 */ s32 unk28;                           /* inferred */
    /* 0x2C */ s32 unk2C;                           /* inferred */
    /* 0x30 */ s32 unk30;                           /* inferred */
};                                                  /* size = 0x34 */

struct _struct_usersymbol_0xC {
    /* 0x0 */ s8 *unk0;                             /* inferred */
    /* 0x4 */ u32 unk4;                             /* inferred */
    /* 0x8 */ u32 unk8;                             /* inferred */
};                                                  /* size = 0xC */

struct _struct_yysvec_0xC {
    /* 0x0 */ u32 unk0;                             /* inferred */
    /* 0x4 */ s32 *unk4;                            /* inferred */
    /* 0x8 */ char pad8[4];
};                                                  /* size = 0xC */

s32 __assert(? *, ? *, ?);                          /* extern */
u64 __ll_mul(u64, u32, s32, u32);                   /* extern */
u64 __ull_div(s32, u32, ?, u32);                    /* extern */
u64 __ull_rem(u32, u32, ?, ?);                      /* extern */
s8 *atoi(s8 *);                                     /* extern */
u32 atol(? *, ?, u32, s8 *);                        /* extern */
? bzero(void *, ?, void *);                         /* extern */
s32 getopt(s32, s8 **, ? *);                        /* extern */
s32 memcmp(Elf *, ? *, ?, Elf *);                   /* extern */
s16 *memcpy(s16 *, s16 *, u32, u32);                /* extern */
? memset(u32 *, ?, u32, s8 *);                      /* extern */
? mktemp(u8 *);                                     /* extern */
void *mmap(?, s32, ?, ?, s32, s32);                 /* extern */
s32 mprotect(void *, u32, ?, void *);               /* extern */
s32 munmap(s32, s32, s32);                          /* extern */
s32 pclose(FILE *);                                 /* extern */
FILE *popen(s8 *, ? *);                             /* extern */
? qsort(s16 *, u16, ?, s32 (*)(void *, void *));    /* extern */
u32 strcspn(s8 *, ? *);                             /* extern */
u8 *strdup(s8 *);                                   /* extern */
? strncpy(u32 *, s8 *, s32, s32);                   /* extern */
s32 strpbrk(s8 *, s8 *);                            /* extern */
s32 strstr(s8 *, ? *);                              /* extern */
s32 strtok(s8 *, s8 **);                            /* extern */
s32 strtol(s8 *, ?, ?);                             /* extern */
void func_004096EC();                               /* static */
void func_0040A700();                               /* static */
void func_0040A810();                               /* static */
s32 func_0040A9AC(s8 *arg0);                        /* static */
void func_0040ABA0();                               /* static */
void func_0040AC0C(s8 *arg0);                       /* static */
void func_0040AE34(s8 *arg0);                       /* static */
void func_0040B05C(s8 *arg0);                       /* static */
void func_0040B4E8(s8 *arg0);                       /* static */
s8 *func_0040B780(s8 *arg0, s8 *arg1, s8 *arg2);    /* static */
void func_0040B93C(Wave *arg0);                     /* static */
void func_0040BA54();                               /* static */
void func_0040BC54();                               /* static */
s32 func_0040CBA4(Segment *arg0);                   /* static */
s32 func_0040DA68(Segment *arg0);                   /* static */
s32 func_0040F214();                                /* static */
? func_0040F758(Segment *arg0);                     /* static */
? func_0040FDE0(Segment *arg0);                     /* static */
s32 func_0041080C(u32 *arg0);                       /* static */
void func_0041109C();                               /* static */
void func_004114EC();                               /* static */
Elf *func_0041E700(s32 arg0, Elf *arg1, s32 arg2, s32); /* static */
Elf *func_0041E958(s32 arg0, s32 arg1, s32, s32);   /* static */
s32 func_00421D98(Elf *arg0, s32 arg1);             /* static */
s32 func_00421F40(Elf *arg0, s32 arg1);             /* static */
s32 func_004220E8(Elf *arg0, s32 arg1);             /* static */
s32 func_00422334(Elf *arg0, s32 arg1);             /* static */
s32 func_0042260C(Elf *arg0, s32 arg1);             /* static */
s32 func_00422848(Elf *arg0, s32 arg1);             /* static */
s32 func_00422B14(Elf *, s32);                      /* static */
s32 *func_00424404(s32 *arg0);                      /* static */
s32 *func_004246DC(s32 *arg0);                      /* static */
s32 *func_0042803C(struct filehdr *arg0, s16 *arg1); /* static */
extern ? _end;
extern s8 *optarg;
extern s32 optind;
static sigaction_t D_100141E0 = { 0, (void (*)())0x40BD2C, { { 0, 0, 0, 0 } }, { 0, 0 } };
static s8 *D_10014200 = (s8 *)0x1000F000;
static s32 D_10014204 = 1;
static s32 cosim = 0;
static s32 emulator = 0;
static s32 nofont = 0;
static s32 finalromSize = 0;
static u8 fillData = 0xFF;
static s32 offset = 0;
static s32 changeclock = 0;
static s32 clockrate = 0;
static s32 Swap = 0;
static FILE *yyin = (FILE *)0x0FB43D44;
static FILE *yyout = (FILE *)0x0FB43D54;
static s32 lineNumber = 1;
static s16 yycrank[0x1CE] = {
    0,
    0,
    0x103,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0x104,
    0x105,
    0,
    0,
    0,
    0x41D,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0x106,
    0x107,
    0x108,
    0x41D,
    0,
    0,
    0,
    0,
    0,
    0x109,
    0x10A,
    0x10B,
    0,
    0x10C,
    0x10D,
    0x10E,
    0x10E,
    0x10E,
    0x10E,
    0x10E,
    0x10E,
    0x10E,
    0x10E,
    0x10E,
    0xC22,
    0,
    0,
    0,
    0,
    0,
    0,
    0x108,
    0x10F,
    0x921,
    0x921,
    0x921,
    0x921,
    0x921,
    0x921,
    0x921,
    0x921,
    0x921,
    0x921,
    0,
    0,
    0x110,
    0x1026,
    0x1127,
    0x111,
    0x3748,
    0x4857,
    0,
    0,
    0,
    0x2637,
    0,
    0,
    0x112,
    0,
    0x113,
    0xF25,
    0x2536,
    0,
    0x114,
    0x115,
    0x3647,
    0,
    0x116,
    0x117,
    0x2738,
    0,
    0x118,
    0x5765,
    0x206,
    0x207,
    0x119,
    0x11A,
    0x2D3F,
    0x3446,
    0x192F,
    0x11B,
    0x11C,
    0x209,
    0x20A,
    0x20B,
    0x152B,
    0x20C,
    0x1930,
    0x20E,
    0x20E,
    0x20E,
    0x20E,
    0x20E,
    0x20E,
    0x20E,
    0x20E,
    0x20E,
    0x162C,
    0x172D,
    0x182E,
    0x1A31,
    0x1B33,
    0x1C34,
    0x2839,
    0x293A,
    0x20F,
    0xE23,
    0xE23,
    0xE23,
    0xE23,
    0xE23,
    0xE23,
    0xE23,
    0xE23,
    0xE23,
    0xE23,
    0x2A3B,
    0x1428,
    0x210,
    0x1429,
    0x1A32,
    0x211,
    0x2B3C,
    0x2C3D,
    0x2E40,
    0x142A,
    0x2F41,
    0x3042,
    0x3143,
    0x3244,
    0x212,
    0x3345,
    0x213,
    0x3949,
    0x3A4A,
    0x3B4B,
    0x214,
    0x215,
    0x3C4C,
    0x2C3E,
    0x216,
    0x217,
    0x3D4D,
    0x3E4F,
    0x218,
    0x61E,
    0x3D4E,
    0x61F,
    0x219,
    0x21A,
    0x3F50,
    0x61F,
    0x61F,
    0x21B,
    0x21C,
    0x4051,
    0x4152,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x4353,
    0x4454,
    0x4555,
    0x4656,
    0x4958,
    0x4A59,
    0x4B5A,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x4C5B,
    0x4D5C,
    0x4E5D,
    0x4F5E,
    0x61F,
    0x505F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x61F,
    0x820,
    0x5160,
    0x5261,
    0x5462,
    0x820,
    0x820,
    0x5563,
    0x5664,
    0x5866,
    0x5C69,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x5B67,
    0x5D6A,
    0x606B,
    0x616C,
    0x5B68,
    0x626D,
    0x636E,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x666F,
    0x6770,
    0x6871,
    0x6A72,
    0x820,
    0x6B73,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0x820,
    0xD23,
    0xD23,
    0xD23,
    0xD23,
    0xD23,
    0xD23,
    0xD23,
    0xD23,
    0xD23,
    0xD23,
    0x2323,
    0x2323,
    0x2323,
    0x2323,
    0x2323,
    0x2323,
    0x2323,
    0x2323,
    0x2323,
    0x2323,
    0x6C74,
    0x6E75,
    0x7076,
    0x7177,
    0x2435,
    0x2435,
    0x2435,
    0x2435,
    0x2435,
    0x2435,
    0x2435,
    0x2435,
    0x2435,
    0x2435,
    0x7578,
    0x7779,
    0,
    0,
    0,
    0,
    0,
    0x2435,
    0x2435,
    0x2435,
    0x2435,
    0x2435,
    0x2435,
    0x3535,
    0x3535,
    0x3535,
    0x3535,
    0x3535,
    0x3535,
    0x3535,
    0x3535,
    0x3535,
    0x3535,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0x3535,
    0x3535,
    0x3535,
    0x3535,
    0x3535,
    0x3535,
    0,
    0,
    0xD24,
    0x2435,
    0x2435,
    0x2435,
    0x2435,
    0x2435,
    0x2435,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0x3535,
    0x3535,
    0x3535,
    0x3535,
    0x3535,
    0x3535,
    0,
    0,
    0,
    0,
};
static struct _struct_yysvec_0xC yysvec[0x7B];      /* unable to generate initializer */
static u32 yytop = 0x10014A6E;
static struct _struct_yysvec_0xC *yybgin = (struct _struct_yysvec_0xC *)0x10014A84;
static ? yymatch;                                   /* unable to generate initializer */
static ? yyextra;                                   /* unable to generate initializer */
static s32 yylineno = 1;
static u32 yysptr = 0x10016AC0;
static s32 yyprevious = 0xA;
static s32 D_10015180 = 0;
static s32 D_10015184 = 0;
static s16 *yys = (s16 *)0x10019AF0;
static s16 *yyv = (s16 *)0x10019D48;
static s32 D_10015190 = 0x96;
static ? yyexca;                                    /* unable to generate initializer */
static s32 yyact[0x65] = {
    0xD,
    0xF,
    0x10,
    0x11,
    0x3E,
    0x3B,
    0x37,
    0x24,
    0x1D,
    0x25,
    0x13,
    0x14,
    0x15,
    0x36,
    0x16,
    0x2F,
    0x12,
    0xE,
    0x32,
    0x22,
    0x17,
    0xD,
    0xF,
    0x10,
    0x11,
    0x38,
    0x29,
    0x28,
    0x3D,
    0x3F,
    0x3A,
    0x13,
    0x14,
    0x15,
    0x2C,
    0x16,
    0x33,
    0x12,
    0xE,
    0x1C,
    0xA,
    0x17,
    0x34,
    0x1B,
    0x3C,
    0x1C,
    0x2D,
    0x2E,
    0x30,
    0x1B,
    0x27,
    0x26,
    0x20,
    0x1F,
    5,
    0xA,
    5,
    0x2B,
    0x1A,
    0xC,
    8,
    3,
    0x19,
    9,
    7,
    0x23,
    0x31,
    0x18,
    0x21,
    0xB,
    4,
    0x1E,
    6,
    2,
    1,
    0x2A,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0x35,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0x39,
};
static s32 yypact[0x40] = {
    -0xCD,
    -0x989680,
    -0xCF,
    -0x989680,
    -0xEC,
    -0x989680,
    -0xDE,
    -0x989680,
    -0x989680,
    -0xE6,
    -0x989680,
    -0x101,
    -0x989680,
    -0xD3,
    -0xD4,
    -0x107,
    -0xD5,
    -0xD6,
    -0xFF,
    -0x100,
    -0xE5,
    -0x10B,
    -0xD8,
    -0xF6,
    -0x989680,
    -0xE0,
    -0x989680,
    -0x10D,
    -0x114,
    -0x989680,
    -0x989680,
    -0x989680,
    -0x989680,
    -0x989680,
    -0x989680,
    -0xFE,
    -0x989680,
    -0x989680,
    -0x989680,
    -0x989680,
    -0x989680,
    -0x989680,
    -0xE5,
    -0x989680,
    -0x989680,
    -0x989680,
    -0x989680,
    -0x989680,
    -0x989680,
    -0x989680,
    -0x989680,
    -0xF8,
    -0x989680,
    -0x989680,
    -0x989680,
    -0x989680,
    -0x115,
    -0x989680,
    -0xDC,
    -0xFD,
    -0x989680,
    -0x116,
    -0xFB,
    -0x989680,
};
static ? yypgo;                                     /* unable to generate initializer */
static s32 yyr1[0x27] = {
    0,
    3,
    4,
    4,
    6,
    7,
    8,
    8,
    9,
    9,
    9,
    9,
    9,
    9,
    9,
    9,
    9,
    9,
    9,
    0xA,
    0xA,
    0xC,
    0xC,
    2,
    2,
    1,
    1,
    1,
    0xB,
    0xB,
    0xB,
    5,
    5,
    0xD,
    0xE,
    0xF,
    0xF,
    0x10,
    0x10,
};
static s32 yyr2[0x27] = {
    0,
    4,
    2,
    4,
    7,
    3,
    2,
    4,
    5,
    5,
    5,
    5,
    5,
    5,
    5,
    5,
    5,
    5,
    5,
    3,
    0xD,
    3,
    3,
    3,
    5,
    3,
    3,
    3,
    3,
    3,
    7,
    2,
    4,
    7,
    3,
    2,
    4,
    5,
    5,
};
static s32 yychk[0x40] = {
    0xFF676980,
    0xFFFFFFFD,
    0xFFFFFFFC,
    0xFFFFFFFA,
    0xFFFFFFF9,
    0x105,
    0xFFFFFFFB,
    0xFFFFFFFA,
    0xFFFFFFF3,
    0xFFFFFFF2,
    0x106,
    0xFFFFFFF8,
    0xFFFFFFF7,
    0x101,
    0x112,
    0x102,
    0x103,
    0x104,
    0x111,
    0x10B,
    0x10C,
    0x10D,
    0x10F,
    0x115,
    0xFFFFFFF3,
    0xFFFFFFF1,
    0xFFFFFFF0,
    0x111,
    0x10D,
    0x109,
    0xFFFFFFF7,
    0x108,
    0x108,
    0xFFFFFFF6,
    0x11A,
    0xFFFFFFF4,
    0x10E,
    0x110,
    0x108,
    0x108,
    0x11A,
    0x11A,
    0xFFFFFFFE,
    0xFFFFFFFF,
    0x107,
    0x113,
    0x114,
    0x11A,
    0x108,
    0xFFFFFFF5,
    0x108,
    0x11A,
    0x10A,
    0xFFFFFFF0,
    0x11A,
    0x11A,
    0x117,
    0xFFFFFFFF,
    0x116,
    0x11A,
    0x108,
    0x119,
    0x11A,
    0x118,
};
static s32 yydef[0x41] = {
    0,
    -2,
    0,
    2,
    0,
    5,
    1,
    3,
    0x1F,
    0,
    0x22,
    0,
    6,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0x20,
    0,
    0x23,
    0,
    0,
    4,
    7,
    8,
    9,
    0xA,
    0x13,
    0,
    0x15,
    0x16,
    0xB,
    0xC,
    0xD,
    0xE,
    0xF,
    0x17,
    0x19,
    0x1A,
    0x1B,
    0x10,
    0x11,
    0x12,
    0x1C,
    0x1D,
    0x21,
    0x24,
    0x25,
    0x26,
    0,
    0x18,
    0,
    0,
    0x1E,
    0,
    0,
    0x14,
    0,
};
static ? D_100157C0;                                /* unable to generate initializer */
static ? D_100158B0;                                /* unable to generate initializer */
static ? D_10015950;                                /* unable to generate initializer */
static s32 _elf_encode = 0;
static s32 _elf_err = 0;
static ? _elf_snode_init;                           /* unable to generate initializer */
static u32 _elf_work = 0;
static s32 (*_elf_foreign)(Elf *) = NULL;
static u32 D_10015B18 = 0;
static s32 D_10015B1C = 0;
static s32 D_10015B20 = 0;
static s32 D_10015B30 = -2;
static s32 sinx = -2;
static s32 tinx = -2;
static s8 *st_errname = (s8 *)0x10013B7C;
static s8 D_10015B60[0x3C] = {
    0x72,
    0x6F,
    0x75,
    0x74,
    0x69,
    0x6E,
    0x65,
    0x3A,
    0x20,
    0x79,
    0x6F,
    0x75,
    0x20,
    0x64,
    0x69,
    0x64,
    0x6E,
    0x27,
    0x74,
    0x20,
    0x69,
    0x6E,
    0x69,
    0x74,
    0x69,
    0x61,
    0x6C,
    0x69,
    0x7A,
    0x65,
    0x20,
    0x77,
    0x69,
    0x74,
    0x68,
    0x20,
    0x73,
    0x74,
    0x5F,
    0x63,
    0x75,
    0x69,
    0x6E,
    0x69,
    0x74,
    0x20,
    0x6F,
    0x72,
    0x20,
    0x73,
    0x74,
    0x5F,
    0x72,
    0x65,
    0x61,
    0x64,
    0x73,
    0x74,
    0xA,
    0,
};
static s8 D_10015B9C[0x34] = {
    0x72,
    0x6F,
    0x75,
    0x74,
    0x69,
    0x6E,
    0x65,
    0x3A,
    0x20,
    0x6E,
    0x6F,
    0x20,
    0x63,
    0x75,
    0x72,
    0x72,
    0x65,
    0x6E,
    0x74,
    0x20,
    0x72,
    0x6F,
    0x75,
    0x74,
    0x69,
    0x6E,
    0x65,
    0x2C,
    0x20,
    0x73,
    0x65,
    0x65,
    0x20,
    0x66,
    0x64,
    0x61,
    0x64,
    0x64,
    0x20,
    0x6F,
    0x72,
    0x20,
    0x73,
    0x65,
    0x74,
    0x66,
    0x64,
    0xA,
    0,
    0,
    0,
    0,
};
static s8 D_10015BD0[0x3C] = {
    0x72,
    0x6F,
    0x75,
    0x74,
    0x69,
    0x6E,
    0x65,
    0x3A,
    0x20,
    0x63,
    0x61,
    0x6E,
    0x6E,
    0x6F,
    0x74,
    0x20,
    0x61,
    0x64,
    0x64,
    0x20,
    0x74,
    0x6F,
    0x20,
    0x74,
    0x68,
    0x69,
    0x73,
    0x20,
    0x65,
    0x6E,
    0x74,
    0x72,
    0x79,
    0x20,
    0x69,
    0x74,
    0x20,
    0x77,
    0x61,
    0x73,
    0x20,
    0x72,
    0x65,
    0x61,
    0x64,
    0x69,
    0x6E,
    0x20,
    0x66,
    0x72,
    0x6F,
    0x6D,
    0x20,
    0x64,
    0x69,
    0x73,
    0x6B,
    0xA,
    0,
    0,
};
static s8 D_10015C0C = 0;
static s32 D_10015C10 = 0;
static s8 D_10015C20[0x3C] = {
    0x72,
    0x6F,
    0x75,
    0x74,
    0x69,
    0x6E,
    0x65,
    0x3A,
    0x20,
    0x79,
    0x6F,
    0x75,
    0x20,
    0x64,
    0x69,
    0x64,
    0x6E,
    0x27,
    0x74,
    0x20,
    0x69,
    0x6E,
    0x69,
    0x74,
    0x69,
    0x61,
    0x6C,
    0x69,
    0x7A,
    0x65,
    0x20,
    0x77,
    0x69,
    0x74,
    0x68,
    0x20,
    0x73,
    0x74,
    0x5F,
    0x63,
    0x75,
    0x69,
    0x6E,
    0x69,
    0x74,
    0x20,
    0x6F,
    0x72,
    0x20,
    0x73,
    0x74,
    0x5F,
    0x72,
    0x65,
    0x61,
    0x64,
    0x73,
    0x74,
    0xA,
    0,
};
static s8 D_10015C5C[0x34] = {
    0x72,
    0x6F,
    0x75,
    0x74,
    0x69,
    0x6E,
    0x65,
    0x3A,
    0x20,
    0x6E,
    0x6F,
    0x20,
    0x63,
    0x75,
    0x72,
    0x72,
    0x65,
    0x6E,
    0x74,
    0x20,
    0x72,
    0x6F,
    0x75,
    0x74,
    0x69,
    0x6E,
    0x65,
    0x2C,
    0x20,
    0x73,
    0x65,
    0x65,
    0x20,
    0x66,
    0x64,
    0x61,
    0x64,
    0x64,
    0x20,
    0x6F,
    0x72,
    0x20,
    0x73,
    0x65,
    0x74,
    0x66,
    0x64,
    0xA,
    0,
    0,
    0,
    0,
};
static s8 D_10015C90[0x40] = {
    0x72,
    0x6F,
    0x75,
    0x74,
    0x69,
    0x6E,
    0x65,
    0x3A,
    0x20,
    0x63,
    0x61,
    0x6E,
    0x6E,
    0x6F,
    0x74,
    0x20,
    0x61,
    0x64,
    0x64,
    0x20,
    0x74,
    0x6F,
    0x20,
    0x74,
    0x68,
    0x69,
    0x73,
    0x20,
    0x65,
    0x6E,
    0x74,
    0x72,
    0x79,
    0x20,
    0x69,
    0x74,
    0x20,
    0x77,
    0x61,
    0x73,
    0x20,
    0x72,
    0x65,
    0x61,
    0x64,
    0x69,
    0x6E,
    0x20,
    0x66,
    0x72,
    0x6F,
    0x6D,
    0x20,
    0x64,
    0x69,
    0x73,
    0x6B,
    0xA,
    0,
    0,
    0,
    0,
    0,
    0,
};
static s8 D_10015CD0[0x3C] = {
    0x72,
    0x6F,
    0x75,
    0x74,
    0x69,
    0x6E,
    0x65,
    0x3A,
    0x20,
    0x79,
    0x6F,
    0x75,
    0x20,
    0x64,
    0x69,
    0x64,
    0x6E,
    0x27,
    0x74,
    0x20,
    0x69,
    0x6E,
    0x69,
    0x74,
    0x69,
    0x61,
    0x6C,
    0x69,
    0x7A,
    0x65,
    0x20,
    0x77,
    0x69,
    0x74,
    0x68,
    0x20,
    0x73,
    0x74,
    0x5F,
    0x63,
    0x75,
    0x69,
    0x6E,
    0x69,
    0x74,
    0x20,
    0x6F,
    0x72,
    0x20,
    0x73,
    0x74,
    0x5F,
    0x72,
    0x65,
    0x61,
    0x64,
    0x73,
    0x74,
    0xA,
    0,
};
static s8 D_10015D0C[0x34] = {
    0x72,
    0x6F,
    0x75,
    0x74,
    0x69,
    0x6E,
    0x65,
    0x3A,
    0x20,
    0x6E,
    0x6F,
    0x20,
    0x63,
    0x75,
    0x72,
    0x72,
    0x65,
    0x6E,
    0x74,
    0x20,
    0x72,
    0x6F,
    0x75,
    0x74,
    0x69,
    0x6E,
    0x65,
    0x2C,
    0x20,
    0x73,
    0x65,
    0x65,
    0x20,
    0x66,
    0x64,
    0x61,
    0x64,
    0x64,
    0x20,
    0x6F,
    0x72,
    0x20,
    0x73,
    0x65,
    0x74,
    0x66,
    0x64,
    0xA,
    0,
    0,
    0,
    0,
};
static s32 __sgi_common_dummy_file = 0;
static s32 D_10015D44 = 0;
static u8 B_10016520[0x100];
static u8 B_10016620[0x100];
static u8 B_10016720[0x100];
static u8 B_10016820[0x100];
static s8 B_10016920[0x100];
static s8 *B_10016A20;
static s8 *fileName;
static s8 *bootEntryName;
static s8 *bootStackName;
static s8 *bootStackOffset;
static s32 loadMap;
static s32 gcord;
static s32 irixVersion;
static void *B_10016A60;
static s32 Address;
static u32 Data0;
static u32 Data1;
static u8 *OFileName;
static s8 *SName;
static s32 *LDPtr;
static ? SHeader;
static ? yysbuf;
static s32 yyleng;
static s8 yytext[0x800];
static s32 yymorfg;
static s32 yytchar;
static struct _struct_yysvec_0xC *yyestate;
static ? yylstate;
static void **yylsp;
static void **yyolsp;
static s32 *yyfnd;
static s32 yychar;
static s32 yyerrflag;
static s8 *yylval;
static s8 *yyval;
static s16 *yypv;
static s32 *yyps;
static s32 yystate;
static s32 yytmp;
static s32 yynerrs;
static u32 bootAddress;
static Segment *B_10019FCC;
static Segment *B_10019FD0;
static Wave *B_10019FD4;
static Wave *B_10019FD8;
static SegmentChain *B_10019FDC;
static Path *B_10019FE0;
static s32 _elf_page_size;
static u32 B_1001A000;
static u32 B_1001A008[0x42];
static u32 *(*B_1001A110)(s32 *(*)(?, s32 *, u32), u32 *, s32 *(*(*)(s32 *(*)(?, s32 *, u32), u32, ?))(?, s32 *, u32), s32 *(*(*)(s32 *(*)(?, s32 *, u32), u32, ?))(?, s32 *, u32));
static u32 *B_1001A114;
static u32 *(*B_1001A118)(s32 *(*)(?, s32 *, u32), u32 *, s32 *(*(*)(s32 *(*)(?, s32 *, u32), u32, ?))(?, s32 *, u32), s32 *(*(*)(s32 *(*)(?, s32 *, u32), u32, ?))(?, s32 *, u32));
static u32 *B_1001A11C;
static s8 B_1001A120[0x100];
static u32 *(*B_1001A220)(s32 *(*)(?, s32 *, u32), u32 *, s32 *(*(*)(s32 *(*)(?, s32 *, u32), u32, ?))(?, s32 *, u32), s32 *(*(*)(s32 *(*)(?, s32 *, u32), u32, ?))(?, s32 *, u32));
static u32 *B_1001A224;
static u32 *(*B_1001A228)(s32 *(*)(?, s32 *, u32), u32 *, s32 *(*(*)(s32 *(*)(?, s32 *, u32), u32, ?))(?, s32 *, u32), s32 *(*(*)(s32 *(*)(?, s32 *, u32), u32, ?))(?, s32 *, u32));
static u32 *B_1001A22C;
static struct _struct_B_1001A230_0x34 B_1001A230[0x10];
static s32 B_1001A570;
static s32 B_1001A574;
static s32 B_1001A578;
static s32 B_1001A580;
static s32 B_1001A584;
static s32 B_1001A588;
static s32 B_1001A58C;
static s32 B_1001A590;
static s32 B_1001A594;
static s32 B_1001A598;
static s32 B_1001A59C;
static s32 B_1001A5A0;
static s32 B_1001A5A4;
static s32 B_1001A5A8;
static s32 B_1001A5AC;
static s32 B_1001A5B0;
static s32 B_1001A5B4[7];
static s8 B_1001A5D0;
static s8 B_1001A5D8[0x88];
static s8 B_1001A660[0x88];
static void *B_1001A6E8[0x3F1];
static void *B_1001B6AC;
static s32 B_1001B6B0;
static s32 B_1001B6B4;
static ? B_1001B6C0;
static ? B_1001B708;
static s8 B_1001B748[0x44];
static s8 *B_1001B78C;
static s8 *B_1001B790;
static s8 *B_1001B794;
static s8 B_1001B798[0x20];
static s32 B_1001B7B8;
static ? B_1001B7C0;
static void *B_1001B800;
static s32 B_1001B804;
static s32 B_1001B808;
static void *B_1001B80C;
static s32 B_1001B810;
static s32 B_1001B814;
static void *st_pchdr;
static void **pcfdcur;
static u32 usertype[0x200];
static struct _struct_usersymbol_0xC usersymbol[0x200];
static s32 RO_10011640 = 1;                         /* const */
static s32 RO_10011644 = 1;                         /* const */
static s32 RO_10011648 = 8;                         /* const */
static s32 RO_1001164C = 8;                         /* const */
static s32 RO_10011650 = 0x10;                      /* const */
static s32 RO_10011654 = 0x10;                      /* const */
static ? RO_10011658;                               /* unable to generate initializer; const */
static ? RO_100116B8;                               /* unable to generate initializer; const */
static u32 RO_100116F0[0xF] = { 1, 4, 4, 4, 2, 4, 4, 4, 4, 4, 4, 0, 4, 4, 0 }; /* const */
static u32 RO_1001172C[0x11] = { 1, 8, 8, 8, 2, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 0, 0 }; /* const */
static struct _struct_RO_100117B0_0x78 RO_100117B0[1]; /* unable to generate initializer; const */
static ? RO_10011828;                               /* unable to generate initializer; const */
Segment *segmentList = NULL;
Wave *waveList = NULL;
s32 debug = 0;
s32 keep_going = 0;
u32 *bootBuf;
s8 *headerBuf;
u32 *pif2bootBuf;
void *fontBuf;
s32 bootWordAlignedByteSize;
s32 pif2bootWordAlignedByteSize;
s32 headerWordAlignedByteSize;
u32 fontdataWordAlignedByteSize;

void __start(void) {
    func_004096EC();
}

void func_004096EC(void) {
    s32 sp1C;
    void *sp18;
    ? sp4;
    void *temp_a2;
    void *temp_a3;
    void *temp_gp;

    temp_gp = saved_reg_ra + 0x0FC14654;
    temp_a3 = *temp_gp->unk-7FCC;
    temp_a2 = &sp4 + 4 + (sp0 * 4);
    if (temp_a3 == NULL) {
        *temp_gp->unk-7FCC = temp_a2;
    }
    *temp_gp->unk-7840 = sp0;
    sp18 = temp_gp;
    sp1C = 0;
    *temp_gp->unk-7844 = &sp4;
    temp_gp->unk-79B0(sp0, &sp4, temp_a2, temp_a3);
    sp18->unk-7FA8();
    sp18->unk-7FAC(sp18->unk-7E7C(*sp18->unk-7840, *sp18->unk-7844, *sp18->unk-7FCC));
    M2C_BREAK();
}

void _mcount(void) {

}

/*
Internal error in function main:

Traceback (most recent call last):
  File "/home/usr/m2c/src/main.py", line 229, in run
    function_text = get_function_text(function_info, options)
  File "/home/usr/m2c/src/if_statements.py", line 1408, in get_function_text
    body: Body = build_body(context, options)
  File "/home/usr/m2c/src/if_statements.py", line 1380, in build_body
    body = build_flowgraph_between(context, start_node, terminal_node)
  File "/home/usr/m2c/src/if_statements.py", line 1272, in build_flowgraph_between
    body.add_if_else(build_conditional_subgraph(context, curr_start, curr_end))
  File "/home/usr/m2c/src/if_statements.py", line 1025, in build_conditional_subgraph
    else_body = build_flowgraph_between(context, else_node, end)
  File "/home/usr/m2c/src/if_statements.py", line 1245, in build_flowgraph_between
    irregular_switch = try_build_irregular_switch(context, curr_start, curr_end)
  File "/home/usr/m2c/src/if_statements.py", line 945, in try_build_irregular_switch
    switch = build_switch_statement(
  File "/home/usr/m2c/src/if_statements.py", line 1099, in build_switch_statement
    switch_body.extend(build_flowgraph_between(context, case, end))
  File "/home/usr/m2c/src/if_statements.py", line 1272, in build_flowgraph_between
    body.add_if_else(build_conditional_subgraph(context, curr_start, curr_end))
  File "/home/usr/m2c/src/if_statements.py", line 1026, in build_conditional_subgraph
    if_body = build_flowgraph_between(context, if_node, end)
  File "/home/usr/m2c/src/if_statements.py", line 1201, in build_flowgraph_between
    do_while_loop = detect_loop(context, curr_start, imm_pdom)
  File "/home/usr/m2c/src/if_statements.py", line 1155, in detect_loop
    loop_body = build_flowgraph_between(
  File "/home/usr/m2c/src/if_statements.py", line 1267, in build_flowgraph_between
    build_switch_between(context, switch_node, default_node, curr_end)
  File "/home/usr/m2c/src/if_statements.py", line 1125, in build_switch_between
    switch_index = add_labels_for_switch(
  File "/home/usr/m2c/src/if_statements.py", line 425, in add_labels_for_switch
    switch_index = context.switch_nodes[node]
KeyError: <SwitchNode: 6>
*/

void func_0040A700(void) {
    fprintf(__iob + 0x20, "usage: makerom [-D<define>] [-I<dir>] -[U<define>]\n");
    fprintf(__iob + 0x20, "               [-c] [-n] [-d] [-g] [-e] [-m] [-q] [-v]\n");
    fprintf(__iob + 0x20, "               [-o] [-b bootfile] [-h headerfile]\n");
    fprintf(__iob + 0x20, "               [-p pif2bootfile]\n");
    fprintf(__iob + 0x20, "               [-s romsize (Mbits)]\n");
    fprintf(__iob + 0x20, "               [-f filldata (0x00 - 0xff)]\n");
    fprintf(__iob + 0x20, "               [-C clockrate] \n");
    fprintf(__iob + 0x20, "               [-r romfile] specfile\n");
}

void func_0040A810(void) {
    s8 *sp1024;
    s8 sp24;
    FILE *sp20;

    sp1024 = "/sbin/uname -r";
    sp20 = popen(sp1024, "r");
    if (sp20 != NULL) {
        fgets(&sp24, 0x1000, sp20);
        pclose(sp20);
        if (strcmp(&sp24, "5.3\n") == 0) {
            irixVersion = 0;
        } else if (strcmp(&sp24, "6.2\n") == 0) {
            irixVersion = 1;
        } else if (strcmp(&sp24, "6.3\n") == 0) {
            irixVersion = 2;
        } else if (strcmp(&sp24, "6.4\n") == 0) {
            irixVersion = 3;
        } else {
            irixVersion = 4;
            fprintf(__iob + 0x20, "makerom: Operating system not recognized.  Trying 6.x ...\n");
        }
    } else {
        fprintf(__iob + 0x20, "makerom: Unable to find uname command!\n");
        exit(1);
    }
}

s32 func_0040A9AC(s8 *arg0) {
    s32 sp2B4;
    s32 sp2B0;
    s8 sp1B0;
    s8 spB0;
    struct stat sp28;
    FILE *sp24;

    sprintf(&spB0, "%s/usr/sbin/u64check", arg0);
    if (stat(&spB0, &sp28) != 0) {
        sp2B4 = 0;
    } else {
        sp2B4 = 1;
    }
    sprintf(&sp1B0, "/usr/sbin/showprods -D 1 dev");
    sp24 = popen(&sp1B0, "r");
    if (sp24 != NULL) {
        fgets(&spB0, 0xFF, sp24);
        fgets(&spB0, 0xFF, sp24);
        fgets(&spB0, 0xFF, sp24);
        fgets(&spB0, 0xFF, sp24);
        pclose(sp24);
        if (strstr(&spB0, "7.0") != 0) {
            sp2B0 = 1;
        } else {
            sp2B0 = 0;
        }
    }
    if (sp2B0 != 0) {
        fprintf(__iob + 0x20, "makerom: IDO v7.0 does not work with the Nintendo64\n");
        fprintf(__iob + 0x20, "         development environment.  Please upgrade to\n");
        fprintf(__iob + 0x20, "         IDO v7.1.\n");
        exit(1);
    }
    if (sp2B4 != 0) {
        return 2;
    }
    return 0;
}

void func_0040ABA0(void) {
    if (irixVersion == 0) {
        printf("Nintendo64 Makerom v2.2 for IRIX.\n");
    } else {
        printf("Nintendo64 Makerom v2.2 -BETA- for IRIX.\n");
    }
}

void func_0040AC0C(s8 *arg0) {
    s32 sp2AC;
    s8 sp1AC;
    struct stat sp124;
    s8 sp24;

    if ((arg0 == NULL) && (func_0040B780(&sp1AC, "/usr/lib/PR", "Boot") != NULL)) {
        arg0 = &sp1AC;
    }
    if (arg0 != NULL) {
        sp2AC = open(arg0, 0x800);
        if (sp2AC < 0) {
            sprintf(&sp24, "%s: unable to open %s", B_10016A20, arg0);
            perror(&sp24);
            exit(1);
        }
        if (fstat(sp2AC, &sp124) < 0) {
            sprintf(&sp24, "%s unable to stat %s", B_10016A20, arg0);
            perror(&sp24);
            close(sp2AC);
            exit(1);
        }
        bootBuf = malloc((u32) sp124.st_size);
        if (bootBuf == NULL) {
            fprintf(__iob + 0x20, "%s: unable to malloc buffer to hold %d bytes\n", B_10016A20, sp124.st_size);
            close(sp2AC);
            exit(1);
        }
        close(sp2AC);
        bootWordAlignedByteSize = readCoff((u8 *) arg0, bootBuf);
    } else {
        bootBuf = NULL;
    }
}

void func_0040AE34(s8 *arg0) {
    s32 sp2AC;
    s8 sp1AC;
    struct stat sp124;
    s8 sp24;

    if ((arg0 == NULL) && (func_0040B780(&sp1AC, "/usr/lib/PR", "pif2Boot") != NULL)) {
        arg0 = &sp1AC;
    }
    if (arg0 != NULL) {
        sp2AC = open(arg0, 0x800);
        if (sp2AC < 0) {
            sprintf(&sp24, "%s: unable to open %s", B_10016A20, arg0);
            perror(&sp24);
            exit(1);
        }
        if (fstat(sp2AC, &sp124) < 0) {
            sprintf(&sp24, "%s unable to stat %s", B_10016A20, arg0);
            perror(&sp24);
            close(sp2AC);
            exit(1);
        }
        pif2bootBuf = malloc((u32) sp124.st_size);
        if (pif2bootBuf == NULL) {
            fprintf(__iob + 0x20, "%s: unable to malloc buffer to hold %d bytes\n", B_10016A20, sp124.st_size);
            close(sp2AC);
            exit(1);
        }
        close(sp2AC);
        pif2bootWordAlignedByteSize = readCoff((u8 *) arg0, pif2bootBuf);
    } else {
        pif2bootBuf = NULL;
    }
}

void func_0040B05C(s8 *arg0) {
    s32 sp2BC;
    s8 sp1BC;
    struct stat sp134;
    s8 sp34;
    s8 sp30;
    s32 sp2C;
    s32 sp28;
    s32 sp24;
    s32 sp20;
    s32 temp_t6;
    s32 temp_t8;
    s8 *temp_t6_2;

    if ((arg0 == NULL) && (func_0040B780(&sp1BC, "/usr/lib/PR", "romheader") != NULL)) {
        arg0 = &sp1BC;
    }
    if (arg0 != NULL) {
        sp2BC = open(arg0, 0x800);
        if (sp2BC < 0) {
            sprintf(&sp34, "%s unable to open %s", B_10016A20, arg0);
            perror(&sp34);
            exit(1);
        }
        if (fstat(sp2BC, &sp134) < 0) {
            sprintf(&sp34, "%s unable to stat %s", B_10016A20, arg0);
            perror(&sp34);
            close(sp2BC);
            exit(1);
        }
        headerWordAlignedByteSize = sp134.st_size;
        headerBuf = malloc((u32) headerWordAlignedByteSize);
        if (headerBuf == NULL) {
            fprintf(__iob + 0x20, "%s: unable to malloc buffer to hold %d bytes\n", B_10016A20, headerWordAlignedByteSize);
            close(sp2BC);
            exit(1);
        }
        sp30.unk1 = 0;
        sp28 = 0;
        sp24 = 0;
        if (headerWordAlignedByteSize > 0) {
            do {
                sp20 = read(sp2BC, &sp30, 1U);
                if (sp20 != 1) {
                    fprintf(__iob + 0x20, "%s: short read from %s.\n", B_10016A20, arg0);
                    free(headerBuf);
                    close(sp2BC);
                    exit(1);
                }
                if ((u8) sp30.unk0 == 0xA) {
                    temp_t8 = sp24 + 1;
                    sp24 = temp_t8;
                    if (temp_t8 < headerWordAlignedByteSize) {
                        sp20 = read(sp2BC, &sp30, 1U);
                        if (sp20 != 1) {
                            fprintf(__iob + 0x20, "%s: short read from %s.\n", B_10016A20, arg0);
                            free(headerBuf);
                            close(sp2BC);
                            exit(1);
                        }
                    }
                }
                sp2C = strtol(&sp30, 0, 0x10);
                if ((sp28 % 2) != 0) {
                    temp_t6_2 = &headerBuf[sp28 >> 1];
                    *temp_t6_2 = (u8) *temp_t6_2 | sp2C;
                } else {
                    headerBuf[sp28 >> 1] = sp2C * 0x10;
                }
                temp_t6 = sp24 + 1;
                sp28 += 1;
                sp24 = temp_t6;
            } while (temp_t6 < headerWordAlignedByteSize);
        }
        headerWordAlignedByteSize = (s32) (sp28 - 1) >> 1;
        if (headerWordAlignedByteSize & 3) {
            headerWordAlignedByteSize += 4;
            headerWordAlignedByteSize &= ~3;
        }
        close(sp2BC);
    } else {
        headerBuf = NULL;
    }
}

void func_0040B4E8(s8 *arg0) {
    s32 sp2AC;
    s8 sp1AC;
    struct stat sp124;
    s8 sp24;

    if (func_0040B780(&sp1AC, "/usr/lib/PR", "font") != NULL) {
        arg0 = &sp1AC;
    }
    if (arg0 != NULL) {
        sp2AC = open(arg0, 0x800);
        if (sp2AC < 0) {
            sprintf(&sp24, "%s: unable to open %s", B_10016A20, arg0);
            perror(&sp24);
            exit(1);
        }
        if (fstat(sp2AC, &sp124) < 0) {
            sprintf(&sp24, "%s unable to stat %s", B_10016A20, arg0);
            perror(&sp24);
            close(sp2AC);
            exit(1);
        }
        fontBuf = malloc((u32) sp124.st_size);
        if (fontBuf == NULL) {
            fprintf(__iob + 0x20, "%s: unable to malloc buffer to hold %d bytes\n", B_10016A20, sp124.st_size);
            close(sp2AC);
            exit(1);
        }
        fontdataWordAlignedByteSize = (u32) sp124.st_size;
        if (read(sp2AC, fontBuf, fontdataWordAlignedByteSize) != fontdataWordAlignedByteSize) {
            sprintf(&sp24, "%s unable to read %s", B_10016A20, arg0);
            perror(&sp24);
            close(sp2AC);
            exit(1);
        }
        close(sp2AC);
    } else {
        fontBuf = NULL;
    }
}

s8 *func_0040B780(s8 *arg0, s8 *arg1, s8 *arg2) {
    s8 *sp34;
    s8 *sp30;
    s32 sp28;
    s32 temp_t3;

    sp28 = 0;
loop_1:
    *arg0 = 0;
    switch (sp28) {                                 /* irregular */
    case 0:
        sp34 = "ROOT";
        break;
    case 1:
        sp34 = "WORKAREA";
        break;
    case 2:
        sp34 = NULL;
        break;
    }
    if (sp34 != NULL) {
        sp30 = getenv(sp34);
        if (sp30 == NULL) {
            goto block_16;
        }
        strcat(arg0, sp30);
        goto block_12;
    }
block_12:
    if (arg1 != NULL) {
        strcat(arg0, arg1);
        strcat(arg0, "/");
    }
    strcat(arg0, arg2);
    if (access(arg0, 4) == 0) {
        return arg0;
    }
block_16:
    temp_t3 = sp28 + 1;
    sp28 = temp_t3;
    if (temp_t3 >= 3) {
        fprintf(__iob + 0x20, "gloadFindFile: can't find file %s\n", arg0);
        *arg0 = 0;
        return NULL;
    }
    goto loop_1;
}

void func_0040B93C(Wave *arg0) {
    if (debug != 0) {
        printf("Translating ROM spec file into");
        printf(" linker spec file in %s\n", arg0 + 0x14);
    }
    if (createElspec(arg0) == -1) {
        func_0040BC54();
        exit(1);
    }
    if ((runLinker(arg0, (s8 *) B_10016620, B_10016920) == -1) && (keep_going == 0)) {
        func_0040BC54();
        exit(1);
    }
}

void func_0040BA54(void) {
    Wave *sp24;
    s8 *sp20;
    Wave *temp_t1;

    sp20 = getenv("TMPDIR");
    if (sp20 == NULL) {
        sp20 = "/tmp";
    }
    sp24 = waveList;
    if (waveList != NULL) {
        do {
            sprintf((s8 *) sp24->elspecFile, "%s/%sElspecXXXXXX", sp20, sp24->name);
            mktemp(sp24->elspecFile);
            temp_t1 = sp24->next;
            sp24 = temp_t1;
        } while (temp_t1 != NULL);
    }
    sprintf((s8 *) B_10016520, "%s/segmentXXXXXX", sp20);
    mktemp(B_10016520);
    strcpy((s8 *) B_10016620, (s8 *) B_10016520);
    strcat((s8 *) B_10016520, ".s");
    strcat((s8 *) B_10016620, ".o");
    sprintf((s8 *) B_10016720, "%s/entryXXXXXX", sp20);
    mktemp(B_10016720);
    strcpy((s8 *) B_10016820, (s8 *) B_10016720);
    strcat((s8 *) B_10016720, ".s");
    strcat((s8 *) B_10016820, ".o");
    sprintf(B_10016920, "%s/objListXXXXXX", sp20);
    mktemp((u8 *) B_10016920);
}

void func_0040BC54(void) {
    Wave *sp24;
    Wave *temp_t9;

    if (debug == 0) {
        sp24 = waveList;
        if (waveList != NULL) {
            do {
                unlink((s8 *) sp24->elspecFile);
                temp_t9 = sp24->next;
                sp24 = temp_t9;
            } while (temp_t9 != NULL);
        }
        unlink((s8 *) B_10016520);
        unlink((s8 *) B_10016620);
        unlink((s8 *) B_10016720);
        unlink((s8 *) B_10016820);
        unlink(B_10016920);
    }
}

s32 execCommand(u8 *s) {
    s32 sp2C;
    s32 temp_t2;
    s32 temp_t8;

    sp2C = system((s8 *) s);
    if (sp2C == -1) {
        fprintf(__iob + 0x20, "makerom: cannot execute command: %s\n", sys_errlist[errno]);
        return -1;
    }
    temp_t2 = sp2C;
    if (!(temp_t2 & 0xFF) && !((temp_t2 >> 8) & 0xFF)) {
        return 0;
    }
    if (keep_going != 0) {
        temp_t8 = sp2C;
        if (!(temp_t8 & 0xFF) && (((temp_t8 >> 8) & 0xFF) == 1)) {
            return 1;
        }
    }
    if (debug != 0) {
        fprintf(__iob + 0x20, "makerom: [%s] returned %d (%08x), errno=%d\n", s, ((s32) sp2C >> 8) & 0xFF, sp2C, errno);
    }
    return -1;
}

s32 createElspec(Wave *wave) {
    FILE *sp2C;
    SegmentChain *sp28;
    Segment *sp24;
    Path *sp20;
    Path *temp_t0;
    Path *temp_t0_2;
    Path *temp_t1;
    Path *temp_t2_2;
    Path *temp_t3;
    Path *temp_t3_2;
    Path *temp_t7;
    Path *temp_t8_2;
    Path *temp_t9;
    Path *temp_t9_2;
    SegmentChain *temp_t2;
    SegmentChain *temp_t8;

    sp2C = fopen((s8 *) wave->elspecFile, "w");
    if (sp2C == NULL) {
        fprintf(__iob + 0x20, "makerom: %s: cannot create\n", wave->elspecFile);
        return -1;
    }
    fprintf(sp2C, "$ignoreoverlaps = true\n\n");
    temp_t8 = wave->segmentChain;
    sp28 = temp_t8;
    if (temp_t8 != NULL) {
        do {
            sp24 = sp28->segment;
            if (!(sp24->flags & 2)) {

            } else {
                fprintf(sp2C, "beginseg\n");
                fprintf(sp2C, "\tsegtype LOAD\n");
                fprintf(sp2C, "\tsegflags R X\n");
                fprintf(sp2C, "\tvaddr 0x%x\n", sp24->address);
                fprintf(sp2C, "\tcontents\n");
                fprintf(sp2C, "\tbeginscn .%s.text\n", sp24->name);
                fprintf(sp2C, "\t\tscntype PROGBITS\n");
                if (sp24->textAlign != 0) {
                    fprintf(sp2C, "\t\tscnalign %d\n", sp24->textAlign);
                }
                fprintf(sp2C, "\t\tscnflags ALLOC EXECINSTR\n");
                temp_t0 = sp24->pathList;
                sp20 = temp_t0;
                if (temp_t0 != NULL) {
                    do {
                        fprintf(sp2C, "\t\tsection .text in object %s\n", sp20->name);
                        temp_t3 = sp20->next;
                        sp20 = temp_t3;
                    } while (temp_t3 != NULL);
                }
                fprintf(sp2C, "\tendscn\n");
                fprintf(sp2C, "\tbeginscn .%s.data\n", sp24->name);
                fprintf(sp2C, "\t\tscntype PROGBITS\n");
                if (sp24->dataAlign != 0) {
                    fprintf(sp2C, "\t\tscnalign %d\n", sp24->dataAlign);
                }
                fprintf(sp2C, "\t\tscnflags ALLOC WRITE\n");
                temp_t9 = sp24->pathList;
                sp20 = temp_t9;
                if (temp_t9 != NULL) {
                    do {
                        fprintf(sp2C, "\t\tsection .data in object %s\n", sp20->name);
                        fprintf(sp2C, "\t\tsection .rodata in object %s\n", sp20->name);
                        temp_t3_2 = sp20->next;
                        sp20 = temp_t3_2;
                    } while (temp_t3_2 != NULL);
                }
                fprintf(sp2C, "\tendscn\n");
                fprintf(sp2C, "\tbeginscn .%s.sdata\n", sp24->name);
                fprintf(sp2C, "\t\tscntype PROGBITS\n");
                if (sp24->sdataAlign != 0) {
                    fprintf(sp2C, "\t\tscnalign %d\n", sp24->sdataAlign);
                }
                fprintf(sp2C, "\t\tscnflags GPREL ALLOC WRITE\n");
                temp_t9_2 = sp24->pathList;
                sp20 = temp_t9_2;
                if (temp_t9_2 != NULL) {
                    do {
                        fprintf(sp2C, "\t\tsection .sdata in object %s\n", sp20->name);
                        temp_t2_2 = sp20->next;
                        sp20 = temp_t2_2;
                    } while (temp_t2_2 != NULL);
                }
                fprintf(sp2C, "\tendscn\n");
                fprintf(sp2C, "\tbeginscn .%s.sbss\n", sp24->name);
                fprintf(sp2C, "\t\tscntype NOBITS\n");
                if (sp24->sbssAlign != 0) {
                    fprintf(sp2C, "\t\tscnalign %d\n", sp24->sbssAlign);
                }
                fprintf(sp2C, "\t\tscnflags GPREL ALLOC WRITE\n");
                temp_t8_2 = sp24->pathList;
                sp20 = temp_t8_2;
                if (temp_t8_2 != NULL) {
                    do {
                        fprintf(sp2C, "\t\tsection .sbss in object %s\n", sp20->name);
                        temp_t1 = sp20->next;
                        sp20 = temp_t1;
                    } while (temp_t1 != NULL);
                }
                fprintf(sp2C, "\tendscn\n");
                fprintf(sp2C, "\tbeginscn .%s.bss\n", sp24->name);
                fprintf(sp2C, "\t\tscntype NOBITS\n");
                if (sp24->bssAlign != 0) {
                    fprintf(sp2C, "\t\tscnalign %d\n", sp24->bssAlign);
                }
                fprintf(sp2C, "\t\tscnflags ALLOC WRITE\n");
                temp_t7 = sp24->pathList;
                sp20 = temp_t7;
                if (temp_t7 != NULL) {
                    do {
                        fprintf(sp2C, "\t\tsection .bss in object %s\n", sp20->name);
                        temp_t0_2 = sp20->next;
                        sp20 = temp_t0_2;
                    } while (temp_t0_2 != NULL);
                }
                fprintf(sp2C, "\tendscn\n");
                fprintf(sp2C, "endseg\n");
            }
            temp_t2 = sp28->next;
            sp28 = temp_t2;
        } while (temp_t2 != NULL);
    }
    fprintf(sp2C, "beginseg\n");
    fprintf(sp2C, "\tsegtype noload\n");
    fprintf(sp2C, "\tcontents\n");
    fprintf(sp2C, "\tdefault\n");
    fprintf(sp2C, "\tbeginscn .MIPS.options\n");
    fprintf(sp2C, "\t\tscntype 0x7000000d\n");
    fprintf(sp2C, "\t\tsection .MIPS.options in ldobj\n");
    fprintf(sp2C, "\tendscn\n");
    fprintf(sp2C, "\tbeginscn .reginfo\n");
    fprintf(sp2C, "\t\tscntype 0x70000006\n");
    fprintf(sp2C, "\t\tsection .reginfo in ldobj\n");
    fprintf(sp2C, "\tendscn\n");
    fprintf(sp2C, "endseg\n");
    fclose(sp2C);
    return 0;
}

s32 runLinker(Wave *wave, s8 *symbolFile, s8 *objListFile) {
    s8 *sp34;
    SegmentChain *sp30;
    Segment *sp2C;
    Path *sp28;
    FILE *sp24;
    ? *temp_t8;
    Path *temp_t2;
    Path *temp_t5_2;
    SegmentChain *temp_t1;
    SegmentChain *temp_t5;
    void *temp_t8_2;

    sp34 = malloc(sysconf(1));
    if (sp34 == NULL) {
        fprintf(__iob + 0x20, "malloc failed\n");
        return -1;
    }
    temp_t8 = "$ROOT/usr/lib/PR/nld -32 -g -non_shared -G 0 -elspec ";
    M2C_MEMCPY_UNALIGNED(sp34, temp_t8, 0x30);
    temp_t8_2 = temp_t8 + 0x30;
    sp34[0x30] = (unaligned s32) temp_t8_2->unk0;
    sp34[0x30].unk4 = (u8) temp_t8_2->unk4;
    sp34[0x30].unk5 = (u8) temp_t8_2->unk5;
    strcat(sp34, (s8 *) wave->elspecFile);
    strcat(sp34, " -rom ");
    if (loadMap != 0) {
        strcat(sp34, " -m ");
    }
    strcat(sp34, " -o ");
    strcat(sp34, (s8 *) wave->name);
    strcat(sp34, " ");
    strcat(sp34, symbolFile);
    strcat(sp34, " -objectlist ");
    strcat(sp34, objListFile);
    sp24 = fopen(objListFile, "w");
    temp_t5 = wave->segmentChain;
    sp30 = temp_t5;
    if (temp_t5 != NULL) {
        do {
            sp2C = sp30->segment;
            if (!(sp2C->flags & 2)) {

            } else {
                temp_t2 = sp2C->pathList;
                sp28 = temp_t2;
                if (temp_t2 != NULL) {
                    do {
                        fprintf(sp24, "%s\n", sp28->name);
                        temp_t5_2 = sp28->next;
                        sp28 = temp_t5_2;
                    } while (temp_t5_2 != NULL);
                }
            }
            temp_t1 = sp30->next;
            sp30 = temp_t1;
        } while (temp_t1 != NULL);
    }
    fclose(sp24);
    if (debug != 0) {
        printf("Linking to ELF wave file\n");
        printf("  %s\n", sp34);
    }
    return execCommand((u8 *) sp34);
}

s32 scanSegments(void) {
    Segment *sp2C;
    u32 sp28;
    u32 sp24;
    Segment *temp_t2;

    sp28 = 0x50;
    if (elf_version(1U) == 0) {
        fprintf(__iob + 0x20, "makerom: out of date\n");
        return -1;
    }
    sp2C = segmentList;
    if (segmentList != NULL) {
loop_3:
        if (sp2C->unk0C == 0) {
            fprintf(__iob + 0x20, "makerom: segment \"%s\": not found in any wave\n", sp2C->name);
            return -1;
        }
        sp2C->romOffset = sp28;
        if (sp2C->flags & 2) {
            if (func_0040CBA4(sp2C) == -1) {
                return -1;
            }
            goto block_12;
        }
        if ((sp2C->flags & 4) && (func_0040DA68(sp2C) == -1)) {
            return -1;
        }
block_12:
        sp28 = sp2C->romOffset;
        sp28 += sp2C->textSize + sp2C->dataSize + sp2C->sdataSize;
        sp28 = ALIGNn((u32) sp2C->romalign, (s32) sp28);
        temp_t2 = sp2C->next;
        sp2C = temp_t2;
        if (temp_t2 == NULL) {
            goto block_13;
        }
        goto loop_3;
    }
block_13:
    if (sp28 >= 0x51U) {
        sp24 = sp28;
    } else {
        sp24 = 0x50;
    }
    B_10016A60 = calloc(sp24, 1U);
    if (B_10016A60 == NULL) {
        fprintf(__iob + 0x20, "makerom: malloc failed [RomSize= %d kB]\n", (s32) (sp24 + 0x3FF) / 1024);
        return -1;
    }
    return 0;
}

s32 func_0040CBA4(Segment *arg0) {
    u32 sp4C;
    u32 sp48;
    s32 sp44;
    Elf *sp40;
    Elf_Scn *sp3C;
    Elf32_Ehdr *sp38;
    Elf32_Shdr *sp34;
    Path *sp30;
    u32 sp2C;
    s8 *sp28;
    u32 sp24;
    s32 sp20;
    Path *temp_t0_2;
    Path *temp_t1_2;
    Path *temp_t1_3;
    Path *temp_t2_2;
    Path *temp_t3_2;
    Path *temp_t3_3;
    Path *temp_t6;
    Path *temp_t6_3;
    Path *temp_t6_4;
    Path *temp_t6_5;
    Path *temp_t7;
    Path *temp_t8_2;
    Segment *temp_t0;
    Segment *temp_t4_2;
    Segment *temp_t6_2;
    Segment *temp_t7_2;
    Segment *temp_t8;
    s32 temp_t3;
    s32 temp_t4;
    u32 temp_t1;
    u32 temp_t2;

    sp20 = 1;
    arg0->textAlign = 0x10;
    if (debug != 0) {
        temp_t1 = arg0->align;
        if ((temp_t1 != 0x10) && (temp_t1 != 0)) {
            printf("Segment %s: alignment %x\n", arg0->name, arg0->align);
        }
        temp_t4 = arg0->romalign;
        if ((temp_t4 != 0x10) && (temp_t4 != 0)) {
            printf("Segment %s: romalign %x\n", arg0->name, arg0->romalign);
        }
    }
    temp_t7 = arg0->pathList;
    sp30 = temp_t7;
    if (temp_t7 != NULL) {
loop_8:
        sp30->textSize = 0;
        sp30->dataSize = 0;
        sp30->sdataSize = 0;
        sp30->sbssSize = 0;
        sp30->bssSize = 0;
        sp30->textAlign = 0;
        sp30->dataAlign = 0;
        sp30->sdataAlign = 0;
        sp30->sbssAlign = 0;
        sp30->bssAlign = 0;
        sp44 = open((s8 *) sp30->name, 0);
        if (sp44 == -1) {
            fprintf(__iob + 0x20, "makerom: %s: %s\n", sp30->name, sys_errlist[errno]);
            return -1;
        }
        if (debug != 0) {
            printf("Scanning %s\n", sp30->name);
        }
        sp40 = elf_begin(sp44, ELF_C_READ, NULL);
        if ((elf_kind(sp40) != ELF_K_ELF) || (sp38 = elf32_getehdr(sp40), (sp38 == NULL))) {
            fprintf(__iob + 0x20, "makerom: %s: not a valid ELF object file\n", sp30->name);
            return -1;
        }
        sp2C = 1;
        if ((u16) sp38->e_shnum >= 2U) {
loop_16:
            sp3C = elf_getscn(sp40, sp2C);
            if ((sp3C == NULL) || (sp34 = elf32_getshdr(sp3C), (sp34 == NULL))) {
                fprintf(__iob + 0x20, "makerom: %s: can't get section index %d\n", sp30->name, sp2C);
                return -1;
            }
            sp28 = elf_strptr(sp40, (u32) sp38->e_shstrndx, sp34->sh_name);
            if (strcmp(sp28, ".text") == 0) {
                arg0->textSize += sp34->sh_size;
                sp30->textAlign = sp34->sh_addralign;
                sp30->textSize = sp34->sh_size;
                sp30->sectionsExisting |= 1;
                arg0->sectionsExisting |= 1;
                if ((u32) arg0->textAlign < (u32) sp30->textAlign) {
                    arg0->textAlign = sp30->textAlign;
                }
                if (debug != 0) {
                    printf("  text size  = %x\n", sp34->sh_size);
                    printf("       align = %x\n", sp34->sh_addralign);
                }
            } else if ((strcmp(sp28, ".data") == 0) || (strcmp(sp28, ".rodata") == 0)) {
                arg0->dataSize += sp34->sh_size;
                sp30->dataAlign = sp34->sh_addralign;
                sp30->dataSize += sp34->sh_size;
                sp30->sectionsExisting |= 2;
                arg0->sectionsExisting |= 2;
                if ((u32) arg0->dataAlign < (u32) sp30->dataAlign) {
                    arg0->dataAlign = sp30->dataAlign;
                }
                if (debug != 0) {
                    printf("  data&rodata size  = %x\n", sp34->sh_size);
                    printf("       align = %x\n", sp34->sh_addralign);
                }
            } else if (strcmp(sp28, ".sdata") == 0) {
                arg0->sdataSize += sp34->sh_size;
                sp30->sdataAlign = sp34->sh_addralign;
                sp30->sdataSize = sp34->sh_size;
                arg0->sectionsExisting |= 4;
                sp30->sectionsExisting |= 4;
                if ((u32) arg0->sdataAlign < (u32) sp30->sdataAlign) {
                    arg0->sdataAlign = sp30->sdataAlign;
                }
                if (debug != 0) {
                    printf("  sdata size  = %x\n", sp34->sh_size);
                    printf("        align = %x\n", sp34->sh_addralign);
                }
            } else if (strcmp(sp28, ".sbss") == 0) {
                arg0->sbssSize += sp34->sh_size;
                sp30->sbssAlign = sp34->sh_addralign;
                sp30->sbssSize = sp34->sh_size;
                sp30->sectionsExisting |= 0x10;
                arg0->sectionsExisting |= 0x10;
                if ((u32) arg0->sbssAlign < (u32) sp30->sbssAlign) {
                    arg0->sbssAlign = sp30->sbssAlign;
                }
                if (debug != 0) {
                    printf("  sbss size  = %x\n", sp34->sh_size);
                    printf("       align = %x\n", sp34->sh_addralign);
                }
            } else if (strcmp(sp28, ".bss") == 0) {
                arg0->bssSize += sp34->sh_size;
                sp30->bssAlign = sp34->sh_addralign;
                sp30->bssSize = sp34->sh_size;
                sp30->sectionsExisting |= 8;
                arg0->sectionsExisting |= 8;
                if ((u32) arg0->bssAlign < (u32) sp30->bssAlign) {
                    arg0->bssAlign = sp30->bssAlign;
                }
                if (debug != 0) {
                    printf("  bss size  = %x\n", sp34->sh_size);
                    printf("      align = %x\n", sp34->sh_addralign);
                }
            }
            temp_t2 = sp2C + 1;
            sp2C = temp_t2;
            if (temp_t2 >= (u16) sp38->e_shnum) {
                goto block_50;
            }
            goto loop_16;
        }
block_50:
        close(sp44);
        temp_t6 = sp30->next;
        sp30 = temp_t6;
        if (temp_t6 == NULL) {
            goto block_51;
        }
        goto loop_8;
    }
block_51:
    temp_t3 = arg0->addrFunc;
    switch (temp_t3) {
    case 2:
        temp_t4_2 = arg0->afterSeg1;
        sp4C = temp_t4_2->address + temp_t4_2->totalSize;
        temp_t6_2 = arg0->afterSeg2;
        sp48 = temp_t6_2->address + temp_t6_2->totalSize;
        if (sp48 < sp4C) {
            sp24 = sp4C;
        } else {
            sp24 = sp48;
        }
        break;
    case 3:
        temp_t0 = arg0->afterSeg1;
        sp4C = temp_t0->address + temp_t0->totalSize;
        temp_t8 = arg0->afterSeg2;
        sp48 = temp_t8->address + temp_t8->totalSize;
        if (sp4C < sp48) {
            sp24 = sp4C;
        } else {
            sp24 = sp48;
        }
        break;
    case 1:
        temp_t7_2 = arg0->afterSeg1;
        sp4C = temp_t7_2->address + temp_t7_2->totalSize;
        sp24 = sp4C;
        break;
    case 4:
        sp24 = arg0->address;
        break;
    case 5:
        sp24 = arg0->address;
        break;
    default:
        break;
    }
    sp24 = ALIGNn(arg0->align, (s32) sp24);
    arg0->address = sp24;
    if (arg0->flags & 1) {
        sp24 = ALIGNn(arg0->textAlign, (s32) sp24);
        arg0->romOffset = ALIGNn(arg0->textAlign, arg0->romOffset);
        arg0->romOffset = ALIGNn(arg0->align, arg0->romOffset);
    }
    if (arg0->sectionsExisting & 1) {
        sp24 = ALIGNn(arg0->textAlign, (s32) sp24);
        arg0->textStart = sp24;
        arg0->address = sp24;
        sp20 = 0;
        temp_t6_3 = arg0->pathList;
        sp30 = temp_t6_3;
        if (temp_t6_3 != NULL) {
            do {
                if (sp30->sectionsExisting & 1) {
                    sp24 = ALIGNn(sp30->textAlign, (s32) sp24);
                    sp30->textStart = sp24;
                    sp24 += sp30->textSize;
                }
                temp_t3_2 = sp30->next;
                sp30 = temp_t3_2;
            } while (temp_t3_2 != NULL);
        }
    } else {
        arg0->textStart = sp24;
    }
    if (arg0->sectionsExisting & 2) {
        sp24 = ALIGNn(arg0->dataAlign, (s32) sp24);
        arg0->dataStart = sp24;
        if (sp20 != 0) {
            arg0->address = sp24;
            sp20 = 0;
        }
        temp_t1_2 = arg0->pathList;
        sp30 = temp_t1_2;
        if (temp_t1_2 != NULL) {
            do {
                if (sp30->sectionsExisting & 2) {
                    sp24 = ALIGNn(sp30->dataAlign, (s32) sp24);
                    sp30->dataStart = sp24;
                    sp24 += sp30->dataSize;
                }
                temp_t2_2 = sp30->next;
                sp30 = temp_t2_2;
            } while (temp_t2_2 != NULL);
        }
    } else {
        arg0->dataStart = sp24;
    }
    if (arg0->sectionsExisting & 4) {
        sp24 = ALIGNn(arg0->sdataAlign, (s32) sp24);
        arg0->sdataStart = sp24;
        if (sp20 != 0) {
            arg0->address = sp24;
            sp20 = 0;
        }
        temp_t6_4 = arg0->pathList;
        sp30 = temp_t6_4;
        if (temp_t6_4 != NULL) {
            do {
                if (sp30->sectionsExisting & 4) {
                    sp24 = ALIGNn(sp30->sdataAlign, (s32) sp24);
                    sp30->sdataStart = sp24;
                    sp24 += sp30->sdataSize;
                }
                temp_t8_2 = sp30->next;
                sp30 = temp_t8_2;
            } while (temp_t8_2 != NULL);
        }
    } else {
        arg0->sdataStart = sp24;
    }
    if (arg0->sectionsExisting & 0x10) {
        sp24 = ALIGNn(arg0->sbssAlign, (s32) sp24);
        arg0->sbssStart = sp24;
        if (sp20 != 0) {
            arg0->address = sp24;
            sp20 = 0;
        }
        temp_t1_3 = arg0->pathList;
        sp30 = temp_t1_3;
        if (temp_t1_3 != NULL) {
            do {
                if (sp30->sectionsExisting & 0x10) {
                    sp24 = ALIGNn(sp30->sbssAlign, (s32) sp24);
                    sp30->sbssStart = sp24;
                    sp24 += sp30->sbssSize;
                }
                temp_t0_2 = sp30->next;
                sp30 = temp_t0_2;
            } while (temp_t0_2 != NULL);
        }
    } else {
        arg0->sbssStart = sp24;
    }
    if (arg0->sectionsExisting & 8) {
        sp24 = ALIGNn(arg0->bssAlign, (s32) sp24);
        arg0->bssStart = sp24;
        if (sp20 != 0) {
            arg0->address = sp24;
            sp20 = 0;
        }
        temp_t6_5 = arg0->pathList;
        sp30 = temp_t6_5;
        if (temp_t6_5 != NULL) {
            do {
                if (sp30->sectionsExisting & 8) {
                    sp24 = ALIGNn(sp30->bssAlign, (s32) sp24);
                    sp30->bssStart = sp24;
                    sp24 += sp30->bssSize;
                }
                temp_t3_3 = sp30->next;
                sp30 = temp_t3_3;
            } while (temp_t3_3 != NULL);
        }
    } else {
        arg0->bssStart = sp24;
    }
    arg0->textSize = arg0->dataStart - arg0->address;
    arg0->dataSize = arg0->sdataStart - arg0->dataStart;
    arg0->sdataSize = arg0->sbssStart - arg0->sdataStart;
    arg0->sbssSize = arg0->bssStart - arg0->sbssStart;
    arg0->bssSize = sp24 - arg0->bssStart;
    arg0->totalSize = sp24 - arg0->address;
    return 0;
}

s32 func_0040DA68(Segment *arg0) {
    u32 spBC;
    u32 spB8;
    u32 spB4;
    s32 spB0;
    Path *spAC;
    struct stat sp24;
    Path *temp_t1;
    Path *temp_t1_2;
    Segment *temp_t1_3;
    Segment *temp_t3;
    Segment *temp_t4;
    Segment *temp_t7;
    Segment *temp_t9;
    s32 temp_t5;
    u32 temp_s0;

    arg0->dataAlign = 0x10;
    arg0->sectionsExisting = 2;
    temp_t1 = arg0->pathList;
    spAC = temp_t1;
    if (temp_t1 != NULL) {
loop_1:
        spAC->textSize = 0;
        spAC->dataSize = 0;
        spAC->sdataSize = 0;
        spAC->sbssSize = 0;
        spAC->bssSize = 0;
        spAC->textAlign = 0;
        spAC->dataAlign = 0x10;
        spAC->sdataAlign = 0;
        spAC->sbssAlign = 0;
        spAC->bssAlign = 0;
        spAC->sectionsExisting = 2;
        spB0 = open((s8 *) spAC->name, 0);
        if (spB0 == -1) {
            fprintf(__iob + 0x20, "makerom: %s: %s\n", spAC->name, sys_errlist[errno]);
            return -1;
        }
        if (fstat(spB0, &sp24) == -1) {
            fprintf(__iob + 0x20, "makerom: lstat failed: %s\n", sys_errlist[errno]);
            return -1;
        }
        arg0->dataSize += sp24.st_size;
        close(spB0);
        temp_t1_2 = spAC->next;
        spAC = temp_t1_2;
        if (temp_t1_2 == NULL) {
            goto block_6;
        }
        goto loop_1;
    }
block_6:
    temp_s0 = ((u32) (arg0->dataSize + 0xF) >> 4) * 0x10;
    arg0->dataSize = temp_s0;
    arg0->totalSize = temp_s0;
    temp_t5 = arg0->addrFunc;
    switch (temp_t5) {
    case 2:
        temp_t9 = arg0->afterSeg1;
        spBC = temp_t9->address + temp_t9->totalSize;
        temp_t3 = arg0->afterSeg2;
        spB8 = temp_t3->address + temp_t3->totalSize;
        if (spB8 < spBC) {
            spB4 = spBC;
        } else {
            spB4 = spB8;
        }
        break;
    case 3:
        temp_t1_3 = arg0->afterSeg1;
        spBC = temp_t1_3->address + temp_t1_3->totalSize;
        temp_t7 = arg0->afterSeg2;
        spB8 = temp_t7->address + temp_t7->totalSize;
        if (spBC < spB8) {
            spB4 = spBC;
        } else {
            spB4 = spB8;
        }
        break;
    case 1:
        temp_t4 = arg0->afterSeg1;
        spBC = temp_t4->address + temp_t4->totalSize;
        spB4 = spBC;
        break;
    case 4:
        spB4 = arg0->address;
        break;
    case 5:
        spB4 = arg0->address;
        break;
    default:
        break;
    }
    spB4 = ALIGNn(arg0->align, (s32) spB4);
    spB4 = ALIGNn(arg0->dataAlign, (s32) spB4);
    arg0->address = spB4;
    return 0;
}

s32 checkSizes(void) {
    Segment *sp34;
    s32 sp30;
    Segment *temp_t0;
    s32 temp_t7;
    u32 temp_t0_2;
    u32 temp_t6;
    u32 temp_t8;
    u32 temp_t9;

    sp30 = 0;
    sp34 = segmentList;
    if (segmentList != NULL) {
        do {
            if ((sp34->flags & 1) && ((u32) (sp34->textSize + sp34->dataSize + sp34->sdataSize) >= 0x100001U)) {
                fprintf(__iob + 0x20, "makerom: segment \"%s\" (text+data) size ", sp34->name);
                temp_t9 = sp34->dataSize;
                temp_t8 = sp34->textSize;
                temp_t0_2 = sp34->sdataSize;
                temp_t7 = temp_t8 + temp_t9 + temp_t0_2;
                fprintf(__iob + 0x20, "(%d+%d) = %d (0x%x)\n         ", temp_t8, temp_t9 + temp_t0_2, temp_t7, temp_t7);
                fprintf(__iob + 0x20, "exceeds maximum BOOT segment size %d (0x%x)\n", 0x100000, 0x100000);
                sp30 = 1;
            }
            if ((u32) sp34->maxSize < (u32) sp34->totalSize) {
                fprintf(__iob + 0x20, "makerom: segment \"%s\" (text+data+bss) size ", sp34->name);
                fprintf(__iob + 0x20, "(%d+%d+%d) = %d (0x%x)\n         ", sp34->textSize, sp34->dataSize + sp34->sdataSize, sp34->bssSize + sp34->sbssSize, sp34->totalSize, sp34->totalSize);
                temp_t6 = sp34->maxSize;
                fprintf(__iob + 0x20, "exceeds given maximum segment size %d (0x%x)\n", temp_t6, temp_t6);
                sp30 = 1;
            }
            temp_t0 = sp34->next;
            sp34 = temp_t0;
        } while (temp_t0 != NULL);
    }
    if (sp30 != 0) {
        return -1;
    }
    return 0;
}

s32 checkOverlaps(void) {
    Wave *sp3C;
    SegmentChain *sp38;
    SegmentChain *sp34;
    Segment *sp30;
    Segment *sp2C;
    s32 sp28;
    SegmentChain *temp_t0;
    SegmentChain *temp_t5;
    SegmentChain *temp_t8;
    SegmentChain *temp_t8_2;
    Wave *temp_t7;
    u32 temp_t2;
    u32 temp_t5_2;
    u32 temp_t6;
    u32 temp_t7_2;
    u32 temp_t8_3;
    u32 temp_t9;

    sp28 = 0;
    sp3C = waveList;
    if (waveList != NULL) {
        do {
            temp_t8 = sp3C->segmentChain;
            sp38 = temp_t8;
            if (temp_t8 != NULL) {
                do {
                    temp_t0 = sp38->next;
                    sp34 = temp_t0;
                    if (temp_t0 != NULL) {
                        do {
                            sp30 = sp38->segment;
                            sp2C = sp34->segment;
                            temp_t6 = sp30->address;
                            if ((temp_t6 >= 0x80000000U) && (temp_t6 < 0xC0000000U)) {
                                temp_t8_3 = sp2C->address;
                                if ((temp_t8_3 >= 0x80000000U) && (temp_t8_3 < 0xC0000000U)) {
                                    temp_t9 = temp_t6 & 0x1FFFFFFF;
                                    temp_t2 = temp_t8_3 & 0x1FFFFFFF;
                                    if ((temp_t2 < (u32) (temp_t9 + sp30->totalSize)) && (temp_t9 < (u32) (temp_t2 + sp2C->totalSize))) {
                                        temp_t5_2 = sp30->address;
                                        fprintf(__iob + 0x20, "makerom: segment \"%s\" [0x%x, 0x%x) overlaps with\n", sp30->name, temp_t5_2, temp_t5_2 + sp30->totalSize);
                                        temp_t7_2 = sp2C->address;
                                        fprintf(__iob + 0x20, "         segment \"%s\" [0x%x, 0x%x)\n", sp2C->name, temp_t7_2, temp_t7_2 + sp2C->totalSize);
                                        fprintf(__iob + 0x20, "         in wave \"%s\"\n", sp3C->name);
                                        sp28 = 1;
                                    }
                                }
                            }
                            temp_t5 = sp34->next;
                            sp34 = temp_t5;
                        } while (temp_t5 != NULL);
                    }
                    temp_t8_2 = sp38->next;
                    sp38 = temp_t8_2;
                } while (temp_t8_2 != NULL);
            }
            temp_t7 = sp3C->next;
            sp3C = temp_t7;
        } while (temp_t7 != NULL);
    }
    return sp28;
}

s32 createSegmentSymbols(u8 *source, u8 *object) {
    FILE *sp2C;
    Segment *sp28;
    s8 *sp24;
    ? *temp_t8;
    Segment *temp_t6;

    sp2C = fopen((s8 *) source, "w");
    if (sp2C == NULL) {
        fprintf(__iob + 0x20, "makerom: %s: cannot create\n", source);
        return -1;
    }
    sp28 = segmentList;
    if (segmentList != NULL) {
        do {
            fprintf(sp2C, ".globl _%sSegmentRomStart; ", sp28->name);
            fprintf(sp2C, "_%sSegmentRomStart = 0x%08x\n", sp28->name, sp28->romOffset + offset + 0x1000);
            fprintf(sp2C, ".globl _%sSegmentRomEnd; ", sp28->name);
            fprintf(sp2C, "_%sSegmentRomEnd = 0x%08x\n", sp28->name, sp28->romOffset + offset + sp28->textSize + sp28->dataSize + sp28->sdataSize + 0x1000);
            if (sp28->flags & 2) {
                fprintf(sp2C, ".globl _%sSegmentStart; ", sp28->name);
                fprintf(sp2C, "_%sSegmentStart = 0x%08x\n", sp28->name, sp28->address);
                if (sp28->textSize != 0) {
                    fprintf(sp2C, ".globl _%sSegmentTextStart; ", sp28->name);
                    fprintf(sp2C, "_%sSegmentTextStart = 0x%08x\n", sp28->name, sp28->textStart);
                    fprintf(sp2C, ".globl _%sSegmentTextEnd; ", sp28->name);
                    fprintf(sp2C, "_%sSegmentTextEnd = 0x%08x\n", sp28->name, sp28->textStart + sp28->textSize);
                }
                if ((sp28->dataSize + sp28->sdataSize) != 0) {
                    fprintf(sp2C, ".globl _%sSegmentDataStart; ", sp28->name);
                    fprintf(sp2C, "_%sSegmentDataStart = 0x%08x\n", sp28->name, sp28->dataStart);
                    fprintf(sp2C, ".globl _%sSegmentDataEnd; ", sp28->name);
                    fprintf(sp2C, "_%sSegmentDataEnd = 0x%08x\n", sp28->name, sp28->dataStart + sp28->dataSize + sp28->sdataSize);
                }
                if ((sp28->bssSize + sp28->sbssSize) != 0) {
                    fprintf(sp2C, ".globl _%sSegmentBssStart; ", sp28->name);
                    fprintf(sp2C, "_%sSegmentBssStart = 0x%08x\n", sp28->name, sp28->sbssStart);
                    fprintf(sp2C, ".globl _%sSegmentBssEnd; ", sp28->name);
                    fprintf(sp2C, "_%sSegmentBssEnd = 0x%08x\n", sp28->name, sp28->sbssStart + sp28->sbssSize + sp28->bssSize);
                }
                fprintf(sp2C, ".globl _%sSegmentEnd; ", sp28->name);
                fprintf(sp2C, "_%sSegmentEnd = 0x%08x\n", sp28->name, sp28->bssStart + sp28->bssSize);
            }
            temp_t6 = sp28->next;
            sp28 = temp_t6;
        } while (temp_t6 != NULL);
    }
    fclose(sp2C);
    sp24 = malloc(sysconf(1));
    if (sp24 == NULL) {
        fprintf(__iob + 0x20, "malloc failed\n");
        return -1;
    }
    temp_t8 = "$TOOLROOT/usr/bin/cc -c -non_shared -o ";
    M2C_MEMCPY_UNALIGNED(sp24, temp_t8, 0x24);
    sp24[0x24] = (unaligned s32) *(temp_t8 + 0x24);
    strcat(sp24, (s8 *) object);
    strcat(sp24, " ");
    strcat(sp24, (s8 *) source);
    if (debug != 0) {
        printf("  %s\n", sp24);
    }
    return execCommand((u8 *) sp24);
}

s32 createRomImage(u8 *romFile, u8 *object) {
    FILE *sp5C;
    Segment *sp58;
    s8 *sp50;
    u32 sp4C;
    s32 sp48;
    Elf *sp44;
    Elf32_Ehdr *sp40;
    Elf_Scn *sp3C;
    Elf32_Shdr *sp38;
    u32 sp34;                                       /* compiler-managed */
    s32 sp30;
    s32 sp2C;
    void *sp28;
    s32 sp24;
    Segment *temp_t3;
    s32 temp_t1;
    s32 temp_t7;

    sp48 = open((s8 *) object, 0);
    if (sp48 == -1) {
        fprintf(__iob + 0x20, "makerom: %s: %s\n", object, sys_errlist[errno]);
        return -1;
    }
    sp44 = elf_begin(sp48, ELF_C_READ, NULL);
    sp40 = elf32_getehdr(sp44);
    sp34 = 1;
    if ((s32) sp40->e_shnum >= 2) {
loop_3:
        sp3C = elf_getscn(sp44, sp34);
        sp38 = elf32_getshdr(sp3C);
        sp50 = elf_strptr(sp44, (u32) sp40->e_shstrndx, sp38->sh_name);
        if (strcmp(sp50, ".text") == 0) {

        } else {
            temp_t7 = sp34 + 1;
            sp34 = temp_t7;
            if (temp_t7 < (s32) sp40->e_shnum) {
                goto loop_3;
            }
        }
    }
    if ((u32) sp38->sh_size >= 0x51U) {
        fprintf(__iob + 0x20, "makerom: entr size %d is larger than %d\n", sp38->sh_size, 0x50);
        return -1;
    }
    if (lseek(sp48, (s32) sp38->sh_offset, 0) == -1) {
        fprintf(__iob + 0x20, "makerom: lseek of entry section failed\n");
        return -1;
    }
    if (read(sp48, B_10016A60, sp38->sh_size) != sp38->sh_size) {
        fprintf(__iob + 0x20, "makerom: read of entry section failed\n");
        return -1;
    }
    if (func_0040F214() != 0) {
        return -1;
    }
    sp58 = segmentList;
    if (segmentList != NULL) {
        do {
            if (sp58->flags & 2) {
                func_0040F758(sp58);
            } else if (sp58->flags & 4) {
                func_0040FDE0(sp58);
            }
            sp4C = sp58->romOffset + sp58->textSize + sp58->dataSize + sp58->sdataSize;
            temp_t3 = sp58->next;
            sp58 = temp_t3;
        } while (temp_t3 != NULL);
    }
    sp5C = fopen((s8 *) romFile, "w+");
    if (sp5C == NULL) {
        fprintf(__iob + 0x20, "makerom: %s: %s\n", romFile, sys_errlist[errno]);
        return -1;
    }
    if ((offset != 0) && (fseek(sp5C, offset, 0) != 0)) {
        fprintf(__iob + 0x20, "makerom: %s: fseek error (%s)\n", romFile, sys_errlist[errno]);
        return -1;
    }
    if (fwrite(headerBuf, 1U, (u32) headerWordAlignedByteSize, sp5C) != headerWordAlignedByteSize) {
        fprintf(__iob + 0x20, "makerom: %s: write error\n", romFile);
        return -1;
    }
    if (fseek(sp5C, offset + 8, 0) != 0) {
        fprintf(__iob + 0x20, "makerom: %s: fseek error (%s)\n", romFile, sys_errlist[errno]);
        return -1;
    }
    if (fwrite(&bootAddress, 4U, 1U, sp5C) != 1) {
        fprintf(__iob + 0x20, "makerom: %s: write error\n", romFile);
        return -1;
    }
    if (changeclock != 0) {
        sp24 = 0;
        if (fseek(sp5C, offset + 4, 0) != 0) {
            fprintf(__iob + 0x20, "makerom: %s: fseek error (%s)\n", romFile, sys_errlist[errno]);
            return -1;
        }
        if (fread(&sp24, 4U, 1U, sp5C) != 1) {
            fprintf(__iob + 0x20, "makerom: %s: read error \n", romFile);
            return -1;
        }
        clockrate |= sp24;
        if (fseek(sp5C, offset + 4, 0) != 0) {
            fprintf(__iob + 0x20, "makerom: %s: fseek error (%s)\n", romFile, sys_errlist[errno]);
            return -1;
        }
        if (fwrite(&clockrate, 4U, 1U, sp5C) != 1) {
            fprintf(__iob + 0x20, "makerom: %s: write error\n", romFile);
            return -1;
        }
        goto block_41;
    }
block_41:
    if (fseek(sp5C, offset + 0x40, 0) != 0) {
        fprintf(__iob + 0x20, "makerom: %s: fseek error (%s)\n", romFile, sys_errlist[errno]);
        return -1;
    }
    if (fwrite(bootBuf, 1U, (u32) bootWordAlignedByteSize, sp5C) != bootWordAlignedByteSize) {
        fprintf(__iob + 0x20, "makerom: %s: write error\n", romFile);
        return -1;
    }
    if (nofont == 0) {
        if (fseek(sp5C, offset + 0xB70, 0) != 0) {
            fprintf(__iob + 0x20, "makerom: %s: fseek error (%s)\n", romFile, sys_errlist[errno]);
            return -1;
        }
        if (fwrite(fontBuf, 1U, fontdataWordAlignedByteSize, sp5C) != fontdataWordAlignedByteSize) {
            fprintf(__iob + 0x20, "makerom: %s: write error\n", romFile);
            return -1;
        }
        goto block_50;
    }
block_50:
    if (fseek(sp5C, offset + 0x1000, 0) != 0) {
        fprintf(__iob + 0x20, "makerom: %s: fseek error (%s)\n", romFile, sys_errlist[errno]);
        return -1;
    }
    if (fwrite(B_10016A60, 1U, sp4C, sp5C) != sp4C) {
        fprintf(__iob + 0x20, "makerom: %s: write error\n", romFile);
        return -1;
    }
    sp30 = sp4C + offset + 0x1000;
    finalromSize <<= 0x11;
    if ((finalromSize != 0) && (sp30 < finalromSize)) {
        sp28 = malloc(0x2000U);
        if (sp28 == NULL) {
            fprintf(__iob + 0x20, "malloc failed\n");
            return -1;
        }
        sp2C = 0;
        do {
            *(sp28 + sp2C) = fillData;
            temp_t1 = sp2C + 1;
            sp2C = temp_t1;
        } while (temp_t1 < 0x2000);
        if (sp30 < finalromSize) {
loop_61:
            if ((finalromSize - sp30) >= 0x2001) {
                if (fwrite(sp28, 1U, 0x2000U, sp5C) != 0x2000) {
                    fprintf(__iob + 0x20, "makerom: %s: write error %x\n", romFile, sp30);
                    return -1;
                }
                sp30 += 0x2000;
                goto block_68;
            }
            if (fwrite(sp28, 1U, finalromSize - sp30, sp5C) != (finalromSize - sp30)) {
                fprintf(__iob + 0x20, "makerom: %s: write error\n", romFile);
                return -1;
            }
            sp30 += finalromSize - sp30;
block_68:
            if (sp30 >= finalromSize) {
                goto block_69;
            }
            goto loop_61;
        }
        goto block_69;
    }
block_69:
    return 0;
}

s32 func_0040F214(void) {
    Wave *sp124;
    s8 sp24;
    Elf32_Ehdr *temp_v0_2;
    Wave *temp_t4;
    s32 temp_v0;

    sp124 = waveList;
    if (waveList != NULL) {
loop_1:
        if (gcord != 0) {
            strcat(strcpy(&sp24, (s8 *) sp124->name), ".cord");
        } else {
            strcpy(&sp24, (s8 *) sp124->name);
        }
        temp_v0 = open((s8 *) sp124->name, 0);
        sp124->fd = temp_v0;
        if (temp_v0 == -1) {
            fprintf(__iob + 0x20, "makerom: %s: %s\n", sp124->name, sys_errlist[errno]);
            return -1;
        }
        sp124->elf = elf_begin(sp124->fd, ELF_C_READ, NULL);
        if ((elf_kind(sp124->elf) != ELF_K_ELF) || (temp_v0_2 = elf32_getehdr(sp124->elf), sp124->ehdr = temp_v0_2, (temp_v0_2 == NULL))) {
            fprintf(__iob + 0x20, "makerom: %s: not a valid ELF object file\n", sp124->name);
            return -1;
        }
        temp_t4 = sp124->next;
        sp124 = temp_t4;
        if (temp_t4 == NULL) {
            goto block_10;
        }
        goto loop_1;
    }
block_10:
    return 0;
}

s8 *func_0040F3DC(void *arg0, s8 *arg1) {
    Elf_Scn *sp3C;
    Elf32_Shdr *sp38;
    Elf *sp34;
    void *sp30;
    u32 sp2C;
    s32 sp28;
    u32 sp24;
    s32 temp_t2;
    u32 temp_t5;

    sp2C = 1;
    if ((u16) arg0->unk10->unk30 >= 2U) {
loop_1:
        sp3C = elf_getscn(arg0->unkC, sp2C);
        if ((sp3C == NULL) || (sp38 = elf32_getshdr(sp3C), (sp38 == NULL))) {
            return NULL;
        }
        if (sp38->sh_type != 2) {
            goto block_12;
        }
        sp34 = NULL;
        sp34 = elf_getdata(sp3C, sp34);
        if (sp34 == NULL) {
            return NULL;
        }
        sp24 = (u32) sp34->unk8 >> 4;
        sp30 = sp34->unk0;
        sp30 += 0x10;
        sp28 = 1;
        if ((s32) sp24 >= 2) {
loop_9:
            if (strcmp(arg1, elf_strptr(arg0->unkC, sp38->sh_link, sp30->unk0)) == 0) {
                return sp30->unk4;
            }
            sp30 += 0x10;
            temp_t2 = sp28 + 1;
            sp28 = temp_t2;
            if (temp_t2 >= (s32) sp24) {
                goto block_12;
            }
            goto loop_9;
        }
block_12:
        temp_t5 = sp2C + 1;
        sp2C = temp_t5;
        if (temp_t5 >= (u16) arg0->unk10->unk30) {
            goto block_13;
        }
        goto loop_1;
    }
block_13:
    return NULL;
}

Elf32_Shdr *func_0040F5C0(void *arg0, s8 *arg1) {
    Elf_Scn *sp2C;
    Elf32_Shdr *sp28;
    u32 sp24;
    s8 *sp20;
    u32 temp_t8;

    sp24 = 1;
    if ((u16) arg0->unk10->unk30 >= 2U) {
loop_1:
        sp2C = elf_getscn(arg0->unkC, sp24);
        if ((sp2C == NULL) || (sp28 = elf32_getshdr(sp2C), (sp28 == NULL))) {
            fprintf(__iob + 0x20, "makerom: %s: can't get section index %d\n", arg0->unk4, sp24);
            return NULL;
        }
        sp20 = elf_strptr(arg0->unkC, (u32) arg0->unk10->unk32, sp28->sh_name);
        if (strcmp(sp20, arg1) == 0) {
            goto block_7;
        }
        temp_t8 = sp24 + 1;
        sp24 = temp_t8;
        if (temp_t8 >= (u16) arg0->unk10->unk30) {
            goto block_7;
        }
        goto loop_1;
    }
block_7:
    if (sp24 >= (u16) arg0->unk10->unk30) {
        fprintf(__iob + 0x20, "makerom: %s: cannot find %s section\n", arg0->unk4, arg1);
        return NULL;
    }
    return sp28;
}

? func_0040F758(Segment *arg0) {
    s8 *sp34;
    Elf32_Shdr *sp30;

    sp34 = malloc(strlen(arg0->name) + 9);
    if (sp34 == NULL) {
        fprintf(__iob + 0x20, "malloc failed\n");
        return -1;
    }
    sprintf(sp34, ".%s.text", arg0->name);
    sp30 = func_0040F5C0(arg0->unk0C, sp34);
    if (sp30 == NULL) {
        return -1;
    }
    if (sp30->sh_size != arg0->textSize) {
        fprintf(__iob + 0x20, "makerom: %s: section size for %s does not match input section sizes\n", arg0->unk0C->unk4, sp34);
        fprintf(__iob + 0x20, "makerom:   shdr = %d, textSize = %d\n", sp30->sh_size, arg0->textSize);
        free(sp34);
        return -1;
    }
    if (lseek(arg0->unk0C->unk114, (s32) sp30->sh_offset, 0) == -1) {
        fprintf(__iob + 0x20, "makerom: %s: seek to section %s failed\n", arg0->unk0C->unk4, sp34);
        free(sp34);
        return -1;
    }
    if (read(arg0->unk0C->unk114, arg0->romOffset + B_10016A60, sp30->sh_size) != sp30->sh_size) {
        fprintf(__iob + 0x20, "makerom: %s: read of section %s failed\n", arg0->unk0C->unk4, sp34);
        free(sp34);
        return -1;
    }
    sprintf(sp34, ".%s.data", arg0->name);
    sp30 = func_0040F5C0(arg0->unk0C, sp34);
    if (sp30 == NULL) {
        return -1;
    }
    if (sp30->sh_size != arg0->dataSize) {
        fprintf(__iob + 0x20, "makerom: %s: section size for %s does not match input section sizes\n", arg0->unk0C->unk4, sp34);
        fprintf(__iob + 0x20, "large data failed\n");
        fprintf(__iob + 0x20, "%s, file large=%x, our dataSize=%x\n", arg0->name, sp30->sh_size, arg0->dataSize);
        free(sp34);
        return -1;
    }
    if (lseek(arg0->unk0C->unk114, (s32) sp30->sh_offset, 0) == -1) {
        fprintf(__iob + 0x20, "makerom: %s: seek to section %s failed\n", arg0->unk0C->unk4, sp34);
        free(sp34);
        return -1;
    }
    if (read(arg0->unk0C->unk114, arg0->romOffset + B_10016A60 + arg0->textSize, sp30->sh_size) != sp30->sh_size) {
        fprintf(__iob + 0x20, "makerom: %s: read of section %s failed\n", arg0->unk0C->unk4, sp34);
        free(sp34);
        return -1;
    }
    sprintf(sp34, ".%s.sdata", arg0->name);
    sp30 = func_0040F5C0(arg0->unk0C, sp34);
    if (sp30 == NULL) {
        return -1;
    }
    if (sp30->sh_size != arg0->sdataSize) {
        fprintf(__iob + 0x20, "makerom: %s: section size for %s does not match input section sizes\n", arg0->unk0C->unk4, sp34);
        fprintf(__iob + 0x20, "small data failed\n");
        free(sp34);
        return -1;
    }
    if (lseek(arg0->unk0C->unk114, (s32) sp30->sh_offset, 0) == -1) {
        fprintf(__iob + 0x20, "makerom: %s: seek to section %s failed\n", arg0->unk0C->unk4, sp34);
        free(sp34);
        return -1;
    }
    if (read(arg0->unk0C->unk114, arg0->romOffset + B_10016A60 + arg0->textSize + arg0->dataSize, sp30->sh_size) != sp30->sh_size) {
        fprintf(__iob + 0x20, "makerom: %s: read of section %s failed\n", arg0->unk0C->unk4, sp34);
        free(sp34);
        return -1;
    }
    free(sp34);
    return 0;
}

? func_0040FDE0(Segment *arg0) {
    Path *spBC;
    s32 spB8;
    u32 spB4;
    s32 spB0;
    u32 spAC;
    struct stat sp24;
    Path *temp_t1;
    Path *temp_t9;

    spAC = 0;
    spB4 = arg0->romOffset;
    temp_t9 = arg0->pathList;
    spBC = temp_t9;
    if (temp_t9 != NULL) {
loop_1:
        spB8 = open((s8 *) spBC->name, 0);
        if (spB8 == -1) {
            fprintf(__iob + 0x20, "makerom: %s: %s\n", spBC->name, sys_errlist[errno]);
            return -1;
        }
        if (fstat(spB8, &sp24) == -1) {
            fprintf(__iob + 0x20, "makerom: lstat failed: %s\n", sys_errlist[errno]);
            return -1;
        }
        spB0 = sp24.st_size;
        spAC += spB0;
        if ((u32) arg0->dataSize < spAC) {
            fprintf(__iob + 0x20, "makerom: %s: segment size changed\n", arg0->name);
            return -1;
        }
        if (read(spB8, B_10016A60 + spB4, (u32) spB0) != spB0) {
            fprintf(__iob + 0x20, "makerom: %s: read failed (%s)\n", spBC->name, sys_errlist[errno]);
            return -1;
        }
        close(spB8);
        spB4 += spB0;
        temp_t1 = spBC->next;
        spBC = temp_t1;
        if (temp_t1 == NULL) {
            goto block_10;
        }
        goto loop_1;
    }
block_10:
    return 0;
}

s32 createEntryFile(u8 *source, u8 *object) {
    Segment *sp54;
    FILE *sp50;
    s8 *sp4C;
    s8 *sp48;
    s8 *sp44;
    s32 sp40;
    s8 *sp3C;
    s8 *sp38;
    s8 sp28;
    ? *temp_t7;
    ? *temp_t9;
    Elf32_Ehdr *temp_v0_2;
    Segment *temp_t6;
    s32 temp_v0;

    sp3C = NULL;
    sp38 = NULL;
    temp_t7 = "__osFinalrom";
    sp28.unk0 = (s32) temp_t7->unk0;
    sp28.unk4 = (s32) temp_t7->unk4;
    sp28.unk8 = (s32) temp_t7->unk8;
    sp28.unkC = (u16) temp_t7->unkC;
    sp50 = fopen((s8 *) source, "w");
    if (sp50 == NULL) {
        fprintf(__iob + 0x20, "makerom: %s: cannot create\n", source);
        return -1;
    }
    sp54 = segmentList;
    if (segmentList != NULL) {
loop_3:
        if (sp54->flags & 1) {
            sp40 = sp54->unk0C;
            temp_v0 = open(sp40->unk4, 0);
            sp40->unk114 = temp_v0;
            if (temp_v0 == -1) {
                fprintf(__iob + 0x20, "makerom: %s: %s\n", sp40->unk4, sys_errlist[errno]);
                return -1;
            }
            sp40->unkC = elf_begin(sp40->unk114, ELF_C_READ, NULL);
            if ((elf_kind(sp40->unkC) != ELF_K_ELF) || (temp_v0_2 = elf32_getehdr(sp40->unkC), sp40->unk10 = temp_v0_2, (temp_v0_2 == NULL))) {
                fprintf(__iob + 0x20, "makerom: %s: not a valid ELF object file\n", sp40->unk4);
                return -1;
            }
            if ((finalromSize != 0) && (func_0040F3DC((void *) sp54->unk0C, &sp28) == NULL)) {
                fprintf(__iob + 0x20, "makerom: use libultra_rom.a to build real game cassette\n");
                return -1;
            }
            if (bootEntryName != NULL) {
                sp3C = func_0040F3DC((void *) sp54->unk0C, bootEntryName);
                if (sp3C == NULL) {
                    fprintf(__iob + 0x20, "makerom: %s: cannot find entry symbol %s\n", sp54->unk0C->unk4, bootEntryName);
                    return -1;
                }
            }
            if (bootStackName != NULL) {
                sp38 = func_0040F3DC((void *) sp54->unk0C, bootStackName);
                if (sp38 == NULL) {
                    fprintf(__iob + 0x20, "makerom: %s: cannot find stack symbol %s\n", sp54->unk0C->unk4, bootStackName);
                    return -1;
                }
                goto block_20;
            }
            sp38 = NULL;
block_20:
            sp38 = &bootStackOffset[sp38];
            if ((sp54->bssSize != 0) && (cosim == 0)) {
                sp48 = malloc(strlen((s8 *) sp54->name) + 0x10);
                if (sp48 == NULL) {
                    fprintf(__iob + 0x20, "malloc failed\n");
                    return -1;
                }
                sprintf(sp48, "_%sSegmentBssStart", sp54->name);
                sp44 = func_0040F3DC((void *) sp54->unk0C, sp48);
                fprintf(sp50, " la\t$8 0x%x\n", sp44);
                fprintf(sp50, " li\t$9 0x%x\n", sp54->bssSize);
                fprintf(sp50, ".ent entryPoint\n");
                fprintf(sp50, "entryPoint:\n");
                fprintf(sp50, " sw $0, 0($8)\n");
                fprintf(sp50, " sw $0, 4($8)\n");
                fprintf(sp50, " addi $8, 8\n");
                fprintf(sp50, " addi $9, 0xfff8\n");
                fprintf(sp50, " bne  $9, $0, entryPoint\n");
                goto block_25;
            }
block_25:
            if (sp38 != NULL) {
                fprintf(sp50, " la\t$29 0x%x\n", sp38);
            }
            if (sp3C != NULL) {
                fprintf(sp50, " la $10  0x%x\n", sp3C);
                fprintf(sp50, " j $10\n");
            }
            fprintf(sp50, ".end\n");
            goto block_30;
        }
block_30:
        temp_t6 = sp54->next;
        sp54 = temp_t6;
        if (temp_t6 == NULL) {
            goto block_31;
        }
        goto loop_3;
    }
block_31:
    free(sp48);
    fclose(sp50);
    sp4C = malloc(sysconf(1));
    if (sp4C == NULL) {
        fprintf(__iob + 0x20, "malloc failed\n");
        return -1;
    }
    temp_t9 = "$TOOLROOT/usr/bin/cc -c -non_shared -o ";
    M2C_MEMCPY_UNALIGNED(sp4C, temp_t9, 0x24);
    sp4C[0x24] = (unaligned s32) *(temp_t9 + 0x24);
    strcat(sp4C, (s8 *) object);
    strcat(sp4C, " ");
    strcat(sp4C, (s8 *) source);
    if (debug != 0) {
        printf("Compiling entry source file\n");
        printf("  %s\n", sp4C);
    }
    return execCommand((u8 *) sp4C);
}

u32 ALIGNn(u32 romalign, s32 n) {
    u32 var_a0;

    var_a0 = romalign;
    if (var_a0 == 0) {
        var_a0 = 0x10;
    }
    return ((u32) ((n + var_a0) - 1) / var_a0) * var_a0;
}

s32 readCoff(u8 *fname, u32 *buf) {
    s32 sp2C;

    OFileName = fname;
    SName = ".text";
    sp2C = func_0041080C(buf);
    if (sp2C < 0) {
        return -1;
    }
    return sp2C;
}

s32 func_0041080C(u32 *arg0) {
    s32 temp_t8;
    u16 temp_s0;

    LDPtr = ldopen(OFileName, NULL);
    if (LDPtr == NULL) {
        fprintf(__iob + 0x20, "Extract(): Cannot open %s.\n", OFileName);
        return -1;
    }
    temp_s0 = LDPtr->unkC;
    switch (temp_s0) {                              /* irregular */
    case 0x140:
    case 0x160:
    case 0x163:
        Swap = gethostsex() == 1;
        break;
    case 0x142:
    case 0x162:
    case 0x166:
        Swap = gethostsex() == 0;
        break;
    }
    if (ldnshread(LDPtr, SName, &SHeader) == 0) {

    } else {
        ldfseek(LDPtr, SHeader.unk14, 0);
        Address = SHeader.unk8;
        if ((u32) (SHeader.unk8 * 0) < (u32) SHeader.unk10) {
            do {
                ldfread(&Data0, 1, (void *)4, LDPtr);
                if (Swap != 0) {
                    Data0 = (Data0 << 0x18) | ((Data0 << 8) & 0xFF0000) | (((u32) Data0 >> 8) & 0xFF00) | ((u32) Data0 >> 0x18);
                }
                ldfread(&Data1, 1, (void *)4, LDPtr);
                if (Swap != 0) {
                    Data1 = (Data1 << 0x18) | ((Data1 << 8) & 0xFF0000) | (((u32) Data1 >> 8) & 0xFF00) | ((u32) Data1 >> 0x18);
                }
                if (Swap != 0) {
                    arg0->unk0 = Data1;
                    arg0->unk4 = (u32) Data0;
                } else {
                    arg0->unk0 = Data0;
                    arg0->unk4 = (u32) Data1;
                }
                arg0 += 8;
                temp_t8 = Address + 8;
                Address = temp_t8;
            } while ((u32) (temp_t8 - SHeader.unk8) < (u32) SHeader.unk10);
        }
    }
    ldclose(LDPtr);
    return (s32) SHeader.unk10;
}

s32 yylex(void) {
    s32 sp24;

    sp24 = yylook();
    if (sp24 >= 0) {
loop_1:
        switch (sp24) {
        case 0:
            if (yywrap() != 0) {
                return 0;
            }
block_69:
            sp24 = yylook();
            if (sp24 < 0) {
                goto block_70;
            }
            goto loop_1;
        case 1:
            lineNumber += 1;
            goto block_69;
        case 2:
            func_0041109C();
            goto block_69;
        case 3:
            func_004114EC();
            goto block_69;
        case 4:
            goto block_69;
        case 5:
            yylval = (s8 *)0x101;
            return 0x101;
        case 6:
            yylval = (s8 *)0x102;
            return 0x102;
        case 7:
            yylval = (s8 *)0x103;
            return 0x103;
        case 8:
            yylval = (s8 *)0x104;
            return 0x104;
        case 9:
            yylval = (s8 *)0x105;
            return 0x105;
        case 10:
            yylval = (s8 *)0x106;
            return 0x106;
        case 11:
            yylval = (s8 *)0x107;
            return 0x107;
        case 12:
            yylval = (s8 *)0x109;
            return 0x109;
        case 13:
            yylval = (s8 *)0x10A;
            return 0x10A;
        case 14:
            yylval = (s8 *)0x10B;
            return 0x10B;
        case 15:
            yylval = (s8 *)0x10C;
            return 0x10C;
        case 16:
            yylval = (s8 *)0x10D;
            return 0x10D;
        case 17:
            yylval = (s8 *)0x10E;
            return 0x10E;
        case 18:
            yylval = (s8 *)0x10F;
            return 0x10F;
        case 19:
            yylval = (s8 *)0x110;
            return 0x110;
        case 20:
            yylval = (s8 *)0x111;
            return 0x111;
        case 21:
            yylval = (s8 *)0x112;
            return 0x112;
        case 22:
            yylval = (s8 *)0x113;
            return 0x113;
        case 23:
            yylval = (s8 *)0x114;
            return 0x114;
        case 24:
            yylval = (s8 *)0x115;
            return 0x115;
        case 25:
            yylval = (s8 *)0x116;
            return 0x116;
        case 26:
            yylval = (s8 *)0x117;
            return 0x117;
        case 27:
            yylval = (s8 *)0x118;
            return 0x118;
        case 28:
            yylval = (s8 *)0x119;
            return 0x119;
        case 29:
            sscanf(yytext, "%x", &yylval);
            return 0x108;
        case 30:
            yylval = atoi(yytext);
            return 0x108;
        case 31:
            yylval = malloc(strlen(yytext) + 1);
            strcpy(yylval, yytext);
            return 0x11A;
        case 32:
            yytext[strlen(yytext)].unk-1 = 0;
            yylval = malloc(strlen(yytext) - 1);
            strcpy(yylval, yytext + 1);
            return 0x11A;
        case 33:
            yyerror("Illegal character");
            goto block_69;
        case -1:
            goto block_69;
        default:
            fprintf(yyout, "bad switch yylook %d", sp24);
            goto block_69;
        }
    } else {
block_70:
        return 0;
    }
}

void func_0041109C(void) {
    s32 var_s0;
    s32 var_s0_2;
    s32 var_s0_3;
    s32 var_s3;
    s32 var_s3_2;
    s32 var_s3_3;
    s32 var_s4;
    s32 var_s4_2;
    s32 var_s4_3;
    u8 var_s2;
    u8 var_s2_2;
    u8 var_s2_3;

loop_1:
    if ((u32) &yysbuf < (u32) yysptr) {
        yysptr -= 1;
        var_s2 = yysptr->unk-1;
    } else {
        if (__us_rsthread_stdio != 0) {
            var_s3 = __semgetc(yyin);
        } else {
            yyin->_cnt -= 1;
            if (yyin->_cnt < 0) {
                var_s4 = __filbuf(yyin);
            } else {
                var_s4 = (s32) *yyin->_ptr;
                yyin->_ptr += 1;
            }
            var_s3 = var_s4;
        }
        var_s2 = (u8) var_s3;
    }
    yytchar = (s32) var_s2;
    if (yytchar == 0xA) {
        yylineno += 1;
    }
    if (yytchar == -1) {
        var_s0 = 0;
    } else {
        var_s0 = yytchar;
    }
    if (var_s0 != 0x2A) {
        do {
            if ((u32) &yysbuf < (u32) yysptr) {
                yysptr -= 1;
                var_s2_2 = yysptr->unk-1;
            } else {
                if (__us_rsthread_stdio != 0) {
                    var_s3_2 = __semgetc(yyin);
                } else {
                    yyin->_cnt -= 1;
                    if (yyin->_cnt < 0) {
                        var_s4_2 = __filbuf(yyin);
                    } else {
                        var_s4_2 = (s32) *yyin->_ptr;
                        yyin->_ptr += 1;
                    }
                    var_s3_2 = var_s4_2;
                }
                var_s2_2 = (u8) var_s3_2;
            }
            yytchar = (s32) var_s2_2;
            if (yytchar == 0xA) {
                yylineno += 1;
            }
            if (yytchar == -1) {
                var_s0_2 = 0;
            } else {
                var_s0_2 = yytchar;
            }
        } while (var_s0_2 != 0x2A);
    }
    if ((u32) &yysbuf < (u32) yysptr) {
        yysptr -= 1;
        var_s2_3 = yysptr->unk-1;
    } else {
        if (__us_rsthread_stdio != 0) {
            var_s3_3 = __semgetc(yyin);
        } else {
            yyin->_cnt -= 1;
            if (yyin->_cnt < 0) {
                var_s4_3 = __filbuf(yyin);
            } else {
                var_s4_3 = (s32) *yyin->_ptr;
                yyin->_ptr += 1;
            }
            var_s3_3 = var_s4_3;
        }
        var_s2_3 = (u8) var_s3_3;
    }
    yytchar = (s32) var_s2_3;
    if (yytchar == 0xA) {
        yylineno += 1;
    }
    if (yytchar == -1) {
        var_s0_3 = 0;
    } else {
        var_s0_3 = yytchar;
    }
    if (var_s0_3 != 0x2F) {
        yytchar = (s32) yytext[yyleng].unk-1;
        if (yytchar == 0xA) {
            yylineno -= 1;
        }
        yysptr->unk0 = (s8) yytchar;
        yysptr += 1;
        goto loop_1;
    }
}

void func_004114EC(void) {
    s32 sp24C;
    s32 sp248;
    u8 sp247;
    s8 sp144;
    s8 sp44;
    s32 var_s0;
    s32 var_s0_2;
    s32 var_s3;
    s32 var_s3_2;
    s32 var_s4;
    s32 var_s4_2;
    u8 var_s2;
    u8 var_s2_2;

    sp24C = 0;
    if ((u32) &yysbuf < (u32) yysptr) {
        yysptr -= 1;
        var_s2 = yysptr->unk-1;
    } else {
        if (__us_rsthread_stdio != 0) {
            var_s3 = __semgetc(yyin);
        } else {
            yyin->_cnt -= 1;
            if (yyin->_cnt < 0) {
                var_s4 = __filbuf(yyin);
            } else {
                var_s4 = (s32) *yyin->_ptr;
                yyin->_ptr += 1;
            }
            var_s3 = var_s4;
        }
        var_s2 = (u8) var_s3;
    }
    yytchar = (s32) var_s2;
    if (yytchar == 0xA) {
        yylineno += 1;
    }
    if (yytchar == -1) {
        var_s0 = 0;
    } else {
        var_s0 = yytchar;
    }
    sp247 = (u8) var_s0;
    if (sp247 != 0xA) {
        do {
            (&sp144)[sp24C] = (s8) sp247;
            sp24C += 1;
            if ((u32) &yysbuf < (u32) yysptr) {
                yysptr -= 1;
                var_s2_2 = yysptr->unk-1;
            } else {
                if (__us_rsthread_stdio != 0) {
                    var_s3_2 = __semgetc(yyin);
                } else {
                    yyin->_cnt -= 1;
                    if (yyin->_cnt < 0) {
                        var_s4_2 = __filbuf(yyin);
                    } else {
                        var_s4_2 = (s32) *yyin->_ptr;
                        yyin->_ptr += 1;
                    }
                    var_s3_2 = var_s4_2;
                }
                var_s2_2 = (u8) var_s3_2;
            }
            yytchar = (s32) var_s2_2;
            if (yytchar == 0xA) {
                yylineno += 1;
            }
            if (yytchar == -1) {
                var_s0_2 = 0;
            } else {
                var_s0_2 = yytchar;
            }
            sp247 = (u8) var_s0_2;
        } while (sp247 != 0xA);
    }
    (&sp144)[sp24C] = 0;
    if (sscanf(&sp144, " %d \"%s\"", &sp248, &sp44) == 2) {
        (&sp44)[strlen(&sp44)].unk-1 = 0;
        if (strcmp(fileName, &sp44) == 0) {
            lineNumber = sp248 - 1;
        }
    }
    lineNumber += 1;
}

s32 yylook(void) {
    s32 *sp68;
    s32 sp64;
    s32 sp60;
    u32 sp5C;                                       /* compiler-managed */
    s8 *sp58;
    u8 sp43;
    ? *var_s1;
    s16 *temp_s2_2;
    s16 *temp_s2_3;
    s16 *temp_t4;
    s32 *temp_t2;
    s32 temp_s3;
    s32 var_s3;
    s32 var_s3_2;
    s32 var_s6;
    s32 var_s6_2;
    s32 var_s7;
    s32 var_s7_2;
    struct _struct_yysvec_0xC *var_s0;
    u32 temp_s2;
    u32 var_s2;
    u8 temp_t0;
    u8 var_s5;
    u8 var_s5_2;
    void **var_s1_2;

    sp60 = 1;
    if (yymorfg == 0) {
        sp58 = yytext;
    } else {
        yymorfg = 0;
        sp58 = &yytext[yyleng];
    }
loop_3:
    var_s1 = &yylstate;
    var_s0 = yybgin;
    yyestate = var_s0;
    if (*"\0\0\0\n" /* not null-terminated */ == 0xA) {
        var_s0 += 0xC;
    }
loop_5:
    var_s2 = var_s0->unk0;
    if ((yycrank == var_s2) && (sp60 == 0)) {
        sp68 = var_s0->unk4;
        if (sp68 == NULL) {

        } else if (*sp68 == yycrank) {

        } else {
            goto block_11;
        }
    } else {
block_11:
        if ((u32) &yysbuf < (u32) yysptr) {
            yysptr -= 1;
            var_s5 = yysptr->unk-1;
        } else {
            if (__us_rsthread_stdio != 0) {
                var_s6 = __semgetc(yyin);
            } else {
                yyin->_cnt -= 1;
                if (yyin->_cnt < 0) {
                    var_s7 = __filbuf(yyin);
                } else {
                    var_s7 = (s32) *yyin->_ptr;
                    yyin->_ptr += 1;
                }
                var_s6 = var_s7;
            }
            var_s5 = (u8) var_s6;
        }
        yytchar = (s32) var_s5;
        if (yytchar == 0xA) {
            yylineno += 1;
        }
        if (yytchar == -1) {
            var_s3 = 0;
        } else {
            var_s3 = yytchar;
        }
        sp64 = var_s3;
        sp58->unk0 = (s8) sp64;
        sp58 += 1;
        if ((u32) (yytext + 0x800) < (u32) sp58) {
            fprintf(yyout, "Input string too long, limit %d\n", 0x800);
            exit(1);
        }
        sp60 = 0;
loop_29:
        sp5C = var_s2;
        if ((u32) yycrank < var_s2) {
            temp_s2 = (sp64 * 2) + sp5C;
            if (((u32) yytop >= temp_s2) && (&yysvec[temp_s2->unk0] == var_s0)) {
                if (&yysvec[temp_s2->unk1] == yysvec) {
                    sp58 -= 1;
                    yytchar = (s32) sp58->unk-1;
                    if (yytchar == 0xA) {
                        yylineno -= 1;
                    }
                    yysptr->unk0 = (s8) yytchar;
                    yysptr += 1;
                } else {
                    var_s1 += 4;
                    var_s0 = &yysvec[temp_s2->unk1];
                    var_s1->unk-4 = var_s0;
                    if ((u32) (&yylstate + 0x2000) < (u32) var_s1) {
                        fprintf(yyout, "Input string too long, limit %d\n", 0x800);
                        exit(1);
                    }
                    goto block_66;
                }
            } else {
                goto block_59;
            }
        } else if (var_s2 < (u32) yycrank) {
            temp_t4 = &yycrank[(s32) (yycrank - var_s2) >> 1];
            sp5C = temp_t4;
            temp_s2_2 = &temp_t4[sp64];
            if (((u32) yytop >= (u32) temp_s2_2) && (&yysvec[temp_s2_2->unk0] == var_s0)) {
                if (&yysvec[temp_s2_2->unk1] == yysvec) {
                    sp58 -= 1;
                    yytchar = (s32) sp58->unk-1;
                    if (yytchar == 0xA) {
                        yylineno -= 1;
                    }
                    yysptr->unk0 = (s8) yytchar;
                    yysptr += 1;
                } else {
                    var_s1 += 4;
                    var_s0 = &yysvec[temp_s2_2->unk1];
                    var_s1->unk-4 = var_s0;
                    if ((u32) (&yylstate + 0x2000) < (u32) var_s1) {
                        fprintf(yyout, "Input string too long, limit %d\n", 0x800);
                        exit(1);
                    }
                    goto block_66;
                }
            } else {
                temp_s2_3 = &sp5C[*(sp64 + &yymatch)];
                if (((u32) yytop >= (u32) temp_s2_3) && (&yysvec[temp_s2_3->unk0] == var_s0)) {
                    if (&yysvec[temp_s2_3->unk1] == yysvec) {
                        sp58 -= 1;
                        yytchar = (s32) sp58->unk-1;
                        if (yytchar == 0xA) {
                            yylineno -= 1;
                        }
                        yysptr->unk0 = (s8) yytchar;
                        yysptr += 1;
                    } else {
                        var_s1 += 4;
                        var_s0 = &yysvec[temp_s2_3->unk1];
                        var_s1->unk-4 = var_s0;
                        if ((u32) (&yylstate + 0x2000) < (u32) var_s1) {
                            fprintf(yyout, "Input string too long, limit %d\n", 0x800);
                            exit(1);
                        }
block_66:
                        goto loop_5;
                    }
                } else {
                    goto block_59;
                }
            }
        } else {
block_59:
            var_s0 = (struct _struct_yysvec_0xC *) var_s0->unk4;
            if (var_s0 != NULL) {
                var_s2 = var_s0->unk0;
                if (var_s2 != yycrank) {
                    goto loop_29;
                }
            }
            sp58 -= 1;
            yytchar = (s32) sp58->unk-1;
            if (yytchar == 0xA) {
                yylineno -= 1;
            }
            yysptr->unk0 = (s8) yytchar;
            yysptr += 1;
        }
    }
    var_s1_2 = var_s1 - 4;
    if ((u32) &yylstate < (u32) var_s1) {
loop_68:
        sp58->unk0 = 0;
        sp58 -= 1;
        if (*var_s1_2 != NULL) {
            temp_t2 = (*var_s1_2)->unk8;
            yyfnd = temp_t2;
            if ((temp_t2 != NULL) && (*temp_t2 > 0)) {
                yyolsp = var_s1_2;
                if ((*(*yyfnd + &yyextra) != 0) && (yyback((*var_s1_2)->unk8, -*yyfnd) != 1) && ((u32) &yylstate < (u32) var_s1_2)) {
loop_74:
                    var_s1_2 -= 4;
                    temp_t0 = (u8) sp58->unk0;
                    sp58 -= 1;
                    yytchar = (s32) temp_t0;
                    if (yytchar == 0xA) {
                        yylineno -= 1;
                    }
                    yysptr->unk0 = (s8) yytchar;
                    yysptr += 1;
                    if ((yyback((*var_s1_2)->unk8, -*yyfnd) != 1) && ((u32) &yylstate < (u32) var_s1_2)) {
                        goto loop_74;
                    }
                }
                *"\0\0\0\n" /* not null-terminated */ = (s32) (u8) sp58->unk0;
                yylsp = var_s1_2;
                yyleng = (sp58 - yytext) + 1;
                yytext[yyleng] = 0;
                temp_s3 = *yyfnd;
                yyfnd += 4;
                return temp_s3;
            }
        }
        yytchar = (s32) (u8) sp58->unk0;
        if (yytchar == 0xA) {
            yylineno -= 1;
        }
        yysptr->unk0 = (s8) yytchar;
        yysptr += 1;
        var_s1_2 -= 4;
        if ((u32) &yylstate >= (u32) var_s1_2) {
            goto block_82;
        }
        goto loop_68;
    }
block_82:
    if ((u8) *yytext == 0) {
        yysptr = (u32) &yysbuf;
        return 0;
    }
    if ((u32) &yysbuf < (u32) yysptr) {
        yysptr -= 1;
        var_s5_2 = yysptr->unk-1;
    } else {
        if (__us_rsthread_stdio != 0) {
            var_s6_2 = __semgetc(yyin);
        } else {
            yyin->_cnt -= 1;
            if (yyin->_cnt < 0) {
                var_s7_2 = __filbuf(yyin);
            } else {
                var_s7_2 = (s32) *yyin->_ptr;
                yyin->_ptr += 1;
            }
            var_s6_2 = var_s7_2;
        }
        var_s5_2 = (u8) var_s6_2;
    }
    yytchar = (s32) var_s5_2;
    if (yytchar == 0xA) {
        yylineno += 1;
    }
    if (yytchar == -1) {
        var_s3_2 = 0;
    } else {
        var_s3_2 = yytchar;
    }
    sp43 = (u8) var_s3_2;
    *yytext = (s8) sp43;
    *"\0\0\0\n" /* not null-terminated */ = (s32) sp43;
    if (*"\0\0\0\n" /* not null-terminated */ > 0) {
        if (__us_rsthread_stdio != 0) {
            __semputc(*"\0\0\0\n" /* not null-terminated */, yyout);
        } else {
            yyout->_cnt -= 1;
            if (yyout->_cnt < 0) {
                __flsbuf(*"\0\0\0\n" /* not null-terminated */, yyout);
            } else {
                *yyout->_ptr = (u8) *"\0\0\0\n" /* not null-terminated */;
                yyout->_ptr += 1;
            }
        }
    }
    sp58 = yytext;
    goto loop_3;
}

s32 yyback(s32 *arg0, s32 arg1) {
    s32 *var_a0;
    s32 temp_t7;

    var_a0 = arg0;
    if (var_a0 == NULL) {
        return 0;
    }
    if (*var_a0 != 0) {
loop_3:
        temp_t7 = *var_a0;
        var_a0 += 4;
        if (temp_t7 == arg1) {
            return 1;
        }
        if (*var_a0 == 0) {
            goto block_6;
        }
        goto loop_3;
    }
block_6:
    return 0;
}

s32 yyinput(void) {
    s32 var_s0;
    s32 var_s3;
    s32 var_s4;
    u8 var_s2;

    if ((u32) &yysbuf < (u32) yysptr) {
        yysptr -= 1;
        var_s2 = yysptr->unk-1;
    } else {
        if (__us_rsthread_stdio != 0) {
            var_s3 = __semgetc(yyin);
        } else {
            yyin->_cnt -= 1;
            if (yyin->_cnt < 0) {
                var_s4 = __filbuf(yyin);
            } else {
                var_s4 = (s32) *yyin->_ptr;
                yyin->_ptr += 1;
            }
            var_s3 = var_s4;
        }
        var_s2 = (u8) var_s3;
    }
    yytchar = (s32) var_s2;
    if (yytchar == 0xA) {
        yylineno += 1;
    }
    if (yytchar == -1) {
        var_s0 = 0;
    } else {
        var_s0 = yytchar;
    }
    return var_s0;
}

void yyoutput(s32 arg0) {
    if (__us_rsthread_stdio != 0) {
        __semputc(arg0, yyout);
    } else {
        yyout->_cnt -= 1;
        if (yyout->_cnt < 0) {
            __flsbuf(arg0, yyout);
        } else {
            *yyout->_ptr = (u8) arg0;
            yyout->_ptr += 1;
        }
    }
}

void yyunput(s32 arg0) {
    yytchar = arg0;
    if (yytchar == 0xA) {
        yylineno -= 1;
    }
    *yysptr = (s8) yytchar;
    yysptr += 1;
}

void yyerror(s8 *arg0) {
    fprintf(__iob + 0x20, "makerom: %s at line %d [%s]\n", arg0, lineNumber, yytext);
}

void func_004127B4(s8 *arg0, s8 *arg1, s8 *arg2, ? arg3) {
    s8 *sp24;

    fprintf(__iob + 0x20, "makerom: error at line %d: ", lineNumber);
    sp24 = &arg0 + 4;
    vfprintf(__iob + 0x20, arg0, sp24);
    fprintf(__iob + 0x20, "\n");
}

void func_0041285C(s8 *arg0, u8 *arg1) {
    s8 *sp24;
    s8 *sp20;

    if (arg0->unk0 != 0) {
        do {
            if ((arg0->unk0 == 0x24) && (arg0->unk1 == 0x28) && (sp24 = strchr(arg0 + 1, 0x29), (sp24 != NULL))) {
                *sp24 = 0;
                sp20 = getenv(arg0 + 2);
                if ((sp20 != NULL) && ((u8) *sp20 != 0)) {
                    do {
                        *arg1 = (u8) *sp20;
                        arg1 += 1;
                        sp20 += 1;
                    } while ((u8) *sp20 != 0);
                }
                arg0 = sp24 + 1;
            } else {
                *arg1 = (u8) arg0->unk0;
                arg1 += 1;
                arg0 += 1;
            }
        } while ((u8) arg0->unk0 != 0);
    }
    *arg1 = 0;
}

s32 yyparse(void) {
    s32 sp190;
    s32 sp18C;
    s32 sp188;
    s32 sp184;
    s32 sp180;
    s16 *sp17C;
    s16 *sp178;
    s16 *sp174;
    u32 sp168;
    Path *sp164;
    u8 sp64;
    Segment *sp60;
    Segment *sp58;
    Segment *sp50;
    SegmentChain *sp4C;
    s8 *sp44;
    ? *var_s5;
    Segment *temp_t3;
    Segment *temp_t4;
    Segment *temp_t6;
    Segment *temp_t9;
    s16 *temp_s1;
    s16 *var_s0;
    s16 *var_s1;
    s32 *temp_s2;
    s32 *var_s2;
    s32 *var_s5_2;
    s32 temp_s3;
    s32 temp_s3_2;
    s32 temp_s4;
    s32 temp_s4_2;
    s32 temp_s4_3;
    s32 temp_s4_4;
    s32 temp_s6;
    s32 temp_s6_2;
    s32 temp_s6_3;
    s32 temp_s7;
    s32 temp_s7_2;
    s32 temp_t0;
    s32 var_s3;
    s32 var_s3_2;
    s32 var_s4;
    u8 *temp_v0;
    u8 *temp_v0_2;
    u8 *temp_v0_3;

    var_s0 = saved_reg_s0;
    yypv = yyv - 4;
    yyps = (s32 *) (yys - 4);
    yystate = 0;
    yytmp = 0;
    yynerrs = 0;
    yyerrflag = 0;
    yychar = -1;
loop_2:
    var_s1 = yypv;
    var_s2 = yyps;
    var_s3 = yystate;
loop_3:
    var_s2 += 4;
    if ((u32) var_s2 >= (u32) (yys + (D_10015190 * 4))) {
        sp188 = (s32) (var_s0 - yyv) >> 2;
        sp184 = (s32) (var_s1 - yyv) >> 2;
        sp180 = (s32) (yypv - yyv) >> 2;
        sp17C = yys;
        sp190 = D_10015190 * 2;
        if (D_10015190 == 0x96) {
            sp178 = malloc(sp190 * 4);
            sp174 = malloc(sp190 * 4);
            if ((sp178 != NULL) && (sp174 != NULL)) {
                yys = memcpy(sp178, yys, sp190 * 4);
                yyv = memcpy(sp174, yyv, sp190 * 4);
            } else {
                sp190 = 0;
            }
        } else {
            yys = realloc(yys, sp190 * 4);
            yyv = realloc(yyv, sp190 * 4);
            if ((yys == NULL) || (yyv == NULL)) {
                sp190 = 0;
            }
        }
        if (D_10015190 >= sp190) {
            yyerror(gettxt("uxlibc:80", "Yacc stack overflow"));
            return 1;
        }
        D_10015190 = sp190;
        sp18C = (s32) (yys - sp17C) >> 2;
        var_s2 = &var_s2[sp18C];
        yyps = &yyps[sp18C];
        var_s0 = (sp188 * 4) + yyv;
        var_s1 = (sp184 * 4) + yyv;
        yypv = (sp180 * 4) + yyv;
        goto block_16;
    }
block_16:
    *var_s2 = var_s3;
    var_s1 += 4;
    var_s1->unk0 = (s8 *) yyval;
loop_17:
    temp_s4 = yypact[var_s3];
    if (temp_s4 < 0xFF676981) {
        goto block_29;
    }
    if (yychar < 0) {
        yychar = yylex();
        if (yychar < 0) {
            yychar = 0;
        }
    }
    temp_s4_2 = temp_s4 + yychar;
    if ((temp_s4_2 < 0) || (temp_s4_2 >= 0x65)) {
        goto block_29;
    }
    temp_s4_3 = yyact[temp_s4_2];
    if (yychk[temp_s4_3] == yychar) {
        yychar = -1;
        yyval = yylval;
        var_s3 = temp_s4_3;
        if (yyerrflag > 0) {
            yyerrflag -= 1;
        }
        goto loop_3;
    }
block_29:
    var_s4 = yydef[var_s3];
    if (var_s4 == -2) {
        if (yychar < 0) {
            yychar = yylex();
            if (yychar < 0) {
                yychar = 0;
            }
        }
        var_s5 = &yyexca;
        if ((yyexca.unk0 != -1) || (yyexca.unk4 != var_s3)) {
            do {
loop_35:
                var_s5 += 8;
                if (var_s5->unk0 != -1) {
                    goto loop_35;
                }
            } while (var_s5->unk4 != var_s3);
        }
        var_s5_2 = var_s5 + 8;
        if ((var_s5->unk8 >= 0) && (*var_s5_2 != yychar)) {
loop_39:
            temp_t0 = var_s5_2->unk8;
            var_s5_2 += 8;
            if (temp_t0 >= 0) {
                if (*var_s5_2 != yychar) {
                    goto loop_39;
                }
            }
        }
        var_s4 = var_s5_2->unk4;
        if (var_s4 < 0) {
            return 0;
        }
        goto block_43;
    }
block_43:
    if (var_s4 == 0) {
        switch (yyerrflag) {                        /* switch 1; irregular */
        case 0:                                     /* switch 1 */
            sp44 = gettxt("uxlibc:81", "Syntax error");
            yyerror(sp44);
            /* fallthrough */
        case 1:                                     /* switch 1 */
        case 2:                                     /* switch 1 */
            yyerrflag = 3;
            if ((u32) var_s2 >= (u32) yys) {
loop_52:
                temp_s4_4 = yypact[*var_s2] + 0x100;
                if ((temp_s4_4 >= 0) && (temp_s4_4 < 0x65) && (yychk[yyact[temp_s4_4]] == 0x100)) {
                    var_s3 = yyact[temp_s4_4];
                    goto loop_3;
                }
                var_s2 -= 4;
                var_s1 -= 4;
                if ((u32) var_s2 < (u32) yys) {
                    goto block_57;
                }
                goto loop_52;
            }
block_57:
            return 1;
        case 3:                                     /* switch 1 */
            if (yychar == 0) {
                return 1;
            }
            yychar = -1;
            goto loop_17;
        }
    } else {
        yytmp = var_s4;
        var_s0 = var_s1;
        temp_s6 = yyr2[var_s4];
        if (!(temp_s6 & 1)) {
            temp_s6_2 = temp_s6 >> 1;
            var_s1 -= temp_s6_2 * 4;
            yyval = var_s1->unk4;
            temp_s7 = yyr1[var_s4];
            var_s2 -= temp_s6_2 * 4;
            temp_s3 = *var_s2 + *((temp_s7 * 4) + "\0\0\0\0\0\0\t\0\0\0K\0\0\0J\0\0\0I\0\0\0H\0\0\0=\0\0\x0f\0\0\x0e\0\0\0;\0\0\r\0\0\v\0\0\n\0\0\0<\0\0\0?\0\0\0>\0\0\0:" /* not null-terminated */) + 1;
            if ((temp_s3 >= 0x65) || (var_s3 = yyact[temp_s3], (yychk[var_s3] != -temp_s7))) {
                var_s3 = yyact[*((temp_s7 * 4) + "\0\0\0\0\0\0\t\0\0\0K\0\0\0J\0\0\0I\0\0\0H\0\0\0=\0\0\x0f\0\0\x0e\0\0\0;\0\0\r\0\0\v\0\0\n\0\0\0<\0\0\0?\0\0\0>\0\0\0:" /* not null-terminated */)];
            }
            goto loop_3;
        }
        temp_s6_3 = temp_s6 >> 1;
        temp_s1 = var_s1 - (temp_s6_3 * 4);
        yyval = temp_s1->unk4;
        temp_s7_2 = yyr1[var_s4];
        temp_s2 = var_s2 - (temp_s6_3 * 4);
        temp_s3_2 = *temp_s2 + *((temp_s7_2 * 4) + "\0\0\0\0\0\0\t\0\0\0K\0\0\0J\0\0\0I\0\0\0H\0\0\0=\0\0\x0f\0\0\x0e\0\0\0;\0\0\r\0\0\v\0\0\n\0\0\0<\0\0\0?\0\0\0>\0\0\0:" /* not null-terminated */) + 1;
        if ((temp_s3_2 >= 0x65) || (var_s3_2 = yyact[temp_s3_2], (yychk[var_s3_2] != -temp_s7_2))) {
            var_s3_2 = yyact[*((temp_s7_2 * 4) + "\0\0\0\0\0\0\t\0\0\0K\0\0\0J\0\0\0I\0\0\0H\0\0\0=\0\0\x0f\0\0\x0e\0\0\0;\0\0\r\0\0\v\0\0\n\0\0\0<\0\0\0?\0\0\0>\0\0\0:" /* not null-terminated */)];
        }
        yystate = var_s3_2;
        yyps = temp_s2;
        yypv = temp_s1;
        switch (yytmp) {
        case 4:
            if (B_10019FD0->name == NULL) {
                func_004127B4("no segment name specified");
                return 1;
            }
            if (B_10019FD0->pathList == NULL) {
                func_004127B4("no files included for segment");
                return 1;
            }
            if (B_10019FD0->flags == -1) {
                B_10019FD0->flags = 2;
            }
            if (B_10019FD0->flags & 1) {
                if (cosim != 0) {
                    sp168 = 0x80002000;
                } else if (emulator != 0) {
                    sp168 = 0x20010000;
                } else {
                    sp168 = 0x80000400;
                }
                if (B_10019FD0->address == -1U) {
                    B_10019FD0->address = sp168;
                    B_10019FD0->addrFunc = 4;
                }
                bootAddress = B_10019FD0->address;
                B_10019FD0->address += 0x50;
                goto block_96;
            }
            if (segmentList == B_10019FD0) {
                func_004127B4("first segment must be BOOT segment");
                return 1;
            }
            if (D_10015180 != 0) {
                func_004127B4("entry point specified on non-BOOT segment \"%s\"", (s8 *) B_10019FD0->name);
                return 1;
            }
            if (D_10015184 != 0) {
                func_004127B4("stack specified on non-BOOT segment \"%s\"", (s8 *) B_10019FD0->name);
                return 1;
            }
            if ((B_10019FD0->flags & 2) && (B_10019FD0->address == -1U) && (B_10019FD0->addrFunc == 0)) {
                func_004127B4("no address specified for OBJECT segment \"%s\"", (s8 *) B_10019FD0->name);
                return 1;
            }
block_96:
            if ((B_10019FD0->flags & 4) && (B_10019FD0->address != -1U)) {
                func_004127B4("address specified for RAW segment \"%s\"", (s8 *) B_10019FD0->name);
                return 1;
            }
            if ((B_10019FD0->align != 0) && (B_10019FD0->addrFunc == 0)) {
                func_004127B4("\"align\" keyword is only valid with \"after\" keyword\n         for segment \"%s\"", (s8 *) B_10019FD0->name);
                return 1;
            }
            if (B_10019FD0->align == 0) {
                B_10019FD0->align = 0x10;
            }
            B_10019FCC = B_10019FD0;
        default:
block_223:
            goto loop_2;
        case 5:
            B_10019FD0 = malloc(0x78U);
            if (B_10019FD0 == NULL) {
                fprintf(__iob + 0x20, "makerom: malloc failed\n");
                return 1;
            }
            B_10019FD0->next = NULL;
            B_10019FD0->name = NULL;
            B_10019FD0->pathList = NULL;
            B_10019FD0->unk0C = 0;
            B_10019FD0->address = -1U;
            B_10019FD0->addrFunc = 0;
            B_10019FD0->romalign = 0;
            B_10019FD0->align = 0;
            B_10019FD0->flags = -1;
            B_10019FD0->textSize = 0;
            B_10019FD0->dataSize = 0;
            B_10019FD0->sdataSize = 0;
            B_10019FD0->sbssSize = 0;
            B_10019FD0->bssSize = 0;
            B_10019FD0->maxSize = 0x7FFFFFFF;
            B_10019FD0->textAlign = 0;
            B_10019FD0->dataAlign = 0;
            B_10019FD0->sdataAlign = 0;
            B_10019FD0->sbssAlign = 0;
            B_10019FD0->bssAlign = 0;
            B_10019FD0->sectionsExisting = 0;
            if (segmentList == NULL) {
                segmentList = B_10019FD0;
            } else {
                B_10019FCC->next = B_10019FD0;
            }
            D_10015180 = 0;
            D_10015184 = 0;
            goto block_223;
        case 8:
            if ((s32) var_s0->unk0 & 0xF) {
                func_004127B4("address (0x%x) not a multiple of 16", var_s0->unk0);
                return 1;
            }
            if (((u32) var_s0->unk0 >= 0x80000000U) && ((u32) var_s0->unk0 < 0xC0000000U) && ((u32) ((s32) var_s0->unk0 & 0x1FFFFFFF) < 0x400U)) {
                func_004127B4("address (0x%x) must be at least\n         0x%x (or 0x%x)", var_s0->unk0, (s8 *)0x80000400, 0xA0000400);
                return 1;
            }
            if (B_10019FD0->address != -1U) {
                func_004127B4("multiple address/number/after statement");
                return 1;
            }
            B_10019FD0->addrFunc = 4;
            B_10019FD0->address = (u32) var_s0->unk0;
            goto block_223;
        case 9:
            if (((s32) var_s0->unk0 < 0) || ((s32) var_s0->unk0 >= 0x10)) {
                func_004127B4("segment number (%d) not in range [0-15]", var_s0->unk0);
                return 1;
            }
            if (B_10019FD0->address != -1U) {
                func_004127B4("multiple address/number/after statement");
                return 1;
            }
            B_10019FD0->addrFunc = 5;
            B_10019FD0->address = (s32) var_s0->unk0 << 0x18;
            goto block_223;
        case 10:
            if (B_10019FD0->address != -1U) {
                func_004127B4("multiple address/number/after statement");
                return 1;
            }
            B_10019FD0->address = -1U;
            goto block_223;
        case 11:
            if ((s32) var_s0->unk0 < 0x10) {
                func_004127B4("rom alignment (%d or 0x%x) must be at least 16", var_s0->unk0, var_s0->unk0);
                return 1;
            }
            if ((s32) (var_s0->unk0 - 1) & (s32) var_s0->unk0) {
                func_004127B4("rom alignment (%d or 0x%x) must be a power of 2", var_s0->unk0, var_s0->unk0);
                return 1;
            }
            B_10019FD0->romalign = (s32) var_s0->unk0;
            goto block_223;
        case 12:
            if ((s32) var_s0->unk0 < 0x10) {
                func_004127B4("alignment (%d or 0x%x) must be at least 16", var_s0->unk0, var_s0->unk0);
                return 1;
            }
            if ((s32) (var_s0->unk0 - 1) & (s32) var_s0->unk0) {
                func_004127B4("alignment (%d or 0x%x) must be a power of 2", var_s0->unk0, var_s0->unk0);
                return 1;
            }
            B_10019FD0->align = (u32) var_s0->unk0;
            goto block_223;
        case 13:
            if (B_10019FD0->name != NULL) {
                func_004127B4("multiple segment name");
                return 1;
            }
            temp_v0 = strdup(var_s0->unk0);
            B_10019FD0->name = temp_v0;
            if (temp_v0 == NULL) {
                fprintf(__iob + 0x20, "makerom: malloc failed\n");
                exit(1);
            }
            goto block_223;
        case 14:
            if (D_10015180 != 0) {
                func_004127B4("multiple entry point");
                return 1;
            }
            D_10015180 = 1;
            bootEntryName = var_s0->unk0;
            goto block_223;
        case 15:
            if (B_10019FD0->flags != -1) {
                func_004127B4("multiple flags value specified");
                return 1;
            }
            if (((s32) var_s0->unk0 & 5) == 5) {
                func_004127B4("RAW segment cannot be a BOOT segment");
                return 1;
            }
            if (((s32) var_s0->unk0 & 6) == 6) {
                func_004127B4("RAW and OBJECT are mutually exclusive");
                return 1;
            }
            B_10019FD0->flags = (s32) var_s0->unk0;
            goto block_223;
        case 16:
            func_0041285C(var_s0->unk0, &sp64);
            sp164 = malloc(0x48U);
            if ((sp164 == NULL) || (temp_v0_2 = strdup((s8 *) &sp64), sp164->name = temp_v0_2, (temp_v0_2 == NULL))) {
                fprintf(__iob + 0x20, "makerom: malloc failed\n");
                exit(1);
            }
            sp164->next = NULL;
            sp164->sectionsExisting = 0;
            if (B_10019FD0->pathList == NULL) {
                B_10019FD0->pathList = sp164;
            } else {
                B_10019FE0->next = sp164;
            }
            B_10019FE0 = sp164;
            goto block_223;
        case 17:
            if (B_10019FD0->maxSize != 0x7FFFFFFF) {
                func_004127B4("multiple maximum segment size value");
                return 1;
            }
            if ((s32) var_s0->unk0 & 0xF) {
                func_004127B4("makerom: maxsize constant (%d) not a multiple of 16\n", var_s0->unk0);
                return 1;
            }
            B_10019FD0->maxSize = (u32) var_s0->unk0;
            goto block_223;
        case 18:
            if (D_10015184 != 0) {
                func_004127B4("multiple stack");
                return 1;
            }
            D_10015184 = 1;
            goto block_223;
        case 19:
            B_10019FD0->addrFunc = 1;
            sp60 = segmentList;
            if (segmentList != NULL) {
loop_170:
                if (strcmp((s8 *) sp60->name, var_s0->unk0) == 0) {

                } else {
                    temp_t9 = sp60->next;
                    sp60 = temp_t9;
                    if (temp_t9 != NULL) {
                        goto loop_170;
                    }
                }
            }
            if (sp60 == NULL) {
                func_004127B4("segment \"%s\" not (yet) defined", var_s0->unk0);
                return 1;
            }
            B_10019FD0->afterSeg2 = sp60;
            B_10019FD0->afterSeg1 = B_10019FD0->afterSeg2;
            goto block_223;
        case 20:
            sp58 = segmentList;
            if (segmentList != NULL) {
loop_177:
                if (strcmp((s8 *) sp58->name, var_s0->unk-C) == 0) {

                } else {
                    temp_t6 = sp58->next;
                    sp58 = temp_t6;
                    if (temp_t6 != NULL) {
                        goto loop_177;
                    }
                }
            }
            if (sp58 == NULL) {
                func_004127B4("segment \"%s\" not (yet) defined", var_s0->unk-C);
                return 1;
            }
            B_10019FD0->afterSeg1 = sp58;
            sp58 = segmentList;
            if (segmentList != NULL) {
loop_183:
                if (strcmp((s8 *) sp58->name, var_s0->unk-4) == 0) {

                } else {
                    temp_t3 = sp58->next;
                    sp58 = temp_t3;
                    if (temp_t3 != NULL) {
                        goto loop_183;
                    }
                }
            }
            if (sp58 == NULL) {
                func_004127B4("segment \"%s\" not (yet) defined", var_s0->unk-4);
                return 1;
            }
            B_10019FD0->afterSeg2 = sp58;
            goto block_223;
        case 21:
            B_10019FD0->addrFunc = 2;
            goto block_223;
        case 22:
            B_10019FD0->addrFunc = 3;
            goto block_223;
        case 23:
            yyval = var_s0->unk0;
            goto block_223;
        case 24:
            yyval = (s8 *) ((s32) var_s0->unk0 | (s32) var_s0->unk-4);
            goto block_223;
        case 25:
            yyval = (s8 *)1;
            goto block_223;
        case 26:
            yyval = (s8 *)2;
            goto block_223;
        case 27:
            yyval = (s8 *)4;
            goto block_223;
        case 28:
            bootStackName = NULL;
            bootStackOffset = var_s0->unk0;
            goto block_223;
        case 29:
            bootStackName = var_s0->unk0;
            bootStackOffset = NULL;
            goto block_223;
        case 30:
            bootStackName = var_s0->unk-8;
            bootStackOffset = var_s0->unk0;
            goto block_223;
        case 33:
            B_10019FD4 = B_10019FD8;
            goto block_223;
        case 34:
            B_10019FD8 = malloc(0x118U);
            if (B_10019FD8 == NULL) {
                fprintf(__iob + 0x20, "makerom: malloc failed\n");
                exit(1);
            }
            B_10019FD8->next = NULL;
            B_10019FD8->segmentChain = NULL;
            B_10019FD8->elf = NULL;
            if (waveList == NULL) {
                waveList = B_10019FD8;
            } else {
                B_10019FD4->next = B_10019FD8;
            }
            goto block_223;
        case 37:
            temp_v0_3 = strdup(var_s0->unk0);
            B_10019FD8->name = temp_v0_3;
            if (temp_v0_3 == NULL) {
                fprintf(__iob + 0x20, "makerom: malloc failed\n");
                exit(1);
            }
            goto block_223;
        case 38:
            sp50 = segmentList;
            if (segmentList != NULL) {
loop_210:
                if (strcmp((s8 *) sp50->name, var_s0->unk0) == 0) {

                } else {
                    temp_t4 = sp50->next;
                    sp50 = temp_t4;
                    if (temp_t4 != NULL) {
                        goto loop_210;
                    }
                }
            }
            if (sp50 == NULL) {
                func_004127B4("unknown segment \"%s\"", var_s0->unk0);
                return 1;
            }
            sp4C = malloc(8U);
            if (sp4C == NULL) {
                fprintf(__iob + 0x20, "makerom: malloc failed\n");
                exit(1);
            }
            sp50->unk0C = (s32) B_10019FD8;
            sp4C->segment = sp50;
            sp4C->next = NULL;
            if (B_10019FD8->segmentChain == NULL) {
                B_10019FD8->segmentChain = sp4C;
            } else {
                B_10019FDC->next = sp4C;
            }
            B_10019FDC = sp4C;
            goto block_223;
        }
    }
}

s32 _elf64_entsz(u32 arg0, s32 arg1) {
    s32 temp_v1;

    if ((arg0 >= 0xCU) || (temp_v1 = ((arg1 * 0x30) + (arg0 * 4) + &RO_100116B8)->unk-30, (temp_v1 == 0))) {
        return 0;
    }
    return ((arg1 * 0x78) + (temp_v1 * 8) + &RO_10011640)->unk-78;
}

/*
Decompilation failure in function _elf64_fsize:

Function _elf64_fsize contains no instructions. Maybe it is rodata?
*/

s32 elf64_fsize(u32 arg0, s32 arg1, s32 arg2) {
    s32 temp_a2;

    temp_a2 = arg2 - 1;
    if (temp_a2 != 0) {
        _elf_err = 0x517;
        return 0;
    }
    if (arg0 >= 0xFU) {
        _elf_err = 0x514;
        return 0;
    }
    return *((temp_a2 * 0x78) + (arg0 * 8) + &RO_10011640) * arg1;
}

u32 _elf64_msize(s32 arg0, u32 arg1) {
    return ((arg1 * 0x78) + (arg0 * 8) + &RO_10011640)->unk-74;
}

s32 _elf64_mtype(u32 arg0, u32 arg1) {
    if (arg0 >= 0xCU) {
        return 0;
    }
    return ((arg1 * 0x30) + (arg0 * 4) + &RO_100116B8)->unk-30;
}

/*
Decompilation failure in function _elf_version:

Function _elf_version contains no instructions. Maybe it is rodata?
*/

u32 elf_version(u32 arg0) {
    s32 sp10;
    ? *var_v0;
    s32 temp_t1;
    s32 temp_t2;
    u32 temp_v0;
    u8 temp_a1;
    u8 temp_a2;
    u8 temp_v0_2;
    u8 temp_v1;

    if (arg0 == 0) {
        return 1U;
    }
    if (arg0 >= 2U) {
        _elf_err = 0x517;
        return 0U;
    }
    temp_v0 = _elf_work;
    if (_elf_work != 0) {
        _elf_work = arg0;
        return temp_v0;
    }
    _elf_work = arg0;
    if (RO_10011640 != RO_10011644) {

    } else if (RO_10011648 != RO_1001164C) {

    } else if (RO_10011650 != RO_10011654) {

    } else {
        var_v0 = &RO_10011658;
loop_13:
        if (var_v0->unk0 != var_v0->unk4) {

        } else if (var_v0->unk8 != var_v0->unkC) {

        } else if (var_v0->unk10 != var_v0->unk14) {

        } else {
            temp_t1 = var_v0->unk18;
            temp_t2 = var_v0->unk1C;
            var_v0 += 0x20;
            if (temp_t1 != temp_t2) {

            } else if (var_v0 == &RO_100116B8) {
                sp10 = 0x10203;
                temp_v1 = sp10.unk3;
                temp_a1 = sp10.unk2;
                temp_a2 = sp10.unk1;
                temp_v0_2 = sp10.unk0;
                if ((temp_v0_2 + (((((temp_v1 << 8) + temp_a1) << 8) + temp_a2) << 8)) == 0x10203) {
                    _elf_encode = 1;
                } else if ((temp_v1 + (((((temp_v0_2 << 8) + temp_a2) << 8) + temp_a1) << 8)) == 0x10203) {
                    _elf_encode = 2;
                }
            } else {
                goto loop_13;
            }
        }
    }
    return arg0;
}

void *func_00414690(void *arg0, void *arg1, u32 arg2, s32 arg3) {
    u32 sp4C;
    u32 sp2C;
    u32 sp28;
    ? (*var_t1)(s16 *, s16 *, u32, u32);
    s16 *temp_a0_2;
    s16 *temp_a1;
    s32 temp_a0;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v1;
    s32 var_a2;
    u32 temp_lo;
    u32 temp_lo_2;
    u32 temp_t0;
    u32 temp_t7;
    u32 temp_t7_2;
    u32 var_a3;

    if ((arg0 == NULL) || (arg1 == NULL)) {
        return NULL;
    }
    temp_t7 = arg2 - 1;
    arg2 = temp_t7;
    if (temp_t7 >= 2U) {
        _elf_err = 0x50B;
        return NULL;
    }
    temp_a0 = arg0->unk14 - 1;
    if ((temp_a0 != 0) || (temp_v1 = arg1->unk14 - 1, (temp_v1 != 0))) {
        _elf_err = 0x517;
        return NULL;
    }
    temp_t0 = arg1->unk4;
    if (temp_t0 >= 0xFU) {
        _elf_err = 0x514;
        return NULL;
    }
    temp_v0 = temp_t0 * 8;
    if (arg3 != 0) {
        temp_v0_2 = temp_t0 * 8;
        var_a2 = *(&RO_10011640 + (temp_a0 * 0x78) + temp_v0_2);
        var_a3 = (&RO_10011640 + (temp_v1 * 0x78) + temp_v0_2)->unk4;
        var_t1 = *((temp_a0 * 0xF0) + (temp_v1 * 0xF0) + (arg2 * 0x78) + temp_v0_2 + &D_100157C0);
    } else {
        var_a2 = (&RO_10011640 + (temp_a0 * 0x78) + temp_v0)->unk4;
        var_a3 = *(&RO_10011640 + (temp_v1 * 0x78) + temp_v0);
        var_t1 = ((temp_a0 * 0xF0) + (temp_v1 * 0xF0) + (arg2 * 0x78) + temp_v0 + &D_100157C0)->unk4;
    }
    temp_t7_2 = arg1->unk8;
    temp_lo = temp_t7_2 / var_a3;
    sp4C = temp_lo;
    sp2C = temp_t7_2;
    temp_lo_2 = var_a2 * temp_lo;
    if ((u32) arg0->unk8 < temp_lo_2) {
        _elf_err = 0x50A;
        return NULL;
    }
    if ((_elf_encode == (arg2 + 1)) && (var_a2 == var_a3)) {
        temp_a0_2 = arg0->unk0;
        temp_a1 = arg1->unk0;
        if (temp_a0_2 != temp_a1) {
            memcpy(temp_a0_2, temp_a1, sp2C, var_a3);
        }
        arg0->unk4 = arg1->unk4;
        arg0->unk8 = (u32) arg1->unk8;
        return arg0;
    }
    if (sp4C != 0) {
        sp28 = temp_lo_2;
        var_t1(arg0->unk0, arg1->unk0, sp4C, var_a3);
    }
    arg0->unk8 = temp_lo_2;
    arg0->unk4 = (u32) arg1->unk4;
    return arg0;
}

/*
Decompilation failure in function _elf64_xlatetof:

Function _elf64_xlatetof contains no instructions. Maybe it is rodata?
*/

void elf64_xlatetof(void) {
    func_00414690((void *)1);
}

/*
Decompilation failure in function _elf64_xlatetom:

Function _elf64_xlatetom contains no instructions. Maybe it is rodata?
*/

void elf64_xlatetom(void) {
    func_00414690(NULL);
}

/*
Decompilation failure in function _elf_getdata:

Function _elf_getdata contains no instructions. Maybe it is rodata?
*/

Elf *elf_getdata(Elf_Scn *arg0, Elf *arg1) {
    Elf *sp6C;
    Elf *sp68;
    u32 sp64;
    u32 sp58;
    u32 sp54;
    void *sp50;
    s32 sp4C;
    u32 sp44;
    u32 sp38;
    Elf *var_a3;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_v0;
    s32 temp_v0_4;
    s32 temp_v1;
    s32 temp_v1_3;
    s32 temp_v1_5;
    s32 var_t0;
    u32 temp_a0_3;
    u32 temp_t3;
    u32 temp_v0_2;
    u32 temp_v0_3;
    u32 temp_v1_2;
    u32 temp_v1_4;
    u32 var_v0;
    void *temp_v0_5;

    if (arg0 == NULL) {
        return NULL;
    }
    if (arg1 == NULL) {
        var_a3 = arg0->unk8;
    } else {
        var_a3 = arg1->unk1C;
    }
    temp_v1 = arg0->unk18;
    if (temp_v1 != 0) {
        _elf_err = temp_v1;
        return NULL;
    }
    if (var_a3 == NULL) {
        return NULL;
    }
    if (arg0 != var_a3->unk18) {
        _elf_err = 0x509;
        return NULL;
    }
    if (var_a3->unk3C & 2) {
        return var_a3;
    }
    sp68 = arg0->unk4;
    var_a3->unk14 = (u32) _elf_work;
    if ((var_a3->unk24 == 0) || (var_a3->unk28 == 0)) {
        var_a3->unk3C = (s32) (var_a3->unk3C | 2);
        return var_a3;
    }
    temp_v0 = sp68->unk48;
    if (temp_v0 == 2) {
        var_t0 = 1;
        goto block_21;
    }
    if (temp_v0 == 1) {
        var_t0 = 0;
block_21:
        if (var_t0 != 0) {
            temp_a0 = var_a3->unk4;
            temp_t3 = arg0->unk10->unk3C;
            if ((temp_a0 != 0) && (temp_t3 >= 2U)) {
                sp4C = var_t0;
                sp6C = var_a3;
                sp44 = temp_t3;
                temp_v0_2 = _elf64_fsize(temp_a0, 1, sp68->unk44, var_a3);
                if (temp_v0_2 != sp44) {
                    _elf_err = 0x20C;
                    return NULL;
                }
            }
            goto block_30;
        }
        temp_a0_2 = var_a3->unk4;
        temp_v1_2 = arg0->unk10->unk24;
        if ((temp_a0_2 != 0) && (temp_v1_2 >= 2U)) {
            sp4C = var_t0;
            sp6C = var_a3;
            sp38 = temp_v1_2;
            temp_v0_3 = _elf32_fsize(temp_a0_2, 1, sp68->unk44, var_a3);
            if (temp_v0_3 != temp_v1_2) {
                _elf_err = 0x20C;
                return NULL;
            }
        }
block_30:
        temp_v1_3 = var_a3->unk24;
        if ((temp_v1_3 < 0) || (temp_a0_3 = sp68->unk34, (((u32) temp_v1_3 < temp_a0_3) == 0)) || ((u32) (temp_a0_3 - temp_v1_3) < (u32) var_a3->unk28)) {
            _elf_err = 0x20A;
            return NULL;
        }
        sp50 = sp68->unk28 + temp_v1_3;
        sp58 = var_a3->unk28;
        sp54 = var_a3->unk4;
        sp64 = sp68->unk44;
        sp4C = var_t0;
        sp6C = var_a3;
        if (_elf_vm(sp68, var_a3->unk24, var_a3->unk28, var_a3) != 0) {
            return NULL;
        }
        temp_v0_4 = sp68->unkC;
        switch (temp_v0_4) {                        /* irregular */
        case 1:
            temp_v1_4 = var_a3->unk4;
            if (temp_v1_4 >= 0xFU) {
                _elf_err = 2;
                return NULL;
            }
            if (sp58 >= (u32) var_a3->unk8) {
                if (var_t0 != 0) {
                    var_v0 = RO_1001172C[temp_v1_4];
                } else {
                    var_v0 = RO_100116F0[temp_v1_4];
                }
                temp_v1_5 = var_a3->unk24;
                if (((u32) temp_v1_5 % var_v0) == 0) {
                    var_a3->unk0 = (void *) (sp68->unk28 + temp_v1_5);
                    goto block_51;
                }
                goto block_47;
            }
        case 2:
block_47:
            sp4C = var_t0;
            sp6C = var_a3;
            temp_v0_5 = malloc(var_a3->unk8);
            var_a3->unk34 = temp_v0_5;
            if (temp_v0_5 == NULL) {
                _elf_err = 0x40A;
                return NULL;
            }
            var_a3->unk0 = (void *) var_a3->unk34;
block_51:
            if (var_t0 != 0) {
                sp6C = var_a3;
                if (_elf64_xlatetom(var_a3, &sp50, sp68->unk40, var_a3) == 0) {
                    return NULL;
                }
                goto block_56;
            }
            sp6C = var_a3;
            if (_elf32_xlatetom(var_a3, &sp50, sp68->unk40, var_a3) == 0) {
                return NULL;
            }
block_56:
            sp6C->unk3C = (s32) (sp6C->unk3C | 2);
            return sp6C;
        default:
            _elf_err = 1;
            return NULL;
        }
    } else {
        _elf_err = 0x505;
        return NULL;
    }
}

/*
Decompilation failure in function _elf_strptr:

Function _elf_strptr contains no instructions. Maybe it is rodata?
*/

s8 *elf_strptr(Elf *arg0, u32 arg1, u32 arg2) {
    u32 sp28;
    Elf_Scn *temp_v0_2;
    s32 temp_v0;
    s32 var_s1_3;
    u32 temp_a2;
    u32 temp_hi;
    u32 temp_v1_2;
    u32 temp_v1_3;
    u32 temp_v1_4;
    u32 temp_v1_5;
    u32 var_a2;
    u32 var_s0;
    void *temp_v1;
    void *var_s1;
    void *var_s1_2;
    void *var_v0;
    void *var_v0_2;

    var_s0 = arg2;
    if (arg0 == NULL) {
        return NULL;
    }
    temp_v0 = arg0->unk48;
    if (temp_v0 == 2) {
        var_s1_3 = 1;
        goto block_7;
    }
    if (temp_v0 == 1) {
        var_s1_3 = 0;
block_7:
        temp_v0_2 = _elf_getscn(arg0, arg1);
        if ((temp_v0_2 == NULL) || (temp_v1 = temp_v0_2->unk10, (temp_v1 == NULL))) {
            _elf_err = 0x513;
            return NULL;
        }
        if (((var_s1_3 != 0) && (temp_v1->unk4 != 3)) || ((var_s1_3 == 0) && (temp_v1->unk4 != 3))) {
            _elf_err = 0x513;
            return NULL;
        }
        if (arg0->unk94 & 4) {
            var_v0 = _elf_getdata(temp_v0_2, NULL);
            var_s1_2 = var_v0;
            if (var_v0 != NULL) {
loop_17:
                if (var_v0->unk0 != 0) {
                    temp_v1_2 = var_v0->unkC;
                    if ((var_s0 >= temp_v1_2) && (var_s0 < (u32) (temp_v1_2 + var_v0->unk8))) {
                        return (var_s1_2->unk0 + var_s0) - var_s1_2->unkC;
                    }
                }
                var_v0 = _elf_getdata(temp_v0_2, var_s1_2);
                var_s1_2 = var_v0;
                if (var_v0 == NULL) {
                    goto block_33;
                }
                goto loop_17;
            }
            goto block_33;
        }
        sp28 = 0;
        var_v0_2 = _elf_getdata(temp_v0_2, NULL);
        var_a2 = sp28;
        var_s1 = var_v0_2;
        if (var_v0_2 != NULL) {
loop_24:
            temp_v1_3 = var_v0_2->unk10;
            if (temp_v1_3 >= 2U) {
                temp_hi = var_a2 % temp_v1_3;
                temp_v1_4 = temp_v1_3 - temp_hi;
                if (temp_hi != 0) {
                    var_a2 += temp_v1_4;
                    if (var_s0 >= temp_v1_4) {
                        var_s0 -= temp_v1_4;
                        goto block_28;
                    }
                    goto block_33;
                }
            }
block_28:
            if ((var_v0_2->unk0 != 0) && (var_s0 < (u32) var_v0_2->unk8)) {
                return var_s1->unk0 + var_s0;
            }
            temp_v1_5 = var_v0_2->unk8;
            temp_a2 = var_a2 + temp_v1_5;
            if ((var_s0 < temp_v1_5) || (sp28 = temp_a2, var_s0 -= var_s1->unk8, var_v0_2 = _elf_getdata(temp_v0_2, var_s1, temp_a2), var_a2 = temp_a2, var_s1 = var_v0_2, (var_v0_2 == NULL))) {
                goto block_33;
            }
            goto loop_24;
        }
block_33:
        _elf_err = 0x512;
        return NULL;
    }
    _elf_err = 0x505;
    return NULL;
}

s32 func_0041E190(Elf *arg0, s32 arg1) {
    s32 sp2C;
    s32 var_v0;
    s32 var_v1;

    if (arg0 == NULL) {
        sp2C = 0;
        if (lseek(arg1, 0, 0) == -1) {
            return 1;
        }
        if (read(arg1, &unksp30, 8U) != 8) {
            return 1;
        }
        var_v1 = sp2C;
        if (memcmp(&unksp30, "!<arch>\n", 8) == 0) {
            var_v1 = 1;
        }
        return var_v1;
    }
    var_v0 = 1;
    if (arg0->unk4C != 1) {
        if (!(arg0->unk88 & 0x100)) {
            return 1;
        }
        var_v0 = 0;
        /* Duplicate return node #12. Try simplifying control flow for better match */
        return var_v0;
    }
    return var_v0;
}

/*
Decompilation failure in function _elf_begin:

Function _elf_begin contains no instructions. Maybe it is rodata?
*/

Elf *elf_begin(s32 arg0, s32 arg1, Elf *arg2) {
    Elf *sp28;
    s32 (**sp24)(Elf *);
    Elf *temp_a3;
    Elf *temp_v0;
    Elf *temp_v0_2;
    Elf *var_s0;
    Elf *var_v0;
    s32 (**var_v1)(Elf *);
    s32 (*var_v0_2)(Elf *);
    s32 temp_t9;
    s32 temp_v0_4;
    s32 var_a2;
    s8 temp_v0_3;
    u32 temp_v0_5;

    if (_elf_work == 0) {
        _elf_err = 0x602;
        return NULL;
    }
    switch (arg1) {
    default:
        _elf_err = 0x504;
        return NULL;
    case ELF_C_NULL:
        return NULL;
    case 9:
        temp_v0 = malloc(0x9CU);
        var_s0 = temp_v0;
        if (temp_v0 == NULL) {
            _elf_err = 0x40D;
            return NULL;
        }
        M2C_MEMCPY_ALIGNED(var_s0, &D_100158B0, 0x9C);
        var_s0->unk98 = -1;
        temp_t9 = var_s0->unk88 | 0x80;
        var_s0->unk88 = temp_t9;
        var_s0->unk8 = arg0;
        var_s0->unk4 = 1;
        var_s0->unk88 = (s32) (temp_t9 | 0x200);
block_47:
        return var_s0;
    case ELF_C_WRITE:
        temp_v0_2 = malloc(0x9CU);
        var_s0 = temp_v0_2;
        if (temp_v0_2 == NULL) {
            _elf_err = 0x40D;
            return NULL;
        }
        M2C_MEMCPY_ALIGNED(var_s0, &D_100158B0, 0x9C);
        var_s0->unk98 = -1;
        var_s0->unk8 = arg0;
        var_s0->unk4 = 1;
        var_s0->unk88 = (s32) (var_s0->unk88 | 0x80);
        goto block_47;
    case ELF_C_RDWR:
        var_a2 = 0xC0;
block_16:
        if (arg2 == NULL) {
            var_v0 = func_0041E958(arg0, var_a2, var_a2, arg0);
            var_s0 = var_v0;
            if (var_v0 == NULL) {
                return NULL;
            }
            goto block_25;
        }
        if (var_a2 != (arg2->unk88 & var_a2)) {
            _elf_err = 0x510;
            return NULL;
        }
        if (arg2->unk4C != 1) {
            arg2->unk4 = (s32) (arg2->unk4 + 1);
            return arg2;
        }
        var_v0 = func_0041E700(arg0, arg2, var_a2, arg0);
        var_s0 = var_v0;
        if (var_v0 == NULL) {
            return NULL;
        }
block_25:
        var_v0->unk4 = 1;
        temp_a3 = var_v0->unk28;
        if ((u32) var_v0->unk34 >= 0x10U) {
            sp28 = temp_a3;
            if ((_elf_vm(var_s0, 0, 0x10U, temp_a3) == 0) && (temp_a3->unk0 == 0x7F) && (temp_a3->unk1 == 0x45) && (temp_a3->unk2 == 0x4C) && (temp_a3->unk3 == 0x46)) {
                var_s0->unk4C = 3;
                var_s0->unk48 = (s32) temp_a3->unk4;
                var_s0->unk40 = (s32) temp_a3->unk5;
                temp_v0_3 = temp_a3->unk6;
                var_s0->unk44 = (s32) temp_v0_3;
                if (temp_v0_3 == 0) {
                    var_s0->unk44 = 1;
                }
                var_s0->unk2C = 0x10U;
                goto block_47;
            }
        }
        if ((u32) var_s0->unk34 >= 8U) {
            sp28 = temp_a3;
            if ((_elf_vm(var_s0, 0, 8U, temp_a3) == 0) && (memcmp(temp_a3, "!<arch>\n", 8, temp_a3) == 0)) {
                _elf_arinit(var_s0);
                var_s0->unk4C = 1;
                var_s0->unk2C = 8U;
                goto block_47;
            }
        }
        var_v1 = &_elf_foreign;
        if (_elf_foreign != NULL) {
            var_v0_2 = _elf_foreign;
loop_40:
            sp24 = var_v1;
            temp_v0_4 = var_v0_2(var_s0);
            if (temp_v0_4 > 0) {
                var_s0->unk4C = temp_v0_4;
                goto block_47;
            }
            if (temp_v0_4 != 0) {
                _elf_end(var_s0);
                return NULL;
            }
            var_v0_2 = var_v1->unk4;
            var_v1 += 4;
            if (var_v0_2 == NULL) {
                goto block_45;
            }
            goto loop_40;
        }
block_45:
        temp_v0_5 = var_s0->unk34;
        var_s0->unk4C = 0;
        var_s0->unk2C = temp_v0_5;
        if (temp_v0_5 >= 0x201U) {
            var_s0->unk2C = 0x200U;
        }
        goto block_47;
    case ELF_C_READ:
block_13:
        var_a2 = 0x40;
        goto block_16;
    case ELF_C_NUM:
        if (func_0041E190(arg2, arg0, arg0) == 0) {
            var_a2 = 0x140;
        } else {
            goto block_13;
        }
        goto block_16;
    }
}

Elf *func_0041E700(s32 arg0, Elf *arg1, s32 arg2) {
    void *sp28;
    s32 sp24;
    u32 sp20;
    Elf *temp_v0;
    s32 temp_v0_2;
    s32 temp_v1;
    u32 temp_t2;
    u32 temp_t6;
    u32 temp_t9;
    void *temp_v0_3;

    temp_t6 = arg1->unk1C;
    sp20 = temp_t6;
    if (temp_t6 >= (u32) arg1->unk34) {
        return NULL;
    }
    temp_v0_2 = arg1->unk8;
    if (temp_v0_2 == -1) {
        arg0 = -1;
    }
    if (arg2 & 0x80) {
        _elf_err = 0x503;
        return NULL;
    }
    if (arg0 != temp_v0_2) {
        _elf_err = 0x502;
        return NULL;
    }
    if ((_elf_vm(arg1, (s32) sp20, 0x3CU, arg1) != 0) || (temp_v0_3 = _elf_armem(arg1, arg1->unk28 + arg1->unk1C, arg1->unk34, arg1), (temp_v0_3 == NULL))) {
        return NULL;
    }
    temp_v1 = arg1->unk1C + 0x3C;
    if ((u32) (arg1->unk34 - temp_v1) < (u32) temp_v0_3->unk14) {
        _elf_err = 0x204;
        return NULL;
    }
    sp24 = temp_v1;
    sp28 = temp_v0_3;
    temp_v0 = malloc(0x9CU);
    if (temp_v0 == NULL) {
        _elf_err = 0x40D;
        return NULL;
    }
    M2C_MEMCPY_ALIGNED(temp_v0, &D_100158B0, 0x9C);
    arg1->unk4 = (s32) (arg1->unk4 + 1);
    temp_v0->unk0 = arg1;
    temp_v0->unk8 = arg0;
    temp_v0->unk6C = temp_v0_3;
    temp_v0->unk88 = (s32) (temp_v0->unk88 | arg2);
    temp_t2 = temp_v0_3->unk14;
    temp_v0->unk34 = temp_t2;
    temp_t9 = temp_t2 + temp_v1 + (temp_t2 & 1);
    temp_v0->unk10 = (s32) (arg1->unk10 + temp_v1);
    temp_v0->unk14 = temp_v1;
    temp_v0->unk18 = temp_t9;
    arg1->unk1C = temp_t9;
    temp_v0->unk20 = (s32) arg1->unk20;
    temp_v0->unk24 = (s32) arg1->unk24;
    temp_v0->unk38 = (s32) arg1->unk38;
    temp_v0->unk3C = (s32) arg1->unk3C;
    temp_v0->unk98 = -1;
    temp_v0->unk28 = (s32) (arg1->unk28 + temp_v1);
    if (arg1->unk1C == arg1->unk84) {
        temp_v0->unkC = 1;
    }
    return temp_v0;
}

Elf *func_0041E958(s32 arg0, s32 arg1) {
    Elf *temp_v0;
    void *temp_a0;

    temp_v0 = malloc(0x9CU);
    if (temp_v0 == NULL) {
        _elf_err = 0x40D;
        return NULL;
    }
    M2C_MEMCPY_ALIGNED(temp_v0, &D_100158B0, 0x9C);
    temp_v0->unk98 = -1;
    temp_v0->unk8 = arg0;
    temp_v0->unk88 = (s32) (temp_v0->unk88 | arg1);
    if (_elf_inmap(temp_v0) != 0) {
        temp_a0 = temp_v0->unk38;
        if (temp_a0 != NULL) {
            free(temp_a0);
        }
        if ((temp_v0->unk38 == NULL) || (temp_v0->unk88 & 0x80000000)) {
            _elf_unmap(temp_v0->unk20, temp_v0->unk24);
        }
        if (temp_v0->unk88 & 0x20000000) {
            free(temp_v0->unk20);
        }
        free(temp_v0);
        return NULL;
    }
    return temp_v0;
}

/*
Decompilation failure in function _elf_end:

Function _elf_end contains no instructions. Maybe it is rodata?
*/

s32 elf_end(void *arg0) {
    s32 temp_t7;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_s0;
    void *temp_s0_2;
    void *temp_s0_3;
    void *temp_s3;
    void *temp_v0;
    void *var_s0;
    void *var_s1;
    void *var_s2;
    void *var_s3;
    void *var_s4;

    var_s4 = arg0;
    var_s3 = NULL;
    if (arg0 == NULL) {
        goto block_47;
    }
    temp_t7 = var_s4->unk4 - 1;
    var_s4->unk4 = temp_t7;
    if (temp_t7 != 0) {
        return temp_t7;
    }
loop_4:
    temp_v0 = var_s4->unk0;
    if (temp_v0 != NULL) {
        temp_v0->unk4 = (s32) (temp_v0->unk4 - 1);
    }
    var_s2 = var_s4->unk60;
    if (var_s2 != NULL) {
        do {
            var_s1 = var_s2->unk8;
            if (var_s1 != NULL) {
                do {
                    temp_a0 = var_s1->unk34;
                    if (temp_a0 != NULL) {
                        free(temp_a0);
                    }
                    temp_s0_2 = var_s1->unk20;
                    if (temp_s0_2 != NULL) {
                        temp_a0_2 = temp_s0_2->unk34;
                        if (temp_a0_2 != NULL) {
                            free(temp_a0_2);
                        }
                        if (temp_s0_2->unk3C & 1) {
                            free(temp_s0_2);
                        }
                    }
                    temp_s0 = var_s1->unk1C;
                    if (var_s1->unk3C & 1) {
                        free(var_s1);
                    }
                    var_s1 = temp_s0;
                } while (temp_s0 != NULL);
            }
            if (var_s2->unk24 & 1) {
                if (var_s3 != NULL) {
                    free(var_s3);
                }
                var_s3 = var_s2;
            }
            var_s2 = var_s2->unk0;
        } while (var_s2 != NULL);
    }
    if (var_s3 != NULL) {
        free(var_s3);
    }
    var_s0 = var_s4->unk68;
    if (var_s0 != NULL) {
        do {
            temp_s3 = var_s0->unk1C;
            free(var_s0);
            var_s0 = temp_s3;
        } while (temp_s3 != NULL);
    }
    if (var_s4->unk88 & 2) {
        free(var_s4->unk50);
    }
    if (var_s4->unk88 & 4) {
        free(var_s4->unk54);
    }
    if (var_s4->unk88 & 8) {
        free(var_s4->unk5C);
    }
    if (var_s4->unk88 & 0x20) {
        free(var_s4->unk30);
    }
    if (var_s4->unk88 & 1) {
        free(var_s4->unk70);
    }
    if (var_s4->unk0 == NULL) {
        temp_s0_3 = var_s4->unk38;
        if (temp_s0_3 != NULL) {
            free(temp_s0_3);
        }
        if ((var_s4->unk38 == NULL) || (var_s4->unk88 & 0x80000000)) {
            _elf_unmap(var_s4->unk20, var_s4->unk24);
        }
        if (var_s4->unk88 & 0x20000000) {
            free(var_s4->unk20);
        }
    }
    temp_a0_3 = var_s4;
    var_s4 = var_s4->unk0;
    free(temp_a0_3);
    var_s3 = NULL;
    if ((var_s4 != NULL) && (var_s4->unk4 == 0)) {
        goto loop_4;
    }
block_47:
    return 0;
}

s32 _elf32_entsz(u32 arg0, s32 arg1) {
    s32 temp_v1;

    if ((arg0 >= 0xCU) || (temp_v1 = ((arg1 * 0x30) + (arg0 * 4) + &RO_10011828)->unk-30, (temp_v1 == 0))) {
        return 0;
    }
    return ((arg1 * 0x78) + (temp_v1 * 8) + RO_100117B0)->unk-78;
}

/*
Decompilation failure in function _elf32_fsize:

Function _elf32_fsize contains no instructions. Maybe it is rodata?
*/

s32 elf32_fsize(u32 arg0, s32 arg1, s32 arg2) {
    s32 temp_a2;

    temp_a2 = arg2 - 1;
    if (temp_a2 != 0) {
        _elf_err = 0x517;
        return 0;
    }
    if (arg0 >= 0xFU) {
        _elf_err = 0x514;
        return 0;
    }
    return *((temp_a2 * 0x78) + (arg0 * 8) + RO_100117B0) * arg1;
}

s32 _elf32_msize(s32 arg0, u32 arg1) {
    return ((arg1 * 0x78) + (arg0 * 8) + RO_100117B0)->unk-74;
}

s32 _elf32_mtype(u32 arg0, u32 arg1) {
    if (arg0 >= 0xCU) {
        return 0;
    }
    return ((arg1 * 0x30) + (arg0 * 4) + &RO_10011828)->unk-30;
}

void *func_0041EF5C(void *arg0, void *arg1, u32 arg2, s32 arg3) {
    u32 sp4C;
    u32 sp2C;
    u32 sp28;
    ? (*var_t1)(s16 *, s16 *, u32, u32);
    s16 *temp_a0_2;
    s16 *temp_a1;
    s32 temp_a0;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v1;
    s32 var_a2;
    u32 temp_lo;
    u32 temp_lo_2;
    u32 temp_t0;
    u32 temp_t7;
    u32 temp_t7_2;
    u32 var_a3;

    if ((arg0 == NULL) || (arg1 == NULL)) {
        return NULL;
    }
    temp_t7 = arg2 - 1;
    arg2 = temp_t7;
    if (temp_t7 >= 2U) {
        _elf_err = 0x50B;
        return NULL;
    }
    temp_a0 = arg0->unk14 - 1;
    if ((temp_a0 != 0) || (temp_v1 = arg1->unk14 - 1, (temp_v1 != 0))) {
        _elf_err = 0x517;
        return NULL;
    }
    temp_t0 = arg1->unk4;
    if (temp_t0 >= 0xFU) {
        _elf_err = 0x514;
        return NULL;
    }
    temp_v0 = temp_t0 * 8;
    if (arg3 != 0) {
        temp_v0_2 = temp_t0 * 8;
        var_a2 = *(&RO_100117B0[temp_a0] + temp_v0_2);
        var_a3 = (&RO_100117B0[temp_v1] + temp_v0_2)->unk4;
        var_t1 = *((temp_a0 * 0xF0) + (temp_v1 * 0xF0) + (arg2 * 0x78) + temp_v0_2 + &D_10015950);
    } else {
        var_a2 = (&RO_100117B0[temp_a0] + temp_v0)->unk4;
        var_a3 = *(&RO_100117B0[temp_v1] + temp_v0);
        var_t1 = ((temp_a0 * 0xF0) + (temp_v1 * 0xF0) + (arg2 * 0x78) + temp_v0 + &D_10015950)->unk4;
    }
    temp_t7_2 = arg1->unk8;
    temp_lo = temp_t7_2 / var_a3;
    sp4C = temp_lo;
    sp2C = temp_t7_2;
    temp_lo_2 = var_a2 * temp_lo;
    if ((u32) arg0->unk8 < temp_lo_2) {
        _elf_err = 0x50A;
        return NULL;
    }
    if ((_elf_encode == (arg2 + 1)) && (var_a2 == var_a3)) {
        temp_a0_2 = arg0->unk0;
        temp_a1 = arg1->unk0;
        if (temp_a0_2 != temp_a1) {
            memcpy(temp_a0_2, temp_a1, sp2C, var_a3);
        }
        arg0->unk4 = arg1->unk4;
        arg0->unk8 = (u32) arg1->unk8;
        return arg0;
    }
    if (sp4C != 0) {
        sp28 = temp_lo_2;
        var_t1(arg0->unk0, arg1->unk0, sp4C, var_a3);
    }
    arg0->unk8 = temp_lo_2;
    arg0->unk4 = (u32) arg1->unk4;
    return arg0;
}

/*
Decompilation failure in function _elf32_xlatetof:

Function _elf32_xlatetof contains no instructions. Maybe it is rodata?
*/

void elf32_xlatetof(void) {
    func_0041EF5C((void *)1);
}

/*
Decompilation failure in function _elf32_xlatetom:

Function _elf32_xlatetom contains no instructions. Maybe it is rodata?
*/

void elf32_xlatetom(void) {
    func_0041EF5C(NULL);
}

/*
Decompilation failure in function _elf32_getehdr:

Function _elf32_getehdr contains no instructions. Maybe it is rodata?
*/

Elf32_Ehdr *elf32_getehdr(Elf *arg0) {
    Elf32_Ehdr *var_v1;
    s32 temp_v0;

    if (arg0 == NULL) {
        return NULL;
    }
    temp_v0 = arg0->unk48;
    if (temp_v0 != 1) {
        if (temp_v0 == 0) {
            arg0->unk48 = 1;
            goto block_6;
        }
        _elf_err = 0x505;
        return NULL;
    }
block_6:
    var_v1 = arg0->unk50;
    if (var_v1 == NULL) {
        _elf_cook();
        var_v1 = arg0->unk50;
    }
    return var_v1;
}

/*
Decompilation failure in function _elf64_getehdr:

Function _elf64_getehdr contains no instructions. Maybe it is rodata?
*/

s32 elf64_getehdr(void *arg0) {
    s32 temp_v0;
    s32 var_v1;

    if (arg0 == NULL) {
        return 0;
    }
    temp_v0 = arg0->unk48;
    if (temp_v0 != 2) {
        if (temp_v0 == 0) {
            arg0->unk48 = 2;
            goto block_6;
        }
        _elf_err = 0x505;
        return 0;
    }
block_6:
    var_v1 = arg0->unk50;
    if (var_v1 == 0) {
        _elf_cook();
        var_v1 = arg0->unk50;
    }
    return var_v1;
}

s32 _elf_cook(Elf *arg0) {
    s32 sp24;
    s32 sp20;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v1;
    s32 var_a1;

    sp24 = 1;
    temp_v1 = arg0->unkC;
    if ((temp_v1 == 1) || !(arg0->unk88 & 0x40) || (arg0->unk4C != 3)) {
        return 0;
    }
    temp_v0 = arg0->unk48;
    if (temp_v0 == 2) {
        var_a1 = 1;
        goto block_9;
    }
    if (temp_v0 == 1) {
        var_a1 = 0;
block_9:
        if (temp_v1 == 0) {
            sp20 = var_a1;
            if (func_00422B14(arg0, var_a1) != 0) {
                goto block_31;
            }
        }
        if (arg0->unkC == 2) {
            sp24 = 0;
        }
        if (var_a1 != 0) {
            if (func_00421F40(arg0, sp24) != 0) {
                goto block_31;
            }
            if (func_00422334(arg0, sp24) == 0) {
                if (func_00422848(arg0, sp24) != 0) {
                    goto block_25;
                }
                goto block_24;
            }
            goto block_28;
        }
        if (func_00421D98(arg0, sp24) != 0) {
            goto block_31;
        }
        if (func_004220E8(arg0, sp24) == 0) {
            if (func_0042260C(arg0, sp24) == 0) {
block_24:
                return 0;
            }
block_25:
            temp_v0_2 = arg0->unk88;
            if (temp_v0_2 & 4) {
                arg0->unk88 = (s32) (temp_v0_2 & ~4);
                free(arg0->unk54);
            }
            arg0->unk54 = NULL;
            goto block_28;
        }
block_28:
        temp_v0_3 = arg0->unk88;
        if (temp_v0_3 & 2) {
            arg0->unk88 = (s32) (temp_v0_3 & ~2);
            free(arg0->unk50);
        }
        arg0->unk50 = NULL;
block_31:
        return -1;
    }
    _elf_err = 0x505;
    return -1;
}

s32 _elf_cookscn(Elf *arg0, u16 arg1) {
    void *sp50;
    s32 sp44;
    s32 *temp_s2;
    s32 temp_a0;
    s32 temp_v0_3;
    s32 temp_v0_4;
    u32 temp_s0;
    u32 temp_s1;
    u32 temp_s1_2;
    u32 temp_s5;
    u64 temp_ret;
    void *temp_s0_2;
    void *temp_s2_2;
    void *temp_v0;
    void *temp_v0_2;
    void *var_s2;
    void *var_s3;
    void *var_s4;

    if (arg1 == 0) {
        return 0;
    }
    temp_s0 = arg1 * 0x68;
    temp_v0 = malloc(temp_s0);
    var_s2 = temp_v0;
    if (temp_v0 == NULL) {
        _elf_err = 0x410;
        return -1;
    }
    temp_a0 = arg0->unk48;
    if (temp_a0 == 2) {
        sp44 = 1;
        goto block_9;
    }
    if (temp_a0 == 1) {
        sp44 = 0;
block_9:
        sp50 = temp_s0 + temp_v0;
        arg0->unk60 = temp_v0;
        var_s4 = NULL;
        var_s3 = NULL;
        if (sp44 != 0) {
            var_s3 = arg0->unk5C;
        } else {
            var_s4 = arg0->unk5C;
        }
        do {
            M2C_MEMCPY_ALIGNED(var_s2, &_elf_snode_init, 0x64);
            temp_s0_2 = var_s2 + 0x28;
            (var_s2 + 0x60)->unk4 = (s32) (&_elf_snode_init + 0x60)->unk4;
            var_s2->unk4 = arg0;
            if (sp44 != 0) {
                var_s2->unk10 = var_s3;
            } else {
                var_s2->unk10 = var_s4;
            }
            var_s2->unk8 = temp_s0_2;
            var_s2->unkC = temp_s0_2;
            var_s2->unk14 = (s32) ((s32) (var_s2 - arg0->unk60) / 104);
            temp_s0_2->unk18 = var_s2;
            temp_s0_2->unk14 = (u32) arg0->unk44;
            if (sp44 != 0) {
                temp_s0_2->unk10 = (s32) var_s3->unk34;
                temp_s0_2->unk24 = (s32) var_s3->unk1C;
                temp_v0_3 = _elf64_mtype(var_s3->unk4, _elf_work);
                temp_s0_2->unk4 = temp_v0_3;
                temp_s1 = _elf64_fsize(temp_v0_3, 1, arg0->unk44);
                temp_s5 = _elf64_msize(temp_s0_2->unk4, arg0->unk44);
                temp_ret = __ull_div(var_s3->unk20, var_s3->unk24, 0, temp_s1);
                temp_s0_2->unk8 = (u32) __ll_mul(temp_ret, (u32) temp_ret, 0, temp_s5);
                temp_s0_2->unk2C = (u32) var_s3->unk24;
                if (var_s3->unk4 != 8) {
                    temp_s0_2->unk28 = (u32) var_s3->unk24;
                }
                var_s3 += 0x40;
            } else {
                temp_s0_2->unk10 = (s32) var_s4->unk20;
                temp_s0_2->unk24 = (s32) var_s4->unk10;
                temp_v0_4 = _elf32_mtype(var_s4->unk4, _elf_work);
                temp_s0_2->unk4 = temp_v0_4;
                temp_s1_2 = _elf32_fsize(temp_v0_4, 1, arg0->unk44);
                temp_s0_2->unk8 = (u32) (((u32) var_s4->unk14 / temp_s1_2) * _elf32_msize(temp_s0_2->unk4, arg0->unk44));
                temp_s0_2->unk2C = (u32) var_s4->unk14;
                if (var_s4->unk4 != 8) {
                    temp_s0_2->unk28 = (u32) var_s4->unk14;
                }
                var_s4 += 0x28;
            }
            temp_v0_2 = var_s2 + 0x68;
            var_s2->unk0 = temp_v0_2;
            var_s2 = temp_v0_2;
        } while ((u32) temp_v0_2 < (u32) sp50);
        temp_s2 = temp_v0_2 - 0x68;
        arg0->unk64 = temp_s2;
        *temp_s2 = 0;
        temp_s2_2 = arg0->unk60;
        temp_s2_2->unk24 = 1;
        temp_s2_2->unk8 = 0;
        temp_s2_2->unkC = 0;
        return 0;
    }
    _elf_err = 0x505;
    return -1;
}

void *_elf_dnode(void) {
    void *temp_t7;
    void *temp_v0;

    temp_v0 = malloc(0x40U);
    if (temp_v0 == NULL) {
        _elf_err = 0x40B;
        return NULL;
    }
    temp_t7 = &_elf_snode_init + 0x28;
    M2C_MEMCPY_ALIGNED(temp_v0, temp_t7, 0x3C);
    *(temp_v0 + 0x3C) = *(temp_t7 + 0x3C);
    temp_v0->unk3C = 1;
    return temp_v0;
}

void *_elf_snode(void) {
    void *temp_v0;

    temp_v0 = malloc(0xA8U);
    if (temp_v0 == NULL) {
        _elf_err = 0x412;
        return NULL;
    }
    M2C_MEMCPY_ALIGNED(temp_v0, &_elf_snode_init, 0xA8);
    temp_v0->unk24 = 1;
    temp_v0->unk10 = (void *) (temp_v0 + 0x68);
    return temp_v0;
}

s32 func_00421D98(Elf *arg0, s32 arg1) {
    u32 sp54;
    s32 sp50;
    s32 sp44;
    void *sp3C;
    u32 sp38;
    u32 sp2C;
    s32 sp28;
    void *sp24;
    s32 temp_v0_3;
    u32 temp_v0;
    void *temp_v0_2;

    temp_v0 = _elf32_fsize(3, 1, arg0->unk44);
    if ((u32) arg0->unk34 < temp_v0) {
        _elf_err = 0x20B;
        return -1;
    }
    if ((arg1 != 0) && (temp_v0 >= 0x34U)) {
        arg0->unkC = 1;
        arg0->unk50 = (void *) arg0->unk28;
        goto block_8;
    }
    sp54 = temp_v0;
    temp_v0_2 = malloc(0x34U);
    arg0->unk50 = temp_v0_2;
    if (temp_v0_2 == NULL) {
        _elf_err = 0x40C;
        return -1;
    }
    arg0->unk88 = (s32) (arg0->unk88 | 2);
block_8:
    sp24 = arg0->unk28;
    sp28 = 3;
    sp2C = temp_v0;
    sp38 = arg0->unk44;
    sp44 = 0x34;
    sp50 = 1;
    sp3C = arg0->unk50;
    if ((_elf_vm(arg0, 0, temp_v0) != 0) || (_elf32_xlatetom((Elf *) &sp3C, &sp24, arg0->unk40) == 0)) {
        goto block_10;
    }
    if (arg0->unk44 != arg0->unk50->unk14) {
        _elf_err = 0x212;
block_10:
        temp_v0_3 = arg0->unk88;
        if (temp_v0_3 & 2) {
            arg0->unk88 = (s32) (temp_v0_3 & ~2);
            free(arg0->unk50);
        }
        arg0->unk50 = NULL;
        return -1;
    }
    return 0;
}

s32 func_00421F40(Elf *arg0, s32 arg1) {
    u32 sp54;
    s32 sp50;
    s32 sp44;
    void *sp3C;
    u32 sp38;
    u32 sp2C;
    s32 sp28;
    void *sp24;
    s32 temp_v0_3;
    u32 temp_v0;
    void *temp_v0_2;

    temp_v0 = _elf64_fsize(3, 1, arg0->unk44);
    if ((u32) arg0->unk34 < temp_v0) {
        _elf_err = 0x20B;
        return -1;
    }
    if ((arg1 != 0) && (temp_v0 >= 0x40U)) {
        arg0->unkC = 1;
        arg0->unk50 = (void *) arg0->unk28;
        goto block_8;
    }
    sp54 = temp_v0;
    temp_v0_2 = malloc(0x40U);
    arg0->unk50 = temp_v0_2;
    if (temp_v0_2 == NULL) {
        _elf_err = 0x40C;
        return -1;
    }
    arg0->unk88 = (s32) (arg0->unk88 | 2);
block_8:
    sp24 = arg0->unk28;
    sp28 = 3;
    sp2C = temp_v0;
    sp38 = arg0->unk44;
    sp44 = 0x40;
    sp50 = 1;
    sp3C = arg0->unk50;
    if ((_elf_vm(arg0, 0, temp_v0) != 0) || (_elf64_xlatetom((Elf *) &sp3C, &sp24, arg0->unk40) == 0)) {
        goto block_10;
    }
    if (arg0->unk44 != arg0->unk50->unk14) {
        _elf_err = 0x212;
block_10:
        temp_v0_3 = arg0->unk88;
        if (temp_v0_3 & 2) {
            arg0->unk88 = (s32) (temp_v0_3 & ~2);
            free(arg0->unk50);
        }
        arg0->unk50 = NULL;
        return -1;
    }
    return 0;
}

s32 func_004220E8(Elf *arg0, s32 arg1) {
    u32 sp64;
    u32 sp60;
    u32 sp5C;
    u32 sp50;
    void *sp48;
    u32 sp44;
    u32 sp38;
    s32 sp34;
    void *sp30;
    Elf *sp2C;
    Elf *temp_a3;
    s32 temp_v0_4;
    u32 temp_lo;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v1;
    void *temp_v0_3;

    temp_a3 = arg0->unk50;
    if (temp_a3->unk2C == 0) {
        return 0;
    }
    sp2C = temp_a3;
    temp_v0 = _elf32_fsize(6, 1, arg0->unk44, temp_a3);
    if (temp_v0 != temp_a3->unk2A) {
        _elf_err = 0x20D;
        return -1;
    }
    sp2C = temp_a3;
    temp_lo = temp_v0 * temp_a3->unk2C;
    sp64 = temp_lo;
    sp60 = _elf32_msize(6, _elf_work, temp_lo, temp_a3) * temp_a3->unk2C;
    temp_v1 = temp_a3->unk1C;
    if ((temp_v1 == 0) || (temp_v0_2 = arg0->unk34, ((temp_v1 < temp_v0_2) == 0)) || ((u32) (temp_v0_2 - temp_v1) < temp_lo)) {
        _elf_err = 0x20E;
        return -1;
    }
    if ((arg1 != 0) && (temp_lo >= sp60) && !(temp_v1 & 3)) {
        arg0->unkC = 1;
        arg0->unk54 = (void *) (arg0->unk28 + temp_v1);
        goto block_15;
    }
    sp64 = temp_lo;
    sp2C = temp_a3;
    temp_v0_3 = malloc(sp60);
    arg0->unk54 = temp_v0_3;
    if (temp_v0_3 == NULL) {
        _elf_err = 0x40F;
        return -1;
    }
    arg0->unk88 = (s32) (arg0->unk88 | 4);
block_15:
    sp34 = 6;
    sp30 = arg0->unk28 + temp_a3->unk1C;
    sp38 = temp_lo;
    sp44 = arg0->unk44;
    sp50 = sp60;
    sp48 = arg0->unk54;
    sp5C = _elf_work;
    if ((_elf_vm(arg0, (s32) temp_a3->unk1C, temp_lo, temp_a3) != 0) || (_elf32_xlatetom((Elf *) &sp48, &sp30, arg0->unk40) == 0)) {
        temp_v0_4 = arg0->unk88;
        if (temp_v0_4 & 4) {
            arg0->unk88 = (s32) (temp_v0_4 & ~4);
            free(arg0->unk54);
        }
        arg0->unk54 = NULL;
        return -1;
    }
    arg0->unk58 = sp60;
    return 0;
}

s32 func_00422334(Elf *arg0, s32 arg1) {
    u32 sp74;
    u32 sp70;
    u32 sp6C;
    u32 sp60;
    void *sp58;
    u32 sp54;
    u32 sp48;
    s32 sp44;
    void *sp40;
    void *sp3C;
    u32 sp34;
    u32 sp30;
    u32 sp2C;
    u32 sp28;
    s32 temp_v0_3;
    u32 temp_lo;
    u32 temp_t3;
    u32 temp_t4;
    u32 temp_t6;
    u32 temp_t7;
    u32 temp_v0;
    u64 temp_ret;
    void *temp_t0;
    void *temp_v0_2;
    void *var_t0;

    temp_t0 = arg0->unk50;
    if (temp_t0->unk38 == 0) {
        return 0;
    }
    sp3C = temp_t0;
    temp_v0 = _elf64_fsize(6, 1, arg0->unk44);
    if (temp_v0 != temp_t0->unk36) {
        _elf_err = 0x20D;
        return -1;
    }
    sp3C = temp_t0;
    temp_lo = temp_v0 * temp_t0->unk38;
    sp74 = temp_lo;
    sp70 = _elf64_msize(6, _elf_work, temp_lo) * temp_t0->unk38;
    temp_t7 = temp_t0->unk24;
    temp_t6 = temp_t0->unk20;
    sp34 = temp_t7;
    sp30 = temp_t6;
    if (((temp_t6 == 0) && (temp_t7 == 0)) || (temp_t3 = arg0->unk34, sp28 = 0, sp2C = temp_t3, ((temp_t6 > 0U) != 0)) || ((temp_t6 >= 0U) && (temp_t7 >= temp_t3)) || ((temp_t4 = (0U - temp_t6) - (temp_t3 < temp_t7), ((temp_t4 > 0U) == 0)) && ((temp_t4 < 0U) || ((u32) (temp_t3 - temp_t7) < sp74)))) {
        _elf_err = 0x20E;
        return -1;
    }
    if ((arg1 != 0) && (sp74 >= sp70)) {
        sp3C = temp_t0;
        temp_ret = __ull_rem(sp30, sp34, 0, 8);
        var_t0 = temp_t0;
        if ((temp_ret == 0) && ((u32) temp_ret == 0)) {
            arg0->unkC = 1;
            arg0->unk54 = (void *) (arg0->unk28 + var_t0->unk24);
            goto block_21;
        }
    }
    sp3C = temp_t0;
    temp_v0_2 = malloc(sp70);
    var_t0 = temp_t0;
    arg0->unk54 = temp_v0_2;
    if (temp_v0_2 == NULL) {
        _elf_err = 0x40F;
        return -1;
    }
    arg0->unk88 = (s32) (arg0->unk88 | 4);
block_21:
    sp40 = arg0->unk28 + var_t0->unk24;
    sp44 = 6;
    sp48 = sp74;
    sp54 = arg0->unk44;
    sp60 = sp70;
    sp58 = arg0->unk54;
    sp6C = _elf_work;
    if ((_elf_vm(arg0, var_t0->unk24, sp74) != 0) || (_elf64_xlatetom((Elf *) &sp58, &sp40, arg0->unk40) == 0)) {
        temp_v0_3 = arg0->unk88;
        if (temp_v0_3 & 4) {
            arg0->unk88 = (s32) (temp_v0_3 & ~4);
            free(arg0->unk54);
        }
        arg0->unk54 = NULL;
        return -1;
    }
    arg0->unk58 = sp70;
    return 0;
}

s32 func_0042260C(Elf *arg0, s32 arg1) {
    u32 sp64;
    u32 sp60;
    s32 sp5C;
    u32 sp50;
    void *sp48;
    u32 sp44;
    u32 sp38;
    s32 sp34;
    void *sp30;
    Elf *sp2C;
    Elf *temp_a3;
    s32 temp_v0_4;
    u16 temp_v1;
    u32 temp_a0;
    u32 temp_lo;
    u32 temp_v0;
    u32 temp_v0_2;
    void *temp_v0_3;

    temp_a3 = arg0->unk50;
    if (temp_a3->unk30 == 0) {
        goto block_21;
    }
    sp2C = temp_a3;
    temp_v0 = _elf32_fsize(9, 1, arg0->unk44, temp_a3);
    if (temp_v0 != temp_a3->unk2E) {
        _elf_err = 0x210;
        return -1;
    }
    temp_v1 = temp_a3->unk30;
    temp_lo = temp_v0 * temp_v1;
    sp60 = temp_v1 * 0x28;
    temp_a0 = temp_a3->unk20;
    if ((temp_a0 == 0) || (temp_v0_2 = arg0->unk34, ((temp_a0 < temp_v0_2) == 0)) || ((u32) (temp_v0_2 - temp_a0) < temp_lo)) {
        _elf_err = 0x211;
        return -1;
    }
    if ((arg1 != 0) && (temp_lo >= sp60) && !(temp_a0 & 3)) {
        arg0->unkC = 1;
        arg0->unk5C = (void *) (arg0->unk28 + temp_a0);
        goto block_15;
    }
    sp64 = temp_lo;
    sp2C = temp_a3;
    temp_v0_3 = malloc(sp60);
    arg0->unk5C = temp_v0_3;
    if (temp_v0_3 == NULL) {
        _elf_err = 0x411;
        return -1;
    }
    arg0->unk88 = (s32) (arg0->unk88 | 8);
block_15:
    sp34 = 9;
    sp30 = arg0->unk28 + temp_a3->unk20;
    sp38 = temp_lo;
    sp44 = arg0->unk44;
    sp5C = 1;
    sp50 = sp60;
    sp48 = arg0->unk5C;
    sp2C = temp_a3;
    if ((_elf_vm(arg0, (s32) temp_a3->unk20, temp_lo, temp_a3) != 0) || (sp2C = temp_a3, (_elf32_xlatetom((Elf *) &sp48, &sp30, arg0->unk40, temp_a3) == 0)) || (_elf_cookscn(arg0, sp2C->unk30) != 0)) {
        temp_v0_4 = arg0->unk88;
        if (temp_v0_4 & 8) {
            arg0->unk88 = (s32) (temp_v0_4 & ~8);
            free(arg0->unk5C);
        }
        arg0->unk5C = NULL;
        return -1;
    }
block_21:
    return 0;
}

s32 func_00422848(Elf *arg0, s32 arg1) {
    u32 sp74;
    u32 sp70;
    s32 sp6C;
    u32 sp60;
    void *sp58;
    u32 sp54;
    u32 sp48;
    s32 sp44;
    void *sp40;
    void *sp3C;
    u32 sp34;
    u32 sp30;
    u32 sp2C;
    u32 sp28;
    s32 temp_v0_3;
    u16 temp_a0;
    u32 temp_t4;
    u32 temp_t5;
    u32 temp_t6;
    u32 temp_t6_2;
    u32 temp_v0;
    u64 temp_ret;
    void *temp_t0;
    void *temp_v0_2;
    void *var_t0;

    temp_t0 = arg0->unk50;
    if (temp_t0->unk3C == 0) {
        goto block_27;
    }
    sp3C = temp_t0;
    temp_v0 = _elf64_fsize(9, 1, arg0->unk44);
    if (temp_v0 != temp_t0->unk3A) {
        _elf_err = 0x210;
        return -1;
    }
    temp_a0 = temp_t0->unk3C;
    sp70 = temp_a0 << 6;
    sp74 = temp_v0 * temp_a0;
    temp_t5 = temp_t0->unk2C;
    temp_t4 = temp_t0->unk28;
    sp34 = temp_t5;
    sp30 = temp_t4;
    if (((temp_t4 == 0) && (temp_t5 == 0)) || (temp_t6 = arg0->unk34, sp28 = 0, sp2C = temp_t6, ((temp_t4 > 0U) != 0)) || ((temp_t4 >= 0U) && (temp_t5 >= temp_t6)) || ((temp_t6_2 = (0U - temp_t4) - (temp_t6 < temp_t5), ((temp_t6_2 > 0U) == 0)) && ((temp_t6_2 < 0U) || ((u32) (temp_t6 - temp_t5) < sp74)))) {
        _elf_err = 0x211;
        return -1;
    }
    if ((arg1 != 0) && (sp74 >= sp70)) {
        sp3C = temp_t0;
        temp_ret = __ull_rem(sp30, sp34, 0, 8);
        var_t0 = temp_t0;
        if ((temp_ret == 0) && ((u32) temp_ret == 0)) {
            arg0->unkC = 1;
            arg0->unk5C = (void *) (arg0->unk28 + var_t0->unk2C);
            goto block_21;
        }
    }
    sp3C = temp_t0;
    temp_v0_2 = malloc(sp70);
    var_t0 = temp_t0;
    arg0->unk5C = temp_v0_2;
    if (temp_v0_2 == NULL) {
        _elf_err = 0x411;
        return -1;
    }
    arg0->unk88 = (s32) (arg0->unk88 | 8);
block_21:
    sp40 = arg0->unk28 + var_t0->unk2C;
    sp44 = 9;
    sp48 = sp74;
    sp54 = arg0->unk44;
    sp6C = 1;
    sp60 = sp70;
    sp58 = arg0->unk5C;
    sp3C = var_t0;
    if ((_elf_vm(arg0, var_t0->unk2C, sp74) != 0) || (sp3C = var_t0, (_elf64_xlatetom((Elf *) &sp58, &sp40, arg0->unk40) == 0)) || (_elf_cookscn(arg0, sp3C->unk3C) != 0)) {
        temp_v0_3 = arg0->unk88;
        if (temp_v0_3 & 8) {
            arg0->unk88 = (s32) (temp_v0_3 & ~8);
            free(arg0->unk5C);
        }
        arg0->unk5C = NULL;
        return -1;
    }
block_27:
    return 0;
}

/*
Decompilation failure in function func_00422B14:

Unable to determine jump table for jr instruction at makerom.s line 32316.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl"/"jpt_"/"lbl_".
*/

/*
Decompilation failure in function _elf32_getshdr:

Function _elf32_getshdr contains no instructions. Maybe it is rodata?
*/

Elf32_Shdr *elf32_getshdr(Elf_Scn *arg0) {
    s32 temp_v1;
    void *temp_v0;

    if ((arg0 == NULL) || (temp_v0 = arg0->unk4, (temp_v0 == NULL))) {
        return NULL;
    }
    temp_v1 = temp_v0->unk48;
    if (temp_v1 != 1) {
        if (temp_v1 == 0) {
            temp_v0->unk48 = 1;
            /* Duplicate return node #7. Try simplifying control flow for better match */
            return arg0->unk10;
        }
        _elf_err = 0x505;
        return NULL;
    }
    return arg0->unk10;
}

/*
Decompilation failure in function _elf64_getshdr:

Function _elf64_getshdr contains no instructions. Maybe it is rodata?
*/

s32 elf64_getshdr(void *arg0) {
    s32 temp_v1;
    void *temp_v0;

    if ((arg0 == NULL) || (temp_v0 = arg0->unk4, (temp_v0 == NULL))) {
        return 0;
    }
    temp_v1 = temp_v0->unk48;
    if (temp_v1 != 2) {
        if (temp_v1 == 0) {
            temp_v0->unk48 = 2;
            /* Duplicate return node #7. Try simplifying control flow for better match */
            return arg0->unk10;
        }
        _elf_err = 0x505;
        return 0;
    }
    return arg0->unk10;
}

/*
Decompilation failure in function _elf_kind:

Function _elf_kind contains no instructions. Maybe it is rodata?
*/

s32 elf_kind(Elf *arg0) {
    if (arg0 == NULL) {
        return ELF_K_NONE;
    }
    return arg0->unk4C;
}

s32 _elf_vm(Elf *arg0, u32 arg1, u32 arg2) {
    s32 sp4C;
    s32 sp48;
    void *sp3C;
    s32 *var_s3;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_t3;
    s32 temp_t9;
    s32 temp_v0_3;
    s32 var_s0;
    s32 var_s1;
    u32 temp_a1;
    u32 temp_a3;
    u32 temp_v0;
    u32 temp_v0_4;
    u32 temp_v0_5;
    u32 temp_v1;
    u32 var_s2;
    void *temp_a3_2;
    void *temp_a3_3;
    void *temp_v0_2;

    temp_v0 = arg0->unk34;
    if ((arg1 >= temp_v0) || ((u32) (temp_v0 - arg1) < arg2)) {
        _elf_err = 0x213;
        return -1;
    }
    if (((arg0->unk38 == 0) && ((arg0->unk88 | 0x80000000) != 0)) || (arg2 == 0)) {
        goto block_45;
    }
    if (_elf_page_size == 0) {
        _elf_page_size = sysconf(0xB);
    }
    temp_v0_2 = arg0->unk0;
    if ((temp_v0_2 != NULL) && (temp_v0_2->unk8 == -1)) {
        arg0->unk8 = -1;
    }
    temp_a3 = arg1 + arg0->unk10;
    temp_v1 = _elf_page_size << 5;
    temp_a1 = (temp_a3 + arg2 + _elf_page_size) - 1;
    var_s1 = temp_a3 - (temp_a3 % (u32) _elf_page_size);
    var_s0 = 1 << ((u32) (temp_a3 % temp_v1) / (u32) _elf_page_size);
    temp_t3 = 1 << ((u32) (temp_a1 % temp_v1) / (u32) _elf_page_size);
    sp48 = temp_t3;
    temp_a0 = arg0->unk38;
    temp_t9 = temp_a0 + ((temp_a1 / temp_v1) * 4);
    var_s3 = temp_a0 + ((temp_a3 / temp_v1) * 4);
    sp4C = temp_t9;
    var_s2 = 0;
    if ((var_s3 != temp_t9) || (var_s0 != temp_t3)) {
loop_14:
        temp_v0_3 = *var_s3;
        if (temp_v0_3 & var_s0) {
            if (var_s2 != 0) {
                temp_v0_4 = arg0->unk24 - var_s1;
                temp_a3_2 = arg0->unk20 + var_s1;
                if (temp_v0_4 < var_s2) {
                    var_s2 = temp_v0_4;
                }
                if (arg0->unk88 & 0x80000000) {
                    if (mprotect(temp_a3_2, var_s2, 3, temp_a3_2) == -1) {
                        _elf_err = 0x306;
                        return -1;
                    }
                    goto block_24;
                }
                sp3C = temp_a3_2;
                if ((lseek(arg0->unk8, var_s1, 0) != var_s1) || (read(arg0->unk8, temp_a3_2, var_s2) != var_s2)) {
                    _elf_err = 0x306;
                    return -1;
                }
block_24:
                var_s1 += var_s2;
                var_s2 = 0;
                goto block_25;
            }
block_25:
            var_s1 += _elf_page_size;
            goto block_29;
        }
        if (arg0->unk8 < 0) {
            _elf_err = 0x50E;
            return -1;
        }
        *var_s3 = temp_v0_3 | var_s0;
        var_s2 += _elf_page_size;
block_29:
        if (var_s0 == 0x80000000) {
            var_s0 = 1;
            var_s3 += 4;
        } else {
            var_s0 *= 2;
        }
        if ((var_s3 == sp4C) && (var_s0 == sp48)) {
            goto block_34;
        }
        goto loop_14;
    }
block_34:
    if (var_s2 != 0) {
        temp_a0_2 = arg0->unk8;
        if (temp_a0_2 < 0) {
            _elf_err = 0x50E;
            return -1;
        }
        temp_v0_5 = arg0->unk24 - var_s1;
        temp_a3_3 = arg0->unk20 + var_s1;
        if (temp_v0_5 < var_s2) {
            var_s2 = temp_v0_5;
        }
        if (arg0->unk88 & 0x80000000) {
            if (mprotect(temp_a3_3, var_s2, 3, temp_a3_3) == -1) {
                _elf_err = 0x306;
                return -1;
            }
            goto block_45;
        }
        sp3C = temp_a3_3;
        if ((lseek(temp_a0_2, var_s1, 0) != var_s1) || (read(arg0->unk8, temp_a3_3, var_s2) != var_s2)) {
            _elf_err = 0x306;
            return -1;
        }
        goto block_45;
    }
block_45:
    return 0;
}

s32 _elf_inmap(Elf *arg0) {
    s32 sp44;
    u32 sp34;
    s32 temp_a0;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_4;
    u32 *temp_v0_5;
    u32 var_a2;
    void *temp_v0_3;
    void *temp_v0_6;

    temp_a0 = arg0->unk8;
    sp44 = temp_a0;
    temp_v0 = lseek(temp_a0, 0, 2);
    if (temp_v0 == 0) {
        return 0;
    }
    if (temp_v0 == -1) {
        _elf_err = 0x302;
        return -1;
    }
    if (_elf_page_size == 0) {
        _elf_page_size = sysconf(0xB);
    }
    temp_v0_2 = arg0->unk88;
    if (!(temp_v0_2 & 0x80) && (temp_v0_2 & 0x100)) {
        temp_v0_3 = mmap(0, temp_v0, 1, 1, sp44, 0);
        if (temp_v0_3 != (void *)-1) {
            arg0->unk28 = temp_v0_3;
            arg0->unk20 = temp_v0_3;
            arg0->unk2C = temp_v0;
            arg0->unk34 = temp_v0;
            arg0->unk24 = temp_v0;
            if (!(arg0->unk88 & 0x80000000)) {
                return 0;
            }
            goto block_12;
        }
    }
    arg0->unk88 = (s32) (arg0->unk88 & 0x7FFFFFFF);
block_12:
    var_a2 = (((u32) temp_v0 / (u32) (_elf_page_size << 5)) * 4) + 4;
    temp_v0_4 = var_a2 & 7;
    if (temp_v0_4 != 0) {
        var_a2 = (var_a2 - temp_v0_4) + 8;
    }
    sp34 = var_a2;
    temp_v0_5 = malloc(var_a2);
    arg0->unk38 = temp_v0_5;
    if (temp_v0_5 == NULL) {
        _elf_err = 0x413;
        return -1;
    }
    sp34 = var_a2;
    memset(arg0->unk38, 0, var_a2);
    arg0->unk3C = (u32) (var_a2 >> 2);
    if (arg0->unk88 & 0x80000000) {
        return 0;
    }
    temp_v0_6 = malloc((u32) temp_v0);
    arg0->unk28 = temp_v0_6;
    if (temp_v0_6 == NULL) {
        _elf_err = 0x413;
        return -1;
    }
    arg0->unk2C = temp_v0;
    arg0->unk34 = temp_v0;
    arg0->unk24 = temp_v0;
    arg0->unk88 = (s32) (arg0->unk88 | 0x20000000);
    arg0->unk20 = (void *) arg0->unk28;
    return _elf_vm(arg0, 0, 1U);
}

void _elf_unmap(void *arg0, s32 arg1) {
    if ((arg0 != NULL) && (arg1 != 0)) {
        munmap();
    }
}

/*
Decompilation failure in function _elf_getscn:

Function _elf_getscn contains no instructions. Maybe it is rodata?
*/

Elf_Scn *elf_getscn(Elf *elf, u32 arg1) {
    u32 sp20;
    Elf_Scn *var_v1;
    u32 var_a2;

    var_a2 = arg1;
    if (elf == NULL) {
        return NULL;
    }
    if (elf->unk60 == NULL) {
        sp20 = var_a2;
        if (_elf_cook((Elf *) var_a2) != 0) {
            return NULL;
        }
    }
    var_v1 = elf->unk60;
    if (var_v1 != NULL) {
loop_6:
        if (var_a2 == 0) {
            if (arg1 == var_v1->unk14) {
                return var_v1;
            }
            _elf_err = 3;
            return NULL;
        }
        var_v1 = var_v1->unk0;
        var_a2 -= 1;
        if (var_v1 == NULL) {
            goto block_11;
        }
        goto loop_6;
    }
block_11:
    _elf_err = 0x50D;
    return NULL;
}

void *func_00423540(Elf *arg0, s16 *arg1) {
    s32 temp_v0;
    void *temp_v1;
    void *temp_v1_2;

    if ((arg1->unk0 != 0x2F) || (arg1->unk1 != 0x7F)) {
        return NULL;
    }
    temp_v0 = arg0->unk48;
    if (temp_v0 == 2) {
        temp_v1_2 = arg1 - ((arg1 - arg0->unk20) & 7);
        if (arg0 != temp_v1_2->unk8) {
            _elf_err = 0x201;
            return NULL;
        }
        return (temp_v1_2 + 8)->unk8;
    }
    if (temp_v0 == 1) {
        temp_v1 = arg1 - ((arg1 - arg0->unk20) & 3);
        if (arg0 != temp_v1->unk4) {
            _elf_err = 0x201;
            return NULL;
        }
        return (temp_v1 + 4)->unk4;
    }
    _elf_err = 0x505;
    return NULL;
}

void func_00423620(Elf *arg0, s16 *arg1, void *arg2) {
    s32 temp_v0;
    void *temp_v1;
    void *temp_v1_2;
    void *temp_v1_3;

    arg1->unk0 = 0x2F;
    arg1->unk1 = 0x7F;
    temp_v0 = arg0->unk48;
    if (temp_v0 == 2) {
        temp_v1 = arg1 - ((arg1 - arg0->unk20) & 7);
        temp_v1->unk8 = 0;
        temp_v1->unk10 = 0;
        temp_v1_2 = temp_v1 + 8;
        temp_v1_2->unk4 = 0;
        temp_v1_2->unk0 = arg0;
        temp_v1_2->unkC = 0;
        temp_v1_2->unk8 = arg2;
        return;
    }
    if (temp_v0 == 1) {
        temp_v1_3 = (arg1 - ((arg1 - arg0->unk20) & 3)) + 4;
        temp_v1_3->unk0 = arg0;
        temp_v1_3->unk4 = arg2;
    }
}

u32 func_004236AC(u32 arg0, u32 arg1, u32 arg2) {
    u32 sp34;
    u32 sp30;
    s8 temp_t8;
    s8 temp_v1;
    u32 temp_s1;
    u32 temp_t3;
    u32 temp_v1_2;
    u32 var_s0;
    u32 var_s0_2;
    u64 temp_ret;

    var_s0 = arg0;
    sp34 = 0;
    sp30 = 0;
    if (arg0 < arg1) {
loop_1:
        temp_v1 = *var_s0;
        temp_s1 = temp_v1 - 0x30;
        if (temp_s1 >= arg2) {
            var_s0_2 = var_s0 + 1;
            if (temp_v1 == 0x20) {
loop_3:
                if (var_s0_2 >= arg1) {
                    goto block_9;
                }
                temp_t8 = *var_s0_2;
                var_s0_2 += 1;
                if (temp_t8 != 0x20) {
                    goto block_6;
                }
                goto loop_3;
            }
block_6:
            return 0U;
        }
        temp_ret = __ll_mul((u64) sp30, sp34, (s32) arg2 >> 0x1F, arg2);
        temp_v1_2 = (u32) temp_ret;
        temp_t3 = temp_s1 + temp_v1_2;
        var_s0 += 1;
        sp30 = (temp_t3 < temp_v1_2) + temp_ret;
        sp34 = temp_t3;
        if (var_s0 >= arg1) {
            goto block_8;
        }
        goto loop_1;
    }
block_8:
block_9:
    return sp30;
}

void *_elf_armem(Elf *arg0, s16 *arg1, u32 arg2) {
    s16 *sp2C;
    s16 *sp28;
    ? *temp_v0_3;
    s16 *temp_a0;
    s16 *temp_a1_2;
    s16 *temp_a1_3;
    s16 *temp_a3;
    s16 *temp_a3_2;
    s16 *temp_a3_3;
    s16 *temp_a3_4;
    s16 *var_a3;
    s8 *var_v0;
    s8 temp_a1;
    s8 temp_a2;
    s8 temp_t1;
    s8 temp_t7;
    s8 temp_v0_5;
    s8 temp_v0_6;
    u32 temp_ret;
    u32 temp_v0_4;
    u32 temp_v1;
    void *temp_v0;
    void *temp_v0_2;

    if (arg2 < 0x3CU) {
        _elf_err = 0x203;
        return NULL;
    }
    temp_v0_2 = func_00423540(arg0, arg1);
    if (temp_v0_2 != NULL) {
        return temp_v0_2;
    }
    temp_v0_3 = "`\n";
    if ((arg1->unk3A != temp_v0_3->unk0) || (arg1->unk3B != temp_v0_3->unk1)) {
        _elf_err = 0x202;
        return NULL;
    }
    temp_v0 = malloc(0x48U);
    if (temp_v0 == NULL) {
        _elf_err = 0x401;
        return NULL;
    }
    temp_a3 = temp_v0 + 0x35;
    temp_v0->unk1C = (void *) arg0->unk68;
    arg0->unk68 = temp_v0;
    temp_v0->unk20 = 0;
    sp2C = temp_a3;
    memcpy(temp_a3, arg1, 0x10U, (u32) temp_a3);
    temp_v0->unk45 = 0;
    temp_a0 = temp_v0 + 0x24;
    temp_v0->unk0 = temp_a3;
    sp28 = temp_a0;
    memcpy(temp_a0, arg1, 0x10U, (u32) temp_a3);
    temp_v0->unk34 = 0;
    temp_v0->unk18 = sp28;
    if (arg1->unk0 != 0x2F) {
        var_v0 = temp_v0 + 0x45;
        if (temp_v0->unk45 != 0x2F) {
loop_11:
            if ((u32) temp_a3 < (u32) var_v0) {
                temp_t7 = var_v0->unk-1;
                var_v0 -= 1;
                if (temp_t7 != 0x2F) {
                    goto loop_11;
                }
            }
        }
        var_a3 = arg1 + 0x10;
        if (((temp_v0 + 0x35) == var_v0) && (*var_v0 != 0x20)) {
loop_15:
            if ((temp_v0 + 0x46) != var_v0) {
                temp_t1 = var_v0->unk1;
                var_v0 += 1;
                if (temp_t1 != 0x20) {
                    goto loop_15;
                }
            }
        }
        *var_v0 = 0;
    } else {
        temp_a1 = arg1->unk1;
        if ((temp_a1 >= 0x30) && (temp_a3_2 = arg1 + 0x10, ((temp_a1 < 0x3A) != 0))) {
            sp2C = temp_a3_2;
            temp_ret = func_004236AC((u32) (arg1 + 1), (u32) temp_a3_2, 0xAU, temp_a3_2);
            temp_v0_4 = temp_ret;
            temp_v1 = (u32) (u64) temp_ret;
            var_a3 = temp_a3_2;
            if ((temp_v0_4 <= 0U) && ((temp_v0_4 < 0U) || (temp_v1 < (u32) arg0->unk80))) {
                temp_v0->unk0 = (s16 *) (arg0->unk7C + temp_v1);
            } else {
                temp_v0->unk0 = NULL;
                temp_v0->unk20 = 0x205;
            }
        } else {
            var_a3 = arg1 + 0x10;
            if (temp_a1 == 0x20) {
                temp_v0->unk36 = 0;
            } else {
                temp_a2 = temp_v0->unk35;
                if ((temp_a2 == 0x2F) && (temp_v0->unk36 == 0x53) && (temp_v0->unk37 == 0x59) && (temp_v0->unk38 == 0x4D) && (temp_v0->unk39 == 0x36) && (temp_v0->unk3A == 0x34) && (temp_v0->unk3B == 0x2F) && ((temp_v0_5 = temp_v0->unk3C, var_a3 = arg1 + 0x10, (temp_v0_5 == 0x20)) || (temp_v0_5 == 0))) {
                    temp_v0->unk3C = 0;
                } else if ((temp_a2 == 0x2F) && (temp_v0->unk36 == 0x48) && (temp_v0->unk37 == 0x41) && (temp_v0->unk38 == 0x53) && (temp_v0->unk39 == 0x48) && (temp_v0->unk3A == 0x2F) && ((temp_v0_6 = temp_v0->unk3B, var_a3 = arg1 + 0x10, (temp_v0_6 == 0x20)) || (temp_v0_6 == 0))) {
                    temp_v0->unk3B = 0;
                } else if ((temp_a1 == 0x2F) && (var_a3 = arg1 + 0x10, (arg1->unk2 == 0x20))) {
                    temp_v0->unk37 = 0;
                } else {
                    temp_v0->unk0 = NULL;
                    temp_v0->unk20 = 0x209;
                    var_a3 = arg1 + 0x10;
                }
            }
        }
    }
    temp_a1_2 = arg1 + 0x1C;
    sp28 = temp_a1_2;
    temp_v0->unk4 = (u32) (u64) func_004236AC((u32) var_a3, (u32) temp_a1_2, 0xAU, var_a3);
    temp_a3_3 = arg1 + 0x22;
    sp2C = temp_a3_3;
    temp_v0->unk8 = (u32) (u64) func_004236AC((u32) sp28, (u32) temp_a3_3, 0xAU, temp_a3_3);
    temp_a1_3 = arg1 + 0x28;
    sp28 = temp_a1_3;
    temp_v0->unkC = (u32) (u64) func_004236AC((u32) sp2C, (u32) temp_a1_3, 0xAU);
    temp_a3_4 = arg1 + 0x30;
    sp2C = temp_a3_4;
    temp_v0->unk10 = (u32) (u64) func_004236AC((u32) sp28, (u32) temp_a3_4, 8U, temp_a3_4);
    temp_v0->unk14 = (u32) (u64) func_004236AC((u32) sp2C, (u32) (arg1 + 0x3A), 0xAU);
    func_00423620(arg0, arg1, temp_v0);
    return temp_v0;
}

void _elf_arinit(Elf *arg0) {
    s32 sp60;
    u32 sp44;
    u32 sp40;
    s32 temp_s7;
    s32 temp_t4;
    s32 temp_t6;
    s32 var_fp;
    s8 temp_a0;
    s8 temp_a2;
    s8 temp_a3;
    s8 temp_v0_2;
    u32 temp_ret;
    u32 temp_s2;
    u32 temp_s3;
    u32 temp_v0;
    u32 temp_v1;
    u32 var_s0;
    void *var_s3;

    temp_s7 = arg0->unk28;
    sp60 = arg0->unk34 + temp_s7;
    arg0->unkC = 1;
    arg0->unk1C = 8;
    var_fp = 0;
    var_s3 = temp_s7 + 8;
loop_1:
    if (((u32) (sp60 - var_s3) >= 0x3CU) && (_elf_vm(arg0, var_s3 - arg0->unk28, 0x3CU) == 0)) {
        temp_s2 = var_s3 + 0x3C;
        var_s0 = temp_s2;
        temp_ret = func_004236AC(var_s3 + 0x30, var_s3 + 0x3A, 0xAU);
        temp_v0 = temp_ret;
        temp_v1 = (u32) (u64) temp_ret;
        sp40 = temp_v0;
        temp_t4 = sp60 - temp_s2;
        temp_t6 = temp_t4 >> 0x1F;
        sp44 = temp_v1;
        if (((u32) temp_t6 >= temp_v0) && ((temp_v0 < (u32) temp_t6) || ((u32) temp_t4 >= temp_v1)) && (var_s3->unk0 == 0x2F) && (temp_v0 == 0) && (temp_v1 == temp_v1)) {
            temp_a2 = var_s3->unk1;
            temp_s3 = var_s0 + temp_v1;
            if (temp_a2 == 0x20) {
                arg0->unk70 = var_s0;
                arg0->unk74 = temp_v1;
                arg0->unk78 = (s32) (var_s3 - temp_s7);
                arg0->unk48 = 1;
                goto block_38;
            }
            temp_a3 = var_s3->unk0;
            if ((temp_a3 == 0x2F) && (temp_a2 == 0x53) && (var_s3->unk2 == 0x59) && (var_s3->unk3 == 0x4D) && (var_s3->unk4 == 0x36) && (var_s3->unk5 == 0x34) && (var_s3->unk6 == 0x2F) && ((temp_a0 = var_s3->unk7, (temp_a0 == 0x20)) || (temp_a0 == 0))) {
                arg0->unk70 = var_s0;
                arg0->unk74 = temp_v1;
                arg0->unk78 = (s32) (var_s3 - temp_s7);
                arg0->unk48 = 2;
                goto block_38;
            }
            if ((temp_a3 == 0x2F) && (temp_a2 == 0x48) && (var_s3->unk2 == 0x41) && (var_s3->unk3 == 0x53) && (var_s3->unk4 == 0x48) && (var_s3->unk5 == 0x2F) && ((temp_v0_2 = var_s3->unk6, (temp_v0_2 == 0x20)) || (temp_v0_2 == 0))) {
                goto block_38;
            }
            if ((temp_a2 == 0x2F) && (var_s3->unk2 == 0x20) && (_elf_vm(arg0, var_s0 - arg0->unk28, sp44, (Elf *) temp_a3) == 0)) {
                arg0->unk7C = var_s0;
                arg0->unk80 = sp44;
                arg0->unk84 = (s32) (var_s3 - temp_s7);
                if (var_s0 < (u32) (var_s0 + sp44)) {
                    do {
                        if (*var_s0 == 0x2F) {
                            *var_s0 = 0;
                        }
                        var_s0 += 1;
                    } while (var_s0 < temp_s3);
                }
                var_s0->unk-1 = 0;
block_38:
                var_fp += 1;
                var_s3 = temp_s3 + (sp44 & 1);
                if (var_fp != 3) {
                    goto loop_1;
                }
            }
        }
    }
}

s32 yywrap(void) {
    return 1;
}

s32 gethostsex(void) {
    s32 sp4;
    s32 var_v0;

    sp4 = 1;
    var_v0 = 0;
    if ((s8) sp4 == 1) {
        var_v0 = 1;
    }
    return var_v0;
}

void func_00423F80(void) {
    u32 temp_v0;
    u32 var_a0;

    var_a0 = D_10015B18;
    temp_v0 = (var_a0 + B_1001A000) - 1;
    if (var_a0 < temp_v0) {
        do {
            if ((var_a0->unk0 == 0x2F) && (var_a0->unk1 == 0xA)) {
                var_a0->unk0 = 0;
                var_a0 += 1;
                *var_a0 = 0;
            }
            var_a0 += 1;
        } while (var_a0 < temp_v0);
    }
}

u32 *elf_get_ar_filename(s8 *arg0) {
    s8 *sp24;
    s8 *var_v1;
    s8 temp_t7;

    var_v1 = arg0 + 0xF;
    if (arg0->unkF == 0x20) {
        do {
            temp_t7 = var_v1->unk-1;
            var_v1 -= 1;
        } while (temp_t7 == 0x20);
    }
    if (*var_v1 == 0x2F) {
        var_v1 -= 1;
        goto block_6;
    }
    if (arg0->unk0 == 0x2F) {
        return atol(arg0 + 1, 0, 0xFFU, arg0) + D_10015B18;
    }
block_6:
    sp24 = var_v1;
    memset(B_1001A008, 0, 0xFFU, arg0);
    strncpy(B_1001A008, arg0, (var_v1 - arg0) + 1);
    return B_1001A008;
}

s32 *allocldptr(void) {
    s32 *temp_v0;
    s32 temp_a0;

    temp_v0 = calloc(1U, 0x5CU);
    if (temp_v0 != NULL) {
        temp_a0 = D_10015B1C + 1;
        *temp_v0 = temp_a0;
        D_10015B1C = temp_a0;
    }
    return temp_v0;
}

s32 *ldopen(s8 *arg0, s32 *arg1) {
    s32 sp38;
    s8 sp30;
    s32 *(*temp_v0_3)(?, s32 *, u32);
    s32 *temp_v0;
    s32 *var_v0;
    s32 temp_v0_4;
    void *temp_a1;
    void *temp_v0_2;

    if (vldldptr(arg1) == 0) {
        temp_v0 = allocldptr();
        if (temp_v0 == NULL) {
            __assert("ldptr = allocldptr()", "ldfcn.c", 0x83);
        }
        temp_v0_2 = calloc(1U, 0x10U);
        temp_v0->unk4 = temp_v0_2;
        if (temp_v0_2 == NULL) {
            __assert("LIOPTR(ldptr) = (FILE *)calloc(1,sizeof(FILE))", "ldfcn.c", 0x84);
        }
        temp_v0_3 = calloc(1U, 0x1DCU);
        temp_v0->unk2C = temp_v0_3;
        if (temp_v0_3 == NULL) {
            __assert("LPOBJ(ldptr) = (pOBJ)calloc(1,cbOBJ)", "ldfcn.c", 0x85);
        }
        temp_v0_4 = open(arg0, 0);
        if (temp_v0_4 < 0) {
            return NULL;
        }
        sp38 = temp_v0_4;
        if (read(temp_v0_4, &sp30, 8U) != 8) {
            close(sp38);
            return NULL;
        }
        if (strncmp(&sp30, "!<arch>\n", 8U) == 0) {
            temp_v0->unk28 = 0xFF65;
            temp_v0->unk30 = sp38;
            temp_v0->unk34 = 8;
            var_v0 = func_00424404(temp_v0);
            goto block_21;
        }
        close(sp38);
        temp_v0->unk30 = -1;
        if (obj_open(temp_v0->unk2C, arg0, 1) != temp_v0->unk2C) {
            temp_a1 = temp_v0->unk4;
            if (temp_a1 != NULL) {
                free(temp_a1);
            }
            if (temp_v0->unk2C != NULL) {
                free(temp_v0->unk2C);
            }
            free(temp_v0);
            return NULL;
        }
        var_v0 = func_004246DC(temp_v0);
block_21:
        return var_v0;
    }
    ldfseek(arg1, 0, 0);
    return arg1;
}

void __sgi_init_ldfile(void) {
    func_004246DC();
}

s32 *func_00424404(s32 *arg0) {
    ? sp5C;
    ? sp54;
    ? sp4E;
    ? sp48;
    ? sp3C;
    s8 sp2C;
    s32 sp28;
    s32 *(*temp_v0_3)(?, s32 *, u32);
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v1;

    if (arg0->unk28 != 0xFF65) {
        __assert("LTYPE(ldptr) == ARTYPE", "ldfcn.c", 0xB7);
    }
    sp28 = lseek(arg0->unk30, arg0->unk34, 0);
    if (read(arg0->unk30, &sp2C, 0x3CU) != 0x3C) {
        goto block_22;
    }
    strncpy(arg0 + 0x38, &sp2C, 0x10);
    arg0->unk48 = atol(&sp3C);
    arg0->unk4C = atol(&sp48);
    arg0->unk50 = atol(&sp4E);
    arg0->unk54 = atol(&sp54);
    temp_v0 = atol(&sp5C);
    arg0->unk58 = temp_v0;
    arg0->unk8 = (s32) arg0->unk34;
    arg0->unk34 = (s32) (sp28 + ((temp_v0 + 1) & ~1) + 0x3C);
    if ((strncmp(&sp2C, "__________E", 0xBU) == 0) || ((sp2C == 0x2F) && ((sp2D == 0x20) || (sp2D == 0))) || ((sp2C == 0x2F) && (sp2D == 0x2F) && ((sp2E == 0x20) || (sp2E == 0)))) {
        if ((sp2C == 0x2F) && (sp2D == 0x2F) && ((sp2E == 0x20) || (sp2E == 0))) {
            free((void *) D_10015B18);
            temp_v0_2 = malloc(arg0->unk58);
            D_10015B18 = temp_v0_2;
            temp_v1 = arg0->unk58;
            if (read(arg0->unk30, (void *) temp_v0_2, arg0->unk58) != temp_v1) {
                D_10015B18 = 0;
            } else {
                B_1001A000 = temp_v1;
                func_00423F80();
            }
        }
        return func_00424404(arg0);
    }
    temp_v0_3 = obj_read_from_fd(arg0->unk2C, arg0->unk30, sp28 + 0x3C, arg0->unk58);
    arg0->unk2C = temp_v0_3;
    if (temp_v0_3 != NULL) {
        return func_004246DC(arg0);
    }
block_22:
    return NULL;
}

s32 *func_004246DC(s32 *arg0) {
    void *sp2C;
    FILE *temp_s0_3;
    s16 temp_v0_3;
    s32 *(*temp_s0)(?, s32 *, u32);
    s32 *(*temp_s0_2)(?, s32 *, u32);
    s32 temp_v0;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s32 temp_v0_7;
    s32 temp_v0_8;
    s32 temp_v1;
    s32 var_a0;
    s32 var_a1;
    s32 var_a2;
    u16 *temp_a1;
    u32 temp_a1_2;
    void *temp_t7;
    void *temp_t9;
    void *temp_v0_10;
    void *temp_v0_2;
    void *temp_v0_4;
    void *temp_v0_9;

    arg0->unk4->unk0 = (s32) arg0->unk2C->unk34;
    temp_v0 = arg0->unk2C->unkC4;
    arg0->unk4->unk4 = temp_v0;
    arg0->unk4->unk8 = temp_v0;
    arg0->unk4->unkC = 1;
    arg0->unk4->unkD = 0xFF;
    temp_s0 = arg0->unk2C;
    temp_v1 = temp_s0->unk8C;
    if (temp_v1 == 2) {
        temp_t7 = temp_s0->unk90;
        arg0->unkC = (s32) temp_t7->unk0;
        arg0->unk10 = (s32) temp_t7->unk4;
        arg0->unk14 = (s32) temp_t7->unk8;
        arg0->unk18 = (s32) temp_t7->unkC;
        arg0->unk1C = (s32) temp_t7->unk10;
    } else if (temp_v1 == 3) {
        sp2C = calloc(1U, 0x38U);
        temp_v0_2 = calloc(get_section_num(arg0->unk2C), 0x28U);
        temp_s0_2 = arg0->unk2C;
        temp_a1 = arg0 + 0xC;
        temp_s0_2->unk90 = temp_a1;
        arg0->unk2C->unk94 = sp2C;
        arg0->unk2C->unk98 = temp_v0_2;
        elf_spoof_coffhdrs(temp_s0_2, temp_a1, sp2C, temp_v0_2);
    }
    if (arg0->unk28 == 0) {
        arg0->unk28 = (u16) *arg0->unk2C->unk90;
    }
    arg0->unk2A = (u8) ((((gethostsex() == 0) << 6) & 0x40) | (arg0->unk2A & 0xFFBF));
    if ((obj_conflict_foreign(arg0->unk2C) == 0) && (hdr_symptr(arg0->unk2C) != 0)) {
        temp_v0_3 = *arg0->unk2C->unk9C;
        if ((temp_v0_3 != 0x7009) && (temp_v0_3 != 0x7109)) {
            temp_s0_3 = __iob + 0x20;
            fprintf(temp_s0_3, "libmld: init_ldfile:");
            fprintf(temp_s0_3, "non-mips symbol table %x\n", *arg0->unk2C->unk9C);
        }
        temp_v0_4 = calloc(0xBCU, 1U);
        arg0->unk20 = temp_v0_4;
        if (temp_v0_4 == NULL) {
            __assert("LSYMHEADER(ldptr) = (pCHDRR) calloc(cbCHDRR,1)", "ldfcn.c", 0xFB);
        }
        arg0->unk20->unk8 = (s32) arg0->unk2C->unkA0;
        temp_v0_5 = arg0->unk2C->unk9C->unk48;
        arg0->unk20->unk10 = temp_v0_5;
        arg0->unk20->unkC = temp_v0_5;
        arg0->unk20->unk14 = (s32) arg0->unk2C->unkA8;
        arg0->unk20->unk18 = (s32) arg0->unk2C->unkAC;
        temp_v0_6 = arg0->unk2C->unk9C->unk58;
        arg0->unk20->unk20 = temp_v0_6;
        arg0->unk20->unk1C = temp_v0_6;
        arg0->unk20->unk24 = (s32) arg0->unk2C->unkB0;
        temp_v0_7 = arg0->unk2C->unk9C->unk40;
        arg0->unk20->unk2C = temp_v0_7;
        arg0->unk20->unk28 = temp_v0_7;
        arg0->unk20->unk30 = (s32) arg0->unk2C->unkC0;
        arg0->unk20->unk34 = (s32) arg0->unk2C->unkB4;
        arg0->unk20->unk38 = 1;
        temp_v0_8 = arg0->unk2C->unk9C->unk10;
        arg0->unk20->unk40 = temp_v0_8;
        arg0->unk20->unk3C = temp_v0_8;
        arg0->unk20->unk44 = 1;
        arg0->unk20->unk4C = (s32) arg0->unk2C->unkBC;
        arg0->unk20->unk50 = (s32) arg0->unk2C->unkA4;
        arg0->unk20->unk54 = 0;
        arg0->unk20->unk58 = (s32) ((s32) arg0->unk2C->unk0 >> 0x1F);
        M2C_MEMCPY_ALIGNED(arg0->unk20 + 0x5C, arg0->unk2C->unk9C, 0x60);
        arg0->unk20->unk0 = 0;
        temp_a1_2 = arg0->unk2C->unk9C->unk48;
        if (temp_a1_2 != 0) {
            temp_v0_9 = calloc(0x40U, temp_a1_2);
            arg0->unk20->unk4 = temp_v0_9;
            if (temp_v0_9 == NULL) {
                __assert("LSYMHEADER(ldptr)->pcfd = (pCFDR)calloc(cbCFDR,LPHDR(ldptr)->ifdMax)", "ldfcn.c", 0x113);
            }
        } else {
            arg0->unk20->unk4 = NULL;
        }
        var_a0 = 0;
        var_a1 = 0;
        var_a2 = 0;
        if (arg0->unk2C->unk9C->unk48 > 0) {
            do {
                temp_t9 = arg0->unk2C->unkA0 + var_a2;
                temp_v0_10 = arg0->unk20->unk4 + var_a1;
                temp_v0_10->unk0 = temp_t9;
                if (temp_t9->unk14 > 0) {
                    temp_v0_10->unk3C = (s32) (temp_v0_10->unk3C | 2);
                    temp_v0_10->unk4 = (s32) (arg0->unk2C->unkA8 + (temp_t9->unk10 * 0xC));
                }
                if (temp_t9->unk30 > 0) {
                    temp_v0_10->unkC = (s32) (arg0->unk2C->unkC0 + (temp_t9->unk2C * 4));
                    temp_v0_10->unk3C = (s32) (temp_v0_10->unk3C | 0x400);
                }
                if (temp_t9->unk38 > 0) {
                    temp_v0_10->unk2C = (s32) (arg0->unk2C->unkBC + (temp_t9->unk34 * 4));
                    temp_v0_10->unk3C = (s32) (temp_v0_10->unk3C | 0x40);
                }
                if (temp_t9->unkC > 0) {
                    temp_v0_10->unk14 = (s32) (arg0->unk2C->unkB4 + temp_t9->unk8);
                    temp_v0_10->unk3C = (s32) (temp_v0_10->unk3C | 0x80);
                }
                if (temp_t9->unk2A != 0) {
                    temp_v0_10->unk3C = (s32) (temp_v0_10->unk3C | 0x100);
                    temp_v0_10->unk34 = (s32) (arg0->unk2C->unkA4 + (temp_t9->unk28 * 0x34));
                }
                var_a0 += 1;
                var_a1 += 0x40;
                var_a2 += 0x48;
            } while (var_a0 < arg0->unk2C->unk9C->unk48);
        }
    }
    return arg0;
}

s32 ldclose(s32 *arg0) {
    s32 sp24;
    s32 var_v1;

    if (vldldptr() == 0) {
        return 1;
    }
    if ((arg0->unk28 == 0xFF65) && (func_00424404(arg0) != NULL)) {
        return 0;
    }
    close(arg0->unk30);
    var_v1 = 1;
    if (arg0->unk2C == 0) {
        var_v1 = 0;
    }
    sp24 = var_v1;
    freeldptr(arg0);
    return sp24;
}

void nyi(? *arg0) {
    fprintf(__iob + 0x20, "%s in not yet implemented...aborting\n", arg0);
    __assert("0", "ldfcn.c", 0x14E);
}

void nop(s32 arg0) {
    fprintf(__iob + 0x20, "%s nop-ed out\n", arg0);
}

void ldinitheaders(void) {
    nyi("ldinitheaders");
}

? ldfhread(void *arg0, void *arg1) {
    void *temp_t7;

    temp_t7 = arg0->unk2C->unk90;
    arg1->unk0 = (s32) temp_t7->unk0;
    arg1->unk4 = (s32) temp_t7->unk4;
    arg1->unk8 = (s32) temp_t7->unk8;
    arg1->unkC = (s32) temp_t7->unkC;
    arg1->unk10 = (s32) temp_t7->unk10;
    return 1;
}

? ldshread(void *arg0, s32 arg1, s32 arg2) {
    s32 temp_t9;

    temp_t9 = arg0->unk2C->unk98 + (arg1 * 0x28);
    M2C_MEMCPY_ALIGNED(arg2, temp_t9 - 0x28, 0x24);
    *(arg2 + 0x24) = (temp_t9 + 0x24)->unk-28;
    return 1;
}

s32 vldldptr(s32 *arg0) {
    if ((arg0 != NULL) && (arg0->unk2C != 0)) {
        return 1;
    }
    return 0;
}

? freeldptr(s32 *arg0) {
    s32 *(*temp_a1)(?, s32 *, u32);
    void *temp_v0;

    temp_a1 = arg0->unk2C;
    if (temp_a1 != NULL) {
        obj_close(temp_a1, temp_a1);
    }
    temp_v0 = arg0->unk20;
    arg0->unk2C = NULL;
    if (temp_v0 != NULL) {
        free(temp_v0->unk48);
        free(arg0->unk20->unk4);
        free(arg0->unk20);
    }
    free(arg0);
    return 1;
}

? __sgi_dbx_freeldptr(void *arg0) {
    void *temp_v0;

    __sgi_dbx_obj_close(arg0->unk2C);
    temp_v0 = arg0->unk20;
    arg0->unk2C = NULL;
    if (temp_v0 != NULL) {
        free(temp_v0->unk48);
        free(arg0->unk20->unk4);
        free(arg0->unk20);
    }
    free(arg0);
    return 1;
}

s32 __sgi_ldftell(void *arg0) {
    s32 var_v1;
    void *temp_v0;

    temp_v0 = arg0->unk4;
    var_v1 = temp_v0->unk4 - temp_v0->unk8;
    if (arg0->unk28 == 0xFF65) {
        var_v1 = (var_v1 + arg0->unk34) - ((arg0->unk58 + 1) & ~1);
    }
    return var_v1;
}

? __sgi_ldmemseek(void *arg0, s32 arg1, s32 arg2) {
    if (arg0->unk28 != 0xFF65) {
        fprintf(__iob + 0x20, "Can only ldmemseek on archives!\n");
        return -1;
    }
    switch (arg2) {                                 /* irregular */
    case 0:
        arg0->unk34 = arg1;
        return 0;
    case 1:
    case 2:
        fprintf(__iob + 0x20, "Can only ldmemseek from BEGINNING\n");
        return -1;
    default:
        fprintf(__iob + 0x20, "Bad  offset in ldmemseek\n");
        return -1;
    }
}

s32 ldfseek(s32 *arg0, s32 arg1, s32 arg2) {
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;

    switch (arg2) {                                 /* irregular */
    case 0:
        temp_v0 = arg0->unk4;
        temp_v0->unk4 = (s32) (temp_v0->unk8 + arg1);
block_8:
        return 0;
    case 2:
        temp_v0_2 = arg0->unk4;
        temp_v0_2->unk4 = (s32) ((temp_v0_2->unk8 + temp_v0_2->unk0) - arg1);
        goto block_8;
    case 1:
        temp_v0_3 = arg0->unk4;
        temp_v0_3->unk4 = (s32) (temp_v0_3->unk4 + arg1);
        goto block_8;
    default:
        fprintf(__iob + 0x20, "Bad  offset in ldfseek\n");
        return -1;
    }
}

s32 ldfread(s32 arg1, s32 arg2, void *arg3) {
    s32 sp24;
    s32 temp_lo;
    void *temp_v1;

    temp_lo = arg1 * arg2;
    sp24 = temp_lo;
    memcpy(arg3->unk4->unk4, (s16 *) temp_lo);
    temp_v1 = arg3->unk4;
    temp_v1->unk4 = (s32) (temp_v1->unk4 + temp_lo);
    return arg2;
}

? ldlseek(void *arg0, ? arg1) {
    void *temp_v0;

    temp_v0 = arg0->unk2C->unk9C;
    if ((temp_v0->unk4 != 0) && (ldfseek(temp_v0->unkC, 0) == 0)) {
        return 1;
    }
    return 0;
}

void ldnlseek(? arg1) {
    ldlseek(NULL);
}

s32 ldnrseek(s32 *arg0, s8 *arg1) {
    s32 var_s0;
    u32 var_s1;
    void *temp_v0;
    void *var_v0;

    var_v0 = arg0->unk2C;
    var_s0 = 0;
    var_s1 = 0;
    if (var_v0->unk90->unk2 != 0) {
loop_1:
        if (strcmp(arg1, var_v0->unk98 + var_s0) == 0) {
            temp_v0 = arg0->unk2C->unk98 + var_s0;
            if ((temp_v0->unk20 != 0) && (ldfseek(arg0, temp_v0->unk18, 0) == 0)) {
                return 1;
            }
        }
        var_v0 = arg0->unk2C;
        var_s1 += 1;
        var_s0 += 0x28;
        if (var_s1 >= (u16) var_v0->unk90->unk2) {
            goto block_6;
        }
        goto loop_1;
    }
block_6:
    return 0;
}

? ldnsseek(s32 *arg0, s8 *arg1) {
    s32 temp_a1;
    s32 var_s0;
    u32 temp_s4;
    u32 var_s1;

    temp_s4 = strlen(arg1);
    var_s1 = 0;
    var_s0 = 0;
    if (arg0->unk2C->unk90->unk2 != 0) {
loop_1:
        if (strncmp(arg1, arg0->unk2C->unk98 + var_s0, temp_s4) == 0) {
            temp_a1 = (arg0->unk2C->unk98 + var_s0)->unk14;
            if ((temp_a1 != 0) && (ldfseek(arg0, temp_a1, 0) == 0)) {
                return 1;
            }
        }
        var_s1 += 1;
        var_s0 += 0x28;
        if (var_s1 >= (u16) arg0->unk2C->unk90->unk2) {
            goto block_6;
        }
        goto loop_1;
    }
block_6:
    return 0;
}

s32 ldohseek(void *arg0) {
    void *temp_v0;

    temp_v0 = arg0->unk2C;
    if (temp_v0->unk8C == 3) {
        fprintf(__iob + 0x20, "ldohseek is not supported\n");
        return __assert("0", "ldfcn.c", 0x256);
    }
    if ((temp_v0->unk90->unk10 != 0) && (ldfseek((s32 *)0x14, 0) == 0)) {
        return 1;
    }
    return 0;
}

? ldrseek(void *arg0, s32 arg1) {
    s32 temp_a3;

    temp_a3 = arg1 & 0xFFFF;
    if (ldfseek((arg0->unk2C->unk98 + (temp_a3 * 0x28))->unk-10, 0, temp_a3) == 0) {
        return 1;
    }
    return 0;
}

? ldsseek(void *arg0, s32 arg1) {
    s32 *temp_a3;

    temp_a3 = (arg0->unk2C->unk98 + ((arg1 & 0xFFFF) * 0x28))->unk-14;
    if ((temp_a3 != NULL) && (ldfseek(temp_a3, 0, (s32) temp_a3) == 0)) {
        return 1;
    }
    return 0;
}

? ldtbseek(s32 *arg0) {
    if ((hdr_symptr(arg0->unk2C, arg0) != 0) && (ldfseek(arg0, arg0->unk2C->unk9C->unk24, 0, arg0) == 0)) {
        return 1;
    }
    return 0;
}

u32 ldnreloc(s32 *arg0, s32 *arg1) {
    u32 sp28;
    s8 *temp_a2;

    temp_a2 = arg0->unk2C;
    if (temp_a2->unk8C == 3) {
        return elf_nreloc(temp_a2, arg1->unk24, temp_a2);
    }
    if (arg1->unk18 == 0) {
        return 0U;
    }
    if (arg1->unk24 & 0x20000000) {
        if (ldnrseek(arg1, temp_a2) != 1) {
            fprintf(__iob + 0x20, "libmld: ldnreloc:");
            fprintf(__iob + 0x20, "cannot ldnrseek section %s\n", arg1);
            return -1U;
        }
        if (ldfread(&sp28, 8, (void *)1, arg0) != 1) {
            fprintf(__iob + 0x20, "libmld: ldnreloc:");
            fprintf(__iob + 0x20, "cannot FREAD relocation for %s\n", arg1);
            return -1U;
        }
        if (arg0->unk2A < 0) {
            swap_reloc((struct reloc *) &sp28, 1, gethostsex());
        }
        return sp28;
    }
    return (u32) arg1->unk20;
}

s32 *ldaopen(s32 arg0, s32 *arg1) {
    s32 *sp24;
    s32 *temp_t6;
    s32 *temp_t9;
    s32 *temp_v0;
    void *temp_t1;
    void *temp_t3;
    void *temp_v0_2;

    if ((vldldptr(arg1) == 0) || (temp_v0 = allocldptr(), (temp_v0 == NULL))) {
        return NULL;
    }
    M2C_MEMCPY_ALIGNED(temp_v0, arg1, 0x54);
    temp_t9 = temp_v0 + 0x54;
    temp_t6 = arg1 + 0x54;
    temp_t9->unk0 = temp_t6->unk0;
    temp_t9->unk4 = (s32) temp_t6->unk4;
    sp24 = temp_v0;
    temp_v0_2 = calloc(1U, 0x10U);
    temp_v0->unk4 = temp_v0_2;
    if (temp_v0_2 == NULL) {
        sp24 = temp_v0;
        __assert("LIOPTR(nldptr) = (FILE *)calloc(1,sizeof(FILE))", "ldfcn.c", 0x2B3);
    }
    temp_t1 = temp_v0->unk4;
    temp_t3 = arg1->unk4;
    temp_t1->unk0 = (s32) temp_t3->unk0;
    temp_t1->unk4 = (s32) temp_t3->unk4;
    temp_t1->unk8 = (s32) temp_t3->unk8;
    temp_t1->unkC = (s32) temp_t3->unkC;
    return temp_v0;
}

? ldaclose(void *arg0) {
    if (vldldptr() == 0) {
        return 0;
    }
    free(arg0->unk4);
    free(arg0);
    return 1;
}

? ldahread(s32 arg0, s16 *arg1) {
    memcpy(arg1, arg0 + 0x38, 0x24U);
    return 1;
}

? ldohread(void *arg0, s32 arg1) {
    s32 temp_v1;

    temp_v1 = arg0->unk2C->unk94;
    if (temp_v1 != 0) {
        M2C_MEMCPY_ALIGNED(arg1, temp_v1, 0x38);
        return 1;
    }
    return 0;
}

? ldarsymread(void *arg0, s8 *arg1) {
    ? *temp_s1;
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_s3;
    void *temp_v1;
    void *temp_v1_2;
    void *temp_v1_3;

    if (arg0->unk28 != 0xFF65) {
        goto block_15;
    }
    lseek(arg0->unk30, 8, 0);
    var_s3 = 0;
loop_3:
    if (read(arg0->unk30, arg1, 0x3CU) != (s32) 0x3CU) {
        var_s3 = 1;
        goto block_14;
    }
    temp_s1 = arg1 + 0x30;
    if (strncmp(arg1, "__________E", 0xBU) == 0) {
        temp_v1 = arg0->unk2C;
        temp_a2 = temp_v1->unkC4;
        temp_a0 = ~(getpagesize() - 1) & temp_a2;
        if (munmap(temp_a0, temp_v1->unk34 + (temp_a2 - temp_a0), temp_a2) == 0) {
            arg0->unk2C->unkC4 = 0;
        }
        arg0->unk2C->unk34 = atol(temp_s1);
        temp_v1_2 = arg0->unk2C;
        temp_v0 = realloc((void *) temp_v1_2->unkC4, temp_v1_2->unk34);
        arg0->unk2C->unkC4 = temp_v0;
        if (temp_v0 == 0) {
            __assert("LPOBJ(ldptr)->o_praw = realloc(LPOBJ(ldptr)->o_praw,LPOBJ(ldptr)->o_statb.st_size)", "ldfcn.c", 0x2EF);
        }
        arg0->unk4->unk0 = (u32) arg0->unk2C->unk34;
        temp_v0_2 = arg0->unk2C->unkC4;
        arg0->unk4->unk4 = temp_v0_2;
        arg0->unk4->unk8 = temp_v0_2;
        arg0->unk4->unkC = 1;
        arg0->unk4->unkD = 0xFF;
        temp_v1_3 = arg0->unk2C;
        if (read(arg0->unk30, (void *) temp_v1_3->unkC4, temp_v1_3->unk34) != arg0->unk2C->unk34) {
            goto block_15;
        }
        return 1;
    }
    lseek(arg0->unk30, atol(temp_s1), 1);
block_14:
    if (var_s3 != 0) {
block_15:
        return 0;
    }
    goto loop_3;
}

s32 ldnshread(s32 *arg0, s8 *arg1, ? *arg2) {
    s32 temp_t4;
    s32 temp_v0;
    s32 var_a2;
    s32 var_s0;
    u32 var_s2;

    var_s2 = 0;
    if (arg0->unkE != 0) {
        var_s0 = 0;
loop_2:
        temp_v0 = strlen(arg0->unk2C->unk98 + var_s0);
        var_a2 = temp_v0;
        if (temp_v0 >= 9) {
            var_a2 = 8;
        }
        if (strncmp(arg1, arg0->unk2C->unk98 + var_s0, (u32) var_a2) == 0) {
            temp_t4 = arg0->unk2C->unk98 + var_s0;
            M2C_MEMCPY_ALIGNED(arg2, temp_t4, 0x24);
            *(arg2 + 0x24) = *(temp_t4 + 0x24);
            return 1;
        }
        var_s2 += 1;
        var_s0 += 0x28;
        if (var_s2 >= (u16) arg0->unkE) {
            goto block_7;
        }
        goto loop_2;
    }
block_7:
    return 0;
}

u32 *_ld_get_procedure_table(u32 *arg0, void *arg1) {
    u32 *temp_v0;

    temp_v0 = foreach_obj(*obj_rld_map(arg1->unk2C), obj_find_procedure_table, arg0);
    if (temp_v0 == (u32 *)-1) {
        return NULL;
    }
    return temp_v0;
}

void _ld_init_rt_proc_table(void *arg0) {
    foreach_obj(*obj_rld_map(arg0->unk2C), _create_rt_proc_table, NULL);
}

s8 *func_00425F30(s8 *arg0) {
    s8 *sp24;
    s8 *temp_v0;

    temp_v0 = malloc(strlen(arg0) + 1);
    sp24 = temp_v0;
    strcpy(temp_v0, arg0);
    return temp_v0;
}

void change_fortran_names(s32 *(*arg0)(?, s32 *, u32)) {
    s32 temp_v0;
    s32 var_a0;
    s32 var_s4;
    s32 var_v0_2;
    s32 var_v1;
    s8 *temp_v0_2;
    s8 *var_s0;
    s8 temp_t2;
    u32 var_s1;
    u32 var_s1_2;
    void *var_v0;

    var_v0 = arg0->unk9C;
    var_s4 = 0;
    if (var_v0 != NULL) {
        var_s1 = arg0->unkD0;
        if (var_s1 < (u32) (var_s1 + var_v0->unk48)) {
            do {
                if (file_lang(arg0, var_s1) == 2) {
                    temp_v0 = file_string_base(arg0, var_s1);
                    var_v1 = temp_v0;
                    var_v0_2 = temp_v0 * 0;
                    var_s4 += 1;
                    var_a0 = (arg0->unkA0 + (var_s1 * 0x48) + -(arg0->unkD0 * 0x48))->unkC;
                    if (var_a0 > 0) {
                        do {
                            var_v0_2 += 1;
                            if ((var_v1->unk0 == 0x5F) && (var_v1->unk1 == 0)) {
                                var_v1->unk0 = 0;
                                var_a0 = (arg0->unkA0 + (var_s1 * 0x48) + -(arg0->unkD0 * 0x48))->unkC;
                            }
                            var_v1 += 1;
                        } while (var_v0_2 < var_a0);
                    }
                }
                var_v0 = arg0->unk9C;
                var_s1 += 1;
            } while (var_s1 < (u32) (arg0->unkD0 + var_v0->unk48));
        }
        if (var_s4 != 0) {
            var_s1_2 = arg0->unkD8;
            if (var_s1_2 < (u32) (var_s1_2 + var_v0->unk58)) {
                do {
                    if (file_lang(arg0, symbol_to_file(arg0, var_s1_2)) == 2) {
                        temp_v0_2 = symbol_name(arg0, var_s1_2);
                        var_s0 = temp_v0_2;
                        if (strcmp(temp_v0_2, "MAIN__") != 0) {
                            if (*var_s0 != 0) {
                                do {
                                    temp_t2 = var_s0->unk1;
                                    var_s0 += 1;
                                } while (temp_t2 != 0);
                            }
                            if (var_s0->unk-1 == 0x5F) {
                                var_s0->unk-1 = 0;
                            }
                        }
                    }
                    var_s1_2 += 1;
                } while (var_s1_2 < (u32) (arg0->unkD8 + arg0->unk9C->unk58));
            }
        }
    }
}

void __sgi_dbx_obj_close(s32 *(*arg0)(?, s32 *, u32)) {
    s32 temp_v0;

    temp_v0 = arg0->unk180;
    if (temp_v0 == 1) {
        free(arg0->unkC4);
        arg0->unkC4 = NULL;
        arg0->unkDC = 0;
        goto block_5;
    }
    if ((temp_v0 == 3) && (obj_write(arg0) == NULL)) {
        st_error("obj_write failed\0\0\0\0obj_init: obj %s\n\0\0\0obj_init: gethostsex %d\n\0\0\0\0obj_init: obj->o_mode %d\n\0\0\0obj_init: Elf object\n\0\0\0obj_init: Coff object\n");
    } else {
block_5:
        if (((u32) arg0 >= (u32) (&_end + 1)) && ((u32) arg0 < sbrk(0))) {
            free(arg0);
        }
    }
}

s32 *(*__sgi_fobj_open(s32 *(*arg0)(?, s32 *, u32), s32 arg1, void *arg2))(?, s32 *, u32) {
    u8 temp_s1;
    void *temp_v0;

    temp_s1 = arg2->unkD;
    if ((s32) temp_s1 < 0) {
        return NULL;
    }
    if (fstat((s32) temp_s1, arg0 + 4) != 0) {
        return NULL;
    }
    lseek((s32) temp_s1, 0, 0);
    temp_v0 = malloc(arg0->unk34);
    if (temp_v0 == NULL) {
        return NULL;
    }
    arg0->unkC4 = temp_v0;
    if (read((s32) temp_s1, temp_v0, arg0->unk34) != arg0->unk34) {
        return NULL;
    }
    if (arg0->unkC4 == NULL) {
        return NULL;
    }
    if (obj_init(arg0, 1) == NULL) {
        return NULL;
    }
    arg0->unkDC = arg1;
    return arg0;
}

s32 *(*obj_open(s32 *(*arg0)(?, s32 *, u32), s8 *arg1, ? arg2))(?, s32 *, u32) {
    s32 sp2C;
    s32 temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;

    temp_v0 = open(arg1, 0);
    if (temp_v0 < 0) {
        return NULL;
    }
    sp2C = temp_v0;
    if (fstat(temp_v0, arg0 + 4) != 0) {
        return NULL;
    }
    temp_v0_2 = mmap(0, arg0->unk34, 2, 2, sp2C, 0);
    arg0->unkC4 = temp_v0_2;
    if (temp_v0_2 == (void *)-1) {
        temp_v0_3 = malloc((u32) arg0->unk34);
        arg0->unkC4 = temp_v0_3;
        if (temp_v0_3 == NULL) {
            return NULL;
        }
        if (read(sp2C, arg0->unkC4, (u32) arg0->unk34) != arg0->unk34) {
            return NULL;
        }
        goto block_9;
    }
block_9:
    D_10015B20 = 1;
    close(sp2C);
    if (obj_init(arg0, 1) == NULL) {
        return NULL;
    }
    arg0->unkDC = func_00425F30(arg1);
    return arg0;
}

s32 *(*dbx_obj_open(s32 *(*arg0)(?, s32 *, u32), s8 *arg1))(?, s32 *, u32) {
    s32 sp2C;
    s32 temp_v0;
    void *temp_v0_2;

    temp_v0 = open(arg1, 0);
    if (temp_v0 < 0) {
        return NULL;
    }
    sp2C = temp_v0;
    if (fstat(temp_v0, arg0 + 4) != 0) {
        return NULL;
    }
    temp_v0_2 = mmap(0, arg0->unk34, 2, 2, sp2C, 0);
    arg0->unkC4 = temp_v0_2;
    if (temp_v0_2 == (void *)-1) {
        return NULL;
    }
    D_10015B20 = 1;
    close(sp2C);
    if (obj_init(arg0, 1) == NULL) {
        return NULL;
    }
    arg0->unkDC = func_00425F30(arg1);
    return arg0;
}

s32 *(*obj_init(s32 *(*arg0)(?, s32 *, u32), s32 arg1))(?, s32 *, u32) {
    s32 *sp80;
    void *sp70;
    void *sp54;
    struct filehdr *sp50;
    s32 sp3C;
    s16 temp_a1;
    s32 *temp_a0_4;
    s32 *temp_t7;
    s32 *temp_v0_2;
    s32 temp_a0_3;
    s32 temp_a2;
    s32 temp_s5;
    s32 temp_v0;
    s32 temp_v0_10;
    s32 temp_v0_11;
    s32 temp_v0_12;
    s32 temp_v0_13;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s32 temp_v0_7;
    s32 temp_v0_8;
    s32 temp_v0_9;
    s32 temp_v1_2;
    s32 temp_v1_4;
    s32 temp_v1_5;
    s32 var_a3;
    s32 var_s0;
    s32 var_s0_2;
    s32 var_s0_3;
    s32 var_s0_4;
    s32 var_s0_5;
    s32 var_s0_6;
    s32 var_v0_2;
    s32 var_v1;
    s8 temp_a0;
    s8 var_v1_3;
    struct __sgi_hdrr_s *temp_s0;
    struct filehdr *temp_s2;
    struct filehdr *temp_s2_6;
    struct filehdr *temp_s2_7;
    struct filehdr *temp_s2_8;
    struct filehdr *temp_s2_9;
    struct filehdr *temp_t2;
    struct scnhdr *temp_t2_2;
    struct scnhdr *var_s1_7;
    u16 temp_v0_3;
    u32 *var_s1_6;
    u32 temp_lo;
    u32 temp_lo_2;
    u32 temp_s2_2;
    u32 temp_s2_3;
    u32 temp_s2_4;
    u32 temp_s2_5;
    u32 temp_v1_3;
    u32 var_s0_7;
    u32 var_s5;
    u32 var_s5_2;
    u32 var_v1_2;
    void *temp_a0_2;
    void *temp_v0_4;
    void *temp_v1;
    void *var_s1;
    void *var_s1_2;
    void *var_s1_3;
    void *var_s1_4;
    void *var_s1_5;
    void *var_v0;

    sp80 = NULL;
    arg0->unk1D8 = 1;
    temp_v0 = gethostsex();
    arg0->unk180 = arg1;
    dumpobj_struct(arg0);
    temp_s2 = arg0->unkC4;
    if ((temp_s2->unk0 == 0x7F) && (temp_s2->unk1 == 0x45) && (temp_s2->unk2 == 0x4C) && (temp_s2->unk3 == 0x46)) {
        arg0->unk8C = 3;
        temp_a0 = temp_s2->unk5;
        if ((temp_v0 != 0) || (var_v1 = (temp_a0 == 2) == 0, (var_v1 != 0))) {
            var_v1 = (temp_v0 == 1) == 0;
            if (var_v1 == 0) {
                var_v1 = (temp_a0 == 1) == 0;
            }
        }
        if (var_v1 != 0) {
            swap_ehdr(temp_s2);
        }
        arg0->unkE0 = arg0->unkC4;
        if (arg0->unkC4->unk4 != 1) {
            return NULL;
        }
        sp50 = arg0->unkC4;
        if (var_v1 != 0) {
            sp50 = arg0->unkC4;
            if (arg0->unkC4->unk1C != 0) {
                sp50 = arg0->unkC4;
                swap_phdr(arg0->unkC4->unk1C + arg0->unkC4);
            }
        }
        temp_v1 = arg0->unkC4->unk1C + arg0->unkC4;
        arg0->unkE4 = temp_v1;
        sp54 = temp_v1;
        if ((var_v1 != 0) && (sp50->unk20 != 0)) {
            var_s5 = 0;
            if (sp50->unk30 != 0) {
                sp3C = 0;
                do {
                    temp_a0_2 = arg0->unkC4 + sp50->unk20 + sp3C;
                    sp70 = temp_a0_2;
                    swap_shdr(temp_a0_2);
                    temp_v1_2 = temp_a0_2->unk4;
                    var_s0 = 0;
                    if (temp_v1_2 == 9) {
                        temp_s2_2 = (u32) temp_a0_2->unk14 >> 3;
                        var_s1 = arg0->unkC4 + temp_a0_2->unk10;
                        if ((s32) temp_s2_2 > 0) {
                            do {
                                swap_rel_dyn(var_s1, temp_v0);
                                var_s0 += 1;
                                var_s1 += 8;
                            } while (var_s0 != temp_s2_2);
                        }
                    } else {
                        var_s0_2 = 0;
                        if ((temp_v1_2 == 2) || (temp_v1_2 == 0xB)) {
                            temp_s2_3 = (u32) temp_a0_2->unk14 >> 4;
                            var_s1_2 = arg0->unkC4 + temp_a0_2->unk10;
                            if ((s32) temp_s2_3 > 0) {
                                do {
                                    swap_dynsym(var_s1_2, temp_v0);
                                    var_s0_2 += 1;
                                    var_s1_2 += 0x10;
                                } while (var_s0_2 != temp_s2_3);
                            }
                        } else if (temp_v1_2 == 0x70000006) {
                            temp_lo = (u32) temp_a0_2->unk14 / 24U;
                            var_s0_3 = 0;
                            var_s1_3 = arg0->unkC4 + temp_a0_2->unk10;
                            if ((s32) temp_lo > 0) {
                                do {
                                    swap_reginfo(var_s1_3, temp_v0);
                                    var_s0_3 += 1;
                                    var_s1_3 += 0x18;
                                } while (var_s0_3 != temp_lo);
                            }
                        } else {
                            var_s0_4 = 0;
                            if (temp_v1_2 == 6) {
                                temp_s2_4 = (u32) temp_a0_2->unk14 >> 3;
                                var_s1_4 = arg0->unkC4 + temp_a0_2->unk10;
                                if ((s32) temp_s2_4 > 0) {
                                    do {
                                        swap_dynamic(var_s1_4, temp_v0);
                                        var_s0_4 += 1;
                                        var_s1_4 += 8;
                                    } while (var_s0_4 != temp_s2_4);
                                }
                            } else if (temp_v1_2 == 0x70000000) {
                                temp_lo_2 = (u32) temp_a0_2->unk14 / 20U;
                                var_s0_5 = 0;
                                var_s1_5 = arg0->unkC4 + temp_a0_2->unk10;
                                if ((s32) temp_lo_2 > 0) {
                                    do {
                                        swap_liblist(var_s1_5, temp_v0);
                                        var_s0_5 += 1;
                                        var_s1_5 += 0x14;
                                    } while (var_s0_5 != temp_lo_2);
                                }
                            } else {
                                var_s0_6 = 0;
                                if (temp_v1_2 == 0x70000002) {
                                    temp_s2_5 = (u32) temp_a0_2->unk14 >> 2;
                                    var_s1_6 = arg0->unkC4 + temp_a0_2->unk10;
                                    if ((s32) temp_s2_5 > 0) {
                                        do {
                                            swap_conflict(var_s1_6, temp_v0);
                                            var_s0_6 += 1;
                                            var_s1_6 += 4;
                                        } while (var_s0_6 != temp_s2_5);
                                    }
                                }
                            }
                        }
                    }
                    var_s5 += 1;
                    sp3C += 0x28;
                } while (var_s5 < (u16) sp50->unk30);
            }
        }
        var_s5_2 = 0;
        if (arg0->unk180 == 1) {
            temp_s2_6 = arg0->unkC4;
            arg0->unkE8 = (void *) (temp_s2_6->unk20 + temp_s2_6);
            temp_v0_2 = foreach_section(arg0, find_section_bytype, 0x70000005, sp50);
            if (temp_v0_2 != (s32 *)-1) {
                arg0->unk9C = (struct __sgi_hdrr_s *) (arg0->unkC4 + temp_v0_2->unk10);
            } else {
                arg0->unk9C = NULL;
            }
        }
        arg0->unk110 = (s32) sp50->unk18;
        var_v0 = sp54;
        if (sp50->unk2C != 0) {
            do {
                temp_v1_3 = var_v0->unk0;
                switch (temp_v1_3) {                /* irregular */
                case 0x0:
                case 0x3:
                case 0x4:
                case 0x5:
                case 0x6:
                case 0x70000000:
                    break;
                case 0x1:
                    temp_v1_4 = var_v0->unk18 & 6;
                    switch (temp_v1_4) {            /* switch 1; irregular */
                    case 4:                         /* switch 1 */
                        temp_t2 = var_v0->unk8 - var_v0->unk4;
                        arg0->unkFC = temp_t2;
                        arg0->unkF8 = temp_t2;
                        arg0->unk100 = (s32) (var_v0->unk4 + var_v0->unk10);
                        break;
                    case 6:                         /* switch 1 */
                        temp_t7 = var_v0->unk8;
                        arg0->unk104 = temp_t7;
                        arg0->unk108 = (s32) (var_v0->unk10 + temp_t7);
                        arg0->unk10C = (s32) (var_v0->unk14 - var_v0->unk10);
                        break;
                    }
                    break;
                case 0x2:
                    sp80 = var_v0->unk8;
                    break;
                }
                var_s5_2 += 1;
                var_v0 += 0x20;
            } while (var_s5_2 < sp50->unk2C);
        }
        arg0->unk1 = 0x62;
        temp_s5 = arg0->unkE0->unk24 & 0xF0000000;
        if (temp_s5 != 0) {
            if (temp_s5 == 0x10000000) {
                arg0->unk1 = 0x66;
            } else {
                arg0->unk1 = 0x42;
            }
        }
        goto block_103;
    }
    arg0->unk8C = 2;
    temp_v0_3 = (u16) temp_s2->unk0;
    if ((temp_v0_3 == 0x160) || (temp_v0_3 == 0x163) || (temp_v0_3 == 0x140)) {
        var_v1_2 = temp_v0_3 & 0xFF;
        goto block_85;
    }
    if ((temp_v0_3 == 0x162) || (temp_v0_3 == 0x166) || (temp_v0_3 == 0x142)) {
        var_v1_2 = temp_v0_3 & 0xFF;
        goto block_85;
    }
    if ((temp_v0_3 == 0x6001) || (temp_v0_3 == 0x6301) || (temp_v0_3 == 0x4001)) {
        var_v1_2 = (u32) (temp_v0_3 & 0xFF00) >> 8;
        if (temp_v0 == 1) {
            arg0->unk0 = (s8) (arg0->unk0 | 0x80);
        }
        goto block_85;
    }
    if ((temp_v0_3 == 0x6201) || (temp_v0_3 == 0x6601) || (temp_v0_3 == 0x4201)) {
        var_v1_2 = (u32) (temp_v0_3 & 0xFF00) >> 8;
        if (temp_v0 == 0) {
            arg0->unk0 = (s8) (arg0->unk0 | 0x80);
        }
block_85:
        if ((s32) var_v1_2 < 0x63) {
            arg0->unk1 = 0x62;
        } else {
            var_v1_3 = 0x42;
            if ((s32) var_v1_2 < 0x67) {
                var_v1_3 = 0x66;
            }
            arg0->unk1 = var_v1_3;
        }
        var_v0_2 = (s32) arg0->unk0 >> 0x1F;
        if (var_v0_2 != 0) {
            swap_filehdr(arg0->unkC4, temp_v0);
            var_v0_2 = (s32) arg0->unk0 >> 0x1F;
        }
        temp_s2_7 = arg0->unkC4;
        arg0->unk90 = temp_s2_7;
        arg0->unkF8 = temp_s2_7;
        temp_t2_2 = temp_s2_7->unk10 + temp_s2_7 + 0x14;
        arg0->unk98 = temp_t2_2;
        if (var_v0_2 != 0) {
            var_s0_7 = 0;
            var_s1_7 = temp_t2_2;
            if ((u16) temp_s2_7->unk2 != 0) {
                do {
                    swap_scnhdr(var_s1_7, temp_v0);
                    var_s0_7 += 1;
                    var_s1_7 += 0x28;
                } while (var_s0_7 < (u16) arg0->unk90->unk2);
            }
        }
        if (arg0->unkC4->unk10 != 0) {
            if (((s32) arg0->unk0 >> 0x1F) != 0) {
                swap_aouthdr(arg0->unkC4 + 0x14, temp_v0);
            }
            temp_v0_4 = arg0->unkC4 + 0x14;
            arg0->unk94 = temp_v0_4;
            arg0->unkFC = (struct filehdr *) temp_v0_4->unk14;
            arg0->unk100 = (s32) temp_v0_4->unk4;
            arg0->unk104 = (s32 *) temp_v0_4->unk18;
            arg0->unk108 = (s32) temp_v0_4->unk1C;
            arg0->unk10C = (s32) temp_v0_4->unkC;
            arg0->unk110 = (s32) temp_v0_4->unk10;
        }
        sp80 = func_0042803C(arg0->unk90, obj_map_address(arg0));
        if ((hdr_symptr(arg0) != 0) && (arg0->unk180 == 1)) {
            temp_s2_8 = arg0->unkC4;
            arg0->unk9C = (struct __sgi_hdrr_s *) (temp_s2_8->unk8 + temp_s2_8);
        }
block_103:
        temp_s0 = arg0->unk9C;
        if (temp_s0 != NULL) {
            if (((s32) arg0->unk0 >> 0x1F) != 0) {
                swap_hdr(temp_s0, temp_v0);
            }
            temp_a1 = arg0->unk9C->unk0;
            if (temp_a1 == 0x7009) {
                temp_v0_5 = arg0->unk9C->unkC;
                if (arg0->unk34 < temp_v0_5) {
                    fprintf(__iob + 0x20, "Error: cbLineOffset greater than file size.\n");
                    return NULL;
                }
                temp_s2_9 = arg0->unkC4;
                arg0->unkB8 = (void *) (temp_s2_9 + temp_v0_5);
                temp_v0_6 = arg0->unk9C->unk34;
                if (arg0->unk34 < temp_v0_6) {
                    fprintf(__iob + 0x20, "Error: cbAuxOffset greater than file size.\n");
                    return NULL;
                }
                arg0->unkC0 = (void *) (temp_s2_9 + temp_v0_6);
                temp_v0_7 = arg0->unk9C->unk54;
                if (arg0->unk34 < temp_v0_7) {
                    fprintf(__iob + 0x20, "Error: cbRfdOffset greater than file size.\n");
                    return NULL;
                }
                arg0->unkBC = (s32 *) (temp_s2_9 + temp_v0_7);
                temp_v1_5 = arg0->unk9C->unk1C;
                temp_v0_8 = arg0->unk34;
                if (temp_v0_8 < temp_v1_5) {
                    fprintf(__iob + 0x20, "Error: cbPdOffset greater than file size.\n");
                    return NULL;
                }
                arg0->unkA4 = (struct pdr *) (temp_s2_9 + temp_v1_5);
                temp_a0_3 = arg0->unk9C->unk4C;
                if (temp_v0_8 < temp_a0_3) {
                    fprintf(__iob + 0x20, "Error: cbFdOffset greater than file size.\n");
                    return NULL;
                }
                arg0->unkA0 = (struct fdr *) (temp_s2_9 + temp_a0_3);
                temp_v0_9 = arg0->unk9C->unk24;
                if (arg0->unk34 < temp_v0_9) {
                    fprintf(__iob + 0x20, "Error: cbSymOffset greater than file size.\n");
                    return NULL;
                }
                arg0->unkA8 = (struct __sgi_symr_s *) (temp_s2_9 + temp_v0_9);
                temp_v0_10 = arg0->unk9C->unk5C;
                if (arg0->unk34 < temp_v0_10) {
                    fprintf(__iob + 0x20, "Error: cbExtOffset greater than file size.\n");
                    return NULL;
                }
                arg0->unkAC = (struct __sgi_extr__ *) (temp_s2_9 + temp_v0_10);
                temp_v0_11 = arg0->unk9C->unk44;
                if (arg0->unk34 < temp_v0_11) {
                    fprintf(__iob + 0x20, "Error: cbSsExtOffset greater than file size.\n");
                    return NULL;
                }
                arg0->unkB0 = (void *) (temp_s2_9 + temp_v0_11);
                temp_v0_12 = arg0->unk9C->unk3C;
                if (arg0->unk34 < temp_v0_12) {
                    fprintf(__iob + 0x20, "Error: cbSsOffset greater than file size.\n");
                    return NULL;
                }
                arg0->unkB4 = (void *) (temp_s2_9 + temp_v0_12);
                arg0->unkD8 = (s32) arg0->unk9C->unk20;
                if (((s32) arg0->unk0 >> 0x1F) != 0) {
                    swap_fi(arg0->unkBC, arg0->unk9C->unk50, temp_v0);
                    swap_pd(arg0->unkA4, arg0->unk9C->unk18, temp_v0);
                    swap_fd(arg0->unkA0, arg0->unk9C->unk48, temp_v0);
                    swap_sym(arg0->unkA8, arg0->unk9C->unk20, temp_v0);
                    swap_ext(arg0->unkAC, arg0->unk9C->unk58, temp_v0);
                }
                goto block_129;
            }
            warning("Symbol table header magic is 0x%x\n", temp_a1);
            goto block_129;
        }
block_129:
        obj_set_base_address(arg0, arg0->unkFC);
        temp_v0_13 = obj_map_diff(arg0);
        temp_a2 = temp_v0_13;
        if (arg0->unk180 == 2) {
            arg0->unkFC = (struct filehdr *) (arg0->unkFC - temp_v0_13);
            arg0->unk104 = (s32 *) (arg0->unk104 - temp_v0_13);
            arg0->unk108 = (s32) (arg0->unk108 - temp_v0_13);
            arg0->unk110 = (s32) (arg0->unk110 - temp_v0_13);
            var_a3 = temp_v0_13;
        } else {
            var_a3 = ((arg0->unk104 - arg0->unkFC) - arg0->unk100) + temp_v0_13;
        }
        arg0->unk198 = 0;
        if (sp80 != NULL) {
            temp_a0_4 = sp80 - temp_a2;
            sp80 = temp_a0_4;
            if (obj_get_dynamic_info(temp_a0_4, arg0, temp_a2, var_a3) == 0) {
                fatal("obj_get_dynamic_info failed\n");
            }
        }
        return arg0;
    }
    return NULL;
}

s32 *(*add_obj(void **arg0, s8 *arg1))(?, s32 *, u32) {
    s32 *(*temp_v0)(?, s32 *, u32);
    void *temp_v0_2;
    void *temp_v1;

    temp_v0 = calloc(1U, 0x1DCU);
    if (temp_v0 == NULL) {
        return NULL;
    }
    if (obj_open(temp_v0, arg1, 3) != temp_v0) {
        return NULL;
    }
    temp_v0_2 = list_last(*arg0);
    if (temp_v0_2 != (void *)-1) {
        temp_v1 = temp_v0_2->unk9C;
        if (temp_v1 != NULL) {
            temp_v0->unkD0 = (s32) (temp_v0_2->unkD0 + temp_v1->unk48);
            temp_v0->unkCC = (s32) (temp_v0_2->unkD8 + temp_v0_2->unk9C->unk58);
            temp_v0->unkC8 = (s32) (temp_v0_2->unkC8 + temp_v0_2->unk9C->unk30);
            temp_v0->unkD4 = (s32) (temp_v0_2->unkD4 + temp_v0_2->unk9C->unk18);
        } else {
            temp_v0->unkD0 = (s32) temp_v0_2->unkD0;
            temp_v0->unkCC = (s32) temp_v0_2->unkD8;
            temp_v0->unkC8 = (s32) temp_v0_2->unkC8;
            temp_v0->unkD4 = (s32) temp_v0_2->unkD4;
        }
    } else {
        temp_v0->unkCC = 0;
        temp_v0->unkD0 = 0;
        temp_v0->unkC8 = 0;
        temp_v0->unkD4 = 0;
    }
    temp_v0->unkD8 = (s32) (temp_v0->unkD8 + temp_v0->unkCC);
    objList_add(arg0, temp_v0, "adding obj to objlist", 1);
    return temp_v0;
}

s32 *(*dbx_add_obj(void **arg0, s8 *arg1))(?, s32 *, u32) {
    s32 *(*temp_v0)(?, s32 *, u32);
    void *temp_v0_2;
    void *temp_v1;

    temp_v0 = calloc(1U, 0x1DCU);
    if (temp_v0 == NULL) {
        return NULL;
    }
    if (dbx_obj_open(temp_v0, arg1) != temp_v0) {
        return NULL;
    }
    temp_v0_2 = list_last(*arg0);
    if (temp_v0_2 != (void *)-1) {
        temp_v1 = temp_v0_2->unk9C;
        if (temp_v1 != NULL) {
            temp_v0->unkD0 = (s32) (temp_v0_2->unkD0 + temp_v1->unk48);
            temp_v0->unkCC = (s32) (temp_v0_2->unkD8 + temp_v0_2->unk9C->unk58);
            temp_v0->unkC8 = (s32) (temp_v0_2->unkC8 + temp_v0_2->unk9C->unk30);
            temp_v0->unkD4 = (s32) (temp_v0_2->unkD4 + temp_v0_2->unk9C->unk18);
        } else {
            temp_v0->unkD0 = (s32) temp_v0_2->unkD0;
            temp_v0->unkCC = (s32) temp_v0_2->unkD8;
            temp_v0->unkC8 = (s32) temp_v0_2->unkC8;
            temp_v0->unkD4 = (s32) temp_v0_2->unkD4;
        }
    } else {
        temp_v0->unkCC = 0;
        temp_v0->unkD0 = 0;
        temp_v0->unkC8 = 0;
        temp_v0->unkD4 = 0;
    }
    temp_v0->unkD8 = (s32) (temp_v0->unkD8 + temp_v0->unkCC);
    change_fortran_names(temp_v0);
    objList_add(arg0, temp_v0, "adding obj to objlist", 1);
    return temp_v0;
}

s32 *(*dbx_insert_obj(void **arg0, s32 *(*arg1)(?, s32 *, u32)))(?, s32 *, u32) {
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v1;

    temp_v0 = list_last(*arg0);
    if (temp_v0 != (void *)-1) {
        temp_v1 = temp_v0->unk9C;
        if (temp_v1 != NULL) {
            arg1->unkD0 = (s32) (temp_v0->unkD0 + temp_v1->unk48);
            arg1->unkCC = (s32) (temp_v0->unkD8 + temp_v0->unk9C->unk58);
            arg1->unkC8 = (s32) (temp_v0->unkC8 + temp_v0->unk9C->unk30);
            arg1->unkD4 = (s32) (temp_v0->unkD4 + temp_v0->unk9C->unk18);
        } else {
            arg1->unkD0 = (s32) temp_v0->unkD0;
            arg1->unkCC = (s32) temp_v0->unkD8;
            arg1->unkC8 = (s32) temp_v0->unkC8;
            arg1->unkD4 = (s32) temp_v0->unkD4;
        }
    } else {
        arg1->unkCC = 0;
        arg1->unkD0 = 0;
        arg1->unkC8 = 0;
        arg1->unkD4 = 0;
    }
    temp_v0_2 = arg1->unk9C;
    if (temp_v0_2 != NULL) {
        arg1->unkD8 = (s32) (arg1->unkCC + temp_v0_2->unk20);
    } else {
        arg1->unkD8 = (s32) arg1->unkCC;
    }
    change_fortran_names(arg1);
    objList_add(arg0, arg1, "adding obj to objlist", 1);
    return arg1;
}

s32 *(*func_00427730(s32 *(*arg0)(?, s32 *, u32), u32 arg1, ? arg2))(?, s32 *, u32) {
    void *temp_v0;

    temp_v0 = arg0->unk9C;
    if (temp_v0 == NULL) {
        return (s32 *(*)(?, s32 *, u32))-1;
    }
    if ((arg1 >= (u32) arg0->unkCC) && (arg1 < (u32) (arg0->unkD8 + temp_v0->unk58))) {
        return arg0;
    }
    return (s32 *(*)(?, s32 *, u32))-1;
}

u32 *symbol_to_obj(u32 *(*arg1)(s32 *(*)(?, s32 *, u32), u32 *, s32 *(*(*)(s32 *(*)(?, s32 *, u32), u32, ?))(?, s32 *, u32), s32 *(*(*)(s32 *(*)(?, s32 *, u32), u32, ?))(?, s32 *, u32))) {
    u32 *temp_v0;
    u32 *var_v1;

    if (B_1001A110 == arg1) {
        return B_1001A114;
    }
    temp_v0 = foreach_obj(func_00427730, arg1);
    var_v1 = temp_v0;
    if (temp_v0 == (u32 *)-1) {
        var_v1 = NULL;
    }
    B_1001A110 = arg1;
    B_1001A114 = var_v1;
    return var_v1;
}

s32 *(*func_0042780C(s32 *(*arg0)(?, s32 *, u32), u32 arg1, ? arg2))(?, s32 *, u32) {
    u32 temp_v1;
    void *temp_v0;

    temp_v0 = arg0->unk9C;
    if (temp_v0 == NULL) {
        return (s32 *(*)(?, s32 *, u32))-1;
    }
    temp_v1 = arg0->unkD4;
    if ((arg1 >= temp_v1) && (arg1 < (u32) (temp_v1 + temp_v0->unk18))) {
        return arg0;
    }
    return (s32 *(*)(?, s32 *, u32))-1;
}

u32 *procedure_to_obj(u32 *(*arg1)(s32 *(*)(?, s32 *, u32), u32 *, s32 *(*(*)(s32 *(*)(?, s32 *, u32), u32, ?))(?, s32 *, u32), s32 *(*(*)(s32 *(*)(?, s32 *, u32), u32, ?))(?, s32 *, u32))) {
    u32 *temp_v0;
    u32 *var_v1;

    if (B_1001A118 == arg1) {
        return B_1001A11C;
    }
    temp_v0 = foreach_obj(func_0042780C, arg1);
    var_v1 = temp_v0;
    if (temp_v0 == (u32 *)-1) {
        var_v1 = NULL;
    }
    B_1001A118 = arg1;
    B_1001A11C = var_v1;
    return var_v1;
}

s32 *(*func_004278E4(s32 *(*arg0)(?, s32 *, u32), u32 arg1, ? arg2))(?, s32 *, u32) {
    u32 temp_v1;
    void *temp_v0;

    temp_v0 = arg0->unk9C;
    if (temp_v0 == NULL) {
        return (s32 *(*)(?, s32 *, u32))-1;
    }
    temp_v1 = arg0->unkD0;
    if ((arg1 >= temp_v1) && (arg1 < (u32) (temp_v1 + temp_v0->unk48))) {
        return arg0;
    }
    return (s32 *(*)(?, s32 *, u32))-1;
}

u32 *file_to_obj(u32 *(*arg1)(s32 *(*)(?, s32 *, u32), u32 *, s32 *(*(*)(s32 *(*)(?, s32 *, u32), u32, ?))(?, s32 *, u32), s32 *(*(*)(s32 *(*)(?, s32 *, u32), u32, ?))(?, s32 *, u32))) {
    u32 *temp_v0;
    u32 *var_v1;

    if (B_1001A220 == arg1) {
        return B_1001A224;
    }
    temp_v0 = foreach_obj(func_004278E4, arg1);
    var_v1 = temp_v0;
    if (temp_v0 == (u32 *)-1) {
        var_v1 = NULL;
    }
    B_1001A220 = arg1;
    B_1001A224 = var_v1;
    return var_v1;
}

s32 *(*func_004279BC(s32 *(*arg0)(?, s32 *, u32), u32 arg1, ? arg2))(?, s32 *, u32) {
    u32 temp_v0;

    temp_v0 = arg0->unkFC;
    if (((arg1 >= temp_v0) && (arg1 < (u32) (temp_v0 + arg0->unk100))) || ((arg1 >= (u32) arg0->unk104) && (arg1 < (u32) (arg0->unk108 + arg0->unk10C)))) {
        return arg0;
    }
    return (s32 *(*)(?, s32 *, u32))-1;
}

u32 *address_to_obj(u32 *(*arg1)(s32 *(*)(?, s32 *, u32), u32 *, s32 *(*(*)(s32 *(*)(?, s32 *, u32), u32, ?))(?, s32 *, u32), s32 *(*(*)(s32 *(*)(?, s32 *, u32), u32, ?))(?, s32 *, u32))) {
    u32 *temp_v0;
    u32 *var_v1;

    if (B_1001A228 == arg1) {
        return B_1001A22C;
    }
    temp_v0 = foreach_obj(func_004279BC, arg1);
    var_v1 = temp_v0;
    if (temp_v0 == (u32 *)-1) {
        var_v1 = NULL;
    }
    B_1001A228 = arg1;
    B_1001A22C = var_v1;
    return var_v1;
}

s32 *(*obj_read_from_fd(s32 *(*arg0)(?, s32 *, u32), s32 arg1, s32 arg2, u32 arg3))(?, s32 *, u32) {
    s32 sp3C;
    s32 sp28;
    s32 *(*var_s0)(?, s32 *, u32);
    s32 temp_a0;
    s32 temp_t0;
    s32 temp_v0;
    s32 temp_v0_3;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 var_a2;
    void *temp_v0_2;
    void *var_v0;

    var_s0 = arg0;
    if (arg0 == NULL) {
        var_s0 = calloc(1U, 0x1DCU);
    }
    if (var_s0 == NULL) {
        return NULL;
    }
    temp_v0 = getpagesize();
    var_a2 = var_s0->unkC4;
    temp_t0 = temp_v0;
    if (var_a2 != 0) {
        temp_a0 = var_a2 & ~(temp_v0 - 1);
        if (!(arg2 & 3)) {
            sp3C = temp_v0;
            if (munmap(temp_a0, var_s0->unk34 + (var_a2 - temp_a0), var_a2) == -1) {
                var_a2 = var_s0->unkC4;
                goto block_17;
            }
            var_s0->unk34 = arg3;
            temp_v1 = arg2 & ~(sp3C - 1);
            sp28 = temp_v1;
            temp_v0_2 = mmap(0, (arg2 - temp_v1) + arg3, 2, 2, arg1, temp_v1);
            if (temp_v0_2 == (void *)-1) {
                if (errno == 0x13) {
                    return NULL;
                }
                var_a2 = var_s0->unkC4;
                goto block_17;
            }
            var_s0->unkC4 = (s32) ((temp_v0_2 + arg2) - temp_v1);
            D_10015B20 = 1;
            goto block_24;
        }
        goto block_17;
    }
    var_s0->unk34 = arg3;
    if (!(arg2 & 3)) {
        temp_v1_2 = arg2 & ~(temp_t0 - 1);
        sp28 = temp_v1_2;
        temp_v0_3 = mmap(0, (arg2 - temp_v1_2) + arg3, 2, 2, arg1, temp_v1_2);
        var_s0->unkC4 = temp_v0_3;
        if (temp_v0_3 != -1) {
            var_s0->unkC4 = (s32) ((temp_v0_3 + arg2) - temp_v1_2);
            D_10015B20 = 1;
            goto block_24;
        }
    }
    var_s0->unkC4 = 0;
    var_a2 = 0;
block_17:
    var_s0->unk34 = arg3;
    if (var_a2 != 0) {
        var_v0 = realloc((void *) var_a2, arg3);
    } else {
        var_v0 = malloc(arg3);
    }
    var_s0->unkC4 = (s32) var_v0;
    if (var_s0->unkC4 == 0) {
        return NULL;
    }
    lseek(arg1, arg2, 0);
    if (read(arg1, (void *) var_s0->unkC4, arg3) != arg3) {
        return NULL;
    }
block_24:
    return obj_init(var_s0, 1);
}

void obj_close(s32 *(*arg0)(?, s32 *, u32)) {
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_v0;
    void *temp_a0_2;
    void *temp_a0_3;

    temp_v0 = arg0->unk180;
    if (temp_v0 == 1) {
        temp_a2 = arg0->unkC4;
        temp_a0 = ~(getpagesize() - 1) & temp_a2;
        if (D_10015B20 == 0) {
            free((void *) temp_a2);
        } else if (munmap(temp_a0, arg0->unk34 + (temp_a2 - temp_a0), temp_a2) == -1) {
            free((void *) arg0->unkC4);
        }
        temp_a0_2 = arg0->unkDC;
        arg0->unkC4 = 0;
        if (temp_a0_2 != NULL) {
            free(temp_a0_2);
        }
        temp_a0_3 = arg0->unk198;
        arg0->unkDC = NULL;
        if (temp_a0_3 != NULL) {
            free(temp_a0_3);
            arg0->unk198 = NULL;
        }
        goto block_13;
    }
    if ((temp_v0 == 3) && (obj_write(arg0) == NULL)) {
        st_error("obj_write failed");
    } else {
block_13:
        if (((u32) arg0 >= (u32) (&_end + 1)) && ((u32) arg0 < sbrk(0))) {
            free(arg0);
        }
    }
}

void dbx_obj_close(s32 *(*arg0)(?, s32 *, u32)) {
    s32 temp_v0;
    void *temp_a0;

    temp_v0 = arg0->unk180;
    if (temp_v0 == 1) {
        munmap(arg0->unkC4, arg0->unk34);
        arg0->unkC4 = 0;
        free(arg0->unkDC);
        temp_a0 = arg0->unk198;
        arg0->unkDC = NULL;
        if (temp_a0 != NULL) {
            free(temp_a0);
            arg0->unk198 = NULL;
        }
        goto block_6;
    }
    if ((temp_v0 == 3) && (obj_write(arg0) == NULL)) {
        st_error("obj_write failed");
    } else {
block_6:
        if (((u32) arg0 >= (u32) (&_end + 1)) && ((u32) arg0 < sbrk(0))) {
            free(arg0);
        }
    }
}

u16 obj_nsections(void *arg0) {
    s32 temp_v0;

    temp_v0 = arg0->unk8C;
    if (temp_v0 != 2) {
        if (temp_v0 == 3) {
            return arg0->unkE0->unk30;
        }
        return 0U;
    }
    return arg0->unk90->unk2;
}

s32 *func_0042803C(struct filehdr *arg0, s16 *arg1) {
    s8 *var_s1;
    u32 var_s0;

    var_s0 = 0;
    if (arg0->unk2 != 0) {
        var_s1 = arg0->unk10 + arg1 + 0x14;
loop_2:
        if (strncmp(var_s1, ".dynamic", 8U) == 0) {
            return var_s1->unkC;
        }
        var_s0 += 1;
        var_s1 += 1;
        if (var_s0 >= (u16) arg0->unk2) {
            goto block_5;
        }
        goto loop_2;
    }
block_5:
    return NULL;
}

s32 obj_dynamic(s32 *(*arg0)(?, s32 *, u32)) {
    s32 *temp_v0;
    s32 temp_v0_2;
    s32 var_a2;
    s32 var_v0;

    if (obj_otype() == 2) {
        var_a2 = 0x2000;
        goto block_5;
    }
    if (obj_otype(arg0) == 3) {
        var_a2 = 6;
block_5:
        temp_v0 = foreach_section(arg0, find_section_bytype, var_a2);
        if (temp_v0 == (s32 *)-1) {
            return 0;
        }
        temp_v0_2 = arg0->unk8C;
        if (temp_v0_2 == 2) {
            var_v0 = obj_vtop(arg0, temp_v0->unkC);
        } else if (temp_v0_2 == 3) {
            var_v0 = obj_vtop(arg0, temp_v0->unkC);
        } else {
            var_v0 = __assert("0", "obj.c\0\0\0get_dynamic_info: dynaddr 0x%x, obj 0x%x, offset 0x%x,0x%x\n\0get_dynamic_info: obj 0x%x, name %s, dyn 0x%x,offset 0x%x,0x%x\n\0get_dynamic_info: base addr 0x%x\n\0\0\0get_dynamic_info: init addr 0x%x\n\0\0\0get_dynamic_info: pixie init addr 0x%x\n\0get_dynamic_info: fini addr 0x%x\n\0\0\0get_dynamic_info: hash addr 0x%x\n", 0x4AF);
        }
        return var_v0;
    }
    st_error("obj_dynamic:Bad obj type %d\n", obj_otype(arg0));
    return 0;
}

s32 obj_get_dynamic_info(s32 *arg0, s32 *(*arg1)(?, s32 *, u32), s32 arg2, s32 arg3) {
    void *sp58;
    s32 sp38;
    s32 *var_s0;
    s32 *var_v1_2;
    s32 temp_a2;
    s32 temp_t4;
    s32 temp_t9;
    s32 temp_v1;
    s32 var_a0;
    s32 var_s3;
    s32 var_s4;
    s32 var_v1;
    struct filehdr *temp_v0;
    struct filehdr *temp_v0_2;
    struct filehdr *temp_v0_3;
    u32 *temp_v0_4;
    u32 temp_s0;
    u32 temp_s0_2;
    void *var_v0;
    void *var_v0_2;
    void *var_v1_3;

    var_s0 = arg0;
    var_s3 = 0;
    var_s4 = 0xA;
    sp58 = malloc(0x28U);
    obj_set_conflictcount(arg1, (struct filehdr *)-1);
    obj_set_liblistcount(arg1, (struct filehdr *)-1);
    obj_set_msym_address(arg1, 0);
    arg1->unk144 = NULL;
    obj_unset_rldflag(arg1, 0x200);
    arg1->unk1D8 = 0;
    obj_set_symlib(arg1, 0);
    if (*arg0 != 0) {
        var_v1 = *var_s0;
        do {
            switch (var_v1) {                       /* irregular */
            case 1:
                temp_v1 = var_s3 * 4;
                if (var_s3 >= var_s4) {
                    var_s4 += 0xA;
                    sp38 = temp_v1;
                    sp58 = realloc(sp58, var_s4 * 4);
                }
                var_s3 += 1;
                *(sp58 + temp_v1) = var_s0->unk4;
                break;
            case -2415919098:
                obj_set_base_address(arg1, var_s0->unk4);
                break;
            case 12:
                temp_v0 = var_s0->unk4;
                if (temp_v0 != NULL) {
                    obj_set_init_address(arg1, temp_v0 - arg2);
                } else {
                    obj_set_init_address(arg1, 0);
                }
                break;
            case -2415919069:
                temp_v0_2 = var_s0->unk4;
                if (temp_v0_2 != NULL) {
                    obj_set_pixie_init_address(arg1, temp_v0_2 - arg2);
                } else {
                    obj_set_pixie_init_address(arg1, 0);
                }
                break;
            case 13:
                temp_v0_3 = var_s0->unk4;
                if (temp_v0_3 != NULL) {
                    obj_set_fini_address(arg1, temp_v0_3 - arg2);
                } else {
                    obj_set_fini_address(arg1, 0);
                }
                break;
            case 4:
                obj_set_hash_address(arg1, var_s0->unk4 - arg2);
                if (obj_nbucket(arg1) == 0) {
                    __assert("obj_nbucket(o) > 0", "obj.c\0\0\0get_dynamic_info: strtab addr 0x%x\n\0get_dynamic_info: dynsym addr 0x%x\n\0get_dynamic_info: msym addr 0x%x\n\0\0\0get_dynamic_info: got addr 0x%x\n\0\0\0\0get_dynamic_info: reloc addr 0x%x\n\0\0get_dynamic_info: liblist addr 0x%x\n\0\0\0\0get_dynamic_info: conflict addr 0x%x\n\0\0\0get_dynamic_info: loc got # %d\n\0get_dynamic_info: index of first unreferenced external symbol # %d\n\0get_dynamic_info: first symbol that has a got # %d\n\0get_dynamic_info: tstamp 0x%x\n\0\0get_dynamic_info: ichksum 0x%x\n\0get_dynamic_info: iversion 0x%x\n\0\0\0\0get_dynamic_info: mips flags 0x%x\n\0\0get_dynamic_info: reloc # %d\n\0\0\0get_dynamic_info: reloc entry 0x%x\n\0get_dynamic_info: sym tab # %d\n\0get_dynamic_info: sym entry 0x%x\n\0\0\0get_dynamic_info: str # %d\n\0get_dynamic_info: liblist # %d\n\0get_dynamic_info: conflict # %d\n\0\0\0\0get_dynamic_info: rld_map 0x%x\n\0get_dynamic_info: DT_SYMBOLIC is present\n\0\0\0get_dynamic_info: stored _rld_text_resolve addr 0x%x\n\0\0\0get_dynamic_info: unknown DT : 0x%x\n\0\0\0\0get_dynamic_info: external got 0x%x\n\0\0\0\0get_dynamic_info: rpath %s\n\0get_dynamic_info: soname %s\n\0\0\0\0get_dynamic_info: object's liblist is null\n\0get_dynamic_info: library %s is added to liblist\n", 0x522);
                }
                break;
            case 5:
                obj_set_dynstr_address(arg1, var_s0->unk4 - arg2);
                break;
            case 6:
                obj_set_dynsym_address(arg1, var_s0->unk4 - arg2);
                break;
            case -2415919097:
                obj_set_msym_address(arg1, var_s0->unk4 - arg2);
                break;
            case 3:
                obj_set_got_address(arg1, var_s0->unk4 - arg3);
                break;
            case 17:
                obj_set_dynrel_address(arg1, var_s0->unk4 - arg2);
                break;
            case -2415919095:
                obj_set_liblist_address(arg1, var_s0->unk4 - arg2);
                break;
            case -2415919096:
                obj_set_conflict_address(arg1, var_s0->unk4 - arg2);
                break;
            case 14:
                arg1->unkF0 = (struct filehdr *) var_s0->unk4;
                break;
            case -2415919094:
                obj_set_locgotcount(arg1, var_s0->unk4);
                break;
            case -2415919086:
                obj_set_unrefextno(arg1, var_s0->unk4);
                break;
            case -2415919085:
                obj_set_gotsym(arg1, var_s0->unk4);
                break;
            case -2415919103:
                obj_set_rldversion(arg1, var_s0->unk4);
                break;
            case -2415919102:
                obj_set_timestamp(arg1, var_s0->unk4);
                break;
            case -2415919101:
                obj_set_ichecksum(arg1, var_s0->unk4);
                break;
            case -2415919100:
                obj_set_iversion(arg1, var_s0->unk4);
                break;
            case -2415919099:
                obj_set_dynflags(arg1, var_s0->unk4);
                break;
            case 18:
                obj_set_dynrelsz(arg1, var_s0->unk4);
                break;
            case 19:
                obj_set_dynrelent(arg1, var_s0->unk4);
                break;
            case -2415919087:
                obj_set_dynsymcount(arg1, var_s0->unk4);
                break;
            case 11:
                obj_set_dynsyment(arg1, var_s0->unk4);
                break;
            case 10:
                obj_set_dynstrsz(arg1, var_s0->unk4);
                break;
            case -2415919088:
                obj_set_liblistcount(arg1, var_s0->unk4);
                break;
            case -2415919093:
                obj_set_conflictcount(arg1, var_s0->unk4);
                break;
            case 15:
                arg1->unk144 = (struct filehdr *) var_s0->unk4;
                break;
            case -2415919082:
                obj_set_rld_map(arg1, var_s0->unk4 - arg3);
                break;
            case 16:
                obj_set_rldflag(arg1, 0x200);
                break;
            case -2415919059:
                obj_set_rld_text_resolve_addr(arg1, var_s0->unk4);
                break;
            case -2415919081:
                obj_set_delta_class(arg1, var_s0->unk4 - arg2);
                break;
            case -2415919080:
                obj_set_delta_class_no(arg1, var_s0->unk4);
                break;
            case -2415919079:
                obj_set_delta_instance(arg1, var_s0->unk4 - arg2);
                break;
            case -2415919078:
                obj_set_delta_instance_no(arg1, var_s0->unk4);
                break;
            case -2415919077:
                obj_set_delta_reloc(arg1, var_s0->unk4 - arg2);
                break;
            case -2415919076:
                obj_set_delta_reloc_no(arg1, var_s0->unk4);
                break;
            case -2415919075:
                obj_set_delta_sym(arg1, var_s0->unk4 - arg2);
                break;
            case -2415919074:
                obj_set_delta_sym_no(arg1, var_s0->unk4);
                break;
            case -2415919072:
                obj_set_delta_classsym(arg1, var_s0->unk4 - arg3);
                break;
            case -2415919071:
                obj_set_delta_classsym_no(arg1, var_s0->unk4);
                break;
            case -2415919070:
                obj_set_cxx_flags(arg1, var_s0->unk4);
                break;
            case -2415919068:
                obj_set_symlib(arg1, var_s0->unk4 - arg3);
                break;
            }
            var_v1 = var_s0->unk8;
            var_s0 += 8;
        } while (var_v1 != 0);
    }
    temp_s0 = obj_got(arg1);
    obj_set_extgot(arg1, (obj_locgotcount(arg1) * 4) + temp_s0);
    obj_set_rpath(arg1, obj_dynstring(arg1, obj_rpath(arg1)));
    obj_set_soname(arg1, obj_dynstring(arg1, obj_soname(arg1)));
    if ((obj_liblist(arg1) == 0) && (var_s3 != 0)) {
        temp_s0_2 = var_s3 * 0x14;
        temp_v0_4 = malloc(temp_s0_2);
        memset(temp_v0_4, 0, temp_s0_2);
        var_a0 = 0;
        if (var_s3 > 0) {
            temp_a2 = var_s3 & 3;
            if (temp_a2 != 0) {
                var_v0 = temp_v0_4 + (0 * 0x10);
                var_v1_2 = sp58 + (0 * 4);
                do {
                    temp_t4 = *var_v1_2;
                    var_a0 += 1;
                    var_v0 += 0x14;
                    var_v1_2 += 4;
                    var_v0->unk-14 = temp_t4;
                } while (temp_a2 != var_a0);
                if (var_a0 != var_s3) {
                    goto block_70;
                }
            } else {
block_70:
                var_v0_2 = temp_v0_4 + (var_a0 * 0x14);
                var_v1_3 = sp58 + (var_a0 * 4);
                do {
                    var_a0 += 4;
                    var_v0_2 += 0x50;
                    var_v0_2->unk-50 = (s32) var_v1_3->unk0;
                    temp_t9 = var_v1_3->unk4;
                    var_v1_3 += 0x10;
                    var_v0_2->unk-3C = temp_t9;
                    var_v0_2->unk-28 = (s32) var_v1_3->unk-8;
                    var_v0_2->unk-14 = (s32) var_v1_3->unk-4;
                } while (var_a0 != var_s3);
            }
        }
        arg1->unk134 = temp_v0_4;
        arg1->unk16C = var_s3;
        free(sp58);
    }
    return 1;
}

u32 elfhash(s8 *arg0) {
    s32 var_v1_2;
    s8 *var_a0;
    s8 var_v0;
    u32 temp_a2;
    u32 var_v1;

    var_a0 = arg0;
    var_v0 = *var_a0;
    var_v1 = 0;
    if (var_v0 != 0) {
        do {
            var_v1_2 = var_v0 + (var_v1 * 0x10);
            temp_a2 = var_v1_2 & 0xF0000000;
            var_a0 += 1;
            if (temp_a2 != 0) {
                var_v1_2 ^= temp_a2 >> 0x18;
            }
            var_v0 = *var_a0;
            var_v1 = var_v1_2 & ~temp_a2;
        } while (var_v0 != 0);
    }
    return var_v1;
}

s32 obj_shared(s32 *(*arg0)(?, s32 *, u32)) {
    if (obj_otype() == 2) {
        return (arg0->unk90->unk12 & 0x3000) == 0x2000;
    }
    if (obj_otype(arg0) == 3) {
        return arg0->unkE0->unk24 & 2;
    }
    return __assert("0", "obj.c", 0x636);
}

s32 obj_call_shared(s32 *(*arg0)(?, s32 *, u32)) {
    if (obj_otype() == 2) {
        return (arg0->unk90->unk12 & 0x3000) == 0x3000;
    }
    if (obj_otype(arg0) == 3) {
        return arg0->unkE0->unk24 & 4;
    }
    return __assert("0", "obj.c", 0x642);
}

s8 *obj_newstr(s8 *arg0) {
    s8 *sp24;
    s8 *temp_v0;

    temp_v0 = malloc(strlen(arg0) + 1);
    sp24 = temp_v0;
    if (temp_v0 != NULL) {
        strcpy(temp_v0, arg0);
    } else {
        fatal("obj_newstr: unable to malloc for new \n\0\0split: %s\n");
    }
    return sp24;
}

s32 split(s32 *arg1, s8 **arg2, s8 *arg3) {
    s32 *temp_s0;
    s32 *var_s0;
    s32 *var_s0_2;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 var_s1;
    s8 *temp_a0;

    var_s0 = arg1;
    var_s1 = 0;
    temp_a0 = obj_newstr();
    if (arg3 == (s8 *)1) {
        *var_s0 = 0;
        var_s0 += 4;
        var_s1 = 1;
    }
    temp_v0 = strtok(temp_a0, arg2);
    *var_s0 = temp_v0;
    temp_s0 = var_s0 + 4;
    if (temp_v0 != 0) {
        var_s1 += 1;
        temp_v0_2 = strtok(NULL, arg2);
        *temp_s0 = temp_v0_2;
        var_s0_2 = temp_s0 + 4;
        if (temp_v0_2 != 0) {
            do {
                var_s1 += 1;
                temp_v0_3 = strtok(NULL, arg2);
                *var_s0_2 = temp_v0_3;
                var_s0_2 += 4;
            } while (temp_v0_3 != 0);
        }
    }
    return var_s1;
}

? match_string_ignore_comment_and_whitespace(s8 *arg0, s8 *arg1, s8 *arg2, s8 arg3) {
    s8 **sp50;
    u32 sp4C;                                       /* compiler-managed */
    s32 sp3C;
    s32 temp_v0_5;
    s32 var_s3;
    s8 **temp_v0;
    s8 **var_s4;
    s8 *temp_v0_2;
    s8 *temp_v0_4;
    s8 *temp_v0_6;
    s8 *var_a0;
    s8 *var_a0_2;
    s8 *var_s0;
    s8 *var_s5;
    s8 temp_v1;
    s8 temp_v1_2;
    s8 temp_v1_3;
    s8 var_v1;
    s8 var_v1_2;
    u32 temp_v0_3;

    var_s5 = arg1;
    sp3C = 0;
    if (strpbrk(arg2) != arg0) {
        sp3C = 1;
    }
    temp_v0 = malloc((strlen(arg0) * 4) + 4);
    sp50 = temp_v0;
    if (temp_v0 == NULL) {
        fatal("match_string: unable to malloc for NAME list\n");
    }
    temp_v0_2 = strchr(var_s5, (s32) arg3);
    if (temp_v0_2 != NULL) {
        var_s5 = temp_v0_2 + 1;
    }
    var_v1 = *var_s5;
    if (var_v1 != 0) {
loop_7:
        if ((var_v1 == 0x20) || (var_v1 == 9)) {
            var_v1 = var_s5->unk1;
            var_s5 += 1;
            if (var_v1 != 0) {
                goto loop_7;
            }
        }
    }
    temp_v0_3 = strlen(var_s5);
    sp4C = temp_v0_3;
    temp_v1 = var_s5[temp_v0_3].unk-1;
    if ((temp_v1 == 0x20) || (temp_v1 == 9)) {
        temp_v0_4 = obj_newstr(var_s5);
        var_s5 = temp_v0_4;
        var_a0 = &temp_v0_4[sp4C] - 1;
        if ((u32) var_a0 >= (u32) temp_v0_4) {
loop_13:
            temp_v1_2 = *var_a0;
            if (temp_v1_2 != 0x20) {
                if (temp_v1_2 == 9) {
                    goto block_17;
                }
            } else {
block_17:
                var_a0 -= 1;
                var_a0->unk1 = 0;
                if ((u32) var_a0 >= (u32) var_s5) {
                    goto loop_13;
                }
            }
        }
    }
    temp_v0_5 = split((s32 *) arg0, sp50, arg2, 0);
    sp4C = temp_v0_5;
    var_s3 = 0;
    if (temp_v0_5 > 0) {
        var_s4 = sp50;
loop_20:
        var_s0 = *var_s4;
        temp_v0_6 = strchr(var_s0, (s32) arg3);
        if (temp_v0_6 != NULL) {
            var_s0 = temp_v0_6 + 1;
        }
        var_v1_2 = *var_s0;
        if (var_v1_2 != 0) {
loop_23:
            if ((var_v1_2 == 0x20) || (var_v1_2 == 9)) {
                var_v1_2 = var_s0->unk1;
                var_s0 += 1;
                if (var_v1_2 != 0) {
                    goto loop_23;
                }
            }
        }
        var_a0_2 = &var_s0[strlen(var_s0)] - 1;
        if ((u32) var_a0_2 >= (u32) var_s0) {
loop_27:
            temp_v1_3 = *var_a0_2;
            if (temp_v1_3 != 0x20) {
                if (temp_v1_3 == 9) {
                    goto block_31;
                }
            } else {
block_31:
                var_a0_2 -= 1;
                var_a0_2->unk1 = 0;
                if ((var_a0_2 + 1) != var_s0) {
                    goto loop_27;
                }
            }
        }
        if (strcmp(var_s0, var_s5) == 0) {
            if (sp3C != 0) {
                free(*sp50);
            }
            free(sp50);
            return 0;
        }
        var_s3 += 1;
        var_s4 += 4;
        if (var_s3 >= sp4C) {
            goto block_37;
        }
        goto loop_20;
    }
block_37:
    if (sp3C != 0) {
        free(*sp50);
    }
    free(sp50);
    return -1;
}

? match_string_ignore_minor(s8 *arg0, s8 *arg1, s8 *arg2, s8 arg3, s32 *(*arg4)(?, s32 *, u32), s32 arg5) {
    s8 **sp50;
    u32 sp4C;                                       /* compiler-managed */
    s32 sp3C;
    u32 sp38;
    s32 var_s3;
    s8 **temp_v0;
    s8 **var_s4;
    s8 *temp_v0_2;
    s8 *temp_v0_4;
    s8 *temp_v0_5;
    s8 *var_a0;
    s8 *var_a0_2;
    s8 *var_s0;
    s8 *var_s5;
    s8 temp_v1;
    s8 temp_v1_2;
    s8 temp_v1_3;
    s8 var_v1;
    s8 var_v1_2;
    u32 temp_v0_3;

    var_s5 = arg1;
    sp3C = 0;
    if ((obj_dynflags(arg4) == 0) || (arg5 & 4)) {
        goto block_43;
    }
    if (strpbrk(arg0, arg2) != arg0) {
        sp3C = 1;
    }
    temp_v0 = malloc((strlen(arg0) * 4) + 4);
    sp50 = temp_v0;
    if (temp_v0 == NULL) {
        fatal("match_string: unable to malloc for NAME list\n");
    }
    temp_v0_2 = strchr(var_s5, (s32) arg3);
    if (temp_v0_2 != NULL) {
        var_s5 = temp_v0_2 + 1;
    }
    var_v1 = *var_s5;
    if (var_v1 != 0) {
loop_10:
        if ((var_v1 == 0x20) || (var_v1 == 9)) {
            var_v1 = var_s5->unk1;
            var_s5 += 1;
            if (var_v1 != 0) {
                goto loop_10;
            }
        }
    }
    temp_v0_3 = strlen(var_s5);
    sp4C = temp_v0_3;
    temp_v1 = var_s5[temp_v0_3].unk-1;
    if ((temp_v1 == 0x20) || (temp_v1 == 9)) {
        temp_v0_4 = obj_newstr(var_s5);
        var_s5 = temp_v0_4;
        var_a0 = &temp_v0_4[sp4C] - 1;
        if ((u32) var_a0 >= (u32) temp_v0_4) {
loop_16:
            temp_v1_2 = *var_a0;
            if (temp_v1_2 != 0x20) {
                if (temp_v1_2 == 9) {
                    goto block_20;
                }
            } else {
block_20:
                var_a0 -= 1;
                var_a0->unk1 = 0;
                if ((u32) var_a0 >= (u32) var_s5) {
                    goto loop_16;
                }
            }
        }
    }
    sp4C = split((s32 *) arg0, sp50, arg2, 0);
    sp38 = strcspn(var_s5, ".");
    var_s3 = 0;
    if (sp4C > 0) {
        var_s4 = sp50;
loop_23:
        var_s0 = *var_s4;
        temp_v0_5 = strchr(var_s0, (s32) arg3);
        if (temp_v0_5 != NULL) {
            var_s0 = temp_v0_5 + 1;
        }
        var_v1_2 = *var_s0;
        if (var_v1_2 != 0) {
loop_26:
            if ((var_v1_2 == 0x20) || (var_v1_2 == 9)) {
                var_v1_2 = var_s0->unk1;
                var_s0 += 1;
                if (var_v1_2 != 0) {
                    goto loop_26;
                }
            }
        }
        var_a0_2 = &var_s0[strlen(var_s0)] - 1;
        if ((u32) var_a0_2 >= (u32) var_s0) {
loop_30:
            temp_v1_3 = *var_a0_2;
            if (temp_v1_3 != 0x20) {
                if (temp_v1_3 == 9) {
                    goto block_34;
                }
            } else {
block_34:
                var_a0_2 -= 1;
                var_a0_2->unk1 = 0;
                if ((var_a0_2 + 1) != var_s0) {
                    goto loop_30;
                }
            }
        }
        if (strncmp(var_s0, var_s5, sp38) == 0) {
            if (sp3C != 0) {
                free(*sp50);
            }
            free(sp50);
            return 0;
        }
        var_s3 += 1;
        var_s4 += 4;
        if (var_s3 == sp4C) {
            goto block_40;
        }
        goto loop_23;
    }
block_40:
    if (sp3C != 0) {
        free(*sp50);
    }
    free(sp50);
block_43:
    return -1;
}

? match_string(s8 *arg0, s8 *arg1, s8 *arg2) {
    s8 sp50;
    s32 temp_v0_2;
    s32 var_s1;
    s8 **temp_v0;
    s8 **var_s0;

    temp_v0 = malloc((strlen(arg0) * 4) + 4);
    if (temp_v0 == NULL) {
        fatal("match_string: unable to malloc for NAME list\n\0\0\0o->o_target_swapped = %c\n\0\0\0o->o_type = %d\n\0o->o_pfilehdr = 0x%x\n\0\0\0o->o_paouthdr = 0x%x\n\0\0\0o->o_pscnhdr = 0x%x\n\0\0\0\0o->o_phdrr = 0x%x\n\0\0o->o_praw = 0x%x\n\0\0\0o->o_name (0x%x) = %s\n\0\0o->o_pelfdhr = 0x%x\n\0\0\0\0o->o_pproghdr = 0x%x\n\0\0\0o->o_psecthdr = 0x%x\n\0\0\0o->o_path = %s\n\0o->o_soname = %s\n\0\0\0o->o_base_address = 0x%x\n\0\0\0o->o_text_start = 0x%x\n\0o->o_text_size = %d\n\0\0\0\0o->o_data_start = 0x%x\n\0o->o_bss_start = 0x%x\n\0\0o->o_bss_size = %d\n\0o->o_entry = 0x%x\n\0\0o->o_base = 0x%x\n\0\0\0o->o_hash = 0x%x\n\0\0\0o->o_str = 0x%x\n\0\0\0\0o->o_dsym = 0x%x\n\0\0\0o->o_msym = 0x%x\n\0\0\0o->o_got = 0x%x\n\0\0\0\0o->o_extgot = 0x%x\n\0o->o_rel = 0x%x\n\0\0\0\0o->o_libl = 0x%x\n\0\0\0o->o_conf = 0x%x\n\0\0\0o->o_dyflags = 0x%x\n\0\0\0\0o->o_locgotno = %d\n\0o->o_rpath = %s\n\0\0\0\0o->o_rldver = %d\n\0\0\0o->o_tstamp = %d\n\0\0\0o->o_ichksum = 0x%x\n\0\0\0\0o->o_iversion = %d\n\0o->o_symcount = %d\n\0o->o_syent = %d\n\0\0\0\0o->o_stsize = %d\n\0\0\0o->o_rlsize = %d\n\0\0\0o->o_rlent = %d\n\0\0\0\0o->o_llcount = %d\n\0\0o->o_htsize = %d\n\0\0\0o->o_cfcount = %d\n\0\0o->o_rldflag = %d\n\0\0o->o_flag = %d\n\0o->o_mode = %d\n\0o->o_init = 0x%x\n\0\0\0o->o_pixie_init = 0x%x\n\0o->o_fini = 0x%x\n\0\0\0o->o_unrefextno = %d\n\0\0\0o->o_gotsym = %d\n\0\0\0o->o_rld_map = 0x%x\n");
    }
    temp_v0_2 = split((s32 *) arg0, temp_v0, arg2, 0);
    var_s1 = 0;
    if (temp_v0_2 > 0) {
        var_s0 = temp_v0;
loop_4:
        strcpy(&sp50, *var_s0);
        if (strcmp(&sp50, arg1) == 0) {
            free(temp_v0);
            return 0;
        }
        var_s1 += 1;
        var_s0 += 4;
        if (var_s1 >= temp_v0_2) {
            goto block_7;
        }
        goto loop_4;
    }
block_7:
    free(*temp_v0);
    free(temp_v0);
    return -1;
}

u32 get_dynsym_hash_value(s32 *(*arg0)(?, s32 *, u32), u32 arg1) {
    u32 sp24;

    if (arg1 == 0) {
        return 0U;
    }
    sp24 = elfhash(obj_dynsym_name(arg0));
    if (obj_msym_exists(arg0) != 0) {
        obj_set_msym_ms_hash_value(arg0, arg1, sp24);
    }
    return sp24;
}

s16 obj_get_magic(s32 *(*arg0)(?, s32 *, u32)) {
    if (obj_otype() == 2) {
        if (obj_paouthdr(arg0) != NULL) {
            return *obj_paouthdr(arg0);
        }
        goto block_5;
    }
    if (obj_otype(arg0) == 3) {
        return 0x10B;
    }
block_5:
    return 0;
}

s32 obj_text_offset(s32 *(*arg0)(?, s32 *, u32)) {
    s32 var_a0;
    s32 var_at;

    if (obj_otype() == 2) {
        if ((*obj_paouthdr(arg0) == 0x10B) || (*obj_paouthdr(arg0) == 0x123)) {
            goto block_8;
        }
        if (obj_paouthdr(arg0)->unk2 < 0x17) {
            var_a0 = (obj_pfilehdr(arg0)->unk2 * 0x28) + 0x53;
            var_at = -8;
        } else {
            var_a0 = (obj_pfilehdr(arg0)->unk2 * 0x28) + 0x5B;
            var_at = -0x10;
        }
        return var_a0 & var_at;
    }
block_8:
    return 0;
}

void dumpobj_struct(s32 *(*arg0)(?, s32 *, u32)) {

}

s8 *elf_get_pt_interp(s32 *(*arg0)(?, s32 *, u32)) {
    void *sp20;
    s32 *temp_v0_2;
    s32 *var_a0;
    s32 var_a2;
    s8 *var_s0;
    u16 temp_a1;
    u32 var_v1;
    void *temp_v0;

    temp_v0 = arg0->unkC4;
    var_s0 = NULL;
    if ((temp_v0->unk0 == 0x7F) && (temp_v0->unk1 == 0x45) && (temp_v0->unk2 == 0x4C) && (temp_v0->unk3 == 0x46)) {
        sp20 = obj_pelfhdr();
        temp_v0_2 = obj_pproghdr(arg0);
        temp_a1 = sp20->unk2C;
        var_v1 = 0;
        var_a2 = 0;
        var_a0 = temp_v0_2;
        if (temp_a1 != 0) {
loop_6:
            var_v1 += 1;
            var_a0 += 0x20;
            if (*var_a0 == 3) {
                strcpy(B_1001A120, arg0->unkC4 + (temp_v0_2 + var_a2)->unk4);
                var_s0 = B_1001A120;
            } else {
                var_a2 += 0x20;
                if (var_v1 < temp_a1) {
                    goto loop_6;
                }
            }
        }
    }
    return var_s0;
}

u32 search_symbol_using_hash(s32 *(*arg0)(?, s32 *, u32), s8 *arg1, u32 arg2) {
    u32 temp_v0;
    u32 temp_v0_2;
    u32 var_s0;
    u32 var_v0;

    if (!(obj_dynflags() & 2)) {
        var_v0 = obj_hash_bucket(arg0, (obj_nbucket(arg0) - 1) & arg2);
    } else {
        var_v0 = obj_hash_bucket(arg0, arg2 % obj_nbucket(arg0));
    }
    var_s0 = var_v0;
    if ((obj_dynsym_hash_value(arg0, var_s0) != arg2) || (strcmp(obj_dynsym_name(arg0, var_s0), arg1) != 0)) {
        temp_v0 = obj_hash_chain(arg0, var_s0);
        var_s0 = temp_v0;
        if (temp_v0 != 0) {
loop_6:
            if ((obj_dynsym_hash_value(arg0, var_s0) != arg2) || (strcmp(obj_dynsym_name(arg0, var_s0), arg1) != 0)) {
                temp_v0_2 = obj_hash_chain(arg0, var_s0);
                var_s0 = temp_v0_2;
                if (temp_v0_2 == 0) {
                    goto block_9;
                }
                goto loop_6;
            }
            goto block_10;
        }
block_9:
        return -1U;
    }
block_10:
    return var_s0;
}

u32 obj_find_symbol_value(s32 *(*arg0)(?, s32 *, u32), s8 *arg1, s32 arg2) {
    u32 sp24;
    u32 temp_v0;
    u32 var_v0;

    temp_v0 = search_symbol_using_hash(arg0, arg1, elfhash(arg1));
    if (temp_v0 == -1U) {
        return 0U;
    }
    sp24 = temp_v0;
    if (obj_sym_shndx(arg0, temp_v0) == 0xFFF1) {
        var_v0 = obj_dynsym_value(arg0, temp_v0);
        goto block_7;
    }
    sp24 = temp_v0;
    if (temp_v0 < obj_gotsym(arg0, temp_v0)) {
        return obj_dynsym_value(arg0, temp_v0) - arg2;
    }
    var_v0 = obj_dynsym_got(arg0, temp_v0);
block_7:
    return var_v0;
}

u32 *obj_find_procedure_table(s32 *(*arg0)(?, s32 *, u32), u32 arg1, s32 *(*(*arg2)(s32 *(*)(?, s32 *, u32), u32, ?))(?, s32 *, u32)) {
    u32 *temp_v0;
    u32 temp_v0_2;
    u32 temp_v1;

    temp_v0 = malloc(8U);
    memset(temp_v0, 0, 8U);
    temp_v1 = arg0->unkFC;
    if ((arg1 < temp_v1) || ((u32) (temp_v1 + arg0->unk100) < arg1)) {
        return (u32 *)-1;
    }
    temp_v0_2 = obj_find_symbol_value(arg0, "_procedure_table", obj_map_diff(arg0));
    temp_v0->unk0 = temp_v0_2;
    if (temp_v0_2 == 0) {
        _create_rt_proc_table(arg0, temp_v0, NULL);
        if (temp_v0->unk0 == 0) {
            return NULL;
        }
    }
    temp_v0->unk4 = obj_find_symbol_value(arg0, "_procedure_table_size", 0);
    return temp_v0;
}

u32 *_create_rt_proc_table(s32 *(*arg0)(?, s32 *, u32), u32 *arg1, s32 *(*(*arg2)(s32 *(*)(?, s32 *, u32), u32, ?))(?, s32 *, u32)) {
    void *sp48;
    FILE *temp_s6;
    s32 *temp_v0_2;
    s32 *var_s2;
    s32 temp_v0;
    s32 temp_v0_3;
    s32 temp_v0_5;
    s32 var_s4;
    u16 var_v1;
    u32 temp_s0;
    u32 var_s5;
    void *temp_v0_4;

    temp_v0 = search_symbol_using_hash(arg0, "_procedure_table", elfhash("_procedure_table"));
    var_s4 = temp_v0;
    if (temp_v0 <= 0) {

    } else if (obj_dynsym_value(arg0, (u32) var_s4) != 0) {
        temp_s0 = obj_dynsym_value(arg0, (u32) var_s4);
        obj_set_dynsym_got(arg0, var_s4, temp_s0 - obj_map_diff(arg0));
        if (arg1 != NULL) {
            *arg1 = obj_dynsym_got(arg0, (u32) var_s4);
        }
    } else {
        sp48 = obj_pelfhdr(arg0);
        temp_v0_2 = obj_pproghdr(arg0);
        var_s5 = 0;
        var_v1 = sp48->unk2C;
        if (var_v1 != 0) {
            var_s2 = temp_v0_2;
            temp_s6 = __iob + 0x20;
loop_8:
            if (var_s2->unk0 == 0x70000001) {
                temp_v0_3 = open(obj_path(arg0), 0);
                if (temp_v0_3 < 0) {
                    fprintf(temp_s6, "Cannot open %s\n", obj_path(arg0));
                    exit(1);
                }
                lseek(temp_v0_3, 0, 0);
                temp_v0_4 = mmap(0, var_s2->unk10, 1, 1, temp_v0_3, var_s2->unk4);
                if (temp_v0_4 == (void *)-1) {
                    fprintf(temp_s6, "Cannot mmap the runtime proc table of %s\n", obj_path(arg0));
                    exit(1);
                }
                close(temp_v0_3);
                obj_set_dynsym_got(arg0, var_s4, temp_v0_4);
                if (arg1 != NULL) {
                    *arg1 = obj_dynsym_got(arg0, (u32) var_s4);
                }
                temp_v0_5 = search_symbol_using_hash(arg0, "_procedure_string_table", elfhash("_procedure_string_table"));
                var_s4 = temp_v0_5;
                if (temp_v0_5 <= 0) {

                } else {
                    obj_set_dynsym_got(arg0, var_s4, (obj_find_symbol_value(arg0, "_procedure_table_size", 0) * 0x28) + temp_v0_4);
                    var_v1 = sp48->unk2C;
                    goto block_18;
                }
            } else {
block_18:
                var_s5 += 1;
                var_s2 += 0x20;
                if (var_s5 < var_v1) {
                    goto loop_8;
                }
            }
        }
    }
    return (u32 *)-1;
}

s32 obj_otype(s32 *(*arg0)(?, s32 *, u32)) {
    return arg0->unk8C;
}

s16 *obj_pfilehdr(s32 *(*arg0)(?, s32 *, u32)) {
    return arg0->unk90;
}

s16 *obj_paouthdr(s32 *(*arg0)(?, s32 *, u32)) {
    return arg0->unk94;
}

s16 *obj_pscnhdr(s32 *(*arg0)(?, s32 *, u32)) {
    return arg0->unk98;
}

void *obj_phdrr(s32 *(*arg0)(?, s32 *, u32)) {
    return arg0->unk9C;
}

s32 obj_psymr(void *arg0) {
    return arg0->unkA8;
}

void *obj_pextr(void *arg0) {
    return arg0->unkAC;
}

s32 obj_symbol_base(void *arg0) {
    return arg0->unkCC;
}

s32 obj_file_base(void *arg0) {
    return arg0->unkD0;
}

s32 obj_procedure_base(void *arg0) {
    return arg0->unkD4;
}

s32 obj_type_base(void *arg0) {
    return arg0->unkC8;
}

u32 obj_base_address(s32 *(*arg0)(?, s32 *, u32)) {
    return arg0->unkF8;
}

void obj_set_base_address(s32 *(*arg0)(?, s32 *, u32), struct filehdr *arg1) {
    arg0->unkF8 = arg1;
}

s16 *obj_map_address(s32 *(*arg0)(?, s32 *, u32)) {
    return arg0->unkC4;
}

void obj_set_map_address(void *arg0, s32 arg1) {
    arg0->unkC4 = arg1;
}

s32 obj_map_diff(s32 *(*arg0)(?, s32 *, u32)) {
    u32 sp24;

    sp24 = obj_base_address();
    return sp24 - obj_map_address(arg0);
}

s32 obj_map_diff_dbx(s32 *(*arg0)(?, s32 *, u32)) {
    u32 sp20;
    s32 var_v1;

    if (arg0->unk180 != 2) {
        var_v1 = 0;
    } else {
        sp20 = obj_base_address();
        var_v1 = sp20 - obj_map_address(arg0);
    }
    return var_v1;
}

s32 obj_hash(void *arg0) {
    return arg0->unk118;
}

void obj_set_hash_address(s32 *(*arg0)(?, s32 *, u32), s32 arg1) {
    arg0->unk118 = arg1;
}

u32 obj_dynstr(s32 *(*arg0)(?, s32 *, u32)) {
    return arg0->unk11C;
}

void obj_set_dynstr_address(s32 *(*arg0)(?, s32 *, u32), s32 arg1) {
    arg0->unk11C = arg1;
}

u32 obj_dynsym(s32 *(*arg0)(?, s32 *, u32)) {
    return arg0->unk120;
}

void obj_set_dynsym_address(s32 *(*arg0)(?, s32 *, u32), s32 arg1) {
    arg0->unk120 = arg1;
}

s32 obj_msym(void *arg0) {
    return arg0->unk124;
}

void obj_set_msym_address(s32 *(*arg0)(?, s32 *, u32), s32 arg1) {
    arg0->unk124 = arg1;
}

u32 obj_got(s32 *(*arg0)(?, s32 *, u32)) {
    return arg0->unk128;
}

void obj_set_got_address(s32 *(*arg0)(?, s32 *, u32), s32 arg1) {
    arg0->unk128 = arg1;
}

u32 obj_dynrel(s32 *(*arg0)(?, s32 *, u32)) {
    return arg0->unk130;
}

void obj_set_dynrel_address(s32 *(*arg0)(?, s32 *, u32), s32 arg1) {
    arg0->unk130 = arg1;
}

s32 obj_liblist(s32 *(*arg0)(?, s32 *, u32)) {
    return arg0->unk134;
}

void *obj_create_liblist_entry(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    void *temp_v0;

    temp_v0 = malloc(0x14U);
    if (temp_v0 == NULL) {
        return NULL;
    }
    temp_v0->unk0 = arg0;
    temp_v0->unk4 = arg1;
    temp_v0->unk8 = arg2;
    temp_v0->unkC = arg3;
    temp_v0->unk10 = arg4;
    return temp_v0;
}

void obj_set_liblist_address(s32 *(*arg0)(?, s32 *, u32), s32 arg1) {
    arg0->unk134 = arg1;
}

s32 obj_conflict(void *arg0) {
    return arg0->unk138;
}

void obj_set_conflict_address(s32 *(*arg0)(?, s32 *, u32), s32 arg1) {
    arg0->unk138 = arg1;
}

u32 obj_locgotcount(s32 *(*arg0)(?, s32 *, u32)) {
    return arg0->unk140;
}

void obj_set_locgotcount(s32 *(*arg0)(?, s32 *, u32), struct filehdr *arg1) {
    arg0->unk140 = arg1;
}

u32 obj_unrefextno(s32 *(*arg0)(?, s32 *, u32)) {
    return arg0->unk18C;
}

void obj_set_unrefextno(s32 *(*arg0)(?, s32 *, u32), struct filehdr *arg1) {
    arg0->unk18C = arg1;
}

u32 obj_gotsym(s32 *(*arg0)(?, s32 *, u32)) {
    return arg0->unk190;
}

void obj_set_gotsym(s32 *(*arg0)(?, s32 *, u32), struct filehdr *arg1) {
    arg0->unk190 = arg1;
}

u32 obj_timestamp(s32 *(*arg0)(?, s32 *, u32)) {
    return arg0->unk14C;
}

void obj_set_timestamp(s32 *(*arg0)(?, s32 *, u32), struct filehdr *arg1) {
    arg0->unk14C = arg1;
}

u32 obj_ichecksum(s32 *(*arg0)(?, s32 *, u32)) {
    return arg0->unk150;
}

void obj_set_ichecksum(s32 *(*arg0)(?, s32 *, u32), struct filehdr *arg1) {
    arg0->unk150 = arg1;
}

s32 obj_iversion(void *arg0) {
    return arg0->unk154;
}

void obj_set_iversion(s32 *(*arg0)(?, s32 *, u32), struct filehdr *arg1) {
    arg0->unk154 = arg1;
}

u32 obj_dynflags(s32 *(*arg0)(?, s32 *, u32)) {
    return arg0->unk13C;
}

void obj_set_dynflags(s32 *(*arg0)(?, s32 *, u32), struct filehdr *arg1) {
    arg0->unk13C = arg1;
}

u32 obj_dynrelsz(s32 *(*arg0)(?, s32 *, u32)) {
    return arg0->unk164;
}

void obj_set_dynrelsz(s32 *(*arg0)(?, s32 *, u32), struct filehdr *arg1) {
    arg0->unk164 = arg1;
}

u32 obj_dynrelent(s32 *(*arg0)(?, s32 *, u32)) {
    return arg0->unk168;
}

void obj_set_dynrelent(s32 *(*arg0)(?, s32 *, u32), struct filehdr *arg1) {
    arg0->unk168 = arg1;
}

u32 obj_dynsymcount(s32 *(*arg0)(?, s32 *, u32)) {
    return arg0->unk158;
}

void obj_set_dynsymcount(s32 *(*arg0)(?, s32 *, u32), struct filehdr *arg1) {
    arg0->unk158 = arg1;
}

s32 obj_dynsyment(void *arg0) {
    return arg0->unk15C;
}

void obj_set_dynsyment(s32 *(*arg0)(?, s32 *, u32), struct filehdr *arg1) {
    arg0->unk15C = arg1;
}

u32 obj_dynstrsz(s32 *(*arg0)(?, s32 *, u32)) {
    return arg0->unk160;
}

void obj_set_dynstrsz(s32 *(*arg0)(?, s32 *, u32), struct filehdr *arg1) {
    arg0->unk160 = arg1;
}

u32 obj_liblistcount(s32 *(*arg0)(?, s32 *, u32)) {
    return arg0->unk16C;
}

void obj_set_liblistcount(s32 *(*arg0)(?, s32 *, u32), struct filehdr *arg1) {
    arg0->unk16C = arg1;
}

u32 obj_conflictcount(s32 *(*arg0)(?, s32 *, u32)) {
    return arg0->unk174;
}

void obj_set_conflictcount(s32 *(*arg0)(?, s32 *, u32), struct filehdr *arg1) {
    arg0->unk174 = arg1;
}

s32 obj_extgot(void *arg0) {
    return arg0->unk12C;
}

void obj_set_extgot(s32 *(*arg0)(?, s32 *, u32), s32 arg1) {
    arg0->unk12C = arg1;
}

s32 obj_rpath(s32 *(*arg0)(?, s32 *, u32)) {
    return arg0->unk144;
}

void obj_set_rpath(s32 *(*arg0)(?, s32 *, u32), s32 arg1) {
    arg0->unk144 = arg1;
}

s32 obj_soname(s32 *(*arg0)(?, s32 *, u32)) {
    return arg0->unkF0;
}

void obj_set_soname(s32 *(*arg0)(?, s32 *, u32), s32 arg1) {
    arg0->unkF0 = arg1;
}

u32 obj_rldversion(s32 *(*arg0)(?, s32 *, u32)) {
    return arg0->unk148;
}

s32 obj_rldversion_string(void *arg0) {
    u32 temp_v1;

    temp_v1 = arg0->unk148;
    if ((u32) arg0->unk160 < temp_v1) {
        return arg0->unk11C;
    }
    return arg0->unk11C + temp_v1;
}

void obj_set_rldversion(s32 *(*arg0)(?, s32 *, u32), struct filehdr *arg1) {
    arg0->unk148 = arg1;
}

u32 obj_text_start(s32 *(*arg0)(?, s32 *, u32)) {
    return arg0->unkFC;
}

void obj_set_text_start(void *arg0, s32 arg1) {
    arg0->unkFC = arg1;
}

u32 obj_text_size(s32 *(*arg0)(?, s32 *, u32)) {
    return arg0->unk100;
}

void obj_set_text_size(s32 *(*arg0)(?, s32 *, u32), s32 arg1) {
    arg0->unk100 = arg1;
}

u32 obj_data_start(s32 *(*arg0)(?, s32 *, u32)) {
    return arg0->unk104;
}

void obj_set_data_start(void *arg0, s32 arg1) {
    arg0->unk104 = arg1;
}

u32 obj_bss_start(s32 *(*arg0)(?, s32 *, u32)) {
    return arg0->unk108;
}

void obj_set_bss_start(void *arg0, s32 arg1) {
    arg0->unk108 = arg1;
}

u32 obj_data_size(s32 *(*arg0)(?, s32 *, u32)) {
    u32 sp24;

    sp24 = obj_bss_start();
    return sp24 - obj_data_start(arg0);
}

s32 obj_bss_size(s32 *(*arg0)(?, s32 *, u32)) {
    return arg0->unk10C;
}

void obj_set_bss_size(s32 *(*arg0)(?, s32 *, u32), s32 arg1) {
    arg0->unk10C = arg1;
}

s8 *obj_name(s32 *(*arg0)(?, s32 *, u32)) {
    return arg0->unkDC;
}

void obj_set_name(s32 *(*arg0)(?, s32 *, u32), s8 *arg1) {
    arg0->unkDC = arg1;
}

s8 *obj_path(s32 *(*arg0)(?, s32 *, u32)) {
    return arg0->unkEC;
}

void obj_set_path(void *arg0, s32 arg1) {
    arg0->unkEC = arg1;
}

u32 obj_init_address(s32 *(*arg0)(?, s32 *, u32)) {
    return arg0->unk184;
}

void obj_set_init_address(s32 *(*arg0)(?, s32 *, u32), s32 arg1) {
    arg0->unk184 = arg1;
}

s32 obj_pixie_init_address(void *arg0) {
    return arg0->unk1D0;
}

void obj_set_pixie_init_address(s32 *(*arg0)(?, s32 *, u32), s32 arg1) {
    arg0->unk1D0 = arg1;
}

u32 obj_fini_address(s32 *(*arg0)(?, s32 *, u32)) {
    return arg0->unk188;
}

void obj_set_fini_address(s32 *(*arg0)(?, s32 *, u32), s32 arg1) {
    arg0->unk188 = arg1;
}

s32 obj_entry_address(s32 *(*arg0)(?, s32 *, u32)) {
    return arg0->unk110;
}

void obj_set_entry_address(void *arg0, s32 arg1) {
    arg0->unk110 = arg1;
}

s32 obj_rldflags(void *arg0) {
    return arg0->unk178;
}

void obj_set_rldflag(s32 *(*arg0)(?, s32 *, u32), s32 arg1) {
    arg0->unk178 = (s32) (arg0->unk178 | arg1);
}

void obj_unset_rldflag(s32 *(*arg0)(?, s32 *, u32), ? arg1) {
    arg0->unk178 = (s32) (arg0->unk178 & ~arg1);
}

s32 obj_is_mapped(void *arg0) {
    return arg0->unk178 & 1;
}

s32 obj_was_modified(void *arg0) {
    return arg0->unk178 & 2;
}

s32 obj_chksum_changed(void *arg0) {
    return arg0->unk178 & 8;
}

s32 obj_was_moved(void *arg0) {
    return arg0->unk178 & 0x10;
}

s32 obj_followed_csc(void *arg0) {
    return arg0->unk178 & 0x40;
}

s32 obj_is_symbolic(void *arg0) {
    return arg0->unk178 & 0x200;
}

s32 obj_committed(void *arg0) {
    return arg0->unk178 & 0x8000;
}

void obj_set_cxx_flags(s32 *(*arg0)(?, s32 *, u32), s32 arg1) {
    arg0->unk1C8 = (s32) (arg0->unk1C8 | arg1);
}

void obj_unset_cxx_flags(void *arg0, ? arg1) {
    arg0->unk1C8 = (s32) (arg0->unk1C8 & ~arg1);
}

s32 obj_cxx_flags(void *arg0) {
    return arg0->unk1C8;
}

s32 obj_is_delta_object(void *arg0) {
    return arg0->unk1C8 & 1;
}

s32 obj_delta_fixup(void *arg0) {
    return arg0->unk1C8 & 2;
}

s32 obj_delta_read_defns(void *arg0) {
    return arg0->unk1C8 & 4;
}

u32 obj_get_delta_version(void *arg0) {
    return (u32) (arg0->unk1C8 & 0xF0000000) >> 0x1C;
}

s32 obj_start_init(void *arg0) {
    return arg0->unk178 & 0x1000;
}

s32 obj_init_done(void *arg0) {
    return arg0->unk178 & 0x2000;
}

s32 obj_pixie_init_done(void *arg0) {
    return arg0->unk178 & 0x20000;
}

void obj_set_pixie_init_done(void *arg0) {
    arg0->unk178 = (s32) (arg0->unk178 | 0x20000);
}

void obj_set_start_init(void *arg0) {
    arg0->unk178 = (s32) (arg0->unk178 | 0x1000);
}

void obj_set_init_done(void *arg0) {
    arg0->unk178 = (s32) (arg0->unk178 | 0x2000);
}

s32 obj_dynstrtab(void *arg0) {
    return arg0->unk11C;
}

s32 obj_dynstring(s32 *(*arg1)(?, s32 *, u32)) {
    return obj_dynstrtab() + arg1;
}

void obj_set_dynstrtab(void *arg0, s32 arg1) {
    arg0->unk11C = arg1;
}

s32 obj_conflict_foreign(void) {
    return (obj_conflictcount() + 1) == 0;
}

s32 obj_liblist_foreign(void) {
    return (obj_liblistcount() + 1) == 0;
}

u32 obj_dynsym_value(s32 *(*arg0)(?, s32 *, u32), u32 arg1) {
    return (arg0->unk120 + (arg1 * 0x10))->unk4;
}

void obj_set_dynsym_value(void *arg0, s32 arg1, s32 arg2) {
    (arg0->unk120 + (arg1 * 0x10))->unk4 = arg2;
}

u8 obj_sym_other(void *arg0, s32 arg1) {
    return (arg0->unk120 + (arg1 * 0x10))->unkD;
}

s32 obj_dynsym_size(void *arg0, s32 arg1) {
    return (arg0->unk120 + (arg1 * 0x10))->unk8;
}

void obj_set_dynsym_size(void *arg0, s32 arg1, s32 arg2) {
    (arg0->unk120 + (arg1 * 0x10))->unk8 = arg2;
}

u16 obj_sym_shndx(s32 *(*arg0)(?, s32 *, u32), u32 arg1) {
    return (arg0->unk120 + (arg1 * 0x10))->unkE;
}

void obj_dynsym_name(s32 *(*arg0)(?, s32 *, u32), u32 arg1) {
    obj_dynstring(*(arg0->unk120 + (arg1 * 0x10)));
}

u8 obj_sym_info(void *arg0, s32 arg1) {
    return (arg0->unk120 + (arg1 * 0x10))->unkC;
}

s32 obj_msym_exists(s32 *(*arg0)(?, s32 *, u32)) {
    return arg0->unk124 != 0;
}

s32 obj_msym_not_exists(void *arg0) {
    return arg0->unk124 == 0;
}

u32 obj_dynsym_hash_value(s32 *(*arg0)(?, s32 *, u32), u32 arg1) {
    u32 temp_v1;

    if (obj_msym_exists() != 0) {
        temp_v1 = *(arg0->unk124 + (arg1 * 8));
        if (temp_v1 != 0) {
            return temp_v1;
        }
    }
    return get_dynsym_hash_value(arg0, arg1);
}

u32 obj_nbucket(s32 *(*arg0)(?, s32 *, u32)) {
    return *arg0->unk118;
}

s32 obj_nchain(void *arg0) {
    return arg0->unk118->unk4;
}

u32 obj_hash_bucket(s32 *(*arg0)(?, s32 *, u32), u32 arg1) {
    return (arg0->unk118 + (arg1 * 4))->unk8;
}

u32 obj_hash_chain(s32 *(*arg0)(?, s32 *, u32), u32 arg1) {
    return (arg0->unk118 + (obj_nbucket() * 4) + (arg1 * 4))->unk8;
}

u32 obj_dynsym_got(s32 *(*arg0)(?, s32 *, u32), u32 arg1) {
    if (arg1 < obj_gotsym()) {
        return obj_dynsym_value(arg0, arg1);
    }
    return *(arg0->unk12C + (arg1 * 4) + -(obj_gotsym(arg0, arg1) * 4));
}

void obj_set_dynsym_got(s32 *(*arg0)(?, s32 *, u32), u32 arg1, void *arg2) {
    if (arg1 >= obj_gotsym()) {
        *(arg0->unk12C + (arg1 * 4) + -(obj_gotsym(arg0) * 4)) = arg2;
    }
}

s32 obj_locgot(void *arg0, s32 arg1) {
    return *(arg0->unk128 + (arg1 * 4));
}

void obj_set_local_got(void *arg0, s32 arg1, s32 arg2) {
    *(arg0->unk128 + (arg1 * 4)) = arg2;
}

u32 obj_dynsym_rel_index(void *arg0, s32 arg1) {
    return (u32) (arg0->unk124 + (arg1 * 8))->unk4 >> 8;
}

s32 obj_msym_ms_info(void *arg0, s32 arg1) {
    return (arg0->unk124 + (arg1 * 8))->unk4;
}

void obj_set_msym_ms_info(void *arg0, s32 arg1, s32 arg2) {
    (arg0->unk124 + (arg1 * 8))->unk4 = arg2;
}

s32 obj_msym_ms_hash_value(void *arg0, s32 arg1) {
    return *(arg0->unk124 + (arg1 * 8));
}

void obj_set_msym_ms_hash_value(s32 *(*arg0)(?, s32 *, u32), u32 arg1, u32 arg2) {
    *(arg0->unk124 + (arg1 * 8)) = arg2;
}

s32 obj_rel_off(void *arg0, s32 arg1) {
    return *(arg0->unk130 + (arg1 * 8));
}

s32 obj_rel_info(void *arg0, s32 arg1) {
    return (arg0->unk130 + (arg1 * 8))->unk4;
}

s32 obj_conflict_symbol(void *arg0, s32 arg1) {
    return *(arg0->unk138 + (arg1 * 4));
}

void obj_liblist_name(s32 *(*arg0)(?, s32 *, u32), s32 arg1) {
    obj_dynstring(arg0, *(obj_liblist() + (arg1 * 0x14)));
}

s32 obj_liblist_tstamp(void *arg0, s32 arg1) {
    return (arg0->unk134 + (arg1 * 0x14))->unk4;
}

s32 obj_liblist_csum(void *arg0, s32 arg1) {
    return (arg0->unk134 + (arg1 * 0x14))->unk8;
}

s8 *obj_liblist_version_str(void *arg0, s32 arg1) {
    return (arg0->unk134 + (arg1 * 0x14))->unkC + arg0->unk11C;
}

s32 obj_liblist_version(void *arg0, s32 arg1) {
    return (arg0->unk134 + (arg1 * 0x14))->unkC;
}

s32 obj_liblist_flags(void *arg0, s32 arg1) {
    return (arg0->unk134 + (arg1 * 0x14))->unk10;
}

s8 *obj_interface_version(void *arg0) {
    return arg0->unk11C + arg0->unk154;
}

void obj_interface_not_match(void *arg0, void *arg1, s32 arg2) {
    s8 *sp20;

    sp20 = obj_liblist_version_str(arg1, arg2);
    strcmp(sp20, obj_interface_version(arg0));
}

s32 obj_checksum_not_match(void *arg0, void *arg1, s32 arg2) {
    return obj_liblist_csum(arg1, arg2) != arg0->unk150;
}

void obj_name_not_match(void *arg0, s32 *(*arg1)(?, s32 *, u32), s32 arg2) {
    strcmp(obj_liblist_name(arg1, arg2), arg0->unkF0);
}

s32 obj_tstamp_not_match(void *arg0, void *arg1, s32 arg2) {
    return obj_liblist_tstamp(arg1, arg2) != arg0->unk14C;
}

void obj_different_name(void *arg0, void *arg1) {
    strcmp(arg0->unkF0, arg1->unkF0);
}

void *obj_pelfhdr(s32 *(*arg0)(?, s32 *, u32)) {
    return arg0->unkE0;
}

s32 *obj_pproghdr(s32 *(*arg0)(?, s32 *, u32)) {
    return arg0->unkE4;
}

void *obj_psecthdr(s32 *(*arg0)(?, s32 *, u32)) {
    return arg0->unkE8;
}

s32 *obj_section(s32 *arg0, s32 *(*arg1)(?, s32 *, u32), s32 arg2) {
    M2C_MEMCPY_ALIGNED(arg0, obj_psecthdr(arg1) + (arg2 * 0x28), 0x28);
    return arg0;
}

u16 obj_shstrndx(void) {
    return obj_pelfhdr()->unk32;
}

s8 *obj_section_index_name(s32 *(*arg0)(?, s32 *, u32), s32 arg1) {
    s32 sp4C;
    s32 sp24;
    s8 *var_v1;

    if (obj_shstrndx() != 0) {
        obj_section(&sp24, arg0, obj_shstrndx(arg0));
        obj_section(&sp4C, arg0, arg1);
        var_v1 = sp4C + arg0->unkC4 + sp34;
    } else {
        var_v1 = "N/A";
    }
    return var_v1;
}

void *obj_section_bits(s32 *(*arg0)(?, s32 *, u32), s32 *arg1) {
    return arg0->unkC4 + arg1->unk10;
}

s32 obj_section_index_bits(s32 *(*arg0)(?, s32 *, u32), s32 arg1) {
    s32 sp20;

    obj_section(&sp20, arg0, arg1);
    return sp30 + arg0->unkC4;
}

s32 obj_section_vaddr(void *arg0, void *arg1) {
    s32 temp_v0;

    temp_v0 = arg0->unk8C;
    if (temp_v0 == 2) {
        return arg1->unkC;
    }
    if (temp_v0 == 3) {
        return arg1->unkC;
    }
    return 0;
}

s32 obj_section_size(s32 *(*arg0)(?, s32 *, u32), s32 *arg1) {
    s32 temp_v0;

    temp_v0 = arg0->unk8C;
    if (temp_v0 == 2) {
        return arg1->unk10;
    }
    if (temp_v0 == 3) {
        return arg1->unk14;
    }
    return 0;
}

s32 obj_section_offset(void *arg0, void *arg1) {
    s32 temp_v0;

    temp_v0 = arg0->unk8C;
    if (temp_v0 == 2) {
        return arg1->unk14;
    }
    if (temp_v0 == 3) {
        return arg1->unk10;
    }
    return 0;
}

s32 *obj_section_name(s32 *(*arg0)(?, s32 *, u32), s32 *arg1) {
    s32 sp28;
    s32 temp_v0;

    temp_v0 = arg0->unk8C;
    if (temp_v0 == 2) {
        return arg1;
    }
    if (temp_v0 == 3) {
        obj_section(&sp28, arg0, obj_shstrndx());
        return sp38 + arg0->unkC4 + *arg1;
    }
    return NULL;
}

s32 *(*(**obj_rld_map(s32 *(*arg0)(?, s32 *, u32)))(s32 *(*)(?, s32 *, u32), u32, ?))(?, s32 *, u32) {
    return arg0->unk194;
}

void obj_set_rld_map(s32 *(*arg0)(?, s32 *, u32), s32 arg1) {
    arg0->unk194 = arg1;
}

s32 obj_fd(void *arg0) {
    return arg0->unkF4;
}

void obj_set_fd(void *arg0, s32 arg1) {
    arg0->unkF4 = arg1;
}

s32 hdr_symptr(s32 *(*arg0)(?, s32 *, u32)) {
    return arg0->unk90->unk8;
}

s32 procedure_lnlow(void *arg0, s32 arg1) {
    return (arg0->unkA4 + (arg1 * 0x34) + -(arg0->unkD4 * 0x34))->unk28;
}

s32 procedure_lnhigh(void *arg0, s32 arg1) {
    return (arg0->unkA4 + ((arg1 - arg0->unkD4) * 0x34))->unk2C;
}

s8 obj_arch(void *arg0) {
    return arg0->unk1;
}

s32 obj_delta_class(void *arg0) {
    return arg0->unk1A0;
}

void obj_set_delta_class(s32 *(*arg0)(?, s32 *, u32), s32 arg1) {
    arg0->unk1A0 = arg1;
}

s32 obj_delta_class_no(void *arg0) {
    return arg0->unk1A4;
}

void obj_set_delta_class_no(s32 *(*arg0)(?, s32 *, u32), struct filehdr *arg1) {
    arg0->unk1A4 = arg1;
}

s32 obj_delta_instance(void *arg0) {
    return arg0->unk1A8;
}

void obj_set_delta_instance(s32 *(*arg0)(?, s32 *, u32), s32 arg1) {
    arg0->unk1A8 = arg1;
}

s32 obj_delta_instance_no(void *arg0) {
    return arg0->unk1AC;
}

void obj_set_delta_instance_no(s32 *(*arg0)(?, s32 *, u32), struct filehdr *arg1) {
    arg0->unk1AC = arg1;
}

s32 obj_delta_reloc(void *arg0) {
    return arg0->unk1B0;
}

void obj_set_delta_reloc(s32 *(*arg0)(?, s32 *, u32), s32 arg1) {
    arg0->unk1B0 = arg1;
}

s32 obj_delta_reloc_no(void *arg0) {
    return arg0->unk1B4;
}

void obj_set_delta_reloc_no(s32 *(*arg0)(?, s32 *, u32), struct filehdr *arg1) {
    arg0->unk1B4 = arg1;
}

s32 obj_delta_rel_off(void *arg0, s32 arg1) {
    return *(arg0->unk1B0 + (arg1 * 8));
}

s32 obj_delta_rel_info(void *arg0, s32 arg1) {
    return (arg0->unk1B0 + (arg1 * 8))->unk4;
}

s32 obj_delta_sym(void *arg0) {
    return arg0->unk1B8;
}

void obj_set_delta_sym(s32 *(*arg0)(?, s32 *, u32), s32 arg1) {
    arg0->unk1B8 = arg1;
}

s32 obj_delta_sym_no(void *arg0) {
    return arg0->unk1BC;
}

void obj_set_delta_sym_no(s32 *(*arg0)(?, s32 *, u32), struct filehdr *arg1) {
    arg0->unk1BC = arg1;
}

s32 obj_delta_classsym(void *arg0) {
    return arg0->unk1C0;
}

void obj_set_delta_classsym(s32 *(*arg0)(?, s32 *, u32), s32 arg1) {
    arg0->unk1C0 = arg1;
}

s32 obj_delta_classsym_no(void *arg0) {
    return arg0->unk1C4;
}

void obj_set_delta_classsym_no(s32 *(*arg0)(?, s32 *, u32), struct filehdr *arg1) {
    arg0->unk1C4 = arg1;
}

void obj_set_symlib(s32 *(*arg0)(?, s32 *, u32), s32 arg1) {
    arg0->unk1D4 = arg1;
}

u16 obj_symlib_num(void *arg0, s32 arg1) {
    s32 temp_v1;

    temp_v1 = arg0->unk1D4;
    if (temp_v1 == 0) {
        return 0U;
    }
    if (arg0->unk16C >= 0xFF) {
        return *(temp_v1 + (arg1 * 2));
    }
    return (u16) *(temp_v1 + arg1);
}

s32 obj_rld_text_resolve_addr(void *arg0) {
    return arg0->unk1D8;
}

void obj_set_rld_text_resolve_addr(s32 *(*arg0)(?, s32 *, u32), struct filehdr *arg1) {
    arg0->unk1D8 = arg1;
}

void warning(s8 *arg0, s32 arg1, s32 arg2, s32 arg3) {
    fprintf(__iob + 0x20, "Warning: ");
    fprintf(__iob + 0x20, arg0, arg1, arg2, arg3);
}

void swap_filehdr(struct filehdr *arg0, s32 arg1) {
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a3;
    u16 temp_t8;
    u16 temp_v0;
    u16 temp_v0_2;
    u16 temp_v1;

    temp_v0 = arg0->unk0;
    temp_a1 = arg0->unk4;
    temp_v1 = arg0->unk2;
    temp_a2 = arg0->unk8;
    arg0->unk0 = (u16) ((temp_v0 << 8) | (temp_v0 >> 8));
    temp_a3 = arg0->unkC;
    arg0->unk2 = (u16) ((temp_v1 << 8) | (temp_v1 >> 8));
    arg0->unk4 = (s32) ((temp_a1 << 0x18) | ((temp_a1 << 8) & 0xFF0000) | ((temp_a1 >> 8) & 0xFF00) | ((u32) temp_a1 >> 0x18));
    temp_v0_2 = arg0->unk10;
    temp_t8 = arg0->unk12;
    arg0->unk8 = (s32) ((temp_a2 << 0x18) | ((temp_a2 << 8) & 0xFF0000) | ((temp_a2 >> 8) & 0xFF00) | ((u32) temp_a2 >> 0x18));
    arg0->unkC = (s32) ((temp_a3 << 0x18) | ((temp_a3 << 8) & 0xFF0000) | ((temp_a3 >> 8) & 0xFF00) | ((u32) temp_a3 >> 0x18));
    arg0->unk10 = (u16) (((temp_v0_2 & 0xFF) << 8) | (temp_v0_2 >> 8));
    arg0->unk12 = (u16) ((temp_t8 << 8) | (temp_t8 >> 8));
}

void swap_aouthdr(struct aouthdr *arg0, s32 arg1) {
    s16 temp_v0;
    s16 temp_v1;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a3;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 temp_v1_4;

    temp_v0 = arg0->unk0;
    temp_v1 = arg0->unk2;
    temp_a1 = arg0->unk4;
    temp_a2 = arg0->unk8;
    arg0->unk0 = (s16) ((temp_v0 << 8) | ((u32) (temp_v0 & 0xFFFF) >> 8));
    arg0->unk2 = (s16) ((temp_v1 << 8) | ((u32) (temp_v1 & 0xFFFF) >> 8));
    temp_a3 = arg0->unkC;
    arg0->unk4 = (s32) ((temp_a1 << 0x18) | ((temp_a1 << 8) & 0xFF0000) | ((temp_a1 >> 8) & 0xFF00) | ((u32) temp_a1 >> 0x18));
    temp_v0_2 = arg0->unk10;
    arg0->unk8 = (s32) ((temp_a2 << 0x18) | ((temp_a2 << 8) & 0xFF0000) | ((temp_a2 >> 8) & 0xFF00) | ((u32) temp_a2 >> 0x18));
    temp_v1_2 = arg0->unk14;
    arg0->unkC = (s32) ((temp_a3 << 0x18) | ((temp_a3 << 8) & 0xFF0000) | ((temp_a3 >> 8) & 0xFF00) | ((u32) temp_a3 >> 0x18));
    temp_a1_2 = arg0->unk18;
    arg0->unk10 = (s32) ((temp_v0_2 << 0x18) | ((temp_v0_2 << 8) & 0xFF0000) | ((temp_v0_2 >> 8) & 0xFF00) | ((u32) temp_v0_2 >> 0x18));
    temp_a2_2 = arg0->unk1C;
    arg0->unk14 = (s32) ((temp_v1_2 << 0x18) | ((temp_v1_2 << 8) & 0xFF0000) | ((temp_v1_2 >> 8) & 0xFF00) | ((u32) temp_v1_2 >> 0x18));
    temp_v0_3 = arg0->unk20;
    arg0->unk18 = (s32) ((temp_a1_2 << 0x18) | ((temp_a1_2 << 8) & 0xFF0000) | ((temp_a1_2 >> 8) & 0xFF00) | ((u32) temp_a1_2 >> 0x18));
    temp_v1_3 = arg0->unk24;
    arg0->unk1C = (s32) ((temp_a2_2 << 0x18) | ((temp_a2_2 << 8) & 0xFF0000) | ((temp_a2_2 >> 8) & 0xFF00) | ((u32) temp_a2_2 >> 0x18));
    temp_a1_3 = arg0->unk28;
    arg0->unk20 = (s32) ((temp_v0_3 << 0x18) | ((temp_v0_3 << 8) & 0xFF0000) | ((temp_v0_3 >> 8) & 0xFF00) | ((u32) temp_v0_3 >> 0x18));
    temp_a2_3 = arg0->unk2C;
    arg0->unk24 = (s32) (((u32) temp_v1_3 >> 0x18) | ((temp_v1_3 << 0x18) | ((temp_v1_3 << 8) & 0xFF0000) | ((temp_v1_3 >> 8) & 0xFF00)));
    temp_v0_4 = arg0->unk30;
    arg0->unk28 = (s32) (((u32) temp_a1_3 >> 0x18) | ((temp_a1_3 << 0x18) | ((temp_a1_3 << 8) & 0xFF0000) | ((temp_a1_3 >> 8) & 0xFF00)));
    temp_v1_4 = arg0->unk34;
    arg0->unk2C = (s32) (((u32) temp_a2_3 >> 0x18) | ((temp_a2_3 << 0x18) | ((temp_a2_3 << 8) & 0xFF0000) | ((temp_a2_3 >> 8) & 0xFF00)));
    arg0->unk30 = (s32) (((u32) temp_v0_4 >> 0x18) | ((temp_v0_4 << 0x18) | ((temp_v0_4 << 8) & 0xFF0000) | ((temp_v0_4 >> 8) & 0xFF00)));
    arg0->unk34 = (s32) ((temp_v1_4 << 0x18) | ((temp_v1_4 << 8) & 0xFF0000) | ((temp_v1_4 >> 8) & 0xFF00) | ((u32) temp_v1_4 >> 0x18));
}

void swap_scnhdr(struct scnhdr *arg0, s32 arg1) {
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v1;
    s32 temp_v1_2;
    u16 temp_a1_2;
    u16 temp_a2_2;

    temp_v0 = arg0->unk8;
    temp_v1 = arg0->unkC;
    temp_a1 = arg0->unk10;
    arg0->unk8 = (s32) ((temp_v0 << 0x18) | ((temp_v0 << 8) & 0xFF0000) | ((temp_v0 >> 8) & 0xFF00) | ((u32) temp_v0 >> 0x18));
    temp_a2 = arg0->unk14;
    arg0->unkC = (s32) ((temp_v1 << 0x18) | ((temp_v1 << 8) & 0xFF0000) | ((temp_v1 >> 8) & 0xFF00) | ((u32) temp_v1 >> 0x18));
    temp_v0_2 = arg0->unk18;
    arg0->unk10 = (s32) ((temp_a1 << 0x18) | ((temp_a1 << 8) & 0xFF0000) | ((temp_a1 >> 8) & 0xFF00) | ((u32) temp_a1 >> 0x18));
    temp_v1_2 = arg0->unk1C;
    arg0->unk14 = (s32) ((temp_a2 << 0x18) | ((temp_a2 << 8) & 0xFF0000) | ((temp_a2 >> 8) & 0xFF00) | ((u32) temp_a2 >> 0x18));
    temp_a1_2 = arg0->unk20;
    temp_a2_2 = arg0->unk22;
    temp_a3 = arg0->unk24;
    arg0->unk18 = (s32) ((temp_v0_2 << 0x18) | ((temp_v0_2 << 8) & 0xFF0000) | ((temp_v0_2 >> 8) & 0xFF00) | ((u32) temp_v0_2 >> 0x18));
    arg0->unk1C = (s32) ((temp_v1_2 << 0x18) | ((temp_v1_2 << 8) & 0xFF0000) | ((temp_v1_2 >> 8) & 0xFF00) | ((u32) temp_v1_2 >> 0x18));
    arg0->unk20 = (u16) ((temp_a1_2 << 8) | (temp_a1_2 >> 8));
    arg0->unk22 = (u16) ((temp_a2_2 << 8) | (temp_a2_2 >> 8));
    arg0->unk24 = (s32) ((temp_a3 << 0x18) | ((temp_a3 << 8) & 0xFF0000) | ((temp_a3 >> 8) & 0xFF00) | ((u32) temp_a3 >> 0x18));
}

void swap_libscn(void *arg0, ? arg1) {
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v1;
    s32 temp_v1_2;

    temp_v0 = arg0->unk0;
    temp_v1 = arg0->unk4;
    temp_a1 = arg0->unk8;
    temp_a2 = arg0->unkC;
    arg0->unk0 = (s32) ((temp_v0 << 0x18) | ((temp_v0 << 8) & 0xFF0000) | ((temp_v0 >> 8) & 0xFF00) | ((u32) temp_v0 >> 0x18));
    temp_v0_2 = arg0->unk10;
    arg0->unk4 = (s32) ((temp_v1 << 0x18) | ((temp_v1 << 8) & 0xFF0000) | ((temp_v1 >> 8) & 0xFF00) | ((u32) temp_v1 >> 0x18));
    temp_v1_2 = arg0->unk14;
    arg0->unk8 = (s32) ((temp_a1 << 0x18) | ((temp_a1 << 8) & 0xFF0000) | ((temp_a1 >> 8) & 0xFF00) | ((u32) temp_a1 >> 0x18));
    temp_a1_2 = arg0->unk18;
    arg0->unkC = (s32) ((temp_a2 << 0x18) | ((temp_a2 << 8) & 0xFF0000) | ((temp_a2 >> 8) & 0xFF00) | ((u32) temp_a2 >> 0x18));
    temp_a2_2 = arg0->unk1C;
    arg0->unk10 = (s32) ((temp_v0_2 << 0x18) | ((temp_v0_2 << 8) & 0xFF0000) | ((temp_v0_2 >> 8) & 0xFF00) | ((u32) temp_v0_2 >> 0x18));
    arg0->unk14 = (s32) ((temp_v1_2 << 0x18) | ((temp_v1_2 << 8) & 0xFF0000) | ((temp_v1_2 >> 8) & 0xFF00) | ((u32) temp_v1_2 >> 0x18));
    arg0->unk18 = (s32) ((temp_a1_2 << 0x18) | ((temp_a1_2 << 8) & 0xFF0000) | ((temp_a1_2 >> 8) & 0xFF00) | ((u32) temp_a1_2 >> 0x18));
    arg0->unk1C = (s32) ((temp_a2_2 << 0x18) | ((temp_a2_2 << 8) & 0xFF0000) | ((temp_a2_2 >> 8) & 0xFF00) | ((u32) temp_a2_2 >> 0x18));
}

void swap_hdr(struct __sgi_hdrr_s *arg0, s32 arg1) {
    s16 temp_a1;
    s16 temp_v1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a1_4;
    s32 temp_a1_5;
    s32 temp_a1_6;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a2_5;
    s32 temp_a2_6;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a3_4;
    s32 temp_a3_5;
    s32 temp_a3_6;
    s32 temp_t0;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 temp_v1_4;
    s32 temp_v1_5;
    s32 temp_v1_6;

    temp_v1 = arg0->unk0;
    temp_a1 = arg0->unk2;
    temp_a2 = arg0->unk4;
    temp_a3 = arg0->unk8;
    arg0->unk0 = (s16) ((temp_v1 << 8) | ((u32) (temp_v1 & 0xFFFF) >> 8));
    arg0->unk2 = (s16) ((temp_a1 << 8) | ((u32) (temp_a1 & 0xFFFF) >> 8));
    temp_t0 = arg0->unkC;
    arg0->unk4 = (s32) ((temp_a2 << 0x18) | ((temp_a2 << 8) & 0xFF0000) | ((temp_a2 >> 8) & 0xFF00) | ((u32) temp_a2 >> 0x18));
    temp_v1_2 = arg0->unk10;
    arg0->unk8 = (s32) ((temp_a3 << 0x18) | ((temp_a3 << 8) & 0xFF0000) | ((temp_a3 >> 8) & 0xFF00) | ((u32) temp_a3 >> 0x18));
    temp_a1_2 = arg0->unk14;
    arg0->unkC = (s32) ((temp_t0 << 0x18) | ((temp_t0 << 8) & 0xFF0000) | ((temp_t0 >> 8) & 0xFF00) | ((u32) temp_t0 >> 0x18));
    temp_a2_2 = arg0->unk18;
    arg0->unk10 = (s32) ((temp_v1_2 << 0x18) | ((temp_v1_2 << 8) & 0xFF0000) | ((temp_v1_2 >> 8) & 0xFF00) | ((u32) temp_v1_2 >> 0x18));
    temp_a3_2 = arg0->unk1C;
    arg0->unk14 = (s32) ((temp_a1_2 << 0x18) | ((temp_a1_2 << 8) & 0xFF0000) | ((temp_a1_2 >> 8) & 0xFF00) | ((u32) temp_a1_2 >> 0x18));
    temp_v1_3 = arg0->unk20;
    arg0->unk18 = (s32) ((temp_a2_2 << 0x18) | ((temp_a2_2 << 8) & 0xFF0000) | ((temp_a2_2 >> 8) & 0xFF00) | ((u32) temp_a2_2 >> 0x18));
    temp_a1_3 = arg0->unk24;
    arg0->unk1C = (s32) ((temp_a3_2 << 0x18) | ((temp_a3_2 << 8) & 0xFF0000) | ((temp_a3_2 >> 8) & 0xFF00) | ((u32) temp_a3_2 >> 0x18));
    temp_a2_3 = arg0->unk28;
    arg0->unk20 = (s32) ((temp_v1_3 << 0x18) | ((temp_v1_3 << 8) & 0xFF0000) | ((temp_v1_3 >> 8) & 0xFF00) | ((u32) temp_v1_3 >> 0x18));
    temp_a3_3 = arg0->unk2C;
    arg0->unk24 = (s32) ((temp_a1_3 << 0x18) | ((temp_a1_3 << 8) & 0xFF0000) | ((temp_a1_3 >> 8) & 0xFF00) | ((u32) temp_a1_3 >> 0x18));
    temp_v1_4 = arg0->unk30;
    arg0->unk28 = (s32) ((temp_a2_3 << 0x18) | ((temp_a2_3 << 8) & 0xFF0000) | ((temp_a2_3 >> 8) & 0xFF00) | ((u32) temp_a2_3 >> 0x18));
    temp_a1_4 = arg0->unk34;
    arg0->unk2C = (s32) ((temp_a3_3 << 0x18) | ((temp_a3_3 << 8) & 0xFF0000) | ((temp_a3_3 >> 8) & 0xFF00) | ((u32) temp_a3_3 >> 0x18));
    temp_a2_4 = arg0->unk38;
    arg0->unk30 = (s32) ((temp_v1_4 << 0x18) | ((temp_v1_4 << 8) & 0xFF0000) | ((temp_v1_4 >> 8) & 0xFF00) | ((u32) temp_v1_4 >> 0x18));
    temp_a3_4 = arg0->unk3C;
    arg0->unk34 = (s32) ((temp_a1_4 << 0x18) | ((temp_a1_4 << 8) & 0xFF0000) | ((temp_a1_4 >> 8) & 0xFF00) | ((u32) temp_a1_4 >> 0x18));
    temp_v1_5 = arg0->unk40;
    arg0->unk38 = (s32) ((temp_a2_4 << 0x18) | ((temp_a2_4 << 8) & 0xFF0000) | ((temp_a2_4 >> 8) & 0xFF00) | ((u32) temp_a2_4 >> 0x18));
    temp_a1_5 = arg0->unk44;
    arg0->unk3C = (s32) ((temp_a3_4 << 0x18) | ((temp_a3_4 << 8) & 0xFF0000) | ((temp_a3_4 >> 8) & 0xFF00) | ((u32) temp_a3_4 >> 0x18));
    temp_a2_5 = arg0->unk48;
    arg0->unk40 = (s32) ((temp_v1_5 << 0x18) | ((temp_v1_5 << 8) & 0xFF0000) | ((temp_v1_5 >> 8) & 0xFF00) | ((u32) temp_v1_5 >> 0x18));
    temp_a3_5 = arg0->unk4C;
    arg0->unk44 = (s32) ((temp_a1_5 << 0x18) | ((temp_a1_5 << 8) & 0xFF0000) | ((temp_a1_5 >> 8) & 0xFF00) | ((u32) temp_a1_5 >> 0x18));
    temp_v1_6 = arg0->unk50;
    arg0->unk48 = (s32) ((temp_a2_5 << 0x18) | ((temp_a2_5 << 8) & 0xFF0000) | ((temp_a2_5 >> 8) & 0xFF00) | ((u32) temp_a2_5 >> 0x18));
    temp_a1_6 = arg0->unk54;
    arg0->unk4C = (s32) ((temp_a3_5 << 0x18) | ((temp_a3_5 << 8) & 0xFF0000) | ((temp_a3_5 >> 8) & 0xFF00) | ((u32) temp_a3_5 >> 0x18));
    temp_a2_6 = arg0->unk58;
    arg0->unk50 = (s32) ((temp_v1_6 << 0x18) | ((temp_v1_6 << 8) & 0xFF0000) | ((temp_v1_6 >> 8) & 0xFF00) | ((u32) temp_v1_6 >> 0x18));
    temp_a3_6 = arg0->unk5C;
    arg0->unk54 = (s32) ((temp_a1_6 << 0x18) | ((temp_a1_6 << 8) & 0xFF0000) | ((temp_a1_6 >> 8) & 0xFF00) | ((u32) temp_a1_6 >> 0x18));
    arg0->unk58 = (s32) ((temp_a2_6 << 0x18) | ((temp_a2_6 << 8) & 0xFF0000) | ((temp_a2_6 >> 8) & 0xFF00) | ((u32) temp_a2_6 >> 0x18));
    arg0->unk5C = (s32) ((temp_a3_6 << 0x18) | ((temp_a3_6 << 8) & 0xFF0000) | ((temp_a3_6 >> 8) & 0xFF00) | ((u32) temp_a3_6 >> 0x18));
}

void swap_fd(struct fdr *arg0, s32 arg1, s32 arg2) {
    s32 sp84;
    s32 sp80;
    u32 sp7C;
    s32 sp78;
    s32 sp74;
    s32 sp70;
    s32 sp6C;
    u16 sp6A;
    u16 sp68;
    s32 sp64;
    s32 sp60;
    s32 sp5C;
    s32 sp58;
    s32 sp54;
    s32 sp50;
    s32 sp4C;
    s32 sp48;
    s32 sp44;
    u32 sp40;
    s32 temp_v0;
    s8 temp_t6;
    s8 temp_t6_2;
    s8 temp_t6_3;
    struct fdr *var_v1;
    u32 temp_t9;
    u32 temp_t9_2;
    u8 temp_t7;

    temp_v0 = gethostsex();
    if (arg1 > 0) {
        var_v1 = arg0;
        do {
            M2C_MEMCPY_ALIGNED(&sp40, var_v1, 0x48);
            sp40 = (sp40 << 0x18) | ((sp40 << 8) & 0xFF0000) | ((sp40 >> 8) & 0xFF00) | (sp40 >> 0x18);
            sp44 = (sp44 << 0x18) | ((sp44 << 8) & 0xFF0000) | ((sp44 >> 8) & 0xFF00) | ((u32) sp44 >> 0x18);
            sp48 = (sp48 << 0x18) | ((sp48 << 8) & 0xFF0000) | ((sp48 >> 8) & 0xFF00) | ((u32) sp48 >> 0x18);
            sp4C = (sp4C << 0x18) | ((sp4C << 8) & 0xFF0000) | ((sp4C >> 8) & 0xFF00) | ((u32) sp4C >> 0x18);
            sp50 = (sp50 << 0x18) | ((sp50 << 8) & 0xFF0000) | ((sp50 >> 8) & 0xFF00) | ((u32) sp50 >> 0x18);
            sp68 = ((s16) sp68 << 8) | (sp68 >> 8);
            sp6A = ((s16) sp6A << 8) | (sp6A >> 8);
            sp84 = (sp84 << 0x18) | ((sp84 << 8) & 0xFF0000) | ((sp84 >> 8) & 0xFF00) | ((u32) sp84 >> 0x18);
            sp80 = (sp80 << 0x18) | ((sp80 << 8) & 0xFF0000) | ((sp80 >> 8) & 0xFF00) | ((u32) sp80 >> 0x18);
            sp78 = (sp78 << 0x18) | ((sp78 << 8) & 0xFF0000) | ((sp78 >> 8) & 0xFF00) | ((u32) sp78 >> 0x18);
            sp74 = (sp74 << 0x18) | ((sp74 << 8) & 0xFF0000) | ((sp74 >> 8) & 0xFF00) | ((u32) sp74 >> 0x18);
            sp70 = (sp70 << 0x18) | ((sp70 << 8) & 0xFF0000) | ((sp70 >> 8) & 0xFF00) | ((u32) sp70 >> 0x18);
            sp6C = (sp6C << 0x18) | ((sp6C << 8) & 0xFF0000) | ((sp6C >> 8) & 0xFF00) | ((u32) sp6C >> 0x18);
            sp64 = (sp64 << 0x18) | ((sp64 << 8) & 0xFF0000) | ((sp64 >> 8) & 0xFF00) | ((u32) sp64 >> 0x18);
            sp60 = (sp60 << 0x18) | ((sp60 << 8) & 0xFF0000) | ((sp60 >> 8) & 0xFF00) | ((u32) sp60 >> 0x18);
            sp5C = (sp5C << 0x18) | ((sp5C << 8) & 0xFF0000) | ((sp5C >> 8) & 0xFF00) | ((u32) sp5C >> 0x18);
            sp58 = (sp58 << 0x18) | ((sp58 << 8) & 0xFF0000) | ((sp58 >> 8) & 0xFF00) | ((u32) sp58 >> 0x18);
            sp54 = (sp54 << 0x18) | ((sp54 << 8) & 0xFF0000) | ((sp54 >> 8) & 0xFF00) | ((u32) sp54 >> 0x18);
            if (arg2 == temp_v0) {
                M2C_MEMCPY_ALIGNED(var_v1, &sp40, 0x48);
                temp_t9 = (sp7C << 0x18) | ((sp7C << 8) & 0xFF0000) | ((sp7C >> 8) & 0xFF00) | (sp7C >> 0x18);
                sp7C = temp_t9;
                var_v1->unk3C = (u8) ((temp_t9 * 8) | (var_v1->unk3C & 0xFF07));
                var_v1->unk3C = (u8) (((((u32) (sp7C << 0x1A) >> 0x1F) * 4) & 4) | (var_v1->unk3C & 0xFFFB));
                temp_t7 = ((((u32) (sp7C << 0x19) >> 0x1F) * 2) & 2) | (var_v1->unk3C & 0xFFFD);
                var_v1->unk3C = temp_t7;
                var_v1->unk3C = (u8) (((unksp7F >> 7) & 1) | (temp_t7 & 0xFFFE));
                var_v1->unk3D = (u8) ((unksp7E << 6) | (var_v1->unk3D & 0xFF3F));
                var_v1->unk3E = (u16) (((sp7C >> 0xA) & 0x1FFF) | (var_v1->unk3E & 0xE000));
            } else {
                temp_t6 = (((u32) var_v1->unk3C >> 0x1B) & 0x1F) | (unksp7F & 0xFFE0);
                unksp7F = temp_t6;
                temp_t6_2 = ((((u32) ((s32) var_v1->unk3C << 5) >> 0x1F) << 5) & 0x20) | (temp_t6 & 0xDF);
                unksp7F = temp_t6_2;
                temp_t6_3 = ((((u32) ((s32) var_v1->unk3C << 6) >> 0x1F) << 6) & 0x40) | (temp_t6_2 & 0xBF);
                unksp7F = temp_t6_3;
                unksp7F = (var_v1->unk3C << 7) | (temp_t6_3 & 0x7F);
                unksp7E = (((u8) var_v1->unk3D >> 6) & 3) | (unksp7E & 0xFFFC);
                temp_t9_2 = ((((s32) var_v1->unk3C & 0x1FFF) ^ (sp7C >> 0xA)) << 0xA) ^ sp7C;
                sp7C = temp_t9_2;
                sp7C = (temp_t9_2 << 0x18) | ((temp_t9_2 << 8) & 0xFF0000) | ((temp_t9_2 >> 8) & 0xFF00) | (temp_t9_2 >> 0x18);
                M2C_MEMCPY_ALIGNED(var_v1, &sp40, 0x48);
            }
            var_v1 += 0x48;
        } while (var_v1 != ((arg1 * 0x48) + arg0));
    }
}

void swap_fi(s32 *arg0, s32 arg1, s32 arg2) {
    s32 *var_v1;
    s32 *var_v1_2;
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a3;
    s32 temp_t8;
    s32 temp_v0;
    s32 var_v0;

    var_v0 = 0;
    if (arg1 > 0) {
        temp_a2 = arg1 & 3;
        if (temp_a2 != 0) {
            var_v1 = &arg0[0];
            do {
                temp_a2_2 = *var_v1;
                var_v0 += 1;
                var_v1 += 4;
                var_v1->unk-4 = (s32) (((u32) temp_a2_2 >> 0x18) | ((temp_a2_2 << 0x18) | ((temp_a2_2 << 8) & 0xFF0000) | ((temp_a2_2 >> 8) & 0xFF00)));
            } while (temp_a2 != var_v0);
            if (var_v0 != arg1) {
                goto block_5;
            }
        } else {
block_5:
            var_v1_2 = &arg0[var_v0];
            do {
                temp_a2_3 = var_v1_2->unk0;
                temp_v0 = var_v1_2->unk4;
                temp_a0 = var_v1_2->unk8;
                var_v1_2->unk0 = ((u32) temp_a2_3 >> 0x18) | ((temp_a2_3 << 0x18) | ((temp_a2_3 << 8) & 0xFF0000) | ((temp_a2_3 >> 8) & 0xFF00));
                temp_a3 = var_v1_2->unkC;
                var_v1_2->unk4 = (s32) (((u32) temp_v0 >> 0x18) | ((temp_v0 << 0x18) | ((temp_v0 << 8) & 0xFF0000) | ((temp_v0 >> 8) & 0xFF00)));
                var_v1_2->unk8 = (s32) (((u32) temp_a0 >> 0x18) | ((temp_a0 << 0x18) | ((temp_a0 << 8) & 0xFF0000) | ((temp_a0 >> 8) & 0xFF00)));
                temp_t8 = ((u32) temp_a3 >> 0x18) | ((temp_a3 << 0x18) | ((temp_a3 << 8) & 0xFF0000) | ((temp_a3 >> 8) & 0xFF00));
                var_v1_2 += 0x10;
                var_v1_2->unk-4 = temp_t8;
            } while (var_v1_2 != &arg0[arg1]);
        }
    }
}

void swap_sym(struct __sgi_symr_s *arg0, s32 arg1, s32 arg2) {
    u32 sp3C;
    s32 sp38;
    s32 sp34;
    s32 temp_v0;
    struct __sgi_symr_s *var_v1;
    u32 temp_a0;
    u32 temp_t6;
    u32 temp_t6_2;

    temp_v0 = gethostsex();
    if (arg1 > 0) {
        var_v1 = arg0;
        do {
            sp34.unk0 = var_v1->unk0;
            sp34.unk4 = (s32) var_v1->unk4;
            sp34.unk8 = (u32) var_v1->unk8;
            sp34 = (sp34 << 0x18) | ((sp34 << 8) & 0xFF0000) | ((sp34 >> 8) & 0xFF00) | ((u32) sp34 >> 0x18);
            sp38 = (sp38 << 0x18) | ((sp38 << 8) & 0xFF0000) | ((sp38 >> 8) & 0xFF00) | ((u32) sp38 >> 0x18);
            if (arg2 == temp_v0) {
                var_v1->unk0 = (s32) sp34.unk0;
                var_v1->unk4 = (s32) sp34.unk4;
                var_v1->unk8 = (u32) sp34.unk8;
                temp_t6 = (sp3C << 0x18) | ((sp3C << 8) & 0xFF0000) | ((sp3C >> 8) & 0xFF00) | (sp3C >> 0x18);
                sp3C = temp_t6;
                var_v1->unk8 = (s8) ((temp_t6 * 4) | ((u8) var_v1->unk8 & 0xFF03));
                var_v1->unk8 = (s16) (((((u32) (sp3C << 0x15) >> 0x1B) << 5) & 0x3E0) | ((u16) var_v1->unk8 & 0xFC1F));
                var_v1->unk9 = (u8) (((((u32) (sp3C << 0x14) >> 0x1F) * 0x10) & 0x10) | (var_v1->unk9 & 0xFFEF));
                temp_a0 = var_v1->unk8;
                var_v1->unk8 = (u32) (((u32) (((sp3C >> 0xC) ^ temp_a0) << 0xC) >> 0xC) ^ temp_a0);
            } else {
                unksp3F = (((u32) var_v1->unk8 >> 0x1A) & 0x3F) | (unksp3F & 0xFFC0);
                unksp3E = ((((u32) (var_v1->unk8 << 6) >> 0x1B) << 6) & 0x7C0) | (unksp3E & 0xF83F);
                unksp3E = ((((u32) (var_v1->unk8 << 0xB) >> 0x1F) * 8) & 8) | ((u8) unksp3E & 0xFFF7);
                temp_t6_2 = (((var_v1->unk8 & 0xFFFFF) ^ (sp3C >> 0xC)) << 0xC) ^ sp3C;
                sp3C = temp_t6_2;
                sp3C = (temp_t6_2 << 0x18) | ((temp_t6_2 << 8) & 0xFF0000) | ((temp_t6_2 >> 8) & 0xFF00) | (temp_t6_2 >> 0x18);
                var_v1->unk0 = (s32) sp34.unk0;
                var_v1->unk4 = (s32) sp34.unk4;
                var_v1->unk8 = (u32) sp34.unk8;
            }
            var_v1 += 0xC;
        } while (var_v1 != ((arg1 * 0xC) + arg0));
    }
}

void swap_ext(struct __sgi_extr__ *arg0, s32 arg1, s32 arg2) {
    u32 sp3C;
    s32 sp38;
    s32 sp34;
    u32 sp30;                                       /* compiler-managed */
    s32 temp_v0;
    s8 temp_t5;
    s8 temp_t6_3;
    s8 temp_t8;
    s8 temp_t8_2;
    struct __sgi_extr__ *var_v1;
    u32 temp_a0;
    u32 temp_t6;
    u32 temp_t6_2;

    temp_v0 = gethostsex();
    if (arg1 > 0) {
        var_v1 = arg0;
        do {
            sp30.unk0 = var_v1->unk0;
            sp30.unk4 = (s32) var_v1->unk4;
            sp30.unk8 = (s32) var_v1->unk8;
            sp30.unkC = (u32) var_v1->unkC;
            sp34 = (sp34 << 0x18) | ((sp34 << 8) & 0xFF0000) | ((sp34 >> 8) & 0xFF00) | ((u32) sp34 >> 0x18);
            sp38 = (sp38 << 0x18) | ((sp38 << 8) & 0xFF0000) | ((sp38 >> 8) & 0xFF00) | ((u32) sp38 >> 0x18);
            if (arg2 == temp_v0) {
                var_v1->unk0 = (u32) sp30.unk0;
                var_v1->unk4 = (s32) sp30.unk4;
                var_v1->unk8 = (s32) sp30.unk8;
                var_v1->unkC = (u32) sp30.unkC;
                temp_t6 = (sp3C << 0x18) | ((sp3C << 8) & 0xFF0000) | ((sp3C >> 8) & 0xFF00) | (sp3C >> 0x18);
                sp3C = temp_t6;
                var_v1->unkC = (s8) ((temp_t6 * 4) | ((u8) var_v1->unkC & 0xFF03));
                var_v1->unkC = (s16) (((((u32) (sp3C << 0x15) >> 0x1B) << 5) & 0x3E0) | ((u16) var_v1->unkC & 0xFC1F));
                var_v1->unkD = (u8) (((((u32) (sp3C << 0x14) >> 0x1F) * 0x10) & 0x10) | (var_v1->unkD & 0xFFEF));
                temp_a0 = var_v1->unkC;
                var_v1->unkC = (u32) (((u32) (((sp3C >> 0xC) ^ temp_a0) << 0xC) >> 0xC) ^ temp_a0);
                sp30 = (sp30 << 0x18) | ((sp30 << 8) & 0xFF0000) | ((sp30 >> 8) & 0xFF00) | (sp30 >> 0x18);
                var_v1->unk2 = (s16) sp30;
                var_v1->unk0 = (s16) (((unksp32 >> 3) & 0x7FF) | ((u16) var_v1->unk0 & 0xF800));
                temp_t8 = (sp30 << 7) | ((u8) var_v1->unk0 & 0xFF7F);
                var_v1->unk0 = temp_t8;
                temp_t8_2 = ((((u32) (sp30 << 0x1E) >> 0x1F) << 6) & 0x40) | (temp_t8 & 0xBF);
                var_v1->unk0 = temp_t8_2;
                var_v1->unk0 = (s8) (((((u32) (sp30 << 0x1D) >> 0x1F) << 5) & 0x20) | (temp_t8_2 & 0xDF));
            } else {
                unksp3F = (((u32) var_v1->unkC >> 0x1A) & 0x3F) | (unksp3F & 0xFFC0);
                unksp3E = ((((u32) (var_v1->unkC << 6) >> 0x1B) << 6) & 0x7C0) | (unksp3E & 0xF83F);
                unksp3E = ((((u32) (var_v1->unkC << 0xB) >> 0x1F) * 8) & 8) | ((u8) unksp3E & 0xFFF7);
                temp_t6_2 = (((var_v1->unkC & 0xFFFFF) ^ (sp3C >> 0xC)) << 0xC) ^ sp3C;
                sp3C = temp_t6_2;
                sp3C = (temp_t6_2 << 0x18) | ((temp_t6_2 << 8) & 0xFF0000) | ((temp_t6_2 >> 8) & 0xFF00) | (temp_t6_2 >> 0x18);
                sp30 = (u16) var_v1->unk2;
                unksp32 = (((u16) var_v1->unk0 & 0x7FF) * 8) | (unksp32 & 7);
                temp_t6_3 = ((((u32) (var_v1->unk0 * 4) >> 0x1F) * 4) & 4) | (unksp33 & 0xFFFB);
                unksp33 = temp_t6_3;
                temp_t5 = ((((u32) (var_v1->unk0 * 2) >> 0x1F) * 2) & 2) | (temp_t6_3 & 0xFD);
                unksp33 = temp_t5;
                unksp33 = (((u32) var_v1->unk0 >> 0x1F) & 1) | (temp_t5 & 0xFE);
                sp30 = ((u32) sp30 << 0x18) | (((u32) sp30 << 8) & 0xFF0000) | (((u32) sp30 >> 8) & 0xFF00) | ((u32) sp30 >> 0x18);
                var_v1->unk0 = (u32) sp30.unk0;
                var_v1->unk4 = (s32) sp30.unk4;
                var_v1->unk8 = (s32) sp30.unk8;
                var_v1->unkC = (u32) sp30.unkC;
            }
            var_v1 += 0x10;
        } while (var_v1 != ((arg1 * 0x10) + arg0));
    }
}

void swap_pd(struct pdr *arg0, s32 arg1, s32 arg2) {
    s16 temp_t5;
    s16 temp_t7;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a0_5;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 temp_v1_4;
    s32 temp_v1_5;
    s32 temp_v1_6;
    s32 temp_v1_7;
    struct pdr *var_v0;
    u32 temp_v1;

    if (arg1 > 0) {
        var_v0 = arg0;
        do {
            temp_v1 = var_v0->unk0;
            temp_a0 = var_v0->unk4;
            var_v0 += 0x34;
            temp_v1_2 = var_v0->unk-2C;
            var_v0->unk-34 = (s32) ((temp_v1 >> 0x18) | (temp_v1 << 0x18) | ((temp_v1 << 8) & 0xFF0000) | ((temp_v1 >> 8) & 0xFF00));
            temp_a0_2 = var_v0->unk-28;
            var_v0->unk-30 = (s32) (((u32) temp_a0 >> 0x18) | ((temp_a0 << 0x18) | ((temp_a0 << 8) & 0xFF0000) | ((temp_a0 >> 8) & 0xFF00)));
            temp_v1_3 = var_v0->unk-24;
            var_v0->unk-2C = (s32) (((u32) temp_v1_2 >> 0x18) | ((temp_v1_2 << 0x18) | ((temp_v1_2 << 8) & 0xFF0000) | ((temp_v1_2 >> 8) & 0xFF00)));
            temp_a0_3 = var_v0->unk-20;
            var_v0->unk-28 = (s32) (((u32) temp_a0_2 >> 0x18) | ((temp_a0_2 << 0x18) | ((temp_a0_2 << 8) & 0xFF0000) | ((temp_a0_2 >> 8) & 0xFF00)));
            temp_v1_4 = var_v0->unk-1C;
            var_v0->unk-24 = (s32) (((u32) temp_v1_3 >> 0x18) | ((temp_v1_3 << 0x18) | ((temp_v1_3 << 8) & 0xFF0000) | ((temp_v1_3 >> 8) & 0xFF00)));
            temp_a0_4 = var_v0->unk-18;
            var_v0->unk-20 = (s32) (((u32) temp_a0_3 >> 0x18) | ((temp_a0_3 << 0x18) | ((temp_a0_3 << 8) & 0xFF0000) | ((temp_a0_3 >> 8) & 0xFF00)));
            temp_v1_5 = var_v0->unk-14;
            var_v0->unk-1C = (s32) (((u32) temp_v1_4 >> 0x18) | ((temp_v1_4 << 0x18) | ((temp_v1_4 << 8) & 0xFF0000) | ((temp_v1_4 >> 8) & 0xFF00)));
            var_v0->unk-18 = (s32) (((u32) temp_a0_4 >> 0x18) | ((temp_a0_4 << 0x18) | ((temp_a0_4 << 8) & 0xFF0000) | ((temp_a0_4 >> 8) & 0xFF00)));
            temp_t7 = var_v0->unk-10;
            var_v0->unk-14 = (s32) (((u32) temp_v1_5 >> 0x18) | ((temp_v1_5 << 0x18) | ((temp_v1_5 << 8) & 0xFF0000) | ((temp_v1_5 >> 8) & 0xFF00)));
            temp_t5 = var_v0->unk-E;
            temp_v1_6 = var_v0->unk-C;
            var_v0->unk-10 = (s16) (((u32) (temp_t7 & 0xFFFF) >> 8) | (temp_t7 << 8));
            temp_a0_5 = var_v0->unk-8;
            var_v0->unk-E = (s16) (((u32) (temp_t5 & 0xFFFF) >> 8) | (temp_t5 << 8));
            temp_v1_7 = var_v0->unk-4;
            var_v0->unk-C = (s32) (((u32) temp_v1_6 >> 0x18) | ((temp_v1_6 << 0x18) | ((temp_v1_6 << 8) & 0xFF0000) | ((temp_v1_6 >> 8) & 0xFF00)));
            var_v0->unk-8 = (s32) (((u32) temp_a0_5 >> 0x18) | ((temp_a0_5 << 0x18) | ((temp_a0_5 << 8) & 0xFF0000) | ((temp_a0_5 >> 8) & 0xFF00)));
            var_v0->unk-4 = (s32) (((u32) temp_v1_7 >> 0x18) | ((temp_v1_7 << 0x18) | ((temp_v1_7 << 8) & 0xFF0000) | ((temp_v1_7 >> 8) & 0xFF00)));
        } while (var_v0 != ((arg1 * 0x34) + arg0));
    }
}

void swap_dn(void *arg0, s32 arg1, ? arg2) {
    s32 temp_t6;
    s32 var_v0;
    u32 temp_a0;
    u32 temp_a2;
    u32 temp_a2_2;
    u32 temp_a3;
    u32 temp_a3_2;
    u32 temp_v0;
    void *var_v1;

    var_v0 = 0;
    if ((arg1 > 0) && (!(arg1 & 1) || (temp_a2 = arg0->unk0, temp_a3 = arg0->unk4, var_v0 = 1, arg0->unk0 = (u32) ((temp_a2 >> 0x18) | (temp_a2 << 0x18) | ((temp_a2 << 8) & 0xFF0000) | ((temp_a2 >> 8) & 0xFF00)), arg0->unk4 = (u32) ((temp_a3 >> 0x18) | (temp_a3 << 0x18) | ((temp_a3 << 8) & 0xFF0000) | ((temp_a3 >> 8) & 0xFF00)), (arg1 != 1)))) {
        var_v1 = arg0 + (var_v0 * 8);
        do {
            temp_v0 = var_v1->unk0;
            temp_a0 = var_v1->unk4;
            temp_a2_2 = var_v1->unk8;
            var_v1->unk0 = (u32) ((temp_v0 >> 0x18) | (temp_v0 << 0x18) | ((temp_v0 << 8) & 0xFF0000) | ((temp_v0 >> 8) & 0xFF00));
            temp_a3_2 = var_v1->unkC;
            var_v1->unk4 = (u32) ((temp_a0 >> 0x18) | (temp_a0 << 0x18) | ((temp_a0 << 8) & 0xFF0000) | ((temp_a0 >> 8) & 0xFF00));
            var_v1->unk8 = (u32) ((temp_a2_2 >> 0x18) | (temp_a2_2 << 0x18) | ((temp_a2_2 << 8) & 0xFF0000) | ((temp_a2_2 >> 8) & 0xFF00));
            temp_t6 = (temp_a3_2 >> 0x18) | (temp_a3_2 << 0x18) | ((temp_a3_2 << 8) & 0xFF0000) | ((temp_a3_2 >> 8) & 0xFF00);
            var_v1 += 0x10;
            var_v1->unk-4 = temp_t6;
        } while (var_v1 != ((arg1 * 8) + arg0));
    }
}

void swap_rpd(void *arg0, s32 arg1, ? arg2) {
    s16 temp_v1_4;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 temp_v1_5;
    u32 temp_v1;
    void *var_v0;

    if (arg1 > 0) {
        var_v0 = arg0;
        do {
            temp_v1 = var_v0->unk0;
            temp_a0 = var_v0->unk4;
            var_v0 += 0x28;
            temp_v1_2 = var_v0->unk-20;
            temp_a0_2 = var_v0->unk-1C;
            var_v0->unk-28 = (s32) ((temp_v1 >> 0x18) | (temp_v1 << 0x18) | ((temp_v1 << 8) & 0xFF0000) | ((temp_v1 >> 8) & 0xFF00));
            temp_v1_3 = var_v0->unk-18;
            var_v0->unk-24 = (s32) (((u32) temp_a0 >> 0x18) | ((temp_a0 << 0x18) | ((temp_a0 << 8) & 0xFF0000) | ((temp_a0 >> 8) & 0xFF00)));
            temp_a0_3 = var_v0->unk-14;
            var_v0->unk-20 = (s32) (((u32) temp_v1_2 >> 0x18) | ((temp_v1_2 << 0x18) | ((temp_v1_2 << 8) & 0xFF0000) | ((temp_v1_2 >> 8) & 0xFF00)));
            var_v0->unk-1C = (s32) (((u32) temp_a0_2 >> 0x18) | ((temp_a0_2 << 0x18) | ((temp_a0_2 << 8) & 0xFF0000) | ((temp_a0_2 >> 8) & 0xFF00)));
            temp_v1_4 = var_v0->unk-10;
            var_v0->unk-18 = (s32) (((u32) temp_v1_3 >> 0x18) | ((temp_v1_3 << 0x18) | ((temp_v1_3 << 8) & 0xFF0000) | ((temp_v1_3 >> 8) & 0xFF00)));
            temp_a0_4 = var_v0->unk-C;
            var_v0->unk-14 = (s32) (((u32) temp_a0_3 >> 0x18) | ((temp_a0_3 << 0x18) | ((temp_a0_3 << 8) & 0xFF0000) | ((temp_a0_3 >> 8) & 0xFF00)));
            temp_v1_5 = var_v0->unk-4;
            var_v0->unk-10 = (s16) (((u32) temp_v1_4 >> 0x18) | ((temp_v1_4 << 0x18) | ((temp_v1_4 << 8) & 0xFF0000) | ((temp_v1_4 >> 8) & 0xFF00)));
            var_v0->unk-C = (s32) (((u32) temp_a0_4 >> 0x18) | ((temp_a0_4 << 0x18) | ((temp_a0_4 << 8) & 0xFF0000) | ((temp_a0_4 >> 8) & 0xFF00)));
            var_v0->unk-4 = (s32) (((u32) temp_v1_5 >> 0x18) | ((temp_v1_5 << 0x18) | ((temp_v1_5 << 8) & 0xFF0000) | ((temp_v1_5 >> 8) & 0xFF00)));
        } while (var_v0 != ((arg1 * 0x28) + arg0));
    }
}

void swap_opt(struct __sgi_optr_s *arg0, s32 arg1, s32 arg2) {
    u32 sp3C;
    u32 sp38;
    u32 sp34;                                       /* compiler-managed */
    s32 temp_v0;
    struct __sgi_optr_s *var_v1;
    u32 temp_a0;
    u32 temp_a1;
    u32 temp_t9;

    temp_v0 = gethostsex();
    if (arg1 > 0) {
        var_v1 = arg0;
        do {
            sp34.unk0 = var_v1->unk0;
            sp34.unk4 = (u32) var_v1->unk4;
            sp34.unk8 = (s32) var_v1->unk8;
            sp3C = (sp3C << 0x18) | ((sp3C << 8) & 0xFF0000) | ((sp3C >> 8) & 0xFF00) | (sp3C >> 0x18);
            if (arg2 == temp_v0) {
                var_v1->unk0 = (u32) sp34.unk0;
                var_v1->unk4 = (u32) sp34.unk4;
                var_v1->unk8 = (s32) sp34.unk8;
                sp34 = (sp34 << 0x18) | ((sp34 << 8) & 0xFF0000) | ((sp34 >> 8) & 0xFF00) | (sp34 >> 0x18);
                sp38 = (sp38 << 0x18) | ((sp38 << 8) & 0xFF0000) | ((sp38 >> 8) & 0xFF00) | (sp38 >> 0x18);
                var_v1->unk0 = (u8) sp34;
                temp_a0 = var_v1->unk0;
                temp_a1 = var_v1->unk4;
                var_v1->unk0 = (u32) (((u32) (((sp34 & 0xFFFFFF) ^ temp_a0) << 8) >> 8) ^ temp_a0);
                var_v1->unk4 = (u32) (((u32) (((sp38 >> 0xC) ^ temp_a1) << 0xC) >> 0xC) ^ temp_a1);
                var_v1->unk4 = (s16) ((sp38 * 0x10) | ((u16) var_v1->unk4 & 0xF));
            } else {
                sp34 = (u8) var_v1->unk0;
                temp_t9 = ((u32) (((var_v1->unk0 & 0xFFFFFF) ^ (s32) sp34) << 8) >> 8) ^ (s32) sp34;
                sp34 = temp_t9;
                sp38 ^= ((var_v1->unk4 & 0xFFFFF) ^ (sp38 >> 0xC)) << 0xC;
                unksp3A = (((u32) var_v1->unk4 >> 0x14) & 0xFFF) | (unksp3A & 0xF000);
                sp34 = (temp_t9 << 0x18) | ((temp_t9 << 8) & 0xFF0000) | ((temp_t9 >> 8) & 0xFF00) | (temp_t9 >> 0x18);
                sp38 = (sp38 << 0x18) | ((sp38 << 8) & 0xFF0000) | ((sp38 >> 8) & 0xFF00) | (sp38 >> 0x18);
                var_v1->unk0 = (u32) sp34.unk0;
                var_v1->unk4 = (u32) sp34.unk4;
                var_v1->unk8 = (s32) sp34.unk8;
            }
            var_v1 += 0xC;
        } while (var_v1 != ((arg1 * 0xC) + arg0));
    }
}

void swap_aux(struct __sgi_auxu_u *arg0, s32 arg1, s32 arg2) {
    u32 sp2C;
    u32 sp24;
    s8 temp_t1;
    s8 temp_t9;
    u32 temp_t0;
    u32 temp_t3;
    u32 temp_v0;
    u32 temp_v0_2;
    u8 temp_t0_2;
    u8 temp_t2;
    u8 temp_t5;

    if (arg2 != gethostsex()) {
        fprintf(__iob + 0x20, "swap of auxs not supported when destsex != hostsex\n");
        return;
    }
    switch (arg1) {
    case 0:
        sp2C = arg0->unk0;
        temp_t0 = (sp2C << 0x18) | ((sp2C << 8) & 0xFF0000) | ((sp2C >> 8) & 0xFF00) | (sp2C >> 0x18);
        sp2C = temp_t0;
        temp_t0_2 = ((temp_t0 >> 0x1C) & 0xF) | (arg0->unk3 & 0xFFF0);
        arg0->unk3 = temp_t0_2;
        arg0->unk3 = (u8) (((u8) sp2C * 0x10) | (temp_t0_2 & 0xF));
        temp_t2 = ((unksp2D >> 4) & 0xF) | (arg0->unk2 & 0xFFF0);
        arg0->unk2 = temp_t2;
        arg0->unk2 = (u8) (((u16) sp2C * 0x10) | (temp_t2 & 0xF));
        temp_t5 = ((unksp2E >> 0xC) & 0xF) | (arg0->unk1 & 0xFFF0);
        arg0->unk1 = temp_t5;
        arg0->unk1 = (u8) ((unksp2E * 0x10) | (temp_t5 & 0xF));
        temp_t9 = ((unksp2F >> 2) & 0x3F) | ((u8) arg0->unk0 & 0xFFC0);
        arg0->unk0 = temp_t9;
        temp_t1 = ((((u32) (sp2C << 0x1E) >> 0x1F) << 6) & 0x40) | (temp_t9 & 0xBF);
        arg0->unk0 = temp_t1;
        arg0->unk0 = (s8) (((sp2C << 7) & 0x80) | (temp_t1 & 0x7F));
        return;
    case 1:
        sp24 = arg0->unk0;
        temp_t3 = (sp24 << 0x18) | ((sp24 << 8) & 0xFF0000) | ((sp24 >> 8) & 0xFF00) | (sp24 >> 0x18);
        sp24 = temp_t3;
        temp_v0 = arg0->unk0;
        arg0->unk0 = (u32) (((u32) (((temp_t3 >> 0xC) ^ temp_v0) << 0xC) >> 0xC) ^ temp_v0);
        arg0->unk0 = (s16) ((sp24 * 0x10) | ((u16) arg0->unk0 & 0xF));
        return;
    default:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
        temp_v0_2 = arg0->unk0;
        arg0->unk0 = (u32) ((temp_v0_2 << 0x18) | ((temp_v0_2 << 8) & 0xFF0000) | (((s32) temp_v0_2 >> 8) & 0xFF00) | (temp_v0_2 >> 0x18));
        return;
    }
}

void swap_reloc(struct reloc *arg0, s32 arg1, s32 arg2) {
    u32 sp34;                                       /* compiler-managed */
    s32 sp30;
    s32 temp_v0;
    s8 temp_t3;
    s8 temp_t8;
    struct reloc *var_v1;
    u32 temp_a0;
    u32 temp_t4;
    u32 temp_t6;
    u8 temp_t2;
    u8 temp_t2_2;

    temp_v0 = gethostsex();
    if (arg1 > 0) {
        var_v1 = arg0;
        do {
            sp30.unk0 = var_v1->unk0;
            sp30.unk4 = (u32) var_v1->unk4;
            sp30 = (sp30 << 0x18) | ((sp30 << 8) & 0xFF0000) | ((sp30 >> 8) & 0xFF00) | ((u32) sp30 >> 0x18);
            if (arg2 == temp_v0) {
                var_v1->unk0 = (s32) sp30.unk0;
                var_v1->unk4 = (u32) sp30.unk4;
                temp_t6 = (sp34 << 0x18) | ((sp34 << 8) & 0xFF0000) | ((sp34 >> 8) & 0xFF00) | (sp34 >> 0x18);
                sp34 = temp_t6;
                temp_t2 = ((temp_t6 >> 0x1F) & 1) | (var_v1->unk7 & 0xFFFE);
                var_v1->unk7 = temp_t2;
                temp_t2_2 = ((((u32) (sp34 * 2) >> 0x1C) * 2) & 0x3E) | (temp_t2 & 0xC1);
                var_v1->unk7 = temp_t2_2;
                var_v1->unk7 = (u8) (((u8) sp34 << 6) | (temp_t2_2 & 0x3F));
                temp_a0 = var_v1->unk4;
                var_v1->unk4 = (u32) ((((sp34 & 0xFFFFFF) ^ (temp_a0 >> 8)) << 8) ^ temp_a0);
            } else {
                temp_t3 = (var_v1->unk4 << 7) | ((u8) sp34 & 0xFF7F);
                sp34 = temp_t3;
                temp_t8 = ((((u32) (var_v1->unk4 << 0x1A) >> 0x1B) * 8) & 0x78) | (temp_t3 & 0x87);
                sp34 = temp_t8;
                sp34 = (((u8) var_v1->unk7 >> 6) & 7) | (temp_t8 & 0xF8);
                temp_t4 = ((u32) ((((u32) var_v1->unk4 >> 8) ^ (s32) sp34) << 8) >> 8) ^ (s32) sp34;
                sp34 = temp_t4;
                sp34 = (temp_t4 << 0x18) | ((temp_t4 << 8) & 0xFF0000) | ((temp_t4 >> 8) & 0xFF00) | (temp_t4 >> 0x18);
                var_v1->unk0 = (s32) sp30.unk0;
                var_v1->unk4 = (u32) sp30.unk4;
            }
            var_v1 += 8;
        } while (var_v1 != ((arg1 * 8) + arg0));
    }
}

void swap_ranlib(void *arg0, s32 arg1) {
    s32 temp_a0;
    s32 temp_v1;
    void *var_v0;

    var_v0 = arg0;
    if (arg1 > 0) {
        do {
            temp_v1 = var_v0->unk0;
            temp_a0 = var_v0->unk4;
            var_v0 += 8;
            var_v0->unk-8 = (s32) (((u32) temp_v1 >> 0x18) | ((temp_v1 << 0x18) | ((temp_v1 << 8) & 0xFF0000) | ((temp_v1 >> 8) & 0xFF00)));
            var_v0->unk-4 = (s32) (((u32) temp_a0 >> 0x18) | ((temp_a0 << 0x18) | ((temp_a0 << 8) & 0xFF0000) | ((temp_a0 >> 8) & 0xFF00)));
        } while (var_v0 != ((arg1 * 8) + arg0));
    }
}

void swap_gpt(struct gp_table *arg0, s32 arg1, s32 arg2) {
    s32 temp_a0;
    s32 temp_v1;
    struct gp_table *var_v0;

    if (arg1 > 0) {
        var_v0 = arg0;
        do {
            temp_v1 = var_v0->unk0;
            temp_a0 = var_v0->unk4;
            var_v0 += 8;
            var_v0->unk-8 = (s32) (((u32) temp_v1 >> 0x18) | ((temp_v1 << 0x18) | ((temp_v1 << 8) & 0xFF0000) | ((temp_v1 >> 8) & 0xFF00)));
            var_v0->unk-4 = (s32) (((u32) temp_a0 >> 0x18) | ((temp_a0 << 0x18) | ((temp_a0 << 8) & 0xFF0000) | ((temp_a0 >> 8) & 0xFF00)));
        } while (var_v0 != ((arg1 * 8) + arg0));
    }
}

void swap_dynamic(void *arg0, s32 arg1) {
    s32 temp_v0;
    u32 temp_t3;
    u32 temp_v1;

    temp_v0 = arg0->unk0;
    temp_v1 = arg0->unk4;
    temp_t3 = (temp_v1 << 0x18) | ((temp_v1 << 8) & 0xFF0000) | ((temp_v1 >> 8) & 0xFF00) | (temp_v1 >> 0x18);
    arg0->unk0 = (s32) ((temp_v0 << 0x18) | ((temp_v0 << 8) & 0xFF0000) | ((temp_v0 >> 8) & 0xFF00) | ((u32) temp_v0 >> 0x18));
    arg0->unk4 = temp_t3;
    arg0->unk4 = (u32) ((temp_t3 << 0x18) | ((temp_t3 << 8) & 0xFF0000) | ((temp_t3 >> 8) & 0xFF00) | (temp_t3 >> 0x18));
}

void swap_rel_dyn(void *arg0, s32 arg1) {
    u32 temp_v0;
    u32 temp_v1;

    temp_v0 = arg0->unk0;
    temp_v1 = arg0->unk4;
    arg0->unk0 = (u32) ((temp_v0 << 0x18) | ((temp_v0 << 8) & 0xFF0000) | ((temp_v0 >> 8) & 0xFF00) | (temp_v0 >> 0x18));
    arg0->unk4 = (u32) ((temp_v1 << 0x18) | ((temp_v1 << 8) & 0xFF0000) | ((temp_v1 >> 8) & 0xFF00) | (temp_v1 >> 0x18));
}

void swap_reginfo(void *arg0, s32 arg1) {
    s32 temp_v1_2;
    u32 temp_a1;
    u32 temp_a2;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v1;

    temp_v0 = arg0->unk0;
    temp_v1 = arg0->unk4;
    temp_a1 = arg0->unk8;
    temp_a2 = arg0->unkC;
    arg0->unk0 = (u32) ((temp_v0 << 0x18) | ((temp_v0 << 8) & 0xFF0000) | ((temp_v0 >> 8) & 0xFF00) | (temp_v0 >> 0x18));
    temp_v0_2 = arg0->unk10;
    arg0->unk4 = (u32) ((temp_v1 >> 0x18) | (temp_v1 << 0x18) | ((temp_v1 << 8) & 0xFF0000) | ((temp_v1 >> 8) & 0xFF00));
    arg0->unk8 = (u32) ((temp_a1 >> 0x18) | (temp_a1 << 0x18) | ((temp_a1 << 8) & 0xFF0000) | ((temp_a1 >> 8) & 0xFF00));
    temp_v1_2 = arg0->unk14;
    arg0->unkC = (u32) ((temp_a2 >> 0x18) | (temp_a2 << 0x18) | ((temp_a2 << 8) & 0xFF0000) | ((temp_a2 >> 8) & 0xFF00));
    arg0->unk10 = (u32) ((temp_v0_2 >> 0x18) | (temp_v0_2 << 0x18) | ((temp_v0_2 << 8) & 0xFF0000) | ((temp_v0_2 >> 8) & 0xFF00));
    arg0->unk14 = (s32) ((temp_v1_2 << 0x18) | ((temp_v1_2 << 8) & 0xFF0000) | ((temp_v1_2 >> 8) & 0xFF00) | ((u32) temp_v1_2 >> 0x18));
}

void swap_dynsym(void *arg0, s32 arg1) {
    u16 temp_t3;
    u32 temp_a1;
    u32 temp_v0;
    u32 temp_v1;

    temp_v0 = arg0->unk0;
    temp_v1 = arg0->unk4;
    temp_a1 = arg0->unk8;
    arg0->unk4 = (u32) ((temp_v1 << 0x18) | ((temp_v1 << 8) & 0xFF0000) | ((temp_v1 >> 8) & 0xFF00) | (temp_v1 >> 0x18));
    temp_t3 = arg0->unkE;
    arg0->unk0 = (u32) ((temp_v0 << 0x18) | ((temp_v0 << 8) & 0xFF0000) | ((temp_v0 >> 8) & 0xFF00) | (temp_v0 >> 0x18));
    arg0->unk8 = (u32) ((temp_a1 << 0x18) | ((temp_a1 << 8) & 0xFF0000) | ((temp_a1 >> 8) & 0xFF00) | (temp_a1 >> 0x18));
    arg0->unkE = (u16) ((temp_t3 << 8) | (temp_t3 >> 8));
}

void swap_conflict(u32 *arg0, s32 arg1) {
    u32 temp_v0;

    temp_v0 = *arg0;
    *arg0 = (temp_v0 >> 0x18) | (temp_v0 << 0x18) | ((temp_v0 << 8) & 0xFF0000) | ((temp_v0 >> 8) & 0xFF00);
}

void swap_got(u32 *arg0, ? arg1) {
    u32 temp_v0;

    temp_v0 = *arg0;
    *arg0 = (temp_v0 << 0x18) | ((temp_v0 << 8) & 0xFF0000) | ((temp_v0 >> 8) & 0xFF00) | (temp_v0 >> 0x18);
}

void swap_liblist(void *arg0, s32 arg1) {
    u32 temp_a1;
    u32 temp_a2;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v1;

    temp_v0 = arg0->unk0;
    temp_v1 = arg0->unk4;
    temp_a1 = arg0->unk8;
    temp_a2 = arg0->unkC;
    arg0->unk0 = (u32) ((temp_v0 << 0x18) | ((temp_v0 << 8) & 0xFF0000) | ((temp_v0 >> 8) & 0xFF00) | (temp_v0 >> 0x18));
    temp_v0_2 = arg0->unk10;
    arg0->unk4 = (u32) ((temp_v1 << 0x18) | ((temp_v1 << 8) & 0xFF0000) | ((temp_v1 >> 8) & 0xFF00) | (temp_v1 >> 0x18));
    arg0->unk8 = (u32) ((temp_a1 << 0x18) | ((temp_a1 << 8) & 0xFF0000) | ((temp_a1 >> 8) & 0xFF00) | (temp_a1 >> 0x18));
    arg0->unkC = (u32) ((temp_a2 << 0x18) | ((temp_a2 << 8) & 0xFF0000) | ((temp_a2 >> 8) & 0xFF00) | (temp_a2 >> 0x18));
    arg0->unk10 = (u32) ((temp_v0_2 << 0x18) | ((temp_v0_2 << 8) & 0xFF0000) | ((temp_v0_2 >> 8) & 0xFF00) | (temp_v0_2 >> 0x18));
}

void swap_msym(void *arg0, ? arg1) {
    u32 temp_v0;
    u32 temp_v1;

    temp_v0 = arg0->unk0;
    temp_v1 = arg0->unk4;
    arg0->unk0 = (u32) ((temp_v0 << 0x18) | ((temp_v0 << 8) & 0xFF0000) | ((temp_v0 >> 8) & 0xFF00) | (temp_v0 >> 0x18));
    arg0->unk4 = (u32) ((temp_v1 << 0x18) | ((temp_v1 << 8) & 0xFF0000) | ((temp_v1 >> 8) & 0xFF00) | (temp_v1 >> 0x18));
}

void swap_ehdr(struct filehdr *arg0) {
    u16 temp_a1_2;
    u16 temp_a2_2;
    u16 temp_a3_2;
    u16 temp_t0;
    u16 temp_t8;
    u16 temp_v0;
    u16 temp_v0_3;
    u16 temp_v1;
    u32 temp_a1;
    u32 temp_a2;
    u32 temp_a3;
    u32 temp_v0_2;
    u32 temp_v1_2;

    temp_v0 = arg0->unk10;
    temp_v1 = arg0->unk12;
    temp_a1 = arg0->unk14;
    temp_a2 = arg0->unk18;
    arg0->unk10 = (u16) ((temp_v0 << 8) | (temp_v0 >> 8));
    arg0->unk12 = (u16) ((temp_v1 << 8) | (temp_v1 >> 8));
    temp_a3 = arg0->unk1C;
    arg0->unk14 = (u32) ((temp_a1 << 0x18) | ((temp_a1 << 8) & 0xFF0000) | ((temp_a1 >> 8) & 0xFF00) | (temp_a1 >> 0x18));
    temp_v0_2 = arg0->unk20;
    arg0->unk18 = (u32) ((temp_a2 << 0x18) | ((temp_a2 << 8) & 0xFF0000) | ((temp_a2 >> 8) & 0xFF00) | (temp_a2 >> 0x18));
    temp_v1_2 = arg0->unk24;
    arg0->unk1C = (u32) ((temp_a3 << 0x18) | ((temp_a3 << 8) & 0xFF0000) | ((temp_a3 >> 8) & 0xFF00) | (temp_a3 >> 0x18));
    arg0->unk20 = (u32) ((temp_v0_2 << 0x18) | ((temp_v0_2 << 8) & 0xFF0000) | ((temp_v0_2 >> 8) & 0xFF00) | (temp_v0_2 >> 0x18));
    temp_a1_2 = arg0->unk28;
    temp_a2_2 = arg0->unk2A;
    temp_a3_2 = arg0->unk2C;
    temp_t0 = arg0->unk2E;
    arg0->unk24 = (u32) ((temp_v1_2 << 0x18) | ((temp_v1_2 << 8) & 0xFF0000) | ((temp_v1_2 >> 8) & 0xFF00) | (temp_v1_2 >> 0x18));
    temp_v0_3 = arg0->unk30;
    temp_t8 = arg0->unk32;
    arg0->unk28 = (u16) ((temp_a1_2 << 8) | (temp_a1_2 >> 8));
    arg0->unk2A = (u16) ((temp_a2_2 << 8) | (temp_a2_2 >> 8));
    arg0->unk2C = (u16) ((temp_a3_2 << 8) | (temp_a3_2 >> 8));
    arg0->unk2E = (u16) ((temp_t0 << 8) | (temp_t0 >> 8));
    arg0->unk30 = (u16) (((temp_v0_3 & 0xFF) << 8) | (temp_v0_3 >> 8));
    arg0->unk32 = (u16) ((temp_t8 << 8) | (temp_t8 >> 8));
}

void swap_phdr(void *arg0) {
    u32 temp_a1;
    u32 temp_a1_2;
    u32 temp_a2;
    u32 temp_a2_2;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v1;
    u32 temp_v1_2;

    temp_v0 = arg0->unk0;
    temp_v1 = arg0->unk4;
    temp_a1 = arg0->unk8;
    temp_a2 = arg0->unkC;
    arg0->unk0 = (u32) ((temp_v0 << 0x18) | ((temp_v0 << 8) & 0xFF0000) | ((temp_v0 >> 8) & 0xFF00) | (temp_v0 >> 0x18));
    temp_v0_2 = arg0->unk10;
    arg0->unk4 = (u32) ((temp_v1 << 0x18) | ((temp_v1 << 8) & 0xFF0000) | ((temp_v1 >> 8) & 0xFF00) | (temp_v1 >> 0x18));
    temp_v1_2 = arg0->unk14;
    arg0->unk8 = (u32) ((temp_a1 << 0x18) | ((temp_a1 << 8) & 0xFF0000) | ((temp_a1 >> 8) & 0xFF00) | (temp_a1 >> 0x18));
    temp_a1_2 = arg0->unk18;
    arg0->unkC = (u32) ((temp_a2 << 0x18) | ((temp_a2 << 8) & 0xFF0000) | ((temp_a2 >> 8) & 0xFF00) | (temp_a2 >> 0x18));
    temp_a2_2 = arg0->unk1C;
    arg0->unk10 = (u32) ((temp_v0_2 << 0x18) | ((temp_v0_2 << 8) & 0xFF0000) | ((temp_v0_2 >> 8) & 0xFF00) | (temp_v0_2 >> 0x18));
    arg0->unk14 = (u32) ((temp_v1_2 << 0x18) | ((temp_v1_2 << 8) & 0xFF0000) | ((temp_v1_2 >> 8) & 0xFF00) | (temp_v1_2 >> 0x18));
    arg0->unk18 = (u32) ((temp_a1_2 << 0x18) | ((temp_a1_2 << 8) & 0xFF0000) | ((temp_a1_2 >> 8) & 0xFF00) | (temp_a1_2 >> 0x18));
    arg0->unk1C = (u32) ((temp_a2_2 << 0x18) | ((temp_a2_2 << 8) & 0xFF0000) | ((temp_a2_2 >> 8) & 0xFF00) | (temp_a2_2 >> 0x18));
}

void swap_shdr(void *arg0) {
    u32 temp_a1;
    u32 temp_a1_2;
    u32 temp_a2;
    u32 temp_a2_2;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v0_3;
    u32 temp_v1;
    u32 temp_v1_2;
    u32 temp_v1_3;

    temp_v0 = arg0->unk0;
    temp_v1 = arg0->unk4;
    temp_a1 = arg0->unk8;
    temp_a2 = arg0->unkC;
    arg0->unk0 = (u32) ((temp_v0 << 0x18) | ((temp_v0 << 8) & 0xFF0000) | ((temp_v0 >> 8) & 0xFF00) | (temp_v0 >> 0x18));
    temp_v0_2 = arg0->unk10;
    arg0->unk4 = (u32) ((temp_v1 << 0x18) | ((temp_v1 << 8) & 0xFF0000) | ((temp_v1 >> 8) & 0xFF00) | (temp_v1 >> 0x18));
    temp_v1_2 = arg0->unk14;
    arg0->unk8 = (u32) ((temp_a1 << 0x18) | ((temp_a1 << 8) & 0xFF0000) | ((temp_a1 >> 8) & 0xFF00) | (temp_a1 >> 0x18));
    temp_a1_2 = arg0->unk18;
    arg0->unkC = (u32) ((temp_a2 << 0x18) | ((temp_a2 << 8) & 0xFF0000) | ((temp_a2 >> 8) & 0xFF00) | (temp_a2 >> 0x18));
    temp_a2_2 = arg0->unk1C;
    arg0->unk10 = (u32) ((temp_v0_2 << 0x18) | ((temp_v0_2 << 8) & 0xFF0000) | ((temp_v0_2 >> 8) & 0xFF00) | (temp_v0_2 >> 0x18));
    temp_v0_3 = arg0->unk20;
    arg0->unk14 = (u32) ((temp_v1_2 << 0x18) | ((temp_v1_2 << 8) & 0xFF0000) | ((temp_v1_2 >> 8) & 0xFF00) | (temp_v1_2 >> 0x18));
    temp_v1_3 = arg0->unk24;
    arg0->unk18 = (u32) ((temp_a1_2 << 0x18) | ((temp_a1_2 << 8) & 0xFF0000) | ((temp_a1_2 >> 8) & 0xFF00) | (temp_a1_2 >> 0x18));
    arg0->unk1C = (u32) ((temp_a2_2 << 0x18) | ((temp_a2_2 << 8) & 0xFF0000) | ((temp_a2_2 >> 8) & 0xFF00) | (temp_a2_2 >> 0x18));
    arg0->unk20 = (u32) ((temp_v0_3 << 0x18) | ((temp_v0_3 << 8) & 0xFF0000) | ((temp_v0_3 >> 8) & 0xFF00) | (temp_v0_3 >> 0x18));
    arg0->unk24 = (u32) ((temp_v1_3 << 0x18) | ((temp_v1_3 << 8) & 0xFF0000) | ((temp_v1_3 >> 8) & 0xFF00) | (temp_v1_3 >> 0x18));
}

s32 procedure_symbol(s32 *(*arg0)(?, s32 *, u32), s32 arg1) {
    s32 sp24;
    u32 sp20;
    s32 temp_a2;
    s32 temp_v1;
    s32 var_v1;
    u32 temp_v0_2;
    void *temp_v0;

    if ((arg1 < 0) && (-arg1 < 0x10)) {
        return B_1001A230[-arg1].unk4;
    }
    temp_v0 = arg0->unk9C;
    if ((temp_v0 == NULL) || (temp_a2 = arg0->unkD4, (((u32) (arg1 - temp_a2) < (u32) temp_v0->unk18) == 0))) {
        return -1;
    }
    temp_v1 = (arg0->unkA4 + (arg1 * 0x34) + -(temp_a2 * 0x34))->unk4;
    if (temp_v1 == -1) {
        return -1;
    }
    sp24 = temp_v1;
    temp_v0_2 = procedure_to_file(temp_a2);
    sp20 = temp_v0_2;
    if (file_symbol_count(arg0, temp_v0_2) == 0) {
        var_v1 = temp_v1 + arg0->unkD8;
    } else {
        sp24 = temp_v1;
        var_v1 = temp_v1 + file_symbol(arg0, sp20);
    }
    return var_v1;
}

struct _struct_B_1001A230_0x34 *procedure_ppd(void *arg0, s32 arg1) {
    u32 temp_v1;
    void *temp_v0;

    if ((arg1 < 0) && (-arg1 < 0x10)) {
        return &B_1001A230[-arg1];
    }
    temp_v0 = arg0->unk9C;
    if ((temp_v0 == NULL) || (temp_v1 = arg1 - arg0->unkD4, ((temp_v1 < (u32) temp_v0->unk18) == 0))) {
        return NULL;
    }
    return arg0->unkA4 + (temp_v1 * 0x34);
}

u32 procedure_address(s32 *(*arg0)(?, s32 *, u32), s32 arg1) {
    s32 temp_v0;
    void *temp_v0_2;

    if (arg1 < 0) {
        if (-arg1 >= 0x10) {
            return -1U;
        }
        goto block_7;
    }
    if ((arg0 == NULL) || (temp_v0_2 = arg0->unk9C, (temp_v0_2 == NULL)) || ((u32) (arg1 - arg0->unkD4) >= (u32) temp_v0_2->unk18)) {
        return -1U;
    }
block_7:
    temp_v0 = procedure_symbol();
    if (temp_v0 == -1) {
        if (arg1 < 0) {
            return B_1001A230[-arg1].unk0;
        }
        return *(arg0->unkA4 + (arg1 * 0x34) + -(arg0->unkD4 * 0x34));
    }
    return symbol_value(arg0, temp_v0, temp_v0);
}

s32 procedure_iline(void *arg0, s32 arg1) {
    void *temp_v0;

    if (arg1 < 0) {
        if (-arg1 >= 0x10) {
            return -1;
        }
        goto block_7;
    }
    if ((arg0 == NULL) || (temp_v0 = arg0->unk9C, (temp_v0 == NULL)) || ((u32) (arg1 - arg0->unkD4) >= (u32) temp_v0->unk18)) {
        return -1;
    }
block_7:
    if (arg1 < 0) {
        return B_1001A230[-arg1].unk8;
    }
    return (arg0->unkA4 + (arg1 * 0x34) + -(arg0->unkD4 * 0x34))->unk8;
}

s32 procedure_lnLow(void *arg0, s32 arg1) {
    void *temp_v0;

    if (arg1 < 0) {
        if (-arg1 >= 0x10) {
            return -1;
        }
        goto block_7;
    }
    if ((arg0 == NULL) || (temp_v0 = arg0->unk9C, (temp_v0 == NULL)) || ((u32) (arg1 - arg0->unkD4) >= (u32) temp_v0->unk18)) {
        return -1;
    }
block_7:
    if (arg1 < 0) {
        return B_1001A230[-arg1].unk28;
    }
    return (arg0->unkA4 + (arg1 * 0x34) + -(arg0->unkD4 * 0x34))->unk28;
}

s32 procedure_lnHigh(void *arg0, s32 arg1) {
    void *temp_v0;

    if (arg1 < 0) {
        if (-arg1 >= 0x10) {
            return -1;
        }
        goto block_7;
    }
    if ((arg0 == NULL) || (temp_v0 = arg0->unk9C, (temp_v0 == NULL)) || ((u32) (arg1 - arg0->unkD4) >= (u32) temp_v0->unk18)) {
        return -1;
    }
block_7:
    if (arg1 < 0) {
        return B_1001A230[-arg1].unk2C;
    }
    return (arg0->unkA4 + (arg1 * 0x34) + -(arg0->unkD4 * 0x34))->unk2C;
}

s32 procedure_cbLineOffset(void *arg0, s32 arg1) {
    void *temp_v0;

    if (arg1 < 0) {
        if (-arg1 >= 0x10) {
            return -1;
        }
        goto block_7;
    }
    if ((arg0 == NULL) || (temp_v0 = arg0->unk9C, (temp_v0 == NULL)) || ((u32) (arg1 - arg0->unkD4) >= (u32) temp_v0->unk18)) {
        return -1;
    }
block_7:
    if (arg1 < 0) {
        return B_1001A230[-arg1].unk30;
    }
    return (arg0->unkA4 + (arg1 * 0x34) + -(arg0->unkD4 * 0x34))->unk30;
}

s32 address_to_procedure(s32 *(*arg0)(?, s32 *, u32), u32 arg1) {
    s32 sp44;
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_s0;
    s32 temp_s0_2;
    s32 temp_s4;
    s32 temp_s4_2;
    s32 temp_s5;
    s32 temp_s5_2;
    s32 temp_v1;
    s32 var_s0;
    s32 var_s1;
    s32 var_s1_2;
    s32 var_s2;
    s32 var_s2_2;
    s32 var_s3;
    s32 var_s3_2;
    u32 temp_v0_2;
    u32 temp_v0_3;
    void *temp_v0;
    void *temp_v1_2;
    void *var_v0;

    if (address_to_section() == NULL) {
        return -1;
    }
    temp_v0 = arg0->unk9C;
    temp_a3 = arg0->unkD4;
    var_s2 = temp_a3;
    if (temp_v0 == NULL) {
        return -1;
    }
    temp_a2 = arg0->unk198;
    temp_v1 = temp_v0->unk18;
    var_s3 = var_s2;
    if (temp_a2 != 0) {
        temp_a0 = temp_v1 - 1;
        var_s2_2 = 0;
        var_s3_2 = 0;
        var_s1 = temp_a0;
        if (temp_a0 > 0) {
loop_6:
            temp_s0 = (s32) (var_s2_2 + var_s1) / 2;
            temp_v1_2 = temp_a2 + (temp_s0 * 8);
            temp_v0_2 = temp_v1_2->unk4;
            var_s3_2 = temp_s0;
            temp_s4 = var_s2_2;
            temp_s5 = var_s1;
            if (arg1 < temp_v0_2) {
                var_s1 = var_s3_2;
                goto block_11;
            }
            if ((arg1 < temp_v0_2) || ((var_s2_2 = var_s3_2, (temp_s0 != var_s1)) && (arg1 >= (u32) temp_v1_2->unkC))) {
block_11:
                if (((var_s2_2 != temp_s4) || (var_s1 != temp_s5)) && (var_s2_2 < var_s1)) {
                    goto loop_6;
                }
            }
        }
        if (var_s3_2 < temp_a0) {
            var_v0 = temp_a2 + (var_s3_2 * 8);
            if (arg1 >= (u32) var_v0->unkC) {
loop_16:
                var_s3_2 += 1;
                var_v0 += 8;
                if (var_s3_2 < temp_a0) {
                    if (arg1 >= (u32) var_v0->unkC) {
                        goto loop_16;
                    }
                }
            }
        }
        var_s3 = *(temp_a2 + (var_s3_2 * 8)) + temp_a3;
    } else {
        var_s1_2 = (temp_v1 + var_s2) - 1;
        sp44 = var_s1_2;
        if (var_s2 < var_s1_2) {
loop_20:
            temp_s0_2 = (s32) (var_s2 + var_s1_2) / 2;
            var_s3 = temp_s0_2;
            temp_s4_2 = var_s2;
            temp_s5_2 = var_s1_2;
            temp_v0_3 = procedure_address(arg0, temp_s0_2);
            if (arg1 < temp_v0_3) {
                var_s1_2 = var_s3;
                goto block_26;
            }
            if (arg1 >= temp_v0_3) {
                if ((temp_s0_2 != var_s1_2) && (arg1 >= procedure_address(arg0, temp_s0_2 + 1))) {
                    var_s2 = var_s3;
                    goto block_26;
                }
            } else {
block_26:
                if (((var_s2 != temp_s4_2) || (var_s1_2 != temp_s5_2)) && (var_s2 < var_s1_2)) {
                    goto loop_20;
                }
            }
        }
        if (var_s3 < sp44) {
            var_s0 = var_s3 + 1;
            if (arg1 >= procedure_address(arg0, var_s0)) {
loop_31:
                var_s3 = var_s0;
                if (var_s0 < sp44) {
                    var_s0 += 1;
                    if (arg1 >= procedure_address(arg0, var_s0)) {
                        goto loop_31;
                    }
                }
            }
        }
    }
    if (arg1 < procedure_address(arg0, var_s3)) {
        return -1;
    }
    return var_s3;
}

s32 foreach_obj_procedure(void *arg0, s32 (*arg1)(void *, u32, ?), ? arg2) {
    s32 temp_v0;
    u32 temp_s1;
    u32 var_s0;
    void *temp_a0;

    if ((arg0 == NULL) || (temp_a0 = arg0->unk9C, (temp_a0 == NULL))) {
        goto block_7;
    }
    var_s0 = arg0->unkD4;
    temp_s1 = var_s0 + temp_a0->unk18;
    if (var_s0 < temp_s1) {
loop_4:
        temp_v0 = arg1(arg0, var_s0, arg2);
        if (temp_v0 != -1) {
            return temp_v0;
        }
        var_s0 += 1;
        if (var_s0 >= temp_s1) {
            goto block_7;
        }
        goto loop_4;
    }
block_7:
    return -1;
}

s32 foreach_procedure(void *arg0, s32 arg1, s32 (*arg2)(void *, u32, ?), ? arg3) {
    s32 temp_v0;
    u32 temp_s1;
    u32 var_s0;
    void *temp_v1;

    if ((arg0 == NULL) || (arg0->unk9C == 0)) {
        goto block_7;
    }
    temp_v1 = arg0->unkA0 + (arg1 * 0x48) + -(arg0->unkD0 * 0x48);
    var_s0 = temp_v1->unk28 + arg0->unkD4;
    temp_s1 = var_s0 + temp_v1->unk2A;
    if (var_s0 < temp_s1) {
loop_4:
        temp_v0 = arg2(arg0, var_s0, arg3);
        if (temp_v0 != -1) {
            return temp_v0;
        }
        var_s0 += 1;
        if (var_s0 >= temp_s1) {
            goto block_7;
        }
        goto loop_4;
    }
block_7:
    return -1;
}

s32 newprocedure(u32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    s32 temp_lo;
    struct _struct_B_1001A230_0x34 *temp_a0;

    if (-D_10015B30 >= 0x10) {
        return -1;
    }
    temp_a0 = &B_1001A230[-D_10015B30];
    temp_lo = (s32) (B_1001A230 - temp_a0) / 52;
    D_10015B30 -= 1;
    temp_a0->unk4 = arg1;
    temp_a0->unk8 = arg2;
    temp_a0->unk28 = arg3;
    temp_a0->unk0 = arg0;
    temp_a0->unk2C = arg4;
    return temp_lo;
}

u32 symbol_to_file(s32 *(*arg0)(?, s32 *, u32), u32 arg1) {
    s32 temp_a2;
    s32 var_v1;
    u32 temp_a1;
    u32 temp_t0;
    u32 temp_t0_2;
    u32 temp_v1;
    void *temp_a3;
    void *temp_v0;
    void *var_a3;

    temp_v1 = arg0->unkD8;
    if (arg1 >= temp_v1) {
        return (arg0->unkAC + (arg1 * 0x10) + -(temp_v1 * 0x10))->unk2 + arg0->unkD0;
    }
    temp_v0 = arg0->unk9C;
    temp_a2 = temp_v0->unk48;
    temp_a1 = arg1 - arg0->unkCC;
    if (B_1001A570 < temp_a2) {
        temp_a3 = arg0->unkA0 + (B_1001A570 * 0x48);
        temp_t0 = temp_a3->unk10;
        if ((temp_a1 >= temp_t0) && (temp_a1 < (u32) (temp_a3->unk14 + temp_t0))) {
            return B_1001A570 + arg0->unkD0;
        }
    }
    if (temp_a1 >= (u32) temp_v0->unk20) {
        return -1U;
    }
    var_v1 = 0;
    B_1001A570 = 0;
    if (temp_a2 > 0) {
        var_a3 = arg0->unkA0;
loop_10:
        temp_t0_2 = var_a3->unk10;
        if ((temp_a1 >= temp_t0_2) && (temp_a1 < (u32) (var_a3->unk14 + temp_t0_2))) {
            B_1001A570 = var_v1;
            return var_v1 + arg0->unkD0;
        }
        var_v1 += 1;
        var_a3 += 0x48;
        if (var_v1 >= temp_a2) {
            B_1001A570 = var_v1;
            /* Duplicate return node #15. Try simplifying control flow for better match */
            return -1U;
        }
        goto loop_10;
    }
    return -1U;
}

u32 type_to_file(s32 *arg0, s32 *arg1) {
    s32 temp_a2;
    s32 var_v1;
    u32 temp_a1;
    u32 temp_t0;
    u32 temp_t0_2;
    void *temp_a3;
    void *temp_v0;
    void *var_a3;

    temp_v0 = arg0->unk9C;
    temp_a2 = temp_v0->unk48;
    temp_a1 = arg1 - arg0->unkC8;
    if (B_1001A574 < temp_a2) {
        temp_a3 = arg0->unkA0 + (B_1001A574 * 0x48);
        temp_t0 = temp_a3->unk2C;
        if ((temp_a1 >= temp_t0) && (temp_a1 < (u32) (temp_a3->unk30 + temp_t0))) {
            return B_1001A574 + arg0->unkD0;
        }
    }
    if (temp_a1 >= (u32) temp_v0->unk30) {
        return -1U;
    }
    var_v1 = 0;
    B_1001A574 = 0;
    if (temp_a2 > 0) {
        var_a3 = arg0->unkA0;
loop_8:
        temp_t0_2 = var_a3->unk2C;
        if ((temp_a1 >= temp_t0_2) && (temp_a1 < (u32) (var_a3->unk30 + temp_t0_2))) {
            B_1001A574 = var_v1;
            return var_v1 + arg0->unkD0;
        }
        var_v1 += 1;
        var_a3 += 0x48;
        if (var_v1 >= temp_a2) {
            B_1001A574 = var_v1;
            /* Duplicate return node #13. Try simplifying control flow for better match */
            return -1U;
        }
        goto loop_8;
    }
    return -1U;
}

u32 procedure_to_file(void *arg0, s32 arg1) {
    s32 temp_a2;
    s32 var_v1;
    u16 temp_t0;
    u16 temp_t0_2;
    u32 temp_a1;
    void *temp_a3;
    void *temp_v0;
    void *var_a3;

    temp_v0 = arg0->unk9C;
    temp_a2 = temp_v0->unk48;
    temp_a1 = arg1 - arg0->unkD4;
    if (B_1001A578 < temp_a2) {
        temp_a3 = arg0->unkA0 + (B_1001A578 * 0x48);
        temp_t0 = temp_a3->unk28;
        if ((temp_a1 >= temp_t0) && (temp_a1 < (u32) (temp_a3->unk2A + temp_t0))) {
            return B_1001A578 + arg0->unkD0;
        }
    }
    if (temp_a1 >= (u32) temp_v0->unk18) {
        return -1U;
    }
    var_v1 = 0;
    B_1001A578 = 0;
    if (temp_a2 > 0) {
        var_a3 = arg0->unkA0;
loop_8:
        temp_t0_2 = var_a3->unk28;
        if ((temp_a1 >= temp_t0_2) && (temp_a1 < (u32) (var_a3->unk2A + temp_t0_2))) {
            B_1001A578 = var_v1;
            return var_v1 + arg0->unkD0;
        }
        var_v1 += 1;
        var_a3 += 0x48;
        if (var_v1 >= temp_a2) {
            B_1001A578 = var_v1;
            /* Duplicate return node #13. Try simplifying control flow for better match */
            return -1U;
        }
        goto loop_8;
    }
    return -1U;
}

s32 file_pfd(void *arg0, s32 arg1) {
    return arg0->unkA0 + ((arg1 - arg0->unkD0) * 0x48);
}

u32 file_symbol(s32 *(*arg0)(?, s32 *, u32), u32 arg1) {
    void *temp_v1;

    temp_v1 = arg0->unkA0 + (arg1 * 0x48) + -(arg0->unkD0 * 0x48);
    if (temp_v1->unk14 == 0) {
        return -1U;
    }
    return temp_v1->unk10 + arg0->unkCC;
}

s32 file_lineindex(void *arg0, s32 arg1) {
    void *temp_v1;

    temp_v1 = arg0->unkA0 + (arg1 * 0x48) + -(arg0->unkD0 * 0x48);
    if (temp_v1->unk1C <= 0) {
        return -1;
    }
    return temp_v1->unk18;
}

s32 file_cline(void *arg0, s32 arg1) {
    return (arg0->unkA0 + (arg1 * 0x48) + -(arg0->unkD0 * 0x48))->unk1C;
}

s32 file_cbLineOffset(void *arg0, s32 arg1) {
    return (arg0->unkA0 + (arg1 * 0x48) + -(arg0->unkD0 * 0x48))->unk40;
}

u32 file_lang(s32 *(*arg0)(?, s32 *, u32), u32 arg1) {
    return (u32) (arg0->unkA0 + (arg1 * 0x48) + -(arg0->unkD0 * 0x48))->unk3C >> 0x1B;
}

u32 file_glevel(void *arg0, s32 arg1) {
    return (u8) (arg0->unkA0 + (arg1 * 0x48) + -(arg0->unkD0 * 0x48))->unk3D >> 6;
}

s32 file_symbol_count(s32 *(*arg0)(?, s32 *, u32), u32 arg1) {
    return (arg0->unkA0 + (arg1 * 0x48) + -(arg0->unkD0 * 0x48))->unk14;
}

s32 file_type_base(s32 *(*arg0)(?, s32 *, u32), u32 arg1) {
    return (arg0->unkA0 + (arg1 * 0x48) + -(arg0->unkD0 * 0x48))->unk2C + arg0->unkC8;
}

s32 file_string_base(s32 *(*arg0)(?, s32 *, u32), u32 arg1) {
    return (arg0->unkA0 + (arg1 * 0x48) + -(arg0->unkD0 * 0x48))->unk8 + arg0->unkB4;
}

s32 foreach_rfd(s32 *(*arg0)(?, s32 *, u32), u32 arg1, s32 (*arg2)(s32 *(*)(?, s32 *, u32), u32, s8 *, s32, s32), s8 *arg3, s32 arg4, s32 arg5) {
    s32 temp_t1;
    s32 temp_v0;
    s32 temp_v0_2;
    u32 temp_fp;
    u32 temp_s0;
    u32 temp_t0;
    u32 temp_v1;
    u32 var_s0;
    u32 var_s1;
    void *temp_v0_3;

    temp_v1 = arg0->unkD0;
    temp_v0_3 = arg0->unkA0 + (arg1 * 0x48) + -(temp_v1 * 0x48);
    temp_t1 = temp_v0_3->unk38;
    temp_t0 = (temp_v0_3->unk34 * 4) + arg0->unkBC;
    if (temp_t1 == 0) {
        var_s0 = temp_v1;
        if (temp_v1 < (u32) (temp_v1 + arg0->unk9C->unk48)) {
loop_2:
            temp_v0_2 = arg2(arg0, var_s0, arg3, arg4, arg5);
            if (temp_v0_2 != -1) {
                return temp_v0_2;
            }
            var_s0 += 1;
            if (var_s0 >= (u32) (arg0->unkD0 + arg0->unk9C->unk48)) {
                goto block_12;
            }
            goto loop_2;
        }
        goto block_12;
    }
    temp_fp = (temp_t1 * 4) + temp_t0;
    var_s1 = temp_t0;
    if (temp_t0 < temp_fp) {
loop_8:
        temp_s0 = *var_s1 + arg0->unkD0;
        if (temp_s0 != arg1) {
            temp_v0 = arg2(arg0, temp_s0, arg3, arg4, arg5);
            if (temp_v0 != -1) {
                return temp_v0;
            }
        }
        var_s1 += 4;
        if (var_s1 >= temp_fp) {
            goto block_12;
        }
        goto loop_8;
    }
block_12:
    return -1;
}

s8 *st_file_name(void *arg0, u32 arg1) {
    if ((arg0->unkA0 + (arg1 * 0x48) + -(arg0->unkD0 * 0x48))->unkC == 0) {
        return NULL;
    }
    return (arg0->unkA0 + (arg1 * 0x48) + -(arg0->unkD0 * 0x48))->unk4 + file_string_base();
}

u32 address_to_file(s32 arg0) {
    s32 temp_v0;

    temp_v0 = address_to_procedure();
    if (temp_v0 == -1) {
        return -1U;
    }
    return procedure_to_file(arg0, temp_v0);
}

void *objList_add(void **arg0, s32 *(*arg1)(?, s32 *, u32), ? *arg2, s32 arg3) {
    void *temp_v0;
    void *temp_v1;
    void *temp_v1_2;

    temp_v0 = malloc(0xCU);
    if (temp_v0 == NULL) {
        return NULL;
    }
    temp_v0->unk0 = arg1;
    if ((arg3 == 0) || (temp_v1 = *arg0, (temp_v1 == NULL))) {
        temp_v0->unk4 = (void *) *arg0;
        temp_v1_2 = *arg0;
        if (temp_v1_2 == NULL) {
            temp_v0->unk8 = temp_v0;
        } else {
            temp_v0->unk8 = (void *) temp_v1_2->unk8;
            (*arg0)->unk8 = temp_v0;
        }
        *arg0 = temp_v0;
    } else {
        temp_v1->unk8->unk4 = temp_v0;
        temp_v0->unk8 = (void *) (*arg0)->unk8;
        (*arg0)->unk8 = temp_v0;
        temp_v0->unk4 = NULL;
    }
    return temp_v0;
}

s32 **objList_change(s32 **arg0, s32 *arg1, s32 arg2, ? arg3, s32 arg4) {
    s32 *sp2C;
    s32 *temp_v0;
    s32 *temp_v0_2;
    s32 *temp_v0_3;
    s32 *temp_v0_4;
    s32 *temp_v0_5;
    s32 *temp_v0_6;

    temp_v0 = malloc(0xCU);
    sp2C = temp_v0;
    if (temp_v0 == NULL) {
        return NULL;
    }
    *temp_v0 = arg2;
    switch (arg4) {
    case 1:
        temp_v0_2 = *arg0;
        if (temp_v0_2 == NULL) {
            sp2C->unk4 = temp_v0_2;
            sp2C->unk8 = sp2C;
            *arg0 = sp2C;
        } else {
            temp_v0_2->unk8->unk4 = sp2C;
            sp2C->unk8 = (s32 *) (*arg0)->unk8;
            (*arg0)->unk8 = sp2C;
            sp2C->unk4 = NULL;
        }
        break;
    case 2:
        if (arg1 == *arg0) {
            *arg0 = sp2C;
        } else {
            arg1->unk8->unk4 = sp2C;
        }
        sp2C->unk8 = (s32 *) arg1->unk8;
        arg1->unk8 = sp2C;
        sp2C->unk4 = arg1;
        break;
    case 3:
        temp_v0_3 = *arg0;
        if (arg1 == temp_v0_3->unk8) {
            temp_v0_3->unk8 = sp2C;
        } else {
            arg1->unk4->unk8 = sp2C;
        }
        sp2C->unk4 = (s32 *) arg1->unk4;
        arg1->unk4 = sp2C;
        sp2C->unk8 = arg1;
        break;
    case 4:
        sp2C = arg1->unk8;
        temp_v0_4 = *arg0;
        if (arg1 == temp_v0_4) {
            sp2C = temp_v0_4;
        } else {
            arg1->unk8->unk4 = (s32 *) arg1->unk4;
        }
        temp_v0_5 = arg1->unk4;
        if (temp_v0_5 != NULL) {
            temp_v0_5->unk8 = (s32 *) arg1->unk8;
        } else {
            (*arg0)->unk8 = (s32 *) arg1->unk8;
        }
        break;
    case 5:
        if (arg1 == *arg0) {
            *arg0 = sp2C;
        } else {
            arg1->unk8->unk4 = sp2C;
        }
        temp_v0_6 = arg1->unk4;
        if (temp_v0_6 != NULL) {
            temp_v0_6->unk8 = sp2C;
        } else {
            (*arg0)->unk8 = sp2C;
        }
        sp2C->unk8 = (s32 *) arg1->unk8;
        sp2C->unk4 = (s32 *) arg1->unk4;
        break;
    }
    return &sp2C;
}

u32 *foreach_obj(s32 *(*(*arg0)(s32 *(*)(?, s32 *, u32), u32, ?))(?, s32 *, u32), u32 *(*arg1)(s32 *(*)(?, s32 *, u32), u32 *, s32 *(*(*)(s32 *(*)(?, s32 *, u32), u32, ?))(?, s32 *, u32), s32 *(*(*)(s32 *(*)(?, s32 *, u32), u32, ?))(?, s32 *, u32)), u32 *arg2) {
    s32 *(*(*temp_s0)(s32 *(*)(?, s32 *, u32), u32, ?))(?, s32 *, u32);
    s32 *(*(*var_a3)(s32 *(*)(?, s32 *, u32), u32, ?))(?, s32 *, u32);
    u32 *temp_v0;

    var_a3 = arg0;
    if (arg0 != NULL) {
loop_2:
        temp_s0 = var_a3->unk4;
        temp_v0 = arg1(var_a3->unk0, arg2, var_a3, var_a3);
        if (temp_v0 != (u32 *)-1) {
            return temp_v0;
        }
        var_a3 = temp_s0;
        if (temp_s0 == NULL) {
            goto block_5;
        }
        goto loop_2;
    }
block_5:
    return (u32 *)-1;
}

s32 forall_previous_objs(void *arg0, s32 arg1, s32 (*arg2)(s32, s32, ?), ? arg3) {
    s32 temp_v0;
    void *var_s0;
    void *var_v0;
    void *var_v1;

    var_v1 = arg0;
    if ((arg0 != NULL) && (arg1 != arg0->unk0) && (arg0->unk4 != NULL)) {
        var_v0 = arg0->unk4;
loop_4:
        var_v1 = var_v0;
        if ((var_v0 != NULL) && (arg1 != var_v0->unk0)) {
            var_v0 = var_v0->unk4;
            if (var_v0 != NULL) {
                goto loop_4;
            }
        }
    }
    if ((var_v1 == NULL) || (arg1 != var_v1->unk0)) {
        goto block_14;
    }
    var_s0 = var_v1->unk8;
    if (var_s0 != arg0->unk8) {
loop_11:
        temp_v0 = arg2(var_s0->unk0, arg1, arg3);
        if (temp_v0 != -1) {
            return temp_v0;
        }
        var_s0 = var_s0->unk8;
        if (var_s0 == arg0->unk8) {
            goto block_14;
        }
        goto loop_11;
    }
block_14:
    return -1;
}

void *list_last(void *arg0) {
    void **temp_v1;

    if (arg0 != NULL) {
        temp_v1 = arg0->unk8;
        if (temp_v1 != NULL) {
            return *temp_v1;
        }
    }
    return (void *)-1;
}

s32 foreach_sublist(void *arg0, s32 (*arg1)(void *, ?), ? arg2) {
    s32 temp_v0;
    void *temp_s0;
    void *var_a0;

    var_a0 = arg0;
    if (var_a0 != NULL) {
loop_2:
        temp_s0 = var_a0->unk4;
        temp_v0 = arg1(var_a0, arg2);
        if (temp_v0 != -1) {
            return temp_v0;
        }
        var_a0 = temp_s0;
        if (temp_s0 == NULL) {
            goto block_5;
        }
        goto loop_2;
    }
block_5:
    return -1;
}

s32 *foreach_section(s32 *(*arg0)(?, s32 *, u32), s32 *(*arg1)(s32 *(*)(?, s32 *, u32), s32 *, s32), s32 arg2) {
    s32 *temp_v0;
    s32 *temp_v0_2;
    s32 var_s0;
    s32 var_s0_2;
    u32 var_s2;
    u32 var_s2_2;

    if (arg0->unk8C == 2) {
        var_s2 = 0;
        var_s0 = 0;
        if (arg0->unk90->unk2 != 0) {
loop_2:
            temp_v0_2 = arg1(arg0, arg0->unk98 + var_s0, arg2);
            if (temp_v0_2 != (s32 *)-1) {
                return temp_v0_2;
            }
            var_s2 += 1;
            var_s0 += 0x28;
            if (var_s2 >= (u16) arg0->unk90->unk2) {
                goto block_5;
            }
            goto loop_2;
        }
block_5:
        goto block_10;
    }
    var_s2_2 = 0;
    var_s0_2 = 0;
    if (arg0->unkE0->unk30 != 0) {
loop_7:
        temp_v0 = arg1(arg0, arg0->unkE8 + var_s0_2, arg2);
        if (temp_v0 != (s32 *)-1) {
            return temp_v0;
        }
        var_s2_2 += 1;
        var_s0_2 += 0x28;
        if (var_s2_2 >= (u16) arg0->unkE0->unk30) {
            goto block_10;
        }
        goto loop_7;
    }
block_10:
    return (s32 *)-1;
}

s32 *func_0042FCD8(s32 *(*arg0)(?, s32 *, u32), s32 *arg1, u32 arg2) {
    s32 sp30;
    u32 sp2C;
    s32 temp_s0;
    s32 temp_v0;
    s32 temp_v1;
    u32 temp_s0_2;
    u32 temp_t8;

    temp_s0 = obj_section_vaddr();
    sp2C = obj_text_start(arg0);
    temp_s0_2 = (temp_s0 + sp2C) - obj_base_address(arg0);
    temp_v0 = obj_section_size(arg0, arg1);
    temp_v1 = temp_v0;
    temp_t8 = temp_s0_2 + temp_v0;
    if ((arg2 >= temp_s0_2) && (arg2 < temp_t8)) {
        return arg1;
    }
    sp30 = temp_v1;
    if ((section_type(arg0, arg1, arg2) == (s32 *(*)(?, s32 *, u32))6) && (arg2 == (temp_s0_2 + temp_v1))) {
        return arg1;
    }
    return (s32 *)-1;
}

s32 *address_to_section(s32 *(*arg1)(s32 *(*)(?, s32 *, u32), s32 *, s32)) {
    s32 *temp_v0;

    temp_v0 = foreach_section(func_0042FCD8, arg1);
    if (temp_v0 == (s32 *)-1) {
        return NULL;
    }
    return temp_v0;
}

s32 *(*section_type(s32 *(*arg0)(?, s32 *, u32), s32 *arg1))(?, s32 *, u32) {
    s32 *sp20;
    s32 *temp_v0_3;
    s32 temp_v0;
    s32 temp_v0_2;

    temp_v0 = arg0->unk8C;
    if (temp_v0 == 2) {
        temp_v0_2 = arg1->unk24;
        switch (temp_v0_2) {                        /* irregular */
        case 0x20:
            return (s32 *(*)(?, s32 *, u32))1;
        case 0x40:
            return (s32 *(*)(?, s32 *, u32))3;
        case 0x80:
            return (s32 *(*)(?, s32 *, u32))6;
        case 0x100:
            return (s32 *(*)(?, s32 *, u32))2;
        case 0x200:
            return (s32 *(*)(?, s32 *, u32))4;
        case 0x400:
            return (s32 *(*)(?, s32 *, u32))5;
        case 0x8000000:
            return (s32 *(*)(?, s32 *, u32))8;
        case 0x10000000:
            return (s32 *(*)(?, s32 *, u32))9;
        case 0x80000000:
            return (s32 *(*)(?, s32 *, u32))7;
        }
    } else {
        if ((temp_v0 == 3) && (obj_pelfhdr()->unk20 != 0)) {
            temp_v0_3 = obj_section_name(arg0, arg1);
            if (temp_v0_3 != NULL) {
                sp20 = temp_v0_3;
                if (strcmp((s8 *) temp_v0_3, ".text") == 0) {
                    return (s32 *(*)(?, s32 *, u32))1;
                }
                if (strcmp((s8 *) sp20, ".data") == 0) {
                    return (s32 *(*)(?, s32 *, u32))3;
                }
                if (strcmp((s8 *) sp20, ".bss") == 0) {
                    return (s32 *(*)(?, s32 *, u32))6;
                }
                if (strcmp((s8 *) sp20, ".rodata") == 0) {
                    return (s32 *(*)(?, s32 *, u32))2;
                }
                if (strcmp((s8 *) sp20, ".sdata") == 0) {
                    return (s32 *(*)(?, s32 *, u32))4;
                }
                if (strcmp((s8 *) sp20, ".sbss") == 0) {
                    return (s32 *(*)(?, s32 *, u32))5;
                }
                if (strcmp((s8 *) sp20, ".lit8") == 0) {
                    return (s32 *(*)(?, s32 *, u32))8;
                }
                if (strcmp((s8 *) sp20, ".lit4") == 0) {
                    return (s32 *(*)(?, s32 *, u32))9;
                }
                if (strcmp((s8 *) sp20, ".init") == 0) {
                    return (s32 *(*)(?, s32 *, u32))7;
                }
                goto block_43;
            }
        }
block_43:
        return NULL;
    }
}

s32 section_raw(void *arg0, void *arg1) {
    if (arg1->unk10 == 0) {
        return 0;
    }
    return arg0->unkC4 + arg1->unk14;
}

s32 section_nrel(s32 *arg0, void *arg1) {
    void *temp_v0;

    if (arg1->unk18 == 0) {
        return 0;
    }
    if (arg1->unk24 & 0x20000000) {
        temp_v0 = section_rel(arg0);
        unksp28.unk0 = (s32) temp_v0->unk0;
        unksp28.unk4 = (s32) temp_v0->unk4;
        if (((s32) *arg0 >> 0x1F) != 0) {
            swap_reloc(&unksp28, 1, gethostsex());
        }
        return unksp28;
    }
    return (s32) arg1->unk20;
}

void *section_rel(s32 *arg0, void *arg1) {
    s32 temp_v1;

    temp_v1 = arg1->unk18;
    if (temp_v1 == 0) {
        return NULL;
    }
    return arg0->unkC4 + temp_v1;
}

s8 *find_section_byname(s32 *(*arg0)(?, s32 *, u32), s8 *arg1, s8 *arg2) {
    s32 sp54;
    s32 sp2C;
    s32 temp_v0;
    s32 var_v1;

    if (obj_otype() == 3) {
        temp_v0 = arg0->unk180;
        if (temp_v0 == 3) {
            obj_section(&sp54, arg0, obj_shstrndx(arg0));
            var_v1 = sp60;
            goto block_6;
        }
        if (temp_v0 == 1) {
            obj_section(&sp2C, arg0, obj_shstrndx(arg0));
            var_v1 = arg0->unkC4 + sp3C;
block_6:
            if (strcmp(arg2, *arg1 + var_v1) == 0) {
                return arg1;
            }
            goto block_13;
        }
        error("find_section_byname:OM_EXECUTE not supported\n");
        goto block_13;
    }
    if (obj_otype(arg0) == 2) {
        if (strncmp(arg2, arg1, 8U) == 0) {
            return arg1;
        }
        goto block_13;
    }
block_13:
    return (s8 *)-1;
}

s32 *find_section_bytype(s32 *(*arg0)(?, s32 *, u32), s32 *arg1, s32 arg2) {
    if (obj_otype() == 3) {
        if (arg2 == arg1->unk4) {
            return arg1;
        }
        goto block_6;
    }
    if ((obj_otype(arg0, arg1) == 2) && (arg2 == (arg1->unk24 & arg2))) {
        return arg1;
    }
block_6:
    return (s32 *)-1;
}

s32 *(*func_004303F0(s32 *(*arg0)(?, s32 *, u32), s32 *(*arg1)(s32 *(*)(?, s32 *, u32), s32 *, s32), ? arg2))(?, s32 *, u32) {
    s32 *temp_v0;

    temp_v0 = foreach_section(func_0042FCD8, arg1);
    if (temp_v0 != (s32 *)-1) {
        return section_type(arg0, temp_v0);
    }
    return (s32 *(*)(?, s32 *, u32))-1;
}

u32 *obj_section_type(u32 *(*arg1)(s32 *(*)(?, s32 *, u32), u32 *, s32 *(*(*)(s32 *(*)(?, s32 *, u32), u32, ?))(?, s32 *, u32), s32 *(*(*)(s32 *(*)(?, s32 *, u32), u32, ?))(?, s32 *, u32))) {
    u32 *temp_v0;

    temp_v0 = foreach_obj((s32 *(*(*)(s32 *(*)(?, s32 *, u32), u32, ?))(?, s32 *, u32)) func_004303F0, arg1);
    if (temp_v0 != (u32 *)-1) {
        return temp_v0;
    }
    return NULL;
}

void st_error(s8 *arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    fprintf(__iob + 0x20, "%s: Error: ", st_errname);
    fprintf(__iob + 0x20, arg0, arg1, arg2, arg3, arg4);
    fprintf(__iob + 0x20, "\n");
    exit(1);
}

s32 *func_00430580(s32 *(*arg0)(?, s32 *, u32), s32 *arg1, void *arg2) {
    s32 sp3C;
    s32 sp2C;
    ? *temp_t1;
    ? *temp_t5;
    ? *temp_t6;
    ? *temp_t7;
    ? *temp_t9;
    s32 *temp_v0_17;
    s32 temp_a0;
    s32 temp_a0_10;
    s32 temp_a0_11;
    s32 temp_a0_12;
    s32 temp_a0_13;
    s32 temp_a0_14;
    s32 temp_a0_15;
    s32 temp_a0_16;
    s32 temp_a0_17;
    s32 temp_a0_18;
    s32 temp_a0_19;
    s32 temp_a0_20;
    s32 temp_a0_21;
    s32 temp_a0_22;
    s32 temp_a0_23;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a0_5;
    s32 temp_a0_6;
    s32 temp_a0_7;
    s32 temp_a0_8;
    s32 temp_a0_9;
    s32 temp_a3;
    s32 temp_v1_10;
    s32 temp_v1_12;
    s32 temp_v1_14;
    s32 temp_v1_16;
    s32 temp_v1_18;
    s32 temp_v1_20;
    s32 temp_v1_22;
    s32 temp_v1_24;
    s32 temp_v1_26;
    s32 temp_v1_28;
    s32 temp_v1_2;
    s32 temp_v1_30;
    s32 temp_v1_4;
    s32 temp_v1_6;
    s32 temp_v1_8;
    u16 temp_v1;
    u16 temp_v1_11;
    u16 temp_v1_13;
    u16 temp_v1_15;
    u16 temp_v1_17;
    u16 temp_v1_19;
    u16 temp_v1_21;
    u16 temp_v1_23;
    u16 temp_v1_25;
    u16 temp_v1_27;
    u16 temp_v1_29;
    u16 temp_v1_3;
    u16 temp_v1_5;
    u16 temp_v1_7;
    u16 temp_v1_9;
    u32 temp_lo;
    u32 temp_lo_2;
    u32 temp_lo_3;
    u32 temp_lo_4;
    void *temp_t1_2;
    void *temp_t5_2;
    void *temp_t6_2;
    void *temp_t7_2;
    void *temp_t8;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_13;
    void *temp_v0_14;
    void *temp_v0_15;
    void *temp_v0_16;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;

    if ((arg1->unk0 != 0) && (arg1->unk4 != 0)) {
        if (strcmp(obj_section_name(), ".bss") == 0) {
            temp_v0 = arg2->unk0;
            temp_v1 = temp_v0->unk2;
            B_1001A594 = (s32) temp_v1;
            temp_v0->unk2 = (u16) (temp_v1 + 1);
            strncpy(arg2->unk8 + (B_1001A594 * 0x28), obj_section_name(arg0, arg1), 8);
            temp_v1_2 = arg1->unkC;
            temp_a0 = B_1001A594 * 0x28;
            (arg2->unk8 + temp_a0)->unkC = temp_v1_2;
            (arg2->unk8 + temp_a0)->unk8 = temp_v1_2;
            (arg2->unk8 + temp_a0)->unk10 = (u32) arg1->unk14;
            (arg2->unk8 + temp_a0)->unk14 = (s32) arg1->unk10;
            (arg2->unk8 + temp_a0)->unk24 = 0x80;
        } else if (strcmp(obj_section_name(arg0, arg1), ".data") == 0) {
            temp_v0_2 = arg2->unk0;
            temp_v1_3 = temp_v0_2->unk2;
            B_1001A58C = (s32) temp_v1_3;
            temp_v0_2->unk2 = (u16) (temp_v1_3 + 1);
            strncpy(arg2->unk8 + (B_1001A58C * 0x28), obj_section_name(arg0, arg1), 8);
            temp_v1_4 = arg1->unkC;
            temp_a0_2 = B_1001A58C * 0x28;
            (arg2->unk8 + temp_a0_2)->unkC = temp_v1_4;
            (arg2->unk8 + temp_a0_2)->unk8 = temp_v1_4;
            (arg2->unk8 + temp_a0_2)->unk10 = (u32) arg1->unk14;
            (arg2->unk8 + temp_a0_2)->unk14 = (s32) arg1->unk10;
            (arg2->unk8 + temp_a0_2)->unk24 = 0x40;
        } else if (strcmp(obj_section_name(arg0, arg1), ".init") == 0) {
            temp_v0_3 = arg2->unk0;
            temp_v1_5 = temp_v0_3->unk2;
            B_1001A580 = (s32) temp_v1_5;
            temp_v0_3->unk2 = (u16) (temp_v1_5 + 1);
            strncpy(arg2->unk8 + (B_1001A580 * 0x28), obj_section_name(arg0, arg1), 8);
            temp_v1_6 = arg1->unkC;
            temp_a0_3 = B_1001A580 * 0x28;
            (arg2->unk8 + temp_a0_3)->unkC = temp_v1_6;
            (arg2->unk8 + temp_a0_3)->unk8 = temp_v1_6;
            (arg2->unk8 + temp_a0_3)->unk10 = (u32) arg1->unk14;
            (arg2->unk8 + temp_a0_3)->unk14 = (s32) arg1->unk10;
            (arg2->unk8 + temp_a0_3)->unk24 = 0x80000000;
        } else if (strcmp(obj_section_name(arg0, arg1), ".rel.data") == 0) {
            temp_a0_4 = B_1001A58C * 0x28;
            (arg2->unk8 + temp_a0_4)->unk18 = (s32) arg1->unk10;
            (arg2->unk8 + temp_a0_4)->unk20 = 1;
        } else if (strcmp(obj_section_name(arg0, arg1), ".rel.init") == 0) {
            temp_a0_5 = B_1001A580 * 0x28;
            (arg2->unk8 + temp_a0_5)->unk18 = (s32) arg1->unk10;
            temp_lo = (u32) arg1->unk14 / (u32) arg1->unk24;
            if (temp_lo >= 0x10000U) {
                (arg2->unk8 + temp_a0_5)->unk20 = 0xFFFF;
            } else {
                (arg2->unk8 + temp_a0_5)->unk20 = (s16) temp_lo;
            }
        } else if (strcmp(obj_section_name(arg0, arg1), ".rel.rodata") == 0) {
            temp_a0_6 = B_1001A588 * 0x28;
            (arg2->unk8 + temp_a0_6)->unk18 = (s32) arg1->unk10;
            temp_lo_2 = (u32) arg1->unk14 / (u32) arg1->unk24;
            if (temp_lo_2 >= 0x10000U) {
                (arg2->unk8 + temp_a0_6)->unk20 = 0xFFFF;
            } else {
                (arg2->unk8 + temp_a0_6)->unk20 = (s16) temp_lo_2;
            }
        } else if (strcmp(obj_section_name(arg0, arg1), ".rel.text") == 0) {
            temp_a0_7 = B_1001A584 * 0x28;
            (arg2->unk8 + temp_a0_7)->unk18 = (s32) arg1->unk10;
            temp_lo_3 = (u32) arg1->unk14 / (u32) arg1->unk24;
            if (temp_lo_3 >= 0x10000U) {
                (arg2->unk8 + temp_a0_7)->unk20 = 0xFFFF;
            } else {
                (arg2->unk8 + temp_a0_7)->unk20 = (s16) temp_lo_3;
            }
        } else if (strcmp(obj_section_name(arg0, arg1), ".rodata") == 0) {
            temp_v0_4 = arg2->unk0;
            temp_v1_7 = temp_v0_4->unk2;
            B_1001A588 = (s32) temp_v1_7;
            temp_v0_4->unk2 = (u16) (temp_v1_7 + 1);
            strncpy(arg2->unk8 + (B_1001A588 * 0x28), obj_section_name(arg0, arg1), 8);
            temp_v1_8 = arg1->unkC;
            temp_a0_8 = B_1001A588 * 0x28;
            (arg2->unk8 + temp_a0_8)->unkC = temp_v1_8;
            (arg2->unk8 + temp_a0_8)->unk8 = temp_v1_8;
            (arg2->unk8 + temp_a0_8)->unk10 = (u32) arg1->unk14;
            (arg2->unk8 + temp_a0_8)->unk14 = (s32) arg1->unk10;
            (arg2->unk8 + temp_a0_8)->unk24 = 0x100;
        } else if ((strcmp(obj_section_name(arg0, arg1), ".shstrtab") != 0) && (strcmp(obj_section_name(arg0, arg1), ".strtab") != 0) && (strcmp(obj_section_name(arg0, arg1), ".symtab") != 0)) {
            if (strcmp(obj_section_name(arg0, arg1), ".text") == 0) {
                temp_v0_5 = arg2->unk0;
                temp_v1_9 = temp_v0_5->unk2;
                B_1001A584 = (s32) temp_v1_9;
                temp_v0_5->unk2 = (u16) (temp_v1_9 + 1);
                strncpy(arg2->unk8 + (B_1001A584 * 0x28), obj_section_name(arg0, arg1), 8);
                temp_v1_10 = arg1->unkC;
                temp_a0_9 = B_1001A584 * 0x28;
                (arg2->unk8 + temp_a0_9)->unkC = temp_v1_10;
                (arg2->unk8 + temp_a0_9)->unk8 = temp_v1_10;
                (arg2->unk8 + temp_a0_9)->unk10 = (u32) arg1->unk14;
                (arg2->unk8 + temp_a0_9)->unk14 = (s32) arg1->unk10;
                (arg2->unk8 + temp_a0_9)->unk24 = 0x20;
            } else if (strcmp(obj_section_name(arg0, arg1), ".sdata") == 0) {
                temp_v0_6 = arg2->unk0;
                temp_v1_11 = temp_v0_6->unk2;
                B_1001A590 = (s32) temp_v1_11;
                temp_v0_6->unk2 = (u16) (temp_v1_11 + 1);
                strncpy(arg2->unk8 + (B_1001A590 * 0x28), obj_section_name(arg0, arg1), 8);
                temp_v1_12 = arg1->unkC;
                temp_a0_10 = B_1001A590 * 0x28;
                (arg2->unk8 + temp_a0_10)->unkC = temp_v1_12;
                (arg2->unk8 + temp_a0_10)->unk8 = temp_v1_12;
                (arg2->unk8 + temp_a0_10)->unk10 = (u32) arg1->unk14;
                (arg2->unk8 + temp_a0_10)->unk14 = (s32) arg1->unk10;
                (arg2->unk8 + temp_a0_10)->unk24 = 0x200;
            } else if (strcmp(obj_section_name(arg0, arg1), ".rel.sdata") == 0) {
                temp_a0_11 = B_1001A590 * 0x28;
                (arg2->unk8 + temp_a0_11)->unk18 = (s32) arg1->unk10;
                temp_lo_4 = (u32) arg1->unk14 / (u32) arg1->unk24;
                if (temp_lo_4 >= 0x10000U) {
                    (arg2->unk8 + temp_a0_11)->unk20 = 0xFFFF;
                } else {
                    (arg2->unk8 + temp_a0_11)->unk20 = (s16) temp_lo_4;
                }
            } else if (strcmp(obj_section_name(arg0, arg1), ".sbss") == 0) {
                temp_v0_7 = arg2->unk0;
                temp_v1_13 = temp_v0_7->unk2;
                B_1001A598 = (s32) temp_v1_13;
                temp_v0_7->unk2 = (u16) (temp_v1_13 + 1);
                strncpy(arg2->unk8 + (B_1001A598 * 0x28), obj_section_name(arg0, arg1), 8);
                temp_v1_14 = arg1->unkC;
                temp_a0_12 = B_1001A598 * 0x28;
                (arg2->unk8 + temp_a0_12)->unkC = temp_v1_14;
                (arg2->unk8 + temp_a0_12)->unk8 = temp_v1_14;
                (arg2->unk8 + temp_a0_12)->unk10 = (u32) arg1->unk14;
                (arg2->unk8 + temp_a0_12)->unk14 = (s32) arg1->unk10;
                (arg2->unk8 + temp_a0_12)->unk24 = 0x400;
            } else if (strcmp(obj_section_name(arg0, arg1), ".lit4") == 0) {
                temp_v0_8 = arg2->unk0;
                temp_v1_15 = temp_v0_8->unk2;
                B_1001A59C = (s32) temp_v1_15;
                temp_v0_8->unk2 = (u16) (temp_v1_15 + 1);
                strncpy(arg2->unk8 + (B_1001A59C * 0x28), obj_section_name(arg0, arg1), 8);
                temp_v1_16 = arg1->unkC;
                temp_a0_13 = B_1001A59C * 0x28;
                (arg2->unk8 + temp_a0_13)->unkC = temp_v1_16;
                (arg2->unk8 + temp_a0_13)->unk8 = temp_v1_16;
                (arg2->unk8 + temp_a0_13)->unk10 = (u32) arg1->unk14;
                (arg2->unk8 + temp_a0_13)->unk14 = (s32) arg1->unk10;
                (arg2->unk8 + temp_a0_13)->unk24 = 0x10000000;
            } else if (strcmp(obj_section_name(arg0, arg1), ".lit8") == 0) {
                temp_v0_9 = arg2->unk0;
                temp_v1_17 = temp_v0_9->unk2;
                B_1001A5A0 = (s32) temp_v1_17;
                temp_v0_9->unk2 = (u16) (temp_v1_17 + 1);
                strncpy(arg2->unk8 + (B_1001A5A0 * 0x28), obj_section_name(arg0, arg1), 8);
                temp_v1_18 = arg1->unkC;
                temp_a0_14 = B_1001A5A0 * 0x28;
                (arg2->unk8 + temp_a0_14)->unkC = temp_v1_18;
                (arg2->unk8 + temp_a0_14)->unk8 = temp_v1_18;
                (arg2->unk8 + temp_a0_14)->unk10 = (u32) arg1->unk14;
                (arg2->unk8 + temp_a0_14)->unk14 = (s32) arg1->unk10;
                (arg2->unk8 + temp_a0_14)->unk24 = 0x08000000;
            } else if (strcmp(obj_section_name(arg0, arg1), ".reginfo") == 0) {
                if (arg2->unk4 != NULL) {
                    temp_v0_10 = obj_section_bits(arg0, arg1);
                    arg2->unk4->unk20 = (s32) temp_v0_10->unk0;
                    arg2->unk4->unk24 = (s32) temp_v0_10->unk4;
                    arg2->unk4->unk28 = (s32) temp_v0_10->unk8;
                    arg2->unk4->unk2C = (s32) temp_v0_10->unkC;
                    arg2->unk4->unk30 = (s32) temp_v0_10->unk10;
                    arg2->unk4->unk34 = (s32) temp_v0_10->unk14;
                }
            } else if (strcmp(obj_section_name(arg0, arg1), ".gptab.data") == 0) {
                temp_a0_15 = B_1001A58C * 0x28;
                (arg2->unk8 + temp_a0_15)->unk1C = (s32) arg1->unk10;
                (arg2->unk8 + temp_a0_15)->unk22 = (s16) ((u32) arg1->unk14 / (u32) arg1->unk24);
            } else if (strcmp(obj_section_name(arg0, arg1), ".gptab.sdata") == 0) {
                temp_a0_16 = B_1001A590 * 0x28;
                (arg2->unk8 + temp_a0_16)->unk1C = (s32) arg1->unk10;
                (arg2->unk8 + temp_a0_16)->unk22 = (s16) ((u32) arg1->unk14 / (u32) arg1->unk24);
            } else if (strcmp(obj_section_name(arg0, arg1), ".gptab.bss") == 0) {
                temp_a0_17 = B_1001A594 * 0x28;
                (arg2->unk8 + temp_a0_17)->unk1C = (s32) arg1->unk10;
                (arg2->unk8 + temp_a0_17)->unk22 = (s16) ((u32) arg1->unk14 / (u32) arg1->unk24);
            } else if (strcmp(obj_section_name(arg0, arg1), ".gptab.sbss") == 0) {
                temp_a0_18 = B_1001A598 * 0x28;
                (arg2->unk8 + temp_a0_18)->unk1C = (s32) arg1->unk10;
                (arg2->unk8 + temp_a0_18)->unk22 = (s16) ((u32) arg1->unk14 / (u32) arg1->unk24);
            } else if (strcmp(obj_section_name(arg0, arg1), ".mdebug") == 0) {
                arg2->unk0->unk8 = (s32) arg1->unk10;
                if (arg2->unk4 != NULL) {
                    arg2->unk4->unk2 = (s16) obj_section_bits(arg0, arg1)->unk2;
                }
            } else if (strcmp(obj_section_name(arg0, arg1), ".MIPS.dclass") == 0) {
                temp_v0_11 = arg2->unk0;
                temp_v1_19 = temp_v0_11->unk2;
                B_1001A5A4 = (s32) temp_v1_19;
                temp_v0_11->unk2 = (u16) (temp_v1_19 + 1);
                strncpy(arg2->unk8 + (B_1001A5A4 * 0x28), obj_section_name(arg0, arg1), 8);
                temp_v1_20 = arg1->unkC;
                temp_a0_19 = B_1001A5A4 * 0x28;
                (arg2->unk8 + temp_a0_19)->unkC = temp_v1_20;
                (arg2->unk8 + temp_a0_19)->unk8 = temp_v1_20;
                (arg2->unk8 + temp_a0_19)->unk10 = (u32) arg1->unk14;
                temp_t5 = ".ddefn";
                (arg2->unk8 + temp_a0_19)->unk14 = (s32) arg1->unk10;
                (arg2->unk8 + temp_a0_19)->unk24 = 0;
                temp_t8 = arg2->unk8 + temp_a0_19;
                temp_t8->unk0 = (unaligned s32) temp_t5->unk0;
                temp_t8->unk4 = (u8) temp_t5->unk4;
                temp_t8->unk5 = (u8) temp_t5->unk5;
                temp_t8->unk6 = (u8) temp_t5->unk6;
            } else if (strcmp(obj_section_name(arg0, arg1), ".MIPS.dsym") == 0) {
                temp_v0_12 = arg2->unk0;
                temp_v1_21 = temp_v0_12->unk2;
                B_1001A5A8 = (s32) temp_v1_21;
                temp_v0_12->unk2 = (u16) (temp_v1_21 + 1);
                strncpy(arg2->unk8 + (B_1001A5A8 * 0x28), obj_section_name(arg0, arg1), 8);
                temp_v1_22 = arg1->unkC;
                temp_a0_20 = B_1001A5A8 * 0x28;
                (arg2->unk8 + temp_a0_20)->unkC = temp_v1_22;
                (arg2->unk8 + temp_a0_20)->unk8 = temp_v1_22;
                (arg2->unk8 + temp_a0_20)->unk10 = (u32) arg1->unk14;
                temp_t6 = ".dsym";
                (arg2->unk8 + temp_a0_20)->unk14 = (s32) arg1->unk10;
                (arg2->unk8 + temp_a0_20)->unk24 = 0;
                temp_t5_2 = arg2->unk8 + temp_a0_20;
                temp_t5_2->unk0 = (unaligned s32) temp_t6->unk0;
                temp_t5_2->unk4 = (u8) temp_t6->unk4;
                temp_t5_2->unk5 = (u8) temp_t6->unk5;
            } else if (strcmp(obj_section_name(arg0, arg1), ".MIPS.dinst") == 0) {
                temp_v0_13 = arg2->unk0;
                temp_v1_23 = temp_v0_13->unk2;
                B_1001A5AC = (s32) temp_v1_23;
                temp_v0_13->unk2 = (u16) (temp_v1_23 + 1);
                strncpy(arg2->unk8 + (B_1001A5AC * 0x28), obj_section_name(arg0, arg1), 8);
                temp_v1_24 = arg1->unkC;
                temp_a0_21 = B_1001A5AC * 0x28;
                (arg2->unk8 + temp_a0_21)->unkC = temp_v1_24;
                (arg2->unk8 + temp_a0_21)->unk8 = temp_v1_24;
                (arg2->unk8 + temp_a0_21)->unk10 = (u32) arg1->unk14;
                temp_t7 = ".dinst";
                (arg2->unk8 + temp_a0_21)->unk14 = (s32) arg1->unk10;
                (arg2->unk8 + temp_a0_21)->unk24 = 0;
                temp_t6_2 = arg2->unk8 + temp_a0_21;
                temp_t6_2->unk0 = (unaligned s32) temp_t7->unk0;
                temp_t6_2->unk4 = (u8) temp_t7->unk4;
                temp_t6_2->unk5 = (u8) temp_t7->unk5;
                temp_t6_2->unk6 = (u8) temp_t7->unk6;
            } else if (strcmp(obj_section_name(arg0, arg1), ".MIPS.ddecl") == 0) {
                temp_v0_14 = arg2->unk0;
                temp_v1_25 = temp_v0_14->unk2;
                B_1001A5B0 = (s32) temp_v1_25;
                temp_v0_14->unk2 = (u16) (temp_v1_25 + 1);
                strncpy(arg2->unk8 + (B_1001A5B0 * 0x28), obj_section_name(arg0, arg1), 8);
                temp_v1_26 = arg1->unkC;
                temp_a0_22 = B_1001A5B0 * 0x28;
                (arg2->unk8 + temp_a0_22)->unkC = temp_v1_26;
                (arg2->unk8 + temp_a0_22)->unk8 = temp_v1_26;
                (arg2->unk8 + temp_a0_22)->unk10 = (u32) arg1->unk14;
                temp_t1 = ".ddecl";
                (arg2->unk8 + temp_a0_22)->unk14 = (s32) arg1->unk10;
                (arg2->unk8 + temp_a0_22)->unk24 = 0;
                temp_t7_2 = arg2->unk8 + temp_a0_22;
                temp_t7_2->unk0 = (unaligned s32) temp_t1->unk0;
                temp_t7_2->unk4 = (u8) temp_t1->unk4;
                temp_t7_2->unk5 = (u8) temp_t1->unk5;
                temp_t7_2->unk6 = (u8) temp_t1->unk6;
            } else if (strcmp(obj_section_name(arg0, arg1), ".rel.delta") == 0) {
                temp_v0_15 = arg2->unk0;
                temp_v1_27 = temp_v0_15->unk2;
                *B_1001A5B4 = (s32) temp_v1_27;
                temp_v0_15->unk2 = (u16) (temp_v1_27 + 1);
                strncpy(arg2->unk8 + (*B_1001A5B4 * 0x28), obj_section_name(arg0, arg1), 8);
                temp_v1_28 = arg1->unkC;
                temp_a0_23 = *B_1001A5B4 * 0x28;
                (arg2->unk8 + temp_a0_23)->unkC = temp_v1_28;
                (arg2->unk8 + temp_a0_23)->unk8 = temp_v1_28;
                (arg2->unk8 + temp_a0_23)->unk10 = (u32) arg1->unk14;
                temp_t9 = ".drel";
                (arg2->unk8 + temp_a0_23)->unk14 = (s32) arg1->unk10;
                (arg2->unk8 + temp_a0_23)->unk24 = 0;
                temp_t1_2 = arg2->unk8 + temp_a0_23;
                temp_t1_2->unk0 = (unaligned s32) temp_t9->unk0;
                temp_t1_2->unk4 = (u8) temp_t9->unk4;
                temp_t1_2->unk5 = (u8) temp_t9->unk5;
            } else {
                temp_v0_16 = arg2->unk0;
                temp_v1_29 = temp_v0_16->unk2;
                sp3C = (s32) temp_v1_29;
                temp_v0_16->unk2 = (u16) (temp_v1_29 + 1);
                temp_v0_17 = obj_section_name(arg0, arg1);
                temp_a3 = sp3C * 0x28;
                sp2C = temp_a3;
                strncpy(arg2->unk8 + temp_a3, (s8 *) temp_v0_17, 8, temp_a3);
                temp_v1_30 = arg1->unkC;
                (arg2->unk8 + temp_a3)->unkC = temp_v1_30;
                (arg2->unk8 + temp_a3)->unk8 = temp_v1_30;
                (arg2->unk8 + temp_a3)->unk10 = (u32) arg1->unk14;
                (arg2->unk8 + temp_a3)->unk14 = (s32) arg1->unk10;
                (arg2->unk8 + temp_a3)->unk24 = 0;
            }
        }
    }
    return (s32 *)-1;
}

void elf_spoof_coffhdrs(s32 *(*arg0)(?, s32 *, u32), u16 *arg1, void *arg2, void *arg3) {
    void *sp64;
    void *sp60;
    u16 *sp5C;
    s32 temp_a0;
    s32 temp_t9;
    s32 temp_v1;
    s32 var_s2;
    u16 var_v1;
    u32 var_s1;
    void *temp_v0;
    void *temp_v1_2;

    temp_v0 = obj_pelfhdr();
    sp5C = arg1;
    sp60 = arg2;
    sp64 = arg3;
    temp_v1 = temp_v0->unk24 & 0xF0000000;
    if (temp_v0->unk5 == 2) {
        if (temp_v1 == 0) {
            arg1->unk0 = 0x160;
        } else {
            if (temp_v1 == 0x10000000) {
                var_v1 = 0x163;
            } else {
                var_v1 = 0x140;
            }
            goto block_12;
        }
    } else if (temp_v1 == 0) {
        arg1->unk0 = 0x162;
    } else {
        if (temp_v1 == 0x10000000) {
            var_v1 = 0x166;
        } else {
            var_v1 = 0x142;
        }
block_12:
        arg1->unk0 = var_v1;
    }
    arg1->unk2 = 0;
    arg1->unk4 = 0;
    arg1->unk8 = 0;
    arg1->unkC = 0x60;
    arg1->unk10 = 0;
    arg1->unk12 = 0;
    if ((temp_v0->unk2C != 0) && (arg2 != NULL)) {
        arg1->unk10 = 0x38;
        arg2->unk0 = 0x10B;
        arg2->unk4 = 0;
        arg2->unk8 = 0;
        arg2->unkC = 0;
        arg2->unk14 = 0;
        arg2->unk18 = 0;
        arg2->unk1C = 0;
        arg2->unk10 = (s32) temp_v0->unk18;
        var_s2 = 0;
        var_s1 = 0;
        if (temp_v0->unk2C != 0) {
            do {
                temp_v1_2 = obj_pproghdr(arg0) + var_s2;
                if (temp_v1_2->unk0 == 1) {
                    temp_a0 = temp_v1_2->unk18;
                    if (temp_a0 == 5) {
                        arg2->unk14 = (s32) temp_v1_2->unk8;
                        arg2->unk4 = (s32) temp_v1_2->unk10;
                    } else if (temp_a0 == 6) {
                        arg2->unk18 = (s32) temp_v1_2->unk8;
                        temp_t9 = temp_v1_2->unk10;
                        arg2->unk1C = (s32) (arg2->unk1C + temp_t9);
                        arg2->unk8 = temp_t9;
                        arg2->unkC = (s32) (temp_v1_2->unk14 - temp_v1_2->unk10);
                    }
                }
                var_s1 += 1;
                var_s2 += 0x20;
            } while (var_s1 < (u16) temp_v0->unk2C);
        }
    }
    if (temp_v0->unk30 != 0) {
        foreach_section(arg0, (s32 *(*)(s32 *(*)(?, s32 *, u32), s32 *, s32)) func_00430580, (s32) &sp5C);
    }
}

u32 elf_nreloc(s32 *(*arg0)(?, s32 *, u32), s32 arg1) {
    ? *sp24;
    s32 *temp_v0;

    switch (arg1) {                                 /* irregular */
    case 0x0:
        return 0U;
    case 0x20:
        sp24 = ".rel.text";
block_23:
        temp_v0 = foreach_section(arg0, (s32 *(*)(s32 *(*)(?, s32 *, u32), s32 *, s32)) find_section_byname, (s32) sp24);
        if (temp_v0 == (s32 *)-1) {
            return 0U;
        }
        return (u32) temp_v0->unk14 / (u32) temp_v0->unk24;
    case 0x40:
        sp24 = ".rel.data";
        goto block_23;
    case 0x100:
        sp24 = ".rel.rodata";
        goto block_23;
    case 0x200:
        sp24 = ".rel.sdata";
        goto block_23;
    case 0x80000000:
        sp24 = ".rel.init";
        goto block_23;
    case 0x1000000:
        sp24 = ".rel.fini";
        goto block_23;
    case 0x80:
    case 0x400:
    case 0x8000000:
    case 0x10000000:
        return 0U;
    default:
        __assert("0", "obj_elf.c", 0x122);
        goto block_23;
    }
}

void *obj_raw_bits(s32 *(*arg0)(?, s32 *, u32), s32 *(*arg1)(s32 *(*)(?, s32 *, u32), s32 *, s32)) {
    s32 *temp_v0;

    if (arg0->unk8C == 3) {
        temp_v0 = foreach_section((s32 *(*)(?, s32 *, u32)) find_section_byname, arg1);
        if (temp_v0 == (s32 *)-1) {
            goto block_5;
        }
        return obj_section_bits(arg0, temp_v0);
    }
    __assert("0", "obj_elf.c", 0x13B);
block_5:
    return NULL;
}

s32 obj_section_reloc_type(s32 *(*arg0)(?, s32 *, u32), s32 arg1) {
    s32 sp30;
    s32 *var_v0;

    var_v0 = obj_section(&sp30, arg0, arg1);
    switch (sp34) {                                 /* irregular */
    case 1:
        if (strcmp(obj_section_index_name(arg0, arg1), ".text") == 0) {
            return 1;
        }
        if (strcmp(obj_section_index_name(arg0, arg1), ".rodata") == 0) {
            return 2;
        }
        if (strcmp(obj_section_index_name(arg0, arg1), ".data") == 0) {
            return 3;
        }
        if (strcmp(obj_section_index_name(arg0, arg1), ".sdata") == 0) {
            return 4;
        }
        if (strcmp(obj_section_index_name(arg0, arg1), ".init") == 0) {
            return 7;
        }
        if (strcmp(obj_section_index_name(arg0, arg1), ".lit8") == 0) {
            return 8;
        }
        if (strcmp(obj_section_index_name(arg0, arg1), ".lit4") == 0) {
            return 9;
        }
        if ((strcmp(obj_section_index_name(arg0, arg1), ".reginfo") == 0) || (strcmp(obj_section_index_name(arg0, arg1), ".compact_rel") == 0) || (strcmp(obj_section_index_name(arg0, arg1), ".mdebug") == 0)) {
        case 9:
        case 10:
        case 11:
        case -2415919104:
        case -2415919103:
        case -2415919102:
        case -2415919101:
        case -2415919100:
block_28:
            var_v0 = NULL;
        default:
            return (s32) var_v0;
        }
        return __assert("0", "obj_elf.c", 0x162);
    case 0:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
        if (strcmp(obj_section_index_name(arg0, arg1), ".sbss") == 0) {
            return 5;
        }
        if (strcmp(obj_section_index_name(arg0, arg1), ".bss") == 0) {
            return 6;
        }
        goto block_28;
    }
}

u32 get_section_num(void) {
    return (u32) obj_pelfhdr()->unk30;
}

s32 func_00432460(s32 arg0, s32 arg1) {
    return ((s32) ((arg0 + arg1) - 1) / arg1) * arg1;
}

void obj_update_dynamic(s32 *(*arg0)(?, s32 *, u32), s32 *arg1) {
    s32 *var_s0;
    s32 var_a1;
    s32 var_s2;
    s32 var_s3;

    var_s0 = arg1;
    var_s2 = 0;
    var_s3 = 0;
    if (obj_init_address() != 0) {
        var_s2 = 1;
    }
    if (obj_fini_address(arg0) != 0) {
        var_s3 = 1;
    }
    var_a1 = *var_s0;
    if (var_a1 != 0) {
        do {
            switch (var_a1) {                       /* irregular */
            case -2415919103:
                var_s0->unk4 = obj_rldversion(arg0, var_a1);
                break;
            case -2415919085:
                var_s0->unk4 = obj_gotsym(arg0, (u32) var_a1);
                break;
            case -2415919086:
                var_s0->unk4 = obj_unrefextno(arg0, var_a1);
                break;
            case 12:
                var_s0->unk4 = obj_init_address(arg0, var_a1);
                if (var_s2 != 0) {
                    var_s2 -= 1;
                }
                break;
            case 13:
                var_s0->unk4 = obj_fini_address(arg0, var_a1);
                if (var_s3 != 0) {
                    var_s3 -= 1;
                }
                break;
            case -2415919094:
                var_s0->unk4 = obj_locgotcount(arg0, var_a1);
                break;
            case -2415919102:
                var_s0->unk4 = obj_timestamp(arg0, var_a1);
                break;
            case -2415919101:
                var_s0->unk4 = obj_ichecksum(arg0, var_a1);
                break;
            case -2415919099:
                var_s0->unk4 = obj_dynflags(arg0, var_a1);
                break;
            case 18:
                var_s0->unk4 = obj_dynrelsz(arg0, var_a1);
                break;
            case -2415919087:
                var_s0->unk4 = obj_dynsymcount(arg0, var_a1);
                break;
            case 10:
                var_s0->unk4 = obj_dynstrsz(arg0, var_a1);
                break;
            case -2415919088:
                var_s0->unk4 = obj_liblistcount(arg0, var_a1);
                break;
            case -2415919093:
                var_s0->unk4 = obj_conflictcount(arg0, var_a1);
                break;
            case -2415919082:
                var_s0->unk4 = obj_rld_map(arg0, var_a1);
                break;
            default:
                printf("DT(0x%x) not handled\n", var_a1);
                break;
            }
            var_a1 = var_s0->unk8;
            var_s0 += 8;
        } while (var_a1 != 0);
    }
    if (var_s2 != 0) {
        printf(".init undone\n", var_a1);
    }
    if (var_s3 != 0) {
        printf(".fini undone\n");
    }
}

s32 func_004327AC(s32 *(*arg0)(?, s32 *, u32), s8 *arg1, s32 arg2) {
    s32 sp34;
    void *sp2C;
    s32 sp20;
    s32 temp_a1;
    s32 temp_v1;
    s32 var_v0;

    if (obj_otype() == 2) {
        if (strncmp(arg1, ".dynamic", 8U) == 0) {
            obj_update_dynamic(arg0, obj_vtop(arg0, arg1->unkC));
        }
        if ((arg1->unkC != 0) && (arg1->unk10 != 0) && ((u32) (arg1->unkC + arg1->unk10) < obj_bss_start(arg0))) {
            temp_a1 = arg1->unk14;
            if (temp_a1 != 0) {
                lseek(arg2, temp_a1, 0);
                if (write(arg2, obj_vtop(arg0, arg1->unkC), arg1->unk10) != arg1->unk10) {
                    fatal("obj_rewrite:write_section:write failed");
                }
            }
        }
        return -1;
    }
    var_v0 = obj_otype(arg0);
    if (var_v0 == 3) {
        sp2C = obj_pelfhdr(arg0);
        temp_v1 = (obj_psecthdr(arg0) + (sp2C->unk32 * 0x28))->unkC;
        if (!(arg1->unk8 & 2)) {
            return -1;
        }
        if (temp_v1 == 0) {
            sp20 = temp_v1;
            __assert("shnamestr", "obj_rewrite.c", 0x9A);
        }
        if (strcmp(arg1->unk0 + temp_v1, ".dynamic") == 0) {
            obj_update_dynamic(arg0, obj_vtop(arg0, arg1->unkC));
        }
        sp34 = obj_vtofo(arg0, arg1->unkC);
        if ((arg1->unkC != 0) && ((u32) (arg1->unkC + arg1->unk14) < obj_bss_start(arg0)) && (arg1->unk10 != 0)) {
            lseek(arg2, sp34, 0);
            if (write(arg2, obj_vtop(arg0, arg1->unkC), (u32) arg1->unk14) != arg1->unk14) {
                fatal("obj_rewrite:write_section:write failed");
            }
        }
        var_v0 = -1;
        arg1->unk10 = (u32) sp34;
        /* Duplicate return node #23. Try simplifying control flow for better match */
        return var_v0;
    }
    return var_v0;
}

s32 obj_vtofo(s32 *(*arg0)(?, s32 *, u32), u32 arg1) {
    u32 sp24;
    s32 var_v0;

    if ((obj_otype() == 2) || (var_v0 = obj_otype(arg0), (var_v0 == 3))) {
        if (arg1 >= obj_text_start(arg0)) {
            sp24 = obj_text_start(arg0);
            if (arg1 < (u32) (obj_text_size(arg0) + sp24)) {
                return arg1 - obj_text_start(arg0);
            }
            if (arg1 >= obj_data_start(arg0)) {
                sp24 = obj_bss_start(arg0);
                if (arg1 < (u32) (obj_bss_size(arg0) + sp24)) {
                    sp24 = obj_text_size(arg0);
                    return (sp24 + arg1) - obj_data_start(arg0);
                }
                var_v0 = __assert("0", "obj_rewrite.c", 0xBB);
                goto block_11;
            }
            var_v0 = __assert("0", "obj_rewrite.c", 0xBD);
            goto block_11;
        }
        var_v0 = __assert("0", "obj_rewrite.c", 0xC0);
block_11:
        /* Duplicate return node #12. Try simplifying control flow for better match */
        return var_v0;
    }
    return var_v0;
}

s32 obj_vtop(s32 *(*arg0)(?, s32 *, u32), u32 arg1) {
    s16 *sp38;
    void *sp34;
    u32 sp2C;
    s16 *sp28;
    s32 *temp_v0_2;
    s32 *var_v1;
    s32 temp_v0;
    s32 var_a2;
    u16 temp_t0;
    u32 temp_a0;
    u32 var_a1;
    void *temp_v1;

    temp_v0 = arg0->unk180;
    if (temp_v0 == 3) {
        if (obj_otype() == 2) {
            sp38 = obj_paouthdr(arg0);
            if (arg1 >= obj_text_start(arg0)) {
                sp2C = obj_text_start(arg0);
                if (arg1 < (u32) (obj_text_size(arg0) + sp2C)) {
                    return (arg1 - obj_text_start(arg0)) + sp38->unk14;
                }
            }
            if (arg1 >= obj_data_start(arg0)) {
                sp2C = obj_bss_start(arg0);
                if (arg1 < (u32) (obj_bss_size(arg0) + sp2C)) {
                    return (arg1 - obj_data_start(arg0)) + sp38->unk18;
                }
            }
            return 0;
        }
        if (obj_otype(arg0) == 3) {
            sp34 = obj_pelfhdr(arg0);
            temp_v0_2 = obj_pproghdr(arg0);
            temp_t0 = sp34->unk2C;
            var_a1 = 0;
            var_a2 = 0;
            var_v1 = temp_v0_2;
            if (temp_t0 != 0) {
loop_12:
                var_a1 += 1;
                if (var_v1->unk0 == 1) {
                    temp_a0 = var_v1->unk8;
                    if ((arg1 >= temp_a0) && (arg1 < (u32) (var_v1->unk10 + temp_a0))) {
                        temp_v1 = temp_v0_2 + var_a2;
                        return (arg1 - temp_v1->unk8) + temp_v1->unkC;
                    }
                }
                var_a2 += 0x20;
                var_v1 += 0x20;
                if (var_a1 >= temp_t0) {
                    goto block_17;
                }
                goto loop_12;
            }
block_17:
            return 0;
        }
        return __assert("0", "obj_rewrite.c", 0xE7);
    }
    if (temp_v0 == 1) {
        if ((arg1 >= obj_text_start(arg0, 1)) && (arg1 < obj_data_start(arg0))) {
            sp2C = obj_base_address(arg0);
            return (obj_map_address(arg0) + arg1) - sp2C;
        }
        if ((arg1 >= obj_data_start(arg0)) && (arg1 < obj_bss_start(arg0))) {
            sp28 = obj_map_address(arg0);
            sp2C = obj_data_start(arg0);
            return (s32) (((obj_text_size(arg0) + arg1) - sp2C) + sp28);
        }
        return 0;
    }
    return (s32) arg1;
}

s32 *(*obj_rewrite(s32 *(*arg0)(?, s32 *, u32), s32 *(*arg1)(?, s32 *, u32), s8 *arg2))(?, s32 *, u32) {
    s32 spA4;
    s16 *sp98;
    void *sp84;
    void *sp6C;
    u32 sp40;
    s16 *sp38;                                      /* compiler-managed */
    s32 sp28;
    s16 *temp_s0;
    s16 *temp_s0_3;
    s16 *temp_s1;
    s16 *temp_v0_10;
    s16 *temp_v0_11;
    s16 *temp_v0_12;
    s16 *temp_v0_13;
    s16 *temp_v0_14;
    s16 *temp_v0_15;
    s16 *temp_v0_16;
    s16 *temp_v0_2;
    s16 *temp_v0_3;
    s16 *temp_v0_4;
    s16 *temp_v0_5;
    s16 *temp_v0_6;
    s16 *temp_v0_7;
    s16 *temp_v0_8;
    s16 *temp_v0_9;
    s32 *temp_v0_17;
    s32 temp_s0_2;
    s32 temp_s1_2;
    s32 temp_v0;
    s32 temp_v1;
    u32 temp_a0;
    u32 temp_a0_2;
    u32 temp_a0_3;
    u32 temp_a0_4;
    u32 temp_a0_5;
    u32 temp_a0_6;
    u32 temp_a0_7;
    u32 temp_a0_8;
    u32 temp_a0_9;
    u32 temp_lo;
    u32 temp_lo_2;
    u32 temp_lo_3;
    u32 var_s1;
    void *temp_s0_4;
    void *temp_s0_5;
    void *temp_t6;
    void *temp_t9;

    M2C_MEMCPY_ALIGNED(arg0, arg1, 0x1D4);
    temp_t9 = arg0 + 0x1D4;
    temp_t6 = arg1 + 0x1D4;
    temp_t9->unk0 = (s32) temp_t6->unk0;
    temp_t9->unk4 = (s32) temp_t6->unk4;
    temp_v0 = open(arg2, 0x301, 0x1ED);
    if (temp_v0 < 0) {
        return NULL;
    }
    obj_set_name(arg0, arg2);
    close(temp_v0);
    arg0->unk180 = 3;
    if (obj_otype(arg0) == 2) {
        temp_s1 = obj_pfilehdr(arg1);
        temp_s0 = obj_paouthdr(arg1);
        sp98 = obj_pscnhdr(arg1);
        obj_pscnhdr(arg0);
        temp_v0_2 = malloc(0x14U);
        arg0->unk90 = temp_v0_2;
        if (temp_v0_2 == NULL) {
            __assert("newobj->o_pfilehdr", "obj_rewrite.c", 0x114);
        }
        memcpy(arg0->unk90, temp_s1, 0x14U);
        temp_v0_3 = malloc(0x38U);
        arg0->unk94 = temp_v0_3;
        if (temp_v0_3 == NULL) {
            __assert("newobj->o_paouthdr", "obj_rewrite.c", 0x115);
        }
        memcpy(arg0->unk94, temp_s0, 0x38U);
        temp_a0 = temp_s1->unk2 * 0x28;
        if (temp_a0 != 0) {
            temp_v0_4 = malloc(temp_a0);
            if (temp_v0_4 == NULL) {
                __assert("ptmp_newscnhdr", "obj_rewrite.c", 0x116);
            }
            memcpy(temp_v0_4, sp98, temp_s1->unk2 * 0x28);
        }
        arg0->unk94->unk14 = malloc(arg0->unk94->unk4);
        if (arg0->unk94->unk14 == NULL) {
            __assert("newobj->o_paouthdr->text_start", "obj_rewrite.c", 0x11A);
        }
        temp_s0_2 = obj_vtop(arg0, obj_text_start(arg0));
        sp38 = obj_map_address(arg1);
        memcpy((s16 *) temp_s0_2, sp38, obj_text_size(arg0));
        arg0->unk94->unk18 = malloc(arg0->unk94->unk8);
        if (arg0->unk94->unk18 == NULL) {
            __assert("newobj->o_paouthdr->data_start", "obj_rewrite.c", 0x11F);
        }
        temp_s1_2 = obj_vtop(arg0, obj_data_start(arg0));
        temp_s0_3 = obj_map_address(arg1);
        sp38 = obj_text_size(arg1);
        memcpy((s16 *) temp_s1_2, sp38 + temp_s0_3, obj_data_size(arg0));
        spA4 = 0x2000;
    } else if (arg0->unk8C == 3) {
        sp84 = obj_pelfhdr(arg0);
        temp_v0_5 = malloc(0x34U);
        arg0->unkE0 = temp_v0_5;
        if (temp_v0_5 == NULL) {
            __assert("newobj->o_pelfhdr", "obj_rewrite.c", 0x128);
        }
        memcpy(arg0->unkE0, arg1->unkE0, 0x34U);
        temp_a0_2 = arg1->unkE0->unk2C << 5;
        if (temp_a0_2 == 0) {
            arg0->unkE4 = NULL;
        } else {
            temp_v0_6 = malloc(temp_a0_2);
            arg0->unkE4 = temp_v0_6;
            if (temp_v0_6 == NULL) {
                __assert("newobj->o_pproghdr", "obj_rewrite.c", 0x12A);
            }
            memcpy(arg0->unkE4, arg1->unkE4, arg1->unkE0->unk2C << 5);
        }
        temp_a0_3 = arg1->unkE0->unk30 * 0x28;
        if (temp_a0_3 == 0) {
            arg0->unkE8 = NULL;
        } else {
            temp_v0_7 = malloc(temp_a0_3);
            arg0->unkE8 = temp_v0_7;
            if (temp_v0_7 == NULL) {
                __assert("newobj->o_psecthdr", "obj_rewrite.c", 0x12C);
            }
            memcpy(arg0->unkE8, arg1->unkE8, arg1->unkE0->unk30 * 0x28);
        }
        var_s1 = 0;
        if (arg0->unkE0->unk2C != 0) {
            sp28 = 0;
            do {
                temp_s0_4 = obj_pproghdr(arg0) + sp28;
                if (*(arg0->unkE4 + sp28) == 1) {
                    temp_s0_4->unkC = malloc(temp_s0_4->unk10);
                    sp38 = obj_vtop(arg0, temp_s0_4->unk8);
                    memcpy((s16 *) sp38, obj_vtop(arg1, temp_s0_4->unk8), temp_s0_4->unk10);
                }
                var_s1 += 1;
                sp28 += 0x20;
            } while (var_s1 < (u16) arg0->unkE0->unk2C);
            var_s1 = 0;
        }
        if (sp84->unk30 != 0) {
            sp28 = 0;
            do {
                temp_s0_5 = obj_psecthdr(arg0) + sp28;
                sp6C = obj_psecthdr(arg0) + sp28;
                if (!(temp_s0_5->unk8 & 2)) {
                    temp_a0_4 = temp_s0_5->unk14;
                    if ((temp_a0_4 != 0) && (temp_s0_5->unk4 != 0x70000005)) {
                        spA4 = 6;
                        sp6C->unkC = malloc(temp_a0_4);
                        memcpy(sp6C->unkC, obj_map_address(arg1) + temp_s0_5->unk10, temp_s0_5->unk14);
                    }
                }
                var_s1 += 1;
                sp28 += 0x28;
            } while (var_s1 < (u16) sp84->unk30);
        }
    }
    if (arg1->unk9C != NULL) {
        temp_v0_8 = malloc(0x60U);
        arg0->unk9C = temp_v0_8;
        if (temp_v0_8 == NULL) {
            __assert("newobj->o_phdrr", "obj_rewrite.c", 0x14D);
        }
        memcpy(arg0->unk9C, arg1->unk9C, 0x60U);
        M2C_MEMCPY_ALIGNED(arg0->unk9C, arg1->unk9C, 0x60);
        temp_lo = arg1->unk9C->unk48 * 0x48;
        if (temp_lo == 0) {
            arg0->unkA0 = NULL;
        } else {
            temp_v0_9 = malloc(temp_lo);
            arg0->unkA0 = temp_v0_9;
            if (temp_v0_9 == NULL) {
                __assert("newobj->o_pfdr", "obj_rewrite.c", 0x14F);
            }
            memcpy(arg0->unkA0, arg1->unkA0, arg1->unk9C->unk48 * 0x48);
        }
        temp_lo_2 = arg1->unk9C->unk18 * 0x34;
        if (temp_lo_2 == 0) {
            arg0->unkA4 = NULL;
        } else {
            temp_v0_10 = malloc(temp_lo_2);
            arg0->unkA4 = temp_v0_10;
            if (temp_v0_10 == NULL) {
                __assert("newobj->o_ppdr", "obj_rewrite.c", 0x150);
            }
            memcpy(arg0->unkA4, arg1->unkA4, arg1->unk9C->unk18 * 0x34);
        }
        temp_lo_3 = arg1->unk9C->unk20 * 0xC;
        if (temp_lo_3 == 0) {
            arg0->unkA8 = NULL;
        } else {
            temp_v0_11 = malloc(temp_lo_3);
            arg0->unkA8 = temp_v0_11;
            if (temp_v0_11 == NULL) {
                __assert("newobj->o_psymr", "obj_rewrite.c", 0x152);
            }
            memcpy(arg0->unkA8, arg1->unkA8, arg1->unk9C->unk20 * 0xC);
        }
        temp_a0_5 = arg1->unk9C->unk58 * 0x10;
        if (temp_a0_5 == 0) {
            arg0->unkAC = NULL;
        } else {
            temp_v0_12 = malloc(temp_a0_5);
            arg0->unkAC = temp_v0_12;
            if (temp_v0_12 == NULL) {
                __assert("newobj->o_pextr", "obj_rewrite.c", 0x154);
            }
            memcpy(arg0->unkAC, arg1->unkAC, arg1->unk9C->unk58 * 0x10);
        }
        temp_a0_6 = arg1->unk9C->unk40;
        if (temp_a0_6 == 0) {
            arg0->unkB0 = NULL;
        } else {
            temp_v0_13 = malloc(temp_a0_6);
            arg0->unkB0 = temp_v0_13;
            if (temp_v0_13 == NULL) {
                __assert("newobj->o_pssext", "obj_rewrite.c", 0x156);
            }
            memcpy(arg0->unkB0, arg1->unkB0, arg1->unk9C->unk40);
        }
        temp_a0_7 = arg1->unk9C->unk38;
        if (temp_a0_7 == 0) {
            arg0->unkB4 = NULL;
        } else {
            temp_v0_14 = malloc(temp_a0_7);
            arg0->unkB4 = temp_v0_14;
            if (temp_v0_14 == NULL) {
                __assert("newobj->o_pss", "obj_rewrite.c", 0x158);
            }
            memcpy(arg0->unkB4, arg1->unkB4, arg1->unk9C->unk38);
        }
        temp_a0_8 = arg1->unk9C->unk30 * 4;
        if (temp_a0_8 == 0) {
            arg0->unkC0 = NULL;
        } else {
            temp_v0_15 = malloc(temp_a0_8);
            arg0->unkC0 = temp_v0_15;
            if (temp_v0_15 == NULL) {
                __assert("newobj->o_pauxu", "obj_rewrite.c", 0x15A);
            }
            memcpy(arg0->unkC0, arg1->unkC0, arg1->unk9C->unk30 * 4);
        }
        temp_a0_9 = arg1->unk9C->unk8;
        if (temp_a0_9 == 0) {
            arg0->unkB8 = NULL;
        } else {
            temp_v0_16 = malloc(temp_a0_9);
            arg0->unkB8 = temp_v0_16;
            if (temp_v0_16 == NULL) {
                __assert("newobj->o_pline", "obj_rewrite.c", 0x15C);
            }
            memcpy(arg0->unkB8, arg1->unkB8, arg1->unk9C->unk8);
        }
    }
    temp_v0_17 = foreach_section(arg0, find_section_bytype, spA4);
    if (temp_v0_17 != (s32 *)-1) {
        temp_v1 = arg0->unk8C;
        if (temp_v1 == 2) {
            sp40 = temp_v0_17->unkC;
        } else if (temp_v1 == 3) {
            sp40 = temp_v0_17->unkC;
        } else {
            __assert("0", "obj_rewrite.c", 0x16B);
        }
        if (obj_get_dynamic_info(obj_vtop(arg0, sp40), arg0, 0, 0) == 0) {
            fatal("obj_get_dynamic_info failed");
        }
    }
    return arg0;
}

s32 *func_00433D70(s32 *(*arg0)(?, s32 *, u32), s32 *arg1, s32 *arg2) {
    s32 temp_a0;
    s32 temp_v1;

    if (obj_otype() == 2) {
        if (obj_data_start(arg0) == arg1->unkC) {
            temp_a0 = *arg2;
            if (temp_a0 & 0xFFF) {
                *arg2 = func_00432460(temp_a0, 0x1000);
            }
        }
        if ((arg1->unk14 != 0) && (arg1->unk10 != 0)) {
            arg1->unk14 = (s32) *arg2;
        }
        temp_v1 = arg1->unk10;
        if ((u32) (arg1->unkC + temp_v1) < obj_bss_start(arg0)) {
            *arg2 += temp_v1;
        }
    } else if (!(arg1->unk8 & 2)) {

    } else {
        *arg2 = obj_vtofo(arg0, arg1->unkC);
        if ((arg1->unkC != 0) && ((u32) (arg1->unkC + arg1->unk14) < obj_bss_start(arg0)) && (arg1->unk10 != 0)) {
            arg1->unk10 = (s32) *arg2;
        }
    }
    return (s32 *)-1;
}

s32 func_00433EF4(void *arg0, void *arg1) {
    s32 temp_a0;
    s32 temp_v1;

    temp_v1 = arg0->unkC;
    if (temp_v1 == 0) {
        return 1;
    }
    temp_a0 = arg1->unkC;
    if (temp_a0 == 0) {
        return -1;
    }
    if (temp_v1 < temp_a0) {
        return -1;
    }
    return temp_a0 != temp_v1;
}

s32 *(*obj_write(s32 *(*arg0)(?, s32 *, u32)))(?, s32 *, u32) {
    s32 sp1084;
    s32 sp1080;
    void *sp1068;
    u32 sp68;
    s32 sp60;
    void *sp54;
    s32 *sp50;
    u32 sp44;
    void *sp34;
    s16 *temp_s0;
    s16 *temp_s0_6;
    s16 *temp_s1_2;
    s32 *temp_v0_14;
    s32 *var_s0_2;
    s32 temp_a0;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_s0_2;
    s32 temp_s0_3;
    s32 temp_s0_4;
    s32 temp_s0_5;
    s32 temp_s3;
    s32 temp_v0;
    s32 temp_v0_10;
    s32 temp_v0_11;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s32 temp_v0_7;
    s32 temp_v0_8;
    s32 temp_v0_9;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 temp_v1_4;
    s32 var_a3;
    s32 var_s0_3;
    u32 temp_a0_2;
    u32 temp_a2;
    u32 temp_v0_12;
    u32 var_a2;
    u32 var_s0;
    u32 var_s1;
    u32 var_s1_2;
    u32 var_v1;
    void *temp_s1;
    void *temp_v0_13;
    void *temp_v1_5;
    void *temp_v1_6;

    temp_s0 = obj_pfilehdr();
    temp_s1 = obj_pelfhdr(arg0);
    sp1068 = obj_phdrr(arg0);
    temp_s3 = open(obj_name(arg0), 0x301);
    if (obj_otype(arg0) == 2) {
        temp_a0 = (temp_s0->unk2 * 0x28) + 0x4C;
        sp1080 = temp_a0;
        sp1080 = func_00432460(temp_a0, 0x10);
        qsort(obj_pscnhdr(arg0), temp_s0->unk2, 0x28, func_00433EF4);
        foreach_section(arg0, (s32 *(*)(s32 *(*)(?, s32 *, u32), s32 *, s32)) func_00433D70, (s32) &sp1080);
    } else if (obj_otype(arg0) == 3) {
        sp1080 = func_00432460((temp_s1->unk2C << 5) + 0x34, 0x10);
        foreach_section(arg0, (s32 *(*)(s32 *(*)(?, s32 *, u32), s32 *, s32)) func_00433D70, (s32) &sp1080);
    }
    var_s0 = obj_data_size(arg0);
    memset(&sp68, 0, 0x1000U);
    lseek(temp_s3, obj_text_size(arg0), 0);
    if ((s32) var_s0 > 0) {
loop_6:
        var_a2 = 0x1000;
        if (var_s0 < 0x1000U) {
            var_a2 = var_s0;
        }
        temp_v0 = write(temp_s3, &sp68, var_a2);
        if (var_s0 < 0x1000U) {
            var_v1 = var_s0;
        } else {
            var_v1 = 0x1000;
        }
        var_s0 -= 0x1000;
        if (var_v1 != temp_v0) {
            return NULL;
        }
        if ((s32) var_s0 <= 0) {
            goto block_14;
        }
        goto loop_6;
    }
block_14:
    foreach_section(arg0, (s32 *(*)(s32 *(*)(?, s32 *, u32), s32 *, s32)) func_004327AC, temp_s3);
    temp_v0_2 = getpagesize();
    var_a3 = sp1080;
    if ((temp_v0_2 - 1) & var_a3) {
        do {
            sp60 = 0;
            write(temp_s3, &sp60, 4U);
            var_a3 = sp1080 + 4;
            sp1080 = var_a3;
        } while ((temp_v0_2 - 1) & var_a3);
    }
    temp_a1 = var_a3 + 0x60;
    sp1084 = var_a3;
    sp1080 = temp_a1;
    lseek(temp_s3, temp_a1, 0);
    if (sp1068 != NULL) {
        if (sp1068->unk4 > 0) {
            sp1068->unkC = sp1080;
            temp_a0_2 = sp1068->unk8;
            if (write(temp_s3, arg0->unkB8, sp1068->unk8) != temp_a0_2) {
                return NULL;
            }
            temp_a1_2 = sp1080 + func_00432460((s32) temp_a0_2, 4);
            sp1080 = temp_a1_2;
            lseek(temp_s3, temp_a1_2, 0);
            goto block_23;
        }
        sp1068->unkC = 0;
block_23:
        temp_v0_3 = sp1068->unk18;
        if (temp_v0_3 > 0) {
            sp1068->unk1C = sp1080;
            temp_v1 = sp1068->unk18 * 0x34;
            if (write(temp_s3, arg0->unkA4, temp_v0_3 * 0x34) != temp_v1) {
                return NULL;
            }
            sp1080 += temp_v1;
            goto block_28;
        }
        sp1068->unk1C = 0;
block_28:
        temp_v0_4 = sp1068->unk20;
        if (temp_v0_4 > 0) {
            sp1068->unk24 = sp1080;
            temp_lo = sp1068->unk20 * 0xC;
            if (write(temp_s3, arg0->unkA8, temp_v0_4 * 0xC) != temp_lo) {
                return NULL;
            }
            sp1080 += temp_lo;
            goto block_33;
        }
        sp1068->unk24 = 0;
block_33:
        if (sp1068->unk28 > 0) {
            sp1068->unk2C = sp1080;
            __assert("0", "obj_rewrite.c", 0x208);
            sp1080 += sp1068->unk28 * 0xC;
        } else {
            sp1068->unk2C = 0;
        }
        temp_v0_5 = sp1068->unk30;
        if (temp_v0_5 > 0) {
            sp1068->unk34 = sp1080;
            temp_v1_2 = sp1068->unk30 * 4;
            if (write(temp_s3, arg0->unkC0, temp_v0_5 * 4) != temp_v1_2) {
                return NULL;
            }
            sp1080 += temp_v1_2;
            goto block_41;
        }
        sp1068->unk34 = 0;
block_41:
        temp_s0_2 = sp1068->unk38;
        if (temp_s0_2 > 0) {
            sp1068->unk3C = sp1080;
            temp_s0_3 = sp1068->unk38;
            if (write(temp_s3, arg0->unkB4, (u32) temp_s0_2) != temp_s0_3) {
                return NULL;
            }
            temp_a0_3 = sp1080 + temp_s0_3;
            sp1080 = temp_a0_3;
            temp_v0_6 = func_00432460(temp_a0_3, 4);
            sp1080 = temp_v0_6;
            lseek(temp_s3, temp_v0_6, 0);
            goto block_46;
        }
        sp1068->unk3C = 0;
block_46:
        temp_s0_4 = sp1068->unk40;
        if (temp_s0_4 > 0) {
            sp1068->unk44 = sp1080;
            temp_s0_5 = sp1068->unk40;
            if (write(temp_s3, arg0->unkB0, (u32) temp_s0_4) != temp_s0_5) {
                return NULL;
            }
            temp_a0_4 = sp1080 + temp_s0_5;
            sp1080 = temp_a0_4;
            temp_v0_7 = func_00432460(temp_a0_4, 4);
            sp1080 = temp_v0_7;
            lseek(temp_s3, temp_v0_7, 0);
            goto block_51;
        }
        sp1068->unk44 = 0;
block_51:
        temp_v0_8 = sp1068->unk48;
        if (temp_v0_8 > 0) {
            sp1068->unk4C = sp1080;
            temp_lo_2 = sp1068->unk48 * 0x48;
            if (write(temp_s3, arg0->unkA0, temp_v0_8 * 0x48) != temp_lo_2) {
                return NULL;
            }
            sp1080 += temp_lo_2;
            goto block_56;
        }
        sp1068->unk4C = 0;
block_56:
        temp_v0_9 = sp1068->unk50;
        if (temp_v0_9 > 0) {
            sp1068->unk54 = sp1080;
            temp_v1_3 = sp1068->unk50 * 4;
            if (write(temp_s3, arg0->unkBC, temp_v0_9 * 4) != temp_v1_3) {
                return NULL;
            }
            sp1080 += temp_v1_3;
            goto block_61;
        }
        sp1068->unk54 = 0;
block_61:
        temp_v0_10 = sp1068->unk58;
        if (temp_v0_10 > 0) {
            sp1068->unk5C = sp1080;
            temp_v1_4 = sp1068->unk58 * 0x10;
            if (write(temp_s3, arg0->unkAC, temp_v0_10 * 0x10) != temp_v1_4) {
                return NULL;
            }
            sp1080 += temp_v1_4;
            goto block_66;
        }
        sp1068->unk5C = 0;
block_66:
        if (sp1068->unk10 > 0) {
            sp1068->unk14 = sp1080;
            __assert("0", "obj_rewrite.c", 0x237);
            sp1080 += sp1068->unk10 * 8;
        } else {
            sp1068->unk14 = 0;
        }
        lseek(temp_s3, sp1084, 0);
        if (write(temp_s3, obj_phdrr(arg0), 0x60U) != 0x60) {
            return NULL;
        }
        goto block_72;
    }
    sp1084 = 0;
block_72:
    if (obj_otype(arg0) == 2) {
        temp_s1_2 = obj_pfilehdr(arg0);
        temp_s0_6 = obj_paouthdr(arg0);
        lseek(temp_s3, 0, 0);
        temp_s1_2->unk8 = sp1084;
        temp_s0_6->unk14 = obj_text_start(arg0);
        temp_s0_6->unk18 = obj_data_start(arg0);
        temp_s0_6->unk4 = obj_text_size(arg0);
        temp_s0_6->unk8 = obj_data_size(arg0);
        temp_s0_6->unk1C = obj_bss_start(arg0);
        temp_s0_6->unkC = obj_bss_size(arg0);
        temp_s0_6->unk10 = obj_entry_address(arg0);
        if (write(temp_s3, obj_pfilehdr(arg0), 0x14U) != 0x14) {
            return NULL;
        }
        if (write(temp_s3, obj_paouthdr(arg0), 0x38U) != 0x38) {
            return NULL;
        }
        if (write(temp_s3, obj_pscnhdr(arg0), temp_s1_2->unk2 * 0x28) != (temp_s1_2->unk2 * 0x28)) {
            return NULL;
        }
        goto block_102;
    }
    sp54 = obj_pelfhdr(arg0);
    sp50 = obj_pproghdr(arg0);
    lseek(temp_s3, sp54->unk1C, 0);
    var_s1 = 0;
    var_s0_2 = sp50;
    if (sp54->unk2C != 0) {
        do {
            var_s0_2->unkC = (s32) var_s0_2->unk8;
            if (var_s0_2->unk0 == 1) {
                temp_v0_11 = var_s0_2->unk18 & 6;
                if (temp_v0_11 == 4) {
                    temp_v0_12 = obj_text_size(arg0);
                    var_s0_2->unk10 = temp_v0_12;
                    var_s0_2->unk14 = temp_v0_12;
                } else if (temp_v0_11 == 6) {
                    var_s0_2->unk10 = obj_data_size(arg0);
                    sp44 = obj_data_size(arg0);
                    var_s0_2->unk14 = (u32) (obj_bss_size(arg0) + sp44);
                    var_s0_2->unk4 = obj_text_size(arg0);
                }
            }
            var_s1 += 1;
            var_s0_2 += 0x20;
        } while (var_s1 < (u16) sp54->unk2C);
    }
    if (write(temp_s3, obj_pproghdr(arg0), sp54->unk2C << 5) != (sp54->unk2C << 5)) {
        return NULL;
    }
    var_s1_2 = 0;
    var_s0_3 = 0;
    if (sp54->unk30 != 0) {
loop_89:
        temp_v0_13 = obj_psecthdr(arg0);
        temp_v1_5 = temp_v0_13 + var_s0_3;
        if (!(temp_v1_5->unk8 & 2) && (temp_v1_5->unk14 != 0) && (temp_v1_5->unk4 != 0x70000005)) {
            temp_v1_6 = temp_v0_13 + var_s0_3;
            temp_v1_6->unk10 = sp1080;
            sp34 = temp_v1_6;
            lseek(temp_s3, sp1080, 0);
            temp_a2 = temp_v1_6->unk14;
            if (write(temp_s3, temp_v1_6->unkC, temp_v1_6->unk14) != temp_a2) {
                return NULL;
            }
            temp_v1_6->unkC = NULL;
            sp1080 += func_00432460((s32) temp_a2, 4, temp_a2);
            goto block_95;
        }
block_95:
        var_s1_2 += 1;
        var_s0_3 += 0x28;
        if (var_s1_2 >= (u16) sp54->unk30) {
            goto block_96;
        }
        goto loop_89;
    }
block_96:
    sp54->unk20 = sp1080;
    sp54->unk18 = obj_entry_address(arg0);
    lseek(temp_s3, 0, 0);
    if (write(temp_s3, obj_pelfhdr(arg0), 0x34U) != 0x34) {
        return NULL;
    }
    sp1080 += sp54->unk30 * 0x28;
    temp_v0_14 = foreach_section(arg0, find_section_bytype, 0x70000005);
    if (temp_v0_14 != (s32 *)-1) {
        temp_v0_14->unk10 = sp1084;
    }
    lseek(temp_s3, sp54->unk20, 0);
    if (write(temp_s3, obj_psecthdr(arg0), sp54->unk30 * 0x28) != (sp54->unk30 * 0x28)) {
        return NULL;
    }
block_102:
    close(temp_s3);
    return arg0;
}

void obj_extend_text_segment(s32 *(*arg0)(?, s32 *, u32), s32 arg1) {
    void *sp34;
    s32 *sp30;
    s16 *temp_s0;
    s32 *temp_v0_2;
    s32 var_s1;
    u32 var_s2;
    void *temp_s0_2;
    void *temp_v0;
    void *temp_v0_3;
    void *temp_v1;

    temp_s0 = obj_paouthdr();
    sp34 = obj_pelfhdr(arg0);
    if ((obj_shared(arg0) != 0) && ((u32) (obj_text_size(arg0) + arg1) >= 0x400001U)) {
        __assert("!obj_shared(obj) || ((obj_text_size(obj) + incr) <= MAXTSZ)", "obj_rewrite.c", 0x298);
    }
    obj_set_text_size(arg0, obj_text_size(arg0) + arg1);
    if (obj_otype(arg0) == 2) {
        temp_v0 = realloc(temp_s0->unk14, obj_text_size(arg0));
        temp_s0->unk14 = temp_v0;
        if (temp_v0 == NULL) {
            __assert("ptmp_aohdr->text_start", "obj_rewrite.c", 0x29D);
        }
        temp_s0->unk4 = obj_text_size(arg0);
        if (arg1 > 0) {
            memset((obj_text_size(arg0) + temp_s0->unk14) - arg1, 0, (u32) arg1);
        }
    } else if (obj_otype(arg0) == 3) {
        var_s2 = 0;
        var_s1 = 0;
        if (sp34->unk2C != 0) {
            do {
                temp_v0_2 = obj_pproghdr(arg0);
                temp_v1 = temp_v0_2 + var_s1;
                if ((temp_v1->unk0 == 1) && ((temp_v1->unk18 & 6) == 4)) {
                    sp30 = temp_v0_2;
                    temp_s0_2 = sp30 + var_s1;
                    temp_v0_3 = realloc(temp_s0_2->unkC, obj_text_size(arg0));
                    temp_s0_2->unkC = temp_v0_3;
                    if (temp_v0_3 == NULL) {
                        __assert("ptmp_phdr[i].p_paddr", "obj_rewrite.c", 0x2AC);
                    }
                    temp_s0_2->unk10 = obj_text_size(arg0);
                    if (arg1 > 0) {
                        memset((obj_text_size(arg0) + temp_s0_2->unkC) - arg1, 0, (u32) arg1);
                    }
                }
                var_s2 += 1;
                var_s1 += 0x20;
            } while (var_s2 < (u16) sp34->unk2C);
        }
    } else {
        __assert("0", "obj_rewrite.c", 0x2B6);
    }
}

s32 *(*obj_extend_bss_segment(s32 *(*arg0)(?, s32 *, u32), s32 arg1))(?, s32 *, u32) {
    s32 *sp34;
    u32 sp28;
    s8 *(*sp24)(s32 *(*)(?, s32 *, u32), s8 *, s8 *);
    s32 *var_v0;
    s32 *var_v1;

    if (obj_shared() != 0) {
        sp28 = obj_data_size(arg0);
        if ((u32) (obj_bss_size(arg0) + sp28 + arg1) >= 0x200001U) {
            __assert("!obj_shared(obj)||((obj_data_size(obj)+obj_bss_size(obj)+incr) <= MAXDSZ)", "obj_rewrite.c", 0x2BE);
        }
    }
    obj_set_bss_size(arg0, obj_bss_size(arg0) + arg1);
    sp24 = find_section_byname;
    var_v0 = foreach_section(arg0, (s32 *(*)(s32 *(*)(?, s32 *, u32), s32 *, s32)) find_section_byname, (s32) ".bss");
    var_v1 = var_v0;
    if (var_v0 == (s32 *)-1) {
        var_v0 = foreach_section(arg0, (s32 *(*)(s32 *(*)(?, s32 *, u32), s32 *, s32)) find_section_byname, (s32) ".sbss");
        var_v1 = var_v0;
    }
    if (var_v0 != (s32 *)-1) {
        sp34 = var_v1;
        if (obj_otype(arg0) == 2) {
            var_v1->unk10 = (s32) (var_v1->unk10 + arg1);
        } else {
            sp34 = var_v1;
            if (obj_otype(arg0) == 3) {
                var_v1->unk14 = (s32) (var_v1->unk14 + arg1);
            } else {
                __assert("0", "obj_rewrite.c", 0x2CD);
            }
        }
    }
    return arg0;
}

void obj_set_section_size(s32 *(*arg0)(?, s32 *, u32), s32 *(*arg1)(s32 *(*)(?, s32 *, u32), s32 *, s32), s32 arg2) {
    s32 *sp24;
    s32 *temp_v0;

    temp_v0 = foreach_section((s32 *(*)(?, s32 *, u32)) find_section_byname, arg1);
    if (temp_v0 != (s32 *)-1) {
        sp24 = temp_v0;
        if (obj_otype(arg0) == 2) {
            sp24->unk10 = arg2;
            return;
        }
        if (obj_otype(arg0) == 3) {
            sp24->unk14 = arg2;
            return;
        }
        __assert("0", "obj_rewrite.c", 0x2E1);
    }
}

void obj_map_dynamic(s32 *(*arg0)(?, s32 *, u32), u32 arg1, s32 arg2, s32 arg3, u32 arg4, s32 arg5, s32 arg6) {
    u32 sp48;                                       /* compiler-managed */
    u32 sp44;                                       /* compiler-managed */
    s16 temp_a1;
    s32 *var_s0_3;
    s32 var_s0_2;
    s32 var_s2;
    s32 var_s2_2;
    s32 var_s7;
    s32 var_s7_2;
    u32 *temp_v0_3;
    u32 *var_s0_4;
    u32 temp_s1;
    u32 temp_s1_2;
    u32 temp_s3;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v0_4;
    u32 var_s0;
    u32 var_s6;
    void *var_s5;

    var_s0 = obj_dynsym();
    sp48 = obj_got(arg0);
    sp44 = obj_dynrel(arg0);
    if (arg0->unk180 == 3) {
        var_s0 = obj_vtop(arg0, obj_dynsym(arg0));
        sp48 = obj_vtop(arg0, obj_got(arg0));
        sp44 = obj_vtop(arg0, obj_dynrel(arg0));
    }
    temp_v0 = obj_dynrelsz(arg0);
    var_s6 = temp_v0;
    if (temp_v0 != 0) {
        var_s6 = var_s6 / obj_dynrelent(arg0);
    }
    var_s7 = 0;
    if (obj_dynsymcount(arg0) > 0) {
        var_s5 = var_s0 + (0 * 0x10);
        do {
            temp_s3 = var_s5->unk4;
            if (temp_s3 != 0) {
                if ((temp_s3 >= arg1) && (temp_s3 < (u32) (arg1 + arg2))) {
                    var_s5->unk4 = (u32) *(arg3 + (((u32) (temp_s3 - arg1) >> 2) * 4));
                } else if ((temp_s3 >= arg4) && (temp_s3 < (u32) (arg4 + arg5))) {
                    var_s2 = 0;
                    var_s5->unk4 = (u32) *(arg6 + (((u32) (temp_s3 - arg4) >> 2) * 4));
                    if ((s32) var_s6 > 0) {
                        var_s0_2 = sp44;
                        do {
                            temp_v0_2 = var_s0_2->unk4;
                            temp_a1 = temp_v0_2 & 0xFF;
                            if (var_s7 == (temp_v0_2 >> 8)) {
                                if (temp_a1 == 2) {
                                    temp_v0_3 = obj_vtop(arg0, var_s0_2->unk0);
                                    if (temp_s3 != *temp_v0_3) {
                                        warning("Bad contents for relocation at 0x%x\n", (s16) var_s0_2->unk0);
                                    }
                                    *temp_v0_3 = var_s5->unk4;
                                } else {
                                    warning("obj_map_dynamic: Don't know what to do with Elf relocation type %d\n", temp_a1);
                                }
                            }
                            var_s2 += 8;
                            var_s0_2 += 8;
                        } while (var_s2 != (var_s6 * 8));
                    }
                }
            }
            var_s7 += 1;
            var_s5 += 0x10;
        } while (var_s7 < obj_dynsymcount(arg0));
    }
    var_s2_2 = 0;
    if (obj_locgotcount(arg0) > 0) {
        var_s0_3 = sp48 + (0 * 4);
loop_24:
        if (!(*var_s0_3 & 0xFFFF)) {
            var_s2_2 += 1;
            var_s0_3 += 4;
            if (var_s2_2 < obj_locgotcount(arg0)) {
                goto loop_24;
            }
        }
    }
    var_s7_2 = var_s2_2;
    temp_s1 = obj_locgotcount(arg0);
    if (var_s2_2 < (obj_dynsymcount(arg0) + temp_s1)) {
        var_s0_4 = sp48 + (var_s7_2 * 4);
        do {
            temp_v0_4 = *var_s0_4;
            if (temp_v0_4 != 0) {
                if ((temp_v0_4 >= arg1) && (temp_v0_4 < (u32) (arg1 + arg2))) {
                    *var_s0_4 = *(arg3 + (((u32) (temp_v0_4 - arg1) >> 2) * 4));
                } else if ((temp_v0_4 >= arg4) && (temp_v0_4 < (u32) (arg4 + arg5))) {
                    *var_s0_4 = *(arg6 + (((u32) (temp_v0_4 - arg4) >> 2) * 4));
                }
            }
            var_s7_2 += 1;
            var_s0_4 += 4;
            temp_s1_2 = obj_locgotcount(arg0);
        } while (var_s7_2 < (obj_dynsymcount(arg0) + temp_s1_2));
    }
}

s32 obj_gpvalue(s32 *(*arg0)(?, s32 *, u32)) {
    s16 *temp_s0;
    s32 *temp_v0;
    s32 var_s0;
    u32 var_s1;
    void *temp_v0_2;

    temp_s0 = obj_paouthdr();
    if (obj_otype(arg0) == 2) {
        return temp_s0->unk34;
    }
    temp_v0_2 = obj_pelfhdr(arg0);
    var_s1 = 0;
    if (temp_v0_2->unk2C != 0) {
        var_s0 = 0;
loop_4:
        temp_v0 = obj_pproghdr(arg0);
        if (*(temp_v0 + var_s0) == 0x70000000) {
            return (obj_vtop(arg0, (temp_v0 + var_s0)->unk8))->unk14;
        }
        var_s1 += 1;
        var_s0 += 0x20;
        if (var_s1 >= (u16) temp_v0_2->unk2C) {
            goto block_7;
        }
        goto loop_4;
    }
block_7:
    return __assert("0", "obj_rewrite.c", 0x336);
}

void obj_add_global_abs_symbol(void *arg0, s8 *arg1, s32 arg2) {
    u32 sp30;
    s32 sp2C;
    s32 temp_t0;
    s32 temp_v1_2;
    s32 temp_v1_3;
    u32 temp_a1;
    u32 temp_v1;
    u8 temp_t5;
    void *temp_s0;
    void *temp_s1;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;

    temp_s0 = obj_phdrr();
    temp_s1 = obj_pextr(arg0);
    temp_v1 = temp_s0->unk40;
    temp_a1 = temp_v1 + strlen(arg1) + 1;
    sp30 = temp_v1;
    temp_s0->unk40 = temp_a1;
    temp_v0 = realloc(arg0->unkB0, temp_a1);
    arg0->unkB0 = temp_v0;
    if (temp_v0 == NULL) {
        __assert("obj->o_pssext", "obj_rewrite.c", 0x345);
    }
    strcpy(arg0->unkB0 + sp30, arg1);
    temp_v1_2 = temp_s0->unk58;
    sp2C = temp_v1_2;
    temp_t0 = temp_v1_2 + 1;
    temp_s0->unk58 = temp_t0;
    temp_v0_2 = realloc(temp_s1, temp_t0 * 0x10);
    if (temp_v0_2 == NULL) {
        __assert("ptmp_pextr", "obj_rewrite.c", 0x34B);
    }
    arg0->unkAC = temp_v0_2;
    temp_v0_3 = temp_v0_2 + (sp2C * 0x10);
    temp_v0_3->unk2 = 0;
    temp_t5 = temp_v0_3->unk0 & 0xFF7F;
    temp_v0_3->unk0 = temp_t5;
    temp_v0_3->unk0 = (u8) (temp_t5 & 0xBF);
    temp_v0_3->unk0 = (s16) ((u16) temp_v0_3->unk0 & 0xF800);
    temp_v0_3->unk4 = sp30;
    temp_v0_3->unkC = (u8) ((temp_v0_3->unkC & 0xFF03) | 4);
    temp_v0_3->unk8 = arg2;
    temp_v0_3->unkC = (s16) (((u16) temp_v0_3->unkC & 0xFC1F) | 0xA0);
    temp_v0_3->unkD = (u8) (temp_v0_3->unkD & 0xFFEF);
    temp_v1_3 = (s32) temp_v0_3->unkC;
    temp_v0_3->unkC = (s32) (((u32) ((temp_v1_3 ^ 0xFFFFF) << 0xC) >> 0xC) ^ temp_v1_3);
}

s32 obj_end(s32 *(*arg0)(?, s32 *, u32)) {
    s32 temp_s2;
    s32 temp_s3;
    s32 temp_s4;
    s32 var_s0;
    s32 var_s0_2;
    s32 var_s6;
    s8 *temp_s5;
    u32 temp_s1;
    void *temp_s1_2;
    void *temp_s1_3;

    var_s6 = 0;
    temp_s2 = obj_vtop(arg0->unk118);
    temp_s3 = obj_vtop(arg0, obj_dynsym(arg0));
    temp_s4 = obj_vtop(arg0, obj_dynstr(arg0));
    temp_s5 = "end";
    temp_s1 = elfhash(temp_s5);
    if (!(obj_dynflags(arg0) & 2)) {
        var_s0 = (temp_s2 + (((*temp_s2 - 1) & temp_s1) * 4))->unk8;
    } else {
        var_s0 = (temp_s2 + ((temp_s1 % (u32) *temp_s2) * 4))->unk8;
    }
    temp_s1_2 = temp_s3 + (var_s0 * 0x10);
    if (strcmp(temp_s1_2->unk0 + temp_s4, temp_s5) == 0) {
        var_s6 = temp_s1_2->unk4;
    }
    if (var_s6 == 0) {
        var_s0_2 = (temp_s2 + (*temp_s2 * 4) + (var_s0 * 4))->unk8;
        if (var_s0_2 != 0) {
            do {
                temp_s1_3 = temp_s3 + (var_s0_2 * 0x10);
                if (strcmp(temp_s1_3->unk0 + temp_s4, temp_s5) == 0) {
                    var_s6 = temp_s1_3->unk4;
                }
                var_s0_2 = (temp_s2 + (*temp_s2 * 4) + (var_s0_2 * 4))->unk8;
            } while (var_s0_2 != 0);
        }
    }
    return var_s6;
}

void error(s8 *arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    fprintf(__iob + 0x20, "Error: ");
    fprintf(__iob + 0x20, arg0, arg1, arg2, arg3, arg4);
    exit(1);
}

u32 symbol_class(s32 *(*arg0)(?, s32 *, u32), s32 arg1) {
    u32 temp_v1;

    if (arg1 < 0) {
        return (u32) (usersymbol[-arg1].unk8 << 6) >> 0x1B;
    }
    temp_v1 = arg0->unkD8;
    if ((u32) arg1 >= temp_v1) {
        return (u32) ((arg0->unkAC + (arg1 * 0x10) + -(temp_v1 * 0x10))->unkC << 6) >> 0x1B;
    }
    return (u32) ((arg0->unkA8 + (arg1 * 0xC) + -(arg0->unkCC * 0xC))->unk8 << 6) >> 0x1B;
}

u32 symbol_type(s32 *(*arg0)(?, s32 *, u32), s32 arg1) {
    u32 temp_v1;

    if (arg1 < 0) {
        return (u32) usersymbol[-arg1].unk8 >> 0x1A;
    }
    temp_v1 = arg0->unkD8;
    if ((u32) arg1 >= temp_v1) {
        return (u32) (arg0->unkAC + (arg1 * 0x10) + -(temp_v1 * 0x10))->unkC >> 0x1A;
    }
    return (u32) (arg0->unkA8 + (arg1 * 0xC) + -(arg0->unkCC * 0xC))->unk8 >> 0x1A;
}

u32 symbol_value(s32 *(*arg0)(?, s32 *, u32), s32 arg1) {
    s32 sp2C;
    s32 temp_v0;
    s32 temp_v0_2;
    u32 temp_t6;
    u32 temp_v1_2;
    void *temp_v1;

    if (arg1 < 0) {
        return usersymbol[-arg1].unk4;
    }
    temp_v1_2 = arg0->unkD8;
    if ((u32) arg1 >= temp_v1_2) {
        return ((arg0->unkAC + (arg1 * 0x10) + -(temp_v1_2 * 0x10))->unk8 - arg0->unkFC) + arg0->unkF8;
    }
    if (symbol_type(arg0, arg1) == 9) {
        temp_v0_2 = symbol_to_outer_scope_symbol(arg0, arg1);
        sp2C = temp_v0_2;
        if ((symbol_type(arg0, temp_v0_2) == 7) && (symbol_class(arg0, sp2C) == 0x11)) {
            temp_v0 = search_externals(arg0, symbol_name(arg0, (u32) sp2C), 1);
            if (temp_v0 != -1) {
                return ((s32) (arg0->unkA8 + (arg1 * 0xC) + -(arg0->unkCC * 0xC))->unk4 / 8) + symbol_value(arg0, temp_v0);
            }
        }
    }
    temp_v1 = arg0->unkA8 + (arg1 * 0xC) + -(arg0->unkCC * 0xC);
    temp_t6 = (u32) temp_v1->unk8 >> 0x1A;
    switch (temp_t6) {
    case 1:
    case 2:
    case 5:
    case 6:
    case 14:
        return (temp_v1->unk4 - arg0->unkFC) + arg0->unkF8;
    default:
        return temp_v1->unk4;
    }
}

s32 symbol_iaux(s32 *(*arg0)(?, s32 *, u32), s32 arg1) {
    s32 sp24;
    s32 var_v1;
    u32 temp_a2;
    u32 var_a3;
    void *temp_v0;

    if ((arg1 < 0) && (arg1 != 0xFFFFF)) {
        return usersymbol[-arg1].unk8 & 0xFFFFF;
    }
    temp_a2 = arg0->unkD8;
    if ((u32) arg1 >= temp_a2) {
        temp_v0 = arg0->unkAC + (arg1 * 0x10) + -(temp_a2 * 0x10);
        var_v1 = temp_v0->unkC & 0xFFFFF;
        var_a3 = temp_v0->unk2 + arg0->unkD0;
    } else {
        var_a3 = symbol_to_file((s32 *(*)(?, s32 *, u32)) temp_a2);
        var_v1 = (arg0->unkA8 + (arg1 * 0xC) + -(arg0->unkCC * 0xC))->unk8 & 0xFFFFF;
    }
    if (var_v1 == 0xFFFFF) {
        return 0xFFFFF;
    }
    sp24 = var_v1;
    return var_v1 + file_type_base(arg0, var_a3);
}

s32 file_symbol_iaux(s32 *(*arg0)(?, s32 *, u32), s32 arg2) {
    s32 sp24;
    s32 temp_v1;
    s32 var_v1;
    u32 temp_v0;

    if ((arg2 < 0) && (arg2 != 0xFFFFF)) {
        return usersymbol[-arg2].unk8 & 0xFFFFF;
    }
    temp_v0 = arg0->unkD8;
    if ((u32) arg2 >= temp_v0) {
        var_v1 = (arg0->unkAC + (arg2 * 0x10) + -(temp_v0 * 0x10))->unkC;
    } else {
        var_v1 = (arg0->unkA8 + (arg2 * 0xC) + -(arg0->unkCC * 0xC))->unk8;
    }
    temp_v1 = var_v1 & 0xFFFFF;
    if (temp_v1 == (s32) (s32 *(*)(?, s32 *, u32))0xFFFFF) {
        return (s32) (s32 *(*)(?, s32 *, u32))0xFFFFF;
    }
    sp24 = temp_v1;
    return temp_v1 + file_type_base((s32 *(*)(?, s32 *, u32))0xFFFFF);
}

u32 symbol_isym(s32 *(*arg0)(?, s32 *, u32), s32 arg1) {
    s32 sp24;
    s32 var_v1;
    u32 temp_a2;
    u32 var_a3;
    void *temp_v0;

    if ((arg1 < 0) && (arg1 != 0xFFFFF)) {
        return usersymbol[-arg1].unk8 & 0xFFFFF;
    }
    temp_a2 = arg0->unkD8;
    if ((u32) arg1 >= temp_a2) {
        temp_v0 = arg0->unkAC + (arg1 * 0x10) + -(temp_a2 * 0x10);
        var_v1 = temp_v0->unkC & 0xFFFFF;
        var_a3 = temp_v0->unk2 + arg0->unkD0;
    } else {
        var_a3 = symbol_to_file((s32 *(*)(?, s32 *, u32)) temp_a2);
        var_v1 = (arg0->unkA8 + (arg1 * 0xC) + -(arg0->unkCC * 0xC))->unk8 & 0xFFFFF;
    }
    if (var_v1 == 0xFFFFF) {
        return 0xFFFFFU;
    }
    sp24 = var_v1;
    return var_v1 + file_symbol(arg0, var_a3);
}

s32 file_symbol_isym(s32 *(*arg0)(?, s32 *, u32), s32 arg2) {
    s32 sp24;
    s32 temp_v1;
    s32 var_v1;
    u32 temp_v0;

    if ((arg2 < 0) && (arg2 != 0xFFFFF)) {
        return usersymbol[-arg2].unk8 & 0xFFFFF;
    }
    temp_v0 = arg0->unkD8;
    if ((u32) arg2 >= temp_v0) {
        var_v1 = (arg0->unkAC + (arg2 * 0x10) + -(temp_v0 * 0x10))->unkC;
    } else {
        var_v1 = (arg0->unkA8 + (arg2 * 0xC) + -(arg0->unkCC * 0xC))->unk8;
    }
    temp_v1 = var_v1 & 0xFFFFF;
    if (temp_v1 == (s32) (s32 *(*)(?, s32 *, u32))0xFFFFF) {
        return (s32) (s32 *(*)(?, s32 *, u32))0xFFFFF;
    }
    sp24 = temp_v1;
    return temp_v1 + file_symbol((s32 *(*)(?, s32 *, u32))0xFFFFF);
}

s32 symbol_value_isym(s32 *(*arg0)(?, s32 *, u32), u32 arg1) {
    u32 sp20;
    u32 temp_a3;
    u32 temp_v1;
    u32 var_a2;

    temp_v1 = arg0->unkD8;
    temp_a3 = symbol_value();
    if (arg1 >= temp_v1) {
        var_a2 = (arg0->unkAC + (arg1 * 0x10) + -(temp_v1 * 0x10))->unk2 + arg0->unkD0;
    } else {
        sp20 = temp_a3;
        var_a2 = symbol_to_file(arg0, arg1);
    }
    sp20 = temp_a3;
    return temp_a3 + file_symbol(arg0, var_a2, var_a2, temp_a3);
}

s32 symbol_value_iaux(s32 *(*arg0)(?, s32 *, u32), u32 arg1) {
    u32 sp20;
    u32 temp_a3;
    u32 temp_v1;
    u32 var_a2;

    temp_v1 = arg0->unkD8;
    temp_a3 = symbol_value();
    if (arg1 >= temp_v1) {
        var_a2 = (arg0->unkAC + (arg1 * 0x10) + -(temp_v1 * 0x10))->unk2 + arg0->unkD0;
    } else {
        sp20 = temp_a3;
        var_a2 = symbol_to_file(arg0, arg1);
    }
    sp20 = temp_a3;
    return temp_a3 + file_type_base(arg0, var_a2, var_a2, temp_a3);
}

s32 end_symbol(s32 *(*arg0)(?, s32 *, u32), s32 arg1) {
    u32 temp_v0;
    u32 temp_v0_2;

    temp_v0_2 = symbol_type();
    if ((temp_v0_2 == 6) || (temp_v0_2 == 0xE)) {
        return procedure_end_symbol(arg0, arg1);
    }
    if ((temp_v0_2 != 7) && (temp_v0_2 != 0xB)) {
        return -1;
    }
    temp_v0 = symbol_isym(arg0, arg1);
    if (temp_v0 == 0xFFFFF) {
        return -1;
    }
    return temp_v0 - 1;
}

s32 *(*file_end_symbol(s32 *(*arg0)(?, s32 *, u32), s32 arg1, s32 *(*arg2)(?, s32 *, u32)))(?, s32 *, u32) {
    s32 temp_v0;
    u32 temp_v0_2;

    temp_v0_2 = symbol_type(arg2);
    if ((temp_v0_2 == 6) || (temp_v0_2 == 0xE)) {
        return file_procedure_end_symbol(arg0, arg1, arg2);
    }
    if ((temp_v0_2 != 7) && (temp_v0_2 != 0xB)) {
        return (s32 *(*)(?, s32 *, u32))-1;
    }
    temp_v0 = file_symbol_isym(arg0, arg1, arg2);
    if (temp_v0 == 0xFFFFF) {
        return (s32 *(*)(?, s32 *, u32))-1;
    }
    return temp_v0 - 1;
}

s32 procedure_end_symbol(s32 *(*arg0)(?, s32 *, u32), s32 arg1) {
    s32 temp_v0;

    temp_v0 = symbol_iaux();
    if (temp_v0 == 0xFFFFF) {
        return arg1;
    }
    return aux_isym(arg0, temp_v0) - 1;
}

s32 *(*file_procedure_end_symbol(s32 *(*arg0)(?, s32 *, u32), s32 arg1, s32 *(*arg2)(?, s32 *, u32)))(?, s32 *, u32) {
    s32 temp_v0;

    temp_v0 = file_symbol_iaux();
    if (temp_v0 == 0xFFFFF) {
        return arg2;
    }
    return file_aux_isym(arg0, arg1, temp_v0) - 1;
}

s32 func_00436908(s32 *(*arg0)(?, s32 *, u32), u32 arg1, ? arg2) {
    s32 temp_s5;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 var_s0;
    s32 var_s2;
    s32 var_s3;
    u32 temp_s4;

    temp_v0 = address_to_procedure();
    if (temp_v0 == -1) {
        return -1;
    }
    temp_v0_2 = procedure_symbol(arg0, temp_v0);
    if (temp_v0_2 == -1) {
        return -1;
    }
    temp_s5 = procedure_end_symbol(arg0, temp_v0_2);
    var_s3 = temp_v0_2;
    var_s0 = temp_v0_2 + 1;
    temp_s4 = symbol_value(arg0, temp_v0_2);
    var_s2 = 1;
    if (var_s0 != temp_s5) {
loop_6:
        if (symbol_type(arg0, var_s0) == 7) {
            if (symbol_class(arg0, var_s0) != 1) {
                temp_v0_3 = end_symbol(arg0, var_s0);
                var_s0 = temp_v0_3;
                if (temp_v0_3 == -1) {

                } else {
                    goto block_15;
                }
            } else if (arg1 < (u32) (symbol_value(arg0, var_s0) + temp_s4)) {

            } else {
                if (var_s2 == 0) {
                    var_s3 = var_s0;
                } else {
                    var_s2 = 0;
                }
                goto block_15;
            }
        } else {
block_15:
            var_s0 += 1;
            if (var_s0 != temp_s5) {
                goto loop_6;
            }
        }
    }
    return var_s3;
}

void address_to_symbol(u32 *(*arg1)(s32 *(*)(?, s32 *, u32), u32 *, s32 *(*(*)(s32 *(*)(?, s32 *, u32), u32, ?))(?, s32 *, u32), s32 *(*(*)(s32 *(*)(?, s32 *, u32), u32, ?))(?, s32 *, u32))) {
    foreach_obj((s32 *(*(*)(s32 *(*)(?, s32 *, u32), u32, ?))(?, s32 *, u32)) func_00436908, arg1);
}

s32 symbol_to_outer_scope_symbol(s32 *(*arg0)(?, s32 *, u32), u32 arg1) {
    u32 sp40;
    s32 temp_a1;
    s32 temp_s2;
    s32 temp_v0_3;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v0_4;
    u32 var_s0;

    if (arg1 >= (u32) arg0->unkD8) {
        return -1;
    }
    temp_v0 = file_symbol(arg0, symbol_to_file(arg0, arg1));
    var_s0 = arg1 - 1;
    if (temp_v0 < var_s0) {
loop_4:
        temp_v0_2 = symbol_type(arg0, (s32) var_s0);
        if ((temp_v0_2 == 6) || (temp_v0_2 == 0xE)) {
            return (s32) var_s0;
        }
        if (temp_v0_2 == 8) {
            var_s0 = symbol_isym(arg0, (s32) var_s0);
            goto block_11;
        }
        if (temp_v0_2 == 7) {
            goto block_12;
        }
block_11:
        var_s0 -= 1;
        if (temp_v0 >= var_s0) {
block_12:
            sp40 = temp_v0_2;
            goto block_13;
        }
        goto loop_4;
    }
block_13:
    if (var_s0 < temp_v0) {
        return -1;
    }
    if (B_1001A5D0 != 0) {
        return (s32) var_s0;
    }
    B_1001A5D0 = 1;
    temp_v0_3 = symbol_to_outer_scope_symbol(arg0, (s32) var_s0);
    temp_s2 = temp_v0_3;
    temp_a1 = temp_v0_3;
    B_1001A5D0 = 0;
    temp_v0_4 = symbol_type(arg0, temp_a1);
    if ((temp_s2 == -1) || (sp40 != 7) || ((temp_v0_4 != 6) && (temp_v0_4 != 0xE))) {
        return (s32) var_s0;
    }
    return temp_s2;
}

s8 *symbol_name(s32 *(*arg0)(?, s32 *, u32), s32 arg1) {
    u32 temp_v1;

    if (arg1 < 0) {
        return usersymbol[-arg1].unk0;
    }
    temp_v1 = arg0->unkD8;
    if ((u32) arg1 >= temp_v1) {
        return (arg0->unkAC + (arg1 * 0x10) + -(temp_v1 * 0x10))->unk4 + arg0->unkB0;
    }
    if ((symbol_type(arg0, arg1) == 7) && (symbol_class(arg0, arg1) == 1)) {
        sprintf(B_1001A5D8, "_block%x", symbol_value(arg0, arg1));
        return B_1001A5D8;
    }
    return *(arg0->unkA8 + (arg1 * 0xC) + -(arg0->unkCC * 0xC)) + file_string_base(arg0, symbol_to_file(arg0, (u32) arg1));
}

void *user_symbol_alloc(void) {
    s32 temp_t9;

    if (-sinx >= 0x200) {
        return NULL;
    }
    temp_t9 = sinx * -0xC;
    sinx -= 1;
    return temp_t9 + usersymbol;
}

? user_symbol_free(void) {
    sinx = -2;
    tinx = -2;
    return 0;
}

s32 *user_type_alloc(void) {
    s32 temp_t9;

    if (-tinx >= 0x200) {
        return NULL;
    }
    temp_t9 = tinx * -4;
    tinx -= 1;
    return temp_t9 + usertype;
}

s32 newsymbol(s8 *arg0, s32 arg1, s32 arg2, void *arg3, s32 arg4) {
    s32 *temp_v0_2;
    s32 *temp_v0_4;
    s32 *temp_v0_5;
    s32 *temp_v0_6;
    s32 *temp_v0_7;
    s32 *temp_v0_8;
    s32 temp_v0_3;
    s8 *temp_v0;
    s8 *var_s0;
    void *temp_s1;

    temp_s1 = user_symbol_alloc();
    var_s0 = NULL;
    if (arg0 != NULL) {
        temp_v0 = malloc(strlen(arg0) + 1);
        var_s0 = temp_v0;
        if (temp_v0 == NULL) {
            panic("dbx running out of memory space");
        }
        strcpy(var_s0, arg0);
    }
    temp_s1->unk0 = var_s0;
    temp_s1->unk8 = (u8) ((arg1 * 4) | (temp_s1->unk8 & 0xFF03));
    temp_s1->unk8 = (s16) (((arg2 << 5) & 0x3E0) | ((u16) temp_s1->unk8 & 0xFC1F));
    temp_v0_2 = user_type_alloc();
    if (temp_v0_2 == NULL) {
        panic("dbx running out of type table space");
    }
    *temp_v0_2 = arg3->unkC;
    temp_v0_3 = (s32) temp_s1->unk8;
    temp_s1->unk8 = (s32) (((u32) (((((s32) (usertype - temp_v0_2) >> 2) & 0xFFFFF) ^ temp_v0_3) << 0xC) >> 0xC) ^ temp_v0_3);
    temp_s1->unk4 = arg4;
    if (arg3->unk24 == 3) {
        temp_v0_4 = user_type_alloc();
        if (temp_v0_4 == NULL) {
            panic("dbx running out of type table space");
        }
        *temp_v0_4 = 0xFFF00004;
        temp_v0_5 = user_type_alloc();
        if (temp_v0_5 == NULL) {
            panic("dbx running out of type table space");
        }
        *temp_v0_5 = 0;
        temp_v0_6 = user_type_alloc();
        if (temp_v0_6 == NULL) {
            panic("dbx running out of type table space");
        }
        *temp_v0_6 = arg3->unk34;
        temp_v0_7 = user_type_alloc();
        if (temp_v0_7 == NULL) {
            panic("dbx running out of type table space");
        }
        *temp_v0_7 = arg3->unk38;
        temp_v0_8 = user_type_alloc();
        if (temp_v0_8 == NULL) {
            panic("dbx running out of type table space");
        }
        *temp_v0_8 = arg3->unk3C;
    }
    return (s32) (usersymbol - temp_s1) / 12;
}

? modify_user_symbol(s32 arg0, s32 arg1, s32 arg2, void *arg3, u32 arg4) {
    struct _struct_usersymbol_0xC *sp20;
    s32 *temp_v0;
    s32 *temp_v0_3;
    s32 *temp_v0_4;
    s32 *temp_v0_5;
    s32 *temp_v0_6;
    s32 *temp_v0_7;
    struct _struct_usersymbol_0xC *temp_v1;
    u32 temp_v0_2;

    temp_v1 = &usersymbol[-arg0];
    temp_v1->unk8 = (u8) ((arg1 * 4) | (temp_v1->unk8 & 0xFF03));
    temp_v1->unk8 = (s16) (((arg2 << 5) & 0x3E0) | ((u16) temp_v1->unk8 & 0xFC1F));
    temp_v1->unk4 = arg4;
    if (arg3 != NULL) {
        sp20 = temp_v1;
        temp_v0 = user_type_alloc();
        if (temp_v0 == NULL) {
            sp20 = temp_v1;
            panic("dbx running out of type table space");
        }
        *temp_v0 = arg3->unkC;
        temp_v0_2 = temp_v1->unk8;
        temp_v1->unk8 = ((u32) (((((s32) (usertype - temp_v0) >> 2) & 0xFFFFF) ^ temp_v0_2) << 0xC) >> 0xC) ^ temp_v0_2;
        if (arg3->unk24 == 3) {
            temp_v0_3 = user_type_alloc(arg3);
            if (temp_v0_3 == NULL) {
                panic("dbx running out of type table space");
            }
            *temp_v0_3 = 0xFFF00004;
            temp_v0_4 = user_type_alloc();
            if (temp_v0_4 == NULL) {
                panic("dbx running out of type table space");
            }
            *temp_v0_4 = 0;
            temp_v0_5 = user_type_alloc();
            if (temp_v0_5 == NULL) {
                panic("dbx running out of type table space");
            }
            *temp_v0_5 = arg3->unk34;
            temp_v0_6 = user_type_alloc();
            if (temp_v0_6 == NULL) {
                panic("dbx running out of type table space");
            }
            *temp_v0_6 = arg3->unk38;
            temp_v0_7 = user_type_alloc();
            if (temp_v0_7 == NULL) {
                panic("dbx running out of type table space");
            }
            *temp_v0_7 = arg3->unk3C;
        }
    }
    return 0;
}

s32 find_user_symbol(s8 *arg0, s32 arg1) {
    s32 var_s1;
    s8 *temp_v0;
    struct _struct_usersymbol_0xC *var_s0;

    var_s1 = -2;
    if (sinx < -2) {
        var_s0 = usersymbol + 0x18;
loop_2:
        temp_v0 = var_s0->unk0;
        if ((temp_v0 != NULL) && (case_streq(arg0, temp_v0, arg1) != 0)) {
            return var_s1;
        }
        var_s1 -= 1;
        var_s0 += 0xC;
        if (sinx >= var_s1) {
            goto block_6;
        }
        goto loop_2;
    }
block_6:
    return 0xFFFFF;
}

s8 *func_004374C0(s32 *(*arg0)(?, s32 *, u32), u32 arg1, s32 arg2) {
    u32 temp_v1;

    if (arg2 < 0) {
        return usersymbol[-arg2].unk0;
    }
    temp_v1 = arg0->unkD8;
    if ((u32) arg2 >= temp_v1) {
        return (arg0->unkAC + (arg2 * 0x10) + -(temp_v1 * 0x10))->unk4 + arg0->unkB0;
    }
    if ((symbol_type(arg0, arg2) == 7) && (symbol_class(arg0, arg2) == 1)) {
        sprintf(B_1001A660, "_block%x", symbol_value(arg0, arg2));
        return B_1001A660;
    }
    return *(arg0->unkA8 + (arg2 * 0xC) + -(arg0->unkCC * 0xC)) + file_string_base(arg0, arg1);
}

s32 func_00437628(s32 *(*arg0)(?, s32 *, u32), s32 arg1, s32 arg2) {
    s32 sp30;
    s32 sp2C;
    s32 *(*sp28)(?, s32 *, u32);
    s32 *(*var_s0)(?, s32 *, u32);
    s32 temp_v0;

    var_s0 = arg2 + 1;
    if (symbol_type(var_s0) != 9) {
        do {
            var_s0 += 1;
        } while (symbol_type(arg0, (s32) var_s0) != 9);
    }
    temp_v0 = file_symbol_iaux(arg0, arg1, (s32) var_s0);
    sp30 = temp_v0;
    if (temp_v0 == 0xFFFFF) {
        return 1;
    }
    sp2C = 0;
    sp28 = arg0;
    type_deref(arg0, &sp28);
    return (sp34 & 0x3F) == 0;
}

s32 scope_name_search(s32 *(*arg0)(?, s32 *, u32), u32 arg1, s8 *arg2, s32 arg3, s32 arg4) {
    u32 spD4;
    u32 spD0;
    s32 sp5C;
    s32 sp58;
    s32 *(*sp54)(?, s32 *, u32);
    s32 *(*temp_v0_4)(?, s32 *, u32);
    s32 temp_s1;
    s32 temp_v0;
    s32 temp_v0_6;
    u32 temp_s0;
    u32 temp_s4;
    u32 temp_v0_2;
    u32 temp_v0_3;
    u32 temp_v0_5;
    u32 var_s6;
    void *var_s1;
    void *var_s3;

    if ((arg1 < (u32) arg0->unkCC) || (arg1 >= (u32) arg0->unkD8)) {
        goto block_38;
    }
    temp_v0_2 = symbol_to_file(arg0, arg1);
    spD4 = temp_v0_2;
    temp_v0_3 = file_symbol(arg0, temp_v0_2);
    spD0 = temp_v0_3;
    if (temp_v0_3 == -1U) {
        goto block_38;
    }
    var_s6 = symbol_type(arg0, (s32) arg1);
    temp_v0_4 = file_end_symbol(arg0, (s32) spD4, (s32 *(*)(?, s32 *, u32)) arg1);
    if (temp_v0_4 == (s32 *(*)(?, s32 *, u32))-1) {
        goto block_38;
    }
    var_s3 = temp_v0_4 - 1;
    if (spD0 < (u32) var_s3) {
loop_9:
        temp_s4 = symbol_type(arg0, (s32) var_s3);
        if (case_streq(func_004374C0(arg0, spD4, (s32) var_s3), arg2, arg3) != 0) {
            if ((temp_s4 != 0) || (symbol_class(arg0, (s32) var_s3) != 0)) {
                var_s1 = var_s3;
                if (temp_s4 == 8) {
                    var_s1 = symbol_isym(arg0, (s32) var_s3);
                }
                temp_s0 = symbol_type(arg0, (s32) var_s1);
                temp_v0_5 = symbol_class(arg0, (s32) var_s1);
                if (arg4 != 0) {
                    if ((temp_s0 == 7) && (temp_v0_5 == 0xB)) {
                        return (s32) var_s1;
                    }
                    goto block_21;
                }
                if ((temp_s0 != 7) || (temp_v0_5 != 0xB)) {
                    return (s32) var_s1;
                }
                goto block_21;
            }
            goto block_37;
        }
block_21:
        if (temp_s4 == 8) {
            temp_v0_6 = symbol_isym(arg0, (s32) var_s3);
            if ((symbol_type(arg0, temp_v0_6) == 7) && (symbol_class(arg0, temp_v0_6) == 0xB) && (temp_s1 = temp_v0_6 + 1, (symbol_type(arg0, temp_s1) == 9))) {
                if (func_00437628(arg0, (s32) spD4, temp_v0_6) == 0) {
                    var_s3 = (void *) temp_s1;
                }
            } else if ((var_s6 != 6) && (var_s6 != 0xE) && (var_s6 != 0xB)) {
                var_s3 = (void *) temp_v0_6;
            } else {
                var_s6 = symbol_type(arg0, temp_v0_6);
            }
            goto block_37;
        }
        if ((temp_s4 == 2) && (symbol_class(arg0, (s32) var_s3) == 0x11)) {
            sp5C = symbol_iaux(arg0, (s32) var_s3);
            sp58 = 0;
            type_deref(arg0, &sp54);
            if (sp68 != -1U) {
                temp_v0 = scope_name_search(arg0, sp68, arg2, arg3, arg4);
                if (temp_v0 != -1) {
                    return temp_v0;
                }
            }
        }
block_37:
        var_s3 -= 1;
        if (spD0 >= (u32) var_s3) {
            goto block_38;
        }
        goto loop_9;
    }
block_38:
    return -1;
}

s32 func_00437B00(s32 *(*arg0)(?, s32 *, u32), s32 arg1, s32 *(*arg2)(?, s32 *, u32), s8 *arg3, s32 arg4, s32 arg5) {
    u32 spD4;
    s32 sp60;
    s32 sp5C;
    s32 *(*sp58)(?, s32 *, u32);
    s32 *(*temp_v0_3)(?, s32 *, u32);
    s32 *(*var_s1)(?, s32 *, u32);
    s32 *(*var_s3)(?, s32 *, u32);
    s32 temp_s1;
    s32 temp_v0;
    s32 temp_v0_5;
    u32 temp_s0;
    u32 temp_s4;
    u32 temp_v0_2;
    u32 temp_v0_4;
    u32 var_s6;

    temp_v0_2 = file_symbol(arg2);
    spD4 = temp_v0_2;
    if (temp_v0_2 == -1U) {
        goto block_34;
    }
    var_s6 = symbol_type(arg0, arg1);
    temp_v0_3 = file_end_symbol(arg0, (s32) arg2, (s32 *(*)(?, s32 *, u32)) arg1);
    if (temp_v0_3 == (s32 *(*)(?, s32 *, u32))-1) {
        goto block_34;
    }
    var_s3 = temp_v0_3 - 1;
    if (spD4 < (u32) var_s3) {
loop_5:
        temp_s4 = symbol_type(arg0, (s32) var_s3);
        if (case_streq(func_004374C0(arg0, (u32) arg2, (s32) var_s3), arg3, arg4) != 0) {
            if ((temp_s4 != 0) || (symbol_class(arg0, (s32) var_s3) != 0)) {
                var_s1 = var_s3;
                if (temp_s4 == 8) {
                    var_s1 = file_symbol_isym(arg0, (s32) arg2, var_s3);
                }
                temp_s0 = symbol_type(arg0, (s32) var_s1);
                temp_v0_4 = symbol_class(arg0, (s32) var_s1);
                if (arg5 != 0) {
                    if ((temp_s0 == 7) && (temp_v0_4 == 0xB)) {
                        return (s32) var_s1;
                    }
                    goto block_17;
                }
                if ((temp_s0 != 7) || (temp_v0_4 != 0xB)) {
                    return (s32) var_s1;
                }
                goto block_17;
            }
            goto block_33;
        }
block_17:
        if (temp_s4 == 8) {
            temp_v0_5 = file_symbol_isym(arg0, (s32) arg2, var_s3);
            if ((symbol_type(arg0, temp_v0_5) == 7) && (symbol_class(arg0, temp_v0_5) == 0xB) && (temp_s1 = temp_v0_5 + 1, (symbol_type(arg0, temp_s1) == 9))) {
                if (func_00437628(arg0, (s32) arg2, temp_v0_5) == 0) {
                    var_s3 = (s32 *(*)(?, s32 *, u32)) temp_s1;
                }
            } else if ((var_s6 != 6) && (var_s6 != 0xE) && (var_s6 != 0xB)) {
                var_s3 = (s32 *(*)(?, s32 *, u32)) temp_v0_5;
            } else {
                var_s6 = symbol_type(arg0, temp_v0_5);
            }
            goto block_33;
        }
        if ((temp_s4 == 2) && (symbol_class(arg0, (s32) var_s3) == 0x11)) {
            sp60 = symbol_iaux(arg0, (s32) var_s3);
            sp5C = 0;
            type_deref(arg0, &sp58);
            if (sp6C != -1U) {
                temp_v0 = scope_name_search(arg0, sp6C, arg3, arg4, arg5);
                if (temp_v0 != -1) {
                    return temp_v0;
                }
            }
        }
block_33:
        var_s3 -= 1;
        if (spD4 >= (u32) var_s3) {
            goto block_34;
        }
        goto loop_5;
    }
block_34:
    return -1;
}

s32 file_scope_name_search(s32 *(*arg0)(?, s32 *, u32), s32 *(*arg1)(?, s32 *, u32), s8 *arg2, s32 arg3, s32 arg4) {
    u32 temp_v0;

    temp_v0 = file_symbol();
    if (temp_v0 == -1U) {
        return -1;
    }
    return func_00437B00(arg0, (s32) temp_v0, arg1, arg2, arg3, arg4);
}

u32 search_cobol_main(void *arg0) {
    s32 *var_a2;
    u32 temp_a1;
    u32 temp_v0;
    u32 var_v1;

    temp_v0 = arg0->unkD8;
    var_v1 = temp_v0;
    temp_a1 = temp_v0 + arg0->unk9C->unk58;
    if (temp_v0 < temp_a1) {
        var_a2 = arg0->unkAC + (temp_v0 * 0x10) + -(temp_v0 * 0x10);
loop_2:
        if (*var_a2 & 0x40000000) {
            return var_v1;
        }
        var_v1 += 1;
        var_a2 += 0x10;
        if (var_v1 >= temp_a1) {
            /* Duplicate return node #5. Try simplifying control flow for better match */
            return -1U;
        }
        goto loop_2;
    }
    return -1U;
}

s32 search_procedures(s32 *(*arg0)(?, s32 *, u32), s8 *arg1, s32 arg2) {
    s32 temp_a2;
    s32 var_a3;
    s32 var_s0;
    s32 var_s3;
    s32 var_s4;
    s32 var_s5;
    u16 temp_a0;
    u16 temp_a1;
    u16 var_s1;
    u32 var_v0;
    void *var_v1;

    var_a3 = arg0->unk9C->unk48;
    var_s4 = 0;
    var_s5 = 0;
    if (var_a3 > 0) {
        var_v1 = arg0->unkA0;
loop_2:
        temp_a1 = var_v1->unk2A;
        if (temp_a1 != 0) {
            if (var_v1->unk14 == 0) {
                var_s3 = arg0->unkD8;
            } else {
                var_s3 = var_v1->unk10 + arg0->unkCC;
            }
            temp_a0 = var_v1->unk28;
            var_v0 = temp_a1 + temp_a0;
            var_s1 = temp_a0;
            if (temp_a0 < var_v0) {
                var_s0 = temp_a0 * 0x34;
loop_8:
                temp_a2 = (arg0->unkA4 + var_s0)->unk4;
                if (temp_a2 != -1) {
                    if (case_streq(func_004374C0(arg0, var_s4 + arg0->unkD0, temp_a2 + var_s3), arg1, arg2) != 0) {
                        return var_s1 + arg0->unkD4;
                    }
                    var_v1 = arg0->unkA0 + var_s5;
                    var_v0 = var_v1->unk2A + var_v1->unk28;
                    goto block_12;
                }
block_12:
                var_s1 += 1;
                var_s0 += 0x34;
                if (var_s1 >= var_v0) {
                    var_a3 = arg0->unk9C->unk48;
                    goto block_14;
                }
                goto loop_8;
            }
            goto block_14;
        }
block_14:
        var_s4 += 1;
        var_s5 += 0x48;
        var_v1 += 0x48;
        if (var_s4 >= var_a3) {
            goto block_15;
        }
        goto loop_2;
    }
block_15:
    return -1;
}

u32 search_files(void *arg0, s8 *arg1, s32 arg2, s32 arg3, s32 arg4) {
    s8 *sp148;
    s8 sp48;
    s8 *temp_v0;
    s8 *temp_v0_2;
    s8 *temp_v0_3;
    s8 *var_s0;
    u32 var_s2;

    var_s2 = arg0->unkD0;
    if (var_s2 < (u32) (var_s2 + arg0->unk9C->unk48)) {
loop_2:
        temp_v0 = st_file_name(arg0, var_s2);
        if (temp_v0 != NULL) {
            strcpy(&sp48, temp_v0);
            var_s0 = &sp48;
            if (arg2 == 0) {
                temp_v0_2 = strrchr(&sp48, 0x2E);
                sp148 = temp_v0_2;
                if (temp_v0_2 != NULL) {
                    *temp_v0_2 = 0;
                }
            }
            if (arg4 != 0) {
                temp_v0_3 = strrchr(&sp48, 0x2F);
                if (temp_v0_3 != NULL) {
                    var_s0 = temp_v0_3 + 1;
                }
            }
            if (case_streq(var_s0, arg1, arg3) != 0) {
                if ((arg2 == 0) && (sp148 != NULL)) {
                    *sp148 = 0x2E;
                }
                return var_s2;
            }
            goto block_14;
        }
block_14:
        var_s2 += 1;
        if (var_s2 >= (u32) (arg0->unkD0 + arg0->unk9C->unk48)) {
            goto block_15;
        }
        goto loop_2;
    }
block_15:
    return -1U;
}

s32 st_find_symbol(s32 *(*arg0)(?, s32 *, u32), u32 arg1, s8 *arg2, s32 arg3, s32 arg4) {
    u32 sp28;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    u32 temp_v0_5;

    if ((arg0 == NULL) || (arg1 == 0xFFFFF)) {
        temp_v0_4 = find_user_symbol(arg2, arg3);
        if (temp_v0_4 == 0xFFFFF) {
            goto block_14;
        }
        return temp_v0_4;
    }
    temp_v0_5 = symbol_to_file();
    sp28 = temp_v0_5;
    if ((arg1 >= (u32) arg0->unkCC) && (arg1 < (u32) arg0->unkD8)) {
        temp_v0_3 = func_00437B00(arg0, (s32) arg1, (s32 *(*)(?, s32 *, u32)) temp_v0_5, arg2, arg3, arg4);
        if (temp_v0_3 != -1) {
            return temp_v0_3;
        }
    }
    if (sp28 != -1U) {
        temp_v0_2 = foreach_rfd(arg0, sp28, (s32 (*)(s32 *(*)(?, s32 *, u32), u32, s8 *, s32, s32)) file_scope_name_search, arg2, arg3, arg4);
        if (temp_v0_2 != -1) {
            return temp_v0_2;
        }
    }
    temp_v0 = find_user_symbol(arg2, arg3);
    if (temp_v0 != 0xFFFFF) {
        return temp_v0;
    }
block_14:
    return -1;
}

void case_strcmp(s8 *arg0, s8 *arg1) {
    s8 sp138;
    s8 sp38;
    s8 *var_a2;
    s8 *var_a2_2;
    s8 *var_v0;
    s8 *var_v0_2;
    s8 var_v1;
    s8 var_v1_2;

    var_v1 = *arg0;
    var_v0 = &sp138;
    var_a2 = arg0 + 1;
    if (var_v1 != 0) {
        do {
            if ((var_v1 < 0x5B) && (var_v1 >= 0x41)) {
                *var_v0 = var_v1 + 0x20;
            } else {
                *var_v0 = var_v1;
            }
            var_v0 += 1;
            var_v1 = *var_a2;
            var_a2 += 1;
        } while (var_v1 != 0);
    }
    *var_v0 = 0;
    var_v1_2 = *arg1;
    var_v0_2 = &sp38;
    var_a2_2 = arg1 + 1;
    if (var_v1_2 != 0) {
        do {
            if ((var_v1_2 < 0x5B) && (var_v1_2 >= 0x41)) {
                *var_v0_2 = var_v1_2 + 0x20;
            } else {
                *var_v0_2 = var_v1_2;
            }
            var_v0_2 += 1;
            var_v1_2 = *var_a2_2;
            var_a2_2 += 1;
        } while (var_v1_2 != 0);
    }
    *var_v0_2 = 0;
    strcmp(&sp138, &sp38);
}

s32 case_streq(s8 *arg0, s8 *arg1, s32 arg2) {
    u32 sp24;
    s32 var_v0;

    if (arg0 == NULL) {
        return arg1 == NULL;
    }
    sp24 = strlen(arg0);
    if (strlen(arg1) != sp24) {
        return 0;
    }
    if ((arg2 == 0) || (var_v0 = strcmp(arg0, arg1) == 0, (var_v0 == 0))) {
        var_v0 = arg2 == 0;
        if (var_v0 != 0) {
            var_v0 = case_strcmp(arg0, arg1) == 0;
        }
    }
    return var_v0;
}

void func_004385E4(s32 *(*arg0)(?, s32 *, u32)) {
    s32 var_s0_2;
    s8 *var_v0;
    u32 temp_v0_2;
    u32 var_s4;
    u32 var_v1;
    u8 temp_t3;
    void **temp_v0_3;
    void *temp_s3;
    void *temp_v0;
    void *var_s0;

    var_s0 = B_1001B6AC;
    if (var_s0 != NULL) {
loop_1:
        if (arg0 != var_s0->unk0) {
            var_s0 = var_s0->unk4;
            if (var_s0 == NULL) {
                goto block_3;
            }
            goto loop_1;
        }
    } else {
block_3:
        temp_v0 = malloc(8U);
        if (temp_v0 == NULL) {
            panic("obj_lookup: dbx running out of memory space");
        }
        temp_v0->unk0 = arg0;
        temp_v0->unk4 = (void *) B_1001B6AC;
        B_1001B6AC = temp_v0;
        var_s4 = arg0->unkD8;
        if (var_s4 < (u32) (var_s4 + arg0->unk9C->unk58)) {
            do {
                var_s0_2 = 0;
                temp_s3 = malloc(0x14U);
                temp_s3->unk4 = symbol_name(arg0, var_s4);
                temp_s3->unk8 = symbol_class(arg0, (s32) var_s4);
                temp_s3->unkC = var_s4;
                temp_s3->unk0 = arg0;
                temp_v0_2 = strlen(temp_s3->unk4);
                var_v1 = temp_v0_2;
                if ((s32) temp_v0_2 > 0) {
                    var_v0 = temp_s3->unk4;
                    do {
                        var_s0_2 += 1;
                        temp_t3 = __ctype[*var_v0].unk102;
                        var_v0 += 1;
                        var_v1 = temp_t3 + (var_v1 * 0x265);
                    } while (var_s0_2 < (s32) temp_v0_2);
                }
                temp_v0_3 = &B_1001A6E8[(s32) (var_v1 & 0x3FFFFFFF) % 1009];
                var_s4 += 1;
                temp_s3->unk10 = (void *) *temp_v0_3;
                *temp_v0_3 = temp_s3;
            } while (var_s4 < (u32) (arg0->unkD8 + arg0->unk9C->unk58));
        }
    }
}

s32 search_externals(s32 *(*arg0)(?, s32 *, u32), s8 *arg1, s32 arg2) {
    s32 temp_a1;
    s32 temp_v0_3;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 var_v1;
    s8 *var_v0;
    u16 temp_a0;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v0_4;
    u32 var_a0;
    u8 temp_t8;
    void *var_s0;

    func_004385E4();
    temp_v0 = strlen(arg1);
    var_a0 = temp_v0;
    var_v1 = 0;
    if ((s32) temp_v0 > 0) {
        var_v0 = arg1;
        do {
            var_v1 += 1;
            temp_t8 = __ctype[*var_v0].unk102;
            var_v0 += 1;
            var_a0 = temp_t8 + (var_a0 * 0x265);
        } while (var_v1 < (s32) temp_v0);
    }
    var_s0 = B_1001A6E8[(s32) (var_a0 & 0x3FFFFFFF) % 1009];
    if (var_s0 != NULL) {
loop_5:
        if ((arg0 == var_s0->unk0) && (case_streq(var_s0->unk4, arg1, arg2) != 0)) {
            temp_v0_2 = var_s0->unk8;
            if ((temp_v0_2 != 6) && (temp_v0_2 != 0x15) && (temp_v0_2 != 0x11) && (temp_v0_2 != 0x12)) {
                temp_a1 = var_s0->unkC;
                temp_v0_3 = arg0->unkAC;
                temp_v1_2 = (temp_a1 - arg0->unkD8) * 0x10;
                temp_a0 = (temp_v0_3 + temp_v1_2)->unk2;
                if (temp_a0 != 0) {
                    temp_v0_4 = (temp_v0_3 + temp_v1_2 + 4)->unk8;
                    temp_v1 = temp_v0_4 & 0xFFFFF;
                    if ((temp_v1 != 0xFFFFF) && ((temp_v0_4 >> 0x1A) == 6)) {
                        return (arg0->unkA0 + (temp_a0 * 0x48))->unk10 + arg0->unkCC + temp_v1;
                    }
                }
                return temp_a1;
            }
        }
        var_s0 = var_s0->unk10;
        if (var_s0 == NULL) {
            goto block_17;
        }
        goto loop_5;
    }
block_17:
    return -1;
}

u32 *func_00438A00(s32 *arg0, s32 *arg1, s32 arg2) {
    arg1->unk28 = arg2;
    if (arg1->unk8 < 0) {
        return &usertype[arg2];
    }
    return arg0->unkC0 + ((arg2 - arg0->unkC8) * 4);
}

u32 aux_isym(s32 *(*arg0)(?, s32 *, u32), s32 arg1) {
    u32 sp20;
    u32 temp_a1;
    u32 temp_v1;

    temp_v1 = *(arg0->unkC0 + (arg1 * 4) + -(arg0->unkC8 * 4));
    temp_a1 = type_to_file();
    if (temp_v1 == 0xFFFFF) {
        return 0xFFFFFU;
    }
    sp20 = temp_v1;
    return temp_v1 + file_symbol(arg0, temp_a1, 0xFFFFFU);
}

s32 *(*file_aux_isym(s32 *(*arg0)(?, s32 *, u32), s32 arg2))(?, s32 *, u32) {
    s32 *(*sp24)(?, s32 *, u32);
    s32 *(*temp_v1)(?, s32 *, u32);

    temp_v1 = *(arg0->unkC0 + (arg2 * 4) + -(arg0->unkC8 * 4));
    if (temp_v1 == (s32 *(*)(?, s32 *, u32))0xFFFFF) {
        return (s32 *(*)(?, s32 *, u32))0xFFFFF;
    }
    sp24 = temp_v1;
    return temp_v1 + file_symbol((s32 *(*)(?, s32 *, u32))0xFFFFF);
}

u32 *func_00438B64(u32 *arg0, s32 *arg1, u32 arg2, s32 arg3) {
    if (B_1001B6B4 == 0) {
        B_1001B6B4 = 1;
        B_1001B6B0 = gethostsex();
    }
    unksp24 = (u32) arg2;
    if ((arg1 != NULL) && (((s32) *arg1 >> 0x1F) != 0)) {
        swap_aux(&unksp24, arg3, B_1001B6B0);
    }
    *arg0 = unksp24;
    return arg0;
}

void func_00438C1C(s32 *arg0, s32 *arg1, s32 arg2) {
    u32 *sp44;
    u32 sp40;
    u32 sp34;
    s32 *sp30;
    u32 sp2C;
    s32 *temp_a2;
    u32 *temp_v0;
    u32 temp_v1;
    u32 var_a0;
    u32 var_a2;

    temp_a2 = arg1->unk28;
    sp30 = temp_a2;
    temp_v0 = func_00438A00(temp_a2);
    sp44 = temp_v0 + 4;
    func_00438B64(&sp2C, arg0, *temp_v0, 1);
    sp34 = sp2C;
    temp_v1 = sp34 >> 0x14;
    if (temp_v1 == 0xFFF) {
        func_00438B64(&sp2C, arg0, *sp44, 4);
        var_a2 = sp2C;
        arg1->unk28 = (s32 *) (arg1->unk28 + 2);
    } else {
        var_a2 = temp_v1;
        arg1->unk28 = (s32 *) (arg1->unk28 + 1);
    }
    var_a0 = var_a2;
    if (arg0->unk9C->unk50 == 0) {

    } else {
        sp40 = var_a2;
        var_a0 = *(arg0->unkBC + ((var_a2 + (arg0->unkA0 + (type_to_file(arg0, sp30, var_a2) * 0x48) + -(arg0->unkD0 * 0x48))->unk34) * 4));
    }
    if (arg2 == 0) {
        arg1->unk30 = (s32) ((arg0->unkA0 + (var_a0 * 0x48))->unk10 + arg0->unkCC + (sp34 & 0xFFFFF));
        return;
    }
    arg1->unk18 = (s32) ((arg0->unkA0 + (var_a0 * 0x48))->unk2C + arg0->unkC8 + (sp34 & 0xFFFFF));
}

u32 get_aux(void *arg0, s32 arg1) {
    u32 *var_v1;

    if (arg1 < 0) {
        var_v1 = &usertype[arg1];
    } else {
        var_v1 = arg0->unkC0 + ((arg1 - arg0->unkC8) * 4);
    }
    return *var_v1;
}

void get_range(s32 *arg0, s32 *arg1, s32 *arg2) {
    u32 sp40;
    u32 sp34;
    u32 sp30;
    u32 *temp_v0;
    u32 *var_s1;
    u32 temp_a0;
    u32 temp_a2;
    u32 var_t1;
    u32 var_v1;

    temp_v0 = func_00438A00(arg2, arg1);
    var_s1 = temp_v0 + 4;
    func_00438B64(&sp30, arg0, *temp_v0, 1);
    temp_a0 = sp30 >> 0x14;
    sp34 = sp30;
    if (temp_a0 == 0xFFF) {
        temp_a2 = *var_s1;
        var_s1 += 4;
        func_00438B64(&sp30, arg0, temp_a2, 4);
        var_v1 = sp30;
    } else {
        var_v1 = temp_a0;
    }
    var_t1 = var_v1;
    if (arg0->unk9C->unk50 == 0) {

    } else {
        sp40 = var_v1;
        var_t1 = *(arg0->unkBC + ((var_v1 + (arg0->unkA0 + (type_to_file(arg0, arg1) * 0x48) + -(arg0->unkD0 * 0x48))->unk34) * 4));
    }
    arg2->unk18 = (s32) ((arg0->unkA0 + (var_t1 * 0x48))->unk2C + arg0->unkC8 + (sp34 & 0xFFFFF));
    func_00438B64(&sp30, arg0, *var_s1, 4);
    arg2->unk1C = sp30;
    func_00438B64(&sp30, arg0, *(var_s1 + 4), 4);
    arg2->unk20 = sp30;
}

void func_00439018(s32 *arg0, s32 *arg1) {
    u32 *sp3C;
    u32 sp2C;
    s32 *temp_t2;
    s32 temp_t1;
    u32 *temp_v0;
    u32 temp_t0;

    func_00438B64(&sp2C, arg0, *func_00438A00(arg1->unk28), 0);
    temp_t0 = sp2C;
    temp_t2 = arg1->unk28 + 1;
    arg1->unk28 = temp_t2;
    arg1->unkC = temp_t0;
    if ((temp_t0 >> 0x1F) != 0) {
        func_00438B64(&sp2C, arg0, *func_00438A00(arg0, arg1, (s32) temp_t2), 4);
        arg1->unk28 = (s32 *) (arg1->unk28 + 1);
        arg1->unk40 = sp2C;
    }
    temp_t1 = (u8) arg1->unkC & 0x3F;
    switch (temp_t1) {
    case 12:
    case 13:
    case 14:
    case 15:
        func_00438C1C(arg0, arg1, 0);
        arg1->unk14 = (s32) arg1->unk30;
        return;
    case 20:
        func_00438C1C(arg0, arg1, 1);
        return;
    case 17:
        func_00438C1C(arg0, arg1, 1);
        return;
    case 16:
        func_00438C1C(arg0, arg1, 1);
        temp_v0 = func_00438A00(arg0, arg1, (s32) arg1->unk28);
        sp3C = temp_v0 + 4;
        func_00438B64(&sp2C, arg0, *temp_v0, 4);
        arg1->unk1C = sp2C;
        func_00438B64(&sp2C, arg0, *sp3C, 4);
        arg1->unk28 = (s32 *) (arg1->unk28 + 2);
        arg1->unk20 = sp2C;
        /* fallthrough */
    default:
        return;
    }
}

void next_tq(s32 *arg0) {
    s32 *sp44;
    u32 *sp40;
    u32 sp28;
    s32 *temp_a3;
    s32 temp_t1;
    s32 temp_t4;
    s32 temp_t9;
    s32 temp_v0_2;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 temp_v1_4;
    s32 temp_v1_5;
    s32 var_a0;
    s32 var_v1;
    u32 *temp_v0;
    u32 *temp_v1_6;
    u32 temp_a0;
    u32 temp_a0_2;
    u32 temp_a0_3;
    u32 temp_a0_4;
    u32 temp_a0_5;
    u32 temp_a1;
    u32 temp_t8;

    temp_a3 = arg0->unk0;
    temp_a1 = arg0->unkC & 0xF;
    var_v1 = arg0->unk10;
    arg0->unk24 = 0U;
    if ((temp_a1 != 0) && (var_v1 >= 0)) {
        var_v1 -= 1;
        if (var_v1 == 0) {
            arg0->unk24 = temp_a1;
        }
    }
    temp_a0 = (u8) arg0->unkD >> 4;
    if ((temp_a0 != 0) && (var_v1 >= 0)) {
        var_v1 -= 1;
        if (var_v1 == 0) {
            arg0->unk24 = temp_a0;
        }
    }
    temp_a0_2 = (s32) arg0->unkC & 0xF;
    if ((temp_a0_2 != 0) && (var_v1 >= 0)) {
        var_v1 -= 1;
        if (var_v1 == 0) {
            arg0->unk24 = temp_a0_2;
        }
    }
    temp_a0_3 = (u8) arg0->unkF >> 4;
    if ((temp_a0_3 != 0) && (var_v1 >= 0)) {
        var_v1 -= 1;
        if (var_v1 == 0) {
            arg0->unk24 = temp_a0_3;
        }
    }
    temp_a0_4 = arg0->unkE & 0xF;
    if ((temp_a0_4 != 0) && (var_v1 >= 0)) {
        var_v1 -= 1;
        if (var_v1 == 0) {
            arg0->unk24 = temp_a0_4;
        }
    }
    temp_a0_5 = (u16) arg0->unkE >> 0xC;
    if ((temp_a0_5 != 0) && (var_v1 >= 0) && (var_v1 == 0)) {
        arg0->unk24 = temp_a0_5;
    }
    temp_t8 = arg0->unk24;
    arg0->unk10 = (s32) (arg0->unk10 + 1);
    switch (temp_t8) {
    case 3:
        if (arg0->unk8 != 0xFFFFF) {
            if (arg0->unk44 == 0) {
                var_a0 = 0;
                temp_v1 = arg0->unk10 - 1;
                temp_v1_2 = temp_v1 - 1;
                if ((temp_v1 < 1) && ((arg0->unkC & 0xF) == 3)) {
                    var_a0 = 1;
                }
                temp_v1_3 = temp_v1_2 - 1;
                if ((temp_v1_2 < 1) && (((u8) arg0->unkD >> 4) == 3)) {
                    var_a0 += 1;
                }
                temp_v1_4 = temp_v1_3 - 1;
                if ((temp_v1_3 < 1) && (((s32) arg0->unkC & 0xF) == 3)) {
                    var_a0 += 1;
                }
                temp_v1_5 = temp_v1_4 - 1;
                if ((temp_v1_4 < 1) && (((u8) arg0->unkF >> 4) == 3)) {
                    var_a0 += 1;
                }
                if ((temp_v1_5 < 1) && ((arg0->unkE & 0xF) == 3)) {
                    var_a0 += 1;
                }
                if (((temp_v1_5 - 1) <= 0) && (((u16) arg0->unkE >> 0xC) == 3)) {
                    var_a0 += 1;
                }
                arg0->unk48 = var_a0;
                arg0->unk44 = var_a0;
                arg0->unk28 = (s32) ((arg0->unk28 + (var_a0 * 5)) - 5);
            } else {
                arg0->unk28 = (s32) (arg0->unk28 - 0xA);
            }
            sp44 = temp_a3;
            func_00438C1C(temp_a3, arg0, 1, temp_a3);
            temp_v0 = func_00438A00(sp44, arg0, arg0->unk28);
            sp40 = temp_v0 + 4;
            func_00438B64(&sp28, sp44, *temp_v0, 4);
            temp_v1_6 = sp40 + 4;
            arg0->unk34 = sp28;
            sp40 = temp_v1_6;
            func_00438B64(&sp28, sp44, temp_v1_6->unk-4, 4);
            arg0->unk38 = sp28;
            func_00438B64(&sp28, sp44, *sp40, 4);
            temp_t9 = arg0->unk28 + 3;
            temp_t1 = arg0->unk48 - 1;
            arg0->unk28 = temp_t9;
            arg0->unk48 = temp_t1;
            arg0->unk3C = sp28;
            if (temp_t1 == 0) {
                temp_t4 = arg0->unk44;
                arg0->unk44 = 0;
                arg0->unk28 = (s32) ((temp_t9 + (temp_t4 * 5)) - 5);
                return;
            }
        } else {
        default:
        case 1:
        case 2:
        case 4:
        case 5:
            return;
        }
        break;
    case 0:
        if ((s32) arg0->unkC & 0x40000000) {
            sp44 = temp_a3;
            func_00438B64(&sp28, sp44, *func_00438A00(temp_a3, arg0, arg0->unk28, temp_a3), 0);
            arg0->unk28 = (s32) (arg0->unk28 + 1);
            arg0->unk10 = 0;
            arg0->unkC = (u32) sp28;
            next_tq(arg0);
        } else {
            arg0->unk28 = -1;
            if (((u8) arg0->unkC & 0x3F) == 0x14) {
                temp_v0_2 = arg0->unk18;
                arg0->unk28 = temp_v0_2;
                arg0->unk8 = temp_v0_2;
                func_00439018(temp_a3, arg0, temp_a3);
            }
        }
        break;
    }
}

void type_deref(s32 *arg1) {
    s32 temp_v0;
    s32 temp_v0_2;

    if (arg1->unk4 == 0) {
        temp_v0 = arg1->unk8;
        if (temp_v0 >= 0) {
            arg1->unk28 = temp_v0;
        } else {
            arg1->unk28 = (s32) -temp_v0;
        }
        arg1->unk10 = 0;
        arg1->unk44 = 0;
        arg1->unk18 = 0;
        arg1->unk14 = 0;
        arg1->unk4 = temp_v0;
        func_00439018();
    }
    temp_v0_2 = arg1->unk28;
    arg1->unk2C = temp_v0_2;
    if (temp_v0_2 != -1) {
        next_tq(arg1, arg1);
    }
}

void panic(s8 *arg0, s32 arg1, s32 arg2, s32 arg3) {
    fprintf(__iob + 0x20, "Internal: ");
    fprintf(__iob + 0x20, arg0, arg1, arg2, arg3);
    exit(1);
}

void st_setchdr(void *arg0) {
    st_pchdr = arg0;
}

void *st_currentpchdr(void) {
    return st_pchdr;
}

void st_free(void) {
    void *temp_a0;
    void *temp_a0_10;
    void *temp_a0_11;
    void *temp_a0_12;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_a0_4;
    void *temp_a0_5;
    void *temp_a0_6;
    void *temp_a0_7;
    void *temp_a0_8;
    void *temp_a0_9;
    void *temp_a2;

    temp_a2 = st_pchdr;
    if (temp_a2 != NULL) {
        temp_a0 = temp_a2->unk38;
        if ((temp_a0 != NULL) && (temp_a0 != (void *)-1) && (temp_a0 != (void *)1)) {
            free(temp_a0);
        }
        temp_a0_2 = temp_a2->unk18;
        if ((temp_a0_2 != NULL) && (temp_a0_2 != (void *)-1) && (temp_a0_2 != (void *)1)) {
            free(temp_a0_2);
        }
        temp_a0_3 = temp_a2->unk24;
        if ((temp_a0_3 != NULL) && (temp_a0_3 != (void *)-1) && (temp_a0_3 != (void *)1)) {
            free(temp_a0_3);
        }
        temp_a0_4 = temp_a2->unk8;
        if ((temp_a0_4 != NULL) && (temp_a0_4 != (void *)-1) && (temp_a0_4 != (void *)1)) {
            free(temp_a0_4);
        }
        temp_a0_5 = temp_a2->unk4;
        if ((temp_a0_5 != NULL) && (temp_a0_5 != (void *)-1) && (temp_a0_5 != (void *)1)) {
            free(temp_a0_5);
        }
        temp_a0_6 = temp_a2->unk14;
        if ((temp_a0_6 != NULL) && (temp_a0_6 != (void *)-1) && (temp_a0_6 != (void *)1)) {
            free(temp_a0_6);
        }
        temp_a0_7 = temp_a2->unk30;
        if ((temp_a0_7 != NULL) && (temp_a0_7 != (void *)-1) && (temp_a0_7 != (void *)1)) {
            free(temp_a0_7);
        }
        temp_a0_8 = temp_a2->unk44;
        if ((temp_a0_8 != NULL) && (temp_a0_8 != (void *)-1) && (temp_a0_8 != (void *)1)) {
            free(temp_a0_8);
        }
        temp_a0_9 = temp_a2->unk50;
        if ((temp_a0_9 != NULL) && (temp_a0_9 != (void *)-1) && (temp_a0_9 != (void *)1)) {
            free(temp_a0_9);
        }
        temp_a0_10 = temp_a2->unk48;
        if ((temp_a0_10 != NULL) && (temp_a0_10 != (void *)-1) && (temp_a0_10 != (void *)1)) {
            free(temp_a0_10);
        }
        temp_a0_11 = temp_a2->unk34;
        if ((temp_a0_11 != NULL) && (temp_a0_11 != (void *)-1) && (temp_a0_11 != (void *)1)) {
            free(temp_a0_11);
        }
        temp_a0_12 = temp_a2->unk4C;
        if ((temp_a0_12 != NULL) && (temp_a0_12 != (void *)-1) && (temp_a0_12 != (void *)1)) {
            free(temp_a0_12);
        }
        bzero(temp_a2, 0x60, temp_a2);
    }
}

void st_extstradd(s8 *arg0) {
    s32 temp_s2;
    s32 var_v1;
    u32 temp_v0;
    void *temp_s0;

    if (st_pchdr == NULL) {
        st_internal("st_extstradd: you didn't initialize with cuinit or readst\n");
    }
    if (arg0 == NULL) {
        st_error("st_extstradd: argument is nil\n");
    }
    temp_v0 = strlen(arg0);
    temp_s0 = st_pchdr;
    temp_s2 = temp_v0 + 1;
    var_v1 = temp_s0->unk28;
    if ((var_v1 + temp_v0) >= temp_s0->unk2C) {
        do {
            st_pchdr->unk24 = st_malloc(temp_s0->unk24, temp_s0 + 0x2C, 1, 0x200);
            var_v1 = st_pchdr->unk28;
        } while (st_pchdr->unk2C < (var_v1 + temp_s2));
    }
    strcpy(temp_s0->unk24 + var_v1, arg0);
    st_pchdr->unk28 = (s32) (st_pchdr->unk28 + temp_s2);
}

s8 *st_str_extiss(s32 arg0) {
    if ((arg0 >= 0) && (arg0 < st_pchdr->unk28)) {
        return st_pchdr->unk24 + arg0;
    }
    return NULL;
}

void st_idn_dn(s32 arg0, s32 arg1) {
    s32 sp24;
    s32 temp_v0;
    s32 var_t0;
    void *temp_v1;

    temp_v1 = st_pchdr;
    if (temp_v1 == NULL) {
        st_internal("st_idn_dn: you didn't initialize with cuinit or readst\n");
    }
    temp_v0 = temp_v1->unk40;
    var_t0 = temp_v0;
    if (temp_v1->unk3C >= temp_v0) {
        sp24 = temp_v0;
        var_t0 = sp24;
        st_pchdr->unk38 = st_malloc(temp_v1->unk38, temp_v1 + 0x40, 8, 0x80);
    }
    if (var_t0 == 0) {
        bzero(temp_v1->unk38, 0x10);
    }
    *(temp_v1->unk38 + (temp_v1->unk3C * 8)) = arg0;
    (st_pchdr->unk38 + (st_pchdr->unk3C * 8))->unk4 = arg1;
    st_pchdr->unk3C = (s32) (st_pchdr->unk3C + 1);
}

void st_idn_rndx(u32 arg0) {
    s32 sp24;
    s32 temp_v0;
    s32 var_t0;
    void *temp_v1;

    temp_v1 = st_pchdr;
    if (temp_v1 == NULL) {
        st_internal("st_idn_rndx: you didn't initialize with cuinit or readst\n");
    }
    temp_v0 = temp_v1->unk40;
    var_t0 = temp_v0;
    if (temp_v1->unk3C >= temp_v0) {
        sp24 = temp_v0;
        var_t0 = sp24;
        st_pchdr->unk38 = st_malloc(temp_v1->unk38, temp_v1 + 0x40, 8, 0x80);
    }
    if (var_t0 == 0) {
        bzero(temp_v1->unk38, 0x10);
    }
    *(temp_v1->unk38 + (temp_v1->unk3C * 8)) = arg0 >> 0x14;
    (st_pchdr->unk38 + (st_pchdr->unk3C * 8))->unk4 = (s32) (arg0 & 0xFFFFF);
    st_pchdr->unk3C = (s32) (st_pchdr->unk3C + 1);
}

s32 *st_rndx_idn(s32 *arg0, s32 arg1) {
    u16 sp2C;                                       /* compiler-managed */
    s32 sp24;
    s32 temp_a2;
    s32 temp_a2_2;
    u32 var_a1;
    void *temp_v1;

    temp_v1 = st_pchdr;
    temp_a2 = temp_v1->unk3C;
    if (arg1 >= temp_a2) {
        st_internal("st_rndx_idn: idn (%d) greater than max (%d)\n", temp_a2, arg1);
    }
    temp_a2_2 = arg1 * 8;
    var_a1 = *(temp_v1->unk38 + temp_a2_2);
    if (var_a1 >= 0xFFFU) {
        sp24 = temp_a2_2;
        st_internal("st_rndx_idn: old interface can't put rfd(%d) into rndx, use st_pdn_idn instead\n", (s32) var_a1, temp_a2_2, arg1);
        var_a1 = *(st_pchdr->unk38 + temp_a2_2);
    }
    sp2C = (var_a1 * 0x10) | (sp2C & 0xF);
    sp2C = ((u32) ((((temp_v1->unk38 + temp_a2_2)->unk4 & 0xFFFFF) ^ (s32) sp2C) << 0xC) >> 0xC) ^ (s32) sp2C;
    *arg0 = sp2C;
    return arg0;
}

void st_setidn(s32 arg0, s32 arg1) {
    s32 temp_v0;
    s32 temp_v0_2;
    void *temp_t7;
    void *temp_t9;

    if ((arg0 < 0) || (arg1 < 0) || (temp_v0 = st_pchdr->unk3C, ((arg0 < temp_v0) == 0)) || (arg1 >= temp_v0)) {
        st_internal("st_setidn: idnsrc (%d) or idndest (%d) out of range\n", arg0);
    }
    temp_v0_2 = st_pchdr->unk38;
    temp_t9 = temp_v0_2 + (arg1 * 8);
    temp_t7 = temp_v0_2 + (arg0 * 8);
    temp_t7->unk0 = (s32) temp_t9->unk0;
    temp_t7->unk4 = (s32) temp_t9->unk4;
}

s32 st_pext_dn(s32 arg0, s32 arg1) {
    if (arg0 != 0x7FFFFFFF) {
        st_internal("st_pext_dn: rfd field (%d) isn't equal to ST_EXTIFD(%d)\n", arg0, 0x7FFFFFFF);
    }
    if ((arg1 < 0) || (st_pchdr->unk1C < arg1)) {
        st_internal("st_pext_dn: index out of range (%d)\n\0\0\0\0libmld", arg1);
    }
    return st_pchdr->unk18 + (arg1 * 0x10);
}

s32 st_iextmax(void) {
    return st_pchdr->unk1C;
}

void st_setmsgname(s8 *arg0) {
    s8 *temp_v0;
    s8 *var_a0;

    temp_v0 = malloc(strlen(arg0) + 1);
    var_a0 = temp_v0;
    st_errname = temp_v0;
    if (temp_v0 == NULL) {
        fprintf(__iob + 0x20, "libmld: Internal: cannot allocate to initialize component name for libmld errors\n");
        exit(1);
        var_a0 = st_errname;
    }
    strcpy(var_a0, arg0);
}

s32 st_currentifd(void) {
    if (pcfdcur == NULL) {
        return -1;
    }
    return st_ifd_pcfd(pcfdcur);
}

s32 st_ifdmax(void) {
    return st_pchdr->unkC;
}

void st_setfd(s32 arg0) {
    s32 var_v0;

    var_v0 = st_pchdr->unk4;
    if (var_v0 == 0) {
        st_internal("routine: you didn't initialize with st_cuinit or st_readst\n");
        var_v0 = st_pchdr->unk4;
    }
    pcfdcur = var_v0 + (arg0 << 6);
}

void st_fdadd(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s32 spEC;
    s32 spE8;
    s32 spE4;
    s8 spBC;
    struct stat sp34;
    u32 sp28;
    s32 sp24;
    ? *temp_t5;
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_t6;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_8;
    s32 temp_v1_5;
    s32 var_t1;
    s32 var_v0;
    s32 var_v1;
    s32 var_v1_2;
    s32 var_v1_3;
    s8 *temp_v0_4;
    s8 *temp_v0_5;
    s8 *temp_v0_6;
    s8 *temp_v0_7;
    s8 *var_a1;
    u32 temp_a1;
    u32 temp_v0_3;
    void **temp_t3;
    void **temp_t4;
    void *temp_t0;
    void *temp_t0_2;
    void *temp_t0_3;
    void *temp_t0_4;
    void *temp_t9;
    void *temp_v1;
    void *temp_v1_2;
    void *temp_v1_3;
    void *temp_v1_4;

    temp_t0 = st_pchdr;
    temp_t6 = temp_t0->unkC;
    sp24 = temp_t6;
    if (temp_t6 >= 0x7FFFFFFF) {
        st_error("st_fdadd: number of files (%d) exceeds max (%d)\n", temp_t6, 0x7FFFFFFF);
        sp24 = st_pchdr->unkC;
    }
    temp_v0 = temp_t0->unk10;
    if (sp24 >= temp_v0) {
        spEC = temp_v0;
        spE8 = temp_v0;
        st_pchdr->unk4 = st_malloc(temp_t0->unk4, temp_t0 + 0x10, 0x40, 0x19);
        st_pchdr->unk8 = st_malloc(st_pchdr->unk8, &spEC, 0x48, 0x19);
        temp_a2 = st_pchdr->unk10;
        if (spEC != temp_a2) {
            st_internal("st_fdadd: allocation botch (%d fds and %d cfds) in %s\n", spEC, temp_a2, arg0);
        }
        var_t1 = spE8 - 1;
        if (spE8 != 0) {
            var_v1 = var_t1 * 0x48;
            var_v0 = var_t1 << 6;
            do {
                temp_t9 = st_pchdr->unk8 + var_v1;
                temp_t4 = st_pchdr->unk4 + var_v0;
                var_v0 -= 0x40;
                var_v1 -= 0x48;
                *temp_t4 = temp_t9;
                var_t1 -= 1;
            } while (var_t1 != 0);
        }
    }
    temp_t0_2 = st_pchdr;
    temp_t3 = temp_t0_2->unk4 + (temp_t0_2->unkC << 6);
    pcfdcur = temp_t3;
    M2C_MEMCPY_ALIGNED(temp_t3, &B_1001B708, 0x3C);
    *(temp_t3 + 0x3C) = *(&B_1001B708 + 0x3C);
    temp_t0_3 = st_pchdr;
    *pcfdcur = (temp_t0_3->unkC * 0x48) + temp_t0_3->unk8;
    temp_t0_4 = st_pchdr;
    temp_t0_4->unkC = (s32) (temp_t0_4->unkC + 1);
    M2C_MEMCPY_ALIGNED(*pcfdcur, &B_1001B6C0, 0x48);
    temp_v1 = *pcfdcur;
    temp_v1->unk3C = (u8) ((arg1 * 8) | (temp_v1->unk3C & 0xFF07));
    temp_v1_2 = *pcfdcur;
    temp_v1_2->unk3C = (u8) (((arg2 * 4) & 4) | (temp_v1_2->unk3C & 0xFFFB));
    temp_v1_3 = *pcfdcur;
    temp_v1_3->unk3D = (u8) ((arg3 << 6) | (temp_v1_3->unk3D & 0xFF3F));
    temp_v1_4 = *pcfdcur;
    temp_v1_4->unk3C = (u8) (((gethostsex() == 0) & 1) | (temp_v1_4->unk3C & 0xFFFE));
    st_stradd("", &pcfdcur);
    (*pcfdcur)->unk4 = st_stradd((s8 *) arg0);
    if ((__sgi_common_dummy_file == 0) && ((arg3 == 0) || (arg3 >= 3))) {
        st_stradd("</4Debug/>", &pcfdcur);
        if (D_10015C0C == 0) {
            D_10015C0C = 1;
            if (gethostname(B_1001B748, 0x40) < 0) {
                temp_t5 = ":";
                B_1001B748->unk0 = (s8) temp_t5->unk0;
                B_1001B748->unk1 = (u8) temp_t5->unk1;
            } else {
                strcat(B_1001B748, ":");
            }
            temp_v0_2 = pathconf((s8 *) arg0, 5);
            var_v1_2 = temp_v0_2;
            if (temp_v0_2 < 5) {
                var_v1_2 = 5;
            }
            temp_v1_5 = var_v1_2 * 4;
            temp_v0_3 = (var_v1_2 * 0xC) + 0xA;
            sp28 = temp_v0_3;
            spE4 = temp_v1_5;
            temp_v0_4 = malloc(temp_v0_3);
            B_1001B790 = temp_v0_4;
            if (temp_v0_4 == NULL) {
                spE4 = temp_v1_5;
                st_internal("st_fdadd: could not malloc path name!! %d\n", (s32) sp28);
            }
            spE4 = temp_v1_5;
            temp_v0_5 = getcwd(NULL, sp28);
            var_v1_3 = temp_v1_5;
            B_1001B794 = temp_v0_5;
            if (temp_v0_5 == NULL) {
                spE4 = var_v1_3;
                temp_v0_6 = getenv("PWD");
                var_a1 = temp_v0_6;
                if (temp_v0_6 == NULL) {
                    var_a1 = "";
                }
                spE4 = var_v1_3;
                B_1001B794 = var_a1;
                temp_a0 = strlen(var_a1) + 1;
                if (var_v1_3 < temp_a0) {
                    var_v1_3 = temp_a0 * 2;
                }
            }
            temp_a1 = (var_v1_3 * 4) + 0xA;
            sp28 = temp_a1;
            temp_v0_7 = malloc(temp_a1);
            B_1001B78C = temp_v0_7;
            if (temp_v0_7 == NULL) {
                st_internal("Cannot st_fdadd: cannot malloc %d bytes to hold file name\n", (s32) temp_a1);
            }
        }
        if (*arg0 != 0x2F) {
            strcpy(B_1001B790, B_1001B794);
            strcat(B_1001B790, "/");
            strcat(B_1001B790, (s8 *) arg0);
        } else {
            strcpy(B_1001B790, (s8 *) arg0);
        }
        strcpy(B_1001B78C, B_1001B748);
        strcat(B_1001B78C, B_1001B790);
        st_stradd(B_1001B78C);
        if (D_10015C10 == 0) {
            D_10015C10 = 1;
            temp_v0_8 = time(NULL);
            B_1001B7B8 = temp_v0_8;
            sprintf(B_1001B798, "%lu", temp_v0_8);
        }
        st_stradd(B_1001B798);
        if (stat((s8 *) arg0, &sp34) < 0) {
            st_stradd("-1");
        } else {
            sprintf(&spBC, "%lu", sp34.st_size);
            st_stradd(&spBC);
        }
    }
}

void st_auxadd(u32 arg0) {
    s32 var_a0;
    void **temp_v1;
    void *temp_a1;

    if (st_pchdr->unk4 == 0) {
        st_internal("routine: you didn't initialize with st_cuinit or st_readst\n");
    }
    temp_v1 = pcfdcur;
    if (temp_v1 == NULL) {
        st_internal("routine: no current routine, see fdadd or setfd\n");
    }
    if (temp_v1->unk3C & 0x400) {
        st_internal("routine: cannot add to this entry it was readin from disk\n");
    }
    var_a0 = temp_v1->unk0->unk30;
    if (var_a0 >= temp_v1->unk10) {
        pcfdcur->unkC = st_malloc(temp_v1->unkC, (s32 *) (temp_v1 + 0x10), 4, 0x40);
        var_a0 = pcfdcur->unk0->unk30;
    }
    *(temp_v1->unkC + (var_a0 * 4)) = arg0;
    temp_a1 = pcfdcur->unk0;
    temp_a1->unk30 = (s32) (temp_a1->unk30 + 1);
}

void st_pdadd(s32 arg0) {
    u16 var_a0;
    void **temp_v1;
    void *temp_a1;
    void *temp_t6;

    if (st_pchdr->unk4 == 0) {
        st_internal("routine: you didn't initialize with st_cuinit or st_readst\n");
    }
    temp_v1 = pcfdcur;
    if (temp_v1 == NULL) {
        st_internal("routine: no current routine, see fdadd or setfd\n");
    }
    if (temp_v1->unk3C & 0x100) {
        st_internal("routine: cannot add to this entry it was readin from disk\n");
    }
    var_a0 = temp_v1->unk0->unk2A;
    if (var_a0 >= (u32) temp_v1->unk38) {
        pcfdcur->unk34 = st_malloc(temp_v1->unk34, (s32 *) (temp_v1 + 0x38), 0x34, 0x20);
        var_a0 = pcfdcur->unk0->unk2A;
    }
    temp_t6 = temp_v1->unk34 + (var_a0 * 0x34);
    M2C_MEMCPY_ALIGNED(temp_t6, &B_1001B7C0, 0x30);
    *(temp_t6 + 0x30) = *(&B_1001B7C0 + 0x30);
    (pcfdcur->unk34 + (pcfdcur->unk0->unk2A * 0x34))->unk4 = arg0;
    temp_a1 = pcfdcur->unk0;
    temp_a1->unk2A = (u16) (temp_a1->unk2A + 1);
}

void st_lineadd(s32 arg0) {
    s32 var_a0;
    void **temp_v1;
    void *temp_a1;

    if (st_pchdr->unk4 == 0) {
        st_internal("routine: you didn't initialize with st_cuinit or st_readst\n");
    }
    temp_v1 = pcfdcur;
    if (temp_v1 == NULL) {
        st_internal("routine: no current routine, see fdadd or setfd\n");
    }
    if (temp_v1->unk3C & 4) {
        st_internal("routine: cannot add to this entry it was readin from disk\n");
    }
    var_a0 = temp_v1->unk0->unk1C;
    if (var_a0 >= temp_v1->unk28) {
        pcfdcur->unk24 = st_malloc(temp_v1->unk24, (s32 *) (temp_v1 + 0x28), 4, 0x200);
        var_a0 = pcfdcur->unk0->unk1C;
    }
    *(temp_v1->unk24 + (var_a0 * 4)) = arg0;
    temp_a1 = pcfdcur->unk0;
    temp_a1->unk1C = (s32) (temp_a1->unk1C + 1);
}

void st_stradd(s8 *arg0) {
    s32 temp_s2;
    s32 var_v1;
    void **temp_s0;
    void *temp_a0;

    if (arg0 == NULL) {
        st_error("st_stradd: argument is nil\n");
    }
    temp_s2 = strlen(arg0) + 1;
    if (st_pchdr->unk4 == 0) {
        st_internal("routine: you didn't initialize with st_cuinit or st_readst\n");
    }
    temp_s0 = pcfdcur;
    if (temp_s0 == NULL) {
        st_internal("routine: no current routine, see fdadd or setfd\n");
    }
    if (temp_s0->unk3C & 0x80) {
        st_internal("routine: cannot add to this entry it was readin from disk\n");
    }
    var_v1 = temp_s0->unk0->unkC;
    if (temp_s0->unk18 < (var_v1 + temp_s2)) {
        do {
            pcfdcur->unk14 = st_malloc(temp_s0->unk14, (s32 *) (temp_s0 + 0x18), 1, 0x200);
            var_v1 = pcfdcur->unk0->unkC;
        } while (pcfdcur->unk18 < (var_v1 + temp_s2));
    }
    strcpy(temp_s0->unk14 + var_v1, arg0);
    temp_a0 = pcfdcur->unk0;
    temp_a0->unkC = (s32) (temp_a0->unkC + temp_s2);
}

? st_non_gp(void *arg0) {
    if (((u32) (arg0->unk8 << 6) >> 0x1B) == 0x1B) {
        return 1;
    }
    return 0;
}

void st_set_non_gp(void *arg0) {
    arg0->unk8 = (u16) ((arg0->unk8 & 0xFC1F) | 0x360);
}

u32 *st_paux_ifd_iaux(s32 arg0, s32 arg1) {
    s32 sp24;
    void **var_v1;

    if (st_pchdr->unk4 == 0) {
        st_internal("routine: you didn't initialize with st_cuinit or st_readst\n", arg1, arg0);
    }
    if ((arg0 < 0) || (arg1 < 0) || (arg0 >= st_pchdr->unkC) || (var_v1 = st_pchdr->unk4 + (arg0 << 6), ((arg1 < (*var_v1)->unk30) == 0))) {
        sp24 = arg0 << 6;
        st_internal("st_paux_ifd_iaux: ifd (%d) or iaux (%d) out of range\n", arg0, arg1, arg0);
        var_v1 = st_pchdr->unk4 + sp24;
    }
    return var_v1->unkC + (arg1 * 4);
}

s32 st_pline_ifd_iline(s32 arg0, s32 arg1) {
    s32 sp24;
    void **var_v1;

    if (st_pchdr->unk4 == 0) {
        st_internal("routine: you didn't initialize with st_cuinit or st_readst\n", arg1, arg0);
    }
    if ((arg0 < 0) || (arg1 < 0) || (arg0 >= st_pchdr->unkC) || (var_v1 = st_pchdr->unk4 + (arg0 << 6), ((arg1 < (*var_v1)->unk1C) == 0))) {
        sp24 = arg0 << 6;
        st_internal("st_paux_ifd_iaux: ifd (%d) or iline (%d) out of range\n", arg0, arg1, arg0);
        var_v1 = st_pchdr->unk4 + sp24;
    }
    return var_v1->unk24 + (arg1 * 4);
}

s8 *st_str_iss(s32 arg0) {
    s32 temp_v0;
    void **temp_v1;

    if (st_pchdr->unk4 == 0) {
        st_internal("routine: you didn't initialize with st_cuinit or st_readst\n");
    }
    temp_v1 = pcfdcur;
    if (temp_v1 == NULL) {
        st_internal("routine: no current routine, see fdadd or setfd\n");
    }
    temp_v0 = temp_v1->unk0->unkC;
    if ((temp_v0 != 0) && (arg0 < temp_v0)) {
        return temp_v1->unk14 + arg0;
    }
    return NULL;
}

void *st_malloc(void *arg0, s32 *arg1, s32 arg2, s32 arg3) {
    s32 temp_lo;
    s32 temp_t0;
    s32 temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *var_s1;

    temp_v0 = *arg1;
    if ((temp_v0 == 0) || (arg0 == NULL) || (temp_t0 = temp_v0 * 2, (arg0 == (void *)-1))) {
        *arg1 = arg3;
        if (arg3 == 0) {
            temp_v0_2 = malloc(1U);
            var_s1 = temp_v0_2;
            if (temp_v0_2 == NULL) {
                st_error("st_malloc: cannot allocate item of 1 byte with malloc(3)\n");
            }
        } else {
            temp_v0_3 = malloc(*arg1 * arg2);
            var_s1 = temp_v0_3;
            if (temp_v0_3 == NULL) {
                temp_lo = *arg1 * arg2;
                if (temp_lo != 0) {
                    st_error("st_malloc: cannot allocate item of %ld bytes with malloc(3)\n", temp_lo);
                }
            }
        }
    } else {
        *arg1 = temp_t0;
        temp_v0_4 = realloc(arg0, temp_t0 * arg2);
        var_s1 = temp_v0_4;
        if (temp_v0_4 == NULL) {
            st_error("st_malloc: cannot grow item to %ld bytes with realloc(3)\n", *arg1 * arg2);
        }
    }
    return var_s1;
}

void st_symadd(s32 arg0, s32 arg1, u32 arg2, u32 arg3, s32 arg4) {
    s8 *sp20;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 var_a0;
    s32 var_a1;
    s8 *temp_v0_2;
    s8 *var_a1_2;
    s8 temp_t8;
    void **temp_v1;
    void *temp_v0;
    void *temp_v1_2;
    void *temp_v1_3;
    void *temp_v1_4;
    void *temp_v1_5;

    if (st_pchdr->unk4 == 0) {
        _md_st_internal("routine: you didn't initialize with st_cuinit or st_readst\n");
    }
    temp_v1 = pcfdcur;
    if (temp_v1 == NULL) {
        _md_st_internal("routine: no current routine, see fdadd or setfd\n");
    }
    if (temp_v1->unk3C & 2) {
        _md_st_internal("routine: cannot add to this entry it was readin from disk\n");
    }
    var_a1 = temp_v1->unk0->unk14;
    if (var_a1 >= temp_v1->unk8) {
        pcfdcur->unk4 = _md_st_malloc(temp_v1->unk4, (s32 *) (temp_v1 + 8), 0xC, 0x40);
        var_a1 = pcfdcur->unk0->unk14;
    }
    temp_v0 = temp_v1->unk4 + (var_a1 * 0xC);
    temp_v0->unk0 = arg0;
    temp_v0->unk4 = arg1;
    temp_v0->unk8 = (u8) ((arg2 * 4) | (temp_v0->unk8 & 0xFF03));
    temp_v0->unk8 = (s16) (((arg3 << 5) & 0x3E0) | ((u16) temp_v0->unk8 & 0xFC1F));
    temp_v0->unk9 = (u8) (temp_v0->unk9 & 0xFFEF);
    temp_a2 = (s32) temp_v0->unk8;
    temp_v0->unk8 = (s32) (((u32) (((arg4 & 0xFFFFF) ^ temp_a2) << 0xC) >> 0xC) ^ temp_a2);
    temp_v0_2 = st_str_iss(arg0, var_a1, temp_a2);
    sp20 = temp_v0_2;
    temp_v0_3 = strlen(temp_v0_2);
    temp_a2_2 = temp_v0_3;
    var_a0 = 0;
    temp_v1_2 = pcfdcur->unk0;
    temp_v1_2->unk3E = (u16) ((((temp_v1_2->unk3C & 0x1FFF) + (arg2 + arg3)) & 0x1FFF) | (temp_v1_2->unk3E & 0xE000));
    if (temp_v0_3 > 0) {
        var_a1_2 = sp20;
        do {
            temp_t8 = *var_a1_2;
            var_a0 += 1;
            temp_v1_3 = pcfdcur->unk0;
            var_a1_2 += 1;
            temp_v0_4 = temp_v1_3->unk3C & 0x1FFF;
            temp_v1_3->unk3E = (u16) (((temp_t8 + (temp_v0_4 << 5) + temp_v0_4) & 0x1FFF) | (temp_v1_3->unk3E & 0xE000));
        } while (var_a0 < temp_a2_2);
    }
    if ((arg2 == 0xE) || (arg2 == 2) || (arg2 == 5) || (arg2 == 6)) {
        temp_v1_4 = pcfdcur->unk0;
        temp_v1_4->unk3C = (u8) (temp_v1_4->unk3C & 0xFFFB);
    }
    temp_v1_5 = pcfdcur->unk0;
    temp_v1_5->unk14 = (s32) (temp_v1_5->unk14 + 1);
}

s32 st_ifd_pcfd(void **arg0) {
    if (st_pchdr->unk4 == 0) {
        _md_st_internal("routine: you didn't initialize with st_cuinit or st_readst\n");
    }
    if (pcfdcur == NULL) {
        _md_st_internal("routine: no current routine, see fdadd or setfd\n");
    }
    return (s32) (arg0 - st_pchdr->unk4) >> 6;
}

void **st_pcfd_ifd(s32 arg0) {
    if (st_pchdr->unk4 == 0) {
        _md_st_internal("routine: you didn't initialize with st_cuinit or st_readst\n", arg0);
    }
    if ((arg0 < 0) || (arg0 >= st_pchdr->unkC)) {
        _md_st_internal("st_pcfd_ifd: ifd (%d) out of range\n", arg0);
    }
    return st_pchdr->unk4 + (arg0 << 6);
}

s32 *st_psym_ifd_isym(s32 arg0, s32 arg1) {
    s32 sp24;
    void **var_v1;

    if (st_pchdr->unk4 == 0) {
        _md_st_internal("routine: you didn't initialize with st_cuinit or st_readst\n", arg1, arg0);
    }
    if (arg0 == 0x7FFFFFFF) {
        return st_pext_iext(arg1) + 4;
    }
    if ((arg0 < 0) || (arg1 < 0) || (arg0 >= st_pchdr->unkC) || (var_v1 = st_pchdr->unk4 + (arg0 << 6), ((arg1 < (*var_v1)->unk14) == 0))) {
        sp24 = arg0 << 6;
        _md_st_internal("st_psym_ifd_isym: ifd (%d) or isym (%d) out of range\n", arg0, arg1, arg0);
        var_v1 = st_pchdr->unk4 + sp24;
    }
    return var_v1->unk4 + (arg1 * 0xC);
}

u32 *st_paux_iaux(s32 arg0) {
    if (st_pchdr->unk4 == 0) {
        _md_st_internal("routine: you didn't initialize with st_cuinit or st_readst\n");
    }
    if (pcfdcur == NULL) {
        _md_st_internal("routine: no current routine, see fdadd or setfd\n");
    }
    if ((arg0 < 0) || (arg0 >= (*pcfdcur)->unk30)) {
        _md_st_internal("st_paux_iaux: iaux (%d) out of range\n", arg0);
    }
    return pcfdcur->unkC + (arg0 * 4);
}

s8 *st_str_ifd_iss(s32 arg0, s32 arg1) {
    s32 temp_v1;
    void **temp_v0;

    if (st_pchdr->unk4 == 0) {
        _md_st_internal("routine: you didn't initialize with st_cuinit or st_readst\n", arg0);
    }
    if (arg0 == 0x7FFFFFFF) {
        return _md_st_str_extiss(arg1, arg1, arg0);
    }
    temp_v0 = st_pcfd_ifd(arg0, arg1, arg0);
    temp_v1 = temp_v0->unk0->unkC;
    if ((temp_v1 != 0) && (arg1 < temp_v1)) {
        return temp_v0->unk14 + arg1;
    }
    return NULL;
}

void *st_ppd_ifd_isym(s32 arg0, s32 arg1) {
    s32 var_a1;
    u32 var_v1;
    void **temp_v0;
    void *var_a0;

    if (st_pchdr->unk4 == 0) {
        _md_st_internal("routine: you didn't initialize with st_cuinit or st_readst\n", arg1);
    }
    temp_v0 = st_pcfd_ifd(arg0);
    var_v1 = 0;
    if (temp_v0->unk0->unk2A != 0) {
        var_a1 = 0;
        var_a0 = temp_v0->unk34;
loop_4:
        if (arg1 == var_a0->unk4) {
            return temp_v0->unk34 + var_a1;
        }
        var_v1 += 1;
        var_a1 += 0x34;
        var_a0 += 0x34;
        if (var_v1 >= (u16) temp_v0->unk0->unk2A) {
            goto block_7;
        }
        goto loop_4;
    }
block_7:
    return NULL;
}

void _md_st_internal(s8 *arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    fprintf(__iob + 0x20, "%s: Internal: ", st_errname);
    fprintf(__iob + 0x20, arg0, arg1, arg2, arg3, arg4);
    fprintf(__iob + 0x20, "\n");
    exit(1);
}

void _md_st_error(s8 *arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    fprintf(__iob + 0x20, "%s: Error: ", st_errname);
    fprintf(__iob + 0x20, arg0, arg1, arg2, arg3, arg4);
    fprintf(__iob + 0x20, "\n");
    exit(1);
}

s8 *_md_st_str_extiss(s32 arg0) {
    if ((arg0 >= 0) && (arg0 < st_pchdr->unk28)) {
        return st_pchdr->unk24 + arg0;
    }
    return NULL;
}

s32 _md_st_str_iss(s32 arg0) {
    s32 temp_v0;
    void **temp_v1;

    if (st_pchdr->unk4 == 0) {
        _md_st_internal("routine: you didn't initialize with st_cuinit or st_readst\n");
    }
    temp_v1 = pcfdcur;
    if (temp_v1 == NULL) {
        _md_st_internal("routine: no current routine, see fdadd or setfd\n");
    }
    temp_v0 = temp_v1->unk0->unkC;
    if ((temp_v0 != 0) && (arg0 < temp_v0)) {
        return temp_v1->unk14 + arg0;
    }
    return 0;
}

s32 _md_st_iextmax(void) {
    return st_pchdr->unk1C;
}

s32 _md_st_currentifd(void) {
    if (pcfdcur == NULL) {
        return -1;
    }
    return st_ifd_pcfd(pcfdcur);
}

void *_md_st_malloc(void *arg0, s32 *arg1, s32 arg2, s32 arg3) {
    s32 temp_lo;
    s32 temp_t0;
    s32 temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *var_s1;

    temp_v0 = *arg1;
    if ((temp_v0 == 0) || (arg0 == NULL) || (temp_t0 = temp_v0 * 2, (arg0 == (void *)-1))) {
        *arg1 = arg3;
        if (arg3 == 0) {
            temp_v0_2 = malloc(1U);
            var_s1 = temp_v0_2;
            if (temp_v0_2 == NULL) {
                _md_st_error("_md_st_malloc: cannot allocate item of 1 byte with malloc(3)\n");
            }
        } else {
            temp_v0_3 = malloc(*arg1 * arg2);
            var_s1 = temp_v0_3;
            if (temp_v0_3 == NULL) {
                temp_lo = *arg1 * arg2;
                if (temp_lo != 0) {
                    _md_st_error("_md_st_malloc: cannot allocate item of %ld bytes with malloc(3)\n", temp_lo);
                }
            }
        }
    } else {
        *arg1 = temp_t0;
        temp_v0_4 = realloc(arg0, temp_t0 * arg2);
        var_s1 = temp_v0_4;
        if (temp_v0_4 == NULL) {
            _md_st_error("_md_st_malloc: cannot grow item to %ld bytes with realloc(3)\n", *arg1 * arg2);
        }
    }
    return var_s1;
}

s32 _md_st_ifdmax(void) {
    return st_pchdr->unkC;
}

void _md_st_setfd(s32 arg0) {
    s32 var_v0;

    var_v0 = st_pchdr->unk4;
    if (var_v0 == 0) {
        _md_st_internal("routine: you didn't initialize with st_cuinit or st_readst\n");
        var_v0 = st_pchdr->unk4;
    }
    pcfdcur = var_v0 + (arg0 << 6);
}

void *st_cuinit(void) {
    void *temp_v0;
    void *var_v1;

    temp_v0 = calloc(0xBCU, 1U);
    var_v1 = temp_v0;
    st_pchdr = temp_v0;
    if (temp_v0 == NULL) {
        _md_st_error("st_cuinit: cannot allocate current chdr\n", (s32) &st_pchdr);
        var_v1 = st_pchdr;
    }
    var_v1->unk3C = 2;
    return st_pchdr;
}

void st_extadd(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    void *sp24;
    s32 temp_v0;
    s32 var_a0;
    u8 temp_t3;
    u8 temp_t5;
    u8 temp_t7;
    u8 temp_t9;
    void *temp_t0;
    void *temp_v1;
    void *temp_v1_2;

    temp_t0 = st_pchdr;
    if (temp_t0 == NULL) {
        _md_st_internal("st_extadd: you didn't initialize with cuinit or readst\n");
    }
    var_a0 = temp_t0->unk1C;
    if (var_a0 >= temp_t0->unk20) {
        st_pchdr->unk18 = _md_st_malloc(temp_t0->unk18, temp_t0 + 0x20, 0x10, 0x20);
        var_a0 = st_pchdr->unk1C;
    }
    temp_v1 = temp_t0->unk18 + (var_a0 * 0x10);
    sp24 = temp_v1;
    temp_v1->unk2 = _md_st_currentifd(var_a0);
    temp_t3 = temp_v1->unk0 & 0xFF7F;
    temp_t5 = temp_t3 & 0xBF;
    temp_t7 = temp_t5 & 0xDF;
    temp_v1->unk0 = temp_t3;
    temp_t9 = temp_t7 & 0xEF;
    temp_v1->unk0 = temp_t5;
    temp_v1->unk0 = temp_t7;
    temp_v1->unk0 = temp_t9;
    temp_v1->unk0 = (u8) (temp_t9 & 0xF7);
    temp_v1->unk0 = (s16) ((u16) temp_v1->unk0 & 0xF800);
    temp_v1->unk4 = arg0;
    temp_v1->unk8 = arg1;
    temp_v1->unkC = (u8) ((arg2 * 4) | (temp_v1->unkC & 0xFF03));
    temp_v1->unkC = (s16) (((arg3 << 5) & 0x3E0) | ((u16) temp_v1->unkC & 0xFC1F));
    temp_v1->unkD = (u8) (temp_v1->unkD & 0xFFEF);
    temp_v0 = (s32) temp_v1->unkC;
    temp_v1->unkC = (s32) (((u32) (((arg4 & 0xFFFFF) ^ temp_v0) << 0xC) >> 0xC) ^ temp_v0);
    if ((arg3 != 0x12) && (arg3 != 0x11) && (arg3 != 0) && (arg3 != 6) && (arg3 != 0x15)) {
        temp_v1_2 = *st_pcfd_ifd((s32) temp_v1->unk2);
        temp_v1_2->unk3C = (u8) (temp_v1_2->unk3C & 0xFFFB);
    }
    st_pchdr->unk1C = (s32) (st_pchdr->unk1C + 1);
}

void *st_pext_iext(s32 arg0) {
    if ((arg0 < 0) || (st_pchdr->unk1C < arg0)) {
        _md_st_internal("st_pext_iext: index out of range (%d)\n", arg0);
    }
    return st_pchdr->unk18 + (arg0 * 0x10);
}

void st_idn_index_fext(s32 arg0, s32 arg1) {
    s32 sp34;
    s32 sp30;
    s32 sp2C;
    s32 temp_v0;
    s32 var_t0;
    void *temp_t6;
    void *temp_v1;
    void *temp_v1_2;

    temp_v1 = st_pchdr;
    if (temp_v1 == NULL) {
        _md_st_internal("st_idn_index_fext: you didn't initialize with cuinit or readst\n");
    }
    temp_v0 = temp_v1->unk40;
    var_t0 = temp_v0;
    if (temp_v1->unk3C >= temp_v0) {
        sp2C = temp_v0;
        var_t0 = sp2C;
        st_pchdr->unk38 = _md_st_malloc(temp_v1->unk38, temp_v1 + 0x40, 8, 0x80);
    }
    if (var_t0 == 0) {
        bzero(st_pchdr->unk38, 0x10);
    }
    sp34 = arg0;
    if (arg1 != 0) {
        sp30 = 0x7FFFFFFF;
    } else {
        sp30 = _md_st_currentifd();
    }
    temp_v1_2 = st_pchdr;
    temp_t6 = temp_v1_2->unk38 + (temp_v1_2->unk3C * 8);
    temp_t6->unk0 = (s32) sp30.unk0;
    temp_t6->unk4 = (s32) sp30.unk4;
    st_pchdr->unk3C = (s32) (st_pchdr->unk3C + 1);
}

void *st_pdn_idn(s32 arg0) {
    if ((arg0 < 0) || (st_pchdr->unk3C < arg0)) {
        _md_st_internal("st_pdn_idn: idn (%d) less than 0 or greater than max (%d)\n", arg0, st_pchdr->unk3C);
    }
    return st_pchdr->unk38 + (arg0 * 8);
}

void fatal(s8 *arg0, s32 arg1, s32 arg2, s32 arg3) {
    fprintf(__iob + 0x20, "Fatal: ");
    fprintf(__iob + 0x20, arg0, arg1, arg2, arg3);
    exit(1);
}

void st_internal(s8 *arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    fprintf(__iob + 0x20, "%s: Internal: ", st_errname);
    fprintf(__iob + 0x20, arg0, arg1, arg2, arg3, arg4);
    fprintf(__iob + 0x20, "\n");
    exit(1);
}

void __sgi_mld_st_commonbegin(void) {
    __sgi_common_dummy_file = 1;
    st_filebegin();
    __sgi_common_dummy_file = 0;
}

s32 st_filebegin(s8 *arg0, s32 arg1, s32 arg2, s32 arg3) {
    s32 *var_v0;
    s32 temp_t2;
    s32 temp_v0;
    s32 var_a0;
    s32 var_s0;
    s32 var_v1;

    var_s0 = 0;
    if (st_ifdmax() > 0) {
loop_2:
        if (strcmp(arg0, st_str_ifd_iss(var_s0, 1)) == 0) {
            var_a0 = B_1001B810;
            var_v1 = var_a0 - 1;
            if (var_v1 >= 0) {
                var_v0 = B_1001B80C + (var_v1 * 8);
loop_5:
                if (var_s0 != *var_v0) {
                    var_v1 -= 1;
                    var_v0 -= 8;
                    if (var_v1 >= 0) {
                        goto loop_5;
                    }
                }
            }
            if (var_v1 >= 0) {
                if (var_s0 != (B_1001B80C + (var_a0 * 8))->unk-8) {
                    do {
                        temp_t2 = var_a0 - 1;
                        B_1001B810 = temp_t2;
                        var_a0 = temp_t2;
                        if (temp_t2 < 0) {
                            st_internal("st_filebegin: tried to end too many files (%s)\n", (s32) arg0);
                            var_a0 = B_1001B810;
                        }
                    } while (var_s0 != (B_1001B80C + (var_a0 * 8))->unk-8);
                }
                st_setfd(var_s0);
                return (B_1001B80C + (B_1001B810 * 8))->unk-4;
            }
            goto block_13;
        }
block_13:
        var_s0 += 1;
        if (var_s0 >= st_ifdmax()) {
            goto block_14;
        }
        goto loop_2;
    }
block_14:
    st_fdadd((s32) arg0, arg1, arg2, arg3);
    st_feinit();
    if (B_1001B810 >= B_1001B814) {
        B_1001B80C = st_malloc(B_1001B80C, &B_1001B814, 8, 0x19);
    }
    *(B_1001B80C + (B_1001B810 * 8)) = st_currentifd();
    (B_1001B80C + (B_1001B810 * 8))->unk4 = st_idn_index_fext(st_symadd(1, 0, 0xBU, 1U, 0xFFFFF), 0);
    temp_v0 = (B_1001B80C + (B_1001B810 * 8))->unk4;
    B_1001B810 += 1;
    return temp_v0;
}

void st_endallfiles(void) {
    s32 sp38;
    s32 *temp_v0_2;
    s32 temp_a0;
    s32 temp_s0;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 var_s1;
    u32 temp_a1;
    void **temp_v0;

    sp38 = st_currentifd();
    var_s1 = 0;
    if (st_ifdmax() > 0) {
        do {
            temp_v0 = st_pcfd_ifd(var_s1);
            temp_v1 = temp_v0->unk4;
            if ((temp_v1 == 0) || (temp_v1 == -1) || (temp_a0 = temp_v0->unk0->unk14, (temp_a0 <= 0)) || (temp_a1 = (temp_v1 + (temp_a0 * 0xC))->unk-4, ((temp_a1 >> 0x1A) != 8)) || (temp_a1 & 0xFFFFF)) {
                st_setfd(var_s1);
                temp_s0 = st_symadd(*st_psym_ifd_isym(var_s1, 0), 0, 8U, 1U, 0);
                temp_v0_2 = st_psym_ifd_isym(var_s1, 0);
                temp_v1_2 = temp_v0_2->unk8;
                temp_v0_2->unk8 = (s32) (((u32) ((((temp_s0 + 1) & 0xFFFFF) ^ temp_v1_2) << 0xC) >> 0xC) ^ temp_v1_2);
            }
            var_s1 += 1;
        } while (var_s1 < st_ifdmax());
    }
    st_setfd(sp38);
    free(B_1001B80C);
    B_1001B80C = NULL;
    B_1001B810 = 0;
    B_1001B814 = 0;
}

s32 st_fileend(void) {
    s32 sp4C;
    s32 sp48;
    s32 *sp44;
    s32 sp3C;
    s32 *temp_v0_3;
    s32 temp_a0;
    s32 temp_a1_2;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 temp_v1_3;
    u32 temp_a1;
    void **temp_v0_2;
    void *temp_v0;

    temp_v0 = st_pdn_idn();
    sp48.unk0 = temp_v0->unk0;
    sp48.unk4 = (s32) temp_v0->unk4;
    temp_v0_2 = st_pcfd_ifd(sp48);
    temp_v1 = temp_v0_2->unk4;
    if ((temp_v1 != 0) && (temp_v1 != -1)) {
        temp_a0 = temp_v0_2->unk0->unk14;
        if (temp_a0 > 0) {
            temp_a1 = (temp_v1 + (temp_a0 * 0xC))->unk-4;
            if (((temp_a1 >> 0x1A) == 8) && !(temp_a1 & 0xFFFFF)) {
                return -1;
            }
        }
    }
    sp3C = st_currentifd();
    st_setfd(sp48);
    temp_v0_3 = st_psym_ifd_isym(sp48, sp4C);
    sp44 = temp_v0_3;
    temp_v1_2 = sp44->unk8;
    temp_a1_2 = st_symadd(*temp_v0_3, 0, 8U, 1U, 0) & 0xFFFFF;
    sp44->unk8 = (s32) (((u32) ((temp_a1_2 ^ temp_v1_2) << 0xC) >> 0xC) ^ temp_v1_2);
    sp4C = temp_a1_2;
    temp_v1_3 = sp44->unk8;
    sp44->unk8 = (s32) (((u32) ((((temp_v1_3 & 0xFFFFF) + 1) ^ temp_v1_3) << 0xC) >> 0xC) ^ temp_v1_3);
    st_setfd(sp3C, temp_a1_2);
    return st_idn_dn(sp48.unk0, sp48.unk4);
}

s32 st_textblock(s32 arg1) {
    s32 sp34;
    s32 sp30;
    s32 sp2C;
    s32 var_a1;
    void *temp_t1;

    var_a1 = arg1;
    if (D_10015D44 != 0) {
        var_a1 = 0;
        if (B_1001B804 >= 2) {
            D_10015D44 = 0;
            sp34 = st_symadd(0, 0, 7U, 1U, 0);
            sp2C = st_currentifd();
            sp30 = sp34;
            temp_t1 = B_1001B800 + (B_1001B804 * 8);
            temp_t1->unk-8 = (s32) sp2C.unk0;
            temp_t1->unk-4 = (s32) sp2C.unk4;
            return st_idn_dn(sp2C.unk0, sp2C.unk4);
        }
    }
    if (D_10015D44 != 0) {
        st_internal("st_textblock: block pending set in illegal case\n", var_a1);
    }
    return 0;
}

s32 _sgi_st_blockbegin(s32 arg2, s32 arg3) {
    s32 sp34;
    s32 sp30;
    s32 sp2C;
    s32 temp_v1;
    s32 var_t0;
    void *temp_t3;

    if ((arg2 == 1) && (B_1001B804 != 0)) {
        var_t0 = 0xFFFFF;
        D_10015D44 = 1;
    } else {
        var_t0 = st_symadd(arg3, arg2, 0U);
    }
    sp34 = var_t0;
    sp2C = st_currentifd();
    temp_v1 = B_1001B804;
    sp30 = var_t0;
    if (temp_v1 >= B_1001B808) {
        sp34 = var_t0;
        B_1001B800 = st_malloc(B_1001B800, &B_1001B808, 8, 0x19);
    }
    temp_t3 = B_1001B800 + (temp_v1 * 8);
    temp_t3->unk0 = (s32) sp2C.unk0;
    temp_t3->unk4 = (s32) sp2C.unk4;
    B_1001B804 += 1;
    if (var_t0 == 0xFFFFF) {
        return 0;
    }
    return st_idn_dn(sp2C.unk0, sp2C.unk4);
}

s32 st_blockbegin(s32 arg2) {
    s32 sp34;
    s32 sp30;
    s32 sp2C;
    s32 temp_v1;
    s32 var_t0;
    void *temp_t2;

    if ((arg2 == 1) && (B_1001B804 != 0)) {
        var_t0 = 0xFFFFF;
        D_10015D44 = 1;
    } else {
        var_t0 = st_symadd(7, arg2, 0U);
    }
    sp34 = var_t0;
    sp2C = st_currentifd();
    temp_v1 = B_1001B804;
    sp30 = var_t0;
    if (temp_v1 >= B_1001B808) {
        sp34 = var_t0;
        B_1001B800 = st_malloc(B_1001B800, &B_1001B808, 8, 0x19);
    }
    temp_t2 = B_1001B800 + (temp_v1 * 8);
    temp_t2->unk0 = (s32) sp2C.unk0;
    temp_t2->unk4 = (s32) sp2C.unk4;
    B_1001B804 += 1;
    if (var_t0 == 0xFFFFF) {
        return 0;
    }
    return st_idn_dn(sp2C.unk0, sp2C.unk4);
}

s32 st_blockend(s32 arg0) {
    s32 *sp3C;
    s32 sp34;
    s32 sp30;
    s32 sp2C;
    s32 *temp_v0_2;
    s32 temp_t7;
    s32 temp_t9;
    s32 temp_v0;
    s32 temp_v1;
    void *temp_t3;

    temp_t7 = B_1001B804 - 1;
    B_1001B804 = temp_t7;
    temp_t3 = B_1001B800 + (temp_t7 * 8);
    sp34.unk0 = temp_t3->unk0;
    sp34.unk4 = (s32) temp_t3->unk4;
    if (sp38 == 0xFFFFF) {
        D_10015D44 = 0;
        return 0;
    }
    sp3C = st_psym_ifd_isym(sp34, sp38);
    sp2C = st_currentifd();
    st_setfd(sp34);
    sp30 = st_symadd(0, 0, 8U, (u32) (sp3C->unk8 << 6) >> 0x1B, (B_1001B800 + (B_1001B804 * 8))->unk4) + 1;
    temp_v0_2 = st_psym_ifd_isym(sp34, sp38);
    temp_v1 = temp_v0_2->unk8;
    temp_t9 = ((u32) (((sp30 & 0xFFFFF) ^ temp_v1) << 0xC) >> 0xC) ^ temp_v1;
    temp_v0_2->unk8 = temp_t9;
    if (((u32) (temp_t9 << 6) >> 0x1B) != 1) {
        temp_v0_2->unk4 = arg0;
    }
    temp_v0 = st_idn_index_fext((temp_v0_2->unk8 & 0xFFFFF) - 1, 0);
    sp30 = temp_v0;
    st_setfd(sp2C);
    return temp_v0;
}

void st_blockpop(void) {
    B_1001B804 -= 1;
}

s32 st_procend(s32 arg0) {
    void *sp54;
    s32 *sp50;
    s32 sp48;
    s32 sp44;
    s32 sp3C;
    s32 sp38;
    s32 temp_s0;
    s32 var_s0;
    u32 temp_a0;
    u32 temp_v0_3;
    void *temp_v0;
    void *temp_v0_2;

    temp_v0 = st_pdn_idn();
    sp44.unk0 = temp_v0->unk0;
    sp44.unk4 = (s32) temp_v0->unk4;
    if (sp44 == 0x7FFFFFFF) {
        sp3C = 1;
        temp_v0_2 = st_pext_iext(sp48);
        sp54 = temp_v0_2;
        sp50 = st_psym_ifd_isym((s32) temp_v0_2->unk2, temp_v0_2->unkC & 0xFFFFF);
        sp44 = (s32) sp54->unk2;
        var_s0 = sp54->unkC & 0xFFFFF;
        sp48 = var_s0;
    } else {
        sp3C = 0;
        sp50 = st_psym_ifd_isym(sp44, sp48);
        var_s0 = sp48;
    }
    sp38 = st_currentifd();
    st_setfd(sp44);
    temp_s0 = st_symadd(sp50->unk0, 0, 8U, 1U, var_s0);
    sp50 = st_psym_ifd_isym(sp44, sp48);
    temp_a0 = sp50->unk8 & 0xFFFFF;
    if (((u32) (*st_pcfd_ifd(st_currentifd()))->unk30 >= temp_a0) && (temp_a0 != 0xFFFFF)) {
        *st_paux_iaux((s32) temp_a0) = temp_s0 + 1;
    }
    if (sp3C == 1) {
        temp_v0_3 = sp54->unkC;
        if ((temp_v0_3 >> 0x1A) == 0xE) {
            st_setidn(arg0, st_idn_index_fext(temp_v0_3 & 0xFFFFF, 0));
            sp54->unkC = (s16) ((u16) sp54->unkC & 0xFC1F);
        }
    }
    arg0 = st_idn_index_fext(temp_s0, 0);
    st_setfd(sp38);
    return arg0;
}

s32 st_procbegin(s32 arg0) {
    s32 sp30;
    u32 temp_v1;
    u32 temp_v1_2;
    u32 temp_v1_3;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v1_4;

    temp_v0 = st_pdn_idn();
    sp30.unk0 = temp_v0->unk0;
    sp30.unk4 = (s32) temp_v0->unk4;
    if (sp30 != 0x7FFFFFFF) {

    } else {
        temp_v0_2 = st_pext_iext(sp34);
        if (((u32) (temp_v0_2->unkC << 6) >> 0x1B) == 1) {

        } else {
            temp_v0_2->unkC = (s16) (((u16) temp_v0_2->unkC & 0xFC1F) | 0x20);
            if (st_currentifd() != temp_v0_2->unk2) {
                if (((*st_pcfd_ifd(st_currentifd()))->unk30 > 0) && ((temp_v0_2->unkC & 0xFFFFF) != 0xFFFFF)) {
                    temp_v1 = temp_v0_2->unkC;
                    temp_v0_2->unkC = (u32) (((u32) (((st_iaux_copyty(temp_v0_2->unk2, temp_v0_2 + 4) & 0xFFFFF) ^ temp_v1) << 0xC) >> 0xC) ^ temp_v1);
                }
                temp_v0_2->unk2 = st_currentifd();
            }
            temp_v1_2 = temp_v0_2->unkC;
            temp_v1_3 = temp_v0_2->unkC;
            temp_v0_2->unkC = (u32) (((u32) (((st_symadd(st_stradd(st_str_extiss(temp_v0_2->unk4)), 0, temp_v1_2 >> 0x1A, 1U, temp_v1_2 & 0xFFFFF) & 0xFFFFF) ^ temp_v1_3) << 0xC) >> 0xC) ^ temp_v1_3);
            temp_v1_4 = *st_pcfd_ifd((s32) temp_v0_2->unk2);
            temp_v1_4->unk3C = (u8) (temp_v1_4->unk3C & 0xFFFB);
        }
    }
    return arg0;
}

s8 *st_sym_idn(u32 *arg1, u32 *arg2, s32 *arg3, s32 *arg4) {
    s32 sp28;
    s32 *temp_v0;
    void *temp_v0_2;

    temp_v0_2 = st_pdn_idn();
    sp28.unk0 = temp_v0_2->unk0;
    sp28.unk4 = (s32) temp_v0_2->unk4;
    if (sp2C == 0xFFFFF) {
        return (s8 *)-1;
    }
    temp_v0 = st_psym_ifd_isym(sp28, sp2C);
    *arg1 = (u32) (temp_v0->unk8 << 6) >> 0x1B;
    *arg2 = (u32) temp_v0->unk8 >> 0x1A;
    *arg3 = temp_v0->unk4;
    *arg4 = temp_v0->unk8 & 0xFFFFF;
    return st_str_ifd_iss(sp28, temp_v0->unk0);
}

s8 *st_str_idn(void) {
    s32 sp28;
    void *temp_v0;

    temp_v0 = st_pdn_idn();
    sp28.unk0 = temp_v0->unk0;
    sp28.unk4 = (s32) temp_v0->unk4;
    if (sp2C == 0xFFFFF) {
        return (s8 *)-1;
    }
    return st_str_ifd_iss(sp28, *st_psym_ifd_isym(sp28, sp2C));
}

s32 st_fglobal_idn(void) {
    s32 sp28;
    s32 *temp_v0_2;
    s32 var_v0;
    void *temp_v0;

    temp_v0 = st_pdn_idn();
    sp28.unk0 = temp_v0->unk0;
    sp28.unk4 = (s32) temp_v0->unk4;
    if (sp2C == 0xFFFFF) {
        return 0;
    }
    temp_v0_2 = st_psym_ifd_isym(sp28, sp2C);
    var_v0 = ((u32) temp_v0_2->unk8 >> 0x1A) != 2;
    if (var_v0 != 0) {
        var_v0 = ((u32) temp_v0_2->unk8 >> 0x1A) != 0xE;
    }
    return var_v0;
}

s32 *st_psym_idn_offset(s32 arg1) {
    s32 sp64;                                       /* compiler-managed */
    s32 sp60;
    s32 *temp_v0;
    s32 *temp_v0_4;
    u32 *temp_v0_5;
    u32 temp_a0;
    u32 temp_a1;
    u32 temp_a1_2;
    u32 temp_s0;
    u32 temp_t6;
    u32 temp_v1;
    void *temp_v0_2;
    void *temp_v0_3;

    temp_v0_2 = st_pdn_idn();
    sp60.unk0 = temp_v0_2->unk0;
    sp60.unk4 = (s32) temp_v0_2->unk4;
    if (sp60 == 0x7FFFFFFF) {
        temp_v0_3 = st_pext_iext(sp64);
        sp60 = (s32) temp_v0_3->unk2;
        sp64 = temp_v0_3->unkC & 0xFFFFF;
    }
    temp_v0_4 = st_psym_ifd_isym(sp60, sp64);
    if ((temp_v0_4->unk8 & 0xFFFFF) == 0xFFFFF) {
        goto block_25;
    }
    temp_v0_5 = st_paux_ifd_iaux(sp60, temp_v0_4->unk8 & 0xFFFFF, temp_v0_4);
    if (temp_v0_5 == NULL) {
        goto block_25;
    }
    temp_s0 = *temp_v0_5;
    temp_t6 = sp64 + 1;
    sp64 = temp_t6;
    if (temp_t6 < temp_s0) {
loop_8:
        temp_v0 = st_psym_ifd_isym(sp60, (s32) sp64);
        temp_a1 = temp_v0->unk8;
        temp_v1 = temp_a1 >> 0x1A;
        if (temp_v1 != 4) {
            if (temp_v1 == 3) {
                goto block_12;
            }
            goto block_16;
        }
block_12:
        temp_a0 = (u32) (temp_a1 << 6) >> 0x1B;
        if (((temp_a0 == 5) || (temp_a0 == 0x10)) && (arg1 == temp_v0->unk4)) {
            return temp_v0;
        }
block_16:
        if ((temp_v1 != 6) && (temp_v1 != 0xE)) {
            if ((((u32) (temp_a1 << 6) >> 0x1B) == 0xB) && ((temp_v1 == 7) || (temp_v1 == 0x1A) || (temp_v1 == 0x1B) || (temp_v1 == 0x1C))) {
                sp64 = (temp_a1 & 0xFFFFF) - 1;
            }
            temp_a1_2 = sp64 + 1;
            sp64 = temp_a1_2;
            if (temp_a1_2 >= temp_s0) {
                goto block_25;
            }
            goto loop_8;
        }
        goto block_25;
    }
block_25:
    return NULL;
}

void st_fixextindex(s32 arg1) {
    void *sp2C;
    ? sp24;
    s32 temp_a0;
    void *temp_v0;

    temp_v0 = st_pdn_idn();
    sp24.unk0 = (s32) temp_v0->unk0;
    sp24.unk4 = (s32) temp_v0->unk4;
    sp2C = st_pext_iext(sp28);
    sp2C->unk2 = st_currentifd();
    temp_a0 = sp2C->unkC;
    sp2C->unkC = (s32) (((u32) (((arg1 & 0xFFFFF) ^ temp_a0) << 0xC) >> 0xC) ^ temp_a0);
    sp2C->unkC = (s16) (((u16) sp2C->unkC & 0xFC1F) | 0x20);
}

void st_fixextsc(s32 arg1) {
    ? sp24;
    void *temp_v0;
    void *temp_v0_2;

    temp_v0 = st_pdn_idn();
    sp24.unk0 = (s32) temp_v0->unk0;
    sp24.unk4 = (s32) temp_v0->unk4;
    temp_v0_2 = st_pext_iext(sp28);
    temp_v0_2->unkC = (u16) (((arg1 << 5) & 0x3E0) | (temp_v0_2->unkC & 0xFC1F));
}

void st_pdadd_idn(void) {
    s32 var_a0;
    void *temp_v0;

    temp_v0 = st_pdn_idn();
    if (temp_v0->unk0 == 0x7FFFFFFF) {
        var_a0 = st_pext_iext(temp_v0->unk4)->unkC & 0xFFFFF;
    } else {
        var_a0 = temp_v0->unk4;
    }
    st_pdadd(var_a0);
}

void st_fixiss(s32 arg1) {
    s32 *var_v1;
    void *temp_v0;

    temp_v0 = st_pdn_idn();
    if (temp_v0->unk0 == 0x7FFFFFFF) {
        var_v1 = st_pext_iext(temp_v0->unk4) + 4;
    } else {
        var_v1 = st_psym_ifd_isym(temp_v0->unk0, temp_v0->unk4);
    }
    *var_v1 = arg1;
}

void st_changedn(s32 arg1, s32 arg2) {
    void *temp_v0;

    temp_v0 = st_pdn_idn();
    temp_v0->unk0 = arg1;
    temp_v0->unk4 = arg2;
}

s32 st_file_idn(s8 *arg0) {
    s32 *var_v0;
    s32 var_s0;
    s32 var_s1;
    s32 var_v1_2;
    void *var_v1;

    if (st_currentpchdr() == NULL) {
        goto block_17;
    }
    var_s0 = 0;
    if (st_ifdmax() > 0) {
loop_4:
        if (strcmp(arg0, st_str_ifd_iss(var_s0, 1)) == 0) {
            var_v1_2 = B_1001B810 - 1;
            if (var_v1_2 >= 0) {
                var_v0 = B_1001B80C + (var_v1_2 * 8);
loop_7:
                if (var_s0 != *var_v0) {
                    var_v1_2 -= 1;
                    var_v0 -= 8;
                    if (var_v1_2 >= 0) {
                        goto loop_7;
                    }
                }
            }
            if (var_v1_2 >= 0) {
                var_s1 = B_1001B810 * 8;
                var_v1 = B_1001B80C + var_s1;
                if (var_s0 != var_v1->unk-8) {
                    do {
                        var_s1 -= 8;
                        var_v1 -= 8;
                        if (var_s1 < 0) {
                            st_internal("st_file_idn: istack underflow (%s)\n", (s32) arg0);
                            var_v1 = B_1001B80C + var_s1;
                        }
                    } while (var_s0 != var_v1->unk-8);
                }
                return var_v1->unk-4;
            }
            goto block_16;
        }
block_16:
        var_s0 += 1;
        if (var_s0 >= st_ifdmax()) {
            goto block_17;
        }
        goto loop_4;
    }
block_17:
    return 0;
}

u32 st_tqhigh_iaux(void) {
    u32 *temp_v0;
    u32 var_v0;

    temp_v0 = st_paux_iaux();
    if (temp_v0->unk0 & 0xF) {
        return temp_v0->unk0 & 0xF;
    }
    if (((u8) temp_v0->unk1 >> 4) != 0) {
        return (u8) temp_v0->unk1 >> 4;
    }
    if (temp_v0->unk0 & 0xF) {
        return temp_v0->unk0 & 0xF;
    }
    if (((u8) temp_v0->unk3 >> 4) != 0) {
        return (u8) temp_v0->unk3 >> 4;
    }
    if (temp_v0->unk2 & 0xF) {
        return temp_v0->unk2 & 0xF;
    }
    var_v0 = 0;
    if (((u16) temp_v0->unk2 >> 0xC) != 0) {
        var_v0 = (u16) temp_v0->unk2 >> 0xC;
    }
    return var_v0;
}

void st_shifttq(s32 arg1) {
    u32 *temp_v0;
    u8 temp_a0;
    u8 temp_t1;
    u8 temp_t3;
    u8 temp_t4;
    u8 temp_t6;
    u8 temp_v1;

    temp_v0 = st_paux_iaux();
    temp_v1 = temp_v0->unk1;
    temp_a0 = temp_v0->unk3;
    temp_t4 = ((temp_v1 >> 4) & 0xF) | (temp_v1 & 0xFFF0);
    temp_v0->unk1 = temp_t4;
    temp_t1 = temp_v0->unk2;
    temp_t3 = ((temp_a0 >> 4) & 0xF) | (temp_a0 & 0xFFF0);
    temp_v0->unk1 = (u8) ((temp_v0->unk0 * 0x10) | (temp_t4 & 0xF));
    temp_v0->unk3 = temp_t3;
    temp_v0->unk3 = (u8) ((temp_t1 * 0x10) | (temp_t3 & 0xF));
    temp_t6 = (((u16) temp_v0->unk2 >> 0xC) & 0xF) | (temp_t1 & 0xFFF0);
    temp_v0->unk2 = temp_t6;
    temp_v0->unk2 = (u8) ((arg1 * 0x10) | (temp_t6 & 0xF));
}

s32 st_iaux_copyty(s32 arg0, void *arg1) {
    s32 sp2C;
    s32 temp_a0;
    s32 var_s0;
    s32 var_s1;
    s32 var_s1_2;
    s32 var_v1;
    u32 *temp_a2;
    u32 *temp_v0;
    u32 temp_a1;
    u32 temp_v0_2;

    var_s1 = 0;
    temp_v0 = st_paux_ifd_iaux(arg1->unk8 & 0xFFFFF);
    if (((u32) arg1->unk8 >> 0x1A) == 6) {
        var_s1 = 1;
    }
    temp_a2 = &temp_v0[var_s1];
    var_v1 = (var_s1 * 4) + 4;
    temp_a0 = temp_a2->unk0 & 0x3F;
    var_s1_2 = var_s1 + 1;
    if (temp_a0 == 0x25) {
        if (((u32) *(temp_v0 + var_v1) >> 0x14) == 0xFFF) {
            var_s1_2 += 1;
            var_v1 += 4;
        }
        var_s1_2 += 1;
        var_v1 += 4;
    } else if ((temp_a0 == 0x11) || (temp_a0 == 0x14) || (temp_a0 == 0xC) || (temp_a0 == 0xD) || (temp_a0 == 0xF) || (temp_a0 == 0xE)) {
        if (((u32) *(temp_v0 + var_v1) >> 0x14) == 0xFFF) {
            var_s1_2 += 1;
            var_v1 += 4;
        }
        var_s1_2 += 1;
        var_v1 += 4;
    } else if (temp_a0 == 0x10) {
        if (((u32) *(temp_v0 + var_v1) >> 0x14) == 0xFFF) {
            var_s1_2 += 1;
            var_v1 += 4;
        }
        var_s1_2 += 3;
        var_v1 += 0xC;
    }
    if (((u16) temp_a2->unk2 >> 0xC) == 3) {
        if (((u32) *(temp_v0 + var_v1) >> 0x14) == 0xFFF) {
            var_s1_2 += 1;
            var_v1 += 4;
        }
        var_s1_2 += 4;
        var_v1 += 0x10;
    }
    if (((u8) temp_a2->unk2 & 0xF) == 3) {
        if (((u32) *(temp_v0 + var_v1) >> 0x14) == 0xFFF) {
            var_s1_2 += 1;
            var_v1 += 4;
        }
        var_s1_2 += 4;
        var_v1 += 0x10;
    }
    if (((u8) temp_a2->unk3 >> 4) == 3) {
        if (((u32) *(temp_v0 + var_v1) >> 0x14) == 0xFFF) {
            var_s1_2 += 1;
            var_v1 += 4;
        }
        var_s1_2 += 4;
        var_v1 += 0x10;
    }
    temp_a1 = temp_a2->unk0;
    if ((temp_a1 & 0xF) == 3) {
        if (((u32) *(temp_v0 + var_v1) >> 0x14) == 0xFFF) {
            var_s1_2 += 1;
            var_v1 += 4;
        }
        var_s1_2 += 4;
        var_v1 += 0x10;
    }
    if (((u8) temp_a2->unk1 >> 4) == 3) {
        if (((u32) *(temp_v0 + var_v1) >> 0x14) == 0xFFF) {
            var_s1_2 += 1;
            var_v1 += 4;
        }
        var_s1_2 += 4;
        var_v1 += 0x10;
    }
    if (((u16) temp_a2->unk0 & 0xF) == 3) {
        if (((u32) *(temp_v0 + var_v1) >> 0x14) == 0xFFF) {
            var_s1_2 += 1;
        }
        var_s1_2 += 4;
    }
    if ((temp_a1 >> 0x1F) != 0) {
        var_s1_2 += 1;
    }
    var_s0 = 0;
    if (var_s1_2 > 0) {
        do {
            temp_v0_2 = arg1->unk8;
            if (var_s0 == 0) {
                sp2C = st_auxadd(*st_paux_ifd_iaux(arg0, (temp_v0_2 & 0xFFFFF) + var_s0));
            } else {
                st_auxadd(*st_paux_ifd_iaux(arg0, (temp_v0_2 & 0xFFFFF) + var_s0));
            }
            var_s0 += 1;
        } while (var_s0 != var_s1_2);
    }
    return sp2C;
}

void st_changeaux(u32 arg1) {
    *st_paux_iaux() = arg1;
}

void st_addtq(s32 arg1) {
    u32 *temp_v0;
    u8 temp_v1;
    u8 temp_v1_2;
    u8 temp_v1_3;

    temp_v0 = st_paux_iaux();
    if (((u16) temp_v0->unk2 >> 0xC) == 0) {
        temp_v0->unk2 = (s8) (((arg1 & 0xF) * 0x10) | ((u8) temp_v0->unk2 & 0xFF0F));
        return;
    }
    temp_v1 = (u8) temp_v0->unk2;
    if (!(temp_v1 & 0xF)) {
        temp_v0->unk2 = (s8) ((arg1 & 0xF) | (temp_v1 & 0xFFF0));
        return;
    }
    temp_v1_2 = temp_v0->unk3;
    if ((temp_v1_2 >> 4) == 0) {
        temp_v0->unk3 = (u8) ((arg1 * 0x10) | (temp_v1_2 & 0xFF0F));
        return;
    }
    if (!(temp_v0->unk0 & 0xF)) {
        temp_v0->unk3 = (u8) ((arg1 & 0xF) | (temp_v1_2 & 0xFFF0));
        return;
    }
    temp_v1_3 = temp_v0->unk1;
    if ((temp_v1_3 >> 4) == 0) {
        temp_v0->unk1 = (u8) ((arg1 * 0x10) | (temp_v1_3 & 0xFF0F));
        return;
    }
    if (!((u16) temp_v0->unk0 & 0xF)) {
        temp_v0->unk1 = (u8) ((arg1 & 0xF & 0xF) | (temp_v1_3 & 0xFFF0));
    }
}

void st_changeauxrndx(s32 arg0, s32 arg1, s32 arg2) {
    u32 *sp2C;
    u32 *temp_v0;
    u32 temp_v0_2;
    u32 temp_v0_3;

    temp_v0 = st_paux_iaux();
    if (((u32) ((u32) temp_v0->unk0 >> 0x14) < 0xFFFU) && (arg1 >= 0xFFF)) {
        temp_v0_2 = temp_v0->unk0;
        sp2C = temp_v0;
        st_internal("tried to replace rndx aux (%d) that fits into one word (%d, %d) with one that can't (%d,%d)\n", arg0, (s32) (temp_v0_2 >> 0x14), temp_v0_2 & 0xFFFFF, arg1, arg2);
    }
    if ((u32) ((u32) temp_v0->unk0 >> 0x14) < 0xFFFU) {
        temp_v0->unk0 = (s16) ((arg1 * 0x10) | ((u16) temp_v0->unk0 & 0xF));
    } else {
        temp_v0->unk4 = arg1;
    }
    temp_v0_3 = temp_v0->unk0;
    temp_v0->unk0 = ((u32) (((arg2 & 0xFFFFF) ^ temp_v0_3) << 0xC) >> 0xC) ^ temp_v0_3;
}

void st_auxbtadd(s32 arg0) {
    u32 sp24;

    memset(&sp24, 0, 4U);
    sp24 = (arg0 & 0x3F) | ((u8) sp24 & 0xFFC0);
    st_auxadd(sp24);
}

void st_auxisymadd(s32 arg0) {
    s32 sp24;

    sp24 = arg0;
    st_auxadd();
}

s32 st_auxrndxadd(s32 arg0, s32 arg1) {
    u16 sp2C;                                       /* compiler-managed */
    u32 sp28;
    s32 sp24;
    s32 temp_v0;
    u32 temp_a0;

    sp2C |= 0xFFF0;
    sp2C = ((u32) (((arg1 & 0xFFFFF) ^ (s32) sp2C) << 0xC) >> 0xC) ^ (s32) sp2C;
    temp_a0 = sp2C;
    sp28 = temp_a0;
    temp_v0 = st_auxadd(temp_a0);
    sp24 = temp_v0;
    st_auxisymadd(arg0);
    return temp_v0;
}

void st_auxbtsize(s32 arg1) {
    u32 *temp_v0;

    temp_v0 = st_paux_iaux();
    *temp_v0 = (u8) (*temp_v0 | 0x80);
    st_auxisymadd(arg1);
}

void st_auxrndxadd_idn(void) {
    void *temp_v0;

    temp_v0 = st_pdn_idn();
    st_auxrndxadd(temp_v0->unk0, temp_v0->unk4);
}

void st_addcontinued(void) {
    u32 *temp_v0;

    temp_v0 = st_paux_iaux();
    *temp_v0 = (u8) (*temp_v0 | 0x40);
}

void st_feinit(void) {

}
/* Warning: struct Elf is not defined (only forward-declared) */
/* Warning: struct Elf_Scn is not defined (only forward-declared) */
/* Warning: struct reloc is not defined (only forward-declared) */
/* Warning: struct filehdr is not defined (only forward-declared) */
/* Warning: struct scnhdr is not defined (only forward-declared) */
/* Warning: struct aouthdr is not defined (only forward-declared) */
/* Warning: struct __sgi_hdrr_s is not defined (only forward-declared) */
/* Warning: struct pdr is not defined (only forward-declared) */
/* Warning: struct fdr is not defined (only forward-declared) */
/* Warning: struct __sgi_symr_s is not defined (only forward-declared) */
/* Warning: struct __sgi_extr__ is not defined (only forward-declared) */
/* Warning: struct __sgi_optr_s is not defined (only forward-declared) */
/* Warning: struct __sgi_auxu_u is not defined (only forward-declared) */
/* Warning: struct gp_table is not defined (only forward-declared) */
