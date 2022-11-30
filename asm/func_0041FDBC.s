glabel func_0041FDBC # 144
/* 01FDBC 0041FDBC 00067080 */  sll         $t6, $a2, 2
/* 01FDC0 0041FDC0 01C67021 */  addu        $t6, $t6, $a2
/* 01FDC4 0041FDC4 000E70C0 */  sll         $t6, $t6, 3
/* 01FDC8 0041FDC8 01C51021 */  addu        $v0, $t6, $a1
.L0041FDCC:
/* 01FDCC 0041FDCC 8CA30000 */  lw          $v1, 0x0($a1)
/* 01FDD0 0041FDD0 24A50028 */  addiu       $a1, $a1, 0x28
/* 01FDD4 0041FDD4 00A2082B */  sltu        $at, $a1, $v0
/* 01FDD8 0041FDD8 00037A02 */  srl         $t7, $v1, 8
/* 01FDDC 0041FDDC 0003C402 */  srl         $t8, $v1, 16
/* 01FDE0 0041FDE0 0003CE02 */  srl         $t9, $v1, 24
/* 01FDE4 0041FDE4 A0990000 */  sb          $t9, 0x0($a0)
/* 01FDE8 0041FDE8 A0980001 */  sb          $t8, 0x1($a0)
/* 01FDEC 0041FDEC A08F0002 */  sb          $t7, 0x2($a0)
/* 01FDF0 0041FDF0 A0830003 */  sb          $v1, 0x3($a0)
/* 01FDF4 0041FDF4 8CA6FFDC */  lw          $a2, -0x24($a1)
/* 01FDF8 0041FDF8 24840028 */  addiu       $a0, $a0, 0x28
/* 01FDFC 0041FDFC 00064202 */  srl         $t0, $a2, 8
/* 01FE00 0041FE00 00064C02 */  srl         $t1, $a2, 16
/* 01FE04 0041FE04 00065602 */  srl         $t2, $a2, 24
/* 01FE08 0041FE08 A08AFFDC */  sb          $t2, -0x24($a0)
/* 01FE0C 0041FE0C A089FFDD */  sb          $t1, -0x23($a0)
/* 01FE10 0041FE10 A088FFDE */  sb          $t0, -0x22($a0)
/* 01FE14 0041FE14 A086FFDF */  sb          $a2, -0x21($a0)
/* 01FE18 0041FE18 8CA7FFE0 */  lw          $a3, -0x20($a1)
/* 01FE1C 0041FE1C 00075A02 */  srl         $t3, $a3, 8
/* 01FE20 0041FE20 00076402 */  srl         $t4, $a3, 16
/* 01FE24 0041FE24 00076E02 */  srl         $t5, $a3, 24
/* 01FE28 0041FE28 A08DFFE0 */  sb          $t5, -0x20($a0)
/* 01FE2C 0041FE2C A08CFFE1 */  sb          $t4, -0x1F($a0)
/* 01FE30 0041FE30 A08BFFE2 */  sb          $t3, -0x1E($a0)
/* 01FE34 0041FE34 A087FFE3 */  sb          $a3, -0x1D($a0)
/* 01FE38 0041FE38 8CA3FFE4 */  lw          $v1, -0x1C($a1)
/* 01FE3C 0041FE3C 00037202 */  srl         $t6, $v1, 8
/* 01FE40 0041FE40 00037C02 */  srl         $t7, $v1, 16
/* 01FE44 0041FE44 0003C602 */  srl         $t8, $v1, 24
/* 01FE48 0041FE48 A098FFE4 */  sb          $t8, -0x1C($a0)
/* 01FE4C 0041FE4C A08FFFE5 */  sb          $t7, -0x1B($a0)
/* 01FE50 0041FE50 A08EFFE6 */  sb          $t6, -0x1A($a0)
/* 01FE54 0041FE54 A083FFE7 */  sb          $v1, -0x19($a0)
/* 01FE58 0041FE58 8CA6FFE8 */  lw          $a2, -0x18($a1)
/* 01FE5C 0041FE5C 0006CA02 */  srl         $t9, $a2, 8
/* 01FE60 0041FE60 00064402 */  srl         $t0, $a2, 16
/* 01FE64 0041FE64 00064E02 */  srl         $t1, $a2, 24
/* 01FE68 0041FE68 A089FFE8 */  sb          $t1, -0x18($a0)
/* 01FE6C 0041FE6C A088FFE9 */  sb          $t0, -0x17($a0)
/* 01FE70 0041FE70 A099FFEA */  sb          $t9, -0x16($a0)
/* 01FE74 0041FE74 A086FFEB */  sb          $a2, -0x15($a0)
/* 01FE78 0041FE78 8CA3FFEC */  lw          $v1, -0x14($a1)
/* 01FE7C 0041FE7C 00035202 */  srl         $t2, $v1, 8
/* 01FE80 0041FE80 00035C02 */  srl         $t3, $v1, 16
/* 01FE84 0041FE84 00036602 */  srl         $t4, $v1, 24
/* 01FE88 0041FE88 A08CFFEC */  sb          $t4, -0x14($a0)
/* 01FE8C 0041FE8C A08BFFED */  sb          $t3, -0x13($a0)
/* 01FE90 0041FE90 A08AFFEE */  sb          $t2, -0x12($a0)
/* 01FE94 0041FE94 A083FFEF */  sb          $v1, -0x11($a0)
/* 01FE98 0041FE98 8CA7FFF0 */  lw          $a3, -0x10($a1)
/* 01FE9C 0041FE9C 00076A02 */  srl         $t5, $a3, 8
/* 01FEA0 0041FEA0 00077402 */  srl         $t6, $a3, 16
/* 01FEA4 0041FEA4 00077E02 */  srl         $t7, $a3, 24
/* 01FEA8 0041FEA8 A08FFFF0 */  sb          $t7, -0x10($a0)
/* 01FEAC 0041FEAC A08EFFF1 */  sb          $t6, -0xF($a0)
/* 01FEB0 0041FEB0 A08DFFF2 */  sb          $t5, -0xE($a0)
/* 01FEB4 0041FEB4 A087FFF3 */  sb          $a3, -0xD($a0)
/* 01FEB8 0041FEB8 8CA3FFF4 */  lw          $v1, -0xC($a1)
/* 01FEBC 0041FEBC 0003C202 */  srl         $t8, $v1, 8
/* 01FEC0 0041FEC0 0003CC02 */  srl         $t9, $v1, 16
/* 01FEC4 0041FEC4 00034602 */  srl         $t0, $v1, 24
/* 01FEC8 0041FEC8 A088FFF4 */  sb          $t0, -0xC($a0)
/* 01FECC 0041FECC A099FFF5 */  sb          $t9, -0xB($a0)
/* 01FED0 0041FED0 A098FFF6 */  sb          $t8, -0xA($a0)
/* 01FED4 0041FED4 A083FFF7 */  sb          $v1, -0x9($a0)
/* 01FED8 0041FED8 8CA6FFF8 */  lw          $a2, -0x8($a1)
/* 01FEDC 0041FEDC 00064A02 */  srl         $t1, $a2, 8
/* 01FEE0 0041FEE0 00065402 */  srl         $t2, $a2, 16
/* 01FEE4 0041FEE4 00065E02 */  srl         $t3, $a2, 24
/* 01FEE8 0041FEE8 A08BFFF8 */  sb          $t3, -0x8($a0)
/* 01FEEC 0041FEEC A08AFFF9 */  sb          $t2, -0x7($a0)
/* 01FEF0 0041FEF0 A089FFFA */  sb          $t1, -0x6($a0)
/* 01FEF4 0041FEF4 A086FFFB */  sb          $a2, -0x5($a0)
/* 01FEF8 0041FEF8 8CA3FFFC */  lw          $v1, -0x4($a1)
/* 01FEFC 0041FEFC 00036202 */  srl         $t4, $v1, 8
/* 01FF00 0041FF00 00036C02 */  srl         $t5, $v1, 16
/* 01FF04 0041FF04 00037602 */  srl         $t6, $v1, 24
/* 01FF08 0041FF08 A08EFFFC */  sb          $t6, -0x4($a0)
/* 01FF0C 0041FF0C A08DFFFD */  sb          $t5, -0x3($a0)
/* 01FF10 0041FF10 A08CFFFE */  sb          $t4, -0x2($a0)
/* 01FF14 0041FF14 1420FFAD */  bnez        $at, .L0041FDCC
/* 01FF18 0041FF18 A083FFFF */   sb         $v1, -0x1($a0)
/* 01FF1C 0041FF1C 03E00008 */  jr          $ra
/* 01FF20 0041FF20 00000000 */   nop
