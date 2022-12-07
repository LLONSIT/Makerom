glabel foreach_procedure # 530
# _gp_disp: 0xFBEF0D0
.set noreorder; .cpload $t9; # .set reorder
/* 02EC7C 0042EC7C 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 02EC80 0042EC80 AFB5002C */  sw          $s5, 0x2C($sp)
/* 02EC84 0042EC84 AFB40028 */  sw          $s4, 0x28($sp)
/* 02EC88 0042EC88 AFB20020 */  sw          $s2, 0x20($sp)
/* 02EC8C 0042EC8C 00809025 */  move        $s2, $a0
/* 02EC90 0042EC90 00E0A025 */  move        $s4, $a3
/* 02EC94 0042EC94 00C0A825 */  move        $s5, $a2
/* 02EC98 0042EC98 AFBF0034 */  sw          $ra, 0x34($sp)
/* 02EC9C 0042EC9C AFBC0030 */  sw          $gp, 0x30($sp)
/* 02ECA0 0042ECA0 AFB30024 */  sw          $s3, 0x24($sp)
/* 02ECA4 0042ECA4 AFB1001C */  sw          $s1, 0x1C($sp)
/* 02ECA8 0042ECA8 10800006 */  beqz        $a0, .L0042ECC4
/* 02ECAC 0042ECAC AFB00018 */   sw         $s0, 0x18($sp)
/* 02ECB0 0042ECB0 8C8E009C */  lw          $t6, 0x9C($a0)
/* 02ECB4 0042ECB4 0005C0C0 */  sll         $t8, $a1, 3
/* 02ECB8 0042ECB8 0305C021 */  addu        $t8, $t8, $a1
/* 02ECBC 0042ECBC 15C00003 */  bnez        $t6, .L0042ECCC
/* 02ECC0 0042ECC0 0018C0C0 */   sll        $t8, $t8, 3
.L0042ECC4:
/* 02ECC4 0042ECC4 1000001F */  b           .L0042ED44
/* 02ECC8 0042ECC8 2402FFFF */   addiu      $v0, $zero, -0x1
.L0042ECCC:
/* 02ECCC 0042ECCC 8E4800D0 */  lw          $t0, 0xD0($s2)
/* 02ECD0 0042ECD0 8E4F00A0 */  lw          $t7, 0xA0($s2)
/* 02ECD4 0042ECD4 8E4C00D4 */  lw          $t4, 0xD4($s2)
/* 02ECD8 0042ECD8 000848C0 */  sll         $t1, $t0, 3
/* 02ECDC 0042ECDC 01284821 */  addu        $t1, $t1, $t0
/* 02ECE0 0042ECE0 000948C0 */  sll         $t1, $t1, 3
/* 02ECE4 0042ECE4 00095023 */  negu        $t2, $t1
/* 02ECE8 0042ECE8 01F8C821 */  addu        $t9, $t7, $t8
/* 02ECEC 0042ECEC 032A1821 */  addu        $v1, $t9, $t2
/* 02ECF0 0042ECF0 946B0028 */  lhu         $t3, 0x28($v1)
/* 02ECF4 0042ECF4 9464002A */  lhu         $a0, 0x2A($v1)
/* 02ECF8 0042ECF8 2413FFFF */  addiu       $s3, $zero, -0x1
/* 02ECFC 0042ECFC 016C8021 */  addu        $s0, $t3, $t4
/* 02ED00 0042ED00 02048821 */  addu        $s1, $s0, $a0
/* 02ED04 0042ED04 0211082B */  sltu        $at, $s0, $s1
/* 02ED08 0042ED08 1020000D */  beqz        $at, .L0042ED40
/* 02ED0C 0042ED0C 02402025 */   move       $a0, $s2
.L0042ED10:
/* 02ED10 0042ED10 02002825 */  move        $a1, $s0
/* 02ED14 0042ED14 02803025 */  move        $a2, $s4
/* 02ED18 0042ED18 02A0F809 */  jalr        $s5
/* 02ED1C 0042ED1C 02A0C825 */   move       $t9, $s5
/* 02ED20 0042ED20 10530003 */  beq         $v0, $s3, .L0042ED30
/* 02ED24 0042ED24 8FBC0030 */   lw         $gp, 0x30($sp)
/* 02ED28 0042ED28 10000007 */  b           .L0042ED48
/* 02ED2C 0042ED2C 8FBF0034 */   lw         $ra, 0x34($sp)
.L0042ED30:
/* 02ED30 0042ED30 26100001 */  addiu       $s0, $s0, 0x1
/* 02ED34 0042ED34 0211082B */  sltu        $at, $s0, $s1
/* 02ED38 0042ED38 5420FFF5 */  bnel        $at, $zero, .L0042ED10
/* 02ED3C 0042ED3C 02402025 */   move       $a0, $s2
.L0042ED40:
/* 02ED40 0042ED40 2402FFFF */  addiu       $v0, $zero, -0x1
.L0042ED44:
/* 02ED44 0042ED44 8FBF0034 */  lw          $ra, 0x34($sp)
.L0042ED48:
/* 02ED48 0042ED48 8FB00018 */  lw          $s0, 0x18($sp)
/* 02ED4C 0042ED4C 8FB1001C */  lw          $s1, 0x1C($sp)
/* 02ED50 0042ED50 8FB20020 */  lw          $s2, 0x20($sp)
/* 02ED54 0042ED54 8FB30024 */  lw          $s3, 0x24($sp)
/* 02ED58 0042ED58 8FB40028 */  lw          $s4, 0x28($sp)
/* 02ED5C 0042ED5C 8FB5002C */  lw          $s5, 0x2C($sp)
/* 02ED60 0042ED60 03E00008 */  jr          $ra
/* 02ED64 0042ED64 27BD0038 */   addiu      $sp, $sp, 0x38
