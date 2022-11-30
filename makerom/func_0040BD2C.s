glabel func_0040BD2C # 15
# _gp_disp: 0xFC12014
.set noreorder; .cpload $t9; # .set reorder
/* 00BD38 0040BD38 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00BD3C 0040BD3C AFBF001C */  sw          $ra, 0x1C($sp)
/* 00BD40 0040BD40 AFBC0018 */  sw          $gp, 0x18($sp)
/* 00BD44 0040BD44 AFA40020 */  sw          $a0, 0x20($sp)
/* 00BD48 0040BD48 8F998018 */  lw          $t9, %got(func_0040BC54)($gp)
/* 00BD4C 0040BD4C 2739BC54 */  addiu       $t9, $t9, %lo(func_0040BC54)
/* 00BD50 0040BD50 0320F809 */  jalr        $t9
/* 00BD54 0040BD54 00000000 */   nop
/* 00BD58 0040BD58 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00BD5C 0040BD5C 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 00BD60 0040BD60 24040001 */  addiu       $a0, $zero, 0x1
/* 00BD64 0040BD64 0320F809 */  jalr        $t9
/* 00BD68 0040BD68 00000000 */   nop
/* 00BD6C 0040BD6C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00BD70 0040BD70 10000001 */  b           .L0040BD78
/* 00BD74 0040BD74 00000000 */   nop
.L0040BD78:
/* 00BD78 0040BD78 8FBF001C */  lw          $ra, 0x1C($sp)
/* 00BD7C 0040BD7C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 00BD80 0040BD80 03E00008 */  jr          $ra
/* 00BD84 0040BD84 00000000 */   nop
