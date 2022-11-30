glabel obj_conflict_foreign # 405
# _gp_disp: 0xFBF35AC
.set noreorder; .cpload $t9; # .set reorder
/* 02A7A0 0042A7A0 8F998368 */  lw          $t9, %call16(obj_conflictcount)($gp)
/* 02A7A4 0042A7A4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02A7A8 0042A7A8 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02A7AC 0042A7AC 0320F809 */  jalr        $t9
/* 02A7B0 0042A7B0 AFBC0018 */   sw         $gp, 0x18($sp)
/* 02A7B4 0042A7B4 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02A7B8 0042A7B8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02A7BC 0042A7BC 24420001 */  addiu       $v0, $v0, 0x1
/* 02A7C0 0042A7C0 2C420001 */  sltiu       $v0, $v0, 0x1
/* 02A7C4 0042A7C4 03E00008 */  jr          $ra
/* 02A7C8 0042A7C8 27BD0020 */   addiu      $sp, $sp, 0x20
