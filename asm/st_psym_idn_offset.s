glabel st_psym_idn_offset # 700
# _gp_disp: 0xFBE0640
.set noreorder; .cpload $t9; # .set reorder
/* 03D70C 0043D70C 27BDFF98 */  addiu       $sp, $sp, -0x68
/* 03D710 0043D710 8F998630 */  lw          $t9, %call16(st_pdn_idn)($gp)
/* 03D714 0043D714 AFBF003C */  sw          $ra, 0x3C($sp)
/* 03D718 0043D718 AFBE0038 */  sw          $fp, 0x38($sp)
/* 03D71C 0043D71C AFBC0034 */  sw          $gp, 0x34($sp)
/* 03D720 0043D720 AFB70030 */  sw          $s7, 0x30($sp)
/* 03D724 0043D724 AFB6002C */  sw          $s6, 0x2C($sp)
/* 03D728 0043D728 AFB50028 */  sw          $s5, 0x28($sp)
/* 03D72C 0043D72C AFB40024 */  sw          $s4, 0x24($sp)
/* 03D730 0043D730 AFB30020 */  sw          $s3, 0x20($sp)
/* 03D734 0043D734 AFB2001C */  sw          $s2, 0x1C($sp)
/* 03D738 0043D738 AFB10018 */  sw          $s1, 0x18($sp)
/* 03D73C 0043D73C AFB00014 */  sw          $s0, 0x14($sp)
/* 03D740 0043D740 0320F809 */  jalr        $t9
/* 03D744 0043D744 AFA5006C */   sw         $a1, 0x6C($sp)
/* 03D748 0043D748 8C580000 */  lw          $t8, 0x0($v0)
/* 03D74C 0043D74C 8FBC0034 */  lw          $gp, 0x34($sp)
/* 03D750 0043D750 27AE0060 */  addiu       $t6, $sp, 0x60
/* 03D754 0043D754 ADD80000 */  sw          $t8, 0x0($t6)
/* 03D758 0043D758 8C4F0004 */  lw          $t7, 0x4($v0)
/* 03D75C 0043D75C 3C017FFF */  lui         $at, (0x7FFFFFFF >> 16)
/* 03D760 0043D760 3421FFFF */  ori         $at, $at, (0x7FFFFFFF & 0xFFFF)
/* 03D764 0043D764 ADCF0004 */  sw          $t7, 0x4($t6)
/* 03D768 0043D768 8FB90060 */  lw          $t9, 0x60($sp)
/* 03D76C 0043D76C 1721000D */  bne         $t9, $at, .L0043D7A4
/* 03D770 0043D770 00000000 */   nop
/* 03D774 0043D774 8F998628 */  lw          $t9, %call16(st_pext_iext)($gp)
/* 03D778 0043D778 8FA40064 */  lw          $a0, 0x64($sp)
/* 03D77C 0043D77C 0320F809 */  jalr        $t9
/* 03D780 0043D780 00000000 */   nop
/* 03D784 0043D784 94480002 */  lhu         $t0, 0x2($v0)
/* 03D788 0043D788 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03D78C 0043D78C 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03D790 0043D790 AFA80060 */  sw          $t0, 0x60($sp)
/* 03D794 0043D794 8C49000C */  lw          $t1, 0xC($v0)
/* 03D798 0043D798 8FBC0034 */  lw          $gp, 0x34($sp)
/* 03D79C 0043D79C 01215024 */  and         $t2, $t1, $at
/* 03D7A0 0043D7A0 AFAA0064 */  sw          $t2, 0x64($sp)
.L0043D7A4:
/* 03D7A4 0043D7A4 8F998608 */  lw          $t9, %call16(st_psym_ifd_isym)($gp)
/* 03D7A8 0043D7A8 8FA50064 */  lw          $a1, 0x64($sp)
/* 03D7AC 0043D7AC 8FA40060 */  lw          $a0, 0x60($sp)
/* 03D7B0 0043D7B0 0320F809 */  jalr        $t9
/* 03D7B4 0043D7B4 00000000 */   nop
/* 03D7B8 0043D7B8 8C4B0008 */  lw          $t3, 0x8($v0)
/* 03D7BC 0043D7BC 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03D7C0 0043D7C0 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03D7C4 0043D7C4 01616024 */  and         $t4, $t3, $at
/* 03D7C8 0043D7C8 8FBC0034 */  lw          $gp, 0x34($sp)
/* 03D7CC 0043D7CC 15810003 */  bne         $t4, $at, .L0043D7DC
/* 03D7D0 0043D7D0 00403025 */   move       $a2, $v0
/* 03D7D4 0043D7D4 1000004A */  b           .L0043D900
/* 03D7D8 0043D7D8 00001025 */   move       $v0, $zero
.L0043D7DC:
/* 03D7DC 0043D7DC 8F9985F0 */  lw          $t9, %call16(st_paux_ifd_iaux)($gp)
/* 03D7E0 0043D7E0 8CC50008 */  lw          $a1, 0x8($a2)
/* 03D7E4 0043D7E4 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03D7E8 0043D7E8 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03D7EC 0043D7EC 8FA40060 */  lw          $a0, 0x60($sp)
/* 03D7F0 0043D7F0 0320F809 */  jalr        $t9
/* 03D7F4 0043D7F4 00A12824 */   and        $a1, $a1, $at
/* 03D7F8 0043D7F8 14400003 */  bnez        $v0, .L0043D808
/* 03D7FC 0043D7FC 8FBC0034 */   lw         $gp, 0x34($sp)
/* 03D800 0043D800 1000003F */  b           .L0043D900
/* 03D804 0043D804 00001025 */   move       $v0, $zero
.L0043D808:
/* 03D808 0043D808 8FAD0064 */  lw          $t5, 0x64($sp)
/* 03D80C 0043D80C 8C500000 */  lw          $s0, 0x0($v0)
/* 03D810 0043D810 241E0007 */  addiu       $fp, $zero, 0x7
/* 03D814 0043D814 25AE0001 */  addiu       $t6, $t5, 0x1
/* 03D818 0043D818 01D0082B */  sltu        $at, $t6, $s0
/* 03D81C 0043D81C 10200037 */  beqz        $at, .L0043D8FC
/* 03D820 0043D820 AFAE0064 */   sw         $t6, 0x64($sp)
/* 03D824 0043D824 2417000B */  addiu       $s7, $zero, 0xB
/* 03D828 0043D828 2416000E */  addiu       $s6, $zero, 0xE
/* 03D82C 0043D82C 24150006 */  addiu       $s5, $zero, 0x6
/* 03D830 0043D830 24140010 */  addiu       $s4, $zero, 0x10
/* 03D834 0043D834 24130005 */  addiu       $s3, $zero, 0x5
/* 03D838 0043D838 24120003 */  addiu       $s2, $zero, 0x3
/* 03D83C 0043D83C 24110004 */  addiu       $s1, $zero, 0x4
.L0043D840:
/* 03D840 0043D840 8F998608 */  lw          $t9, %call16(st_psym_ifd_isym)($gp)
/* 03D844 0043D844 8FA50064 */  lw          $a1, 0x64($sp)
/* 03D848 0043D848 8FA40060 */  lw          $a0, 0x60($sp)
/* 03D84C 0043D84C 0320F809 */  jalr        $t9
/* 03D850 0043D850 00000000 */   nop
/* 03D854 0043D854 8C450008 */  lw          $a1, 0x8($v0)
/* 03D858 0043D858 8FBC0034 */  lw          $gp, 0x34($sp)
/* 03D85C 0043D85C 00403025 */  move        $a2, $v0
/* 03D860 0043D860 00051E82 */  srl         $v1, $a1, 26
/* 03D864 0043D864 12230002 */  beq         $s1, $v1, .L0043D870
/* 03D868 0043D868 00052180 */   sll        $a0, $a1, 6
/* 03D86C 0043D86C 1643000A */  bne         $s2, $v1, .L0043D898
.L0043D870:
/* 03D870 0043D870 000426C2 */   srl        $a0, $a0, 27
/* 03D874 0043D874 12640003 */  beq         $s3, $a0, .L0043D884
/* 03D878 0043D878 8FAF006C */   lw         $t7, 0x6C($sp)
/* 03D87C 0043D87C 16840006 */  bne         $s4, $a0, .L0043D898
/* 03D880 0043D880 00000000 */   nop
.L0043D884:
/* 03D884 0043D884 8C580004 */  lw          $t8, 0x4($v0)
/* 03D888 0043D888 15F80003 */  bne         $t7, $t8, .L0043D898
/* 03D88C 0043D88C 00000000 */   nop
/* 03D890 0043D890 1000001B */  b           .L0043D900
/* 03D894 0043D894 00C01025 */   move       $v0, $a2
.L0043D898:
/* 03D898 0043D898 52A30019 */  beql        $s5, $v1, .L0043D900
/* 03D89C 0043D89C 00001025 */   move       $v0, $zero
/* 03D8A0 0043D8A0 52C30017 */  beql        $s6, $v1, .L0043D900
/* 03D8A4 0043D8A4 00001025 */   move       $v0, $zero
/* 03D8A8 0043D8A8 0005C980 */  sll         $t9, $a1, 6
/* 03D8AC 0043D8AC 001946C2 */  srl         $t0, $t9, 27
/* 03D8B0 0043D8B0 56E8000E */  bnel        $s7, $t0, .L0043D8EC
/* 03D8B4 0043D8B4 8FA50064 */   lw         $a1, 0x64($sp)
/* 03D8B8 0043D8B8 13C30006 */  beq         $fp, $v1, .L0043D8D4
/* 03D8BC 0043D8BC 2401001A */   addiu      $at, $zero, 0x1A
/* 03D8C0 0043D8C0 10610004 */  beq         $v1, $at, .L0043D8D4
/* 03D8C4 0043D8C4 2401001B */   addiu      $at, $zero, 0x1B
/* 03D8C8 0043D8C8 10610002 */  beq         $v1, $at, .L0043D8D4
/* 03D8CC 0043D8CC 2401001C */   addiu      $at, $zero, 0x1C
/* 03D8D0 0043D8D0 14610005 */  bne         $v1, $at, .L0043D8E8
.L0043D8D4:
/* 03D8D4 0043D8D4 3C01000F */   lui        $at, (0xFFFFF >> 16)
/* 03D8D8 0043D8D8 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03D8DC 0043D8DC 00A14824 */  and         $t1, $a1, $at
/* 03D8E0 0043D8E0 252AFFFF */  addiu       $t2, $t1, -0x1
/* 03D8E4 0043D8E4 AFAA0064 */  sw          $t2, 0x64($sp)
.L0043D8E8:
/* 03D8E8 0043D8E8 8FA50064 */  lw          $a1, 0x64($sp)
.L0043D8EC:
/* 03D8EC 0043D8EC 24A50001 */  addiu       $a1, $a1, 0x1
/* 03D8F0 0043D8F0 00B0082B */  sltu        $at, $a1, $s0
/* 03D8F4 0043D8F4 1420FFD2 */  bnez        $at, .L0043D840
/* 03D8F8 0043D8F8 AFA50064 */   sw         $a1, 0x64($sp)
.L0043D8FC:
/* 03D8FC 0043D8FC 00001025 */  move        $v0, $zero
.L0043D900:
/* 03D900 0043D900 8FBF003C */  lw          $ra, 0x3C($sp)
/* 03D904 0043D904 8FB00014 */  lw          $s0, 0x14($sp)
/* 03D908 0043D908 8FB10018 */  lw          $s1, 0x18($sp)
/* 03D90C 0043D90C 8FB2001C */  lw          $s2, 0x1C($sp)
/* 03D910 0043D910 8FB30020 */  lw          $s3, 0x20($sp)
/* 03D914 0043D914 8FB40024 */  lw          $s4, 0x24($sp)
/* 03D918 0043D918 8FB50028 */  lw          $s5, 0x28($sp)
/* 03D91C 0043D91C 8FB6002C */  lw          $s6, 0x2C($sp)
/* 03D920 0043D920 8FB70030 */  lw          $s7, 0x30($sp)
/* 03D924 0043D924 8FBE0038 */  lw          $fp, 0x38($sp)
/* 03D928 0043D928 03E00008 */  jr          $ra
/* 03D92C 0043D92C 27BD0068 */   addiu      $sp, $sp, 0x68
