glabel func_0041F7C4 # 135
/* 01F7C4 0041F7C4 00067080 */  sll         $t6, $a2, 2
/* 01F7C8 0041F7C8 01C51021 */  addu        $v0, $t6, $a1
.L0041F7CC:
/* 01F7CC 0041F7CC 8CA30000 */  lw          $v1, 0x0($a1)
/* 01F7D0 0041F7D0 24A50004 */  addiu       $a1, $a1, 0x4
/* 01F7D4 0041F7D4 00A2082B */  sltu        $at, $a1, $v0
/* 01F7D8 0041F7D8 00037A02 */  srl         $t7, $v1, 8
/* 01F7DC 0041F7DC 0003C402 */  srl         $t8, $v1, 16
/* 01F7E0 0041F7E0 0003CE02 */  srl         $t9, $v1, 24
/* 01F7E4 0041F7E4 A0990003 */  sb          $t9, 0x3($a0)
/* 01F7E8 0041F7E8 A0980002 */  sb          $t8, 0x2($a0)
/* 01F7EC 0041F7EC A08F0001 */  sb          $t7, 0x1($a0)
/* 01F7F0 0041F7F0 24840004 */  addiu       $a0, $a0, 0x4
/* 01F7F4 0041F7F4 1420FFF5 */  bnez        $at, .L0041F7CC
/* 01F7F8 0041F7F8 A083FFFC */   sb         $v1, -0x4($a0)
/* 01F7FC 0041F7FC 03E00008 */  jr          $ra
/* 01F800 0041F800 00000000 */   nop
