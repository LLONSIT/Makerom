glabel obj_liblist_foreign # 406
# _gp_disp: 0xFBF3574
.set noreorder; .cpload $t9; # .set reorder
/* 02A7D8 0042A7D8 8F998360 */  lw          $t9, %call16(obj_liblistcount)($gp)
/* 02A7DC 0042A7DC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02A7E0 0042A7E0 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02A7E4 0042A7E4 0320F809 */  jalr        $t9
/* 02A7E8 0042A7E8 AFBC0018 */   sw         $gp, 0x18($sp)
/* 02A7EC 0042A7EC 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02A7F0 0042A7F0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02A7F4 0042A7F4 24420001 */  addiu       $v0, $v0, 0x1
/* 02A7F8 0042A7F8 2C420001 */  sltiu       $v0, $v0, 0x1
/* 02A7FC 0042A7FC 03E00008 */  jr          $ra
/* 02A800 0042A800 27BD0020 */   addiu      $sp, $sp, 0x20
