glabel _sgi_st_blockbegin # 691
# _gp_disp: 0xFBE1160
.set noreorder; .cpload $t9; # .set reorder
/* 03CBEC 0043CBEC 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 03CBF0 0043CBF0 24020001 */  addiu       $v0, $zero, 0x1
/* 03CBF4 0043CBF4 AFBF0024 */  sw          $ra, 0x24($sp)
/* 03CBF8 0043CBF8 AFBC0020 */  sw          $gp, 0x20($sp)
/* 03CBFC 0043CBFC AFA60040 */  sw          $a2, 0x40($sp)
/* 03CC00 0043CC00 14C2000A */  bne         $a2, $v0, .L0043CC2C
/* 03CC04 0043CC04 AFA70044 */   sw         $a3, 0x44($sp)
/* 03CC08 0043CC08 8F8F8030 */  lw          $t7, %got(B_1001B804)($gp)
/* 03CC0C 0043CC0C 3C08000F */  lui         $t0, (0xFFFFF >> 16)
/* 03CC10 0043CC10 8DEFB804 */  lw          $t7, %lo(B_1001B804)($t7)
/* 03CC14 0043CC14 11E00005 */  beqz        $t7, .L0043CC2C
/* 03CC18 0043CC18 00000000 */   nop
/* 03CC1C 0043CC1C 8F81802C */  lw          $at, %got(D_10015D44)($gp)
/* 03CC20 0043CC20 3508FFFF */  ori         $t0, $t0, (0xFFFFF & 0xFFFF)
/* 03CC24 0043CC24 10000008 */  b           .L0043CC48
/* 03CC28 0043CC28 AC225D44 */   sw         $v0, %lo(D_10015D44)($at)
.L0043CC2C:
/* 03CC2C 0043CC2C 8F9985FC */  lw          $t9, %call16(st_symadd)($gp)
/* 03CC30 0043CC30 8FA60044 */  lw          $a2, 0x44($sp)
/* 03CC34 0043CC34 8FA70040 */  lw          $a3, 0x40($sp)
/* 03CC38 0043CC38 0320F809 */  jalr        $t9
/* 03CC3C 0043CC3C AFA00010 */   sw         $zero, 0x10($sp)
/* 03CC40 0043CC40 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03CC44 0043CC44 00404025 */  move        $t0, $v0
.L0043CC48:
/* 03CC48 0043CC48 8F9985D4 */  lw          $t9, %call16(st_currentifd)($gp)
/* 03CC4C 0043CC4C AFA80034 */  sw          $t0, 0x34($sp)
/* 03CC50 0043CC50 0320F809 */  jalr        $t9
/* 03CC54 0043CC54 00000000 */   nop
/* 03CC58 0043CC58 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03CC5C 0043CC5C 8FA80034 */  lw          $t0, 0x34($sp)
/* 03CC60 0043CC60 AFA2002C */  sw          $v0, 0x2C($sp)
/* 03CC64 0043CC64 8F858030 */  lw          $a1, %got(B_1001B808)($gp)
/* 03CC68 0043CC68 8F898030 */  lw          $t1, %got(B_1001B804)($gp)
/* 03CC6C 0043CC6C 24060008 */  addiu       $a2, $zero, 0x8
/* 03CC70 0043CC70 24A5B808 */  addiu       $a1, $a1, %lo(B_1001B808)
/* 03CC74 0043CC74 2529B804 */  addiu       $t1, $t1, %lo(B_1001B804)
/* 03CC78 0043CC78 8D230000 */  lw          $v1, 0x0($t1)
/* 03CC7C 0043CC7C 8CB80000 */  lw          $t8, 0x0($a1)
/* 03CC80 0043CC80 24070019 */  addiu       $a3, $zero, 0x19
/* 03CC84 0043CC84 AFA80030 */  sw          $t0, 0x30($sp)
/* 03CC88 0043CC88 0078082A */  slt         $at, $v1, $t8
/* 03CC8C 0043CC8C 1420000E */  bnez        $at, .L0043CCC8
/* 03CC90 0043CC90 00000000 */   nop
/* 03CC94 0043CC94 8F9985F8 */  lw          $t9, %call16(st_malloc)($gp)
/* 03CC98 0043CC98 8F848030 */  lw          $a0, %got(B_1001B800)($gp)
/* 03CC9C 0043CC9C AFA80034 */  sw          $t0, 0x34($sp)
/* 03CCA0 0043CCA0 0320F809 */  jalr        $t9
/* 03CCA4 0043CCA4 8C84B800 */   lw         $a0, %lo(B_1001B800)($a0)
/* 03CCA8 0043CCA8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03CCAC 0043CCAC 8FA80034 */  lw          $t0, 0x34($sp)
/* 03CCB0 0043CCB0 8F818030 */  lw          $at, %got(B_1001B800)($gp)
/* 03CCB4 0043CCB4 8F838030 */  lw          $v1, %got(B_1001B804)($gp)
/* 03CCB8 0043CCB8 8F898030 */  lw          $t1, %got(B_1001B804)($gp)
/* 03CCBC 0043CCBC AC22B800 */  sw          $v0, %lo(B_1001B800)($at)
/* 03CCC0 0043CCC0 8C63B804 */  lw          $v1, %lo(B_1001B804)($v1)
/* 03CCC4 0043CCC4 2529B804 */  addiu       $t1, $t1, %lo(B_1001B804)
.L0043CCC8:
/* 03CCC8 0043CCC8 8F998030 */  lw          $t9, %got(B_1001B800)($gp)
/* 03CCCC 0043CCCC 27A2002C */  addiu       $v0, $sp, 0x2C
/* 03CCD0 0043CCD0 8C4D0000 */  lw          $t5, 0x0($v0)
/* 03CCD4 0043CCD4 8F39B800 */  lw          $t9, %lo(B_1001B800)($t9)
/* 03CCD8 0043CCD8 000350C0 */  sll         $t2, $v1, 3
/* 03CCDC 0043CCDC 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03CCE0 0043CCE0 032A5821 */  addu        $t3, $t9, $t2
/* 03CCE4 0043CCE4 AD6D0000 */  sw          $t5, 0x0($t3)
/* 03CCE8 0043CCE8 8C4C0004 */  lw          $t4, 0x4($v0)
/* 03CCEC 0043CCEC 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03CCF0 0043CCF0 AD6C0004 */  sw          $t4, 0x4($t3)
/* 03CCF4 0043CCF4 8D2E0000 */  lw          $t6, 0x0($t1)
/* 03CCF8 0043CCF8 25CF0001 */  addiu       $t7, $t6, 0x1
/* 03CCFC 0043CCFC 15010003 */  bne         $t0, $at, .L0043CD0C
/* 03CD00 0043CD00 AD2F0000 */   sw         $t7, 0x0($t1)
/* 03CD04 0043CD04 10000008 */  b           .L0043CD28
/* 03CD08 0043CD08 00001025 */   move       $v0, $zero
.L0043CD0C:
/* 03CD0C 0043CD0C 8C440000 */  lw          $a0, 0x0($v0)
/* 03CD10 0043CD10 8F9985CC */  lw          $t9, %call16(st_idn_dn)($gp)
/* 03CD14 0043CD14 AFA40000 */  sw          $a0, 0x0($sp)
/* 03CD18 0043CD18 8C450004 */  lw          $a1, 0x4($v0)
/* 03CD1C 0043CD1C 0320F809 */  jalr        $t9
/* 03CD20 0043CD20 AFA50004 */   sw         $a1, 0x4($sp)
/* 03CD24 0043CD24 8FBC0020 */  lw          $gp, 0x20($sp)
.L0043CD28:
/* 03CD28 0043CD28 8FBF0024 */  lw          $ra, 0x24($sp)
/* 03CD2C 0043CD2C 27BD0038 */  addiu       $sp, $sp, 0x38
/* 03CD30 0043CD30 03E00008 */  jr          $ra
/* 03CD34 0043CD34 00000000 */   nop
