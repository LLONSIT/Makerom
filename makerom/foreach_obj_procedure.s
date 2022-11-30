glabel foreach_obj_procedure # 529
# _gp_disp: 0xFBEF198
.set noreorder; .cpload $t9; # .set reorder
/* 02EBB4 0042EBB4 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 02EBB8 0042EBB8 AFB5002C */  sw          $s5, 0x2C($sp)
/* 02EBBC 0042EBBC AFB40028 */  sw          $s4, 0x28($sp)
/* 02EBC0 0042EBC0 AFB30024 */  sw          $s3, 0x24($sp)
/* 02EBC4 0042EBC4 00809825 */  move        $s3, $a0
/* 02EBC8 0042EBC8 00C0A025 */  move        $s4, $a2
/* 02EBCC 0042EBCC 00A0A825 */  move        $s5, $a1
/* 02EBD0 0042EBD0 AFBF0034 */  sw          $ra, 0x34($sp)
/* 02EBD4 0042EBD4 AFBC0030 */  sw          $gp, 0x30($sp)
/* 02EBD8 0042EBD8 AFB20020 */  sw          $s2, 0x20($sp)
/* 02EBDC 0042EBDC AFB1001C */  sw          $s1, 0x1C($sp)
/* 02EBE0 0042EBE0 10800004 */  beqz        $a0, .L0042EBF4
/* 02EBE4 0042EBE4 AFB00018 */   sw         $s0, 0x18($sp)
/* 02EBE8 0042EBE8 8C84009C */  lw          $a0, 0x9C($a0)
/* 02EBEC 0042EBEC 54800004 */  bnel        $a0, $zero, .L0042EC00
/* 02EBF0 0042EBF0 8E7000D4 */   lw         $s0, 0xD4($s3)
.L0042EBF4:
/* 02EBF4 0042EBF4 10000015 */  b           .L0042EC4C
/* 02EBF8 0042EBF8 2402FFFF */   addiu      $v0, $zero, -0x1
/* 02EBFC 0042EBFC 8E7000D4 */  lw          $s0, 0xD4($s3)
.L0042EC00:
/* 02EC00 0042EC00 8C830018 */  lw          $v1, 0x18($a0)
/* 02EC04 0042EC04 2412FFFF */  addiu       $s2, $zero, -0x1
/* 02EC08 0042EC08 02038821 */  addu        $s1, $s0, $v1
/* 02EC0C 0042EC0C 0211082B */  sltu        $at, $s0, $s1
/* 02EC10 0042EC10 1020000D */  beqz        $at, .L0042EC48
/* 02EC14 0042EC14 02602025 */   move       $a0, $s3
.L0042EC18:
/* 02EC18 0042EC18 02002825 */  move        $a1, $s0
/* 02EC1C 0042EC1C 02803025 */  move        $a2, $s4
/* 02EC20 0042EC20 02A0F809 */  jalr        $s5
/* 02EC24 0042EC24 02A0C825 */   move       $t9, $s5
/* 02EC28 0042EC28 10520003 */  beq         $v0, $s2, .L0042EC38
/* 02EC2C 0042EC2C 8FBC0030 */   lw         $gp, 0x30($sp)
/* 02EC30 0042EC30 10000007 */  b           .L0042EC50
/* 02EC34 0042EC34 8FBF0034 */   lw         $ra, 0x34($sp)
.L0042EC38:
/* 02EC38 0042EC38 26100001 */  addiu       $s0, $s0, 0x1
/* 02EC3C 0042EC3C 0211082B */  sltu        $at, $s0, $s1
/* 02EC40 0042EC40 5420FFF5 */  bnel        $at, $zero, .L0042EC18
/* 02EC44 0042EC44 02602025 */   move       $a0, $s3
.L0042EC48:
/* 02EC48 0042EC48 2402FFFF */  addiu       $v0, $zero, -0x1
.L0042EC4C:
/* 02EC4C 0042EC4C 8FBF0034 */  lw          $ra, 0x34($sp)
.L0042EC50:
/* 02EC50 0042EC50 8FB00018 */  lw          $s0, 0x18($sp)
/* 02EC54 0042EC54 8FB1001C */  lw          $s1, 0x1C($sp)
/* 02EC58 0042EC58 8FB20020 */  lw          $s2, 0x20($sp)
/* 02EC5C 0042EC5C 8FB30024 */  lw          $s3, 0x24($sp)
/* 02EC60 0042EC60 8FB40028 */  lw          $s4, 0x28($sp)
/* 02EC64 0042EC64 8FB5002C */  lw          $s5, 0x2C($sp)
/* 02EC68 0042EC68 03E00008 */  jr          $ra
/* 02EC6C 0042EC6C 27BD0038 */   addiu      $sp, $sp, 0x38
