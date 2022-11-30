.section .rodata
glabel STR_1000F004
/* 03F004 1000F004 */ .asciz "makerom: sysconf(_SC_ARG_MAX): %s\n"
                      .balign 4

glabel STR_1000F028
/* 03F028 1000F028 */ .asciz "malloc failed\n"
                      .balign 4

glabel STR_1000F038
/* 03F038 1000F038 */ .asciz "/usr/lib/cpp -D_LANGUAGE_MAKEROM"
                      .balign 4

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

.section .late_rodata
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


.section .text
glabel main # 2
# _gp_disp: 0xFC14520
.set noreorder; .cpload $t9; # .set reorder
/* 00982C 0040982C 27BDFC98 */  addiu       $sp, $sp, -0x368
/* 009830 00409830 AFBF0024 */  sw          $ra, 0x24($sp)
/* 009834 00409834 AFBC0020 */  sw          $gp, 0x20($sp)
/* 009838 00409838 AFA40368 */  sw          $a0, 0x368($sp)
/* 00983C 0040983C AFA5036C */  sw          $a1, 0x36C($sp)
/* 009840 00409840 AFB0001C */  sw          $s0, 0x1C($sp)
/* 009844 00409844 AFA00348 */  sw          $zero, 0x348($sp)
/* 009848 00409848 AFA00344 */  sw          $zero, 0x344($sp)
/* 00984C 0040984C AFA00340 */  sw          $zero, 0x340($sp)
/* 009850 00409850 AFA0033C */  sw          $zero, 0x33C($sp)
/* 009854 00409854 240E0001 */  addiu       $t6, $zero, 0x1
/* 009858 00409858 AFAE0338 */  sw          $t6, 0x338($sp)
/* 00985C 0040985C AFA00130 */  sw          $zero, 0x130($sp)
/* 009860 00409860 8FAF036C */  lw          $t7, 0x36C($sp)
/* 009864 00409864 8F81802C */  lw          $at, %got(B_10016A20)($gp)
/* 009868 00409868 8DF80000 */  lw          $t8, 0x0($t7)
/* 00986C 0040986C AC386A20 */  sw          $t8, %lo(B_10016A20)($at)
/* 009870 00409870 8F99805C */  lw          $t9, %call16(sysconf)($gp)
/* 009874 00409874 24040001 */  addiu       $a0, $zero, 0x1
/* 009878 00409878 0320F809 */  jalr        $t9
/* 00987C 0040987C 00000000 */   nop
/* 009880 00409880 AFA20354 */  sw          $v0, 0x354($sp)
/* 009884 00409884 8FB90354 */  lw          $t9, 0x354($sp)
/* 009888 00409888 2401FFFF */  addiu       $at, $zero, -0x1
/* 00988C 0040988C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 009890 00409890 17210013 */  bne         $t9, $at, .L004098E0
/* 009894 00409894 00000000 */   nop
/* 009898 00409898 8F88804C */  lw          $t0, %got(errno)($gp)
/* 00989C 0040989C 8F8A8050 */  lw          $t2, %got(sys_errlist)($gp)
/* 0098A0 004098A0 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 0098A4 004098A4 8D080000 */  lw          $t0, 0x0($t0)
/* 0098A8 004098A8 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 0098AC 004098AC 8F85802C */  lw          $a1, %got(STR_1000F004)($gp)
/* 0098B0 004098B0 00084880 */  sll         $t1, $t0, 2
/* 0098B4 004098B4 012A5821 */  addu        $t3, $t1, $t2
/* 0098B8 004098B8 8D660000 */  lw          $a2, 0x0($t3)
/* 0098BC 004098BC 24840020 */  addiu       $a0, $a0, 0x20
/* 0098C0 004098C0 0320F809 */  jalr        $t9
/* 0098C4 004098C4 24A5F004 */   addiu      $a1, $a1, %lo(STR_1000F004)
/* 0098C8 004098C8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 0098CC 004098CC 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 0098D0 004098D0 24040001 */  addiu       $a0, $zero, 0x1
/* 0098D4 004098D4 0320F809 */  jalr        $t9
/* 0098D8 004098D8 00000000 */   nop
/* 0098DC 004098DC 8FBC0020 */  lw          $gp, 0x20($sp)
.L004098E0:
/* 0098E0 004098E0 8F998064 */  lw          $t9, %call16(malloc)($gp)
/* 0098E4 004098E4 8FA40354 */  lw          $a0, 0x354($sp)
/* 0098E8 004098E8 0320F809 */  jalr        $t9
/* 0098EC 004098EC 00000000 */   nop
/* 0098F0 004098F0 AFA20358 */  sw          $v0, 0x358($sp)
/* 0098F4 004098F4 8FAC0358 */  lw          $t4, 0x358($sp)
/* 0098F8 004098F8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 0098FC 004098FC 1580000A */  bnez        $t4, .L00409928
/* 009900 00409900 00000000 */   nop
/* 009904 00409904 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 009908 00409908 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00990C 0040990C 8F85802C */  lw          $a1, %got(STR_1000F028)($gp)
/* 009910 00409910 24840020 */  addiu       $a0, $a0, 0x20
/* 009914 00409914 0320F809 */  jalr        $t9
/* 009918 00409918 24A5F028 */   addiu      $a1, $a1, %lo(STR_1000F028)
/* 00991C 0040991C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 009920 00409920 10000372 */  b           .L0040A6EC
/* 009924 00409924 2402FFFF */   addiu      $v0, $zero, -0x1
.L00409928:
/* 009928 00409928 8F998068 */  lw          $t9, %call16(sprintf)($gp)
/* 00992C 0040992C 8F85802C */  lw          $a1, %got(STR_1000F038)($gp)
/* 009930 00409930 8FA40358 */  lw          $a0, 0x358($sp)
/* 009934 00409934 0320F809 */  jalr        $t9
/* 009938 00409938 24A5F038 */   addiu      $a1, $a1, %lo(STR_1000F038)
/* 00993C 0040993C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 009940 00409940 8F99806C */  lw          $t9, %call16(strlen)($gp)
/* 009944 00409944 8FA40358 */  lw          $a0, 0x358($sp)
/* 009948 00409948 0320F809 */  jalr        $t9
/* 00994C 0040994C 00000000 */   nop
/* 009950 00409950 8FAD0354 */  lw          $t5, 0x354($sp)
/* 009954 00409954 00408025 */  move        $s0, $v0
/* 009958 00409958 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00995C 0040995C 01B07023 */  subu        $t6, $t5, $s0
/* 009960 00409960 25CFFFFF */  addiu       $t7, $t6, -0x1
/* 009964 00409964 AFAF0354 */  sw          $t7, 0x354($sp)
/* 009968 00409968 8F998070 */  lw          $t9, %call16(getopt)($gp)
/* 00996C 0040996C 8F86802C */  lw          $a2, %got(RO_1000F05C)($gp)
/* 009970 00409970 8FA40368 */  lw          $a0, 0x368($sp)
/* 009974 00409974 8FA5036C */  lw          $a1, 0x36C($sp)
/* 009978 00409978 0320F809 */  jalr        $t9
/* 00997C 0040997C 24C6F05C */   addiu      $a2, $a2, %lo(RO_1000F05C)
/* 009980 00409980 AFA20364 */  sw          $v0, 0x364($sp)
/* 009984 00409984 8FB80364 */  lw          $t8, 0x364($sp)
/* 009988 00409988 2401FFFF */  addiu       $at, $zero, -0x1
/* 00998C 0040998C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 009990 00409990 130100CB */  beq         $t8, $at, .L00409CC0
/* 009994 00409994 00000000 */   nop
.L00409998:
/* 009998 00409998 8FB90364 */  lw          $t9, 0x364($sp)
/* 00999C 0040999C 2728FFC1 */  addiu       $t0, $t9, -0x3F
/* 0099A0 004099A0 2D010038 */  sltiu       $at, $t0, 0x38
/* 0099A4 004099A4 102000BA */  beqz        $at, .L00409C90
/* 0099A8 004099A8 00000000 */   nop
/* 0099AC 004099AC 8F81802C */  lw          $at, %got(jtbl_1000F9A8)($gp)
/* 0099B0 004099B0 00084080 */  sll         $t0, $t0, 2
/* 0099B4 004099B4 00280821 */  addu        $at, $at, $t0
/* 0099B8 004099B8 8C28F9A8 */  lw          $t0, %lo(jtbl_1000F9A8)($at)
/* 0099BC 004099BC 011C4021 */  addu        $t0, $t0, $gp
/* 0099C0 004099C0 01000008 */  jr          $t0
/* 0099C4 004099C4 00000000 */   nop
.L004099C8:
/* 0099C8 004099C8 8F99806C */  lw          $t9, %call16(strlen)($gp)
/* 0099CC 004099CC 8F848038 */  lw          $a0, %got(optarg)($gp)
/* 0099D0 004099D0 0320F809 */  jalr        $t9
/* 0099D4 004099D4 8C840000 */   lw         $a0, 0x0($a0)
/* 0099D8 004099D8 8FA90354 */  lw          $t1, 0x354($sp)
/* 0099DC 004099DC 00408025 */  move        $s0, $v0
/* 0099E0 004099E0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 0099E4 004099E4 01305023 */  subu        $t2, $t1, $s0
/* 0099E8 004099E8 254BFFFD */  addiu       $t3, $t2, -0x3
/* 0099EC 004099EC AFAB0354 */  sw          $t3, 0x354($sp)
/* 0099F0 004099F0 8FAC0354 */  lw          $t4, 0x354($sp)
/* 0099F4 004099F4 1D80000D */  bgtz        $t4, .L00409A2C
/* 0099F8 004099F8 00000000 */   nop
/* 0099FC 004099FC 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 009A00 00409A00 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 009A04 00409A04 8F85802C */  lw          $a1, %got(STR_1000F080)($gp)
/* 009A08 00409A08 24840020 */  addiu       $a0, $a0, 0x20
/* 009A0C 00409A0C 0320F809 */  jalr        $t9
/* 009A10 00409A10 24A5F080 */   addiu      $a1, $a1, %lo(STR_1000F080)
/* 009A14 00409A14 8FBC0020 */  lw          $gp, 0x20($sp)
/* 009A18 00409A18 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 009A1C 00409A1C 24040001 */  addiu       $a0, $zero, 0x1
/* 009A20 00409A20 0320F809 */  jalr        $t9
/* 009A24 00409A24 00000000 */   nop
/* 009A28 00409A28 8FBC0020 */  lw          $gp, 0x20($sp)
.L00409A2C:
/* 009A2C 00409A2C 8F8E8038 */  lw          $t6, %got(optarg)($gp)
/* 009A30 00409A30 8FAD0358 */  lw          $t5, 0x358($sp)
/* 009A34 00409A34 8F998068 */  lw          $t9, %call16(sprintf)($gp)
/* 009A38 00409A38 8F85802C */  lw          $a1, %got(STR_1000F0A0)($gp)
/* 009A3C 00409A3C 8DCE0000 */  lw          $t6, 0x0($t6)
/* 009A40 00409A40 8FA70364 */  lw          $a3, 0x364($sp)
/* 009A44 00409A44 01A02025 */  move        $a0, $t5
/* 009A48 00409A48 01A03025 */  move        $a2, $t5
/* 009A4C 00409A4C 24A5F0A0 */  addiu       $a1, $a1, %lo(STR_1000F0A0)
/* 009A50 00409A50 0320F809 */  jalr        $t9
/* 009A54 00409A54 AFAE0010 */   sw         $t6, 0x10($sp)
/* 009A58 00409A58 8FBC0020 */  lw          $gp, 0x20($sp)
/* 009A5C 00409A5C 1000008C */  b           .L00409C90
/* 009A60 00409A60 00000000 */   nop
.L00409A64:
/* 009A64 00409A64 8F818660 */  lw          $at, %got(cosim)($gp)
/* 009A68 00409A68 240F0001 */  addiu       $t7, $zero, 0x1
/* 009A6C 00409A6C AC2F0000 */  sw          $t7, 0x0($at)
/* 009A70 00409A70 10000087 */  b           .L00409C90
/* 009A74 00409A74 00000000 */   nop
.L00409A78:
/* 009A78 00409A78 8F81865C */  lw          $at, %got(debug)($gp)
/* 009A7C 00409A7C 24180001 */  addiu       $t8, $zero, 0x1
/* 009A80 00409A80 AC380000 */  sw          $t8, 0x0($at)
/* 009A84 00409A84 10000082 */  b           .L00409C90
/* 009A88 00409A88 00000000 */   nop
.L00409A8C:
/* 009A8C 00409A8C 8F81871C */  lw          $at, %got(gcord)($gp)
/* 009A90 00409A90 24190001 */  addiu       $t9, $zero, 0x1
/* 009A94 00409A94 AC390000 */  sw          $t9, 0x0($at)
/* 009A98 00409A98 1000007D */  b           .L00409C90
/* 009A9C 00409A9C 00000000 */   nop
.L00409AA0:
/* 009AA0 00409AA0 8F818680 */  lw          $at, %got(keep_going)($gp)
/* 009AA4 00409AA4 24080001 */  addiu       $t0, $zero, 0x1
/* 009AA8 00409AA8 AC280000 */  sw          $t0, 0x0($at)
/* 009AAC 00409AAC 10000078 */  b           .L00409C90
/* 009AB0 00409AB0 00000000 */   nop
.L00409AB4:
/* 009AB4 00409AB4 8F818664 */  lw          $at, %got(emulator)($gp)
/* 009AB8 00409AB8 24090001 */  addiu       $t1, $zero, 0x1
/* 009ABC 00409ABC AC290000 */  sw          $t1, 0x0($at)
/* 009AC0 00409AC0 10000073 */  b           .L00409C90
/* 009AC4 00409AC4 00000000 */   nop
.L00409AC8:
/* 009AC8 00409AC8 8F818718 */  lw          $at, %got(loadMap)($gp)
/* 009ACC 00409ACC 240A0001 */  addiu       $t2, $zero, 0x1
/* 009AD0 00409AD0 AC2A0000 */  sw          $t2, 0x0($at)
/* 009AD4 00409AD4 1000006E */  b           .L00409C90
/* 009AD8 00409AD8 00000000 */   nop
.L00409ADC:
/* 009ADC 00409ADC 8F818668 */  lw          $at, %got(nofont)($gp)
/* 009AE0 00409AE0 240B0001 */  addiu       $t3, $zero, 0x1
/* 009AE4 00409AE4 AC2B0000 */  sw          $t3, 0x0($at)
/* 009AE8 00409AE8 10000069 */  b           .L00409C90
/* 009AEC 00409AEC 00000000 */   nop
.L00409AF0:
/* 009AF0 00409AF0 8F81802C */  lw          $at, %got(D_10014204)($gp)
/* 009AF4 00409AF4 AC204204 */  sw          $zero, %lo(D_10014204)($at)
/* 009AF8 00409AF8 10000065 */  b           .L00409C90
/* 009AFC 00409AFC 00000000 */   nop
.L00409B00:
/* 009B00 00409B00 8F8C8038 */  lw          $t4, %got(optarg)($gp)
/* 009B04 00409B04 8F81802C */  lw          $at, %got(D_10014200)($gp)
/* 009B08 00409B08 8D8C0000 */  lw          $t4, 0x0($t4)
/* 009B0C 00409B0C AC2C4200 */  sw          $t4, %lo(D_10014200)($at)
/* 009B10 00409B10 1000005F */  b           .L00409C90
/* 009B14 00409B14 00000000 */   nop
.L00409B18:
/* 009B18 00409B18 8F8D8038 */  lw          $t5, %got(optarg)($gp)
/* 009B1C 00409B1C 8DAD0000 */  lw          $t5, 0x0($t5)
/* 009B20 00409B20 AFAD0348 */  sw          $t5, 0x348($sp)
/* 009B24 00409B24 1000005A */  b           .L00409C90
/* 009B28 00409B28 00000000 */   nop
.L00409B2C:
/* 009B2C 00409B2C 8F8E8038 */  lw          $t6, %got(optarg)($gp)
/* 009B30 00409B30 8DCE0000 */  lw          $t6, 0x0($t6)
/* 009B34 00409B34 AFAE0344 */  sw          $t6, 0x344($sp)
/* 009B38 00409B38 10000055 */  b           .L00409C90
/* 009B3C 00409B3C 00000000 */   nop
.L00409B40:
/* 009B40 00409B40 8F8F8038 */  lw          $t7, %got(optarg)($gp)
/* 009B44 00409B44 8DEF0000 */  lw          $t7, 0x0($t7)
/* 009B48 00409B48 AFAF0340 */  sw          $t7, 0x340($sp)
/* 009B4C 00409B4C 10000050 */  b           .L00409C90
/* 009B50 00409B50 00000000 */   nop
.L00409B54:
/* 009B54 00409B54 8F998074 */  lw          $t9, %call16(strtol)($gp)
/* 009B58 00409B58 8F848038 */  lw          $a0, %got(optarg)($gp)
/* 009B5C 00409B5C 00002825 */  move        $a1, $zero
/* 009B60 00409B60 00003025 */  move        $a2, $zero
/* 009B64 00409B64 0320F809 */  jalr        $t9
/* 009B68 00409B68 8C840000 */   lw         $a0, 0x0($a0)
/* 009B6C 00409B6C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 009B70 00409B70 8F81866C */  lw          $at, %got(finalromSize)($gp)
/* 009B74 00409B74 AC220000 */  sw          $v0, 0x0($at)
/* 009B78 00409B78 10000045 */  b           .L00409C90
/* 009B7C 00409B7C 00000000 */   nop
.L00409B80:
/* 009B80 00409B80 8F998074 */  lw          $t9, %call16(strtol)($gp)
/* 009B84 00409B84 8F848038 */  lw          $a0, %got(optarg)($gp)
/* 009B88 00409B88 00002825 */  move        $a1, $zero
/* 009B8C 00409B8C 00003025 */  move        $a2, $zero
/* 009B90 00409B90 0320F809 */  jalr        $t9
/* 009B94 00409B94 8C840000 */   lw         $a0, 0x0($a0)
/* 009B98 00409B98 8FBC0020 */  lw          $gp, 0x20($sp)
/* 009B9C 00409B9C 8F818670 */  lw          $at, %got(fillData)($gp)
/* 009BA0 00409BA0 A0220000 */  sb          $v0, 0x0($at)
/* 009BA4 00409BA4 1000003A */  b           .L00409C90
/* 009BA8 00409BA8 00000000 */   nop
.L00409BAC:
/* 009BAC 00409BAC 8F998074 */  lw          $t9, %call16(strtol)($gp)
/* 009BB0 00409BB0 8F848038 */  lw          $a0, %got(optarg)($gp)
/* 009BB4 00409BB4 00002825 */  move        $a1, $zero
/* 009BB8 00409BB8 00003025 */  move        $a2, $zero
/* 009BBC 00409BBC 0320F809 */  jalr        $t9
/* 009BC0 00409BC0 8C840000 */   lw         $a0, 0x0($a0)
/* 009BC4 00409BC4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 009BC8 00409BC8 8F818674 */  lw          $at, %got(offset)($gp)
/* 009BCC 00409BCC AC220000 */  sw          $v0, 0x0($at)
/* 009BD0 00409BD0 1000002F */  b           .L00409C90
/* 009BD4 00409BD4 00000000 */   nop
.L00409BD8:
/* 009BD8 00409BD8 8F818678 */  lw          $at, %got(changeclock)($gp)
/* 009BDC 00409BDC 24180001 */  addiu       $t8, $zero, 0x1
/* 009BE0 00409BE0 AC380000 */  sw          $t8, 0x0($at)
/* 009BE4 00409BE4 8F998074 */  lw          $t9, %call16(strtol)($gp)
/* 009BE8 00409BE8 8F848038 */  lw          $a0, %got(optarg)($gp)
/* 009BEC 00409BEC 00002825 */  move        $a1, $zero
/* 009BF0 00409BF0 00003025 */  move        $a2, $zero
/* 009BF4 00409BF4 0320F809 */  jalr        $t9
/* 009BF8 00409BF8 8C840000 */   lw         $a0, 0x0($a0)
/* 009BFC 00409BFC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 009C00 00409C00 8F81867C */  lw          $at, %got(clockrate)($gp)
/* 009C04 00409C04 AC220000 */  sw          $v0, 0x0($at)
/* 009C08 00409C08 8F99867C */  lw          $t9, %got(clockrate)($gp)
/* 009C0C 00409C0C 8F390000 */  lw          $t9, 0x0($t9)
/* 009C10 00409C10 17200005 */  bnez        $t9, .L00409C28
/* 009C14 00409C14 00000000 */   nop
/* 009C18 00409C18 8F81867C */  lw          $at, %got(clockrate)($gp)
/* 009C1C 00409C1C 3C0803A0 */  lui         $t0, (0x3A07F50 >> 16)
/* 009C20 00409C20 35087F50 */  ori         $t0, $t0, (0x3A07F50 & 0xFFFF)
/* 009C24 00409C24 AC280000 */  sw          $t0, 0x0($at)
.L00409C28:
/* 009C28 00409C28 10000019 */  b           .L00409C90
/* 009C2C 00409C2C 00000000 */   nop
.L00409C30:
/* 009C30 00409C30 8F998018 */  lw          $t9, %got(func_0040A700)($gp)
/* 009C34 00409C34 2739A700 */  addiu       $t9, $t9, %lo(func_0040A700)
/* 009C38 00409C38 0320F809 */  jalr        $t9
/* 009C3C 00409C3C 00000000 */   nop
/* 009C40 00409C40 8FBC0020 */  lw          $gp, 0x20($sp)
/* 009C44 00409C44 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 009C48 00409C48 24040001 */  addiu       $a0, $zero, 0x1
/* 009C4C 00409C4C 0320F809 */  jalr        $t9
/* 009C50 00409C50 00000000 */   nop
/* 009C54 00409C54 8FBC0020 */  lw          $gp, 0x20($sp)
.L00409C58:
/* 009C58 00409C58 24090001 */  addiu       $t1, $zero, 0x1
/* 009C5C 00409C5C AFA90130 */  sw          $t1, 0x130($sp)
/* 009C60 00409C60 1000000B */  b           .L00409C90
/* 009C64 00409C64 00000000 */   nop
.L00409C68:
/* 009C68 00409C68 8F998018 */  lw          $t9, %got(func_0040ABA0)($gp)
/* 009C6C 00409C6C 2739ABA0 */  addiu       $t9, $t9, %lo(func_0040ABA0)
/* 009C70 00409C70 0320F809 */  jalr        $t9
/* 009C74 00409C74 00000000 */   nop
/* 009C78 00409C78 8FBC0020 */  lw          $gp, 0x20($sp)
/* 009C7C 00409C7C 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 009C80 00409C80 24040001 */  addiu       $a0, $zero, 0x1
/* 009C84 00409C84 0320F809 */  jalr        $t9
/* 009C88 00409C88 00000000 */   nop
/* 009C8C 00409C8C 8FBC0020 */  lw          $gp, 0x20($sp)
.L00409C90:
/* 009C90 00409C90 8F998070 */  lw          $t9, %call16(getopt)($gp)
/* 009C94 00409C94 8F86802C */  lw          $a2, %got(RO_1000F05C)($gp)
/* 009C98 00409C98 8FA40368 */  lw          $a0, 0x368($sp)
/* 009C9C 00409C9C 8FA5036C */  lw          $a1, 0x36C($sp)
/* 009CA0 00409CA0 0320F809 */  jalr        $t9
/* 009CA4 00409CA4 24C6F05C */   addiu      $a2, $a2, %lo(RO_1000F05C)
/* 009CA8 00409CA8 AFA20364 */  sw          $v0, 0x364($sp)
/* 009CAC 00409CAC 8FAA0364 */  lw          $t2, 0x364($sp)
/* 009CB0 00409CB0 2401FFFF */  addiu       $at, $zero, -0x1
/* 009CB4 00409CB4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 009CB8 00409CB8 1541FF37 */  bne         $t2, $at, .L00409998
/* 009CBC 00409CBC 00000000 */   nop
.L00409CC0:
/* 009CC0 00409CC0 8F8C803C */  lw          $t4, %got(optind)($gp)
/* 009CC4 00409CC4 8FAB0368 */  lw          $t3, 0x368($sp)
/* 009CC8 00409CC8 24010001 */  addiu       $at, $zero, 0x1
/* 009CCC 00409CCC 8D8C0000 */  lw          $t4, 0x0($t4)
/* 009CD0 00409CD0 016C6823 */  subu        $t5, $t3, $t4
/* 009CD4 00409CD4 11A1000B */  beq         $t5, $at, .L00409D04
/* 009CD8 00409CD8 00000000 */   nop
/* 009CDC 00409CDC 8F998018 */  lw          $t9, %got(func_0040A700)($gp)
/* 009CE0 00409CE0 2739A700 */  addiu       $t9, $t9, %lo(func_0040A700)
/* 009CE4 00409CE4 0320F809 */  jalr        $t9
/* 009CE8 00409CE8 00000000 */   nop
/* 009CEC 00409CEC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 009CF0 00409CF0 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 009CF4 00409CF4 24040001 */  addiu       $a0, $zero, 0x1
/* 009CF8 00409CF8 0320F809 */  jalr        $t9
/* 009CFC 00409CFC 00000000 */   nop
/* 009D00 00409D00 8FBC0020 */  lw          $gp, 0x20($sp)
.L00409D04:
/* 009D04 00409D04 8F8E8660 */  lw          $t6, %got(cosim)($gp)
/* 009D08 00409D08 8F8F8664 */  lw          $t7, %got(emulator)($gp)
/* 009D0C 00409D0C 8DCE0000 */  lw          $t6, 0x0($t6)
/* 009D10 00409D10 8DEF0000 */  lw          $t7, 0x0($t7)
/* 009D14 00409D14 01CFC021 */  addu        $t8, $t6, $t7
/* 009D18 00409D18 2B010002 */  slti        $at, $t8, 0x2
/* 009D1C 00409D1C 1420000D */  bnez        $at, .L00409D54
/* 009D20 00409D20 00000000 */   nop
/* 009D24 00409D24 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 009D28 00409D28 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 009D2C 00409D2C 8F85802C */  lw          $a1, %got(STR_1000F0AC)($gp)
/* 009D30 00409D30 24840020 */  addiu       $a0, $a0, 0x20
/* 009D34 00409D34 0320F809 */  jalr        $t9
/* 009D38 00409D38 24A5F0AC */   addiu      $a1, $a1, %lo(STR_1000F0AC)
/* 009D3C 00409D3C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 009D40 00409D40 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 009D44 00409D44 24040001 */  addiu       $a0, $zero, 0x1
/* 009D48 00409D48 0320F809 */  jalr        $t9
/* 009D4C 00409D4C 00000000 */   nop
/* 009D50 00409D50 8FBC0020 */  lw          $gp, 0x20($sp)
.L00409D54:
/* 009D54 00409D54 8F998018 */  lw          $t9, %got(func_0040A810)($gp)
/* 009D58 00409D58 2739A810 */  addiu       $t9, $t9, %lo(func_0040A810)
/* 009D5C 00409D5C 0320F809 */  jalr        $t9
/* 009D60 00409D60 00000000 */   nop
/* 009D64 00409D64 8FBC0020 */  lw          $gp, 0x20($sp)
/* 009D68 00409D68 8FB90130 */  lw          $t9, 0x130($sp)
/* 009D6C 00409D6C 17200006 */  bnez        $t9, .L00409D88
/* 009D70 00409D70 00000000 */   nop
/* 009D74 00409D74 8F998018 */  lw          $t9, %got(func_0040ABA0)($gp)
/* 009D78 00409D78 2739ABA0 */  addiu       $t9, $t9, %lo(func_0040ABA0)
/* 009D7C 00409D7C 0320F809 */  jalr        $t9
/* 009D80 00409D80 00000000 */   nop
/* 009D84 00409D84 8FBC0020 */  lw          $gp, 0x20($sp)
.L00409D88:
/* 009D88 00409D88 8F998018 */  lw          $t9, %got(func_0040AC0C)($gp)
/* 009D8C 00409D8C 8FA40348 */  lw          $a0, 0x348($sp)
/* 009D90 00409D90 2739AC0C */  addiu       $t9, $t9, %lo(func_0040AC0C)
/* 009D94 00409D94 0320F809 */  jalr        $t9
/* 009D98 00409D98 00000000 */   nop
/* 009D9C 00409D9C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 009DA0 00409DA0 8F998018 */  lw          $t9, %got(func_0040AE34)($gp)
/* 009DA4 00409DA4 8FA40340 */  lw          $a0, 0x340($sp)
/* 009DA8 00409DA8 2739AE34 */  addiu       $t9, $t9, %lo(func_0040AE34)
/* 009DAC 00409DAC 0320F809 */  jalr        $t9
/* 009DB0 00409DB0 00000000 */   nop
/* 009DB4 00409DB4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 009DB8 00409DB8 8F998018 */  lw          $t9, %got(func_0040B05C)($gp)
/* 009DBC 00409DBC 8FA40344 */  lw          $a0, 0x344($sp)
/* 009DC0 00409DC0 2739B05C */  addiu       $t9, $t9, %lo(func_0040B05C)
/* 009DC4 00409DC4 0320F809 */  jalr        $t9
/* 009DC8 00409DC8 00000000 */   nop
/* 009DCC 00409DCC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 009DD0 00409DD0 8F998018 */  lw          $t9, %got(func_0040B4E8)($gp)
/* 009DD4 00409DD4 8FA4033C */  lw          $a0, 0x33C($sp)
/* 009DD8 00409DD8 2739B4E8 */  addiu       $t9, $t9, %lo(func_0040B4E8)
/* 009DDC 00409DDC 0320F809 */  jalr        $t9
/* 009DE0 00409DE0 00000000 */   nop
/* 009DE4 00409DE4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 009DE8 00409DE8 8F998078 */  lw          $t9, %call16(unlink)($gp)
/* 009DEC 00409DEC 8F84802C */  lw          $a0, %got(D_10014200)($gp)
/* 009DF0 00409DF0 0320F809 */  jalr        $t9
/* 009DF4 00409DF4 8C844200 */   lw         $a0, %lo(D_10014200)($a0)
/* 009DF8 00409DF8 2401FFFF */  addiu       $at, $zero, -0x1
/* 009DFC 00409DFC 1441001A */  bne         $v0, $at, .L00409E68
/* 009E00 00409E00 8FBC0020 */   lw         $gp, 0x20($sp)
/* 009E04 00409E04 8F88804C */  lw          $t0, %got(errno)($gp)
/* 009E08 00409E08 24010002 */  addiu       $at, $zero, 0x2
/* 009E0C 00409E0C 8D080000 */  lw          $t0, 0x0($t0)
/* 009E10 00409E10 11010015 */  beq         $t0, $at, .L00409E68
/* 009E14 00409E14 00000000 */   nop
/* 009E18 00409E18 8F89804C */  lw          $t1, %got(errno)($gp)
/* 009E1C 00409E1C 8F8B8050 */  lw          $t3, %got(sys_errlist)($gp)
/* 009E20 00409E20 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 009E24 00409E24 8D290000 */  lw          $t1, 0x0($t1)
/* 009E28 00409E28 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 009E2C 00409E2C 8F85802C */  lw          $a1, %got(STR_1000F0D8)($gp)
/* 009E30 00409E30 8F86802C */  lw          $a2, %got(D_10014200)($gp)
/* 009E34 00409E34 00095080 */  sll         $t2, $t1, 2
/* 009E38 00409E38 014B6021 */  addu        $t4, $t2, $t3
/* 009E3C 00409E3C 8D870000 */  lw          $a3, 0x0($t4)
/* 009E40 00409E40 24840020 */  addiu       $a0, $a0, 0x20
/* 009E44 00409E44 24A5F0D8 */  addiu       $a1, $a1, %lo(STR_1000F0D8)
/* 009E48 00409E48 0320F809 */  jalr        $t9
/* 009E4C 00409E4C 8CC64200 */   lw         $a2, %lo(D_10014200)($a2)
/* 009E50 00409E50 8FBC0020 */  lw          $gp, 0x20($sp)
/* 009E54 00409E54 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 009E58 00409E58 24040001 */  addiu       $a0, $zero, 0x1
/* 009E5C 00409E5C 0320F809 */  jalr        $t9
/* 009E60 00409E60 00000000 */   nop
/* 009E64 00409E64 8FBC0020 */  lw          $gp, 0x20($sp)
.L00409E68:
/* 009E68 00409E68 8F8E803C */  lw          $t6, %got(optind)($gp)
/* 009E6C 00409E6C 8FAD036C */  lw          $t5, 0x36C($sp)
/* 009E70 00409E70 8F818708 */  lw          $at, %got(fileName)($gp)
/* 009E74 00409E74 8DCE0000 */  lw          $t6, 0x0($t6)
/* 009E78 00409E78 000E7880 */  sll         $t7, $t6, 2
/* 009E7C 00409E7C 01AFC021 */  addu        $t8, $t5, $t7
/* 009E80 00409E80 8F190000 */  lw          $t9, 0x0($t8)
/* 009E84 00409E84 AC390000 */  sw          $t9, 0x0($at)
/* 009E88 00409E88 8F99807C */  lw          $t9, %call16(fopen)($gp)
/* 009E8C 00409E8C 8F848708 */  lw          $a0, %got(fileName)($gp)
/* 009E90 00409E90 8F85802C */  lw          $a1, %got(STR_1000F0EC)($gp)
/* 009E94 00409E94 8C840000 */  lw          $a0, 0x0($a0)
/* 009E98 00409E98 0320F809 */  jalr        $t9
/* 009E9C 00409E9C 24A5F0EC */   addiu      $a1, $a1, %lo(STR_1000F0EC)
/* 009EA0 00409EA0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 009EA4 00409EA4 8F818688 */  lw          $at, %got(yyin)($gp)
/* 009EA8 00409EA8 8F888688 */  lw          $t0, %got(yyin)($gp)
/* 009EAC 00409EAC AC220000 */  sw          $v0, 0x0($at)
/* 009EB0 00409EB0 8D080000 */  lw          $t0, 0x0($t0)
/* 009EB4 00409EB4 15000015 */  bnez        $t0, .L00409F0C
/* 009EB8 00409EB8 00000000 */   nop
/* 009EBC 00409EBC 8F89804C */  lw          $t1, %got(errno)($gp)
/* 009EC0 00409EC0 8F8B8050 */  lw          $t3, %got(sys_errlist)($gp)
/* 009EC4 00409EC4 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 009EC8 00409EC8 8D290000 */  lw          $t1, 0x0($t1)
/* 009ECC 00409ECC 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 009ED0 00409ED0 8F85802C */  lw          $a1, %got(STR_1000F0F0)($gp)
/* 009ED4 00409ED4 8F868708 */  lw          $a2, %got(fileName)($gp)
/* 009ED8 00409ED8 00095080 */  sll         $t2, $t1, 2
/* 009EDC 00409EDC 014B6021 */  addu        $t4, $t2, $t3
/* 009EE0 00409EE0 8D870000 */  lw          $a3, 0x0($t4)
/* 009EE4 00409EE4 24840020 */  addiu       $a0, $a0, 0x20
/* 009EE8 00409EE8 24A5F0F0 */  addiu       $a1, $a1, %lo(STR_1000F0F0)
/* 009EEC 00409EEC 0320F809 */  jalr        $t9
/* 009EF0 00409EF0 8CC60000 */   lw         $a2, 0x0($a2)
/* 009EF4 00409EF4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 009EF8 00409EF8 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 009EFC 00409EFC 24040001 */  addiu       $a0, $zero, 0x1
/* 009F00 00409F00 0320F809 */  jalr        $t9
/* 009F04 00409F04 00000000 */   nop
/* 009F08 00409F08 8FBC0020 */  lw          $gp, 0x20($sp)
.L00409F0C:
/* 009F0C 00409F0C 8F998080 */  lw          $t9, %call16(fclose)($gp)
/* 009F10 00409F10 8F848688 */  lw          $a0, %got(yyin)($gp)
/* 009F14 00409F14 0320F809 */  jalr        $t9
/* 009F18 00409F18 8C840000 */   lw         $a0, 0x0($a0)
/* 009F1C 00409F1C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 009F20 00409F20 8F99806C */  lw          $t9, %call16(strlen)($gp)
/* 009F24 00409F24 8F848708 */  lw          $a0, %got(fileName)($gp)
/* 009F28 00409F28 0320F809 */  jalr        $t9
/* 009F2C 00409F2C 8C840000 */   lw         $a0, 0x0($a0)
/* 009F30 00409F30 8FAE0354 */  lw          $t6, 0x354($sp)
/* 009F34 00409F34 00408025 */  move        $s0, $v0
/* 009F38 00409F38 8FBC0020 */  lw          $gp, 0x20($sp)
/* 009F3C 00409F3C 01D06823 */  subu        $t5, $t6, $s0
/* 009F40 00409F40 AFAD0354 */  sw          $t5, 0x354($sp)
/* 009F44 00409F44 8FAF0354 */  lw          $t7, 0x354($sp)
/* 009F48 00409F48 1DE0000D */  bgtz        $t7, .L00409F80
/* 009F4C 00409F4C 00000000 */   nop
/* 009F50 00409F50 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 009F54 00409F54 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 009F58 00409F58 8F85802C */  lw          $a1, %got(STR_1000F104)($gp)
/* 009F5C 00409F5C 24840020 */  addiu       $a0, $a0, 0x20
/* 009F60 00409F60 0320F809 */  jalr        $t9
/* 009F64 00409F64 24A5F104 */   addiu      $a1, $a1, %lo(STR_1000F104)
/* 009F68 00409F68 8FBC0020 */  lw          $gp, 0x20($sp)
/* 009F6C 00409F6C 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 009F70 00409F70 24040001 */  addiu       $a0, $zero, 0x1
/* 009F74 00409F74 0320F809 */  jalr        $t9
/* 009F78 00409F78 00000000 */   nop
/* 009F7C 00409F7C 8FBC0020 */  lw          $gp, 0x20($sp)
.L00409F80:
/* 009F80 00409F80 8FB80358 */  lw          $t8, 0x358($sp)
/* 009F84 00409F84 8F998068 */  lw          $t9, %call16(sprintf)($gp)
/* 009F88 00409F88 8F85802C */  lw          $a1, %got(STR_1000F128)($gp)
/* 009F8C 00409F8C 8F878708 */  lw          $a3, %got(fileName)($gp)
/* 009F90 00409F90 03002025 */  move        $a0, $t8
/* 009F94 00409F94 03003025 */  move        $a2, $t8
/* 009F98 00409F98 24A5F128 */  addiu       $a1, $a1, %lo(STR_1000F128)
/* 009F9C 00409F9C 0320F809 */  jalr        $t9
/* 009FA0 00409FA0 8CE70000 */   lw         $a3, 0x0($a3)
/* 009FA4 00409FA4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 009FA8 00409FA8 8F998084 */  lw          $t9, %call16(popen)($gp)
/* 009FAC 00409FAC 8F85802C */  lw          $a1, %got(STR_1000F130)($gp)
/* 009FB0 00409FB0 8FA40358 */  lw          $a0, 0x358($sp)
/* 009FB4 00409FB4 0320F809 */  jalr        $t9
/* 009FB8 00409FB8 24A5F130 */   addiu      $a1, $a1, %lo(STR_1000F130)
/* 009FBC 00409FBC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 009FC0 00409FC0 8F818688 */  lw          $at, %got(yyin)($gp)
/* 009FC4 00409FC4 8F998688 */  lw          $t9, %got(yyin)($gp)
/* 009FC8 00409FC8 AC220000 */  sw          $v0, 0x0($at)
/* 009FCC 00409FCC 8F390000 */  lw          $t9, 0x0($t9)
/* 009FD0 00409FD0 17200015 */  bnez        $t9, .L0040A028
/* 009FD4 00409FD4 00000000 */   nop
/* 009FD8 00409FD8 8F88804C */  lw          $t0, %got(errno)($gp)
/* 009FDC 00409FDC 8F8A8050 */  lw          $t2, %got(sys_errlist)($gp)
/* 009FE0 00409FE0 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 009FE4 00409FE4 8D080000 */  lw          $t0, 0x0($t0)
/* 009FE8 00409FE8 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 009FEC 00409FEC 8F85802C */  lw          $a1, %got(STR_1000F134)($gp)
/* 009FF0 00409FF0 8F868708 */  lw          $a2, %got(fileName)($gp)
/* 009FF4 00409FF4 00084880 */  sll         $t1, $t0, 2
/* 009FF8 00409FF8 012A5821 */  addu        $t3, $t1, $t2
/* 009FFC 00409FFC 8D670000 */  lw          $a3, 0x0($t3)
/* 00A000 0040A000 24840020 */  addiu       $a0, $a0, 0x20
/* 00A004 0040A004 24A5F134 */  addiu       $a1, $a1, %lo(STR_1000F134)
/* 00A008 0040A008 0320F809 */  jalr        $t9
/* 00A00C 0040A00C 8CC60000 */   lw         $a2, 0x0($a2)
/* 00A010 0040A010 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00A014 0040A014 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 00A018 0040A018 24040001 */  addiu       $a0, $zero, 0x1
/* 00A01C 0040A01C 0320F809 */  jalr        $t9
/* 00A020 0040A020 00000000 */   nop
/* 00A024 0040A024 8FBC0020 */  lw          $gp, 0x20($sp)
.L0040A028:
/* 00A028 0040A028 8F9981C4 */  lw          $t9, %call16(yyparse)($gp)
/* 00A02C 0040A02C 0320F809 */  jalr        $t9
/* 00A030 0040A030 00000000 */   nop
/* 00A034 0040A034 10400006 */  beqz        $v0, .L0040A050
/* 00A038 0040A038 8FBC0020 */   lw         $gp, 0x20($sp)
/* 00A03C 0040A03C 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 00A040 0040A040 24040001 */  addiu       $a0, $zero, 0x1
/* 00A044 0040A044 0320F809 */  jalr        $t9
/* 00A048 0040A048 00000000 */   nop
/* 00A04C 0040A04C 8FBC0020 */  lw          $gp, 0x20($sp)
.L0040A050:
/* 00A050 0040A050 8F998088 */  lw          $t9, %call16(pclose)($gp)
/* 00A054 0040A054 8F848688 */  lw          $a0, %got(yyin)($gp)
/* 00A058 0040A058 0320F809 */  jalr        $t9
/* 00A05C 0040A05C 8C840000 */   lw         $a0, 0x0($a0)
/* 00A060 0040A060 10400006 */  beqz        $v0, .L0040A07C
/* 00A064 0040A064 8FBC0020 */   lw         $gp, 0x20($sp)
/* 00A068 0040A068 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 00A06C 0040A06C 24040001 */  addiu       $a0, $zero, 0x1
/* 00A070 0040A070 0320F809 */  jalr        $t9
/* 00A074 0040A074 00000000 */   nop
/* 00A078 0040A078 8FBC0020 */  lw          $gp, 0x20($sp)
.L0040A07C:
/* 00A07C 0040A07C 8F998194 */  lw          $t9, %call16(scanSegments)($gp)
/* 00A080 0040A080 0320F809 */  jalr        $t9
/* 00A084 0040A084 00000000 */   nop
/* 00A088 0040A088 2401FFFF */  addiu       $at, $zero, -0x1
/* 00A08C 0040A08C 14410006 */  bne         $v0, $at, .L0040A0A8
/* 00A090 0040A090 8FBC0020 */   lw         $gp, 0x20($sp)
/* 00A094 0040A094 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 00A098 0040A098 24040001 */  addiu       $a0, $zero, 0x1
/* 00A09C 0040A09C 0320F809 */  jalr        $t9
/* 00A0A0 0040A0A0 00000000 */   nop
/* 00A0A4 0040A0A4 8FBC0020 */  lw          $gp, 0x20($sp)
.L0040A0A8:
/* 00A0A8 0040A0A8 8F998198 */  lw          $t9, %call16(checkSizes)($gp)
/* 00A0AC 0040A0AC 0320F809 */  jalr        $t9
/* 00A0B0 0040A0B0 00000000 */   nop
/* 00A0B4 0040A0B4 10400002 */  beqz        $v0, .L0040A0C0
/* 00A0B8 0040A0B8 8FBC0020 */   lw         $gp, 0x20($sp)
/* 00A0BC 0040A0BC AFA00338 */  sw          $zero, 0x338($sp)
.L0040A0C0:
/* 00A0C0 0040A0C0 8F8C802C */  lw          $t4, %got(D_10014204)($gp)
/* 00A0C4 0040A0C4 8D8C4204 */  lw          $t4, %lo(D_10014204)($t4)
/* 00A0C8 0040A0C8 11800007 */  beqz        $t4, .L0040A0E8
/* 00A0CC 0040A0CC 00000000 */   nop
/* 00A0D0 0040A0D0 8F99819C */  lw          $t9, %call16(checkOverlaps)($gp)
/* 00A0D4 0040A0D4 0320F809 */  jalr        $t9
/* 00A0D8 0040A0D8 00000000 */   nop
/* 00A0DC 0040A0DC 10400002 */  beqz        $v0, .L0040A0E8
/* 00A0E0 0040A0E0 8FBC0020 */   lw         $gp, 0x20($sp)
/* 00A0E4 0040A0E4 AFA00338 */  sw          $zero, 0x338($sp)
.L0040A0E8:
/* 00A0E8 0040A0E8 8F998018 */  lw          $t9, %got(func_0040BA54)($gp)
/* 00A0EC 0040A0EC 2739BA54 */  addiu       $t9, $t9, %lo(func_0040BA54)
/* 00A0F0 0040A0F0 0320F809 */  jalr        $t9
/* 00A0F4 0040A0F4 00000000 */   nop
/* 00A0F8 0040A0F8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00A0FC 0040A0FC 8F99808C */  lw          $t9, %call16(sigaction)($gp)
/* 00A100 0040A100 8F85802C */  lw          $a1, %got(D_100141E0)($gp)
/* 00A104 0040A104 24040001 */  addiu       $a0, $zero, 0x1
/* 00A108 0040A108 00003025 */  move        $a2, $zero
/* 00A10C 0040A10C 0320F809 */  jalr        $t9
/* 00A110 0040A110 24A541E0 */   addiu      $a1, $a1, %lo(D_100141E0)
/* 00A114 0040A114 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00A118 0040A118 8F99808C */  lw          $t9, %call16(sigaction)($gp)
/* 00A11C 0040A11C 8F85802C */  lw          $a1, %got(D_100141E0)($gp)
/* 00A120 0040A120 24040002 */  addiu       $a0, $zero, 0x2
/* 00A124 0040A124 00003025 */  move        $a2, $zero
/* 00A128 0040A128 0320F809 */  jalr        $t9
/* 00A12C 0040A12C 24A541E0 */   addiu      $a1, $a1, %lo(D_100141E0)
/* 00A130 0040A130 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00A134 0040A134 8F99808C */  lw          $t9, %call16(sigaction)($gp)
/* 00A138 0040A138 8F85802C */  lw          $a1, %got(D_100141E0)($gp)
/* 00A13C 0040A13C 2404000F */  addiu       $a0, $zero, 0xF
/* 00A140 0040A140 00003025 */  move        $a2, $zero
/* 00A144 0040A144 0320F809 */  jalr        $t9
/* 00A148 0040A148 24A541E0 */   addiu      $a1, $a1, %lo(D_100141E0)
/* 00A14C 0040A14C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00A150 0040A150 8F8E865C */  lw          $t6, %got(debug)($gp)
/* 00A154 0040A154 8DCE0000 */  lw          $t6, 0x0($t6)
/* 00A158 0040A158 11C00008 */  beqz        $t6, .L0040A17C
/* 00A15C 0040A15C 00000000 */   nop
/* 00A160 0040A160 8F998090 */  lw          $t9, %call16(printf)($gp)
/* 00A164 0040A164 8F84802C */  lw          $a0, %got(STR_1000F15C)($gp)
/* 00A168 0040A168 8F85802C */  lw          $a1, %got(B_10016520)($gp)
/* 00A16C 0040A16C 2484F15C */  addiu       $a0, $a0, %lo(STR_1000F15C)
/* 00A170 0040A170 0320F809 */  jalr        $t9
/* 00A174 0040A174 24A56520 */   addiu      $a1, $a1, %lo(B_10016520)
/* 00A178 0040A178 8FBC0020 */  lw          $gp, 0x20($sp)
.L0040A17C:
/* 00A17C 0040A17C 8F9981A0 */  lw          $t9, %call16(createSegmentSymbols)($gp)
/* 00A180 0040A180 8F84802C */  lw          $a0, %got(B_10016520)($gp)
/* 00A184 0040A184 8F85802C */  lw          $a1, %got(B_10016620)($gp)
/* 00A188 0040A188 24846520 */  addiu       $a0, $a0, %lo(B_10016520)
/* 00A18C 0040A18C 0320F809 */  jalr        $t9
/* 00A190 0040A190 24A56620 */   addiu      $a1, $a1, %lo(B_10016620)
/* 00A194 0040A194 2401FFFF */  addiu       $at, $zero, -0x1
/* 00A198 0040A198 1441000B */  bne         $v0, $at, .L0040A1C8
/* 00A19C 0040A19C 8FBC0020 */   lw         $gp, 0x20($sp)
/* 00A1A0 0040A1A0 8F998018 */  lw          $t9, %got(func_0040BC54)($gp)
/* 00A1A4 0040A1A4 2739BC54 */  addiu       $t9, $t9, %lo(func_0040BC54)
/* 00A1A8 0040A1A8 0320F809 */  jalr        $t9
/* 00A1AC 0040A1AC 00000000 */   nop
/* 00A1B0 0040A1B0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00A1B4 0040A1B4 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 00A1B8 0040A1B8 24040001 */  addiu       $a0, $zero, 0x1
/* 00A1BC 0040A1BC 0320F809 */  jalr        $t9
/* 00A1C0 0040A1C0 00000000 */   nop
/* 00A1C4 0040A1C4 8FBC0020 */  lw          $gp, 0x20($sp)
.L0040A1C8:
/* 00A1C8 0040A1C8 8F8D8658 */  lw          $t5, %got(waveList)($gp)
/* 00A1CC 0040A1CC 8DAD0000 */  lw          $t5, 0x0($t5)
/* 00A1D0 0040A1D0 11A0000B */  beqz        $t5, .L0040A200
/* 00A1D4 0040A1D4 AFAD035C */   sw         $t5, 0x35C($sp)
.L0040A1D8:
/* 00A1D8 0040A1D8 8F998018 */  lw          $t9, %got(func_0040B93C)($gp)
/* 00A1DC 0040A1DC 8FA4035C */  lw          $a0, 0x35C($sp)
/* 00A1E0 0040A1E0 2739B93C */  addiu       $t9, $t9, %lo(func_0040B93C)
/* 00A1E4 0040A1E4 0320F809 */  jalr        $t9
/* 00A1E8 0040A1E8 00000000 */   nop
/* 00A1EC 0040A1EC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00A1F0 0040A1F0 8FAF035C */  lw          $t7, 0x35C($sp)
/* 00A1F4 0040A1F4 8DF80000 */  lw          $t8, 0x0($t7)
/* 00A1F8 0040A1F8 1700FFF7 */  bnez        $t8, .L0040A1D8
/* 00A1FC 0040A1FC AFB8035C */   sw         $t8, 0x35C($sp)
.L0040A200:
/* 00A200 0040A200 8F998094 */  lw          $t9, %call16(getenv)($gp)
/* 00A204 0040A204 8F84802C */  lw          $a0, %got(STR_1000F188)($gp)
/* 00A208 0040A208 0320F809 */  jalr        $t9
/* 00A20C 0040A20C 2484F188 */   addiu      $a0, $a0, %lo(STR_1000F188)
/* 00A210 0040A210 AFA20134 */  sw          $v0, 0x134($sp)
/* 00A214 0040A214 8FB90134 */  lw          $t9, 0x134($sp)
/* 00A218 0040A218 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00A21C 0040A21C 17200004 */  bnez        $t9, .L0040A230
/* 00A220 0040A220 00000000 */   nop
/* 00A224 0040A224 8F88802C */  lw          $t0, %got(STR_1000F190)($gp)
/* 00A228 0040A228 2508F190 */  addiu       $t0, $t0, %lo(STR_1000F190)
/* 00A22C 0040A22C AFA80134 */  sw          $t0, 0x134($sp)
.L0040A230:
/* 00A230 0040A230 8F898740 */  lw          $t1, %got(irixVersion)($gp)
/* 00A234 0040A234 8D290000 */  lw          $t1, 0x0($t1)
/* 00A238 0040A238 1920002B */  blez        $t1, .L0040A2E8
/* 00A23C 0040A23C 00000000 */   nop
/* 00A240 0040A240 8F998018 */  lw          $t9, %got(func_0040A9AC)($gp)
/* 00A244 0040A244 8FA40134 */  lw          $a0, 0x134($sp)
/* 00A248 0040A248 2739A9AC */  addiu       $t9, $t9, %lo(func_0040A9AC)
/* 00A24C 0040A24C 0320F809 */  jalr        $t9
/* 00A250 0040A250 00000000 */   nop
/* 00A254 0040A254 28410002 */  slti        $at, $v0, 0x2
/* 00A258 0040A258 1020001B */  beqz        $at, .L0040A2C8
/* 00A25C 0040A25C 8FBC0020 */   lw         $gp, 0x20($sp)
/* 00A260 0040A260 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00A264 0040A264 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00A268 0040A268 8F85802C */  lw          $a1, %got(STR_1000F194)($gp)
/* 00A26C 0040A26C 24840020 */  addiu       $a0, $a0, 0x20
/* 00A270 0040A270 0320F809 */  jalr        $t9
/* 00A274 0040A274 24A5F194 */   addiu      $a1, $a1, %lo(STR_1000F194)
/* 00A278 0040A278 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00A27C 0040A27C 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00A280 0040A280 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00A284 0040A284 8F85802C */  lw          $a1, %got(STR_1000F1CC)($gp)
/* 00A288 0040A288 24840020 */  addiu       $a0, $a0, 0x20
/* 00A28C 0040A28C 0320F809 */  jalr        $t9
/* 00A290 0040A290 24A5F1CC */   addiu      $a1, $a1, %lo(STR_1000F1CC)
/* 00A294 0040A294 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00A298 0040A298 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00A29C 0040A29C 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00A2A0 0040A2A0 8F85802C */  lw          $a1, %got(STR_1000F204)($gp)
/* 00A2A4 0040A2A4 24840020 */  addiu       $a0, $a0, 0x20
/* 00A2A8 0040A2A8 0320F809 */  jalr        $t9
/* 00A2AC 0040A2AC 24A5F204 */   addiu      $a1, $a1, %lo(STR_1000F204)
/* 00A2B0 0040A2B0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00A2B4 0040A2B4 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 00A2B8 0040A2B8 24040001 */  addiu       $a0, $zero, 0x1
/* 00A2BC 0040A2BC 0320F809 */  jalr        $t9
/* 00A2C0 0040A2C0 00000000 */   nop
/* 00A2C4 0040A2C4 8FBC0020 */  lw          $gp, 0x20($sp)
.L0040A2C8:
/* 00A2C8 0040A2C8 8F998068 */  lw          $t9, %call16(sprintf)($gp)
/* 00A2CC 0040A2CC 8F85802C */  lw          $a1, %got(STR_1000F220)($gp)
/* 00A2D0 0040A2D0 27A40238 */  addiu       $a0, $sp, 0x238
/* 00A2D4 0040A2D4 8FA60134 */  lw          $a2, 0x134($sp)
/* 00A2D8 0040A2D8 0320F809 */  jalr        $t9
/* 00A2DC 0040A2DC 24A5F220 */   addiu      $a1, $a1, %lo(STR_1000F220)
/* 00A2E0 0040A2E0 10000008 */  b           .L0040A304
/* 00A2E4 0040A2E4 8FBC0020 */   lw         $gp, 0x20($sp)
.L0040A2E8:
/* 00A2E8 0040A2E8 8F998068 */  lw          $t9, %call16(sprintf)($gp)
/* 00A2EC 0040A2EC 8F85802C */  lw          $a1, %got(STR_1000F258)($gp)
/* 00A2F0 0040A2F0 27A40238 */  addiu       $a0, $sp, 0x238
/* 00A2F4 0040A2F4 8FA60134 */  lw          $a2, 0x134($sp)
/* 00A2F8 0040A2F8 0320F809 */  jalr        $t9
/* 00A2FC 0040A2FC 24A5F258 */   addiu      $a1, $a1, %lo(STR_1000F258)
/* 00A300 0040A300 8FBC0020 */  lw          $gp, 0x20($sp)
.L0040A304:
/* 00A304 0040A304 8F8A865C */  lw          $t2, %got(debug)($gp)
/* 00A308 0040A308 8D4A0000 */  lw          $t2, 0x0($t2)
/* 00A30C 0040A30C 11400006 */  beqz        $t2, .L0040A328
/* 00A310 0040A310 00000000 */   nop
/* 00A314 0040A314 8F998090 */  lw          $t9, %call16(printf)($gp)
/* 00A318 0040A318 8F84802C */  lw          $a0, %got(STR_1000F270)($gp)
/* 00A31C 0040A31C 0320F809 */  jalr        $t9
/* 00A320 0040A320 2484F270 */   addiu      $a0, $a0, %lo(STR_1000F270)
/* 00A324 0040A324 8FBC0020 */  lw          $gp, 0x20($sp)
.L0040A328:
/* 00A328 0040A328 8F8B8658 */  lw          $t3, %got(waveList)($gp)
/* 00A32C 0040A32C 8D6B0000 */  lw          $t3, 0x0($t3)
/* 00A330 0040A330 1160002D */  beqz        $t3, .L0040A3E8
/* 00A334 0040A334 AFAB035C */   sw         $t3, 0x35C($sp)
.L0040A338:
/* 00A338 0040A338 8F998068 */  lw          $t9, %call16(sprintf)($gp)
/* 00A33C 0040A33C 8F85802C */  lw          $a1, %got(STR_1000F28C)($gp)
/* 00A340 0040A340 8FAC035C */  lw          $t4, 0x35C($sp)
/* 00A344 0040A344 27A40138 */  addiu       $a0, $sp, 0x138
/* 00A348 0040A348 27A60238 */  addiu       $a2, $sp, 0x238
/* 00A34C 0040A34C 24A5F28C */  addiu       $a1, $a1, %lo(STR_1000F28C)
/* 00A350 0040A350 0320F809 */  jalr        $t9
/* 00A354 0040A354 8D870004 */   lw         $a3, 0x4($t4)
/* 00A358 0040A358 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00A35C 0040A35C 8F8E865C */  lw          $t6, %got(debug)($gp)
/* 00A360 0040A360 8DCE0000 */  lw          $t6, 0x0($t6)
/* 00A364 0040A364 11C00007 */  beqz        $t6, .L0040A384
/* 00A368 0040A368 00000000 */   nop
/* 00A36C 0040A36C 8F998090 */  lw          $t9, %call16(printf)($gp)
/* 00A370 0040A370 8F84802C */  lw          $a0, %got(STR_1000F294)($gp)
/* 00A374 0040A374 27A50138 */  addiu       $a1, $sp, 0x138
/* 00A378 0040A378 0320F809 */  jalr        $t9
/* 00A37C 0040A37C 2484F294 */   addiu      $a0, $a0, %lo(STR_1000F294)
/* 00A380 0040A380 8FBC0020 */  lw          $gp, 0x20($sp)
.L0040A384:
/* 00A384 0040A384 8F998188 */  lw          $t9, %call16(execCommand)($gp)
/* 00A388 0040A388 27A40138 */  addiu       $a0, $sp, 0x138
/* 00A38C 0040A38C 0320F809 */  jalr        $t9
/* 00A390 0040A390 00000000 */   nop
/* 00A394 0040A394 2401FFFF */  addiu       $at, $zero, -0x1
/* 00A398 0040A398 1441000F */  bne         $v0, $at, .L0040A3D8
/* 00A39C 0040A39C 8FBC0020 */   lw         $gp, 0x20($sp)
/* 00A3A0 0040A3A0 8F8D8680 */  lw          $t5, %got(keep_going)($gp)
/* 00A3A4 0040A3A4 8DAD0000 */  lw          $t5, 0x0($t5)
/* 00A3A8 0040A3A8 15A0000B */  bnez        $t5, .L0040A3D8
/* 00A3AC 0040A3AC 00000000 */   nop
/* 00A3B0 0040A3B0 8F998018 */  lw          $t9, %got(func_0040BC54)($gp)
/* 00A3B4 0040A3B4 2739BC54 */  addiu       $t9, $t9, %lo(func_0040BC54)
/* 00A3B8 0040A3B8 0320F809 */  jalr        $t9
/* 00A3BC 0040A3BC 00000000 */   nop
/* 00A3C0 0040A3C0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00A3C4 0040A3C4 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 00A3C8 0040A3C8 24040001 */  addiu       $a0, $zero, 0x1
/* 00A3CC 0040A3CC 0320F809 */  jalr        $t9
/* 00A3D0 0040A3D0 00000000 */   nop
/* 00A3D4 0040A3D4 8FBC0020 */  lw          $gp, 0x20($sp)
.L0040A3D8:
/* 00A3D8 0040A3D8 8FAF035C */  lw          $t7, 0x35C($sp)
/* 00A3DC 0040A3DC 8DF80000 */  lw          $t8, 0x0($t7)
/* 00A3E0 0040A3E0 1700FFD5 */  bnez        $t8, .L0040A338
/* 00A3E4 0040A3E4 AFB8035C */   sw         $t8, 0x35C($sp)
.L0040A3E8:
/* 00A3E8 0040A3E8 8F99871C */  lw          $t9, %got(gcord)($gp)
/* 00A3EC 0040A3EC 8F390000 */  lw          $t9, 0x0($t9)
/* 00A3F0 0040A3F0 1320004B */  beqz        $t9, .L0040A520
/* 00A3F4 0040A3F4 00000000 */   nop
/* 00A3F8 0040A3F8 8F998068 */  lw          $t9, %call16(sprintf)($gp)
/* 00A3FC 0040A3FC 8F85802C */  lw          $a1, %got(STR_1000F29C)($gp)
/* 00A400 0040A400 27A40238 */  addiu       $a0, $sp, 0x238
/* 00A404 0040A404 8FA60134 */  lw          $a2, 0x134($sp)
/* 00A408 0040A408 0320F809 */  jalr        $t9
/* 00A40C 0040A40C 24A5F29C */   addiu      $a1, $a1, %lo(STR_1000F29C)
/* 00A410 0040A410 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00A414 0040A414 8F888658 */  lw          $t0, %got(waveList)($gp)
/* 00A418 0040A418 8D080000 */  lw          $t0, 0x0($t0)
/* 00A41C 0040A41C 11000040 */  beqz        $t0, .L0040A520
/* 00A420 0040A420 AFA8035C */   sw         $t0, 0x35C($sp)
.L0040A424:
/* 00A424 0040A424 8F998068 */  lw          $t9, %call16(sprintf)($gp)
/* 00A428 0040A428 8F85802C */  lw          $a1, %got(STR_1000F2B4)($gp)
/* 00A42C 0040A42C 8FA9035C */  lw          $t1, 0x35C($sp)
/* 00A430 0040A430 27A40138 */  addiu       $a0, $sp, 0x138
/* 00A434 0040A434 27A60238 */  addiu       $a2, $sp, 0x238
/* 00A438 0040A438 24A5F2B4 */  addiu       $a1, $a1, %lo(STR_1000F2B4)
/* 00A43C 0040A43C 0320F809 */  jalr        $t9
/* 00A440 0040A440 8D270004 */   lw         $a3, 0x4($t1)
/* 00A444 0040A444 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00A448 0040A448 8F8A865C */  lw          $t2, %got(debug)($gp)
/* 00A44C 0040A44C 8D4A0000 */  lw          $t2, 0x0($t2)
/* 00A450 0040A450 11400007 */  beqz        $t2, .L0040A470
/* 00A454 0040A454 00000000 */   nop
/* 00A458 0040A458 8F998090 */  lw          $t9, %call16(printf)($gp)
/* 00A45C 0040A45C 8F84802C */  lw          $a0, %got(STR_1000F2BC)($gp)
/* 00A460 0040A460 27A50138 */  addiu       $a1, $sp, 0x138
/* 00A464 0040A464 0320F809 */  jalr        $t9
/* 00A468 0040A468 2484F2BC */   addiu      $a0, $a0, %lo(STR_1000F2BC)
/* 00A46C 0040A46C 8FBC0020 */  lw          $gp, 0x20($sp)
.L0040A470:
/* 00A470 0040A470 8F998188 */  lw          $t9, %call16(execCommand)($gp)
/* 00A474 0040A474 27A40138 */  addiu       $a0, $sp, 0x138
/* 00A478 0040A478 0320F809 */  jalr        $t9
/* 00A47C 0040A47C 00000000 */   nop
/* 00A480 0040A480 2401FFFF */  addiu       $at, $zero, -0x1
/* 00A484 0040A484 1441000F */  bne         $v0, $at, .L0040A4C4
/* 00A488 0040A488 8FBC0020 */   lw         $gp, 0x20($sp)
/* 00A48C 0040A48C 8F8B8680 */  lw          $t3, %got(keep_going)($gp)
/* 00A490 0040A490 8D6B0000 */  lw          $t3, 0x0($t3)
/* 00A494 0040A494 1560000B */  bnez        $t3, .L0040A4C4
/* 00A498 0040A498 00000000 */   nop
/* 00A49C 0040A49C 8F998018 */  lw          $t9, %got(func_0040BC54)($gp)
/* 00A4A0 0040A4A0 2739BC54 */  addiu       $t9, $t9, %lo(func_0040BC54)
/* 00A4A4 0040A4A4 0320F809 */  jalr        $t9
/* 00A4A8 0040A4A8 00000000 */   nop
/* 00A4AC 0040A4AC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00A4B0 0040A4B0 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 00A4B4 0040A4B4 24040001 */  addiu       $a0, $zero, 0x1
/* 00A4B8 0040A4B8 0320F809 */  jalr        $t9
/* 00A4BC 0040A4BC 00000000 */   nop
/* 00A4C0 0040A4C0 8FBC0020 */  lw          $gp, 0x20($sp)
.L0040A4C4:
/* 00A4C4 0040A4C4 8F99809C */  lw          $t9, %call16(strcpy)($gp)
/* 00A4C8 0040A4C8 8FAC035C */  lw          $t4, 0x35C($sp)
/* 00A4CC 0040A4CC 27A40030 */  addiu       $a0, $sp, 0x30
/* 00A4D0 0040A4D0 0320F809 */  jalr        $t9
/* 00A4D4 0040A4D4 8D850004 */   lw         $a1, 0x4($t4)
/* 00A4D8 0040A4D8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00A4DC 0040A4DC 00408025 */  move        $s0, $v0
/* 00A4E0 0040A4E0 02002025 */  move        $a0, $s0
/* 00A4E4 0040A4E4 8F998098 */  lw          $t9, %call16(strcat)($gp)
/* 00A4E8 0040A4E8 8F85802C */  lw          $a1, %got(STR_1000F2CC)($gp)
/* 00A4EC 0040A4EC 0320F809 */  jalr        $t9
/* 00A4F0 0040A4F0 24A5F2CC */   addiu      $a1, $a1, %lo(STR_1000F2CC)
/* 00A4F4 0040A4F4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00A4F8 0040A4F8 8F99809C */  lw          $t9, %call16(strcpy)($gp)
/* 00A4FC 0040A4FC 8FAE035C */  lw          $t6, 0x35C($sp)
/* 00A500 0040A500 27A50030 */  addiu       $a1, $sp, 0x30
/* 00A504 0040A504 0320F809 */  jalr        $t9
/* 00A508 0040A508 8DC40004 */   lw         $a0, 0x4($t6)
/* 00A50C 0040A50C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00A510 0040A510 8FAD035C */  lw          $t5, 0x35C($sp)
/* 00A514 0040A514 8DAF0000 */  lw          $t7, 0x0($t5)
/* 00A518 0040A518 15E0FFC2 */  bnez        $t7, .L0040A424
/* 00A51C 0040A51C AFAF035C */   sw         $t7, 0x35C($sp)
.L0040A520:
/* 00A520 0040A520 8F98865C */  lw          $t8, %got(debug)($gp)
/* 00A524 0040A524 8F180000 */  lw          $t8, 0x0($t8)
/* 00A528 0040A528 13000008 */  beqz        $t8, .L0040A54C
/* 00A52C 0040A52C 00000000 */   nop
/* 00A530 0040A530 8F998090 */  lw          $t9, %call16(printf)($gp)
/* 00A534 0040A534 8F84802C */  lw          $a0, %got(STR_1000F2D4)($gp)
/* 00A538 0040A538 8F85802C */  lw          $a1, %got(B_10016720)($gp)
/* 00A53C 0040A53C 2484F2D4 */  addiu       $a0, $a0, %lo(STR_1000F2D4)
/* 00A540 0040A540 0320F809 */  jalr        $t9
/* 00A544 0040A544 24A56720 */   addiu      $a1, $a1, %lo(B_10016720)
/* 00A548 0040A548 8FBC0020 */  lw          $gp, 0x20($sp)
.L0040A54C:
/* 00A54C 0040A54C 8F9981A8 */  lw          $t9, %call16(createEntryFile)($gp)
/* 00A550 0040A550 8F84802C */  lw          $a0, %got(B_10016720)($gp)
/* 00A554 0040A554 8F85802C */  lw          $a1, %got(B_10016820)($gp)
/* 00A558 0040A558 24846720 */  addiu       $a0, $a0, %lo(B_10016720)
/* 00A55C 0040A55C 0320F809 */  jalr        $t9
/* 00A560 0040A560 24A56820 */   addiu      $a1, $a1, %lo(B_10016820)
/* 00A564 0040A564 2401FFFF */  addiu       $at, $zero, -0x1
/* 00A568 0040A568 1441000B */  bne         $v0, $at, .L0040A598
/* 00A56C 0040A56C 8FBC0020 */   lw         $gp, 0x20($sp)
/* 00A570 0040A570 8F998018 */  lw          $t9, %got(func_0040BC54)($gp)
/* 00A574 0040A574 2739BC54 */  addiu       $t9, $t9, %lo(func_0040BC54)
/* 00A578 0040A578 0320F809 */  jalr        $t9
/* 00A57C 0040A57C 00000000 */   nop
/* 00A580 0040A580 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00A584 0040A584 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 00A588 0040A588 24040001 */  addiu       $a0, $zero, 0x1
/* 00A58C 0040A58C 0320F809 */  jalr        $t9
/* 00A590 0040A590 00000000 */   nop
/* 00A594 0040A594 8FBC0020 */  lw          $gp, 0x20($sp)
.L0040A598:
/* 00A598 0040A598 8FB90338 */  lw          $t9, 0x338($sp)
/* 00A59C 0040A59C 13200024 */  beqz        $t9, .L0040A630
/* 00A5A0 0040A5A0 00000000 */   nop
/* 00A5A4 0040A5A4 8F88865C */  lw          $t0, %got(debug)($gp)
/* 00A5A8 0040A5A8 8D080000 */  lw          $t0, 0x0($t0)
/* 00A5AC 0040A5AC 1100000D */  beqz        $t0, .L0040A5E4
/* 00A5B0 0040A5B0 00000000 */   nop
/* 00A5B4 0040A5B4 8F998090 */  lw          $t9, %call16(printf)($gp)
/* 00A5B8 0040A5B8 8F84802C */  lw          $a0, %got(STR_1000F2F8)($gp)
/* 00A5BC 0040A5BC 0320F809 */  jalr        $t9
/* 00A5C0 0040A5C0 2484F2F8 */   addiu      $a0, $a0, %lo(STR_1000F2F8)
/* 00A5C4 0040A5C4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00A5C8 0040A5C8 8F998090 */  lw          $t9, %call16(printf)($gp)
/* 00A5CC 0040A5CC 8F84802C */  lw          $a0, %got(STR_1000F320)($gp)
/* 00A5D0 0040A5D0 8F85802C */  lw          $a1, %got(D_10014200)($gp)
/* 00A5D4 0040A5D4 2484F320 */  addiu       $a0, $a0, %lo(STR_1000F320)
/* 00A5D8 0040A5D8 0320F809 */  jalr        $t9
/* 00A5DC 0040A5DC 8CA54200 */   lw         $a1, %lo(D_10014200)($a1)
/* 00A5E0 0040A5E0 8FBC0020 */  lw          $gp, 0x20($sp)
.L0040A5E4:
/* 00A5E4 0040A5E4 8F9981A4 */  lw          $t9, %call16(createRomImage)($gp)
/* 00A5E8 0040A5E8 8F84802C */  lw          $a0, %got(D_10014200)($gp)
/* 00A5EC 0040A5EC 8F85802C */  lw          $a1, %got(B_10016820)($gp)
/* 00A5F0 0040A5F0 8C844200 */  lw          $a0, %lo(D_10014200)($a0)
/* 00A5F4 0040A5F4 0320F809 */  jalr        $t9
/* 00A5F8 0040A5F8 24A56820 */   addiu      $a1, $a1, %lo(B_10016820)
/* 00A5FC 0040A5FC 2401FFFF */  addiu       $at, $zero, -0x1
/* 00A600 0040A600 1441000B */  bne         $v0, $at, .L0040A630
/* 00A604 0040A604 8FBC0020 */   lw         $gp, 0x20($sp)
/* 00A608 0040A608 8F998018 */  lw          $t9, %got(func_0040BC54)($gp)
/* 00A60C 0040A60C 2739BC54 */  addiu       $t9, $t9, %lo(func_0040BC54)
/* 00A610 0040A610 0320F809 */  jalr        $t9
/* 00A614 0040A614 00000000 */   nop
/* 00A618 0040A618 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00A61C 0040A61C 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 00A620 0040A620 24040001 */  addiu       $a0, $zero, 0x1
/* 00A624 0040A624 0320F809 */  jalr        $t9
/* 00A628 0040A628 00000000 */   nop
/* 00A62C 0040A62C 8FBC0020 */  lw          $gp, 0x20($sp)
.L0040A630:
/* 00A630 0040A630 8F998018 */  lw          $t9, %got(func_0040BC54)($gp)
/* 00A634 0040A634 2739BC54 */  addiu       $t9, $t9, %lo(func_0040BC54)
/* 00A638 0040A638 0320F809 */  jalr        $t9
/* 00A63C 0040A63C 00000000 */   nop
/* 00A640 0040A640 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00A644 0040A644 8F898720 */  lw          $t1, %got(bootBuf)($gp)
/* 00A648 0040A648 8D290000 */  lw          $t1, 0x0($t1)
/* 00A64C 0040A64C 11200006 */  beqz        $t1, .L0040A668
/* 00A650 0040A650 00000000 */   nop
/* 00A654 0040A654 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 00A658 0040A658 8F848720 */  lw          $a0, %got(bootBuf)($gp)
/* 00A65C 0040A65C 0320F809 */  jalr        $t9
/* 00A660 0040A660 8C840000 */   lw         $a0, 0x0($a0)
/* 00A664 0040A664 8FBC0020 */  lw          $gp, 0x20($sp)
.L0040A668:
/* 00A668 0040A668 8F8A8724 */  lw          $t2, %got(headerBuf)($gp)
/* 00A66C 0040A66C 8D4A0000 */  lw          $t2, 0x0($t2)
/* 00A670 0040A670 11400006 */  beqz        $t2, .L0040A68C
/* 00A674 0040A674 00000000 */   nop
/* 00A678 0040A678 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 00A67C 0040A67C 8F848724 */  lw          $a0, %got(headerBuf)($gp)
/* 00A680 0040A680 0320F809 */  jalr        $t9
/* 00A684 0040A684 8C840000 */   lw         $a0, 0x0($a0)
/* 00A688 0040A688 8FBC0020 */  lw          $gp, 0x20($sp)
.L0040A68C:
/* 00A68C 0040A68C 8F8B872C */  lw          $t3, %got(fontBuf)($gp)
/* 00A690 0040A690 8D6B0000 */  lw          $t3, 0x0($t3)
/* 00A694 0040A694 11600006 */  beqz        $t3, .L0040A6B0
/* 00A698 0040A698 00000000 */   nop
/* 00A69C 0040A69C 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 00A6A0 0040A6A0 8F84872C */  lw          $a0, %got(fontBuf)($gp)
/* 00A6A4 0040A6A4 0320F809 */  jalr        $t9
/* 00A6A8 0040A6A8 8C840000 */   lw         $a0, 0x0($a0)
/* 00A6AC 0040A6AC 8FBC0020 */  lw          $gp, 0x20($sp)
.L0040A6B0:
/* 00A6B0 0040A6B0 8FAC0338 */  lw          $t4, 0x338($sp)
/* 00A6B4 0040A6B4 11800003 */  beqz        $t4, .L0040A6C4
/* 00A6B8 0040A6B8 00000000 */   nop
/* 00A6BC 0040A6BC 10000002 */  b           .L0040A6C8
/* 00A6C0 0040A6C0 00008025 */   move       $s0, $zero
.L0040A6C4:
/* 00A6C4 0040A6C4 24100001 */  addiu       $s0, $zero, 0x1
.L0040A6C8:
/* 00A6C8 0040A6C8 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 00A6CC 0040A6CC 02002025 */  move        $a0, $s0
/* 00A6D0 0040A6D0 0320F809 */  jalr        $t9
/* 00A6D4 0040A6D4 00000000 */   nop
/* 00A6D8 0040A6D8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00A6DC 0040A6DC 10000003 */  b           .L0040A6EC
/* 00A6E0 0040A6E0 00001025 */   move       $v0, $zero
/* 00A6E4 0040A6E4 10000001 */  b           .L0040A6EC
/* 00A6E8 0040A6E8 00000000 */   nop
.L0040A6EC:
/* 00A6EC 0040A6EC 8FBF0024 */  lw          $ra, 0x24($sp)
/* 00A6F0 0040A6F0 8FB0001C */  lw          $s0, 0x1C($sp)
/* 00A6F4 0040A6F4 27BD0368 */  addiu       $sp, $sp, 0x368
/* 00A6F8 0040A6F8 03E00008 */  jr          $ra
/* 00A6FC 0040A6FC 00000000 */   nop
