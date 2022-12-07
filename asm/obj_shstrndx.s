glabel obj_shstrndx # 450
# _gp_disp: 0xFBF2E14
.set noreorder; .cpload $t9; # .set reorder
/* 02AF38 0042AF38 8F998428 */  lw          $t9, %call16(obj_pelfhdr)($gp)
/* 02AF3C 0042AF3C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02AF40 0042AF40 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02AF44 0042AF44 0320F809 */  jalr        $t9
/* 02AF48 0042AF48 AFBC0018 */   sw         $gp, 0x18($sp)
/* 02AF4C 0042AF4C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02AF50 0042AF50 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02AF54 0042AF54 94420032 */  lhu         $v0, 0x32($v0)
/* 02AF58 0042AF58 03E00008 */  jr          $ra
/* 02AF5C 0042AF5C 27BD0020 */   addiu      $sp, $sp, 0x20
