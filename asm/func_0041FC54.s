glabel func_0041FC54 # 143
/* 01FC54 0041FC54 00067080 */  sll         $t6, $a2, 2
/* 01FC58 0041FC58 01C67021 */  addu        $t6, $t6, $a2
/* 01FC5C 0041FC5C 000E70C0 */  sll         $t6, $t6, 3
/* 01FC60 0041FC60 01C51021 */  addu        $v0, $t6, $a1
.L0041FC64:
/* 01FC64 0041FC64 8CA30000 */  lw          $v1, 0x0($a1)
/* 01FC68 0041FC68 24A50028 */  addiu       $a1, $a1, 0x28
/* 01FC6C 0041FC6C 00A2082B */  sltu        $at, $a1, $v0
/* 01FC70 0041FC70 00037A02 */  srl         $t7, $v1, 8
/* 01FC74 0041FC74 0003C402 */  srl         $t8, $v1, 16
/* 01FC78 0041FC78 0003CE02 */  srl         $t9, $v1, 24
/* 01FC7C 0041FC7C A0990003 */  sb          $t9, 0x3($a0)
/* 01FC80 0041FC80 A0980002 */  sb          $t8, 0x2($a0)
/* 01FC84 0041FC84 A08F0001 */  sb          $t7, 0x1($a0)
/* 01FC88 0041FC88 A0830000 */  sb          $v1, 0x0($a0)
/* 01FC8C 0041FC8C 8CA6FFDC */  lw          $a2, -0x24($a1)
/* 01FC90 0041FC90 24840028 */  addiu       $a0, $a0, 0x28
/* 01FC94 0041FC94 00064202 */  srl         $t0, $a2, 8
/* 01FC98 0041FC98 00064C02 */  srl         $t1, $a2, 16
/* 01FC9C 0041FC9C 00065602 */  srl         $t2, $a2, 24
/* 01FCA0 0041FCA0 A08AFFDF */  sb          $t2, -0x21($a0)
/* 01FCA4 0041FCA4 A089FFDE */  sb          $t1, -0x22($a0)
/* 01FCA8 0041FCA8 A088FFDD */  sb          $t0, -0x23($a0)
/* 01FCAC 0041FCAC A086FFDC */  sb          $a2, -0x24($a0)
/* 01FCB0 0041FCB0 8CA7FFE0 */  lw          $a3, -0x20($a1)
/* 01FCB4 0041FCB4 00075A02 */  srl         $t3, $a3, 8
/* 01FCB8 0041FCB8 00076402 */  srl         $t4, $a3, 16
/* 01FCBC 0041FCBC 00076E02 */  srl         $t5, $a3, 24
/* 01FCC0 0041FCC0 A08DFFE3 */  sb          $t5, -0x1D($a0)
/* 01FCC4 0041FCC4 A08CFFE2 */  sb          $t4, -0x1E($a0)
/* 01FCC8 0041FCC8 A08BFFE1 */  sb          $t3, -0x1F($a0)
/* 01FCCC 0041FCCC A087FFE0 */  sb          $a3, -0x20($a0)
/* 01FCD0 0041FCD0 8CA3FFE4 */  lw          $v1, -0x1C($a1)
/* 01FCD4 0041FCD4 00037202 */  srl         $t6, $v1, 8
/* 01FCD8 0041FCD8 00037C02 */  srl         $t7, $v1, 16
/* 01FCDC 0041FCDC 0003C602 */  srl         $t8, $v1, 24
/* 01FCE0 0041FCE0 A098FFE7 */  sb          $t8, -0x19($a0)
/* 01FCE4 0041FCE4 A08FFFE6 */  sb          $t7, -0x1A($a0)
/* 01FCE8 0041FCE8 A08EFFE5 */  sb          $t6, -0x1B($a0)
/* 01FCEC 0041FCEC A083FFE4 */  sb          $v1, -0x1C($a0)
/* 01FCF0 0041FCF0 8CA6FFE8 */  lw          $a2, -0x18($a1)
/* 01FCF4 0041FCF4 0006CA02 */  srl         $t9, $a2, 8
/* 01FCF8 0041FCF8 00064402 */  srl         $t0, $a2, 16
/* 01FCFC 0041FCFC 00064E02 */  srl         $t1, $a2, 24
/* 01FD00 0041FD00 A089FFEB */  sb          $t1, -0x15($a0)
/* 01FD04 0041FD04 A088FFEA */  sb          $t0, -0x16($a0)
/* 01FD08 0041FD08 A099FFE9 */  sb          $t9, -0x17($a0)
/* 01FD0C 0041FD0C A086FFE8 */  sb          $a2, -0x18($a0)
/* 01FD10 0041FD10 8CA3FFEC */  lw          $v1, -0x14($a1)
/* 01FD14 0041FD14 00035202 */  srl         $t2, $v1, 8
/* 01FD18 0041FD18 00035C02 */  srl         $t3, $v1, 16
/* 01FD1C 0041FD1C 00036602 */  srl         $t4, $v1, 24
/* 01FD20 0041FD20 A08CFFEF */  sb          $t4, -0x11($a0)
/* 01FD24 0041FD24 A08BFFEE */  sb          $t3, -0x12($a0)
/* 01FD28 0041FD28 A08AFFED */  sb          $t2, -0x13($a0)
/* 01FD2C 0041FD2C A083FFEC */  sb          $v1, -0x14($a0)
/* 01FD30 0041FD30 8CA7FFF0 */  lw          $a3, -0x10($a1)
/* 01FD34 0041FD34 00076A02 */  srl         $t5, $a3, 8
/* 01FD38 0041FD38 00077402 */  srl         $t6, $a3, 16
/* 01FD3C 0041FD3C 00077E02 */  srl         $t7, $a3, 24
/* 01FD40 0041FD40 A08FFFF3 */  sb          $t7, -0xD($a0)
/* 01FD44 0041FD44 A08EFFF2 */  sb          $t6, -0xE($a0)
/* 01FD48 0041FD48 A08DFFF1 */  sb          $t5, -0xF($a0)
/* 01FD4C 0041FD4C A087FFF0 */  sb          $a3, -0x10($a0)
/* 01FD50 0041FD50 8CA3FFF4 */  lw          $v1, -0xC($a1)
/* 01FD54 0041FD54 0003C202 */  srl         $t8, $v1, 8
/* 01FD58 0041FD58 0003CC02 */  srl         $t9, $v1, 16
/* 01FD5C 0041FD5C 00034602 */  srl         $t0, $v1, 24
/* 01FD60 0041FD60 A088FFF7 */  sb          $t0, -0x9($a0)
/* 01FD64 0041FD64 A099FFF6 */  sb          $t9, -0xA($a0)
/* 01FD68 0041FD68 A098FFF5 */  sb          $t8, -0xB($a0)
/* 01FD6C 0041FD6C A083FFF4 */  sb          $v1, -0xC($a0)
/* 01FD70 0041FD70 8CA6FFF8 */  lw          $a2, -0x8($a1)
/* 01FD74 0041FD74 00064A02 */  srl         $t1, $a2, 8
/* 01FD78 0041FD78 00065402 */  srl         $t2, $a2, 16
/* 01FD7C 0041FD7C 00065E02 */  srl         $t3, $a2, 24
/* 01FD80 0041FD80 A08BFFFB */  sb          $t3, -0x5($a0)
/* 01FD84 0041FD84 A08AFFFA */  sb          $t2, -0x6($a0)
/* 01FD88 0041FD88 A089FFF9 */  sb          $t1, -0x7($a0)
/* 01FD8C 0041FD8C A086FFF8 */  sb          $a2, -0x8($a0)
/* 01FD90 0041FD90 8CA3FFFC */  lw          $v1, -0x4($a1)
/* 01FD94 0041FD94 00036202 */  srl         $t4, $v1, 8
/* 01FD98 0041FD98 00036C02 */  srl         $t5, $v1, 16
/* 01FD9C 0041FD9C 00037602 */  srl         $t6, $v1, 24
/* 01FDA0 0041FDA0 A08EFFFF */  sb          $t6, -0x1($a0)
/* 01FDA4 0041FDA4 A08DFFFE */  sb          $t5, -0x2($a0)
/* 01FDA8 0041FDA8 A08CFFFD */  sb          $t4, -0x3($a0)
/* 01FDAC 0041FDAC 1420FFAD */  bnez        $at, .L0041FC64
/* 01FDB0 0041FDB0 A083FFFC */   sb         $v1, -0x4($a0)
/* 01FDB4 0041FDB4 03E00008 */  jr          $ra
/* 01FDB8 0041FDB8 00000000 */   nop
