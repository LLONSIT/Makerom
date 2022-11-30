glabel func_0041FF24 # 145
/* 01FF24 0041FF24 00067080 */  sll         $t6, $a2, 2
/* 01FF28 0041FF28 01C51021 */  addu        $v0, $t6, $a1
.L0041FF2C:
/* 01FF2C 0041FF2C 8CA30000 */  lw          $v1, 0x0($a1)
/* 01FF30 0041FF30 24A50004 */  addiu       $a1, $a1, 0x4
/* 01FF34 0041FF34 00A2082B */  sltu        $at, $a1, $v0
/* 01FF38 0041FF38 00037A02 */  srl         $t7, $v1, 8
/* 01FF3C 0041FF3C 0003C402 */  srl         $t8, $v1, 16
/* 01FF40 0041FF40 0003CE02 */  srl         $t9, $v1, 24
/* 01FF44 0041FF44 A0990003 */  sb          $t9, 0x3($a0)
/* 01FF48 0041FF48 A0980002 */  sb          $t8, 0x2($a0)
/* 01FF4C 0041FF4C A08F0001 */  sb          $t7, 0x1($a0)
/* 01FF50 0041FF50 24840004 */  addiu       $a0, $a0, 0x4
/* 01FF54 0041FF54 1420FFF5 */  bnez        $at, .L0041FF2C
/* 01FF58 0041FF58 A083FFFC */   sb         $v1, -0x4($a0)
/* 01FF5C 0041FF5C 03E00008 */  jr          $ra
/* 01FF60 0041FF60 00000000 */   nop
