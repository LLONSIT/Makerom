glabel st_auxbtadd # 713
# _gp_disp: 0xFBDF8DC
.set noreorder; .cpload $t9; # .set reorder
/* 03E470 0043E470 8F998138 */  lw          $t9, %call16(memset)($gp)
/* 03E474 0043E474 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03E478 0043E478 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03E47C 0043E47C AFA40028 */  sw          $a0, 0x28($sp)
/* 03E480 0043E480 AFBC0018 */  sw          $gp, 0x18($sp)
/* 03E484 0043E484 27A40024 */  addiu       $a0, $sp, 0x24
/* 03E488 0043E488 00002825 */  move        $a1, $zero
/* 03E48C 0043E48C 0320F809 */  jalr        $t9
/* 03E490 0043E490 24060004 */   addiu      $a2, $zero, 0x4
/* 03E494 0043E494 8FAF0028 */  lw          $t7, 0x28($sp)
/* 03E498 0043E498 93B90024 */  lbu         $t9, 0x24($sp)
/* 03E49C 0043E49C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03E4A0 0043E4A0 31F8003F */  andi        $t8, $t7, 0x3F
/* 03E4A4 0043E4A4 3328FFC0 */  andi        $t0, $t9, 0xFFC0
/* 03E4A8 0043E4A8 03084825 */  or          $t1, $t8, $t0
/* 03E4AC 0043E4AC 8F9985E4 */  lw          $t9, %call16(st_auxadd)($gp)
/* 03E4B0 0043E4B0 A3A90024 */  sb          $t1, 0x24($sp)
/* 03E4B4 0043E4B4 8FA40024 */  lw          $a0, 0x24($sp)
/* 03E4B8 0043E4B8 0320F809 */  jalr        $t9
/* 03E4BC 0043E4BC AFA40000 */   sw         $a0, 0x0($sp)
/* 03E4C0 0043E4C0 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03E4C4 0043E4C4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03E4C8 0043E4C8 27BD0028 */  addiu       $sp, $sp, 0x28
/* 03E4CC 0043E4CC 03E00008 */  jr          $ra
/* 03E4D0 0043E4D0 00000000 */   nop
