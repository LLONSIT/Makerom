glabel ldnlseek # 223
# _gp_disp: 0xFBF8A7C
.set noreorder; .cpload $t9; # .set reorder
/* 0252D0 004252D0 8F998258 */  lw          $t9, %call16(ldlseek)($gp)
/* 0252D4 004252D4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0252D8 004252D8 AFBF001C */  sw          $ra, 0x1C($sp)
/* 0252DC 004252DC AFA50024 */  sw          $a1, 0x24($sp)
/* 0252E0 004252E0 00002825 */  move        $a1, $zero
/* 0252E4 004252E4 0320F809 */  jalr        $t9
/* 0252E8 004252E8 AFBC0018 */   sw         $gp, 0x18($sp)
/* 0252EC 004252EC 8FBF001C */  lw          $ra, 0x1C($sp)
/* 0252F0 004252F0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0252F4 004252F4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0252F8 004252F8 03E00008 */  jr          $ra
/* 0252FC 004252FC 00000000 */   nop
