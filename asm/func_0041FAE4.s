glabel func_0041FAE4 # 140
/* 01FAE4 0041FAE4 000670C0 */  sll         $t6, $a2, 3
/* 01FAE8 0041FAE8 01C51021 */  addu        $v0, $t6, $a1
.L0041FAEC:
/* 01FAEC 0041FAEC 8CA30000 */  lw          $v1, 0x0($a1)
/* 01FAF0 0041FAF0 24A50008 */  addiu       $a1, $a1, 0x8
/* 01FAF4 0041FAF4 00A2082B */  sltu        $at, $a1, $v0
/* 01FAF8 0041FAF8 00037A02 */  srl         $t7, $v1, 8
/* 01FAFC 0041FAFC 0003C402 */  srl         $t8, $v1, 16
/* 01FB00 0041FB00 0003CE02 */  srl         $t9, $v1, 24
/* 01FB04 0041FB04 A0990000 */  sb          $t9, 0x0($a0)
/* 01FB08 0041FB08 A0980001 */  sb          $t8, 0x1($a0)
/* 01FB0C 0041FB0C A08F0002 */  sb          $t7, 0x2($a0)
/* 01FB10 0041FB10 A0830003 */  sb          $v1, 0x3($a0)
/* 01FB14 0041FB14 8CA6FFFC */  lw          $a2, -0x4($a1)
/* 01FB18 0041FB18 24840008 */  addiu       $a0, $a0, 0x8
/* 01FB1C 0041FB1C 00064202 */  srl         $t0, $a2, 8
/* 01FB20 0041FB20 00064C02 */  srl         $t1, $a2, 16
/* 01FB24 0041FB24 00065602 */  srl         $t2, $a2, 24
/* 01FB28 0041FB28 A08AFFFC */  sb          $t2, -0x4($a0)
/* 01FB2C 0041FB2C A089FFFD */  sb          $t1, -0x3($a0)
/* 01FB30 0041FB30 A088FFFE */  sb          $t0, -0x2($a0)
/* 01FB34 0041FB34 1420FFED */  bnez        $at, .L0041FAEC
/* 01FB38 0041FB38 A086FFFF */   sb         $a2, -0x1($a0)
/* 01FB3C 0041FB3C 03E00008 */  jr          $ra
/* 01FB40 0041FB40 00000000 */   nop
