glabel func_00417D20 # 74
/* 017D20 00417D20 00067080 */  sll         $t6, $a2, 2
/* 017D24 00417D24 01C51021 */  addu        $v0, $t6, $a1
.L00417D28:
/* 017D28 00417D28 8CA30000 */  lw          $v1, 0x0($a1)
/* 017D2C 00417D2C 24A50004 */  addiu       $a1, $a1, 0x4
/* 017D30 00417D30 00A2082B */  sltu        $at, $a1, $v0
/* 017D34 00417D34 00037A02 */  srl         $t7, $v1, 8
/* 017D38 00417D38 0003C402 */  srl         $t8, $v1, 16
/* 017D3C 00417D3C 0003CE02 */  srl         $t9, $v1, 24
/* 017D40 00417D40 A0990003 */  sb          $t9, 0x3($a0)
/* 017D44 00417D44 A0980002 */  sb          $t8, 0x2($a0)
/* 017D48 00417D48 A08F0001 */  sb          $t7, 0x1($a0)
/* 017D4C 00417D4C 24840004 */  addiu       $a0, $a0, 0x4
/* 017D50 00417D50 1420FFF5 */  bnez        $at, .L00417D28
/* 017D54 00417D54 A083FFFC */   sb         $v1, -0x4($a0)
/* 017D58 00417D58 03E00008 */  jr          $ra
/* 017D5C 00417D5C 00000000 */   nop
