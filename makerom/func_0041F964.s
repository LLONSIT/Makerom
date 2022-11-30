glabel func_0041F964 # 138
/* 01F964 0041F964 00067140 */  sll         $t6, $a2, 5
/* 01F968 0041F968 01C51021 */  addu        $v0, $t6, $a1
.L0041F96C:
/* 01F96C 0041F96C 8CA30000 */  lw          $v1, 0x0($a1)
/* 01F970 0041F970 24A50020 */  addiu       $a1, $a1, 0x20
/* 01F974 0041F974 00A2082B */  sltu        $at, $a1, $v0
/* 01F978 0041F978 00037A02 */  srl         $t7, $v1, 8
/* 01F97C 0041F97C 0003C402 */  srl         $t8, $v1, 16
/* 01F980 0041F980 0003CE02 */  srl         $t9, $v1, 24
/* 01F984 0041F984 A0990000 */  sb          $t9, 0x0($a0)
/* 01F988 0041F988 A0980001 */  sb          $t8, 0x1($a0)
/* 01F98C 0041F98C A08F0002 */  sb          $t7, 0x2($a0)
/* 01F990 0041F990 A0830003 */  sb          $v1, 0x3($a0)
/* 01F994 0041F994 8CA6FFE4 */  lw          $a2, -0x1C($a1)
/* 01F998 0041F998 24840020 */  addiu       $a0, $a0, 0x20
/* 01F99C 0041F99C 00064202 */  srl         $t0, $a2, 8
/* 01F9A0 0041F9A0 00064C02 */  srl         $t1, $a2, 16
/* 01F9A4 0041F9A4 00065602 */  srl         $t2, $a2, 24
/* 01F9A8 0041F9A8 A08AFFE4 */  sb          $t2, -0x1C($a0)
/* 01F9AC 0041F9AC A089FFE5 */  sb          $t1, -0x1B($a0)
/* 01F9B0 0041F9B0 A088FFE6 */  sb          $t0, -0x1A($a0)
/* 01F9B4 0041F9B4 A086FFE7 */  sb          $a2, -0x19($a0)
/* 01F9B8 0041F9B8 8CA7FFE8 */  lw          $a3, -0x18($a1)
/* 01F9BC 0041F9BC 00075A02 */  srl         $t3, $a3, 8
/* 01F9C0 0041F9C0 00076402 */  srl         $t4, $a3, 16
/* 01F9C4 0041F9C4 00076E02 */  srl         $t5, $a3, 24
/* 01F9C8 0041F9C8 A08DFFE8 */  sb          $t5, -0x18($a0)
/* 01F9CC 0041F9CC A08CFFE9 */  sb          $t4, -0x17($a0)
/* 01F9D0 0041F9D0 A08BFFEA */  sb          $t3, -0x16($a0)
/* 01F9D4 0041F9D4 A087FFEB */  sb          $a3, -0x15($a0)
/* 01F9D8 0041F9D8 8CA3FFEC */  lw          $v1, -0x14($a1)
/* 01F9DC 0041F9DC 00037202 */  srl         $t6, $v1, 8
/* 01F9E0 0041F9E0 00037C02 */  srl         $t7, $v1, 16
/* 01F9E4 0041F9E4 0003C602 */  srl         $t8, $v1, 24
/* 01F9E8 0041F9E8 A098FFEC */  sb          $t8, -0x14($a0)
/* 01F9EC 0041F9EC A08FFFED */  sb          $t7, -0x13($a0)
/* 01F9F0 0041F9F0 A08EFFEE */  sb          $t6, -0x12($a0)
/* 01F9F4 0041F9F4 A083FFEF */  sb          $v1, -0x11($a0)
/* 01F9F8 0041F9F8 8CA6FFF0 */  lw          $a2, -0x10($a1)
/* 01F9FC 0041F9FC 0006CA02 */  srl         $t9, $a2, 8
/* 01FA00 0041FA00 00064402 */  srl         $t0, $a2, 16
/* 01FA04 0041FA04 00064E02 */  srl         $t1, $a2, 24
/* 01FA08 0041FA08 A089FFF0 */  sb          $t1, -0x10($a0)
/* 01FA0C 0041FA0C A088FFF1 */  sb          $t0, -0xF($a0)
/* 01FA10 0041FA10 A099FFF2 */  sb          $t9, -0xE($a0)
/* 01FA14 0041FA14 A086FFF3 */  sb          $a2, -0xD($a0)
/* 01FA18 0041FA18 8CA3FFF4 */  lw          $v1, -0xC($a1)
/* 01FA1C 0041FA1C 00035202 */  srl         $t2, $v1, 8
/* 01FA20 0041FA20 00035C02 */  srl         $t3, $v1, 16
/* 01FA24 0041FA24 00036602 */  srl         $t4, $v1, 24
/* 01FA28 0041FA28 A08CFFF4 */  sb          $t4, -0xC($a0)
/* 01FA2C 0041FA2C A08BFFF5 */  sb          $t3, -0xB($a0)
/* 01FA30 0041FA30 A08AFFF6 */  sb          $t2, -0xA($a0)
/* 01FA34 0041FA34 A083FFF7 */  sb          $v1, -0x9($a0)
/* 01FA38 0041FA38 8CA7FFF8 */  lw          $a3, -0x8($a1)
/* 01FA3C 0041FA3C 00076A02 */  srl         $t5, $a3, 8
/* 01FA40 0041FA40 00077402 */  srl         $t6, $a3, 16
/* 01FA44 0041FA44 00077E02 */  srl         $t7, $a3, 24
/* 01FA48 0041FA48 A08FFFF8 */  sb          $t7, -0x8($a0)
/* 01FA4C 0041FA4C A08EFFF9 */  sb          $t6, -0x7($a0)
/* 01FA50 0041FA50 A08DFFFA */  sb          $t5, -0x6($a0)
/* 01FA54 0041FA54 A087FFFB */  sb          $a3, -0x5($a0)
/* 01FA58 0041FA58 8CA3FFFC */  lw          $v1, -0x4($a1)
/* 01FA5C 0041FA5C 0003C202 */  srl         $t8, $v1, 8
/* 01FA60 0041FA60 0003CC02 */  srl         $t9, $v1, 16
/* 01FA64 0041FA64 00034602 */  srl         $t0, $v1, 24
/* 01FA68 0041FA68 A088FFFC */  sb          $t0, -0x4($a0)
/* 01FA6C 0041FA6C A099FFFD */  sb          $t9, -0x3($a0)
/* 01FA70 0041FA70 A098FFFE */  sb          $t8, -0x2($a0)
/* 01FA74 0041FA74 1420FFBD */  bnez        $at, .L0041F96C
/* 01FA78 0041FA78 A083FFFF */   sb         $v1, -0x1($a0)
/* 01FA7C 0041FA7C 03E00008 */  jr          $ra
/* 01FA80 0041FA80 00000000 */   nop
