glabel st_str_ifd_iss # 668
# _gp_disp: 0xFBE24E0
.set noreorder; .cpload $t9; # .set reorder
/* 03B86C 0043B86C 8F8E87C4 */  lw          $t6, %got(st_pchdr)($gp)
/* 03B870 0043B870 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03B874 0043B874 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03B878 0043B878 8DCE0000 */  lw          $t6, 0x0($t6)
/* 03B87C 0043B87C AFBC0018 */  sw          $gp, 0x18($sp)
/* 03B880 0043B880 00803025 */  move        $a2, $a0
/* 03B884 0043B884 8DCF0004 */  lw          $t7, 0x4($t6)
/* 03B888 0043B888 55E0000B */  bnel        $t7, $zero, .L0043B8B8
/* 03B88C 0043B88C 3C017FFF */   lui        $at, (0x7FFFFFFF >> 16)
/* 03B890 0043B890 8F998614 */  lw          $t9, %call16(_md_st_internal)($gp)
/* 03B894 0043B894 8F84802C */  lw          $a0, %got(D_10015C20)($gp)
/* 03B898 0043B898 AFA50024 */  sw          $a1, 0x24($sp)
/* 03B89C 0043B89C AFA60020 */  sw          $a2, 0x20($sp)
/* 03B8A0 0043B8A0 0320F809 */  jalr        $t9
/* 03B8A4 0043B8A4 24845C20 */   addiu      $a0, $a0, %lo(D_10015C20)
/* 03B8A8 0043B8A8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03B8AC 0043B8AC 8FA50024 */  lw          $a1, 0x24($sp)
/* 03B8B0 0043B8B0 8FA60020 */  lw          $a2, 0x20($sp)
/* 03B8B4 0043B8B4 3C017FFF */  lui         $at, (0x7FFFFFFF >> 16)
.L0043B8B8:
/* 03B8B8 0043B8B8 3421FFFF */  ori         $at, $at, (0x7FFFFFFF & 0xFFFF)
/* 03B8BC 0043B8BC 14C10007 */  bne         $a2, $at, .L0043B8DC
/* 03B8C0 0043B8C0 00000000 */   nop
/* 03B8C4 0043B8C4 8F99861C */  lw          $t9, %call16(_md_st_str_extiss)($gp)
/* 03B8C8 0043B8C8 00A02025 */  move        $a0, $a1
/* 03B8CC 0043B8CC 0320F809 */  jalr        $t9
/* 03B8D0 0043B8D0 00000000 */   nop
/* 03B8D4 0043B8D4 10000012 */  b           .L0043B920
/* 03B8D8 0043B8D8 8FBC0018 */   lw         $gp, 0x18($sp)
.L0043B8DC:
/* 03B8DC 0043B8DC 8F998604 */  lw          $t9, %call16(st_pcfd_ifd)($gp)
/* 03B8E0 0043B8E0 00C02025 */  move        $a0, $a2
/* 03B8E4 0043B8E4 AFA50024 */  sw          $a1, 0x24($sp)
/* 03B8E8 0043B8E8 0320F809 */  jalr        $t9
/* 03B8EC 0043B8EC 00000000 */   nop
/* 03B8F0 0043B8F0 8C580000 */  lw          $t8, 0x0($v0)
/* 03B8F4 0043B8F4 8FA50024 */  lw          $a1, 0x24($sp)
/* 03B8F8 0043B8F8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03B8FC 0043B8FC 8F03000C */  lw          $v1, 0xC($t8)
/* 03B900 0043B900 10600006 */  beqz        $v1, .L0043B91C
/* 03B904 0043B904 00A3082A */   slt        $at, $a1, $v1
/* 03B908 0043B908 50200005 */  beql        $at, $zero, .L0043B920
/* 03B90C 0043B90C 00001025 */   move       $v0, $zero
/* 03B910 0043B910 8C590014 */  lw          $t9, 0x14($v0)
/* 03B914 0043B914 10000002 */  b           .L0043B920
/* 03B918 0043B918 03251021 */   addu       $v0, $t9, $a1
.L0043B91C:
/* 03B91C 0043B91C 00001025 */  move        $v0, $zero
.L0043B920:
/* 03B920 0043B920 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03B924 0043B924 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03B928 0043B928 03E00008 */  jr          $ra
/* 03B92C 0043B92C 00000000 */   nop
