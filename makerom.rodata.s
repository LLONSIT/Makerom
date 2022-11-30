.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .rodata

.balign 16

glabel STR_1000F000
/* 03F000 1000F000 */ .asciz "rom"
                      .balign 4

glabel STR_1000F004
/* 03F004 1000F004 */ .asciz "makerom: sysconf(_SC_ARG_MAX): %s\n"
                      .balign 4

glabel STR_1000F028
/* 03F028 1000F028 */ .asciz "malloc failed\n"
                      .balign 4

glabel STR_1000F038
/* 03F038 1000F038 */ .asciz "/usr/lib/cpp -D_LANGUAGE_MAKEROM"
                      .balign 4

glabel RO_1000F05C
/* 03F05C 1000F05C 443A493A */ .word 0x443A493A
/* 03F060 1000F060 553A6364 */ .word 0x553A6364
/* 03F064 1000F064 65696D6E */ .word 0x65696D6E
/* 03F068 1000F068 6F723A67 */ .word 0x6F723A67
/* 03F06C 1000F06C 623A683A */ .word 0x623A683A
/* 03F070 1000F070 703A733A */ .word 0x703A733A
/* 03F074 1000F074 663A4F3A */ .word 0x663A4F3A
/* 03F078 1000F078 433A5171 */ .word 0x433A5171
/* 03F07C 1000F07C 56760000 */ .word 0x56760000

glabel STR_1000F080
/* 03F080 1000F080 */ .asciz "makerom: too many -[DIU] flags\n"
                      .balign 4

glabel STR_1000F0A0
/* 03F0A0 1000F0A0 */ .asciz "%s -%c%s"
                      .balign 4

glabel STR_1000F0AC
/* 03F0AC 1000F0AC */ .asciz "makerom: only specify one of -c, -e, or -i\n"
                      .balign 4

glabel STR_1000F0D8
/* 03F0D8 1000F0D8 */ .asciz "makerom: %s: %s\n"
                      .balign 4

glabel STR_1000F0EC
/* 03F0EC 1000F0EC */ .asciz "r"
                      .balign 4

glabel STR_1000F0F0
/* 03F0F0 1000F0F0 */ .asciz "makerom: %s: %s\n"
                      .balign 4

glabel STR_1000F104
/* 03F104 1000F104 */ .asciz "makerom: cpp command line too long\n"
                      .balign 4

glabel STR_1000F128
/* 03F128 1000F128 */ .asciz "%s %s"
                      .balign 4

glabel STR_1000F130
/* 03F130 1000F130 */ .asciz "r"
                      .balign 4

glabel STR_1000F134
/* 03F134 1000F134 */ .asciz "makerom: could not run cpp on %s: %s\n"
                      .balign 4

glabel STR_1000F15C
/* 03F15C 1000F15C */ .asciz "Creating segment symbol source file in %s\n"
                      .balign 4

glabel STR_1000F188
/* 03F188 1000F188 */ .asciz "ROOT"
                      .balign 4

glabel STR_1000F190
/* 03F190 1000F190 */ .asciz "/"
                      .balign 4

glabel STR_1000F194
/* 03F194 1000F194 */ .asciz "makerom: This IDO version is not compatible with the\n"
                      .balign 4

glabel STR_1000F1CC
/* 03F1CC 1000F1CC */ .asciz "         Nintendo64 development environment on this\n"
                      .balign 4

glabel STR_1000F204
/* 03F204 1000F204 */ .asciz "         version of IRIX.\n"
                      .balign 4

glabel STR_1000F220
/* 03F220 1000F220 */ .asciz "%s/usr/sbin/u64check -fmulmul:check:noforce:norepair"
                      .balign 4

glabel STR_1000F258
/* 03F258 1000F258 */ .asciz "%s/usr/sbin/r4300_check"
                      .balign 4

glabel STR_1000F270
/* 03F270 1000F270 */ .asciz "Checking fmulmul status\n"
                      .balign 4

glabel STR_1000F28C
/* 03F28C 1000F28C */ .asciz "%s %s"
                      .balign 4

glabel STR_1000F294
/* 03F294 1000F294 */ .asciz "  %s\n"
                      .balign 4

glabel STR_1000F29C
/* 03F29C 1000F29C */ .asciz "%s/usr/lib/PR/gcord "
                      .balign 4

glabel STR_1000F2B4
/* 03F2B4 1000F2B4 */ .asciz "%s %s"
                      .balign 4

glabel STR_1000F2BC
/* 03F2BC 1000F2BC */ .asciz "makerom: %s\n"
                      .balign 4

glabel STR_1000F2CC
/* 03F2CC 1000F2CC */ .asciz ".cord"
                      .balign 4

glabel STR_1000F2D4
/* 03F2D4 1000F2D4 */ .asciz "Creating entry source file in %s\n"
                      .balign 4

glabel STR_1000F2F8
/* 03F2F8 1000F2F8 */ .asciz "Extracting sections from ELF wave files"
                      .balign 4

glabel STR_1000F320
/* 03F320 1000F320 */ .asciz " to create ROM image in %s\n"
                      .balign 4

glabel STR_1000F33C
/* 03F33C 1000F33C */ .asciz "usage: makerom [-D<define>] [-I<dir>] -[U<define>]\n"
                      .balign 4

glabel STR_1000F370
/* 03F370 1000F370 */ .asciz "               [-c] [-n] [-d] [-g] [-e] [-m] [-q] [-v]\n"
                      .balign 4

glabel STR_1000F3A8
/* 03F3A8 1000F3A8 */ .asciz "               [-o] [-b bootfile] [-h headerfile]\n"
                      .balign 4

glabel STR_1000F3DC
/* 03F3DC 1000F3DC */ .asciz "               [-p pif2bootfile]\n"
                      .balign 4

glabel STR_1000F400
/* 03F400 1000F400 */ .asciz "               [-s romsize (Mbits)]\n"
                      .balign 4

glabel STR_1000F428
/* 03F428 1000F428 */ .asciz "               [-f filldata (0x00 - 0xff)]\n"
                      .balign 4

glabel STR_1000F454
/* 03F454 1000F454 */ .asciz "               [-C clockrate] \n"
                      .balign 4

glabel STR_1000F474
/* 03F474 1000F474 */ .asciz "               [-r romfile] specfile\n"
                      .balign 4

glabel STR_1000F49C
/* 03F49C 1000F49C */ .asciz "/sbin/uname -r"
                      .balign 4

glabel STR_1000F4AC
/* 03F4AC 1000F4AC */ .asciz "r"
                      .balign 4

glabel STR_1000F4B0
/* 03F4B0 1000F4B0 */ .asciz "5.3\n"
                      .balign 4

glabel STR_1000F4B8
/* 03F4B8 1000F4B8 */ .asciz "6.2\n"
                      .balign 4

glabel STR_1000F4C0
/* 03F4C0 1000F4C0 */ .asciz "6.3\n"
                      .balign 4

glabel STR_1000F4C8
/* 03F4C8 1000F4C8 */ .asciz "6.4\n"
                      .balign 4

glabel STR_1000F4D0
/* 03F4D0 1000F4D0 */ .asciz "makerom: Operating system not recognized.  Trying 6.x ...\n"
                      .balign 4

glabel STR_1000F50C
/* 03F50C 1000F50C */ .asciz "makerom: Unable to find uname command!\n"
                      .balign 4

glabel STR_1000F534
/* 03F534 1000F534 */ .asciz "%s/usr/sbin/u64check"
                      .balign 4

glabel STR_1000F54C
/* 03F54C 1000F54C */ .asciz "/usr/sbin/showprods -D 1 dev"
                      .balign 4

glabel STR_1000F56C
/* 03F56C 1000F56C */ .asciz "r"
                      .balign 4

glabel STR_1000F570
/* 03F570 1000F570 */ .asciz "7.0"
                      .balign 4

glabel STR_1000F574
/* 03F574 1000F574 */ .asciz "makerom: IDO v7.0 does not work with the Nintendo64\n"
                      .balign 4

glabel STR_1000F5AC
/* 03F5AC 1000F5AC */ .asciz "         development environment.  Please upgrade to\n"
                      .balign 4

glabel STR_1000F5E4
/* 03F5E4 1000F5E4 */ .asciz "         IDO v7.1.\n"
                      .balign 4

glabel STR_1000F5F8
/* 03F5F8 1000F5F8 */ .asciz "Nintendo64 Makerom v2.2 for IRIX.\n"
                      .balign 4

glabel STR_1000F61C
/* 03F61C 1000F61C */ .asciz "Nintendo64 Makerom v2.2 -BETA- for IRIX.\n"
                      .balign 4

glabel STR_1000F648
/* 03F648 1000F648 */ .asciz "/usr/lib/PR"
                      .balign 4

glabel STR_1000F654
/* 03F654 1000F654 */ .asciz "Boot"
                      .balign 4

glabel STR_1000F65C
/* 03F65C 1000F65C */ .asciz "%s: unable to open %s"
                      .balign 4

glabel STR_1000F674
/* 03F674 1000F674 */ .asciz "%s unable to stat %s"
                      .balign 4

glabel STR_1000F68C
/* 03F68C 1000F68C */ .asciz "%s: unable to malloc buffer to hold %d bytes\n"
                      .balign 4

glabel STR_1000F6BC
/* 03F6BC 1000F6BC */ .asciz "/usr/lib/PR"
                      .balign 4

glabel STR_1000F6C8
/* 03F6C8 1000F6C8 */ .asciz "pif2Boot"
                      .balign 4

glabel STR_1000F6D4
/* 03F6D4 1000F6D4 */ .asciz "%s: unable to open %s"
                      .balign 4

glabel STR_1000F6EC
/* 03F6EC 1000F6EC */ .asciz "%s unable to stat %s"
                      .balign 4

glabel STR_1000F704
/* 03F704 1000F704 */ .asciz "%s: unable to malloc buffer to hold %d bytes\n"
                      .balign 4

glabel STR_1000F734
/* 03F734 1000F734 */ .asciz "/usr/lib/PR"
                      .balign 4

glabel STR_1000F740
/* 03F740 1000F740 */ .asciz "romheader"
                      .balign 4

glabel STR_1000F74C
/* 03F74C 1000F74C */ .asciz "%s unable to open %s"
                      .balign 4

glabel STR_1000F764
/* 03F764 1000F764 */ .asciz "%s unable to stat %s"
                      .balign 4

glabel STR_1000F77C
/* 03F77C 1000F77C */ .asciz "%s: unable to malloc buffer to hold %d bytes\n"
                      .balign 4

glabel STR_1000F7AC
/* 03F7AC 1000F7AC */ .asciz "%s: short read from %s.\n"
                      .balign 4

glabel STR_1000F7C8
/* 03F7C8 1000F7C8 */ .asciz "%s: short read from %s.\n"
                      .balign 4

glabel STR_1000F7E4
/* 03F7E4 1000F7E4 */ .asciz "/usr/lib/PR"
                      .balign 4

glabel STR_1000F7F0
/* 03F7F0 1000F7F0 */ .asciz "font"
                      .balign 4

glabel STR_1000F7F8
/* 03F7F8 1000F7F8 */ .asciz "%s: unable to open %s"
                      .balign 4

glabel STR_1000F810
/* 03F810 1000F810 */ .asciz "%s unable to stat %s"
                      .balign 4

glabel STR_1000F828
/* 03F828 1000F828 */ .asciz "%s: unable to malloc buffer to hold %d bytes\n"
                      .balign 4

glabel STR_1000F858
/* 03F858 1000F858 */ .asciz "%s unable to read %s"
                      .balign 4

glabel STR_1000F870
/* 03F870 1000F870 */ .asciz "ROOT"
                      .balign 4

glabel STR_1000F878
/* 03F878 1000F878 */ .asciz "WORKAREA"
                      .balign 4

glabel STR_1000F884
/* 03F884 1000F884 */ .asciz "/"
                      .balign 4

glabel STR_1000F888
/* 03F888 1000F888 */ .asciz "gloadFindFile: can't find file %s\n"
                      .balign 4

glabel STR_1000F8AC
/* 03F8AC 1000F8AC */ .asciz "Translating ROM spec file into"
                      .balign 4

glabel STR_1000F8CC
/* 03F8CC 1000F8CC */ .asciz " linker spec file in %s\n"
                      .balign 4

glabel STR_1000F8E8
/* 03F8E8 1000F8E8 */ .asciz "TMPDIR"
                      .balign 4

glabel STR_1000F8F0
/* 03F8F0 1000F8F0 */ .asciz "/tmp"
                      .balign 4

glabel STR_1000F8F8
/* 03F8F8 1000F8F8 */ .asciz "%s/%sElspecXXXXXX"
                      .balign 4

glabel STR_1000F90C
/* 03F90C 1000F90C */ .asciz "%s/segmentXXXXXX"
                      .balign 4

glabel STR_1000F920
/* 03F920 1000F920 */ .asciz ".s"
                      .balign 4

glabel STR_1000F924
/* 03F924 1000F924 */ .asciz ".o"
                      .balign 4

glabel STR_1000F928
/* 03F928 1000F928 */ .asciz "%s/entryXXXXXX"
                      .balign 4

glabel STR_1000F938
/* 03F938 1000F938 */ .asciz ".s"
                      .balign 4

glabel STR_1000F93C
/* 03F93C 1000F93C */ .asciz ".o"
                      .balign 4

glabel STR_1000F940
/* 03F940 1000F940 */ .asciz "%s/objListXXXXXX"
                      .balign 4

glabel STR_1000F954
/* 03F954 1000F954 */ .asciz "makerom: cannot execute command: %s\n"
                      .balign 4

glabel STR_1000F97C
/* 03F97C 1000F97C */ .asciz "makerom: [%s] returned %d (%08x), errno=%d\n"
                      .balign 4

glabel jtbl_1000F9A8
/* 03F9A8 1000F9A8 F03EBEF0 */ .gpword .L00409C30
/* 03F9AC 1000F9AC F03EBF50 */ .gpword .L00409C90
/* 03F9B0 1000F9B0 F03EBF50 */ .gpword .L00409C90
/* 03F9B4 1000F9B4 F03EBF50 */ .gpword .L00409C90
/* 03F9B8 1000F9B8 F03EBE98 */ .gpword .L00409BD8
/* 03F9BC 1000F9BC F03EBC88 */ .gpword .L004099C8
/* 03F9C0 1000F9C0 F03EBF50 */ .gpword .L00409C90
/* 03F9C4 1000F9C4 F03EBF50 */ .gpword .L00409C90
/* 03F9C8 1000F9C8 F03EBF50 */ .gpword .L00409C90
/* 03F9CC 1000F9CC F03EBF50 */ .gpword .L00409C90
/* 03F9D0 1000F9D0 F03EBC88 */ .gpword .L004099C8
/* 03F9D4 1000F9D4 F03EBF50 */ .gpword .L00409C90
/* 03F9D8 1000F9D8 F03EBF50 */ .gpword .L00409C90
/* 03F9DC 1000F9DC F03EBF50 */ .gpword .L00409C90
/* 03F9E0 1000F9E0 F03EBF50 */ .gpword .L00409C90
/* 03F9E4 1000F9E4 F03EBF50 */ .gpword .L00409C90
/* 03F9E8 1000F9E8 F03EBE6C */ .gpword .L00409BAC
/* 03F9EC 1000F9EC F03EBF50 */ .gpword .L00409C90
/* 03F9F0 1000F9F0 F03EBF18 */ .gpword .L00409C58
/* 03F9F4 1000F9F4 F03EBF50 */ .gpword .L00409C90
/* 03F9F8 1000F9F8 F03EBF50 */ .gpword .L00409C90
/* 03F9FC 1000F9FC F03EBF50 */ .gpword .L00409C90
/* 03FA00 1000FA00 F03EBC88 */ .gpword .L004099C8
/* 03FA04 1000FA04 F03EBF28 */ .gpword .L00409C68
/* 03FA08 1000FA08 F03EBF50 */ .gpword .L00409C90
/* 03FA0C 1000FA0C F03EBF50 */ .gpword .L00409C90
/* 03FA10 1000FA10 F03EBF50 */ .gpword .L00409C90
/* 03FA14 1000FA14 F03EBF50 */ .gpword .L00409C90
/* 03FA18 1000FA18 F03EBF50 */ .gpword .L00409C90
/* 03FA1C 1000FA1C F03EBF50 */ .gpword .L00409C90
/* 03FA20 1000FA20 F03EBF50 */ .gpword .L00409C90
/* 03FA24 1000FA24 F03EBF50 */ .gpword .L00409C90
/* 03FA28 1000FA28 F03EBF50 */ .gpword .L00409C90
/* 03FA2C 1000FA2C F03EBF50 */ .gpword .L00409C90
/* 03FA30 1000FA30 F03EBF50 */ .gpword .L00409C90
/* 03FA34 1000FA34 F03EBDD8 */ .gpword .L00409B18
/* 03FA38 1000FA38 F03EBD24 */ .gpword .L00409A64
/* 03FA3C 1000FA3C F03EBD38 */ .gpword .L00409A78
/* 03FA40 1000FA40 F03EBD74 */ .gpword .L00409AB4
/* 03FA44 1000FA44 F03EBE40 */ .gpword .L00409B80
/* 03FA48 1000FA48 F03EBD4C */ .gpword .L00409A8C
/* 03FA4C 1000FA4C F03EBDEC */ .gpword .L00409B2C
/* 03FA50 1000FA50 F03EBF50 */ .gpword .L00409C90
/* 03FA54 1000FA54 F03EBF50 */ .gpword .L00409C90
/* 03FA58 1000FA58 F03EBD60 */ .gpword .L00409AA0
/* 03FA5C 1000FA5C F03EBF50 */ .gpword .L00409C90
/* 03FA60 1000FA60 F03EBD88 */ .gpword .L00409AC8
/* 03FA64 1000FA64 F03EBD9C */ .gpword .L00409ADC
/* 03FA68 1000FA68 F03EBDB0 */ .gpword .L00409AF0
/* 03FA6C 1000FA6C F03EBE00 */ .gpword .L00409B40
/* 03FA70 1000FA70 F03EBF18 */ .gpword .L00409C58
/* 03FA74 1000FA74 F03EBDC0 */ .gpword .L00409B00
/* 03FA78 1000FA78 F03EBE14 */ .gpword .L00409B54
/* 03FA7C 1000FA7C F03EBF50 */ .gpword .L00409C90
/* 03FA80 1000FA80 F03EBF50 */ .gpword .L00409C90
/* 03FA84 1000FA84 F03EBF28 */ .gpword .L00409C68
/* 03FA88 1000FA88 00000000 */ .word 0x00000000
/* 03FA8C 1000FA8C 00000000 */ .word 0x00000000

glabel STR_1000FA90
/* 03FA90 1000FA90 */ .asciz "w"
                      .balign 4

glabel STR_1000FA94
/* 03FA94 1000FA94 */ .asciz "makerom: %s: cannot create\n"
                      .balign 4

glabel STR_1000FAB0
/* 03FAB0 1000FAB0 */ .asciz "$ignoreoverlaps = true\n\n"
                      .balign 4

glabel STR_1000FACC
/* 03FACC 1000FACC */ .asciz "beginseg\n"
                      .balign 4

glabel STR_1000FAD8
/* 03FAD8 1000FAD8 */ .asciz "\tsegtype LOAD\n"
                      .balign 4

glabel STR_1000FAE8
/* 03FAE8 1000FAE8 */ .asciz "\tsegflags R X\n"
                      .balign 4

glabel STR_1000FAF8
/* 03FAF8 1000FAF8 */ .asciz "\tvaddr 0x%x\n"
                      .balign 4

glabel STR_1000FB08
/* 03FB08 1000FB08 */ .asciz "\tcontents\n"
                      .balign 4

glabel STR_1000FB14
/* 03FB14 1000FB14 */ .asciz "\tbeginscn .%s.text\n"
                      .balign 4

glabel STR_1000FB28
/* 03FB28 1000FB28 */ .asciz "\t\tscntype PROGBITS\n"
                      .balign 4

glabel STR_1000FB3C
/* 03FB3C 1000FB3C */ .asciz "\t\tscnalign %d\n"
                      .balign 4

glabel STR_1000FB4C
/* 03FB4C 1000FB4C */ .asciz "\t\tscnflags ALLOC EXECINSTR\n"
                      .balign 4

glabel STR_1000FB68
/* 03FB68 1000FB68 */ .asciz "\t\tsection .text in object %s\n"
                      .balign 4

glabel STR_1000FB88
/* 03FB88 1000FB88 */ .asciz "\tendscn\n"
                      .balign 4

glabel STR_1000FB94
/* 03FB94 1000FB94 */ .asciz "\tbeginscn .%s.data\n"
                      .balign 4

glabel STR_1000FBA8
/* 03FBA8 1000FBA8 */ .asciz "\t\tscntype PROGBITS\n"
                      .balign 4

glabel STR_1000FBBC
/* 03FBBC 1000FBBC */ .asciz "\t\tscnalign %d\n"
                      .balign 4

glabel STR_1000FBCC
/* 03FBCC 1000FBCC */ .asciz "\t\tscnflags ALLOC WRITE\n"
                      .balign 4

glabel STR_1000FBE4
/* 03FBE4 1000FBE4 */ .asciz "\t\tsection .data in object %s\n"
                      .balign 4

glabel STR_1000FC04
/* 03FC04 1000FC04 */ .asciz "\t\tsection .rodata in object %s\n"
                      .balign 4

glabel STR_1000FC24
/* 03FC24 1000FC24 */ .asciz "\tendscn\n"
                      .balign 4

glabel STR_1000FC30
/* 03FC30 1000FC30 */ .asciz "\tbeginscn .%s.sdata\n"
                      .balign 4

glabel STR_1000FC48
/* 03FC48 1000FC48 */ .asciz "\t\tscntype PROGBITS\n"
                      .balign 4

glabel STR_1000FC5C
/* 03FC5C 1000FC5C */ .asciz "\t\tscnalign %d\n"
                      .balign 4

glabel STR_1000FC6C
/* 03FC6C 1000FC6C */ .asciz "\t\tscnflags GPREL ALLOC WRITE\n"
                      .balign 4

glabel STR_1000FC8C
/* 03FC8C 1000FC8C */ .asciz "\t\tsection .sdata in object %s\n"
                      .balign 4

glabel STR_1000FCAC
/* 03FCAC 1000FCAC */ .asciz "\tendscn\n"
                      .balign 4

glabel STR_1000FCB8
/* 03FCB8 1000FCB8 */ .asciz "\tbeginscn .%s.sbss\n"
                      .balign 4

glabel STR_1000FCCC
/* 03FCCC 1000FCCC */ .asciz "\t\tscntype NOBITS\n"
                      .balign 4

glabel STR_1000FCE0
/* 03FCE0 1000FCE0 */ .asciz "\t\tscnalign %d\n"
                      .balign 4

glabel STR_1000FCF0
/* 03FCF0 1000FCF0 */ .asciz "\t\tscnflags GPREL ALLOC WRITE\n"
                      .balign 4

glabel STR_1000FD10
/* 03FD10 1000FD10 */ .asciz "\t\tsection .sbss in object %s\n"
                      .balign 4

glabel STR_1000FD30
/* 03FD30 1000FD30 */ .asciz "\tendscn\n"
                      .balign 4

glabel STR_1000FD3C
/* 03FD3C 1000FD3C */ .asciz "\tbeginscn .%s.bss\n"
                      .balign 4

glabel STR_1000FD50
/* 03FD50 1000FD50 */ .asciz "\t\tscntype NOBITS\n"
                      .balign 4

glabel STR_1000FD64
/* 03FD64 1000FD64 */ .asciz "\t\tscnalign %d\n"
                      .balign 4

glabel STR_1000FD74
/* 03FD74 1000FD74 */ .asciz "\t\tscnflags ALLOC WRITE\n"
                      .balign 4

glabel STR_1000FD8C
/* 03FD8C 1000FD8C */ .asciz "\t\tsection .bss in object %s\n"
                      .balign 4

glabel STR_1000FDAC
/* 03FDAC 1000FDAC */ .asciz "\tendscn\n"
                      .balign 4

glabel STR_1000FDB8
/* 03FDB8 1000FDB8 */ .asciz "endseg\n"
                      .balign 4

glabel STR_1000FDC0
/* 03FDC0 1000FDC0 */ .asciz "beginseg\n"
                      .balign 4

glabel STR_1000FDCC
/* 03FDCC 1000FDCC */ .asciz "\tsegtype noload\n"
                      .balign 4

glabel STR_1000FDE0
/* 03FDE0 1000FDE0 */ .asciz "\tcontents\n"
                      .balign 4

glabel STR_1000FDEC
/* 03FDEC 1000FDEC */ .asciz "\tdefault\n"
                      .balign 4

glabel STR_1000FDF8
/* 03FDF8 1000FDF8 */ .asciz "\tbeginscn .MIPS.options\n"
                      .balign 4

glabel STR_1000FE14
/* 03FE14 1000FE14 */ .asciz "\t\tscntype 0x7000000d\n"
                      .balign 4

glabel STR_1000FE2C
/* 03FE2C 1000FE2C */ .asciz "\t\tsection .MIPS.options in ldobj\n"
                      .balign 4

glabel STR_1000FE50
/* 03FE50 1000FE50 */ .asciz "\tendscn\n"
                      .balign 4

glabel STR_1000FE5C
/* 03FE5C 1000FE5C */ .asciz "\tbeginscn .reginfo\n"
                      .balign 4

glabel STR_1000FE70
/* 03FE70 1000FE70 */ .asciz "\t\tscntype 0x70000006\n"
                      .balign 4

glabel STR_1000FE88
/* 03FE88 1000FE88 */ .asciz "\t\tsection .reginfo in ldobj\n"
                      .balign 4

glabel STR_1000FEA8
/* 03FEA8 1000FEA8 */ .asciz "\tendscn\n"
                      .balign 4

glabel STR_1000FEB4
/* 03FEB4 1000FEB4 */ .asciz "endseg\n"
                      .balign 4

glabel STR_1000FEBC
/* 03FEBC 1000FEBC */ .asciz "malloc failed\n"
                      .balign 4

glabel STR_1000FECC
/* 03FECC 1000FECC */ .asciz "$ROOT/usr/lib/PR/nld -32 -g -non_shared -G 0 -elspec "
                      .balign 4

glabel STR_1000FF04
/* 03FF04 1000FF04 */ .asciz " -rom "
                      .balign 4

glabel STR_1000FF0C
/* 03FF0C 1000FF0C */ .asciz " -m "
                      .balign 4

glabel STR_1000FF14
/* 03FF14 1000FF14 */ .asciz " -o "
                      .balign 4

glabel STR_1000FF1C
/* 03FF1C 1000FF1C */ .asciz " "
                      .balign 4

glabel STR_1000FF20
/* 03FF20 1000FF20 */ .asciz " -objectlist "
                      .balign 4

glabel STR_1000FF30
/* 03FF30 1000FF30 */ .asciz "w"
                      .balign 4

glabel STR_1000FF34
/* 03FF34 1000FF34 */ .asciz "%s\n"
                      .balign 4

glabel STR_1000FF38
/* 03FF38 1000FF38 */ .asciz "Linking to ELF wave file\n"
                      .balign 4

glabel STR_1000FF54
/* 03FF54 1000FF54 */ .asciz "  %s\n"
                      .balign 4
/* 03FF5C 1000FF5C */ .asciz ""
                      .balign 4

glabel STR_1000FF60
/* 03FF60 1000FF60 */ .asciz "makerom: out of date\n"
                      .balign 4

glabel STR_1000FF78
/* 03FF78 1000FF78 */ .asciz "makerom: segment \"%s\": not found in any wave\n"
                      .balign 4

glabel STR_1000FFA8
/* 03FFA8 1000FFA8 */ .asciz "makerom: malloc failed [RomSize= %d kB]\n"
                      .balign 4

glabel STR_1000FFD4
/* 03FFD4 1000FFD4 */ .asciz "Segment %s: alignment %x\n"
                      .balign 4

glabel STR_1000FFF0
/* 03FFF0 1000FFF0 */ .asciz "Segment %s: romalign %x\n"
                      .balign 4

glabel STR_1001000C
/* 04000C 1001000C */ .asciz "makerom: %s: %s\n"
                      .balign 4

glabel STR_10010020
/* 040020 10010020 */ .asciz "Scanning %s\n"
                      .balign 4

glabel STR_10010030
/* 040030 10010030 */ .asciz "makerom: %s: not a valid ELF object file\n"
                      .balign 4

glabel STR_1001005C
/* 04005C 1001005C */ .asciz "makerom: %s: can't get section index %d\n"
                      .balign 4

glabel STR_10010088
/* 040088 10010088 */ .asciz ".text"
                      .balign 4

glabel STR_10010090
/* 040090 10010090 */ .asciz "  text size  = %x\n"
                      .balign 4

glabel STR_100100A4
/* 0400A4 100100A4 */ .asciz "       align = %x\n"
                      .balign 4

glabel STR_100100B8
/* 0400B8 100100B8 */ .asciz ".data"
                      .balign 4

glabel STR_100100C0
/* 0400C0 100100C0 */ .asciz ".rodata"
                      .balign 4

glabel STR_100100C8
/* 0400C8 100100C8 */ .asciz "  data&rodata size  = %x\n"
                      .balign 4

glabel STR_100100E4
/* 0400E4 100100E4 */ .asciz "       align = %x\n"
                      .balign 4

glabel STR_100100F8
/* 0400F8 100100F8 */ .asciz ".sdata"
                      .balign 4

glabel STR_10010100
/* 040100 10010100 */ .asciz "  sdata size  = %x\n"
                      .balign 4

glabel STR_10010114
/* 040114 10010114 */ .asciz "        align = %x\n"
                      .balign 4

glabel STR_10010128
/* 040128 10010128 */ .asciz ".sbss"
                      .balign 4

glabel STR_10010130
/* 040130 10010130 */ .asciz "  sbss size  = %x\n"
                      .balign 4

glabel STR_10010144
/* 040144 10010144 */ .asciz "       align = %x\n"
                      .balign 4

glabel STR_10010158
/* 040158 10010158 */ .asciz ".bss"
                      .balign 4

glabel STR_10010160
/* 040160 10010160 */ .asciz "  bss size  = %x\n"
                      .balign 4

glabel STR_10010174
/* 040174 10010174 */ .asciz "      align = %x\n"
                      .balign 4

glabel STR_10010188
/* 040188 10010188 */ .asciz "makerom: %s: %s\n"
                      .balign 4

glabel STR_1001019C
/* 04019C 1001019C */ .asciz "makerom: lstat failed: %s\n"
                      .balign 4

glabel STR_100101B8
/* 0401B8 100101B8 */ .asciz "makerom: segment \"%s\" (text+data) size "
                      .balign 4

glabel STR_100101E0
/* 0401E0 100101E0 */ .asciz "(%d+%d) = %d (0x%x)\n         "
                      .balign 4

glabel STR_10010200
/* 040200 10010200 */ .asciz "exceeds maximum BOOT segment size %d (0x%x)\n"
                      .balign 4

glabel STR_10010230
/* 040230 10010230 */ .asciz "makerom: segment \"%s\" (text+data+bss) size "
                      .balign 4

glabel STR_1001025C
/* 04025C 1001025C */ .asciz "(%d+%d+%d) = %d (0x%x)\n         "
                      .balign 4

glabel STR_10010280
/* 040280 10010280 */ .asciz "exceeds given maximum segment size %d (0x%x)\n"
                      .balign 4

glabel STR_100102B0
/* 0402B0 100102B0 */ .asciz "makerom: segment \"%s\" [0x%x, 0x%x) overlaps with\n"
                      .balign 4

glabel STR_100102E4
/* 0402E4 100102E4 */ .asciz "         segment \"%s\" [0x%x, 0x%x)\n"
                      .balign 4

glabel STR_10010308
/* 040308 10010308 */ .asciz "         in wave \"%s\"\n"
                      .balign 4

glabel STR_10010320
/* 040320 10010320 */ .asciz "w"
                      .balign 4

glabel STR_10010324
/* 040324 10010324 */ .asciz "makerom: %s: cannot create\n"
                      .balign 4

glabel STR_10010340
/* 040340 10010340 */ .asciz ".globl _%sSegmentRomStart; "
                      .balign 4

glabel STR_1001035C
/* 04035C 1001035C */ .asciz "_%sSegmentRomStart = 0x%08x\n"
                      .balign 4

glabel STR_1001037C
/* 04037C 1001037C */ .asciz ".globl _%sSegmentRomEnd; "
                      .balign 4

glabel STR_10010398
/* 040398 10010398 */ .asciz "_%sSegmentRomEnd = 0x%08x\n"
                      .balign 4

glabel STR_100103B4
/* 0403B4 100103B4 */ .asciz ".globl _%sSegmentStart; "
                      .balign 4

glabel STR_100103D0
/* 0403D0 100103D0 */ .asciz "_%sSegmentStart = 0x%08x\n"
                      .balign 4

glabel STR_100103EC
/* 0403EC 100103EC */ .asciz ".globl _%sSegmentTextStart; "
                      .balign 4

glabel STR_1001040C
/* 04040C 1001040C */ .asciz "_%sSegmentTextStart = 0x%08x\n"
                      .balign 4

glabel STR_1001042C
/* 04042C 1001042C */ .asciz ".globl _%sSegmentTextEnd; "
                      .balign 4

glabel STR_10010448
/* 040448 10010448 */ .asciz "_%sSegmentTextEnd = 0x%08x\n"
                      .balign 4

glabel STR_10010464
/* 040464 10010464 */ .asciz ".globl _%sSegmentDataStart; "
                      .balign 4

glabel STR_10010484
/* 040484 10010484 */ .asciz "_%sSegmentDataStart = 0x%08x\n"
                      .balign 4

glabel STR_100104A4
/* 0404A4 100104A4 */ .asciz ".globl _%sSegmentDataEnd; "
                      .balign 4

glabel STR_100104C0
/* 0404C0 100104C0 */ .asciz "_%sSegmentDataEnd = 0x%08x\n"
                      .balign 4

glabel STR_100104DC
/* 0404DC 100104DC */ .asciz ".globl _%sSegmentBssStart; "
                      .balign 4

glabel STR_100104F8
/* 0404F8 100104F8 */ .asciz "_%sSegmentBssStart = 0x%08x\n"
                      .balign 4

glabel STR_10010518
/* 040518 10010518 */ .asciz ".globl _%sSegmentBssEnd; "
                      .balign 4

glabel STR_10010534
/* 040534 10010534 */ .asciz "_%sSegmentBssEnd = 0x%08x\n"
                      .balign 4

glabel STR_10010550
/* 040550 10010550 */ .asciz ".globl _%sSegmentEnd; "
                      .balign 4

glabel STR_10010568
/* 040568 10010568 */ .asciz "_%sSegmentEnd = 0x%08x\n"
                      .balign 4

glabel STR_10010580
/* 040580 10010580 */ .asciz "malloc failed\n"
                      .balign 4

glabel STR_10010590
/* 040590 10010590 */ .asciz "$TOOLROOT/usr/bin/cc -c -non_shared -o "
                      .balign 4

glabel STR_100105B8
/* 0405B8 100105B8 */ .asciz " "
                      .balign 4

glabel STR_100105BC
/* 0405BC 100105BC */ .asciz "  %s\n"
                      .balign 4

glabel STR_100105C4
/* 0405C4 100105C4 */ .asciz "makerom: %s: %s\n"
                      .balign 4

glabel STR_100105D8
/* 0405D8 100105D8 */ .asciz ".text"
                      .balign 4

glabel STR_100105E0
/* 0405E0 100105E0 */ .asciz "makerom: entr size %d is larger than %d\n"
                      .balign 4

glabel STR_1001060C
/* 04060C 1001060C */ .asciz "makerom: lseek of entry section failed\n"
                      .balign 4

glabel STR_10010634
/* 040634 10010634 */ .asciz "makerom: read of entry section failed\n"
                      .balign 4

glabel STR_1001065C
/* 04065C 1001065C */ .asciz "w+"
                      .balign 4

glabel STR_10010660
/* 040660 10010660 */ .asciz "makerom: %s: %s\n"
                      .balign 4

glabel STR_10010674
/* 040674 10010674 */ .asciz "makerom: %s: fseek error (%s)\n"
                      .balign 4

glabel STR_10010694
/* 040694 10010694 */ .asciz "makerom: %s: write error\n"
                      .balign 4

glabel STR_100106B0
/* 0406B0 100106B0 */ .asciz "makerom: %s: fseek error (%s)\n"
                      .balign 4

glabel STR_100106D0
/* 0406D0 100106D0 */ .asciz "makerom: %s: write error\n"
                      .balign 4

glabel STR_100106EC
/* 0406EC 100106EC */ .asciz "makerom: %s: fseek error (%s)\n"
                      .balign 4

glabel STR_1001070C
/* 04070C 1001070C */ .asciz "makerom: %s: read error \n"
                      .balign 4

glabel STR_10010728
/* 040728 10010728 */ .asciz "makerom: %s: fseek error (%s)\n"
                      .balign 4

glabel STR_10010748
/* 040748 10010748 */ .asciz "makerom: %s: write error\n"
                      .balign 4

glabel STR_10010764
/* 040764 10010764 */ .asciz "makerom: %s: fseek error (%s)\n"
                      .balign 4

glabel STR_10010784
/* 040784 10010784 */ .asciz "makerom: %s: write error\n"
                      .balign 4

glabel STR_100107A0
/* 0407A0 100107A0 */ .asciz "makerom: %s: fseek error (%s)\n"
                      .balign 4

glabel STR_100107C0
/* 0407C0 100107C0 */ .asciz "makerom: %s: write error\n"
                      .balign 4

glabel STR_100107DC
/* 0407DC 100107DC */ .asciz "makerom: %s: fseek error (%s)\n"
                      .balign 4

glabel STR_100107FC
/* 0407FC 100107FC */ .asciz "makerom: %s: write error\n"
                      .balign 4

glabel STR_10010818
/* 040818 10010818 */ .asciz "malloc failed\n"
                      .balign 4

glabel STR_10010828
/* 040828 10010828 */ .asciz "makerom: %s: write error %x\n"
                      .balign 4

glabel STR_10010848
/* 040848 10010848 */ .asciz "makerom: %s: write error\n"
                      .balign 4

glabel STR_10010864
/* 040864 10010864 */ .asciz ".cord"
                      .balign 4

glabel STR_1001086C
/* 04086C 1001086C */ .asciz "makerom: %s: %s\n"
                      .balign 4

glabel STR_10010880
/* 040880 10010880 */ .asciz "makerom: %s: not a valid ELF object file\n"
                      .balign 4

glabel STR_100108AC
/* 0408AC 100108AC */ .asciz "makerom: %s: can't get section index %d\n"
                      .balign 4

glabel STR_100108D8
/* 0408D8 100108D8 */ .asciz "makerom: %s: cannot find %s section\n"
                      .balign 4

glabel STR_10010900
/* 040900 10010900 */ .asciz "malloc failed\n"
                      .balign 4

glabel STR_10010910
/* 040910 10010910 */ .asciz ".%s.text"
                      .balign 4

glabel STR_1001091C
/* 04091C 1001091C */ .asciz "makerom: %s: section size for %s does not match input section sizes\n"
                      .balign 4

glabel STR_10010964
/* 040964 10010964 */ .asciz "makerom:   shdr = %d, textSize = %d\n"
                      .balign 4

glabel STR_1001098C
/* 04098C 1001098C */ .asciz "makerom: %s: seek to section %s failed\n"
                      .balign 4

glabel STR_100109B4
/* 0409B4 100109B4 */ .asciz "makerom: %s: read of section %s failed\n"
                      .balign 4

glabel STR_100109DC
/* 0409DC 100109DC */ .asciz ".%s.data"
                      .balign 4

glabel STR_100109E8
/* 0409E8 100109E8 */ .asciz "makerom: %s: section size for %s does not match input section sizes\n"
                      .balign 4

glabel STR_10010A30
/* 040A30 10010A30 */ .asciz "large data failed\n"
                      .balign 4

glabel STR_10010A44
/* 040A44 10010A44 */ .asciz "%s, file large=%x, our dataSize=%x\n"
                      .balign 4

glabel STR_10010A68
/* 040A68 10010A68 */ .asciz "makerom: %s: seek to section %s failed\n"
                      .balign 4

glabel STR_10010A90
/* 040A90 10010A90 */ .asciz "makerom: %s: read of section %s failed\n"
                      .balign 4

glabel STR_10010AB8
/* 040AB8 10010AB8 */ .asciz ".%s.sdata"
                      .balign 4

glabel STR_10010AC4
/* 040AC4 10010AC4 */ .asciz "makerom: %s: section size for %s does not match input section sizes\n"
                      .balign 4

glabel STR_10010B0C
/* 040B0C 10010B0C */ .asciz "small data failed\n"
                      .balign 4

glabel STR_10010B20
/* 040B20 10010B20 */ .asciz "makerom: %s: seek to section %s failed\n"
                      .balign 4

glabel STR_10010B48
/* 040B48 10010B48 */ .asciz "makerom: %s: read of section %s failed\n"
                      .balign 4

glabel STR_10010B70
/* 040B70 10010B70 */ .asciz "makerom: %s: %s\n"
                      .balign 4

glabel STR_10010B84
/* 040B84 10010B84 */ .asciz "makerom: lstat failed: %s\n"
                      .balign 4

glabel STR_10010BA0
/* 040BA0 10010BA0 */ .asciz "makerom: %s: segment size changed\n"
                      .balign 4

glabel STR_10010BC4
/* 040BC4 10010BC4 */ .asciz "makerom: %s: read failed (%s)\n"
                      .balign 4

glabel STR_10010BE4
/* 040BE4 10010BE4 */ .asciz "__osFinalrom"
                      .balign 4

glabel STR_10010BF4
/* 040BF4 10010BF4 */ .asciz "w"
                      .balign 4

glabel STR_10010BF8
/* 040BF8 10010BF8 */ .asciz "makerom: %s: cannot create\n"
                      .balign 4

glabel STR_10010C14
/* 040C14 10010C14 */ .asciz "makerom: %s: %s\n"
                      .balign 4

glabel STR_10010C28
/* 040C28 10010C28 */ .asciz "makerom: %s: not a valid ELF object file\n"
                      .balign 4

glabel STR_10010C54
/* 040C54 10010C54 */ .asciz "makerom: use libultra_rom.a to build real game cassette\n"
                      .balign 4

glabel STR_10010C90
/* 040C90 10010C90 */ .asciz "makerom: %s: cannot find entry symbol %s\n"
                      .balign 4

glabel STR_10010CBC
/* 040CBC 10010CBC */ .asciz "makerom: %s: cannot find stack symbol %s\n"
                      .balign 4

glabel STR_10010CE8
/* 040CE8 10010CE8 */ .asciz "malloc failed\n"
                      .balign 4

glabel STR_10010CF8
/* 040CF8 10010CF8 */ .asciz "_%sSegmentBssStart"
                      .balign 4

glabel STR_10010D0C
/* 040D0C 10010D0C */ .asciz " la\t$8 0x%x\n"
                      .balign 4

glabel STR_10010D1C
/* 040D1C 10010D1C */ .asciz " li\t$9 0x%x\n"
                      .balign 4

glabel STR_10010D2C
/* 040D2C 10010D2C */ .asciz ".ent entryPoint\n"
                      .balign 4

glabel STR_10010D40
/* 040D40 10010D40 */ .asciz "entryPoint:\n"
                      .balign 4

glabel STR_10010D50
/* 040D50 10010D50 */ .asciz " sw $0, 0($8)\n"
                      .balign 4

glabel STR_10010D60
/* 040D60 10010D60 */ .asciz " sw $0, 4($8)\n"
                      .balign 4

glabel STR_10010D70
/* 040D70 10010D70 */ .asciz " addi $8, 8\n"
                      .balign 4

glabel STR_10010D80
/* 040D80 10010D80 */ .asciz " addi $9, 0xfff8\n"
                      .balign 4

glabel STR_10010D94
/* 040D94 10010D94 */ .asciz " bne  $9, $0, entryPoint\n"
                      .balign 4

glabel STR_10010DB0
/* 040DB0 10010DB0 */ .asciz " la\t$29 0x%x\n"
                      .balign 4

glabel STR_10010DC0
/* 040DC0 10010DC0 */ .asciz " la $10  0x%x\n"
                      .balign 4

glabel STR_10010DD0
/* 040DD0 10010DD0 */ .asciz " j $10\n"
                      .balign 4

glabel STR_10010DD8
/* 040DD8 10010DD8 */ .asciz ".end\n"
                      .balign 4

glabel STR_10010DE0
/* 040DE0 10010DE0 */ .asciz "malloc failed\n"
                      .balign 4

glabel STR_10010DF0
/* 040DF0 10010DF0 */ .asciz "$TOOLROOT/usr/bin/cc -c -non_shared -o "
                      .balign 4

glabel STR_10010E18
/* 040E18 10010E18 */ .asciz " "
                      .balign 4

glabel STR_10010E1C
/* 040E1C 10010E1C */ .asciz "Compiling entry source file\n"
                      .balign 4

glabel STR_10010E3C
/* 040E3C 10010E3C */ .asciz "  %s\n"
                      .balign 4

glabel jtbl_10010E44
/* 040E44 10010E44 F03EF75C */ .gpword .L0040D49C
/* 040E48 10010E48 F03EF6A4 */ .gpword .L0040D3E4
/* 040E4C 10010E4C F03EF700 */ .gpword .L0040D440
/* 040E50 10010E50 F03EF784 */ .gpword .L0040D4C4
/* 040E54 10010E54 F03EF798 */ .gpword .L0040D4D8

glabel jtbl_10010E58
/* 040E58 10010E58 F03EFFE0 */ .gpword .L0040DD20
/* 040E5C 10010E5C F03EFF28 */ .gpword .L0040DC68
/* 040E60 10010E60 F03EFF84 */ .gpword .L0040DCC4
/* 040E64 10010E64 F03F0008 */ .gpword .L0040DD48
/* 040E68 10010E68 F03F001C */ .gpword .L0040DD5C
/* 040E6C 10010E6C 00000000 */ .word 0x00000000

glabel STR_10010E70
/* 040E70 10010E70 */ .asciz ".text"
                      .balign 4

glabel STR_10010E78
/* 040E78 10010E78 */ .asciz "Extract(): Cannot open %s.\n"
                      .balign 4
/* 040E94 10010E94 */ .asciz ""
                      .balign 4
/* 040E98 10010E98 */ .asciz ""
                      .balign 4
/* 040E9C 10010E9C */ .asciz ""
                      .balign 4

glabel STR_10010EA0
/* 040EA0 10010EA0 */ .asciz "%x"
                      .balign 4

glabel STR_10010EA4
/* 040EA4 10010EA4 */ .asciz "Illegal character"
                      .balign 4

glabel STR_10010EB8
/* 040EB8 10010EB8 */ .asciz "bad switch yylook %d"
                      .balign 4

glabel STR_10010ED0
/* 040ED0 10010ED0 */ .asciz " %d \"%s\""
                      .balign 4

glabel STR_10010EDC
/* 040EDC 10010EDC */ .asciz "Input string too long, limit %d\n"
                      .balign 4

glabel STR_10010F00
/* 040F00 10010F00 */ .asciz "Input string too long, limit %d\n"
                      .balign 4

glabel STR_10010F24
/* 040F24 10010F24 */ .asciz "Input string too long, limit %d\n"
                      .balign 4

glabel STR_10010F48
/* 040F48 10010F48 */ .asciz "Input string too long, limit %d\n"
                      .balign 4

glabel jtbl_10010F6C
/* 040F6C 10010F6C F03F32F0 */ .gpword .L00411030
/* 040F70 10010F70 F03F2E7C */ .gpword .L00410BBC
/* 040F74 10010F74 F03F2EA0 */ .gpword .L00410BE0
/* 040F78 10010F78 F03F2EBC */ .gpword .L00410BFC
/* 040F7C 10010F7C F03F2ED8 */ .gpword .L00410C18
/* 040F80 10010F80 F03F2EF4 */ .gpword .L00410C34
/* 040F84 10010F84 F03F2EFC */ .gpword .L00410C3C
/* 040F88 10010F88 F03F2F18 */ .gpword .L00410C58
/* 040F8C 10010F8C F03F2F34 */ .gpword .L00410C74
/* 040F90 10010F90 F03F2F50 */ .gpword .L00410C90
/* 040F94 10010F94 F03F2F6C */ .gpword .L00410CAC
/* 040F98 10010F98 F03F2F88 */ .gpword .L00410CC8
/* 040F9C 10010F9C F03F2FA4 */ .gpword .L00410CE4
/* 040FA0 10010FA0 F03F2FC0 */ .gpword .L00410D00
/* 040FA4 10010FA4 F03F2FDC */ .gpword .L00410D1C
/* 040FA8 10010FA8 F03F2FF8 */ .gpword .L00410D38
/* 040FAC 10010FAC F03F3014 */ .gpword .L00410D54
/* 040FB0 10010FB0 F03F3030 */ .gpword .L00410D70
/* 040FB4 10010FB4 F03F304C */ .gpword .L00410D8C
/* 040FB8 10010FB8 F03F3068 */ .gpword .L00410DA8
/* 040FBC 10010FBC F03F3084 */ .gpword .L00410DC4
/* 040FC0 10010FC0 F03F30A0 */ .gpword .L00410DE0
/* 040FC4 10010FC4 F03F30BC */ .gpword .L00410DFC
/* 040FC8 10010FC8 F03F30D8 */ .gpword .L00410E18
/* 040FCC 10010FCC F03F30F4 */ .gpword .L00410E34
/* 040FD0 10010FD0 F03F3110 */ .gpword .L00410E50
/* 040FD4 10010FD4 F03F312C */ .gpword .L00410E6C
/* 040FD8 10010FD8 F03F3148 */ .gpword .L00410E88
/* 040FDC 10010FDC F03F3164 */ .gpword .L00410EA4
/* 040FE0 10010FE0 F03F3180 */ .gpword .L00410EC0
/* 040FE4 10010FE4 F03F319C */ .gpword .L00410EDC
/* 040FE8 10010FE8 F03F31C8 */ .gpword .L00410F08
/* 040FEC 10010FEC F03F31F4 */ .gpword .L00410F34
/* 040FF0 10010FF0 F03F3250 */ .gpword .L00410F90
/* 040FF4 10010FF4 F03F32D4 */ .gpword .L00411014
/* 040FF8 10010FF8 00000000 */ .word 0x00000000
/* 040FFC 10010FFC 00000000 */ .word 0x00000000

glabel STR_10011000
/* 041000 10011000 */ .asciz "makerom: %s at line %d [%s]\n"
                      .balign 4

glabel STR_10011020
/* 041020 10011020 */ .asciz "makerom: error at line %d: "
                      .balign 4

glabel STR_1001103C
/* 04103C 1001103C */ .asciz "\n"
                      .balign 4

glabel STR_10011040
/* 041040 10011040 */ .asciz "uxlibc:80"
                      .balign 4

glabel STR_1001104C
/* 04104C 1001104C */ .asciz "Yacc stack overflow"
                      .balign 4

glabel STR_10011060
/* 041060 10011060 */ .asciz "uxlibc:81"
                      .balign 4

glabel STR_1001106C
/* 04106C 1001106C */ .asciz "Syntax error"
                      .balign 4

glabel STR_1001107C
/* 04107C 1001107C */ .asciz "no segment name specified"
                      .balign 4

glabel STR_10011098
/* 041098 10011098 */ .asciz "no files included for segment"
                      .balign 4

glabel STR_100110B8
/* 0410B8 100110B8 */ .asciz "first segment must be BOOT segment"
                      .balign 4

glabel STR_100110DC
/* 0410DC 100110DC */ .asciz "entry point specified on non-BOOT segment \"%s\""
                      .balign 4

glabel STR_1001110C
/* 04110C 1001110C */ .asciz "stack specified on non-BOOT segment \"%s\""
                      .balign 4

glabel STR_10011138
/* 041138 10011138 */ .asciz "no address specified for OBJECT segment \"%s\""
                      .balign 4

glabel STR_10011168
/* 041168 10011168 */ .asciz "address specified for RAW segment \"%s\""
                      .balign 4

glabel STR_10011190
/* 041190 10011190 */ .asciz "\"align\" keyword is only valid with \"after\" keyword\n         for segment \"%s\""
                      .balign 4

glabel STR_100111E0
/* 0411E0 100111E0 */ .asciz "makerom: malloc failed\n"
                      .balign 4

glabel STR_100111F8
/* 0411F8 100111F8 */ .asciz "address (0x%x) not a multiple of 16"
                      .balign 4

glabel STR_1001121C
/* 04121C 1001121C */ .asciz "address (0x%x) must be at least\n         0x%x (or 0x%x)"
                      .balign 4

glabel STR_10011254
/* 041254 10011254 */ .asciz "multiple address/number/after statement"
                      .balign 4

glabel STR_1001127C
/* 04127C 1001127C */ .asciz "segment number (%d) not in range [0-15]"
                      .balign 4

glabel STR_100112A4
/* 0412A4 100112A4 */ .asciz "multiple address/number/after statement"
                      .balign 4

glabel STR_100112CC
/* 0412CC 100112CC */ .asciz "multiple address/number/after statement"
                      .balign 4

glabel STR_100112F4
/* 0412F4 100112F4 */ .asciz "rom alignment (%d or 0x%x) must be at least 16"
                      .balign 4

glabel STR_10011324
/* 041324 10011324 */ .asciz "rom alignment (%d or 0x%x) must be a power of 2"
                      .balign 4

glabel STR_10011354
/* 041354 10011354 */ .asciz "alignment (%d or 0x%x) must be at least 16"
                      .balign 4

glabel STR_10011380
/* 041380 10011380 */ .asciz "alignment (%d or 0x%x) must be a power of 2"
                      .balign 4

glabel STR_100113AC
/* 0413AC 100113AC */ .asciz "multiple segment name"
                      .balign 4

glabel STR_100113C4
/* 0413C4 100113C4 */ .asciz "makerom: malloc failed\n"
                      .balign 4

glabel STR_100113DC
/* 0413DC 100113DC */ .asciz "multiple entry point"
                      .balign 4

glabel STR_100113F4
/* 0413F4 100113F4 */ .asciz "multiple flags value specified"
                      .balign 4

glabel STR_10011414
/* 041414 10011414 */ .asciz "RAW segment cannot be a BOOT segment"
                      .balign 4

glabel STR_1001143C
/* 04143C 1001143C */ .asciz "RAW and OBJECT are mutually exclusive"
                      .balign 4

glabel STR_10011464
/* 041464 10011464 */ .asciz "makerom: malloc failed\n"
                      .balign 4

glabel STR_1001147C
/* 04147C 1001147C */ .asciz "multiple maximum segment size value"
                      .balign 4

glabel STR_100114A0
/* 0414A0 100114A0 */ .asciz "makerom: maxsize constant (%d) not a multiple of 16\n"
                      .balign 4

glabel STR_100114D8
/* 0414D8 100114D8 */ .asciz "multiple stack"
                      .balign 4

glabel STR_100114E8
/* 0414E8 100114E8 */ .asciz "segment \"%s\" not (yet) defined"
                      .balign 4

glabel STR_10011508
/* 041508 10011508 */ .asciz "segment \"%s\" not (yet) defined"
                      .balign 4

glabel STR_10011528
/* 041528 10011528 */ .asciz "segment \"%s\" not (yet) defined"
                      .balign 4

glabel STR_10011548
/* 041548 10011548 */ .asciz "makerom: malloc failed\n"
                      .balign 4

glabel STR_10011560
/* 041560 10011560 */ .asciz "makerom: malloc failed\n"
                      .balign 4

glabel STR_10011578
/* 041578 10011578 */ .asciz "unknown segment \"%s\""
                      .balign 4

glabel STR_10011590
/* 041590 10011590 */ .asciz "makerom: malloc failed\n"
                      .balign 4

glabel jtbl_100115A8
/* 0415A8 100115A8 F03F5548 */ .gpword .L00413288
/* 0415AC 100115AC F03F5890 */ .gpword .L004135D0
/* 0415B0 100115B0 F03F65DC */ .gpword .L0041431C
/* 0415B4 100115B4 F03F65DC */ .gpword .L0041431C
/* 0415B8 100115B8 F03F5A3C */ .gpword .L0041377C
/* 0415BC 100115BC F03F5B48 */ .gpword .L00413888
/* 0415C0 100115C0 F03F5BEC */ .gpword .L0041392C
/* 0415C4 100115C4 F03F5C3C */ .gpword .L0041397C
/* 0415C8 100115C8 F03F5CCC */ .gpword .L00413A0C
/* 0415CC 100115CC F03F5D5C */ .gpword .L00413A9C
/* 0415D0 100115D0 F03F5DF0 */ .gpword .L00413B30
/* 0415D4 100115D4 F03F5E40 */ .gpword .L00413B80
/* 0415D8 100115D8 F03F5EF8 */ .gpword .L00413C38
/* 0415DC 100115DC F03F5FE8 */ .gpword .L00413D28
/* 0415E0 100115E0 F03F6070 */ .gpword .L00413DB0
/* 0415E4 100115E4 F03F60B4 */ .gpword .L00413DF4
/* 0415E8 100115E8 F03F6160 */ .gpword .L00413EA0
/* 0415EC 100115EC F03F6270 */ .gpword .L00413FB0
/* 0415F0 100115F0 F03F6288 */ .gpword .L00413FC8
/* 0415F4 100115F4 F03F62A0 */ .gpword .L00413FE0
/* 0415F8 100115F8 F03F62B4 */ .gpword .L00413FF4
/* 0415FC 100115FC F03F62D0 */ .gpword .L00414010
/* 041600 10011600 F03F62E4 */ .gpword .L00414024
/* 041604 10011604 F03F62F8 */ .gpword .L00414038
/* 041608 10011608 F03F630C */ .gpword .L0041404C
/* 04160C 1001160C F03F6328 */ .gpword .L00414068
/* 041610 10011610 F03F6344 */ .gpword .L00414084
/* 041614 10011614 F03F65DC */ .gpword .L0041431C
/* 041618 10011618 F03F65DC */ .gpword .L0041431C
/* 04161C 1001161C F03F6364 */ .gpword .L004140A4
/* 041620 10011620 F03F637C */ .gpword .L004140BC
/* 041624 10011624 F03F65DC */ .gpword .L0041431C
/* 041628 10011628 F03F65DC */ .gpword .L0041431C
/* 04162C 1001162C F03F643C */ .gpword .L0041417C
/* 041630 10011630 F03F649C */ .gpword .L004141DC
/* 041634 10011634 00000000 */ .word 0x00000000
/* 041638 10011638 00000000 */ .word 0x00000000
/* 04163C 1001163C 00000000 */ .word 0x00000000

glabel RO_10011640
/* 041640 10011640 00000001 */ .word 0x00000001

glabel RO_10011644
/* 041644 10011644 00000001 */ .word 0x00000001

glabel RO_10011648
/* 041648 10011648 00000008 */ .word 0x00000008

glabel RO_1001164C
/* 04164C 1001164C 00000008 */ .word 0x00000008

glabel RO_10011650
/* 041650 10011650 00000010 */ .word 0x00000010

glabel RO_10011654
/* 041654 10011654 00000010 */ .word 0x00000010

glabel RO_10011658
/* 041658 10011658 00000040 */ .word 0x00000040
/* 04165C 1001165C 00000040 */ .word 0x00000040
/* 041660 10011660 00000002 */ .word 0x00000002
/* 041664 10011664 00000002 */ .word 0x00000002
/* 041668 10011668 00000008 */ .word 0x00000008
/* 04166C 1001166C 00000008 */ .word 0x00000008
/* 041670 10011670 00000038 */ .word 0x00000038
/* 041674 10011674 00000038 */ .word 0x00000038
/* 041678 10011678 00000018 */ .word 0x00000018
/* 04167C 1001167C 00000018 */ .word 0x00000018
/* 041680 10011680 00000010 */ .word 0x00000010
/* 041684 10011684 00000010 */ .word 0x00000010
/* 041688 10011688 00000040 */ .word 0x00000040
/* 04168C 1001168C 00000040 */ .word 0x00000040
/* 041690 10011690 00000004 */ .word 0x00000004
/* 041694 10011694 00000004 */ .word 0x00000004
/* 041698 10011698 00000008 */ .word 0x00000008
/* 04169C 1001169C 00000008 */ .word 0x00000008
/* 0416A0 100116A0 00000018 */ .word 0x00000018
/* 0416A4 100116A4 00000018 */ .word 0x00000018
/* 0416A8 100116A8 00000004 */ .word 0x00000004
/* 0416AC 100116AC 00000004 */ .word 0x00000004
/* 0416B0 100116B0 00000008 */ .word 0x00000008
/* 0416B4 100116B4 00000008 */ .word 0x00000008

glabel RO_100116B8
/* 0416B8 100116B8 00000000 */ .word 0x00000000
/* 0416BC 100116BC 00000000 */ .word 0x00000000
/* 0416C0 100116C0 0000000C */ .word 0x0000000C
/* 0416C4 100116C4 00000000 */ .word 0x00000000
/* 0416C8 100116C8 00000007 */ .word 0x00000007
/* 0416CC 100116CC 0000000D */ .word 0x0000000D
/* 0416D0 100116D0 00000002 */ .word 0x00000002
/* 0416D4 100116D4 00000000 */ .word 0x00000000
/* 0416D8 100116D8 00000000 */ .word 0x00000000
/* 0416DC 100116DC 00000008 */ .word 0x00000008
/* 0416E0 100116E0 00000000 */ .word 0x00000000
/* 0416E4 100116E4 0000000C */ .word 0x0000000C
/* 0416E8 100116E8 00000000 */ .word 0x00000000
/* 0416EC 100116EC 00000000 */ .word 0x00000000

glabel RO_100116F0
/* 0416F0 100116F0 00000001 */ .word 0x00000001
/* 0416F4 100116F4 00000004 */ .word 0x00000004
/* 0416F8 100116F8 00000004 */ .word 0x00000004
/* 0416FC 100116FC 00000004 */ .word 0x00000004
/* 041700 10011700 00000002 */ .word 0x00000002
/* 041704 10011704 00000004 */ .word 0x00000004
/* 041708 10011708 00000004 */ .word 0x00000004
/* 04170C 1001170C 00000004 */ .word 0x00000004
/* 041710 10011710 00000004 */ .word 0x00000004
/* 041714 10011714 00000004 */ .word 0x00000004
/* 041718 10011718 00000004 */ .word 0x00000004
/* 04171C 1001171C 00000000 */ .word 0x00000000
/* 041720 10011720 00000004 */ .word 0x00000004
/* 041724 10011724 00000004 */ .word 0x00000004
/* 041728 10011728 00000000 */ .word 0x00000000

glabel RO_1001172C
/* 04172C 1001172C 00000001 */ .word 0x00000001
/* 041730 10011730 00000008 */ .word 0x00000008
/* 041734 10011734 00000008 */ .word 0x00000008
/* 041738 10011738 00000008 */ .word 0x00000008
/* 04173C 1001173C 00000002 */ .word 0x00000002
/* 041740 10011740 00000008 */ .word 0x00000008
/* 041744 10011744 00000008 */ .word 0x00000008
/* 041748 10011748 00000008 */ .word 0x00000008
/* 04174C 1001174C 00000008 */ .word 0x00000008
/* 041750 10011750 00000008 */ .word 0x00000008
/* 041754 10011754 00000008 */ .word 0x00000008
/* 041758 10011758 00000008 */ .word 0x00000008
/* 04175C 1001175C 00000008 */ .word 0x00000008
/* 041760 10011760 00000008 */ .word 0x00000008
/* 041764 10011764 00000008 */ .word 0x00000008
/* 041768 10011768 00000000 */ .word 0x00000000
/* 04176C 1001176C 00000000 */ .word 0x00000000

glabel RO_10011770
/* 041770 10011770 213C6172 */ .word 0x213C6172
/* 041774 10011774 63683E0A */ .word 0x63683E0A
/* 041778 10011778 00000000 */ .word 0x00000000

glabel jtbl_1001177C
/* 04177C 1001177C F04005C8 */ .gpword .L0041E308
/* 041780 10011780 F0400708 */ .gpword .L0041E448
/* 041784 10011784 F040066C */ .gpword .L0041E3AC
/* 041788 10011788 F04005B4 */ .gpword .L0041E2F4
/* 04178C 1001178C F04005B4 */ .gpword .L0041E2F4
/* 041790 10011790 F04005B4 */ .gpword .L0041E2F4
/* 041794 10011794 F04005B4 */ .gpword .L0041E2F4
/* 041798 10011798 F0400700 */ .gpword .L0041E440
/* 04179C 1001179C F0400710 */ .gpword .L0041E450
/* 0417A0 100117A0 F04005D0 */ .gpword .L0041E310
/* 0417A4 100117A4 00000000 */ .word 0x00000000
/* 0417A8 100117A8 00000000 */ .word 0x00000000
/* 0417AC 100117AC 00000000 */ .word 0x00000000

glabel RO_100117B0
/* 0417B0 100117B0 00000001 */ .word 0x00000001
/* 0417B4 100117B4 00000001 */ .word 0x00000001
/* 0417B8 100117B8 00000004 */ .word 0x00000004
/* 0417BC 100117BC 00000004 */ .word 0x00000004
/* 0417C0 100117C0 00000008 */ .word 0x00000008
/* 0417C4 100117C4 00000008 */ .word 0x00000008
/* 0417C8 100117C8 00000034 */ .word 0x00000034
/* 0417CC 100117CC 00000034 */ .word 0x00000034
/* 0417D0 100117D0 00000002 */ .word 0x00000002
/* 0417D4 100117D4 00000002 */ .word 0x00000002
/* 0417D8 100117D8 00000004 */ .word 0x00000004
/* 0417DC 100117DC 00000004 */ .word 0x00000004
/* 0417E0 100117E0 00000020 */ .word 0x00000020
/* 0417E4 100117E4 00000020 */ .word 0x00000020
/* 0417E8 100117E8 0000000C */ .word 0x0000000C
/* 0417EC 100117EC 0000000C */ .word 0x0000000C
/* 0417F0 100117F0 00000008 */ .word 0x00000008
/* 0417F4 100117F4 00000008 */ .word 0x00000008
/* 0417F8 100117F8 00000028 */ .word 0x00000028
/* 0417FC 100117FC 00000028 */ .word 0x00000028
/* 041800 10011800 00000004 */ .word 0x00000004
/* 041804 10011804 00000004 */ .word 0x00000004
/* 041808 10011808 00000000 */ .word 0x00000000
/* 04180C 1001180C 00000000 */ .word 0x00000000
/* 041810 10011810 00000010 */ .word 0x00000010
/* 041814 10011814 00000010 */ .word 0x00000010
/* 041818 10011818 00000004 */ .word 0x00000004
/* 04181C 1001181C 00000004 */ .word 0x00000004
/* 041820 10011820 00000000 */ .word 0x00000000
/* 041824 10011824 00000000 */ .word 0x00000000

glabel RO_10011828
/* 041828 10011828 00000000 */ .word 0x00000000
/* 04182C 1001182C 00000000 */ .word 0x00000000
/* 041830 10011830 0000000C */ .word 0x0000000C
/* 041834 10011834 00000000 */ .word 0x00000000
/* 041838 10011838 00000007 */ .word 0x00000007
/* 04183C 1001183C 0000000D */ .word 0x0000000D
/* 041840 10011840 00000002 */ .word 0x00000002
/* 041844 10011844 00000000 */ .word 0x00000000
/* 041848 10011848 00000000 */ .word 0x00000000
/* 04184C 1001184C 00000008 */ .word 0x00000008
/* 041850 10011850 00000000 */ .word 0x00000000
/* 041854 10011854 0000000C */ .word 0x0000000C
/* 041858 10011858 00000000 */ .word 0x00000000
/* 04185C 1001185C 00000000 */ .word 0x00000000

glabel jtbl_10011860
/* 041860 10011860 F0404ED4 */ .gpword .L00422C14
/* 041864 10011864 F0404F44 */ .gpword .L00422C84
/* 041868 10011868 F0404F34 */ .gpword .L00422C74
/* 04186C 1001186C F0404F24 */ .gpword .L00422C64
/* 041870 10011870 F0404F14 */ .gpword .L00422C54
/* 041874 10011874 F0404F04 */ .gpword .L00422C44
/* 041878 10011878 F0404EF4 */ .gpword .L00422C34
/* 04187C 1001187C F0404EE4 */ .gpword .L00422C24

glabel _elf32_ehdr_init
/* 041880 10011880 00000000 */ .word 0x00000000
/* 041884 10011884 00000000 */ .word 0x00000000
/* 041888 10011888 00000000 */ .word 0x00000000
/* 04188C 1001188C 00000000 */ .word 0x00000000
/* 041890 10011890 00000000 */ .word 0x00000000
/* 041894 10011894 00000000 */ .word 0x00000000
/* 041898 10011898 00000000 */ .word 0x00000000
/* 04189C 1001189C 00000000 */ .word 0x00000000
/* 0418A0 100118A0 00000000 */ .word 0x00000000
/* 0418A4 100118A4 00000000 */ .word 0x00000000
/* 0418A8 100118A8 00000000 */ .word 0x00000000
/* 0418AC 100118AC 00000000 */ .word 0x00000000
/* 0418B0 100118B0 00000000 */ .word 0x00000000
/* 0418B4 100118B4 00000000 */ .word 0x00000000

glabel _elf64_ehdr_init
/* 0418B8 100118B8 00000000 */ .word 0x00000000
/* 0418BC 100118BC 00000000 */ .word 0x00000000
/* 0418C0 100118C0 00000000 */ .word 0x00000000
/* 0418C4 100118C4 00000000 */ .word 0x00000000
/* 0418C8 100118C8 00000000 */ .word 0x00000000
/* 0418CC 100118CC 00000000 */ .word 0x00000000
/* 0418D0 100118D0 00000000 */ .word 0x00000000
/* 0418D4 100118D4 00000000 */ .word 0x00000000
/* 0418D8 100118D8 00000000 */ .word 0x00000000
/* 0418DC 100118DC 00000000 */ .word 0x00000000
/* 0418E0 100118E0 00000000 */ .word 0x00000000
/* 0418E4 100118E4 00000000 */ .word 0x00000000
/* 0418E8 100118E8 00000000 */ .word 0x00000000
/* 0418EC 100118EC 00000000 */ .word 0x00000000
/* 0418F0 100118F0 00000000 */ .word 0x00000000
/* 0418F4 100118F4 00000000 */ .word 0x00000000
/* 0418F8 100118F8 00000000 */ .word 0x00000000
/* 0418FC 100118FC 00000000 */ .word 0x00000000

glabel STR_10011900
/* 041900 10011900 */ .asciz "`\n"
                      .balign 4
/* 041904 10011904 */ .asciz ""
                      .balign 4
/* 041908 10011908 */ .asciz ""
                      .balign 4
/* 04190C 1001190C */ .asciz ""
                      .balign 4

glabel STR_10011910
/* 041910 10011910 */ .asciz "ldptr = allocldptr()"
                      .balign 4

glabel STR_10011928
/* 041928 10011928 */ .asciz "ldfcn.c"
                      .balign 4

glabel STR_10011930
/* 041930 10011930 */ .asciz "LIOPTR(ldptr) = (FILE *)calloc(1,sizeof(FILE))"
                      .balign 4

glabel STR_10011960
/* 041960 10011960 */ .asciz "ldfcn.c"
                      .balign 4

glabel STR_10011968
/* 041968 10011968 */ .asciz "LPOBJ(ldptr) = (pOBJ)calloc(1,cbOBJ)"
                      .balign 4

glabel STR_10011990
/* 041990 10011990 */ .asciz "ldfcn.c"
                      .balign 4

glabel STR_10011998
/* 041998 10011998 */ .asciz "!<arch>\n"
                      .balign 4

glabel STR_100119A4
/* 0419A4 100119A4 */ .asciz "LTYPE(ldptr) == ARTYPE"
                      .balign 4

glabel STR_100119BC
/* 0419BC 100119BC */ .asciz "ldfcn.c"
                      .balign 4

glabel STR_100119C4
/* 0419C4 100119C4 */ .asciz "__________E"
                      .balign 4

glabel STR_100119D0
/* 0419D0 100119D0 */ .asciz "libmld: init_ldfile:"
                      .balign 4

glabel STR_100119E8
/* 0419E8 100119E8 */ .asciz "non-mips symbol table %x\n"
                      .balign 4

glabel STR_10011A04
/* 041A04 10011A04 */ .asciz "LSYMHEADER(ldptr) = (pCHDRR) calloc(cbCHDRR,1)"
                      .balign 4

glabel STR_10011A34
/* 041A34 10011A34 */ .asciz "ldfcn.c"
                      .balign 4

glabel STR_10011A3C
/* 041A3C 10011A3C */ .asciz "LSYMHEADER(ldptr)->pcfd = (pCFDR)calloc(cbCFDR,LPHDR(ldptr)->ifdMax)"
                      .balign 4

glabel STR_10011A84
/* 041A84 10011A84 */ .asciz "ldfcn.c"
                      .balign 4

glabel STR_10011A8C
/* 041A8C 10011A8C */ .asciz "%s in not yet implemented...aborting\n"
                      .balign 4

glabel STR_10011AB4
/* 041AB4 10011AB4 */ .asciz "0"
                      .balign 4

glabel STR_10011AB8
/* 041AB8 10011AB8 */ .asciz "ldfcn.c"
                      .balign 4

glabel STR_10011AC0
/* 041AC0 10011AC0 */ .asciz "%s nop-ed out\n"
                      .balign 4

glabel STR_10011AD0
/* 041AD0 10011AD0 */ .asciz "ldinitheaders"
                      .balign 4

glabel STR_10011AE0
/* 041AE0 10011AE0 */ .asciz "Can only ldmemseek on archives!\n"
                      .balign 4

glabel STR_10011B04
/* 041B04 10011B04 */ .asciz "Can only ldmemseek from BEGINNING\n"
                      .balign 4

glabel STR_10011B28
/* 041B28 10011B28 */ .asciz "Bad  offset in ldmemseek\n"
                      .balign 4

glabel STR_10011B44
/* 041B44 10011B44 */ .asciz "Bad  offset in ldfseek\n"
                      .balign 4

glabel STR_10011B5C
/* 041B5C 10011B5C */ .asciz "ldohseek is not supported\n"
                      .balign 4

glabel STR_10011B78
/* 041B78 10011B78 */ .asciz "0"
                      .balign 4

glabel STR_10011B7C
/* 041B7C 10011B7C */ .asciz "ldfcn.c"
                      .balign 4

glabel STR_10011B84
/* 041B84 10011B84 */ .asciz "libmld: ldnreloc:"
                      .balign 4

glabel STR_10011B98
/* 041B98 10011B98 */ .asciz "cannot ldnrseek section %s\n"
                      .balign 4

glabel STR_10011BB4
/* 041BB4 10011BB4 */ .asciz "libmld: ldnreloc:"
                      .balign 4

glabel STR_10011BC8
/* 041BC8 10011BC8 */ .asciz "cannot FREAD relocation for %s\n"
                      .balign 4

glabel STR_10011BE8
/* 041BE8 10011BE8 */ .asciz "LIOPTR(nldptr) = (FILE *)calloc(1,sizeof(FILE))"
                      .balign 4

glabel STR_10011C18
/* 041C18 10011C18 */ .asciz "ldfcn.c"
                      .balign 4

glabel STR_10011C20
/* 041C20 10011C20 */ .asciz "__________E"
                      .balign 4

glabel STR_10011C2C
/* 041C2C 10011C2C */ .asciz "LPOBJ(ldptr)->o_praw = realloc(LPOBJ(ldptr)->o_praw,LPOBJ(ldptr)->o_statb.st_size)"
                      .balign 4

glabel STR_10011C80
/* 041C80 10011C80 */ .asciz "ldfcn.c"
                      .balign 4
/* 041C88 10011C88 */ .asciz ""
                      .balign 4
/* 041C8C 10011C8C */ .asciz ""
                      .balign 4

glabel STR_10011C90
/* 041C90 10011C90 */ .asciz "MAIN__"
                      .balign 4

glabel STR_10011C98
/* 041C98 10011C98 */ .asciz "obj_write failed"
                      .balign 4
/* 041CAC 10011CAC */ .asciz "obj_init: obj %s\n"
                      .balign 4
/* 041CC0 10011CC0 */ .asciz "obj_init: gethostsex %d\n"
                      .balign 4
/* 041CDC 10011CDC */ .asciz "obj_init: obj->o_mode %d\n"
                      .balign 4
/* 041CF8 10011CF8 */ .asciz "obj_init: Elf object\n"
                      .balign 4
/* 041D10 10011D10 */ .asciz "obj_init: Coff object\n"
                      .balign 4

glabel STR_10011D28
/* 041D28 10011D28 */ .asciz "Error: cbLineOffset greater than file size.\n"
                      .balign 4

glabel STR_10011D58
/* 041D58 10011D58 */ .asciz "Error: cbAuxOffset greater than file size.\n"
                      .balign 4

glabel STR_10011D84
/* 041D84 10011D84 */ .asciz "Error: cbRfdOffset greater than file size.\n"
                      .balign 4

glabel STR_10011DB0
/* 041DB0 10011DB0 */ .asciz "Error: cbPdOffset greater than file size.\n"
                      .balign 4

glabel STR_10011DDC
/* 041DDC 10011DDC */ .asciz "Error: cbFdOffset greater than file size.\n"
                      .balign 4

glabel STR_10011E08
/* 041E08 10011E08 */ .asciz "Error: cbSymOffset greater than file size.\n"
                      .balign 4

glabel STR_10011E34
/* 041E34 10011E34 */ .asciz "Error: cbExtOffset greater than file size.\n"
                      .balign 4

glabel STR_10011E60
/* 041E60 10011E60 */ .asciz "Error: cbSsExtOffset greater than file size.\n"
                      .balign 4

glabel STR_10011E90
/* 041E90 10011E90 */ .asciz "Error: cbSsOffset greater than file size.\n"
                      .balign 4

glabel STR_10011EBC
/* 041EBC 10011EBC */ .asciz "Symbol table header magic is 0x%x\n"
                      .balign 4

glabel STR_10011EE0
/* 041EE0 10011EE0 */ .asciz "obj_get_dynamic_info failed\n"
                      .balign 4

glabel STR_10011F00
/* 041F00 10011F00 */ .asciz "adding obj to objlist"
                      .balign 4

glabel STR_10011F18
/* 041F18 10011F18 */ .asciz "adding obj to objlist"
                      .balign 4

glabel STR_10011F30
/* 041F30 10011F30 */ .asciz "adding obj to objlist"
                      .balign 4

glabel STR_10011F48
/* 041F48 10011F48 */ .asciz "obj_write failed"
                      .balign 4

glabel STR_10011F5C
/* 041F5C 10011F5C */ .asciz "obj_write failed"
                      .balign 4

glabel STR_10011F70
/* 041F70 10011F70 */ .asciz ".dynamic"
                      .balign 4

glabel STR_10011F7C
/* 041F7C 10011F7C */ .asciz "obj_dynamic:Bad obj type %d\n"
                      .balign 4

glabel STR_10011F9C
/* 041F9C 10011F9C */ .asciz "0"
                      .balign 4

glabel STR_10011FA0
/* 041FA0 10011FA0 */ .asciz "obj.c"
                      .balign 4
/* 041FA8 10011FA8 */ .asciz "get_dynamic_info: dynaddr 0x%x, obj 0x%x, offset 0x%x,0x%x\n"
                      .balign 4
/* 041FE4 10011FE4 */ .asciz "get_dynamic_info: obj 0x%x, name %s, dyn 0x%x,offset 0x%x,0x%x\n"
                      .balign 4
/* 042024 10012024 */ .asciz "get_dynamic_info: base addr 0x%x\n"
                      .balign 4
/* 042048 10012048 */ .asciz "get_dynamic_info: init addr 0x%x\n"
                      .balign 4
/* 04206C 1001206C */ .asciz "get_dynamic_info: pixie init addr 0x%x\n"
                      .balign 4
/* 042094 10012094 */ .asciz "get_dynamic_info: fini addr 0x%x\n"
                      .balign 4
/* 0420B8 100120B8 */ .asciz "get_dynamic_info: hash addr 0x%x\n"
                      .balign 4

glabel STR_100120DC
/* 0420DC 100120DC */ .asciz "obj_nbucket(o) > 0"
                      .balign 4

glabel STR_100120F0
/* 0420F0 100120F0 */ .asciz "obj.c"
                      .balign 4
/* 0420F8 100120F8 */ .asciz "get_dynamic_info: strtab addr 0x%x\n"
                      .balign 4
/* 04211C 1001211C */ .asciz "get_dynamic_info: dynsym addr 0x%x\n"
                      .balign 4
/* 042140 10012140 */ .asciz "get_dynamic_info: msym addr 0x%x\n"
                      .balign 4
/* 042164 10012164 */ .asciz "get_dynamic_info: got addr 0x%x\n"
                      .balign 4
/* 042188 10012188 */ .asciz "get_dynamic_info: reloc addr 0x%x\n"
                      .balign 4
/* 0421AC 100121AC */ .asciz "get_dynamic_info: liblist addr 0x%x\n"
                      .balign 4
/* 0421D4 100121D4 */ .asciz "get_dynamic_info: conflict addr 0x%x\n"
                      .balign 4
/* 0421FC 100121FC */ .asciz "get_dynamic_info: loc got # %d\n"
                      .balign 4
/* 04221C 1001221C */ .asciz "get_dynamic_info: index of first unreferenced external symbol # %d\n"
                      .balign 4
/* 042260 10012260 */ .asciz "get_dynamic_info: first symbol that has a got # %d\n"
                      .balign 4
/* 042294 10012294 */ .asciz "get_dynamic_info: tstamp 0x%x\n"
                      .balign 4
/* 0422B4 100122B4 */ .asciz "get_dynamic_info: ichksum 0x%x\n"
                      .balign 4
/* 0422D4 100122D4 */ .asciz "get_dynamic_info: iversion 0x%x\n"
                      .balign 4
/* 0422F8 100122F8 */ .asciz "get_dynamic_info: mips flags 0x%x\n"
                      .balign 4
/* 04231C 1001231C */ .asciz "get_dynamic_info: reloc # %d\n"
                      .balign 4
/* 04233C 1001233C */ .asciz "get_dynamic_info: reloc entry 0x%x\n"
                      .balign 4
/* 042360 10012360 */ .asciz "get_dynamic_info: sym tab # %d\n"
                      .balign 4
/* 042380 10012380 */ .asciz "get_dynamic_info: sym entry 0x%x\n"
                      .balign 4
/* 0423A4 100123A4 */ .asciz "get_dynamic_info: str # %d\n"
                      .balign 4
/* 0423C0 100123C0 */ .asciz "get_dynamic_info: liblist # %d\n"
                      .balign 4
/* 0423E0 100123E0 */ .asciz "get_dynamic_info: conflict # %d\n"
                      .balign 4
/* 042404 10012404 */ .asciz "get_dynamic_info: rld_map 0x%x\n"
                      .balign 4
/* 042424 10012424 */ .asciz "get_dynamic_info: DT_SYMBOLIC is present\n"
                      .balign 4
/* 042450 10012450 */ .asciz "get_dynamic_info: stored _rld_text_resolve addr 0x%x\n"
                      .balign 4
/* 042488 10012488 */ .asciz "get_dynamic_info: unknown DT : 0x%x\n"
                      .balign 4
/* 0424B0 100124B0 */ .asciz "get_dynamic_info: external got 0x%x\n"
                      .balign 4
/* 0424D8 100124D8 */ .asciz "get_dynamic_info: rpath %s\n"
                      .balign 4
/* 0424F4 100124F4 */ .asciz "get_dynamic_info: soname %s\n"
                      .balign 4
/* 042514 10012514 */ .asciz "get_dynamic_info: object's liblist is null\n"
                      .balign 4
/* 042540 10012540 */ .asciz "get_dynamic_info: library %s is added to liblist\n"
                      .balign 4

glabel STR_10012574
/* 042574 10012574 */ .asciz "0"
                      .balign 4

glabel STR_10012578
/* 042578 10012578 */ .asciz "obj.c"
                      .balign 4

glabel STR_10012580
/* 042580 10012580 */ .asciz "0"
                      .balign 4

glabel STR_10012584
/* 042584 10012584 */ .asciz "obj.c"
                      .balign 4

glabel STR_1001258C
/* 04258C 1001258C */ .asciz "obj_newstr: unable to malloc for new \n"
                      .balign 4
/* 0425B4 100125B4 */ .asciz "split: %s\n"
                      .balign 4

glabel STR_100125C0
/* 0425C0 100125C0 */ .asciz "match_string: unable to malloc for NAME list\n"
                      .balign 4

glabel STR_100125F0
/* 0425F0 100125F0 */ .asciz "match_string: unable to malloc for NAME list\n"
                      .balign 4

glabel STR_10012620
/* 042620 10012620 */ .asciz "."
                      .balign 4

glabel STR_10012624
/* 042624 10012624 */ .asciz "match_string: unable to malloc for NAME list\n"
                      .balign 4
/* 042654 10012654 */ .asciz "o->o_target_swapped = %c\n"
                      .balign 4
/* 042670 10012670 */ .asciz "o->o_type = %d\n"
                      .balign 4
/* 042680 10012680 */ .asciz "o->o_pfilehdr = 0x%x\n"
                      .balign 4
/* 042698 10012698 */ .asciz "o->o_paouthdr = 0x%x\n"
                      .balign 4
/* 0426B0 100126B0 */ .asciz "o->o_pscnhdr = 0x%x\n"
                      .balign 4
/* 0426C8 100126C8 */ .asciz "o->o_phdrr = 0x%x\n"
                      .balign 4
/* 0426DC 100126DC */ .asciz "o->o_praw = 0x%x\n"
                      .balign 4
/* 0426F0 100126F0 */ .asciz "o->o_name (0x%x) = %s\n"
                      .balign 4
/* 042708 10012708 */ .asciz "o->o_pelfdhr = 0x%x\n"
                      .balign 4
/* 042720 10012720 */ .asciz "o->o_pproghdr = 0x%x\n"
                      .balign 4
/* 042738 10012738 */ .asciz "o->o_psecthdr = 0x%x\n"
                      .balign 4
/* 042750 10012750 */ .asciz "o->o_path = %s\n"
                      .balign 4
/* 042760 10012760 */ .asciz "o->o_soname = %s\n"
                      .balign 4
/* 042774 10012774 */ .asciz "o->o_base_address = 0x%x\n"
                      .balign 4
/* 042790 10012790 */ .asciz "o->o_text_start = 0x%x\n"
                      .balign 4
/* 0427A8 100127A8 */ .asciz "o->o_text_size = %d\n"
                      .balign 4
/* 0427C0 100127C0 */ .asciz "o->o_data_start = 0x%x\n"
                      .balign 4
/* 0427D8 100127D8 */ .asciz "o->o_bss_start = 0x%x\n"
                      .balign 4
/* 0427F0 100127F0 */ .asciz "o->o_bss_size = %d\n"
                      .balign 4
/* 042804 10012804 */ .asciz "o->o_entry = 0x%x\n"
                      .balign 4
/* 042818 10012818 */ .asciz "o->o_base = 0x%x\n"
                      .balign 4
/* 04282C 1001282C */ .asciz "o->o_hash = 0x%x\n"
                      .balign 4
/* 042840 10012840 */ .asciz "o->o_str = 0x%x\n"
                      .balign 4
/* 042854 10012854 */ .asciz "o->o_dsym = 0x%x\n"
                      .balign 4
/* 042868 10012868 */ .asciz "o->o_msym = 0x%x\n"
                      .balign 4
/* 04287C 1001287C */ .asciz "o->o_got = 0x%x\n"
                      .balign 4
/* 042890 10012890 */ .asciz "o->o_extgot = 0x%x\n"
                      .balign 4
/* 0428A4 100128A4 */ .asciz "o->o_rel = 0x%x\n"
                      .balign 4
/* 0428B8 100128B8 */ .asciz "o->o_libl = 0x%x\n"
                      .balign 4
/* 0428CC 100128CC */ .asciz "o->o_conf = 0x%x\n"
                      .balign 4
/* 0428E0 100128E0 */ .asciz "o->o_dyflags = 0x%x\n"
                      .balign 4
/* 0428F8 100128F8 */ .asciz "o->o_locgotno = %d\n"
                      .balign 4
/* 04290C 1001290C */ .asciz "o->o_rpath = %s\n"
                      .balign 4
/* 042920 10012920 */ .asciz "o->o_rldver = %d\n"
                      .balign 4
/* 042934 10012934 */ .asciz "o->o_tstamp = %d\n"
                      .balign 4
/* 042948 10012948 */ .asciz "o->o_ichksum = 0x%x\n"
                      .balign 4
/* 042960 10012960 */ .asciz "o->o_iversion = %d\n"
                      .balign 4
/* 042974 10012974 */ .asciz "o->o_symcount = %d\n"
                      .balign 4
/* 042988 10012988 */ .asciz "o->o_syent = %d\n"
                      .balign 4
/* 04299C 1001299C */ .asciz "o->o_stsize = %d\n"
                      .balign 4
/* 0429B0 100129B0 */ .asciz "o->o_rlsize = %d\n"
                      .balign 4
/* 0429C4 100129C4 */ .asciz "o->o_rlent = %d\n"
                      .balign 4
/* 0429D8 100129D8 */ .asciz "o->o_llcount = %d\n"
                      .balign 4
/* 0429EC 100129EC */ .asciz "o->o_htsize = %d\n"
                      .balign 4
/* 042A00 10012A00 */ .asciz "o->o_cfcount = %d\n"
                      .balign 4
/* 042A14 10012A14 */ .asciz "o->o_rldflag = %d\n"
                      .balign 4
/* 042A28 10012A28 */ .asciz "o->o_flag = %d\n"
                      .balign 4
/* 042A38 10012A38 */ .asciz "o->o_mode = %d\n"
                      .balign 4
/* 042A48 10012A48 */ .asciz "o->o_init = 0x%x\n"
                      .balign 4
/* 042A5C 10012A5C */ .asciz "o->o_pixie_init = 0x%x\n"
                      .balign 4
/* 042A74 10012A74 */ .asciz "o->o_fini = 0x%x\n"
                      .balign 4
/* 042A88 10012A88 */ .asciz "o->o_unrefextno = %d\n"
                      .balign 4
/* 042AA0 10012AA0 */ .asciz "o->o_gotsym = %d\n"
                      .balign 4
/* 042AB4 10012AB4 */ .asciz "o->o_rld_map = 0x%x\n"
                      .balign 4

glabel STR_10012ACC
/* 042ACC 10012ACC */ .asciz "_procedure_table"
                      .balign 4

glabel STR_10012AE0
/* 042AE0 10012AE0 */ .asciz "_procedure_table_size"
                      .balign 4

glabel STR_10012AF8
/* 042AF8 10012AF8 */ .asciz "_procedure_table"
                      .balign 4

glabel STR_10012B0C
/* 042B0C 10012B0C */ .asciz "_procedure_table"
                      .balign 4

glabel STR_10012B20
/* 042B20 10012B20 */ .asciz "Cannot open %s\n"
                      .balign 4

glabel STR_10012B30
/* 042B30 10012B30 */ .asciz "Cannot mmap the runtime proc table of %s\n"
                      .balign 4

glabel STR_10012B5C
/* 042B5C 10012B5C */ .asciz "_procedure_string_table"
                      .balign 4

glabel STR_10012B74
/* 042B74 10012B74 */ .asciz "_procedure_string_table"
                      .balign 4

glabel STR_10012B8C
/* 042B8C 10012B8C */ .asciz "_procedure_table_size"
                      .balign 4

glabel jtbl_10012BA4
/* 042BA4 10012BA4 F0408EE4 */ .gpword .L00426C24
/* 042BA8 10012BA8 F0408E64 */ .gpword .L00426BA4
/* 042BAC 10012BAC F0408EDC */ .gpword .L00426C1C
/* 042BB0 10012BB0 F0408EE4 */ .gpword .L00426C24
/* 042BB4 10012BB4 F0408EE4 */ .gpword .L00426C24
/* 042BB8 10012BB8 F0408EE4 */ .gpword .L00426C24
/* 042BBC 10012BBC F0408EE4 */ .gpword .L00426C24

glabel jtbl_10012BC0
/* 042BC0 10012BC0 F040A908 */ .gpword .L00428648
/* 042BC4 10012BC4 F040A924 */ .gpword .L00428664
/* 042BC8 10012BC8 F040A940 */ .gpword .L00428680
/* 042BCC 10012BCC F040A95C */ .gpword .L0042869C
/* 042BD0 10012BD0 F040A978 */ .gpword .L004286B8
/* 042BD4 10012BD4 F040A6A4 */ .gpword .L004283E4
/* 042BD8 10012BD8 F040A818 */ .gpword .L00428558
/* 042BDC 10012BDC F040A88C */ .gpword .L004285CC
/* 042BE0 10012BE0 F040A86C */ .gpword .L004285AC
/* 042BE4 10012BE4 F040A8B4 */ .gpword .L004285F4
/* 042BE8 10012BE8 F040AA3C */ .gpword .L0042877C
/* 042BEC 10012BEC F040AC08 */ .gpword .L00428948
/* 042BF0 10012BF0 F040AC08 */ .gpword .L00428948
/* 042BF4 10012BF4 F040AC08 */ .gpword .L00428948
/* 042BF8 10012BF8 F040AC08 */ .gpword .L00428948
/* 042BFC 10012BFC F040AA20 */ .gpword .L00428760
/* 042C00 10012C00 F040A9CC */ .gpword .L0042870C
/* 042C04 10012C04 F040A8D0 */ .gpword .L00428610
/* 042C08 10012C08 F040A8EC */ .gpword .L0042862C
/* 042C0C 10012C0C F040AC08 */ .gpword .L00428948
/* 042C10 10012C10 F040AC08 */ .gpword .L00428948
/* 042C14 10012C14 F040AA64 */ .gpword .L004287A4
/* 042C18 10012C18 F040AAB8 */ .gpword .L004287F8
/* 042C1C 10012C1C F040AAD4 */ .gpword .L00428814
/* 042C20 10012C20 F040AAF0 */ .gpword .L00428830
/* 042C24 10012C24 F040AB0C */ .gpword .L0042884C
/* 042C28 10012C28 F040AB28 */ .gpword .L00428868
/* 042C2C 10012C2C F040AB44 */ .gpword .L00428884
/* 042C30 10012C30 F040AB60 */ .gpword .L004288A0
/* 042C34 10012C34 F040AB7C */ .gpword .L004288BC
/* 042C38 10012C38 F040AC08 */ .gpword .L00428948
/* 042C3C 10012C3C F040AB98 */ .gpword .L004288D8
/* 042C40 10012C40 F040ABB4 */ .gpword .L004288F4
/* 042C44 10012C44 F040ABD0 */ .gpword .L00428910
/* 042C48 10012C48 F040A704 */ .gpword .L00428444
/* 042C4C 10012C4C F040ABEC */ .gpword .L0042892C
/* 042C50 10012C50 F040AC08 */ .gpword .L00428948
/* 042C54 10012C54 F040AC08 */ .gpword .L00428948
/* 042C58 10012C58 F040AC08 */ .gpword .L00428948
/* 042C5C 10012C5C F040AC08 */ .gpword .L00428948
/* 042C60 10012C60 F040AC08 */ .gpword .L00428948
/* 042C64 10012C64 F040AC08 */ .gpword .L00428948
/* 042C68 10012C68 F040AC08 */ .gpword .L00428948
/* 042C6C 10012C6C F040AC08 */ .gpword .L00428948
/* 042C70 10012C70 F040AA9C */ .gpword .L004287DC

glabel jtbl_10012C74
/* 042C74 10012C74 F040A65C */ .gpword .L0042839C
/* 042C78 10012C78 F040AC08 */ .gpword .L00428948
/* 042C7C 10012C7C F040A834 */ .gpword .L00428574
/* 042C80 10012C80 F040A78C */ .gpword .L004284CC
/* 042C84 10012C84 F040A7E0 */ .gpword .L00428520
/* 042C88 10012C88 F040A7FC */ .gpword .L0042853C
/* 042C8C 10012C8C F040AC08 */ .gpword .L00428948
/* 042C90 10012C90 F040AC08 */ .gpword .L00428948
/* 042C94 10012C94 F040AC08 */ .gpword .L00428948
/* 042C98 10012C98 F040AA04 */ .gpword .L00428744
/* 042C9C 10012C9C F040A9E8 */ .gpword .L00428728
/* 042CA0 10012CA0 F040A6C0 */ .gpword .L00428400
/* 042CA4 10012CA4 F040A748 */ .gpword .L00428488
/* 042CA8 10012CA8 F040A8A8 */ .gpword .L004285E8
/* 042CAC 10012CAC F040AA58 */ .gpword .L00428798
/* 042CB0 10012CB0 F040AA80 */ .gpword .L004287C0
/* 042CB4 10012CB4 F040A850 */ .gpword .L00428590
/* 042CB8 10012CB8 F040A994 */ .gpword .L004286D4
/* 042CBC 10012CBC F040A9B0 */ .gpword .L004286F0

glabel STR_10012CC0
/* 042CC0 10012CC0 */ .asciz "N/A"
                      .balign 4
/* 042CC4 10012CC4 */ .asciz ""
                      .balign 4
/* 042CC8 10012CC8 */ .asciz ""
                      .balign 4
/* 042CCC 10012CCC */ .asciz ""
                      .balign 4

glabel STR_10012CD0
/* 042CD0 10012CD0 */ .asciz "Warning: "
                      .balign 4
/* 042CDC 10012CDC */ .asciz ""
                      .balign 4

glabel STR_10012CE0
/* 042CE0 10012CE0 */ .asciz "swap of auxs not supported when destsex != hostsex\n"
                      .balign 4

glabel jtbl_10012D14
/* 042D14 10012D14 F040F748 */ .gpword .L0042D488
/* 042D18 10012D18 F040F868 */ .gpword .L0042D5A8
/* 042D1C 10012D1C F040F8DC */ .gpword .L0042D61C
/* 042D20 10012D20 F040F8DC */ .gpword .L0042D61C
/* 042D24 10012D24 F040F8DC */ .gpword .L0042D61C
/* 042D28 10012D28 F040F8DC */ .gpword .L0042D61C
/* 042D2C 10012D2C F040F8DC */ .gpword .L0042D61C

glabel jtbl_10012D30
/* 042D30 10012D30 F0411A6C */ .gpword .L0042F7AC
/* 042D34 10012D34 F0411AC8 */ .gpword .L0042F808
/* 042D38 10012D38 F0411B0C */ .gpword .L0042F84C
/* 042D3C 10012D3C F0411B54 */ .gpword .L0042F894
/* 042D40 10012D40 F0411BA4 */ .gpword .L0042F8E4
/* 042D44 10012D44 00000000 */ .word 0x00000000
/* 042D48 10012D48 00000000 */ .word 0x00000000
/* 042D4C 10012D4C 00000000 */ .word 0x00000000

glabel STR_10012D50
/* 042D50 10012D50 */ .asciz ".text"
                      .balign 4

glabel STR_10012D58
/* 042D58 10012D58 */ .asciz ".data"
                      .balign 4

glabel STR_10012D60
/* 042D60 10012D60 */ .asciz ".bss"
                      .balign 4

glabel STR_10012D68
/* 042D68 10012D68 */ .asciz ".rodata"
                      .balign 4

glabel STR_10012D70
/* 042D70 10012D70 */ .asciz ".sdata"
                      .balign 4

glabel STR_10012D78
/* 042D78 10012D78 */ .asciz ".sbss"
                      .balign 4

glabel STR_10012D80
/* 042D80 10012D80 */ .asciz ".lit8"
                      .balign 4

glabel STR_10012D88
/* 042D88 10012D88 */ .asciz ".lit4"
                      .balign 4

glabel STR_10012D90
/* 042D90 10012D90 */ .asciz ".init"
                      .balign 4

glabel STR_10012D98
/* 042D98 10012D98 */ .asciz "find_section_byname:OM_EXECUTE not supported\n"
                      .balign 4
/* 042DC8 10012DC8 */ .asciz ""
                      .balign 4
/* 042DCC 10012DCC */ .asciz ""
                      .balign 4

glabel STR_10012DD0
/* 042DD0 10012DD0 */ .asciz "%s: Error: "
                      .balign 4

glabel STR_10012DDC
/* 042DDC 10012DDC */ .asciz "\n"
                      .balign 4

glabel STR_10012DE0
/* 042DE0 10012DE0 */ .asciz ".bss"
                      .balign 4

glabel STR_10012DE8
/* 042DE8 10012DE8 */ .asciz ".data"
                      .balign 4

glabel STR_10012DF0
/* 042DF0 10012DF0 */ .asciz ".init"
                      .balign 4

glabel STR_10012DF8
/* 042DF8 10012DF8 */ .asciz ".rel.data"
                      .balign 4

glabel STR_10012E04
/* 042E04 10012E04 */ .asciz ".rel.init"
                      .balign 4

glabel STR_10012E10
/* 042E10 10012E10 */ .asciz ".rel.rodata"
                      .balign 4

glabel STR_10012E1C
/* 042E1C 10012E1C */ .asciz ".rel.text"
                      .balign 4

glabel STR_10012E28
/* 042E28 10012E28 */ .asciz ".rodata"
                      .balign 4

glabel STR_10012E30
/* 042E30 10012E30 */ .asciz ".shstrtab"
                      .balign 4

glabel STR_10012E3C
/* 042E3C 10012E3C */ .asciz ".strtab"
                      .balign 4

glabel STR_10012E44
/* 042E44 10012E44 */ .asciz ".symtab"
                      .balign 4

glabel STR_10012E4C
/* 042E4C 10012E4C */ .asciz ".text"
                      .balign 4

glabel STR_10012E54
/* 042E54 10012E54 */ .asciz ".sdata"
                      .balign 4

glabel STR_10012E5C
/* 042E5C 10012E5C */ .asciz ".rel.sdata"
                      .balign 4

glabel STR_10012E68
/* 042E68 10012E68 */ .asciz ".sbss"
                      .balign 4

glabel STR_10012E70
/* 042E70 10012E70 */ .asciz ".lit4"
                      .balign 4

glabel STR_10012E78
/* 042E78 10012E78 */ .asciz ".lit8"
                      .balign 4

glabel STR_10012E80
/* 042E80 10012E80 */ .asciz ".reginfo"
                      .balign 4

glabel STR_10012E8C
/* 042E8C 10012E8C */ .asciz ".gptab.data"
                      .balign 4

glabel STR_10012E98
/* 042E98 10012E98 */ .asciz ".gptab.sdata"
                      .balign 4

glabel STR_10012EA8
/* 042EA8 10012EA8 */ .asciz ".gptab.bss"
                      .balign 4

glabel STR_10012EB4
/* 042EB4 10012EB4 */ .asciz ".gptab.sbss"
                      .balign 4

glabel STR_10012EC0
/* 042EC0 10012EC0 */ .asciz ".mdebug"
                      .balign 4

glabel STR_10012EC8
/* 042EC8 10012EC8 */ .asciz ".MIPS.dclass"
                      .balign 4

glabel STR_10012ED8
/* 042ED8 10012ED8 */ .asciz ".ddefn"
                      .balign 4

glabel STR_10012EE0
/* 042EE0 10012EE0 */ .asciz ".MIPS.dsym"
                      .balign 4

glabel STR_10012EEC
/* 042EEC 10012EEC */ .asciz ".dsym"
                      .balign 4

glabel STR_10012EF4
/* 042EF4 10012EF4 */ .asciz ".MIPS.dinst"
                      .balign 4

glabel STR_10012F00
/* 042F00 10012F00 */ .asciz ".dinst"
                      .balign 4

glabel STR_10012F08
/* 042F08 10012F08 */ .asciz ".MIPS.ddecl"
                      .balign 4

glabel STR_10012F14
/* 042F14 10012F14 */ .asciz ".ddecl"
                      .balign 4

glabel STR_10012F1C
/* 042F1C 10012F1C */ .asciz ".rel.delta"
                      .balign 4

glabel STR_10012F28
/* 042F28 10012F28 */ .asciz ".drel"
                      .balign 4

glabel STR_10012F30
/* 042F30 10012F30 */ .asciz ".rel.text"
                      .balign 4

glabel STR_10012F3C
/* 042F3C 10012F3C */ .asciz ".rel.data"
                      .balign 4

glabel STR_10012F48
/* 042F48 10012F48 */ .asciz ".rel.rodata"
                      .balign 4

glabel STR_10012F54
/* 042F54 10012F54 */ .asciz ".rel.sdata"
                      .balign 4

glabel STR_10012F60
/* 042F60 10012F60 */ .asciz ".rel.init"
                      .balign 4

glabel STR_10012F6C
/* 042F6C 10012F6C */ .asciz ".rel.fini"
                      .balign 4

glabel STR_10012F78
/* 042F78 10012F78 */ .asciz "0"
                      .balign 4

glabel STR_10012F7C
/* 042F7C 10012F7C */ .asciz "obj_elf.c"
                      .balign 4

glabel STR_10012F88
/* 042F88 10012F88 */ .asciz "0"
                      .balign 4

glabel STR_10012F8C
/* 042F8C 10012F8C */ .asciz "obj_elf.c"
                      .balign 4

glabel STR_10012F98
/* 042F98 10012F98 */ .asciz ".text"
                      .balign 4

glabel STR_10012FA0
/* 042FA0 10012FA0 */ .asciz ".rodata"
                      .balign 4

glabel STR_10012FA8
/* 042FA8 10012FA8 */ .asciz ".data"
                      .balign 4

glabel STR_10012FB0
/* 042FB0 10012FB0 */ .asciz ".sdata"
                      .balign 4

glabel STR_10012FB8
/* 042FB8 10012FB8 */ .asciz ".init"
                      .balign 4

glabel STR_10012FC0
/* 042FC0 10012FC0 */ .asciz ".lit8"
                      .balign 4

glabel STR_10012FC8
/* 042FC8 10012FC8 */ .asciz ".lit4"
                      .balign 4

glabel STR_10012FD0
/* 042FD0 10012FD0 */ .asciz ".reginfo"
                      .balign 4

glabel STR_10012FDC
/* 042FDC 10012FDC */ .asciz ".compact_rel"
                      .balign 4

glabel STR_10012FEC
/* 042FEC 10012FEC */ .asciz ".mdebug"
                      .balign 4

glabel STR_10012FF4
/* 042FF4 10012FF4 */ .asciz "0"
                      .balign 4

glabel STR_10012FF8
/* 042FF8 10012FF8 */ .asciz "obj_elf.c"
                      .balign 4

glabel STR_10013004
/* 043004 10013004 */ .asciz ".sbss"
                      .balign 4

glabel STR_1001300C
/* 04300C 1001300C */ .asciz ".bss"
                      .balign 4

glabel jtbl_10013014
/* 043014 10013014 F04146AC */ .gpword .L004323EC
/* 043018 10013018 F04146AC */ .gpword .L004323EC
/* 04301C 1001301C F04146AC */ .gpword .L004323EC
/* 043020 10013020 F04146AC */ .gpword .L004323EC
/* 043024 10013024 F04146AC */ .gpword .L004323EC

glabel jtbl_10013028
/* 043028 10013028 F0414634 */ .gpword .L00432374
/* 04302C 1001302C F04143C8 */ .gpword .L00432108
/* 043030 10013030 F0414634 */ .gpword .L00432374
/* 043034 10013034 F0414634 */ .gpword .L00432374
/* 043038 10013038 F0414634 */ .gpword .L00432374
/* 04303C 1001303C F0414634 */ .gpword .L00432374
/* 043040 10013040 F0414634 */ .gpword .L00432374
/* 043044 10013044 F0414634 */ .gpword .L00432374
/* 043048 10013048 F0414634 */ .gpword .L00432374
/* 04304C 1001304C F04146AC */ .gpword .L004323EC
/* 043050 10013050 F04146AC */ .gpword .L004323EC
/* 043054 10013054 F04146AC */ .gpword .L004323EC
/* 043058 10013058 00000000 */ .word 0x00000000
/* 04305C 1001305C 00000000 */ .word 0x00000000

glabel STR_10013060
/* 043060 10013060 */ .asciz "DT(0x%x) not handled\n"
                      .balign 4

glabel STR_10013078
/* 043078 10013078 */ .asciz ".init undone\n"
                      .balign 4

glabel STR_10013088
/* 043088 10013088 */ .asciz ".fini undone\n"
                      .balign 4

glabel STR_10013098
/* 043098 10013098 */ .asciz ".dynamic"
                      .balign 4

glabel STR_100130A4
/* 0430A4 100130A4 */ .asciz "obj_rewrite:write_section:write failed"
                      .balign 4

glabel STR_100130CC
/* 0430CC 100130CC */ .asciz "shnamestr"
                      .balign 4

glabel STR_100130D8
/* 0430D8 100130D8 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_100130E8
/* 0430E8 100130E8 */ .asciz ".dynamic"
                      .balign 4

glabel STR_100130F4
/* 0430F4 100130F4 */ .asciz "obj_rewrite:write_section:write failed"
                      .balign 4

glabel STR_1001311C
/* 04311C 1001311C */ .asciz "0"
                      .balign 4

glabel STR_10013120
/* 043120 10013120 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_10013130
/* 043130 10013130 */ .asciz "0"
                      .balign 4

glabel STR_10013134
/* 043134 10013134 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_10013144
/* 043144 10013144 */ .asciz "0"
                      .balign 4

glabel STR_10013148
/* 043148 10013148 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_10013158
/* 043158 10013158 */ .asciz "0"
                      .balign 4

glabel STR_1001315C
/* 04315C 1001315C */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_1001316C
/* 04316C 1001316C */ .asciz "newobj->o_pfilehdr"
                      .balign 4

glabel STR_10013180
/* 043180 10013180 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_10013190
/* 043190 10013190 */ .asciz "newobj->o_paouthdr"
                      .balign 4

glabel STR_100131A4
/* 0431A4 100131A4 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_100131B4
/* 0431B4 100131B4 */ .asciz "ptmp_newscnhdr"
                      .balign 4

glabel STR_100131C4
/* 0431C4 100131C4 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_100131D4
/* 0431D4 100131D4 */ .asciz "newobj->o_paouthdr->text_start"
                      .balign 4

glabel STR_100131F4
/* 0431F4 100131F4 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_10013204
/* 043204 10013204 */ .asciz "newobj->o_paouthdr->data_start"
                      .balign 4

glabel STR_10013224
/* 043224 10013224 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_10013234
/* 043234 10013234 */ .asciz "newobj->o_pelfhdr"
                      .balign 4

glabel STR_10013248
/* 043248 10013248 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_10013258
/* 043258 10013258 */ .asciz "newobj->o_pproghdr"
                      .balign 4

glabel STR_1001326C
/* 04326C 1001326C */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_1001327C
/* 04327C 1001327C */ .asciz "newobj->o_psecthdr"
                      .balign 4

glabel STR_10013290
/* 043290 10013290 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_100132A0
/* 0432A0 100132A0 */ .asciz "newobj->o_phdrr"
                      .balign 4

glabel STR_100132B0
/* 0432B0 100132B0 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_100132C0
/* 0432C0 100132C0 */ .asciz "newobj->o_pfdr"
                      .balign 4

glabel STR_100132D0
/* 0432D0 100132D0 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_100132E0
/* 0432E0 100132E0 */ .asciz "newobj->o_ppdr"
                      .balign 4

glabel STR_100132F0
/* 0432F0 100132F0 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_10013300
/* 043300 10013300 */ .asciz "newobj->o_psymr"
                      .balign 4

glabel STR_10013310
/* 043310 10013310 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_10013320
/* 043320 10013320 */ .asciz "newobj->o_pextr"
                      .balign 4

glabel STR_10013330
/* 043330 10013330 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_10013340
/* 043340 10013340 */ .asciz "newobj->o_pssext"
                      .balign 4

glabel STR_10013354
/* 043354 10013354 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_10013364
/* 043364 10013364 */ .asciz "newobj->o_pss"
                      .balign 4

glabel STR_10013374
/* 043374 10013374 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_10013384
/* 043384 10013384 */ .asciz "newobj->o_pauxu"
                      .balign 4

glabel STR_10013394
/* 043394 10013394 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_100133A4
/* 0433A4 100133A4 */ .asciz "newobj->o_pline"
                      .balign 4

glabel STR_100133B4
/* 0433B4 100133B4 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_100133C4
/* 0433C4 100133C4 */ .asciz "0"
                      .balign 4

glabel STR_100133C8
/* 0433C8 100133C8 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_100133D8
/* 0433D8 100133D8 */ .asciz "obj_get_dynamic_info failed"
                      .balign 4

glabel STR_100133F4
/* 0433F4 100133F4 */ .asciz "0"
                      .balign 4

glabel STR_100133F8
/* 0433F8 100133F8 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_10013408
/* 043408 10013408 */ .asciz "0"
                      .balign 4

glabel STR_1001340C
/* 04340C 1001340C */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_1001341C
/* 04341C 1001341C */ .asciz "!obj_shared(obj) || ((obj_text_size(obj) + incr) <= MAXTSZ)"
                      .balign 4

glabel STR_10013458
/* 043458 10013458 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_10013468
/* 043468 10013468 */ .asciz "ptmp_aohdr->text_start"
                      .balign 4

glabel STR_10013480
/* 043480 10013480 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_10013490
/* 043490 10013490 */ .asciz "ptmp_phdr[i].p_paddr"
                      .balign 4

glabel STR_100134A8
/* 0434A8 100134A8 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_100134B8
/* 0434B8 100134B8 */ .asciz "0"
                      .balign 4

glabel STR_100134BC
/* 0434BC 100134BC */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_100134CC
/* 0434CC 100134CC */ .asciz "!obj_shared(obj)||((obj_data_size(obj)+obj_bss_size(obj)+incr) <= MAXDSZ)"
                      .balign 4

glabel STR_10013518
/* 043518 10013518 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_10013528
/* 043528 10013528 */ .asciz ".bss"
                      .balign 4

glabel STR_10013530
/* 043530 10013530 */ .asciz ".sbss"
                      .balign 4

glabel STR_10013538
/* 043538 10013538 */ .asciz "0"
                      .balign 4

glabel STR_1001353C
/* 04353C 1001353C */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_1001354C
/* 04354C 1001354C */ .asciz "0"
                      .balign 4

glabel STR_10013550
/* 043550 10013550 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_10013560
/* 043560 10013560 */ .asciz "Bad contents for relocation at 0x%x\n"
                      .balign 4

glabel STR_10013588
/* 043588 10013588 */ .asciz "obj_map_dynamic: Don't know what to do with Elf relocation type %d\n"
                      .balign 4

glabel STR_100135CC
/* 0435CC 100135CC */ .asciz "0"
                      .balign 4

glabel STR_100135D0
/* 0435D0 100135D0 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_100135E0
/* 0435E0 100135E0 */ .asciz "obj->o_pssext"
                      .balign 4

glabel STR_100135F0
/* 0435F0 100135F0 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_10013600
/* 043600 10013600 */ .asciz "ptmp_pextr"
                      .balign 4

glabel STR_1001360C
/* 04360C 1001360C */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_1001361C
/* 04361C 1001361C */ .asciz "end"
                      .balign 4

glabel jtbl_10013620
/* 043620 10013620 F0414840 */ .gpword .L00432580
/* 043624 10013624 F04148F8 */ .gpword .L00432638
/* 043628 10013628 F0414914 */ .gpword .L00432654
/* 04362C 1001362C F0414A08 */ .gpword .L00432748
/* 043630 10013630 F0414930 */ .gpword .L00432670
/* 043634 10013634 F0414A08 */ .gpword .L00432748
/* 043638 10013638 F0414A08 */ .gpword .L00432748
/* 04363C 1001363C F0414A08 */ .gpword .L00432748
/* 043640 10013640 F0414A08 */ .gpword .L00432748
/* 043644 10013644 F04148DC */ .gpword .L0043261C
/* 043648 10013648 F04149BC */ .gpword .L004326FC
/* 04364C 1001364C F04149F4 */ .gpword .L00432734
/* 043650 10013650 F04149F4 */ .gpword .L00432734
/* 043654 10013654 F04149F4 */ .gpword .L00432734
/* 043658 10013658 F04149F4 */ .gpword .L00432734
/* 04365C 1001365C F04149A0 */ .gpword .L004326E0
/* 043660 10013660 F0414968 */ .gpword .L004326A8
/* 043664 10013664 F0414878 */ .gpword .L004325B8
/* 043668 10013668 F041485C */ .gpword .L0043259C
/* 04366C 1001366C F0414A08 */ .gpword .L00432748
/* 043670 10013670 F04149F4 */ .gpword .L00432734
/* 043674 10013674 F04149D8 */ .gpword .L00432718

glabel jtbl_10013678
/* 043678 10013678 F0414A08 */ .gpword .L00432748
/* 04367C 1001367C F04149F4 */ .gpword .L00432734
/* 043680 10013680 F0414A08 */ .gpword .L00432748
/* 043684 10013684 F0414A08 */ .gpword .L00432748
/* 043688 10013688 F0414A08 */ .gpword .L00432748
/* 04368C 1001368C F0414A08 */ .gpword .L00432748
/* 043690 10013690 F04149F4 */ .gpword .L00432734
/* 043694 10013694 F04149F4 */ .gpword .L00432734
/* 043698 10013698 F04149F4 */ .gpword .L00432734
/* 04369C 1001369C F0414984 */ .gpword .L004326C4
/* 0436A0 100136A0 F0414A08 */ .gpword .L00432748
/* 0436A4 100136A4 F0414894 */ .gpword .L004325D4
/* 0436A8 100136A8 F04148B8 */ .gpword .L004325F8
/* 0436AC 100136AC F0414A08 */ .gpword .L00432748
/* 0436B0 100136B0 F0414A08 */ .gpword .L00432748
/* 0436B4 100136B4 F04149F4 */ .gpword .L00432734
/* 0436B8 100136B8 F0414A08 */ .gpword .L00432748
/* 0436BC 100136BC F041494C */ .gpword .L0043268C
/* 0436C0 100136C0 F0414A08 */ .gpword .L00432748
/* 0436C4 100136C4 00000000 */ .word 0x00000000
/* 0436C8 100136C8 00000000 */ .word 0x00000000
/* 0436CC 100136CC 00000000 */ .word 0x00000000

glabel STR_100136D0
/* 0436D0 100136D0 */ .asciz "Error: "
                      .balign 4
/* 0436D8 100136D8 */ .asciz ""
                      .balign 4
/* 0436DC 100136DC */ .asciz ""
                      .balign 4

glabel STR_100136E0
/* 0436E0 100136E0 */ .asciz "_block%x"
                      .balign 4

glabel STR_100136EC
/* 0436EC 100136EC */ .asciz "dbx running out of memory space"
                      .balign 4

glabel STR_1001370C
/* 04370C 1001370C */ .asciz "dbx running out of type table space"
                      .balign 4

glabel STR_10013730
/* 043730 10013730 */ .asciz "dbx running out of type table space"
                      .balign 4

glabel STR_10013754
/* 043754 10013754 */ .asciz "dbx running out of type table space"
                      .balign 4

glabel STR_10013778
/* 043778 10013778 */ .asciz "dbx running out of type table space"
                      .balign 4

glabel STR_1001379C
/* 04379C 1001379C */ .asciz "dbx running out of type table space"
                      .balign 4

glabel STR_100137C0
/* 0437C0 100137C0 */ .asciz "dbx running out of type table space"
                      .balign 4

glabel STR_100137E4
/* 0437E4 100137E4 */ .asciz "dbx running out of type table space"
                      .balign 4

glabel STR_10013808
/* 043808 10013808 */ .asciz "dbx running out of type table space"
                      .balign 4

glabel STR_1001382C
/* 04382C 1001382C */ .asciz "dbx running out of type table space"
                      .balign 4

glabel STR_10013850
/* 043850 10013850 */ .asciz "dbx running out of type table space"
                      .balign 4

glabel STR_10013874
/* 043874 10013874 */ .asciz "dbx running out of type table space"
                      .balign 4

glabel STR_10013898
/* 043898 10013898 */ .asciz "dbx running out of type table space"
                      .balign 4

glabel jtbl_100138BC
/* 0438BC 100138BC F041831C */ .gpword .L0043605C
/* 0438C0 100138C0 F041831C */ .gpword .L0043605C
/* 0438C4 100138C4 F0418334 */ .gpword .L00436074
/* 0438C8 100138C8 F0418334 */ .gpword .L00436074
/* 0438CC 100138CC F041831C */ .gpword .L0043605C
/* 0438D0 100138D0 F041831C */ .gpword .L0043605C
/* 0438D4 100138D4 F0418334 */ .gpword .L00436074
/* 0438D8 100138D8 F0418334 */ .gpword .L00436074
/* 0438DC 100138DC F0418334 */ .gpword .L00436074
/* 0438E0 100138E0 F0418334 */ .gpword .L00436074
/* 0438E4 100138E4 F0418334 */ .gpword .L00436074
/* 0438E8 100138E8 F0418334 */ .gpword .L00436074
/* 0438EC 100138EC F0418334 */ .gpword .L00436074
/* 0438F0 100138F0 F041831C */ .gpword .L0043605C
/* 0438F4 100138F4 00000000 */ .word 0x00000000
/* 0438F8 100138F8 00000000 */ .word 0x00000000
/* 0438FC 100138FC 00000000 */ .word 0x00000000

glabel STR_10013900
/* 043900 10013900 */ .asciz "_block%x"
                      .balign 4

glabel STR_1001390C
/* 04390C 1001390C */ .asciz "obj_lookup: dbx running out of memory space"
                      .balign 4
/* 043938 10013938 */ .asciz ""
                      .balign 4
/* 04393C 1001393C */ .asciz ""
                      .balign 4

glabel jtbl_10013940
/* 043940 10013940 F041B3E0 */ .gpword .L00439120
/* 043944 10013944 F041B3E0 */ .gpword .L00439120
/* 043948 10013948 F041B3E0 */ .gpword .L00439120
/* 04394C 1001394C F041B3E0 */ .gpword .L00439120
/* 043950 10013950 F041B448 */ .gpword .L00439188
/* 043954 10013954 F041B428 */ .gpword .L00439168
/* 043958 10013958 F041B4F4 */ .gpword .L00439234
/* 04395C 1001395C F041B4F4 */ .gpword .L00439234
/* 043960 10013960 F041B408 */ .gpword .L00439148

glabel jtbl_10013964
/* 043964 10013964 F041B888 */ .gpword .L004395C8
/* 043968 10013968 F041B94C */ .gpword .L0043968C
/* 04396C 1001396C F041B94C */ .gpword .L0043968C
/* 043970 10013970 F041B654 */ .gpword .L00439394
/* 043974 10013974 F041B94C */ .gpword .L0043968C
/* 043978 10013978 F041B94C */ .gpword .L0043968C
/* 04397C 1001397C 00000000 */ .word 0x00000000

glabel STR_10013980
/* 043980 10013980 */ .asciz "Internal: "
                      .balign 4
/* 04398C 1001398C */ .asciz ""
                      .balign 4

glabel STR_10013990
/* 043990 10013990 */ .asciz "st_extstradd: you didn't initialize with cuinit or readst\n"
                      .balign 4

glabel STR_100139CC
/* 0439CC 100139CC */ .asciz "st_extstradd: argument is nil\n"
                      .balign 4

glabel STR_100139EC
/* 0439EC 100139EC */ .asciz "st_idn_dn: you didn't initialize with cuinit or readst\n"
                      .balign 4

glabel STR_10013A24
/* 043A24 10013A24 */ .asciz "st_idn_rndx: you didn't initialize with cuinit or readst\n"
                      .balign 4

glabel STR_10013A60
/* 043A60 10013A60 */ .asciz "st_rndx_idn: idn (%d) greater than max (%d)\n"
                      .balign 4

glabel STR_10013A90
/* 043A90 10013A90 */ .asciz "st_rndx_idn: old interface can't put rfd(%d) into rndx, use st_pdn_idn instead\n"
                      .balign 4

glabel STR_10013AE0
/* 043AE0 10013AE0 */ .asciz "st_setidn: idnsrc (%d) or idndest (%d) out of range\n"
                      .balign 4

glabel STR_10013B18
/* 043B18 10013B18 */ .asciz "st_pext_dn: rfd field (%d) isn't equal to ST_EXTIFD(%d)\n"
                      .balign 4

glabel STR_10013B54
/* 043B54 10013B54 */ .asciz "st_pext_dn: index out of range (%d)\n"
                      .balign 4

glabel STR_10013B7C
/* 043B7C 10013B7C */ .asciz "libmld"
                      .balign 4

glabel STR_10013B84
/* 043B84 10013B84 */ .asciz "libmld: Internal: cannot allocate to initialize component name for libmld errors\n"
                      .balign 4
/* 043BD8 10013BD8 */ .asciz ""
                      .balign 4
/* 043BDC 10013BDC */ .asciz ""
                      .balign 4

glabel STR_10013BE0
/* 043BE0 10013BE0 */ .asciz "st_fdadd: number of files (%d) exceeds max (%d)\n"
                      .balign 4

glabel STR_10013C14
/* 043C14 10013C14 */ .asciz "st_fdadd: allocation botch (%d fds and %d cfds) in %s\n"
                      .balign 4

glabel RO_10013C4C
/* 043C4C 10013C4C 00000000 */ .word 0x00000000

glabel STR_10013C50
/* 043C50 10013C50 */ .asciz "</4Debug/>"
                      .balign 4

glabel STR_10013C5C
/* 043C5C 10013C5C */ .asciz ":"
                      .balign 4

glabel STR_10013C60
/* 043C60 10013C60 */ .asciz ":"
                      .balign 4

glabel STR_10013C64
/* 043C64 10013C64 */ .asciz "st_fdadd: could not malloc path name!! %d\n"
                      .balign 4

glabel STR_10013C90
/* 043C90 10013C90 */ .asciz "PWD"
                      .balign 4

glabel RO_10013C94
/* 043C94 10013C94 00000000 */ .word 0x00000000

glabel STR_10013C98
/* 043C98 10013C98 */ .asciz "Cannot st_fdadd: cannot malloc %d bytes to hold file name\n"
                      .balign 4

glabel STR_10013CD4
/* 043CD4 10013CD4 */ .asciz "/"
                      .balign 4

glabel STR_10013CD8
/* 043CD8 10013CD8 */ .asciz "%lu"
                      .balign 4

glabel STR_10013CDC
/* 043CDC 10013CDC */ .asciz "-1"
                      .balign 4

glabel STR_10013CE0
/* 043CE0 10013CE0 */ .asciz "%lu"
                      .balign 4

glabel STR_10013CE4
/* 043CE4 10013CE4 */ .asciz "st_stradd: argument is nil\n"
                      .balign 4

glabel STR_10013D00
/* 043D00 10013D00 */ .asciz "st_paux_ifd_iaux: ifd (%d) or iaux (%d) out of range\n"
                      .balign 4

glabel STR_10013D38
/* 043D38 10013D38 */ .asciz "st_paux_ifd_iaux: ifd (%d) or iline (%d) out of range\n"
                      .balign 4

glabel STR_10013D70
/* 043D70 10013D70 */ .asciz "st_malloc: cannot allocate item of 1 byte with malloc(3)\n"
                      .balign 4

glabel STR_10013DAC
/* 043DAC 10013DAC */ .asciz "st_malloc: cannot allocate item of %ld bytes with malloc(3)\n"
                      .balign 4

glabel STR_10013DEC
/* 043DEC 10013DEC */ .asciz "st_malloc: cannot grow item to %ld bytes with realloc(3)\n"
                      .balign 4
/* 043E28 10013E28 */ .asciz ""
                      .balign 4
/* 043E2C 10013E2C */ .asciz ""
                      .balign 4

glabel STR_10013E30
/* 043E30 10013E30 */ .asciz "st_pcfd_ifd: ifd (%d) out of range\n"
                      .balign 4

glabel STR_10013E54
/* 043E54 10013E54 */ .asciz "st_psym_ifd_isym: ifd (%d) or isym (%d) out of range\n"
                      .balign 4

glabel STR_10013E8C
/* 043E8C 10013E8C */ .asciz "st_paux_iaux: iaux (%d) out of range\n"
                      .balign 4
/* 043EB4 10013EB4 */ .asciz ""
                      .balign 4
/* 043EB8 10013EB8 */ .asciz ""
                      .balign 4
/* 043EBC 10013EBC */ .asciz ""
                      .balign 4

glabel STR_10013EC0
/* 043EC0 10013EC0 */ .asciz "%s: Internal: "
                      .balign 4

glabel STR_10013ED0
/* 043ED0 10013ED0 */ .asciz "\n"
                      .balign 4

glabel STR_10013ED4
/* 043ED4 10013ED4 */ .asciz "%s: Error: "
                      .balign 4

glabel STR_10013EE0
/* 043EE0 10013EE0 */ .asciz "\n"
                      .balign 4

glabel STR_10013EE4
/* 043EE4 10013EE4 */ .asciz "_md_st_malloc: cannot allocate item of 1 byte with malloc(3)\n"
                      .balign 4

glabel STR_10013F24
/* 043F24 10013F24 */ .asciz "_md_st_malloc: cannot allocate item of %ld bytes with malloc(3)\n"
                      .balign 4

glabel STR_10013F68
/* 043F68 10013F68 */ .asciz "_md_st_malloc: cannot grow item to %ld bytes with realloc(3)\n"
                      .balign 4
/* 043FA8 10013FA8 */ .asciz ""
                      .balign 4
/* 043FAC 10013FAC */ .asciz ""
                      .balign 4

glabel STR_10013FB0
/* 043FB0 10013FB0 */ .asciz "st_cuinit: cannot allocate current chdr\n"
                      .balign 4

glabel STR_10013FDC
/* 043FDC 10013FDC */ .asciz "st_extadd: you didn't initialize with cuinit or readst\n"
                      .balign 4

glabel STR_10014014
/* 044014 10014014 */ .asciz "st_pext_iext: index out of range (%d)\n"
                      .balign 4

glabel STR_1001403C
/* 04403C 1001403C */ .asciz "st_idn_index_fext: you didn't initialize with cuinit or readst\n"
                      .balign 4

glabel STR_1001407C
/* 04407C 1001407C */ .asciz "st_pdn_idn: idn (%d) less than 0 or greater than max (%d)\n"
                      .balign 4
/* 0440B8 100140B8 */ .asciz ""
                      .balign 4
/* 0440BC 100140BC */ .asciz ""
                      .balign 4

glabel STR_100140C0
/* 0440C0 100140C0 */ .asciz "Fatal: "
                      .balign 4
/* 0440C8 100140C8 */ .asciz ""
                      .balign 4
/* 0440CC 100140CC */ .asciz ""
                      .balign 4

glabel STR_100140D0
/* 0440D0 100140D0 */ .asciz "%s: Internal: "
                      .balign 4

glabel STR_100140E0
/* 0440E0 100140E0 */ .asciz "\n"
                      .balign 4
/* 0440E4 100140E4 */ .asciz ""
                      .balign 4
/* 0440E8 100140E8 */ .asciz ""
                      .balign 4
/* 0440EC 100140EC */ .asciz ""
                      .balign 4

glabel STR_100140F0
/* 0440F0 100140F0 */ .asciz "st_filebegin: tried to end too many files (%s)\n"
                      .balign 4

glabel STR_10014120
/* 044120 10014120 */ .asciz "st_textblock: block pending set in illegal case\n"
                      .balign 4

glabel STR_10014154
/* 044154 10014154 */ .asciz "st_file_idn: istack underflow (%s)\n"
                      .balign 4
/* 044178 10014178 */ .asciz ""
                      .balign 4
/* 04417C 1001417C */ .asciz ""
                      .balign 4

glabel STR_10014180
/* 044180 10014180 */ .asciz "tried to replace rndx aux (%d) that fits into one word (%d, %d) with one that can't (%d,%d)\n"
                      .balign 4
