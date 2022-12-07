glabel st_changedn # 705
# _gp_disp: 0xFBE01D0
.set noreorder; .cpload $t9; # .set reorder
/* 03DB7C 0043DB7C 8F998630 */  lw          $t9, %call16(st_pdn_idn)($gp)
/* 03DB80 0043DB80 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03DB84 0043DB84 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03DB88 0043DB88 AFBC0018 */  sw          $gp, 0x18($sp)
/* 03DB8C 0043DB8C AFA50024 */  sw          $a1, 0x24($sp)
/* 03DB90 0043DB90 0320F809 */  jalr        $t9
/* 03DB94 0043DB94 AFA60028 */   sw         $a2, 0x28($sp)
/* 03DB98 0043DB98 8FAE0024 */  lw          $t6, 0x24($sp)
/* 03DB9C 0043DB9C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03DBA0 0043DBA0 AC4E0000 */  sw          $t6, 0x0($v0)
/* 03DBA4 0043DBA4 8FAF0028 */  lw          $t7, 0x28($sp)
/* 03DBA8 0043DBA8 AC4F0004 */  sw          $t7, 0x4($v0)
/* 03DBAC 0043DBAC 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03DBB0 0043DBB0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03DBB4 0043DBB4 03E00008 */  jr          $ra
/* 03DBB8 0043DBB8 00000000 */   nop
