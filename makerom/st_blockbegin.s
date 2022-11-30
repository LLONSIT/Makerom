glabel st_blockbegin # 692
# _gp_disp: 0xFBE1008
.set noreorder; .cpload $t9; # .set reorder
/* 03CD44 0043CD44 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 03CD48 0043CD48 24020001 */  addiu       $v0, $zero, 0x1
/* 03CD4C 0043CD4C AFBF0024 */  sw          $ra, 0x24($sp)
/* 03CD50 0043CD50 AFBC0020 */  sw          $gp, 0x20($sp)
/* 03CD54 0043CD54 14C2000A */  bne         $a2, $v0, .L0043CD80
/* 03CD58 0043CD58 00C03825 */   move       $a3, $a2
/* 03CD5C 0043CD5C 8F8E8030 */  lw          $t6, %got(B_1001B804)($gp)
/* 03CD60 0043CD60 3C08000F */  lui         $t0, (0xFFFFF >> 16)
/* 03CD64 0043CD64 8DCEB804 */  lw          $t6, %lo(B_1001B804)($t6)
/* 03CD68 0043CD68 11C00005 */  beqz        $t6, .L0043CD80
/* 03CD6C 0043CD6C 00000000 */   nop
/* 03CD70 0043CD70 8F81802C */  lw          $at, %got(D_10015D44)($gp)
/* 03CD74 0043CD74 3508FFFF */  ori         $t0, $t0, (0xFFFFF & 0xFFFF)
/* 03CD78 0043CD78 10000008 */  b           .L0043CD9C
/* 03CD7C 0043CD7C AC225D44 */   sw         $v0, %lo(D_10015D44)($at)
.L0043CD80:
/* 03CD80 0043CD80 8F9985FC */  lw          $t9, %call16(st_symadd)($gp)
/* 03CD84 0043CD84 24060007 */  addiu       $a2, $zero, 0x7
/* 03CD88 0043CD88 AFA00010 */  sw          $zero, 0x10($sp)
/* 03CD8C 0043CD8C 0320F809 */  jalr        $t9
/* 03CD90 0043CD90 00000000 */   nop
/* 03CD94 0043CD94 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03CD98 0043CD98 00404025 */  move        $t0, $v0
.L0043CD9C:
/* 03CD9C 0043CD9C 8F9985D4 */  lw          $t9, %call16(st_currentifd)($gp)
/* 03CDA0 0043CDA0 AFA80034 */  sw          $t0, 0x34($sp)
/* 03CDA4 0043CDA4 0320F809 */  jalr        $t9
/* 03CDA8 0043CDA8 00000000 */   nop
/* 03CDAC 0043CDAC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03CDB0 0043CDB0 8FA80034 */  lw          $t0, 0x34($sp)
/* 03CDB4 0043CDB4 AFA2002C */  sw          $v0, 0x2C($sp)
/* 03CDB8 0043CDB8 8F858030 */  lw          $a1, %got(B_1001B808)($gp)
/* 03CDBC 0043CDBC 8F898030 */  lw          $t1, %got(B_1001B804)($gp)
/* 03CDC0 0043CDC0 24060008 */  addiu       $a2, $zero, 0x8
/* 03CDC4 0043CDC4 24A5B808 */  addiu       $a1, $a1, %lo(B_1001B808)
/* 03CDC8 0043CDC8 2529B804 */  addiu       $t1, $t1, %lo(B_1001B804)
/* 03CDCC 0043CDCC 8D230000 */  lw          $v1, 0x0($t1)
/* 03CDD0 0043CDD0 8CAF0000 */  lw          $t7, 0x0($a1)
/* 03CDD4 0043CDD4 24070019 */  addiu       $a3, $zero, 0x19
/* 03CDD8 0043CDD8 AFA80030 */  sw          $t0, 0x30($sp)
/* 03CDDC 0043CDDC 006F082A */  slt         $at, $v1, $t7
/* 03CDE0 0043CDE0 1420000E */  bnez        $at, .L0043CE1C
/* 03CDE4 0043CDE4 00000000 */   nop
/* 03CDE8 0043CDE8 8F9985F8 */  lw          $t9, %call16(st_malloc)($gp)
/* 03CDEC 0043CDEC 8F848030 */  lw          $a0, %got(B_1001B800)($gp)
/* 03CDF0 0043CDF0 AFA80034 */  sw          $t0, 0x34($sp)
/* 03CDF4 0043CDF4 0320F809 */  jalr        $t9
/* 03CDF8 0043CDF8 8C84B800 */   lw         $a0, %lo(B_1001B800)($a0)
/* 03CDFC 0043CDFC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03CE00 0043CE00 8FA80034 */  lw          $t0, 0x34($sp)
/* 03CE04 0043CE04 8F818030 */  lw          $at, %got(B_1001B800)($gp)
/* 03CE08 0043CE08 8F838030 */  lw          $v1, %got(B_1001B804)($gp)
/* 03CE0C 0043CE0C 8F898030 */  lw          $t1, %got(B_1001B804)($gp)
/* 03CE10 0043CE10 AC22B800 */  sw          $v0, %lo(B_1001B800)($at)
/* 03CE14 0043CE14 8C63B804 */  lw          $v1, %lo(B_1001B804)($v1)
/* 03CE18 0043CE18 2529B804 */  addiu       $t1, $t1, %lo(B_1001B804)
.L0043CE1C:
/* 03CE1C 0043CE1C 8F988030 */  lw          $t8, %got(B_1001B800)($gp)
/* 03CE20 0043CE20 27A2002C */  addiu       $v0, $sp, 0x2C
/* 03CE24 0043CE24 8C4C0000 */  lw          $t4, 0x0($v0)
/* 03CE28 0043CE28 8F18B800 */  lw          $t8, %lo(B_1001B800)($t8)
/* 03CE2C 0043CE2C 0003C8C0 */  sll         $t9, $v1, 3
/* 03CE30 0043CE30 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03CE34 0043CE34 03195021 */  addu        $t2, $t8, $t9
/* 03CE38 0043CE38 AD4C0000 */  sw          $t4, 0x0($t2)
/* 03CE3C 0043CE3C 8C4B0004 */  lw          $t3, 0x4($v0)
/* 03CE40 0043CE40 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03CE44 0043CE44 AD4B0004 */  sw          $t3, 0x4($t2)
/* 03CE48 0043CE48 8D2D0000 */  lw          $t5, 0x0($t1)
/* 03CE4C 0043CE4C 25AE0001 */  addiu       $t6, $t5, 0x1
/* 03CE50 0043CE50 15010003 */  bne         $t0, $at, .L0043CE60
/* 03CE54 0043CE54 AD2E0000 */   sw         $t6, 0x0($t1)
/* 03CE58 0043CE58 10000008 */  b           .L0043CE7C
/* 03CE5C 0043CE5C 00001025 */   move       $v0, $zero
.L0043CE60:
/* 03CE60 0043CE60 8C440000 */  lw          $a0, 0x0($v0)
/* 03CE64 0043CE64 8F9985CC */  lw          $t9, %call16(st_idn_dn)($gp)
/* 03CE68 0043CE68 AFA40000 */  sw          $a0, 0x0($sp)
/* 03CE6C 0043CE6C 8C450004 */  lw          $a1, 0x4($v0)
/* 03CE70 0043CE70 0320F809 */  jalr        $t9
/* 03CE74 0043CE74 AFA50004 */   sw         $a1, 0x4($sp)
/* 03CE78 0043CE78 8FBC0020 */  lw          $gp, 0x20($sp)
.L0043CE7C:
/* 03CE7C 0043CE7C 8FBF0024 */  lw          $ra, 0x24($sp)
/* 03CE80 0043CE80 27BD0038 */  addiu       $sp, $sp, 0x38
/* 03CE84 0043CE84 03E00008 */  jr          $ra
/* 03CE88 0043CE88 00000000 */   nop
