glabel func_0041FB44 # 141
/* 01FB44 0041FB44 00067080 */  sll         $t6, $a2, 2
/* 01FB48 0041FB48 01C67023 */  subu        $t6, $t6, $a2
/* 01FB4C 0041FB4C 000E7080 */  sll         $t6, $t6, 2
/* 01FB50 0041FB50 01C51021 */  addu        $v0, $t6, $a1
.L0041FB54:
/* 01FB54 0041FB54 8CA30000 */  lw          $v1, 0x0($a1)
/* 01FB58 0041FB58 24A5000C */  addiu       $a1, $a1, 0xC
/* 01FB5C 0041FB5C 00A2082B */  sltu        $at, $a1, $v0
/* 01FB60 0041FB60 00037A02 */  srl         $t7, $v1, 8
/* 01FB64 0041FB64 0003C402 */  srl         $t8, $v1, 16
/* 01FB68 0041FB68 0003CE02 */  srl         $t9, $v1, 24
/* 01FB6C 0041FB6C A0990003 */  sb          $t9, 0x3($a0)
/* 01FB70 0041FB70 A0980002 */  sb          $t8, 0x2($a0)
/* 01FB74 0041FB74 A08F0001 */  sb          $t7, 0x1($a0)
/* 01FB78 0041FB78 A0830000 */  sb          $v1, 0x0($a0)
/* 01FB7C 0041FB7C 8CA6FFF8 */  lw          $a2, -0x8($a1)
/* 01FB80 0041FB80 2484000C */  addiu       $a0, $a0, 0xC
/* 01FB84 0041FB84 00064202 */  srl         $t0, $a2, 8
/* 01FB88 0041FB88 00064C02 */  srl         $t1, $a2, 16
/* 01FB8C 0041FB8C 00065602 */  srl         $t2, $a2, 24
/* 01FB90 0041FB90 A08AFFFB */  sb          $t2, -0x5($a0)
/* 01FB94 0041FB94 A089FFFA */  sb          $t1, -0x6($a0)
/* 01FB98 0041FB98 A088FFF9 */  sb          $t0, -0x7($a0)
/* 01FB9C 0041FB9C A086FFF8 */  sb          $a2, -0x8($a0)
/* 01FBA0 0041FBA0 8CA3FFFC */  lw          $v1, -0x4($a1)
/* 01FBA4 0041FBA4 00035A02 */  srl         $t3, $v1, 8
/* 01FBA8 0041FBA8 00036402 */  srl         $t4, $v1, 16
/* 01FBAC 0041FBAC 00036E02 */  srl         $t5, $v1, 24
/* 01FBB0 0041FBB0 A08DFFFF */  sb          $t5, -0x1($a0)
/* 01FBB4 0041FBB4 A08CFFFE */  sb          $t4, -0x2($a0)
/* 01FBB8 0041FBB8 A08BFFFD */  sb          $t3, -0x3($a0)
/* 01FBBC 0041FBBC 1420FFE5 */  bnez        $at, .L0041FB54
/* 01FBC0 0041FBC0 A083FFFC */   sb         $v1, -0x4($a0)
/* 01FBC4 0041FBC4 03E00008 */  jr          $ra
/* 01FBC8 0041FBC8 00000000 */   nop
