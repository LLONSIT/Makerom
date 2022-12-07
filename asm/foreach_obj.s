glabel foreach_obj # 550
# _gp_disp: 0xFBEE3E8
.set noreorder; .cpload $t9; # .set reorder
/* 02F964 0042F964 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 02F968 0042F968 AFB20020 */  sw          $s2, 0x20($sp)
/* 02F96C 0042F96C AFB1001C */  sw          $s1, 0x1C($sp)
/* 02F970 0042F970 00C08825 */  move        $s1, $a2
/* 02F974 0042F974 00A09025 */  move        $s2, $a1
/* 02F978 0042F978 AFBF002C */  sw          $ra, 0x2C($sp)
/* 02F97C 0042F97C AFBC0028 */  sw          $gp, 0x28($sp)
/* 02F980 0042F980 AFB30024 */  sw          $s3, 0x24($sp)
/* 02F984 0042F984 AFB00018 */  sw          $s0, 0x18($sp)
/* 02F988 0042F988 1080000E */  beqz        $a0, .L0042F9C4
/* 02F98C 0042F98C 00803825 */   move       $a3, $a0
/* 02F990 0042F990 2413FFFF */  addiu       $s3, $zero, -0x1
.L0042F994:
/* 02F994 0042F994 8CF00004 */  lw          $s0, 0x4($a3)
/* 02F998 0042F998 8CE40000 */  lw          $a0, 0x0($a3)
/* 02F99C 0042F99C 02202825 */  move        $a1, $s1
/* 02F9A0 0042F9A0 00E03025 */  move        $a2, $a3
/* 02F9A4 0042F9A4 0240F809 */  jalr        $s2
/* 02F9A8 0042F9A8 0240C825 */   move       $t9, $s2
/* 02F9AC 0042F9AC 10530003 */  beq         $v0, $s3, .L0042F9BC
/* 02F9B0 0042F9B0 8FBC0028 */   lw         $gp, 0x28($sp)
/* 02F9B4 0042F9B4 10000005 */  b           .L0042F9CC
/* 02F9B8 0042F9B8 8FBF002C */   lw         $ra, 0x2C($sp)
.L0042F9BC:
/* 02F9BC 0042F9BC 1600FFF5 */  bnez        $s0, .L0042F994
/* 02F9C0 0042F9C0 02003825 */   move       $a3, $s0
.L0042F9C4:
/* 02F9C4 0042F9C4 2402FFFF */  addiu       $v0, $zero, -0x1
/* 02F9C8 0042F9C8 8FBF002C */  lw          $ra, 0x2C($sp)
.L0042F9CC:
/* 02F9CC 0042F9CC 8FB00018 */  lw          $s0, 0x18($sp)
/* 02F9D0 0042F9D0 8FB1001C */  lw          $s1, 0x1C($sp)
/* 02F9D4 0042F9D4 8FB20020 */  lw          $s2, 0x20($sp)
/* 02F9D8 0042F9D8 8FB30024 */  lw          $s3, 0x24($sp)
/* 02F9DC 0042F9DC 03E00008 */  jr          $ra
/* 02F9E0 0042F9E0 27BD0030 */   addiu      $sp, $sp, 0x30
