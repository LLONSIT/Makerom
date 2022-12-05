glabel func_0041D6B0 # 108
/* 01D6B0 0041D6B0 00801025 */  move        $v0, $a0
/* 01D6B4 0041D6B4 00061880 */  sll         $v1, $a2, 2
/* 01D6B8 0041D6B8 00832021 */  addu        $a0, $a0, $v1
/* 01D6BC 0041D6BC 0044382B */  sltu        $a3, $v0, $a0
/* 01D6C0 0041D6C0 00A32821 */  addu        $a1, $a1, $v1
/* 01D6C4 0041D6C4 10E00010 */  beqz        $a3, .L0041D708
/* 01D6C8 0041D6C8 2484FFFC */   addiu      $a0, $a0, -0x4
.L0041D6CC:
/* 01D6CC 0041D6CC 90AEFFFF */  lbu         $t6, -0x1($a1)
/* 01D6D0 0041D6D0 90B8FFFE */  lbu         $t8, -0x2($a1)
/* 01D6D4 0041D6D4 90A9FFFD */  lbu         $t1, -0x3($a1)
/* 01D6D8 0041D6D8 000E7A00 */  sll         $t7, $t6, 8
/* 01D6DC 0041D6DC 01F8C821 */  addu        $t9, $t7, $t8
/* 01D6E0 0041D6E0 90ACFFFC */  lbu         $t4, -0x4($a1)
/* 01D6E4 0041D6E4 00194200 */  sll         $t0, $t9, 8
/* 01D6E8 0041D6E8 01095021 */  addu        $t2, $t0, $t1
/* 01D6EC 0041D6EC 000A5A00 */  sll         $t3, $t2, 8
/* 01D6F0 0041D6F0 0044382B */  sltu        $a3, $v0, $a0
/* 01D6F4 0041D6F4 018B6821 */  addu        $t5, $t4, $t3
/* 01D6F8 0041D6F8 2484FFFC */  addiu       $a0, $a0, -0x4
/* 01D6FC 0041D6FC 24A5FFFC */  addiu       $a1, $a1, -0x4
/* 01D700 0041D700 14E0FFF2 */  bnez        $a3, .L0041D6CC
/* 01D704 0041D704 AC8D0004 */   sw         $t5, 0x4($a0)
.L0041D708:
/* 01D708 0041D708 03E00008 */  jr          $ra
/* 01D70C 0041D70C 00000000 */   nop
