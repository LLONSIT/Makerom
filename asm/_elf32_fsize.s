glabel _elf32_fsize # 120
# _gp_disp: 0xFBFEEE0
.set noreorder; .cpload $t9; # .set reorder
/* 01EE6C 0041EE6C 24C6FFFF */  addiu       $a2, $a2, -0x1
/* 01EE70 0041EE70 10C00006 */  beqz        $a2, .L0041EE8C
/* 01EE74 0041EE74 2C81000F */   sltiu      $at, $a0, 0xF
/* 01EE78 0041EE78 8F8186E8 */  lw          $at, %got(_elf_err)($gp)
/* 01EE7C 0041EE7C 240E0517 */  addiu       $t6, $zero, 0x517
/* 01EE80 0041EE80 00001025 */  move        $v0, $zero
/* 01EE84 0041EE84 03E00008 */  jr          $ra
/* 01EE88 0041EE88 AC2E0000 */   sw         $t6, 0x0($at)
.L0041EE8C:
/* 01EE8C 0041EE8C 14200006 */  bnez        $at, .L0041EEA8
/* 01EE90 0041EE90 0006C100 */   sll        $t8, $a2, 4
/* 01EE94 0041EE94 8F8186E8 */  lw          $at, %got(_elf_err)($gp)
/* 01EE98 0041EE98 240F0514 */  addiu       $t7, $zero, 0x514
/* 01EE9C 0041EE9C 00001025 */  move        $v0, $zero
/* 01EEA0 0041EEA0 03E00008 */  jr          $ra
/* 01EEA4 0041EEA4 AC2F0000 */   sw         $t7, 0x0($at)
.L0041EEA8:
/* 01EEA8 0041EEA8 8F89802C */  lw          $t1, %got(RO_100117B0)($gp)
/* 01EEAC 0041EEAC 0306C023 */  subu        $t8, $t8, $a2
/* 01EEB0 0041EEB0 0018C0C0 */  sll         $t8, $t8, 3
/* 01EEB4 0041EEB4 0004C8C0 */  sll         $t9, $a0, 3
/* 01EEB8 0041EEB8 03194021 */  addu        $t0, $t8, $t9
/* 01EEBC 0041EEBC 252917B0 */  addiu       $t1, $t1, %lo(RO_100117B0)
/* 01EEC0 0041EEC0 01095021 */  addu        $t2, $t0, $t1
/* 01EEC4 0041EEC4 8D4B0000 */  lw          $t3, 0x0($t2)
/* 01EEC8 0041EEC8 01650019 */  multu       $t3, $a1
/* 01EECC 0041EECC 00001012 */  mflo        $v0
/* 01EED0 0041EED0 00000000 */  nop
/* 01EED4 0041EED4 00000000 */  nop
/* 01EED8 0041EED8 03E00008 */  jr          $ra
/* 01EEDC 0041EEDC 00000000 */   nop
