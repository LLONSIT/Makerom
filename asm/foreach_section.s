glabel foreach_section # 554
# _gp_disp: 0xFBEE1A0
.set noreorder; .cpload $t9; # .set reorder
/* 02FBAC 0042FBAC 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 02FBB0 0042FBB0 AFBF0034 */  sw          $ra, 0x34($sp)
/* 02FBB4 0042FBB4 AFBC0030 */  sw          $gp, 0x30($sp)
/* 02FBB8 0042FBB8 AFB5002C */  sw          $s5, 0x2C($sp)
/* 02FBBC 0042FBBC AFB40028 */  sw          $s4, 0x28($sp)
/* 02FBC0 0042FBC0 AFB30024 */  sw          $s3, 0x24($sp)
/* 02FBC4 0042FBC4 AFB20020 */  sw          $s2, 0x20($sp)
/* 02FBC8 0042FBC8 AFB1001C */  sw          $s1, 0x1C($sp)
/* 02FBCC 0042FBCC AFB00018 */  sw          $s0, 0x18($sp)
/* 02FBD0 0042FBD0 8C8E008C */  lw          $t6, 0x8C($a0)
/* 02FBD4 0042FBD4 24010002 */  addiu       $at, $zero, 0x2
/* 02FBD8 0042FBD8 00808825 */  move        $s1, $a0
/* 02FBDC 0042FBDC 00C0A025 */  move        $s4, $a2
/* 02FBE0 0042FBE0 15C1001B */  bne         $t6, $at, .L0042FC50
/* 02FBE4 0042FBE4 00A0A825 */   move       $s5, $a1
/* 02FBE8 0042FBE8 8C8F0090 */  lw          $t7, 0x90($a0)
/* 02FBEC 0042FBEC 00009025 */  move        $s2, $zero
/* 02FBF0 0042FBF0 00008025 */  move        $s0, $zero
/* 02FBF4 0042FBF4 95F80002 */  lhu         $t8, 0x2($t7)
/* 02FBF8 0042FBF8 2413FFFF */  addiu       $s3, $zero, -0x1
/* 02FBFC 0042FBFC 13000012 */  beqz        $t8, .L0042FC48
/* 02FC00 0042FC00 00000000 */   nop
/* 02FC04 0042FC04 8E390098 */  lw          $t9, 0x98($s1)
.L0042FC08:
/* 02FC08 0042FC08 02202025 */  move        $a0, $s1
/* 02FC0C 0042FC0C 02803025 */  move        $a2, $s4
/* 02FC10 0042FC10 03302821 */  addu        $a1, $t9, $s0
/* 02FC14 0042FC14 02A0F809 */  jalr        $s5
/* 02FC18 0042FC18 02A0C825 */   move       $t9, $s5
/* 02FC1C 0042FC1C 10530003 */  beq         $v0, $s3, .L0042FC2C
/* 02FC20 0042FC20 8FBC0030 */   lw         $gp, 0x30($sp)
/* 02FC24 0042FC24 10000024 */  b           .L0042FCB8
/* 02FC28 0042FC28 8FBF0034 */   lw         $ra, 0x34($sp)
.L0042FC2C:
/* 02FC2C 0042FC2C 8E280090 */  lw          $t0, 0x90($s1)
/* 02FC30 0042FC30 26520001 */  addiu       $s2, $s2, 0x1
/* 02FC34 0042FC34 26100028 */  addiu       $s0, $s0, 0x28
/* 02FC38 0042FC38 95090002 */  lhu         $t1, 0x2($t0)
/* 02FC3C 0042FC3C 0249082B */  sltu        $at, $s2, $t1
/* 02FC40 0042FC40 5420FFF1 */  bnel        $at, $zero, .L0042FC08
/* 02FC44 0042FC44 8E390098 */   lw         $t9, 0x98($s1)
.L0042FC48:
/* 02FC48 0042FC48 1000001A */  b           .L0042FCB4
/* 02FC4C 0042FC4C 2402FFFF */   addiu      $v0, $zero, -0x1
.L0042FC50:
/* 02FC50 0042FC50 8E2A00E0 */  lw          $t2, 0xE0($s1)
/* 02FC54 0042FC54 00009025 */  move        $s2, $zero
/* 02FC58 0042FC58 00008025 */  move        $s0, $zero
/* 02FC5C 0042FC5C 954B0030 */  lhu         $t3, 0x30($t2)
/* 02FC60 0042FC60 2413FFFF */  addiu       $s3, $zero, -0x1
/* 02FC64 0042FC64 51600013 */  beql        $t3, $zero, .L0042FCB4
/* 02FC68 0042FC68 2402FFFF */   addiu      $v0, $zero, -0x1
/* 02FC6C 0042FC6C 8E2C00E8 */  lw          $t4, 0xE8($s1)
.L0042FC70:
/* 02FC70 0042FC70 02202025 */  move        $a0, $s1
/* 02FC74 0042FC74 02803025 */  move        $a2, $s4
/* 02FC78 0042FC78 02A0C825 */  move        $t9, $s5
/* 02FC7C 0042FC7C 02A0F809 */  jalr        $s5
/* 02FC80 0042FC80 01902821 */   addu       $a1, $t4, $s0
/* 02FC84 0042FC84 10530003 */  beq         $v0, $s3, .L0042FC94
/* 02FC88 0042FC88 8FBC0030 */   lw         $gp, 0x30($sp)
/* 02FC8C 0042FC8C 1000000A */  b           .L0042FCB8
/* 02FC90 0042FC90 8FBF0034 */   lw         $ra, 0x34($sp)
.L0042FC94:
/* 02FC94 0042FC94 8E2D00E0 */  lw          $t5, 0xE0($s1)
/* 02FC98 0042FC98 26520001 */  addiu       $s2, $s2, 0x1
/* 02FC9C 0042FC9C 26100028 */  addiu       $s0, $s0, 0x28
/* 02FCA0 0042FCA0 95AE0030 */  lhu         $t6, 0x30($t5)
/* 02FCA4 0042FCA4 024E082B */  sltu        $at, $s2, $t6
/* 02FCA8 0042FCA8 5420FFF1 */  bnel        $at, $zero, .L0042FC70
/* 02FCAC 0042FCAC 8E2C00E8 */   lw         $t4, 0xE8($s1)
/* 02FCB0 0042FCB0 2402FFFF */  addiu       $v0, $zero, -0x1
.L0042FCB4:
/* 02FCB4 0042FCB4 8FBF0034 */  lw          $ra, 0x34($sp)
.L0042FCB8:
/* 02FCB8 0042FCB8 8FB00018 */  lw          $s0, 0x18($sp)
/* 02FCBC 0042FCBC 8FB1001C */  lw          $s1, 0x1C($sp)
/* 02FCC0 0042FCC0 8FB20020 */  lw          $s2, 0x20($sp)
/* 02FCC4 0042FCC4 8FB30024 */  lw          $s3, 0x24($sp)
/* 02FCC8 0042FCC8 8FB40028 */  lw          $s4, 0x28($sp)
/* 02FCCC 0042FCCC 8FB5002C */  lw          $s5, 0x2C($sp)
/* 02FCD0 0042FCD0 03E00008 */  jr          $ra
/* 02FCD4 0042FCD4 27BD0038 */   addiu      $sp, $sp, 0x38
