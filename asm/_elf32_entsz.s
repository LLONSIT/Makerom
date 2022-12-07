glabel _elf32_entsz # 119
# _gp_disp: 0xFBFEF50
.set noreorder; .cpload $t9; # .set reorder
/* 01EDFC 0041EDFC 2C81000C */  sltiu       $at, $a0, 0xC
/* 01EE00 0041EE00 1020000D */  beqz        $at, .L0041EE38
/* 01EE04 0041EE04 00057080 */   sll        $t6, $a1, 2
/* 01EE08 0041EE08 8F99802C */  lw          $t9, %got(RO_10011828)($gp)
/* 01EE0C 0041EE0C 01C57023 */  subu        $t6, $t6, $a1
/* 01EE10 0041EE10 000E7100 */  sll         $t6, $t6, 4
/* 01EE14 0041EE14 00047880 */  sll         $t7, $a0, 2
/* 01EE18 0041EE18 01CFC021 */  addu        $t8, $t6, $t7
/* 01EE1C 0041EE1C 27391828 */  addiu       $t9, $t9, %lo(RO_10011828)
/* 01EE20 0041EE20 03194021 */  addu        $t0, $t8, $t9
/* 01EE24 0041EE24 8D03FFD0 */  lw          $v1, -0x30($t0)
/* 01EE28 0041EE28 00054900 */  sll         $t1, $a1, 4
/* 01EE2C 0041EE2C 01254823 */  subu        $t1, $t1, $a1
/* 01EE30 0041EE30 14600003 */  bnez        $v1, .L0041EE40
/* 01EE34 0041EE34 000948C0 */   sll        $t1, $t1, 3
.L0041EE38:
/* 01EE38 0041EE38 03E00008 */  jr          $ra
/* 01EE3C 0041EE3C 00001025 */   move       $v0, $zero
.L0041EE40:
/* 01EE40 0041EE40 8F8C802C */  lw          $t4, %got(RO_100117B0)($gp)
/* 01EE44 0041EE44 000350C0 */  sll         $t2, $v1, 3
/* 01EE48 0041EE48 012A5821 */  addu        $t3, $t1, $t2
/* 01EE4C 0041EE4C 258C17B0 */  addiu       $t4, $t4, %lo(RO_100117B0)
/* 01EE50 0041EE50 016C6821 */  addu        $t5, $t3, $t4
/* 01EE54 0041EE54 8DA2FF88 */  lw          $v0, -0x78($t5)
/* 01EE58 0041EE58 03E00008 */  jr          $ra
/* 01EE5C 0041EE5C 00000000 */   nop
