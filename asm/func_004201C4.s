glabel func_004201C4 # 152
/* 0201C4 004201C4 00801025 */  move        $v0, $a0
/* 0201C8 004201C8 00061880 */  sll         $v1, $a2, 2
/* 0201CC 004201CC 00832021 */  addu        $a0, $a0, $v1
/* 0201D0 004201D0 0044382B */  sltu        $a3, $v0, $a0
/* 0201D4 004201D4 00A32821 */  addu        $a1, $a1, $v1
/* 0201D8 004201D8 10E00010 */  beqz        $a3, .L0042021C
/* 0201DC 004201DC 2484FFFC */   addiu      $a0, $a0, -0x4
.L004201E0:
/* 0201E0 004201E0 90AEFFFC */  lbu         $t6, -0x4($a1)
/* 0201E4 004201E4 90B8FFFD */  lbu         $t8, -0x3($a1)
/* 0201E8 004201E8 90A9FFFE */  lbu         $t1, -0x2($a1)
/* 0201EC 004201EC 000E7A00 */  sll         $t7, $t6, 8
/* 0201F0 004201F0 01F8C821 */  addu        $t9, $t7, $t8
/* 0201F4 004201F4 90ACFFFF */  lbu         $t4, -0x1($a1)
/* 0201F8 004201F8 00194200 */  sll         $t0, $t9, 8
/* 0201FC 004201FC 01095021 */  addu        $t2, $t0, $t1
/* 020200 00420200 000A5A00 */  sll         $t3, $t2, 8
/* 020204 00420204 0044382B */  sltu        $a3, $v0, $a0
/* 020208 00420208 018B6821 */  addu        $t5, $t4, $t3
/* 02020C 0042020C 2484FFFC */  addiu       $a0, $a0, -0x4
/* 020210 00420210 24A5FFFC */  addiu       $a1, $a1, -0x4
/* 020214 00420214 14E0FFF2 */  bnez        $a3, .L004201E0
/* 020218 00420218 AC8D0004 */   sw         $t5, 0x4($a0)
.L0042021C:
/* 02021C 0042021C 03E00008 */  jr          $ra
/* 020220 00420220 00000000 */   nop