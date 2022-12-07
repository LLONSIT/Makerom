glabel func_0041FFA4 # 147
/* 01FFA4 0041FFA4 00067100 */  sll         $t6, $a2, 4
/* 01FFA8 0041FFA8 01C51021 */  addu        $v0, $t6, $a1
.L0041FFAC:
/* 01FFAC 0041FFAC 8CA30000 */  lw          $v1, 0x0($a1)
/* 01FFB0 0041FFB0 24A50010 */  addiu       $a1, $a1, 0x10
/* 01FFB4 0041FFB4 00A2082B */  sltu        $at, $a1, $v0
/* 01FFB8 0041FFB8 00037A02 */  srl         $t7, $v1, 8
/* 01FFBC 0041FFBC 0003C402 */  srl         $t8, $v1, 16
/* 01FFC0 0041FFC0 0003CE02 */  srl         $t9, $v1, 24
/* 01FFC4 0041FFC4 A0990003 */  sb          $t9, 0x3($a0)
/* 01FFC8 0041FFC8 A0980002 */  sb          $t8, 0x2($a0)
/* 01FFCC 0041FFCC A08F0001 */  sb          $t7, 0x1($a0)
/* 01FFD0 0041FFD0 A0830000 */  sb          $v1, 0x0($a0)
/* 01FFD4 0041FFD4 8CA6FFF4 */  lw          $a2, -0xC($a1)
/* 01FFD8 0041FFD8 24840010 */  addiu       $a0, $a0, 0x10
/* 01FFDC 0041FFDC 00064202 */  srl         $t0, $a2, 8
/* 01FFE0 0041FFE0 00064C02 */  srl         $t1, $a2, 16
/* 01FFE4 0041FFE4 00065602 */  srl         $t2, $a2, 24
/* 01FFE8 0041FFE8 A08AFFF7 */  sb          $t2, -0x9($a0)
/* 01FFEC 0041FFEC A089FFF6 */  sb          $t1, -0xA($a0)
/* 01FFF0 0041FFF0 A088FFF5 */  sb          $t0, -0xB($a0)
/* 01FFF4 0041FFF4 A086FFF4 */  sb          $a2, -0xC($a0)
/* 01FFF8 0041FFF8 8CA7FFF8 */  lw          $a3, -0x8($a1)
/* 01FFFC 0041FFFC 00075A02 */  srl         $t3, $a3, 8
/* 020000 00420000 00076402 */  srl         $t4, $a3, 16
/* 020004 00420004 00076E02 */  srl         $t5, $a3, 24
/* 020008 00420008 A08DFFFB */  sb          $t5, -0x5($a0)
/* 02000C 0042000C A08CFFFA */  sb          $t4, -0x6($a0)
/* 020010 00420010 A08BFFF9 */  sb          $t3, -0x7($a0)
/* 020014 00420014 A087FFF8 */  sb          $a3, -0x8($a0)
/* 020018 00420018 90AEFFFC */  lbu         $t6, -0x4($a1)
/* 02001C 0042001C A08EFFFC */  sb          $t6, -0x4($a0)
/* 020020 00420020 90AFFFFD */  lbu         $t7, -0x3($a1)
/* 020024 00420024 A08FFFFD */  sb          $t7, -0x3($a0)
/* 020028 00420028 94A3FFFE */  lhu         $v1, -0x2($a1)
/* 02002C 0042002C 0003C203 */  sra         $t8, $v1, 8
/* 020030 00420030 A098FFFF */  sb          $t8, -0x1($a0)
/* 020034 00420034 1420FFDD */  bnez        $at, .L0041FFAC
/* 020038 00420038 A083FFFE */   sb         $v1, -0x2($a0)
/* 02003C 0042003C 03E00008 */  jr          $ra
/* 020040 00420040 00000000 */   nop
