.section .rodata
glabel STR_10013A60
/* 043A60 10013A60 */ .asciz "st_rndx_idn: idn (%d) greater than max (%d)\n"
                      .balign 4

glabel STR_10013A90
/* 043A90 10013A90 */ .asciz "st_rndx_idn: old interface can't put rfd(%d) into rndx, use st_pdn_idn instead\n"
                      .balign 4


.section .text
glabel st_rndx_idn # 644
# _gp_disp: 0xFBE3EB4
.set noreorder; .cpload $t9; # .set reorder
/* 039E98 00439E98 8F8387C4 */  lw          $v1, %got(st_pchdr)($gp)
/* 039E9C 00439E9C 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 039EA0 00439EA0 AFBF001C */  sw          $ra, 0x1C($sp)
/* 039EA4 00439EA4 8C630000 */  lw          $v1, 0x0($v1)
/* 039EA8 00439EA8 AFBC0018 */  sw          $gp, 0x18($sp)
/* 039EAC 00439EAC AFA40030 */  sw          $a0, 0x30($sp)
/* 039EB0 00439EB0 8C66003C */  lw          $a2, 0x3C($v1)
/* 039EB4 00439EB4 00A03825 */  move        $a3, $a1
/* 039EB8 00439EB8 00A6082A */  slt         $at, $a1, $a2
/* 039EBC 00439EBC 5420000B */  bnel        $at, $zero, .L00439EEC
/* 039EC0 00439EC0 8C6E0038 */   lw         $t6, 0x38($v1)
/* 039EC4 00439EC4 8F998638 */  lw          $t9, %call16(st_internal)($gp)
/* 039EC8 00439EC8 8F84802C */  lw          $a0, %got(STR_10013A60)($gp)
/* 039ECC 00439ECC AFA70034 */  sw          $a3, 0x34($sp)
/* 039ED0 00439ED0 0320F809 */  jalr        $t9
/* 039ED4 00439ED4 24843A60 */   addiu      $a0, $a0, %lo(STR_10013A60)
/* 039ED8 00439ED8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 039EDC 00439EDC 8FA70034 */  lw          $a3, 0x34($sp)
/* 039EE0 00439EE0 8F8387C4 */  lw          $v1, %got(st_pchdr)($gp)
/* 039EE4 00439EE4 8C630000 */  lw          $v1, 0x0($v1)
/* 039EE8 00439EE8 8C6E0038 */  lw          $t6, 0x38($v1)
.L00439EEC:
/* 039EEC 00439EEC 000730C0 */  sll         $a2, $a3, 3
/* 039EF0 00439EF0 01C67821 */  addu        $t7, $t6, $a2
/* 039EF4 00439EF4 8DE50000 */  lw          $a1, 0x0($t7)
/* 039EF8 00439EF8 2CA10FFF */  sltiu       $at, $a1, 0xFFF
/* 039EFC 00439EFC 5420000E */  bnel        $at, $zero, .L00439F38
/* 039F00 00439F00 97AB002C */   lhu        $t3, 0x2C($sp)
/* 039F04 00439F04 8F998638 */  lw          $t9, %call16(st_internal)($gp)
/* 039F08 00439F08 8F84802C */  lw          $a0, %got(STR_10013A90)($gp)
/* 039F0C 00439F0C AFA60024 */  sw          $a2, 0x24($sp)
/* 039F10 00439F10 0320F809 */  jalr        $t9
/* 039F14 00439F14 24843A90 */   addiu      $a0, $a0, %lo(STR_10013A90)
/* 039F18 00439F18 8FBC0018 */  lw          $gp, 0x18($sp)
/* 039F1C 00439F1C 8FA60024 */  lw          $a2, 0x24($sp)
/* 039F20 00439F20 8F8387C4 */  lw          $v1, %got(st_pchdr)($gp)
/* 039F24 00439F24 8C630000 */  lw          $v1, 0x0($v1)
/* 039F28 00439F28 8C780038 */  lw          $t8, 0x38($v1)
/* 039F2C 00439F2C 0306C821 */  addu        $t9, $t8, $a2
/* 039F30 00439F30 8F250000 */  lw          $a1, 0x0($t9)
/* 039F34 00439F34 97AB002C */  lhu         $t3, 0x2C($sp)
.L00439F38:
/* 039F38 00439F38 00055100 */  sll         $t2, $a1, 4
/* 039F3C 00439F3C 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 039F40 00439F40 316C000F */  andi        $t4, $t3, 0xF
/* 039F44 00439F44 014C6825 */  or          $t5, $t2, $t4
/* 039F48 00439F48 A7AD002C */  sh          $t5, 0x2C($sp)
/* 039F4C 00439F4C 8C6E0038 */  lw          $t6, 0x38($v1)
/* 039F50 00439F50 8FA8002C */  lw          $t0, 0x2C($sp)
/* 039F54 00439F54 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 039F58 00439F58 01C67821 */  addu        $t7, $t6, $a2
/* 039F5C 00439F5C 8DF80004 */  lw          $t8, 0x4($t7)
/* 039F60 00439F60 27AE002C */  addiu       $t6, $sp, 0x2C
/* 039F64 00439F64 8FAD0030 */  lw          $t5, 0x30($sp)
/* 039F68 00439F68 0301C824 */  and         $t9, $t8, $at
/* 039F6C 00439F6C 03284826 */  xor         $t1, $t9, $t0
/* 039F70 00439F70 00095B00 */  sll         $t3, $t1, 12
/* 039F74 00439F74 000B5302 */  srl         $t2, $t3, 12
/* 039F78 00439F78 01486026 */  xor         $t4, $t2, $t0
/* 039F7C 00439F7C AFAC002C */  sw          $t4, 0x2C($sp)
/* 039F80 00439F80 8DD80000 */  lw          $t8, 0x0($t6)
/* 039F84 00439F84 ADB80000 */  sw          $t8, 0x0($t5)
/* 039F88 00439F88 8FBF001C */  lw          $ra, 0x1C($sp)
/* 039F8C 00439F8C 8FA20030 */  lw          $v0, 0x30($sp)
/* 039F90 00439F90 27BD0030 */  addiu       $sp, $sp, 0x30
/* 039F94 00439F94 03E00008 */  jr          $ra
/* 039F98 00439F98 00000000 */   nop
