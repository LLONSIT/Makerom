glabel obj_interface_not_match # 441
# _gp_disp: 0xFBF305C
.set noreorder; .cpload $t9; # .set reorder
/* 02ACF0 0042ACF0 8F998420 */  lw          $t9, %call16(obj_liblist_version_str)($gp)
/* 02ACF4 0042ACF4 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 02ACF8 0042ACF8 AFA40028 */  sw          $a0, 0x28($sp)
/* 02ACFC 0042ACFC AFBF001C */  sw          $ra, 0x1C($sp)
/* 02AD00 0042AD00 00A02025 */  move        $a0, $a1
/* 02AD04 0042AD04 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02AD08 0042AD08 0320F809 */  jalr        $t9
/* 02AD0C 0042AD0C 00C02825 */   move       $a1, $a2
/* 02AD10 0042AD10 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02AD14 0042AD14 AFA20020 */  sw          $v0, 0x20($sp)
/* 02AD18 0042AD18 8FA40028 */  lw          $a0, 0x28($sp)
/* 02AD1C 0042AD1C 8F998424 */  lw          $t9, %call16(obj_interface_version)($gp)
/* 02AD20 0042AD20 0320F809 */  jalr        $t9
/* 02AD24 0042AD24 00000000 */   nop
/* 02AD28 0042AD28 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02AD2C 0042AD2C 8FA40020 */  lw          $a0, 0x20($sp)
/* 02AD30 0042AD30 00402825 */  move        $a1, $v0
/* 02AD34 0042AD34 8F9980A8 */  lw          $t9, %call16(strcmp)($gp)
/* 02AD38 0042AD38 0320F809 */  jalr        $t9
/* 02AD3C 0042AD3C 00000000 */   nop
/* 02AD40 0042AD40 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02AD44 0042AD44 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02AD48 0042AD48 27BD0028 */  addiu       $sp, $sp, 0x28
/* 02AD4C 0042AD4C 03E00008 */  jr          $ra
/* 02AD50 0042AD50 00000000 */   nop
