.section .rodata
glabel STR_10014180
/* 044180 10014180 */ .asciz "tried to replace rndx aux (%d) that fits into one word (%d, %d) with one that can't (%d,%d)\n"
                      .balign 4


.section .text
glabel st_changeauxrndx # 712
# _gp_disp: 0xFBDF9D8
.set noreorder; .cpload $t9; # .set reorder
/* 03E374 0043E374 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 03E378 0043E378 8F99860C */  lw          $t9, %call16(st_paux_iaux)($gp)
/* 03E37C 0043E37C AFBF0024 */  sw          $ra, 0x24($sp)
/* 03E380 0043E380 AFBC0020 */  sw          $gp, 0x20($sp)
/* 03E384 0043E384 AFA40038 */  sw          $a0, 0x38($sp)
/* 03E388 0043E388 AFA5003C */  sw          $a1, 0x3C($sp)
/* 03E38C 0043E38C 0320F809 */  jalr        $t9
/* 03E390 0043E390 AFA60040 */   sw         $a2, 0x40($sp)
/* 03E394 0043E394 8C4E0000 */  lw          $t6, 0x0($v0)
/* 03E398 0043E398 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03E39C 0043E39C 8FA8003C */  lw          $t0, 0x3C($sp)
/* 03E3A0 0043E3A0 000E7D02 */  srl         $t7, $t6, 20
/* 03E3A4 0043E3A4 2DE10FFF */  sltiu       $at, $t7, 0xFFF
/* 03E3A8 0043E3A8 10200014 */  beqz        $at, .L0043E3FC
/* 03E3AC 0043E3AC 00401825 */   move       $v1, $v0
/* 03E3B0 0043E3B0 29010FFF */  slti        $at, $t0, 0xFFF
/* 03E3B4 0043E3B4 14200011 */  bnez        $at, .L0043E3FC
/* 03E3B8 0043E3B8 8FA50038 */   lw         $a1, 0x38($sp)
/* 03E3BC 0043E3BC 8C420000 */  lw          $v0, 0x0($v0)
/* 03E3C0 0043E3C0 8F998638 */  lw          $t9, %call16(st_internal)($gp)
/* 03E3C4 0043E3C4 8F84802C */  lw          $a0, %got(STR_10014180)($gp)
/* 03E3C8 0043E3C8 8FB80040 */  lw          $t8, 0x40($sp)
/* 03E3CC 0043E3CC 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03E3D0 0043E3D0 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03E3D4 0043E3D4 AFA3002C */  sw          $v1, 0x2C($sp)
/* 03E3D8 0043E3D8 AFA80010 */  sw          $t0, 0x10($sp)
/* 03E3DC 0043E3DC 00413824 */  and         $a3, $v0, $at
/* 03E3E0 0043E3E0 00023502 */  srl         $a2, $v0, 20
/* 03E3E4 0043E3E4 24844180 */  addiu       $a0, $a0, %lo(STR_10014180)
/* 03E3E8 0043E3E8 0320F809 */  jalr        $t9
/* 03E3EC 0043E3EC AFB80014 */   sw         $t8, 0x14($sp)
/* 03E3F0 0043E3F0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03E3F4 0043E3F4 8FA3002C */  lw          $v1, 0x2C($sp)
/* 03E3F8 0043E3F8 8FA8003C */  lw          $t0, 0x3C($sp)
.L0043E3FC:
/* 03E3FC 0043E3FC 8C790000 */  lw          $t9, 0x0($v1)
/* 03E400 0043E400 00194D02 */  srl         $t1, $t9, 20
/* 03E404 0043E404 2D210FFF */  sltiu       $at, $t1, 0xFFF
/* 03E408 0043E408 50200008 */  beql        $at, $zero, .L0043E42C
/* 03E40C 0043E40C AC680004 */   sw         $t0, 0x4($v1)
/* 03E410 0043E410 946D0000 */  lhu         $t5, 0x0($v1)
/* 03E414 0043E414 00086100 */  sll         $t4, $t0, 4
/* 03E418 0043E418 31AE000F */  andi        $t6, $t5, 0xF
/* 03E41C 0043E41C 018E7825 */  or          $t7, $t4, $t6
/* 03E420 0043E420 10000002 */  b           .L0043E42C
/* 03E424 0043E424 A46F0000 */   sh         $t7, 0x0($v1)
/* 03E428 0043E428 AC680004 */  sw          $t0, 0x4($v1)
.L0043E42C:
/* 03E42C 0043E42C 8FB80040 */  lw          $t8, 0x40($sp)
/* 03E430 0043E430 8C620000 */  lw          $v0, 0x0($v1)
/* 03E434 0043E434 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03E438 0043E438 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03E43C 0043E43C 0301C824 */  and         $t9, $t8, $at
/* 03E440 0043E440 03224826 */  xor         $t1, $t9, $v0
/* 03E444 0043E444 00095300 */  sll         $t2, $t1, 12
/* 03E448 0043E448 000A5B02 */  srl         $t3, $t2, 12
/* 03E44C 0043E44C 01626826 */  xor         $t5, $t3, $v0
/* 03E450 0043E450 AC6D0000 */  sw          $t5, 0x0($v1)
/* 03E454 0043E454 8FBF0024 */  lw          $ra, 0x24($sp)
/* 03E458 0043E458 27BD0038 */  addiu       $sp, $sp, 0x38
/* 03E45C 0043E45C 03E00008 */  jr          $ra
/* 03E460 0043E460 00000000 */   nop
