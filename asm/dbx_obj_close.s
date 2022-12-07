.section .rodata
glabel STR_10011F5C
/* 041F5C 10011F5C */ .asciz "obj_write failed"
                      .balign 4


.section .text
glabel dbx_obj_close # 263
# _gp_disp: 0xFBF5E5C
.set noreorder; .cpload $t9; # .set reorder
/* 027EF0 00427EF0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 027EF4 00427EF4 AFBF001C */  sw          $ra, 0x1C($sp)
/* 027EF8 00427EF8 AFBC0018 */  sw          $gp, 0x18($sp)
/* 027EFC 00427EFC AFB00014 */  sw          $s0, 0x14($sp)
/* 027F00 00427F00 8C820180 */  lw          $v0, 0x180($a0)
/* 027F04 00427F04 24010001 */  addiu       $at, $zero, 0x1
/* 027F08 00427F08 00808025 */  move        $s0, $a0
/* 027F0C 00427F0C 54410018 */  bnel        $v0, $at, .L00427F70
/* 027F10 00427F10 24010003 */   addiu      $at, $zero, 0x3
/* 027F14 00427F14 8F99813C */  lw          $t9, %call16(munmap)($gp)
/* 027F18 00427F18 8C8400C4 */  lw          $a0, 0xC4($a0)
/* 027F1C 00427F1C 8E050034 */  lw          $a1, 0x34($s0)
/* 027F20 00427F20 0320F809 */  jalr        $t9
/* 027F24 00427F24 00000000 */   nop
/* 027F28 00427F28 8FBC0018 */  lw          $gp, 0x18($sp)
/* 027F2C 00427F2C AE0000C4 */  sw          $zero, 0xC4($s0)
/* 027F30 00427F30 8E0400DC */  lw          $a0, 0xDC($s0)
/* 027F34 00427F34 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 027F38 00427F38 0320F809 */  jalr        $t9
/* 027F3C 00427F3C 00000000 */   nop
/* 027F40 00427F40 8E040198 */  lw          $a0, 0x198($s0)
/* 027F44 00427F44 8FBC0018 */  lw          $gp, 0x18($sp)
/* 027F48 00427F48 AE0000DC */  sw          $zero, 0xDC($s0)
/* 027F4C 00427F4C 10800016 */  beqz        $a0, .L00427FA8
/* 027F50 00427F50 00000000 */   nop
/* 027F54 00427F54 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 027F58 00427F58 0320F809 */  jalr        $t9
/* 027F5C 00427F5C 00000000 */   nop
/* 027F60 00427F60 8FBC0018 */  lw          $gp, 0x18($sp)
/* 027F64 00427F64 10000010 */  b           .L00427FA8
/* 027F68 00427F68 AE000198 */   sw         $zero, 0x198($s0)
/* 027F6C 00427F6C 24010003 */  addiu       $at, $zero, 0x3
.L00427F70:
/* 027F70 00427F70 1441000D */  bne         $v0, $at, .L00427FA8
/* 027F74 00427F74 00000000 */   nop
/* 027F78 00427F78 8F998554 */  lw          $t9, %call16(obj_write)($gp)
/* 027F7C 00427F7C 02002025 */  move        $a0, $s0
/* 027F80 00427F80 0320F809 */  jalr        $t9
/* 027F84 00427F84 00000000 */   nop
/* 027F88 00427F88 14400007 */  bnez        $v0, .L00427FA8
/* 027F8C 00427F8C 8FBC0018 */   lw         $gp, 0x18($sp)
/* 027F90 00427F90 8F998538 */  lw          $t9, %call16(st_error)($gp)
/* 027F94 00427F94 8F84802C */  lw          $a0, %got(STR_10011F5C)($gp)
/* 027F98 00427F98 0320F809 */  jalr        $t9
/* 027F9C 00427F9C 24841F5C */   addiu      $a0, $a0, %lo(STR_10011F5C)
/* 027FA0 00427FA0 10000012 */  b           .L00427FEC
/* 027FA4 00427FA4 8FBC0018 */   lw         $gp, 0x18($sp)
.L00427FA8:
/* 027FA8 00427FA8 8F8E87D4 */  lw          $t6, %got(D_1001D858)($gp)
/* 027FAC 00427FAC 25CE0001 */  addiu       $t6, $t6, 0x1
/* 027FB0 00427FB0 020E082B */  sltu        $at, $s0, $t6
/* 027FB4 00427FB4 5420000E */  bnel        $at, $zero, .L00427FF0
/* 027FB8 00427FB8 8FBF001C */   lw         $ra, 0x1C($sp)
/* 027FBC 00427FBC 8F998158 */  lw          $t9, %call16(sbrk)($gp)
/* 027FC0 00427FC0 00002025 */  move        $a0, $zero
/* 027FC4 00427FC4 0320F809 */  jalr        $t9
/* 027FC8 00427FC8 00000000 */   nop
/* 027FCC 00427FCC 0202082B */  sltu        $at, $s0, $v0
/* 027FD0 00427FD0 10200006 */  beqz        $at, .L00427FEC
/* 027FD4 00427FD4 8FBC0018 */   lw         $gp, 0x18($sp)
/* 027FD8 00427FD8 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 027FDC 00427FDC 02002025 */  move        $a0, $s0
/* 027FE0 00427FE0 0320F809 */  jalr        $t9
/* 027FE4 00427FE4 00000000 */   nop
/* 027FE8 00427FE8 8FBC0018 */  lw          $gp, 0x18($sp)
.L00427FEC:
/* 027FEC 00427FEC 8FBF001C */  lw          $ra, 0x1C($sp)
.L00427FF0:
/* 027FF0 00427FF0 8FB00014 */  lw          $s0, 0x14($sp)
/* 027FF4 00427FF4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 027FF8 00427FF8 03E00008 */  jr          $ra
/* 027FFC 00427FFC 00000000 */   nop
