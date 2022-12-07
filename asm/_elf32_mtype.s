glabel _elf32_mtype # 122
# _gp_disp: 0xFBFEE2C
.set noreorder; .cpload $t9; # .set reorder
/* 01EF20 0041EF20 2C81000C */  sltiu       $at, $a0, 0xC
/* 01EF24 0041EF24 14200003 */  bnez        $at, .L0041EF34
/* 01EF28 0041EF28 00057080 */   sll        $t6, $a1, 2
/* 01EF2C 0041EF2C 03E00008 */  jr          $ra
/* 01EF30 0041EF30 00001025 */   move       $v0, $zero
.L0041EF34:
/* 01EF34 0041EF34 8F99802C */  lw          $t9, %got(RO_10011828)($gp)
/* 01EF38 0041EF38 01C57023 */  subu        $t6, $t6, $a1
/* 01EF3C 0041EF3C 000E7100 */  sll         $t6, $t6, 4
/* 01EF40 0041EF40 00047880 */  sll         $t7, $a0, 2
/* 01EF44 0041EF44 01CFC021 */  addu        $t8, $t6, $t7
/* 01EF48 0041EF48 27391828 */  addiu       $t9, $t9, %lo(RO_10011828)
/* 01EF4C 0041EF4C 03194021 */  addu        $t0, $t8, $t9
/* 01EF50 0041EF50 8D02FFD0 */  lw          $v0, -0x30($t0)
/* 01EF54 0041EF54 03E00008 */  jr          $ra
/* 01EF58 0041EF58 00000000 */   nop
