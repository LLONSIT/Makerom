glabel func_00417D60 # 75
/* 017D60 00417D60 00067080 */  sll         $t6, $a2, 2
/* 017D64 00417D64 01C51021 */  addu        $v0, $t6, $a1
.L00417D68:
/* 017D68 00417D68 8CA30000 */  lw          $v1, 0x0($a1)
/* 017D6C 00417D6C 24A50004 */  addiu       $a1, $a1, 0x4
/* 017D70 00417D70 00A2082B */  sltu        $at, $a1, $v0
/* 017D74 00417D74 00037A02 */  srl         $t7, $v1, 8
/* 017D78 00417D78 0003C402 */  srl         $t8, $v1, 16
/* 017D7C 00417D7C 0003CE02 */  srl         $t9, $v1, 24
/* 017D80 00417D80 A0990000 */  sb          $t9, 0x0($a0)
/* 017D84 00417D84 A0980001 */  sb          $t8, 0x1($a0)
/* 017D88 00417D88 A08F0002 */  sb          $t7, 0x2($a0)
/* 017D8C 00417D8C 24840004 */  addiu       $a0, $a0, 0x4
/* 017D90 00417D90 1420FFF5 */  bnez        $at, .L00417D68
/* 017D94 00417D94 A083FFFF */   sb         $v1, -0x1($a0)
/* 017D98 00417D98 03E00008 */  jr          $ra
/* 017D9C 00417D9C 00000000 */   nop
