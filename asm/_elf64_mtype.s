glabel _elf64_mtype # 50
# _gp_disp: 0xFC098AC
.set noreorder; .cpload $t9; # .set reorder
/* 0144A0 004144A0 2C81000C */  sltiu       $at, $a0, 0xC
/* 0144A4 004144A4 14200003 */  bnez        $at, .L004144B4
/* 0144A8 004144A8 00057080 */   sll        $t6, $a1, 2
/* 0144AC 004144AC 03E00008 */  jr          $ra
/* 0144B0 004144B0 00001025 */   move       $v0, $zero
.L004144B4:
/* 0144B4 004144B4 8F99802C */  lw          $t9, %got(RO_100116B8)($gp)
/* 0144B8 004144B8 01C57023 */  subu        $t6, $t6, $a1
/* 0144BC 004144BC 000E7100 */  sll         $t6, $t6, 4
/* 0144C0 004144C0 00047880 */  sll         $t7, $a0, 2
/* 0144C4 004144C4 01CFC021 */  addu        $t8, $t6, $t7
/* 0144C8 004144C8 273916B8 */  addiu       $t9, $t9, %lo(RO_100116B8)
/* 0144CC 004144CC 03194021 */  addu        $t0, $t8, $t9
/* 0144D0 004144D0 8D02FFD0 */  lw          $v0, -0x30($t0)
/* 0144D4 004144D4 03E00008 */  jr          $ra
/* 0144D8 004144D8 00000000 */   nop
