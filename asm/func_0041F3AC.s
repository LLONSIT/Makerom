glabel func_0041F3AC # 130
/* 01F3AC 0041F3AC 000670C0 */  sll         $t6, $a2, 3
/* 01F3B0 0041F3B0 01C51021 */  addu        $v0, $t6, $a1
.L0041F3B4:
/* 01F3B4 0041F3B4 8CA30000 */  lw          $v1, 0x0($a1)
/* 01F3B8 0041F3B8 24A50008 */  addiu       $a1, $a1, 0x8
/* 01F3BC 0041F3BC 00A2082B */  sltu        $at, $a1, $v0
/* 01F3C0 0041F3C0 00037A02 */  srl         $t7, $v1, 8
/* 01F3C4 0041F3C4 0003C402 */  srl         $t8, $v1, 16
/* 01F3C8 0041F3C8 0003CE02 */  srl         $t9, $v1, 24
/* 01F3CC 0041F3CC A0990000 */  sb          $t9, 0x0($a0)
/* 01F3D0 0041F3D0 A0980001 */  sb          $t8, 0x1($a0)
/* 01F3D4 0041F3D4 A08F0002 */  sb          $t7, 0x2($a0)
/* 01F3D8 0041F3D8 A0830003 */  sb          $v1, 0x3($a0)
/* 01F3DC 0041F3DC 8CA6FFFC */  lw          $a2, -0x4($a1)
/* 01F3E0 0041F3E0 24840008 */  addiu       $a0, $a0, 0x8
/* 01F3E4 0041F3E4 00064202 */  srl         $t0, $a2, 8
/* 01F3E8 0041F3E8 00064C02 */  srl         $t1, $a2, 16
/* 01F3EC 0041F3EC 00065602 */  srl         $t2, $a2, 24
/* 01F3F0 0041F3F0 A08AFFFC */  sb          $t2, -0x4($a0)
/* 01F3F4 0041F3F4 A089FFFD */  sb          $t1, -0x3($a0)
/* 01F3F8 0041F3F8 A088FFFE */  sb          $t0, -0x2($a0)
/* 01F3FC 0041F3FC 1420FFED */  bnez        $at, .L0041F3B4
/* 01F400 0041F400 A086FFFF */   sb         $a2, -0x1($a0)
/* 01F404 0041F404 03E00008 */  jr          $ra
/* 01F408 0041F408 00000000 */   nop
