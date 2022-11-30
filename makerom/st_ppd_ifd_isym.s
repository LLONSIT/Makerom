glabel st_ppd_ifd_isym # 669
# _gp_disp: 0xFBE2410
.set noreorder; .cpload $t9; # .set reorder
/* 03B93C 0043B93C 8F8E87C4 */  lw          $t6, %got(st_pchdr)($gp)
/* 03B940 0043B940 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03B944 0043B944 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03B948 0043B948 8DCE0000 */  lw          $t6, 0x0($t6)
/* 03B94C 0043B94C AFBC0018 */  sw          $gp, 0x18($sp)
/* 03B950 0043B950 AFA40020 */  sw          $a0, 0x20($sp)
/* 03B954 0043B954 8DCF0004 */  lw          $t7, 0x4($t6)
/* 03B958 0043B958 00A03825 */  move        $a3, $a1
/* 03B95C 0043B95C 15E00008 */  bnez        $t7, .L0043B980
/* 03B960 0043B960 00000000 */   nop
/* 03B964 0043B964 8F998614 */  lw          $t9, %call16(_md_st_internal)($gp)
/* 03B968 0043B968 8F84802C */  lw          $a0, %got(D_10015C20)($gp)
/* 03B96C 0043B96C AFA50024 */  sw          $a1, 0x24($sp)
/* 03B970 0043B970 0320F809 */  jalr        $t9
/* 03B974 0043B974 24845C20 */   addiu      $a0, $a0, %lo(D_10015C20)
/* 03B978 0043B978 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03B97C 0043B97C 8FA70024 */  lw          $a3, 0x24($sp)
.L0043B980:
/* 03B980 0043B980 8F998604 */  lw          $t9, %call16(st_pcfd_ifd)($gp)
/* 03B984 0043B984 8FA40020 */  lw          $a0, 0x20($sp)
/* 03B988 0043B988 AFA70024 */  sw          $a3, 0x24($sp)
/* 03B98C 0043B98C 0320F809 */  jalr        $t9
/* 03B990 0043B990 00000000 */   nop
/* 03B994 0043B994 8C580000 */  lw          $t8, 0x0($v0)
/* 03B998 0043B998 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03B99C 0043B99C 8FA70024 */  lw          $a3, 0x24($sp)
/* 03B9A0 0043B9A0 9719002A */  lhu         $t9, 0x2A($t8)
/* 03B9A4 0043B9A4 00403025 */  move        $a2, $v0
/* 03B9A8 0043B9A8 00001825 */  move        $v1, $zero
/* 03B9AC 0043B9AC 13200011 */  beqz        $t9, .L0043B9F4
/* 03B9B0 0043B9B0 8FBF001C */   lw         $ra, 0x1C($sp)
/* 03B9B4 0043B9B4 00002825 */  move        $a1, $zero
/* 03B9B8 0043B9B8 8C440034 */  lw          $a0, 0x34($v0)
/* 03B9BC 0043B9BC 8C880004 */  lw          $t0, 0x4($a0)
.L0043B9C0:
/* 03B9C0 0043B9C0 54E80005 */  bnel        $a3, $t0, .L0043B9D8
/* 03B9C4 0043B9C4 8CCA0000 */   lw         $t2, 0x0($a2)
/* 03B9C8 0043B9C8 8CC90034 */  lw          $t1, 0x34($a2)
/* 03B9CC 0043B9CC 1000000A */  b           .L0043B9F8
/* 03B9D0 0043B9D0 01251021 */   addu       $v0, $t1, $a1
/* 03B9D4 0043B9D4 8CCA0000 */  lw          $t2, 0x0($a2)
.L0043B9D8:
/* 03B9D8 0043B9D8 24630001 */  addiu       $v1, $v1, 0x1
/* 03B9DC 0043B9DC 24A50034 */  addiu       $a1, $a1, 0x34
/* 03B9E0 0043B9E0 954B002A */  lhu         $t3, 0x2A($t2)
/* 03B9E4 0043B9E4 24840034 */  addiu       $a0, $a0, 0x34
/* 03B9E8 0043B9E8 006B082B */  sltu        $at, $v1, $t3
/* 03B9EC 0043B9EC 5420FFF4 */  bnel        $at, $zero, .L0043B9C0
/* 03B9F0 0043B9F0 8C880004 */   lw         $t0, 0x4($a0)
.L0043B9F4:
/* 03B9F4 0043B9F4 00001025 */  move        $v0, $zero
.L0043B9F8:
/* 03B9F8 0043B9F8 03E00008 */  jr          $ra
/* 03B9FC 0043B9FC 27BD0020 */   addiu      $sp, $sp, 0x20
