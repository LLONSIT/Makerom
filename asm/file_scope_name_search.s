glabel file_scope_name_search # 617
# _gp_disp: 0xFBE5E80
.set noreorder; .cpload $t9; # .set reorder
/* 037ECC 00437ECC 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 037ED0 00437ED0 8F9984F8 */  lw          $t9, %call16(file_symbol)($gp)
/* 037ED4 00437ED4 AFBF0024 */  sw          $ra, 0x24($sp)
/* 037ED8 00437ED8 AFBC0020 */  sw          $gp, 0x20($sp)
/* 037EDC 00437EDC AFA40028 */  sw          $a0, 0x28($sp)
/* 037EE0 00437EE0 AFA5002C */  sw          $a1, 0x2C($sp)
/* 037EE4 00437EE4 AFA60030 */  sw          $a2, 0x30($sp)
/* 037EE8 00437EE8 0320F809 */  jalr        $t9
/* 037EEC 00437EEC AFA70034 */   sw         $a3, 0x34($sp)
/* 037EF0 00437EF0 2401FFFF */  addiu       $at, $zero, -0x1
/* 037EF4 00437EF4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 037EF8 00437EF8 14410003 */  bne         $v0, $at, .L00437F08
/* 037EFC 00437EFC 00402825 */   move       $a1, $v0
/* 037F00 00437F00 1000000C */  b           .L00437F34
/* 037F04 00437F04 2402FFFF */   addiu      $v0, $zero, -0x1
.L00437F08:
/* 037F08 00437F08 8F998020 */  lw          $t9, %got(func_00437B00)($gp)
/* 037F0C 00437F0C 8FAE0034 */  lw          $t6, 0x34($sp)
/* 037F10 00437F10 8FAF0038 */  lw          $t7, 0x38($sp)
/* 037F14 00437F14 27397B00 */  addiu       $t9, $t9, %lo(func_00437B00)
/* 037F18 00437F18 8FA40028 */  lw          $a0, 0x28($sp)
/* 037F1C 00437F1C 8FA6002C */  lw          $a2, 0x2C($sp)
/* 037F20 00437F20 8FA70030 */  lw          $a3, 0x30($sp)
/* 037F24 00437F24 AFAE0010 */  sw          $t6, 0x10($sp)
/* 037F28 00437F28 0320F809 */  jalr        $t9
/* 037F2C 00437F2C AFAF0014 */   sw         $t7, 0x14($sp)
/* 037F30 00437F30 8FBC0020 */  lw          $gp, 0x20($sp)
.L00437F34:
/* 037F34 00437F34 8FBF0024 */  lw          $ra, 0x24($sp)
/* 037F38 00437F38 27BD0028 */  addiu       $sp, $sp, 0x28
/* 037F3C 00437F3C 03E00008 */  jr          $ra
/* 037F40 00437F40 00000000 */   nop
