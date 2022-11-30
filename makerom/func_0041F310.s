glabel func_0041F310 # 128
# _gp_disp: 0xFBFEA30
.set noreorder; .cpload $t9; # .set reorder
/* 01F31C 0041F31C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01F320 0041F320 AFBF001C */  sw          $ra, 0x1C($sp)
/* 01F324 0041F324 10850005 */  beq         $a0, $a1, .L0041F33C
/* 01F328 0041F328 AFBC0018 */   sw         $gp, 0x18($sp)
/* 01F32C 0041F32C 8F998108 */  lw          $t9, %call16(memcpy)($gp)
/* 01F330 0041F330 0320F809 */  jalr        $t9
/* 01F334 0041F334 00000000 */   nop
/* 01F338 0041F338 8FBC0018 */  lw          $gp, 0x18($sp)
.L0041F33C:
/* 01F33C 0041F33C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 01F340 0041F340 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01F344 0041F344 03E00008 */  jr          $ra
/* 01F348 0041F348 00000000 */   nop
