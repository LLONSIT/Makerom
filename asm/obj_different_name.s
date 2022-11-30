glabel obj_different_name # 445
# _gp_disp: 0xFBF2EF8
.set noreorder; .cpload $t9; # .set reorder
/* 02AE54 0042AE54 8F9980A8 */  lw          $t9, %call16(strcmp)($gp)
/* 02AE58 0042AE58 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02AE5C 0042AE5C AFBF001C */  sw          $ra, 0x1C($sp)
/* 02AE60 0042AE60 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02AE64 0042AE64 8CA500F0 */  lw          $a1, 0xF0($a1)
/* 02AE68 0042AE68 0320F809 */  jalr        $t9
/* 02AE6C 0042AE6C 8C8400F0 */   lw         $a0, 0xF0($a0)
/* 02AE70 0042AE70 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02AE74 0042AE74 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02AE78 0042AE78 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02AE7C 0042AE7C 03E00008 */  jr          $ra
/* 02AE80 0042AE80 00000000 */   nop
