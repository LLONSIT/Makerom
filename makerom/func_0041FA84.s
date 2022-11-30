glabel func_0041FA84 # 139
/* 01FA84 0041FA84 000670C0 */  sll         $t6, $a2, 3
/* 01FA88 0041FA88 01C51021 */  addu        $v0, $t6, $a1
.L0041FA8C:
/* 01FA8C 0041FA8C 8CA30000 */  lw          $v1, 0x0($a1)
/* 01FA90 0041FA90 24A50008 */  addiu       $a1, $a1, 0x8
/* 01FA94 0041FA94 00A2082B */  sltu        $at, $a1, $v0
/* 01FA98 0041FA98 00037A02 */  srl         $t7, $v1, 8
/* 01FA9C 0041FA9C 0003C402 */  srl         $t8, $v1, 16
/* 01FAA0 0041FAA0 0003CE02 */  srl         $t9, $v1, 24
/* 01FAA4 0041FAA4 A0990003 */  sb          $t9, 0x3($a0)
/* 01FAA8 0041FAA8 A0980002 */  sb          $t8, 0x2($a0)
/* 01FAAC 0041FAAC A08F0001 */  sb          $t7, 0x1($a0)
/* 01FAB0 0041FAB0 A0830000 */  sb          $v1, 0x0($a0)
/* 01FAB4 0041FAB4 8CA6FFFC */  lw          $a2, -0x4($a1)
/* 01FAB8 0041FAB8 24840008 */  addiu       $a0, $a0, 0x8
/* 01FABC 0041FABC 00064202 */  srl         $t0, $a2, 8
/* 01FAC0 0041FAC0 00064C02 */  srl         $t1, $a2, 16
/* 01FAC4 0041FAC4 00065602 */  srl         $t2, $a2, 24
/* 01FAC8 0041FAC8 A08AFFFF */  sb          $t2, -0x1($a0)
/* 01FACC 0041FACC A089FFFE */  sb          $t1, -0x2($a0)
/* 01FAD0 0041FAD0 A088FFFD */  sb          $t0, -0x3($a0)
/* 01FAD4 0041FAD4 1420FFED */  bnez        $at, .L0041FA8C
/* 01FAD8 0041FAD8 A086FFFC */   sb         $a2, -0x4($a0)
/* 01FADC 0041FADC 03E00008 */  jr          $ra
/* 01FAE0 0041FAE0 00000000 */   nop
