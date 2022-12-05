glabel forall_previous_objs # 551
# _gp_disp: 0xFBEE35C
.set noreorder; .cpload $t9; # .set reorder
/* 02F9F0 0042F9F0 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 02F9F4 0042F9F4 AFB5002C */  sw          $s5, 0x2C($sp)
/* 02F9F8 0042F9F8 AFB40028 */  sw          $s4, 0x28($sp)
/* 02F9FC 0042F9FC AFB30024 */  sw          $s3, 0x24($sp)
/* 02FA00 0042FA00 AFB20020 */  sw          $s2, 0x20($sp)
/* 02FA04 0042FA04 00A09025 */  move        $s2, $a1
/* 02FA08 0042FA08 00809825 */  move        $s3, $a0
/* 02FA0C 0042FA0C 00E0A025 */  move        $s4, $a3
/* 02FA10 0042FA10 00C0A825 */  move        $s5, $a2
/* 02FA14 0042FA14 AFBF0034 */  sw          $ra, 0x34($sp)
/* 02FA18 0042FA18 AFBC0030 */  sw          $gp, 0x30($sp)
/* 02FA1C 0042FA1C AFB1001C */  sw          $s1, 0x1C($sp)
/* 02FA20 0042FA20 AFB00018 */  sw          $s0, 0x18($sp)
/* 02FA24 0042FA24 10800010 */  beqz        $a0, .L0042FA68
/* 02FA28 0042FA28 00801825 */   move       $v1, $a0
/* 02FA2C 0042FA2C 8C8E0000 */  lw          $t6, 0x0($a0)
/* 02FA30 0042FA30 10AE000D */  beq         $a1, $t6, .L0042FA68
/* 02FA34 0042FA34 00000000 */   nop
/* 02FA38 0042FA38 8C8F0004 */  lw          $t7, 0x4($a0)
/* 02FA3C 0042FA3C 11E0000A */  beqz        $t7, .L0042FA68
/* 02FA40 0042FA40 00000000 */   nop
/* 02FA44 0042FA44 8C820004 */  lw          $v0, 0x4($a0)
.L0042FA48:
/* 02FA48 0042FA48 10400007 */  beqz        $v0, .L0042FA68
/* 02FA4C 0042FA4C 00401825 */   move       $v1, $v0
/* 02FA50 0042FA50 8C580000 */  lw          $t8, 0x0($v0)
/* 02FA54 0042FA54 12580004 */  beq         $s2, $t8, .L0042FA68
/* 02FA58 0042FA58 00000000 */   nop
/* 02FA5C 0042FA5C 8C420004 */  lw          $v0, 0x4($v0)
/* 02FA60 0042FA60 1440FFF9 */  bnez        $v0, .L0042FA48
/* 02FA64 0042FA64 00000000 */   nop
.L0042FA68:
/* 02FA68 0042FA68 10600004 */  beqz        $v1, .L0042FA7C
/* 02FA6C 0042FA6C 00000000 */   nop
/* 02FA70 0042FA70 8C790000 */  lw          $t9, 0x0($v1)
/* 02FA74 0042FA74 52590004 */  beql        $s2, $t9, .L0042FA88
/* 02FA78 0042FA78 8C700008 */   lw         $s0, 0x8($v1)
.L0042FA7C:
/* 02FA7C 0042FA7C 10000014 */  b           .L0042FAD0
/* 02FA80 0042FA80 2402FFFF */   addiu      $v0, $zero, -0x1
/* 02FA84 0042FA84 8C700008 */  lw          $s0, 0x8($v1)
.L0042FA88:
/* 02FA88 0042FA88 8E680008 */  lw          $t0, 0x8($s3)
/* 02FA8C 0042FA8C 2411FFFF */  addiu       $s1, $zero, -0x1
/* 02FA90 0042FA90 5208000F */  beql        $s0, $t0, .L0042FAD0
/* 02FA94 0042FA94 2402FFFF */   addiu      $v0, $zero, -0x1
/* 02FA98 0042FA98 8E040000 */  lw          $a0, 0x0($s0)
.L0042FA9C:
/* 02FA9C 0042FA9C 02402825 */  move        $a1, $s2
/* 02FAA0 0042FAA0 02803025 */  move        $a2, $s4
/* 02FAA4 0042FAA4 02A0F809 */  jalr        $s5
/* 02FAA8 0042FAA8 02A0C825 */   move       $t9, $s5
/* 02FAAC 0042FAAC 10510003 */  beq         $v0, $s1, .L0042FABC
/* 02FAB0 0042FAB0 8FBC0030 */   lw         $gp, 0x30($sp)
/* 02FAB4 0042FAB4 10000007 */  b           .L0042FAD4
/* 02FAB8 0042FAB8 8FBF0034 */   lw         $ra, 0x34($sp)
.L0042FABC:
/* 02FABC 0042FABC 8E100008 */  lw          $s0, 0x8($s0)
/* 02FAC0 0042FAC0 8E690008 */  lw          $t1, 0x8($s3)
/* 02FAC4 0042FAC4 5609FFF5 */  bnel        $s0, $t1, .L0042FA9C
/* 02FAC8 0042FAC8 8E040000 */   lw         $a0, 0x0($s0)
/* 02FACC 0042FACC 2402FFFF */  addiu       $v0, $zero, -0x1
.L0042FAD0:
/* 02FAD0 0042FAD0 8FBF0034 */  lw          $ra, 0x34($sp)
.L0042FAD4:
/* 02FAD4 0042FAD4 8FB00018 */  lw          $s0, 0x18($sp)
/* 02FAD8 0042FAD8 8FB1001C */  lw          $s1, 0x1C($sp)
/* 02FADC 0042FADC 8FB20020 */  lw          $s2, 0x20($sp)
/* 02FAE0 0042FAE0 8FB30024 */  lw          $s3, 0x24($sp)
/* 02FAE4 0042FAE4 8FB40028 */  lw          $s4, 0x28($sp)
/* 02FAE8 0042FAE8 8FB5002C */  lw          $s5, 0x2C($sp)
/* 02FAEC 0042FAEC 03E00008 */  jr          $ra
/* 02FAF0 0042FAF0 27BD0038 */   addiu      $sp, $sp, 0x38
