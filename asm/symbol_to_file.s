glabel symbol_to_file # 532
# _gp_disp: 0xFBEEF40
.set noreorder; .cpload $t9; # .set reorder
/* 02EE0C 0042EE0C 8C8300D8 */  lw          $v1, 0xD8($a0)
/* 02EE10 0042EE10 00057900 */  sll         $t7, $a1, 4
/* 02EE14 0042EE14 00A3082B */  sltu        $at, $a1, $v1
/* 02EE18 0042EE18 1420000A */  bnez        $at, .L0042EE44
/* 02EE1C 0042EE1C 00000000 */   nop
/* 02EE20 0042EE20 8C8E00AC */  lw          $t6, 0xAC($a0)
/* 02EE24 0042EE24 0003C900 */  sll         $t9, $v1, 4
/* 02EE28 0042EE28 00194823 */  negu        $t1, $t9
/* 02EE2C 0042EE2C 01CFC021 */  addu        $t8, $t6, $t7
/* 02EE30 0042EE30 03095021 */  addu        $t2, $t8, $t1
/* 02EE34 0042EE34 954B0002 */  lhu         $t3, 0x2($t2)
/* 02EE38 0042EE38 8C8C00D0 */  lw          $t4, 0xD0($a0)
/* 02EE3C 0042EE3C 03E00008 */  jr          $ra
/* 02EE40 0042EE40 016C1021 */   addu       $v0, $t3, $t4
.L0042EE44:
/* 02EE44 0042EE44 8F838030 */  lw          $v1, %got(B_1001A570)($gp)
/* 02EE48 0042EE48 8C82009C */  lw          $v0, 0x9C($a0)
/* 02EE4C 0042EE4C 8C8D00CC */  lw          $t5, 0xCC($a0)
/* 02EE50 0042EE50 8C63A570 */  lw          $v1, %lo(B_1001A570)($v1)
/* 02EE54 0042EE54 8C460048 */  lw          $a2, 0x48($v0)
/* 02EE58 0042EE58 00AD2823 */  subu        $a1, $a1, $t5
/* 02EE5C 0042EE5C 000378C0 */  sll         $t7, $v1, 3
/* 02EE60 0042EE60 0066082A */  slt         $at, $v1, $a2
/* 02EE64 0042EE64 50200012 */  beql        $at, $zero, .L0042EEB0
/* 02EE68 0042EE68 8C4A0020 */   lw         $t2, 0x20($v0)
/* 02EE6C 0042EE6C 8C8E00A0 */  lw          $t6, 0xA0($a0)
/* 02EE70 0042EE70 01E37821 */  addu        $t7, $t7, $v1
/* 02EE74 0042EE74 000F78C0 */  sll         $t7, $t7, 3
/* 02EE78 0042EE78 01CF3821 */  addu        $a3, $t6, $t7
/* 02EE7C 0042EE7C 8CE80010 */  lw          $t0, 0x10($a3)
/* 02EE80 0042EE80 00A8082B */  sltu        $at, $a1, $t0
/* 02EE84 0042EE84 5420000A */  bnel        $at, $zero, .L0042EEB0
/* 02EE88 0042EE88 8C4A0020 */   lw         $t2, 0x20($v0)
/* 02EE8C 0042EE8C 8CF90014 */  lw          $t9, 0x14($a3)
/* 02EE90 0042EE90 0328C021 */  addu        $t8, $t9, $t0
/* 02EE94 0042EE94 00B8082B */  sltu        $at, $a1, $t8
/* 02EE98 0042EE98 50200005 */  beql        $at, $zero, .L0042EEB0
/* 02EE9C 0042EE9C 8C4A0020 */   lw         $t2, 0x20($v0)
/* 02EEA0 0042EEA0 8C8900D0 */  lw          $t1, 0xD0($a0)
/* 02EEA4 0042EEA4 03E00008 */  jr          $ra
/* 02EEA8 0042EEA8 00691021 */   addu       $v0, $v1, $t1
/* 02EEAC 0042EEAC 8C4A0020 */  lw          $t2, 0x20($v0)
.L0042EEB0:
/* 02EEB0 0042EEB0 00AA082B */  sltu        $at, $a1, $t2
/* 02EEB4 0042EEB4 14200003 */  bnez        $at, .L0042EEC4
/* 02EEB8 0042EEB8 00000000 */   nop
/* 02EEBC 0042EEBC 03E00008 */  jr          $ra
/* 02EEC0 0042EEC0 2402FFFF */   addiu      $v0, $zero, -0x1
.L0042EEC4:
/* 02EEC4 0042EEC4 8F818030 */  lw          $at, %got(B_1001A570)($gp)
/* 02EEC8 0042EEC8 00001825 */  move        $v1, $zero
/* 02EECC 0042EECC 18C00016 */  blez        $a2, .L0042EF28
/* 02EED0 0042EED0 AC20A570 */   sw         $zero, %lo(B_1001A570)($at)
/* 02EED4 0042EED4 8C8700A0 */  lw          $a3, 0xA0($a0)
.L0042EED8:
/* 02EED8 0042EED8 8CE80010 */  lw          $t0, 0x10($a3)
/* 02EEDC 0042EEDC 00A8082B */  sltu        $at, $a1, $t0
/* 02EEE0 0042EEE0 5420000C */  bnel        $at, $zero, .L0042EF14
/* 02EEE4 0042EEE4 24630001 */   addiu      $v1, $v1, 0x1
/* 02EEE8 0042EEE8 8CEB0014 */  lw          $t3, 0x14($a3)
/* 02EEEC 0042EEEC 01686021 */  addu        $t4, $t3, $t0
/* 02EEF0 0042EEF0 00AC082B */  sltu        $at, $a1, $t4
/* 02EEF4 0042EEF4 50200007 */  beql        $at, $zero, .L0042EF14
/* 02EEF8 0042EEF8 24630001 */   addiu      $v1, $v1, 0x1
/* 02EEFC 0042EEFC 8C8D00D0 */  lw          $t5, 0xD0($a0)
/* 02EF00 0042EF00 8F818030 */  lw          $at, %got(B_1001A570)($gp)
/* 02EF04 0042EF04 006D1021 */  addu        $v0, $v1, $t5
/* 02EF08 0042EF08 03E00008 */  jr          $ra
/* 02EF0C 0042EF0C AC23A570 */   sw         $v1, %lo(B_1001A570)($at)
/* 02EF10 0042EF10 24630001 */  addiu       $v1, $v1, 0x1
.L0042EF14:
/* 02EF14 0042EF14 0066082A */  slt         $at, $v1, $a2
/* 02EF18 0042EF18 1420FFEF */  bnez        $at, .L0042EED8
/* 02EF1C 0042EF1C 24E70048 */   addiu      $a3, $a3, 0x48
/* 02EF20 0042EF20 8F818030 */  lw          $at, %got(B_1001A570)($gp)
/* 02EF24 0042EF24 AC23A570 */  sw          $v1, %lo(B_1001A570)($at)
.L0042EF28:
/* 02EF28 0042EF28 2402FFFF */  addiu       $v0, $zero, -0x1
/* 02EF2C 0042EF2C 03E00008 */  jr          $ra
/* 02EF30 0042EF30 00000000 */   nop
