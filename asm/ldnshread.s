glabel ldnshread # 237
# _gp_disp: 0xFBF801C
.set noreorder; .cpload $t9; # .set reorder
/* 025D30 00425D30 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 025D34 00425D34 AFBF002C */  sw          $ra, 0x2C($sp)
/* 025D38 00425D38 AFBC0028 */  sw          $gp, 0x28($sp)
/* 025D3C 00425D3C AFB30024 */  sw          $s3, 0x24($sp)
/* 025D40 00425D40 AFB20020 */  sw          $s2, 0x20($sp)
/* 025D44 00425D44 AFB1001C */  sw          $s1, 0x1C($sp)
/* 025D48 00425D48 AFB00018 */  sw          $s0, 0x18($sp)
/* 025D4C 00425D4C AFA60038 */  sw          $a2, 0x38($sp)
/* 025D50 00425D50 948E000E */  lhu         $t6, 0xE($a0)
/* 025D54 00425D54 00808825 */  move        $s1, $a0
/* 025D58 00425D58 00A09825 */  move        $s3, $a1
/* 025D5C 00425D5C 11C0002D */  beqz        $t6, .L00425E14
/* 025D60 00425D60 00009025 */   move       $s2, $zero
/* 025D64 00425D64 00008025 */  move        $s0, $zero
/* 025D68 00425D68 8E2F002C */  lw          $t7, 0x2C($s1)
.L00425D6C:
/* 025D6C 00425D6C 8F99806C */  lw          $t9, %call16(strlen)($gp)
/* 025D70 00425D70 8DF80098 */  lw          $t8, 0x98($t7)
/* 025D74 00425D74 0320F809 */  jalr        $t9
/* 025D78 00425D78 03102021 */   addu       $a0, $t8, $s0
/* 025D7C 00425D7C 28410009 */  slti        $at, $v0, 0x9
/* 025D80 00425D80 8FBC0028 */  lw          $gp, 0x28($sp)
/* 025D84 00425D84 14200002 */  bnez        $at, .L00425D90
/* 025D88 00425D88 00403025 */   move       $a2, $v0
/* 025D8C 00425D8C 24060008 */  addiu       $a2, $zero, 0x8
.L00425D90:
/* 025D90 00425D90 8E39002C */  lw          $t9, 0x2C($s1)
/* 025D94 00425D94 02602025 */  move        $a0, $s3
/* 025D98 00425D98 8F280098 */  lw          $t0, 0x98($t9)
/* 025D9C 00425D9C 8F998148 */  lw          $t9, %call16(strncmp)($gp)
/* 025DA0 00425DA0 01102821 */  addu        $a1, $t0, $s0
/* 025DA4 00425DA4 0320F809 */  jalr        $t9
/* 025DA8 00425DA8 00000000 */   nop
/* 025DAC 00425DAC 14400013 */  bnez        $v0, .L00425DFC
/* 025DB0 00425DB0 8FBC0028 */   lw         $gp, 0x28($sp)
/* 025DB4 00425DB4 8E2A002C */  lw          $t2, 0x2C($s1)
/* 025DB8 00425DB8 8FA90038 */  lw          $t1, 0x38($sp)
/* 025DBC 00425DBC 8D4B0098 */  lw          $t3, 0x98($t2)
/* 025DC0 00425DC0 01706021 */  addu        $t4, $t3, $s0
/* 025DC4 00425DC4 258F0024 */  addiu       $t7, $t4, 0x24
.L00425DC8:
/* 025DC8 00425DC8 8D8E0000 */  lw          $t6, 0x0($t4)
/* 025DCC 00425DCC 258C000C */  addiu       $t4, $t4, 0xC
/* 025DD0 00425DD0 2529000C */  addiu       $t1, $t1, 0xC
/* 025DD4 00425DD4 AD2EFFF4 */  sw          $t6, -0xC($t1)
/* 025DD8 00425DD8 8D8DFFF8 */  lw          $t5, -0x8($t4)
/* 025DDC 00425DDC AD2DFFF8 */  sw          $t5, -0x8($t1)
/* 025DE0 00425DE0 8D8EFFFC */  lw          $t6, -0x4($t4)
/* 025DE4 00425DE4 158FFFF8 */  bne         $t4, $t7, .L00425DC8
/* 025DE8 00425DE8 AD2EFFFC */   sw         $t6, -0x4($t1)
/* 025DEC 00425DEC 8D8E0000 */  lw          $t6, 0x0($t4)
/* 025DF0 00425DF0 24020001 */  addiu       $v0, $zero, 0x1
/* 025DF4 00425DF4 10000008 */  b           .L00425E18
/* 025DF8 00425DF8 AD2E0000 */   sw         $t6, 0x0($t1)
.L00425DFC:
/* 025DFC 00425DFC 9638000E */  lhu         $t8, 0xE($s1)
/* 025E00 00425E00 26520001 */  addiu       $s2, $s2, 0x1
/* 025E04 00425E04 26100028 */  addiu       $s0, $s0, 0x28
/* 025E08 00425E08 0258082B */  sltu        $at, $s2, $t8
/* 025E0C 00425E0C 5420FFD7 */  bnel        $at, $zero, .L00425D6C
/* 025E10 00425E10 8E2F002C */   lw         $t7, 0x2C($s1)
.L00425E14:
/* 025E14 00425E14 00001025 */  move        $v0, $zero
.L00425E18:
/* 025E18 00425E18 8FBF002C */  lw          $ra, 0x2C($sp)
/* 025E1C 00425E1C 8FB00018 */  lw          $s0, 0x18($sp)
/* 025E20 00425E20 8FB1001C */  lw          $s1, 0x1C($sp)
/* 025E24 00425E24 8FB20020 */  lw          $s2, 0x20($sp)
/* 025E28 00425E28 8FB30024 */  lw          $s3, 0x24($sp)
/* 025E2C 00425E2C 03E00008 */  jr          $ra
/* 025E30 00425E30 27BD0030 */   addiu      $sp, $sp, 0x30
