glabel address_to_obj # 260
# _gp_disp: 0xFBF6320
.set noreorder; .cpload $t9; # .set reorder
/* 027A2C 00427A2C 8F8E8030 */  lw          $t6, %got(B_1001A228)($gp)
/* 027A30 00427A30 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 027A34 00427A34 AFBF001C */  sw          $ra, 0x1C($sp)
/* 027A38 00427A38 8DCEA228 */  lw          $t6, %lo(B_1001A228)($t6)
/* 027A3C 00427A3C AFBC0018 */  sw          $gp, 0x18($sp)
/* 027A40 00427A40 00A03025 */  move        $a2, $a1
/* 027A44 00427A44 15C50004 */  bne         $t6, $a1, .L00427A58
/* 027A48 00427A48 00000000 */   nop
/* 027A4C 00427A4C 8F828030 */  lw          $v0, %got(B_1001A22C)($gp)
/* 027A50 00427A50 10000011 */  b           .L00427A98
/* 027A54 00427A54 8C42A22C */   lw         $v0, %lo(B_1001A22C)($v0)
.L00427A58:
/* 027A58 00427A58 8F998518 */  lw          $t9, %call16(foreach_obj)($gp)
/* 027A5C 00427A5C 8F85801C */  lw          $a1, %got(func_004279BC)($gp)
/* 027A60 00427A60 AFA60024 */  sw          $a2, 0x24($sp)
/* 027A64 00427A64 0320F809 */  jalr        $t9
/* 027A68 00427A68 24A579BC */   addiu      $a1, $a1, %lo(func_004279BC)
/* 027A6C 00427A6C 2401FFFF */  addiu       $at, $zero, -0x1
/* 027A70 00427A70 8FBC0018 */  lw          $gp, 0x18($sp)
/* 027A74 00427A74 8FA60024 */  lw          $a2, 0x24($sp)
/* 027A78 00427A78 14410002 */  bne         $v0, $at, .L00427A84
/* 027A7C 00427A7C 00401825 */   move       $v1, $v0
/* 027A80 00427A80 00001825 */  move        $v1, $zero
.L00427A84:
/* 027A84 00427A84 8F818030 */  lw          $at, %got(B_1001A228)($gp)
/* 027A88 00427A88 00601025 */  move        $v0, $v1
/* 027A8C 00427A8C AC26A228 */  sw          $a2, %lo(B_1001A228)($at)
/* 027A90 00427A90 8F818030 */  lw          $at, %got(B_1001A22C)($gp)
/* 027A94 00427A94 AC23A22C */  sw          $v1, %lo(B_1001A22C)($at)
.L00427A98:
/* 027A98 00427A98 8FBF001C */  lw          $ra, 0x1C($sp)
/* 027A9C 00427A9C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 027AA0 00427AA0 03E00008 */  jr          $ra
/* 027AA4 00427AA4 00000000 */   nop
