glabel func_0041F794 # 134
/* 01F794 0041F794 00067040 */  sll         $t6, $a2, 1
/* 01F798 0041F798 01C51021 */  addu        $v0, $t6, $a1
.L0041F79C:
/* 01F79C 0041F79C 94A30000 */  lhu         $v1, 0x0($a1)
/* 01F7A0 0041F7A0 24A50002 */  addiu       $a1, $a1, 0x2
/* 01F7A4 0041F7A4 00A2082B */  sltu        $at, $a1, $v0
/* 01F7A8 0041F7A8 00037A03 */  sra         $t7, $v1, 8
/* 01F7AC 0041F7AC A08F0000 */  sb          $t7, 0x0($a0)
/* 01F7B0 0041F7B0 24840002 */  addiu       $a0, $a0, 0x2
/* 01F7B4 0041F7B4 1420FFF9 */  bnez        $at, .L0041F79C
/* 01F7B8 0041F7B8 A083FFFF */   sb         $v1, -0x1($a0)
/* 01F7BC 0041F7BC 03E00008 */  jr          $ra
/* 01F7C0 0041F7C0 00000000 */   nop
