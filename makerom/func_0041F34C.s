glabel func_0041F34C # 129
/* 01F34C 0041F34C 000670C0 */  sll         $t6, $a2, 3
/* 01F350 0041F350 01C51021 */  addu        $v0, $t6, $a1
.L0041F354:
/* 01F354 0041F354 8CA30000 */  lw          $v1, 0x0($a1)
/* 01F358 0041F358 24A50008 */  addiu       $a1, $a1, 0x8
/* 01F35C 0041F35C 00A2082B */  sltu        $at, $a1, $v0
/* 01F360 0041F360 00037A02 */  srl         $t7, $v1, 8
/* 01F364 0041F364 0003C402 */  srl         $t8, $v1, 16
/* 01F368 0041F368 0003CE02 */  srl         $t9, $v1, 24
/* 01F36C 0041F36C A0990003 */  sb          $t9, 0x3($a0)
/* 01F370 0041F370 A0980002 */  sb          $t8, 0x2($a0)
/* 01F374 0041F374 A08F0001 */  sb          $t7, 0x1($a0)
/* 01F378 0041F378 A0830000 */  sb          $v1, 0x0($a0)
/* 01F37C 0041F37C 8CA6FFFC */  lw          $a2, -0x4($a1)
/* 01F380 0041F380 24840008 */  addiu       $a0, $a0, 0x8
/* 01F384 0041F384 00064202 */  srl         $t0, $a2, 8
/* 01F388 0041F388 00064C02 */  srl         $t1, $a2, 16
/* 01F38C 0041F38C 00065602 */  srl         $t2, $a2, 24
/* 01F390 0041F390 A08AFFFF */  sb          $t2, -0x1($a0)
/* 01F394 0041F394 A089FFFE */  sb          $t1, -0x2($a0)
/* 01F398 0041F398 A088FFFD */  sb          $t0, -0x3($a0)
/* 01F39C 0041F39C 1420FFED */  bnez        $at, .L0041F354
/* 01F3A0 0041F3A0 A086FFFC */   sb         $a2, -0x4($a0)
/* 01F3A4 0041F3A4 03E00008 */  jr          $ra
/* 01F3A8 0041F3A8 00000000 */   nop
