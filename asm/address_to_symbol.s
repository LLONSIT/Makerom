glabel address_to_symbol # 604
# _gp_disp: 0xFBE7274
.set noreorder; .cpload $t9; # .set reorder
/* 036AD8 00436AD8 8F998518 */  lw          $t9, %call16(foreach_obj)($gp)
/* 036ADC 00436ADC 00A03025 */  move        $a2, $a1
/* 036AE0 00436AE0 8F858020 */  lw          $a1, %got(func_00436908)($gp)
/* 036AE4 00436AE4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 036AE8 00436AE8 AFBF001C */  sw          $ra, 0x1C($sp)
/* 036AEC 00436AEC AFBC0018 */  sw          $gp, 0x18($sp)
/* 036AF0 00436AF0 0320F809 */  jalr        $t9
/* 036AF4 00436AF4 24A56908 */   addiu      $a1, $a1, %lo(func_00436908)
/* 036AF8 00436AF8 8FBF001C */  lw          $ra, 0x1C($sp)
/* 036AFC 00436AFC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 036B00 00436B00 27BD0020 */  addiu       $sp, $sp, 0x20
/* 036B04 00436B04 03E00008 */  jr          $ra
/* 036B08 00436B08 00000000 */   nop
