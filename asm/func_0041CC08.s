glabel func_0041CC08 # 102
/* 01CC08 0041CC08 00801025 */  move        $v0, $a0
/* 01CC0C 0041CC0C 00061880 */  sll         $v1, $a2, 2
/* 01CC10 0041CC10 00832021 */  addu        $a0, $a0, $v1
/* 01CC14 0041CC14 0044382B */  sltu        $a3, $v0, $a0
/* 01CC18 0041CC18 00A32821 */  addu        $a1, $a1, $v1
/* 01CC1C 0041CC1C 10E00010 */  beqz        $a3, .L0041CC60
/* 01CC20 0041CC20 2484FFFC */   addiu      $a0, $a0, -0x4
.L0041CC24:
/* 01CC24 0041CC24 90AEFFFF */  lbu         $t6, -0x1($a1)
/* 01CC28 0041CC28 90B8FFFE */  lbu         $t8, -0x2($a1)
/* 01CC2C 0041CC2C 90A9FFFD */  lbu         $t1, -0x3($a1)
/* 01CC30 0041CC30 000E7A00 */  sll         $t7, $t6, 8
/* 01CC34 0041CC34 01F8C821 */  addu        $t9, $t7, $t8
/* 01CC38 0041CC38 90ACFFFC */  lbu         $t4, -0x4($a1)
/* 01CC3C 0041CC3C 00194200 */  sll         $t0, $t9, 8
/* 01CC40 0041CC40 01095021 */  addu        $t2, $t0, $t1
/* 01CC44 0041CC44 000A5A00 */  sll         $t3, $t2, 8
/* 01CC48 0041CC48 0044382B */  sltu        $a3, $v0, $a0
/* 01CC4C 0041CC4C 018B6821 */  addu        $t5, $t4, $t3
/* 01CC50 0041CC50 2484FFFC */  addiu       $a0, $a0, -0x4
/* 01CC54 0041CC54 24A5FFFC */  addiu       $a1, $a1, -0x4
/* 01CC58 0041CC58 14E0FFF2 */  bnez        $a3, .L0041CC24
/* 01CC5C 0041CC5C AC8D0004 */   sw         $t5, 0x4($a0)
.L0041CC60:
/* 01CC60 0041CC60 03E00008 */  jr          $ra
/* 01CC64 0041CC64 00000000 */   nop
