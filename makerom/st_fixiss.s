glabel st_fixiss # 704
# _gp_disp: 0xFBE025C
.set noreorder; .cpload $t9; # .set reorder
/* 03DAF0 0043DAF0 8F998630 */  lw          $t9, %call16(st_pdn_idn)($gp)
/* 03DAF4 0043DAF4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03DAF8 0043DAF8 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03DAFC 0043DAFC AFBC0018 */  sw          $gp, 0x18($sp)
/* 03DB00 0043DB00 0320F809 */  jalr        $t9
/* 03DB04 0043DB04 AFA50024 */   sw         $a1, 0x24($sp)
/* 03DB08 0043DB08 8C4E0000 */  lw          $t6, 0x0($v0)
/* 03DB0C 0043DB0C 3C017FFF */  lui         $at, (0x7FFFFFFF >> 16)
/* 03DB10 0043DB10 3421FFFF */  ori         $at, $at, (0x7FFFFFFF & 0xFFFF)
/* 03DB14 0043DB14 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03DB18 0043DB18 15C10008 */  bne         $t6, $at, .L0043DB3C
/* 03DB1C 0043DB1C 00401825 */   move       $v1, $v0
/* 03DB20 0043DB20 8F998628 */  lw          $t9, %call16(st_pext_iext)($gp)
/* 03DB24 0043DB24 8C440004 */  lw          $a0, 0x4($v0)
/* 03DB28 0043DB28 0320F809 */  jalr        $t9
/* 03DB2C 0043DB2C 00000000 */   nop
/* 03DB30 0043DB30 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03DB34 0043DB34 10000008 */  b           .L0043DB58
/* 03DB38 0043DB38 24430004 */   addiu      $v1, $v0, 0x4
.L0043DB3C:
/* 03DB3C 0043DB3C 8F998608 */  lw          $t9, %call16(st_psym_ifd_isym)($gp)
/* 03DB40 0043DB40 8C640000 */  lw          $a0, 0x0($v1)
/* 03DB44 0043DB44 8C650004 */  lw          $a1, 0x4($v1)
/* 03DB48 0043DB48 0320F809 */  jalr        $t9
/* 03DB4C 0043DB4C 00000000 */   nop
/* 03DB50 0043DB50 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03DB54 0043DB54 00401825 */  move        $v1, $v0
.L0043DB58:
/* 03DB58 0043DB58 8FAF0024 */  lw          $t7, 0x24($sp)
/* 03DB5C 0043DB5C AC6F0000 */  sw          $t7, 0x0($v1)
/* 03DB60 0043DB60 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03DB64 0043DB64 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03DB68 0043DB68 03E00008 */  jr          $ra
/* 03DB6C 0043DB6C 00000000 */   nop
