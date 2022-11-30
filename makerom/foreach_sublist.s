glabel foreach_sublist # 553
# _gp_disp: 0xFBEE228
.set noreorder; .cpload $t9; # .set reorder
/* 02FB24 0042FB24 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 02FB28 0042FB28 AFB20020 */  sw          $s2, 0x20($sp)
/* 02FB2C 0042FB2C AFB1001C */  sw          $s1, 0x1C($sp)
/* 02FB30 0042FB30 00C08825 */  move        $s1, $a2
/* 02FB34 0042FB34 00A09025 */  move        $s2, $a1
/* 02FB38 0042FB38 AFBF002C */  sw          $ra, 0x2C($sp)
/* 02FB3C 0042FB3C AFBC0028 */  sw          $gp, 0x28($sp)
/* 02FB40 0042FB40 AFB30024 */  sw          $s3, 0x24($sp)
/* 02FB44 0042FB44 1080000C */  beqz        $a0, .L0042FB78
/* 02FB48 0042FB48 AFB00018 */   sw         $s0, 0x18($sp)
/* 02FB4C 0042FB4C 2413FFFF */  addiu       $s3, $zero, -0x1
.L0042FB50:
/* 02FB50 0042FB50 8C900004 */  lw          $s0, 0x4($a0)
/* 02FB54 0042FB54 02202825 */  move        $a1, $s1
/* 02FB58 0042FB58 0240F809 */  jalr        $s2
/* 02FB5C 0042FB5C 0240C825 */   move       $t9, $s2
/* 02FB60 0042FB60 10530003 */  beq         $v0, $s3, .L0042FB70
/* 02FB64 0042FB64 8FBC0028 */   lw         $gp, 0x28($sp)
/* 02FB68 0042FB68 10000005 */  b           .L0042FB80
/* 02FB6C 0042FB6C 8FBF002C */   lw         $ra, 0x2C($sp)
.L0042FB70:
/* 02FB70 0042FB70 1600FFF7 */  bnez        $s0, .L0042FB50
/* 02FB74 0042FB74 02002025 */   move       $a0, $s0
.L0042FB78:
/* 02FB78 0042FB78 2402FFFF */  addiu       $v0, $zero, -0x1
/* 02FB7C 0042FB7C 8FBF002C */  lw          $ra, 0x2C($sp)
.L0042FB80:
/* 02FB80 0042FB80 8FB00018 */  lw          $s0, 0x18($sp)
/* 02FB84 0042FB84 8FB1001C */  lw          $s1, 0x1C($sp)
/* 02FB88 0042FB88 8FB20020 */  lw          $s2, 0x20($sp)
/* 02FB8C 0042FB8C 8FB30024 */  lw          $s3, 0x24($sp)
/* 02FB90 0042FB90 03E00008 */  jr          $ra
/* 02FB94 0042FB94 27BD0030 */   addiu      $sp, $sp, 0x30
/* 02FB98 0042FB98 00000000 */  nop
/* 02FB9C 0042FB9C 00000000 */  nop
