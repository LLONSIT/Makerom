glabel __sgi_init_ldfile # 206
# _gp_disp: 0xFBF9974
.set noreorder; .cpload $t9; # .set reorder
/* 0243D8 004243D8 8F99801C */  lw          $t9, %got(func_004246DC)($gp)
/* 0243DC 004243DC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0243E0 004243E0 AFBF001C */  sw          $ra, 0x1C($sp)
/* 0243E4 004243E4 273946DC */  addiu       $t9, $t9, %lo(func_004246DC)
/* 0243E8 004243E8 0320F809 */  jalr        $t9
/* 0243EC 004243EC AFBC0018 */   sw         $gp, 0x18($sp)
/* 0243F0 004243F0 8FBF001C */  lw          $ra, 0x1C($sp)
/* 0243F4 004243F4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0243F8 004243F8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0243FC 004243FC 03E00008 */  jr          $ra
/* 024400 00424400 00000000 */   nop
