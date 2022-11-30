glabel address_to_section # 556
# _gp_disp: 0xFBEDF5C
.set noreorder; .cpload $t9; # .set reorder
/* 02FDF0 0042FDF0 8F998520 */  lw          $t9, %call16(foreach_section)($gp)
/* 02FDF4 0042FDF4 00A03025 */  move        $a2, $a1
/* 02FDF8 0042FDF8 8F858020 */  lw          $a1, %got(func_0042FCD8)($gp)
/* 02FDFC 0042FDFC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02FE00 0042FE00 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02FE04 0042FE04 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02FE08 0042FE08 0320F809 */  jalr        $t9
/* 02FE0C 0042FE0C 24A5FCD8 */   addiu      $a1, $a1, %lo(func_0042FCD8)
/* 02FE10 0042FE10 2401FFFF */  addiu       $at, $zero, -0x1
/* 02FE14 0042FE14 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02FE18 0042FE18 14410003 */  bne         $v0, $at, .L0042FE28
/* 02FE1C 0042FE1C 00401825 */   move       $v1, $v0
/* 02FE20 0042FE20 10000002 */  b           .L0042FE2C
/* 02FE24 0042FE24 00001025 */   move       $v0, $zero
.L0042FE28:
/* 02FE28 0042FE28 00601025 */  move        $v0, $v1
.L0042FE2C:
/* 02FE2C 0042FE2C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02FE30 0042FE30 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02FE34 0042FE34 03E00008 */  jr          $ra
/* 02FE38 0042FE38 00000000 */   nop
