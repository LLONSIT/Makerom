glabel swap_liblist # 516
/* 02DC90 0042DC90 AFA50004 */  sw          $a1, 0x4($sp)
/* 02DC94 0042DC94 8C820000 */  lw          $v0, 0x0($a0)
/* 02DC98 0042DC98 8C830004 */  lw          $v1, 0x4($a0)
/* 02DC9C 0042DC9C 3C0700FF */  lui         $a3, (0xFF0000 >> 16)
/* 02DCA0 0042DCA0 00027A00 */  sll         $t7, $v0, 8
/* 02DCA4 0042DCA4 01E7C024 */  and         $t8, $t7, $a3
/* 02DCA8 0042DCA8 00027600 */  sll         $t6, $v0, 24
/* 02DCAC 0042DCAC 00024202 */  srl         $t0, $v0, 8
/* 02DCB0 0042DCB0 3109FF00 */  andi        $t1, $t0, 0xFF00
/* 02DCB4 0042DCB4 01D8C825 */  or          $t9, $t6, $t8
/* 02DCB8 0042DCB8 8C850008 */  lw          $a1, 0x8($a0)
/* 02DCBC 0042DCBC 03295025 */  or          $t2, $t9, $t1
/* 02DCC0 0042DCC0 00025E02 */  srl         $t3, $v0, 24
/* 02DCC4 0042DCC4 00037A00 */  sll         $t7, $v1, 8
/* 02DCC8 0042DCC8 014B6025 */  or          $t4, $t2, $t3
/* 02DCCC 0042DCCC 01E77024 */  and         $t6, $t7, $a3
/* 02DCD0 0042DCD0 00036E00 */  sll         $t5, $v1, 24
/* 02DCD4 0042DCD4 01AEC025 */  or          $t8, $t5, $t6
/* 02DCD8 0042DCD8 00034202 */  srl         $t0, $v1, 8
/* 02DCDC 0042DCDC 8C86000C */  lw          $a2, 0xC($a0)
/* 02DCE0 0042DCE0 AC8C0000 */  sw          $t4, 0x0($a0)
/* 02DCE4 0042DCE4 3119FF00 */  andi        $t9, $t0, 0xFF00
/* 02DCE8 0042DCE8 00057A00 */  sll         $t7, $a1, 8
/* 02DCEC 0042DCEC 03194825 */  or          $t1, $t8, $t9
/* 02DCF0 0042DCF0 01E76824 */  and         $t5, $t7, $a3
/* 02DCF4 0042DCF4 00035602 */  srl         $t2, $v1, 24
/* 02DCF8 0042DCF8 00056600 */  sll         $t4, $a1, 24
/* 02DCFC 0042DCFC 012A5825 */  or          $t3, $t1, $t2
/* 02DD00 0042DD00 018D7025 */  or          $t6, $t4, $t5
/* 02DD04 0042DD04 00054202 */  srl         $t0, $a1, 8
/* 02DD08 0042DD08 3118FF00 */  andi        $t8, $t0, 0xFF00
/* 02DD0C 0042DD0C 8C820010 */  lw          $v0, 0x10($a0)
/* 02DD10 0042DD10 AC8B0004 */  sw          $t3, 0x4($a0)
/* 02DD14 0042DD14 01D8C825 */  or          $t9, $t6, $t8
/* 02DD18 0042DD18 00067A00 */  sll         $t7, $a2, 8
/* 02DD1C 0042DD1C 01E76024 */  and         $t4, $t7, $a3
/* 02DD20 0042DD20 00054E02 */  srl         $t1, $a1, 24
/* 02DD24 0042DD24 00065E00 */  sll         $t3, $a2, 24
/* 02DD28 0042DD28 00064202 */  srl         $t0, $a2, 8
/* 02DD2C 0042DD2C 03295025 */  or          $t2, $t9, $t1
/* 02DD30 0042DD30 310EFF00 */  andi        $t6, $t0, 0xFF00
/* 02DD34 0042DD34 016C6825 */  or          $t5, $t3, $t4
/* 02DD38 0042DD38 01AEC025 */  or          $t8, $t5, $t6
/* 02DD3C 0042DD3C AC8A0008 */  sw          $t2, 0x8($a0)
/* 02DD40 0042DD40 00027A00 */  sll         $t7, $v0, 8
/* 02DD44 0042DD44 01E75824 */  and         $t3, $t7, $a3
/* 02DD48 0042DD48 0006CE02 */  srl         $t9, $a2, 24
/* 02DD4C 0042DD4C 00025600 */  sll         $t2, $v0, 24
/* 02DD50 0042DD50 00024202 */  srl         $t0, $v0, 8
/* 02DD54 0042DD54 03194825 */  or          $t1, $t8, $t9
/* 02DD58 0042DD58 310DFF00 */  andi        $t5, $t0, 0xFF00
/* 02DD5C 0042DD5C 014B6025 */  or          $t4, $t2, $t3
/* 02DD60 0042DD60 018D7025 */  or          $t6, $t4, $t5
/* 02DD64 0042DD64 0002C602 */  srl         $t8, $v0, 24
/* 02DD68 0042DD68 01D8C825 */  or          $t9, $t6, $t8
/* 02DD6C 0042DD6C AC89000C */  sw          $t1, 0xC($a0)
/* 02DD70 0042DD70 03E00008 */  jr          $ra
/* 02DD74 0042DD74 AC990010 */   sw         $t9, 0x10($a0)
