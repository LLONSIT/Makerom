glabel func_0041CC68 # 103
/* 01CC68 0041CC68 00801025 */  move        $v0, $a0
/* 01CC6C 0041CC6C 00061880 */  sll         $v1, $a2, 2
/* 01CC70 0041CC70 00832021 */  addu        $a0, $a0, $v1
/* 01CC74 0041CC74 0044382B */  sltu        $a3, $v0, $a0
/* 01CC78 0041CC78 00A32821 */  addu        $a1, $a1, $v1
/* 01CC7C 0041CC7C 10E00010 */  beqz        $a3, .L0041CCC0
/* 01CC80 0041CC80 2484FFFC */   addiu      $a0, $a0, -0x4
.L0041CC84:
/* 01CC84 0041CC84 90AEFFFC */  lbu         $t6, -0x4($a1)
/* 01CC88 0041CC88 90B8FFFD */  lbu         $t8, -0x3($a1)
/* 01CC8C 0041CC8C 90A9FFFE */  lbu         $t1, -0x2($a1)
/* 01CC90 0041CC90 000E7A00 */  sll         $t7, $t6, 8
/* 01CC94 0041CC94 01F8C821 */  addu        $t9, $t7, $t8
/* 01CC98 0041CC98 90ACFFFF */  lbu         $t4, -0x1($a1)
/* 01CC9C 0041CC9C 00194200 */  sll         $t0, $t9, 8
/* 01CCA0 0041CCA0 01095021 */  addu        $t2, $t0, $t1
/* 01CCA4 0041CCA4 000A5A00 */  sll         $t3, $t2, 8
/* 01CCA8 0041CCA8 0044382B */  sltu        $a3, $v0, $a0
/* 01CCAC 0041CCAC 018B6821 */  addu        $t5, $t4, $t3
/* 01CCB0 0041CCB0 2484FFFC */  addiu       $a0, $a0, -0x4
/* 01CCB4 0041CCB4 24A5FFFC */  addiu       $a1, $a1, -0x4
/* 01CCB8 0041CCB8 14E0FFF2 */  bnez        $a3, .L0041CC84
/* 01CCBC 0041CCBC AC8D0004 */   sw         $t5, 0x4($a0)
.L0041CCC0:
/* 01CCC0 0041CCC0 03E00008 */  jr          $ra
/* 01CCC4 0041CCC4 00000000 */   nop
