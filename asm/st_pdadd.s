glabel st_pdadd # 654
# _gp_disp: 0xFBE32E8
.set noreorder; .cpload $t9; # .set reorder
/* 03AA64 0043AA64 8F8E87C4 */  lw          $t6, %got(st_pchdr)($gp)
/* 03AA68 0043AA68 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03AA6C 0043AA6C AFBF001C */  sw          $ra, 0x1C($sp)
/* 03AA70 0043AA70 8DCE0000 */  lw          $t6, 0x0($t6)
/* 03AA74 0043AA74 AFBC0018 */  sw          $gp, 0x18($sp)
/* 03AA78 0043AA78 AFA40020 */  sw          $a0, 0x20($sp)
/* 03AA7C 0043AA7C 8DCF0004 */  lw          $t7, 0x4($t6)
/* 03AA80 0043AA80 15E00006 */  bnez        $t7, .L0043AA9C
/* 03AA84 0043AA84 00000000 */   nop
/* 03AA88 0043AA88 8F998638 */  lw          $t9, %call16(st_internal)($gp)
/* 03AA8C 0043AA8C 8F84802C */  lw          $a0, %got(D_10015B60)($gp)
/* 03AA90 0043AA90 0320F809 */  jalr        $t9
/* 03AA94 0043AA94 24845B60 */   addiu      $a0, $a0, %lo(D_10015B60)
/* 03AA98 0043AA98 8FBC0018 */  lw          $gp, 0x18($sp)
.L0043AA9C:
/* 03AA9C 0043AA9C 8F8387C8 */  lw          $v1, %got(pcfdcur)($gp)
/* 03AAA0 0043AAA0 8C630000 */  lw          $v1, 0x0($v1)
/* 03AAA4 0043AAA4 54600009 */  bnel        $v1, $zero, .L0043AACC
/* 03AAA8 0043AAA8 8C78003C */   lw         $t8, 0x3C($v1)
/* 03AAAC 0043AAAC 8F998638 */  lw          $t9, %call16(st_internal)($gp)
/* 03AAB0 0043AAB0 8F84802C */  lw          $a0, %got(D_10015B9C)($gp)
/* 03AAB4 0043AAB4 0320F809 */  jalr        $t9
/* 03AAB8 0043AAB8 24845B9C */   addiu      $a0, $a0, %lo(D_10015B9C)
/* 03AABC 0043AABC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03AAC0 0043AAC0 8F8387C8 */  lw          $v1, %got(pcfdcur)($gp)
/* 03AAC4 0043AAC4 8C630000 */  lw          $v1, 0x0($v1)
/* 03AAC8 0043AAC8 8C78003C */  lw          $t8, 0x3C($v1)
.L0043AACC:
/* 03AACC 0043AACC 33190100 */  andi        $t9, $t8, 0x100
/* 03AAD0 0043AAD0 53200009 */  beql        $t9, $zero, .L0043AAF8
/* 03AAD4 0043AAD4 8C680000 */   lw         $t0, 0x0($v1)
/* 03AAD8 0043AAD8 8F998638 */  lw          $t9, %call16(st_internal)($gp)
/* 03AADC 0043AADC 8F84802C */  lw          $a0, %got(D_10015BD0)($gp)
/* 03AAE0 0043AAE0 0320F809 */  jalr        $t9
/* 03AAE4 0043AAE4 24845BD0 */   addiu      $a0, $a0, %lo(D_10015BD0)
/* 03AAE8 0043AAE8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03AAEC 0043AAEC 8F8387C8 */  lw          $v1, %got(pcfdcur)($gp)
/* 03AAF0 0043AAF0 8C630000 */  lw          $v1, 0x0($v1)
/* 03AAF4 0043AAF4 8C680000 */  lw          $t0, 0x0($v1)
.L0043AAF8:
/* 03AAF8 0043AAF8 8C690038 */  lw          $t1, 0x38($v1)
/* 03AAFC 0043AAFC 24650038 */  addiu       $a1, $v1, 0x38
/* 03AB00 0043AB00 9504002A */  lhu         $a0, 0x2A($t0)
/* 03AB04 0043AB04 0089082B */  sltu        $at, $a0, $t1
/* 03AB08 0043AB08 5420000F */  bnel        $at, $zero, .L0043AB48
/* 03AB0C 0043AB0C 24070034 */   addiu      $a3, $zero, 0x34
/* 03AB10 0043AB10 8F9985F8 */  lw          $t9, %call16(st_malloc)($gp)
/* 03AB14 0043AB14 8C640034 */  lw          $a0, 0x34($v1)
/* 03AB18 0043AB18 24060034 */  addiu       $a2, $zero, 0x34
/* 03AB1C 0043AB1C 0320F809 */  jalr        $t9
/* 03AB20 0043AB20 24070020 */   addiu      $a3, $zero, 0x20
/* 03AB24 0043AB24 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03AB28 0043AB28 8F8A87C8 */  lw          $t2, %got(pcfdcur)($gp)
/* 03AB2C 0043AB2C 8F8387C8 */  lw          $v1, %got(pcfdcur)($gp)
/* 03AB30 0043AB30 8D4A0000 */  lw          $t2, 0x0($t2)
/* 03AB34 0043AB34 AD420034 */  sw          $v0, 0x34($t2)
/* 03AB38 0043AB38 8C630000 */  lw          $v1, 0x0($v1)
/* 03AB3C 0043AB3C 8C6B0000 */  lw          $t3, 0x0($v1)
/* 03AB40 0043AB40 9564002A */  lhu         $a0, 0x2A($t3)
/* 03AB44 0043AB44 24070034 */  addiu       $a3, $zero, 0x34
.L0043AB48:
/* 03AB48 0043AB48 00870019 */  multu       $a0, $a3
/* 03AB4C 0043AB4C 8F8F8030 */  lw          $t7, %got(B_1001B7C0)($gp)
/* 03AB50 0043AB50 8C6C0034 */  lw          $t4, 0x34($v1)
/* 03AB54 0043AB54 25EFB7C0 */  addiu       $t7, $t7, %lo(B_1001B7C0)
/* 03AB58 0043AB58 25E80030 */  addiu       $t0, $t7, 0x30
/* 03AB5C 0043AB5C 00006812 */  mflo        $t5
/* 03AB60 0043AB60 018D7021 */  addu        $t6, $t4, $t5
/* 03AB64 0043AB64 00000000 */  nop
.L0043AB68:
/* 03AB68 0043AB68 8DF90000 */  lw          $t9, 0x0($t7)
/* 03AB6C 0043AB6C 25EF000C */  addiu       $t7, $t7, 0xC
/* 03AB70 0043AB70 25CE000C */  addiu       $t6, $t6, 0xC
/* 03AB74 0043AB74 ADD9FFF4 */  sw          $t9, -0xC($t6)
/* 03AB78 0043AB78 8DF8FFF8 */  lw          $t8, -0x8($t7)
/* 03AB7C 0043AB7C ADD8FFF8 */  sw          $t8, -0x8($t6)
/* 03AB80 0043AB80 8DF9FFFC */  lw          $t9, -0x4($t7)
/* 03AB84 0043AB84 15E8FFF8 */  bne         $t7, $t0, .L0043AB68
/* 03AB88 0043AB88 ADD9FFFC */   sw         $t9, -0x4($t6)
/* 03AB8C 0043AB8C 8DF90000 */  lw          $t9, 0x0($t7)
/* 03AB90 0043AB90 8F8387C8 */  lw          $v1, %got(pcfdcur)($gp)
/* 03AB94 0043AB94 8F8F87C8 */  lw          $t7, %got(pcfdcur)($gp)
/* 03AB98 0043AB98 ADD90000 */  sw          $t9, 0x0($t6)
/* 03AB9C 0043AB9C 8C630000 */  lw          $v1, 0x0($v1)
/* 03ABA0 0043ABA0 8FA90020 */  lw          $t1, 0x20($sp)
/* 03ABA4 0043ABA4 8C6B0000 */  lw          $t3, 0x0($v1)
/* 03ABA8 0043ABA8 8C6A0034 */  lw          $t2, 0x34($v1)
/* 03ABAC 0043ABAC 956C002A */  lhu         $t4, 0x2A($t3)
/* 03ABB0 0043ABB0 01870019 */  multu       $t4, $a3
/* 03ABB4 0043ABB4 00006812 */  mflo        $t5
/* 03ABB8 0043ABB8 014D4021 */  addu        $t0, $t2, $t5
/* 03ABBC 0043ABBC AD090004 */  sw          $t1, 0x4($t0)
/* 03ABC0 0043ABC0 8DEF0000 */  lw          $t7, 0x0($t7)
/* 03ABC4 0043ABC4 8DE50000 */  lw          $a1, 0x0($t7)
/* 03ABC8 0043ABC8 94A2002A */  lhu         $v0, 0x2A($a1)
/* 03ABCC 0043ABCC 244E0001 */  addiu       $t6, $v0, 0x1
/* 03ABD0 0043ABD0 A4AE002A */  sh          $t6, 0x2A($a1)
/* 03ABD4 0043ABD4 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03ABD8 0043ABD8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03ABDC 0043ABDC 03E00008 */  jr          $ra
/* 03ABE0 0043ABE0 00000000 */   nop
