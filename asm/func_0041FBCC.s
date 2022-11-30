glabel func_0041FBCC # 142
/* 01FBCC 0041FBCC 00067080 */  sll         $t6, $a2, 2
/* 01FBD0 0041FBD0 01C67023 */  subu        $t6, $t6, $a2
/* 01FBD4 0041FBD4 000E7080 */  sll         $t6, $t6, 2
/* 01FBD8 0041FBD8 01C51021 */  addu        $v0, $t6, $a1
.L0041FBDC:
/* 01FBDC 0041FBDC 8CA30000 */  lw          $v1, 0x0($a1)
/* 01FBE0 0041FBE0 24A5000C */  addiu       $a1, $a1, 0xC
/* 01FBE4 0041FBE4 00A2082B */  sltu        $at, $a1, $v0
/* 01FBE8 0041FBE8 00037A02 */  srl         $t7, $v1, 8
/* 01FBEC 0041FBEC 0003C402 */  srl         $t8, $v1, 16
/* 01FBF0 0041FBF0 0003CE02 */  srl         $t9, $v1, 24
/* 01FBF4 0041FBF4 A0990000 */  sb          $t9, 0x0($a0)
/* 01FBF8 0041FBF8 A0980001 */  sb          $t8, 0x1($a0)
/* 01FBFC 0041FBFC A08F0002 */  sb          $t7, 0x2($a0)
/* 01FC00 0041FC00 A0830003 */  sb          $v1, 0x3($a0)
/* 01FC04 0041FC04 8CA6FFF8 */  lw          $a2, -0x8($a1)
/* 01FC08 0041FC08 2484000C */  addiu       $a0, $a0, 0xC
/* 01FC0C 0041FC0C 00064202 */  srl         $t0, $a2, 8
/* 01FC10 0041FC10 00064C02 */  srl         $t1, $a2, 16
/* 01FC14 0041FC14 00065602 */  srl         $t2, $a2, 24
/* 01FC18 0041FC18 A08AFFF8 */  sb          $t2, -0x8($a0)
/* 01FC1C 0041FC1C A089FFF9 */  sb          $t1, -0x7($a0)
/* 01FC20 0041FC20 A088FFFA */  sb          $t0, -0x6($a0)
/* 01FC24 0041FC24 A086FFFB */  sb          $a2, -0x5($a0)
/* 01FC28 0041FC28 8CA3FFFC */  lw          $v1, -0x4($a1)
/* 01FC2C 0041FC2C 00035A02 */  srl         $t3, $v1, 8
/* 01FC30 0041FC30 00036402 */  srl         $t4, $v1, 16
/* 01FC34 0041FC34 00036E02 */  srl         $t5, $v1, 24
/* 01FC38 0041FC38 A08DFFFC */  sb          $t5, -0x4($a0)
/* 01FC3C 0041FC3C A08CFFFD */  sb          $t4, -0x3($a0)
/* 01FC40 0041FC40 A08BFFFE */  sb          $t3, -0x2($a0)
/* 01FC44 0041FC44 1420FFE5 */  bnez        $at, .L0041FBDC
/* 01FC48 0041FC48 A083FFFF */   sb         $v1, -0x1($a0)
/* 01FC4C 0041FC4C 03E00008 */  jr          $ra
/* 01FC50 0041FC50 00000000 */   nop
