glabel func_0041FF64 # 146
/* 01FF64 0041FF64 00067080 */  sll         $t6, $a2, 2
/* 01FF68 0041FF68 01C51021 */  addu        $v0, $t6, $a1
.L0041FF6C:
/* 01FF6C 0041FF6C 8CA30000 */  lw          $v1, 0x0($a1)
/* 01FF70 0041FF70 24A50004 */  addiu       $a1, $a1, 0x4
/* 01FF74 0041FF74 00A2082B */  sltu        $at, $a1, $v0
/* 01FF78 0041FF78 00037A02 */  srl         $t7, $v1, 8
/* 01FF7C 0041FF7C 0003C402 */  srl         $t8, $v1, 16
/* 01FF80 0041FF80 0003CE02 */  srl         $t9, $v1, 24
/* 01FF84 0041FF84 A0990000 */  sb          $t9, 0x0($a0)
/* 01FF88 0041FF88 A0980001 */  sb          $t8, 0x1($a0)
/* 01FF8C 0041FF8C A08F0002 */  sb          $t7, 0x2($a0)
/* 01FF90 0041FF90 24840004 */  addiu       $a0, $a0, 0x4
/* 01FF94 0041FF94 1420FFF5 */  bnez        $at, .L0041FF6C
/* 01FF98 0041FF98 A083FFFF */   sb         $v1, -0x1($a0)
/* 01FF9C 0041FF9C 03E00008 */  jr          $ra
/* 01FFA0 0041FFA0 00000000 */   nop
