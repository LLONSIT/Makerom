glabel st_addcontinued # 718
# _gp_disp: 0xFBDF6F8
.set noreorder; .cpload $t9; # .set reorder
/* 03E654 0043E654 8F99860C */  lw          $t9, %call16(st_paux_iaux)($gp)
/* 03E658 0043E658 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03E65C 0043E65C AFBF001C */  sw          $ra, 0x1C($sp)
/* 03E660 0043E660 0320F809 */  jalr        $t9
/* 03E664 0043E664 AFBC0018 */   sw         $gp, 0x18($sp)
/* 03E668 0043E668 904F0000 */  lbu         $t7, 0x0($v0)
/* 03E66C 0043E66C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03E670 0043E670 35F80040 */  ori         $t8, $t7, 0x40
/* 03E674 0043E674 A0580000 */  sb          $t8, 0x0($v0)
/* 03E678 0043E678 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03E67C 0043E67C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03E680 0043E680 03E00008 */  jr          $ra
/* 03E684 0043E684 00000000 */   nop
/* 03E688 0043E688 00000000 */  nop
/* 03E68C 0043E68C 00000000 */  nop
