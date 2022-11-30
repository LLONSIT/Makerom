glabel st_auxadd # 653
# _gp_disp: 0xFBE3414
.set noreorder; .cpload $t9; # .set reorder
/* 03A938 0043A938 8F8E87C4 */  lw          $t6, %got(st_pchdr)($gp)
/* 03A93C 0043A93C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03A940 0043A940 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03A944 0043A944 8DCE0000 */  lw          $t6, 0x0($t6)
/* 03A948 0043A948 AFBC0018 */  sw          $gp, 0x18($sp)
/* 03A94C 0043A94C AFA40020 */  sw          $a0, 0x20($sp)
/* 03A950 0043A950 8DCF0004 */  lw          $t7, 0x4($t6)
/* 03A954 0043A954 15E00006 */  bnez        $t7, .L0043A970
/* 03A958 0043A958 00000000 */   nop
/* 03A95C 0043A95C 8F998638 */  lw          $t9, %call16(st_internal)($gp)
/* 03A960 0043A960 8F84802C */  lw          $a0, %got(D_10015B60)($gp)
/* 03A964 0043A964 0320F809 */  jalr        $t9
/* 03A968 0043A968 24845B60 */   addiu      $a0, $a0, %lo(D_10015B60)
/* 03A96C 0043A96C 8FBC0018 */  lw          $gp, 0x18($sp)
.L0043A970:
/* 03A970 0043A970 8F8387C8 */  lw          $v1, %got(pcfdcur)($gp)
/* 03A974 0043A974 8C630000 */  lw          $v1, 0x0($v1)
/* 03A978 0043A978 54600009 */  bnel        $v1, $zero, .L0043A9A0
/* 03A97C 0043A97C 8C78003C */   lw         $t8, 0x3C($v1)
/* 03A980 0043A980 8F998638 */  lw          $t9, %call16(st_internal)($gp)
/* 03A984 0043A984 8F84802C */  lw          $a0, %got(D_10015B9C)($gp)
/* 03A988 0043A988 0320F809 */  jalr        $t9
/* 03A98C 0043A98C 24845B9C */   addiu      $a0, $a0, %lo(D_10015B9C)
/* 03A990 0043A990 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03A994 0043A994 8F8387C8 */  lw          $v1, %got(pcfdcur)($gp)
/* 03A998 0043A998 8C630000 */  lw          $v1, 0x0($v1)
/* 03A99C 0043A99C 8C78003C */  lw          $t8, 0x3C($v1)
.L0043A9A0:
/* 03A9A0 0043A9A0 33190400 */  andi        $t9, $t8, 0x400
/* 03A9A4 0043A9A4 53200009 */  beql        $t9, $zero, .L0043A9CC
/* 03A9A8 0043A9A8 8C680000 */   lw         $t0, 0x0($v1)
/* 03A9AC 0043A9AC 8F998638 */  lw          $t9, %call16(st_internal)($gp)
/* 03A9B0 0043A9B0 8F84802C */  lw          $a0, %got(D_10015BD0)($gp)
/* 03A9B4 0043A9B4 0320F809 */  jalr        $t9
/* 03A9B8 0043A9B8 24845BD0 */   addiu      $a0, $a0, %lo(D_10015BD0)
/* 03A9BC 0043A9BC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03A9C0 0043A9C0 8F8387C8 */  lw          $v1, %got(pcfdcur)($gp)
/* 03A9C4 0043A9C4 8C630000 */  lw          $v1, 0x0($v1)
/* 03A9C8 0043A9C8 8C680000 */  lw          $t0, 0x0($v1)
.L0043A9CC:
/* 03A9CC 0043A9CC 8C690010 */  lw          $t1, 0x10($v1)
/* 03A9D0 0043A9D0 24650010 */  addiu       $a1, $v1, 0x10
/* 03A9D4 0043A9D4 8D040030 */  lw          $a0, 0x30($t0)
/* 03A9D8 0043A9D8 0089082A */  slt         $at, $a0, $t1
/* 03A9DC 0043A9DC 5420000F */  bnel        $at, $zero, .L0043AA1C
/* 03A9E0 0043A9E0 8C6C000C */   lw         $t4, 0xC($v1)
/* 03A9E4 0043A9E4 8F9985F8 */  lw          $t9, %call16(st_malloc)($gp)
/* 03A9E8 0043A9E8 8C64000C */  lw          $a0, 0xC($v1)
/* 03A9EC 0043A9EC 24060004 */  addiu       $a2, $zero, 0x4
/* 03A9F0 0043A9F0 0320F809 */  jalr        $t9
/* 03A9F4 0043A9F4 24070040 */   addiu      $a3, $zero, 0x40
/* 03A9F8 0043A9F8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03A9FC 0043A9FC 8F8A87C8 */  lw          $t2, %got(pcfdcur)($gp)
/* 03AA00 0043AA00 8F8387C8 */  lw          $v1, %got(pcfdcur)($gp)
/* 03AA04 0043AA04 8D4A0000 */  lw          $t2, 0x0($t2)
/* 03AA08 0043AA08 AD42000C */  sw          $v0, 0xC($t2)
/* 03AA0C 0043AA0C 8C630000 */  lw          $v1, 0x0($v1)
/* 03AA10 0043AA10 8C6B0000 */  lw          $t3, 0x0($v1)
/* 03AA14 0043AA14 8D640030 */  lw          $a0, 0x30($t3)
/* 03AA18 0043AA18 8C6C000C */  lw          $t4, 0xC($v1)
.L0043AA1C:
/* 03AA1C 0043AA1C 27AF0020 */  addiu       $t7, $sp, 0x20
/* 03AA20 0043AA20 8DF90000 */  lw          $t9, 0x0($t7)
/* 03AA24 0043AA24 8F8887C8 */  lw          $t0, %got(pcfdcur)($gp)
/* 03AA28 0043AA28 00046880 */  sll         $t5, $a0, 2
/* 03AA2C 0043AA2C 018D7021 */  addu        $t6, $t4, $t5
/* 03AA30 0043AA30 ADD90000 */  sw          $t9, 0x0($t6)
/* 03AA34 0043AA34 8D080000 */  lw          $t0, 0x0($t0)
/* 03AA38 0043AA38 8D050000 */  lw          $a1, 0x0($t0)
/* 03AA3C 0043AA3C 8CA20030 */  lw          $v0, 0x30($a1)
/* 03AA40 0043AA40 24490001 */  addiu       $t1, $v0, 0x1
/* 03AA44 0043AA44 ACA90030 */  sw          $t1, 0x30($a1)
/* 03AA48 0043AA48 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03AA4C 0043AA4C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03AA50 0043AA50 03E00008 */  jr          $ra
/* 03AA54 0043AA54 00000000 */   nop
