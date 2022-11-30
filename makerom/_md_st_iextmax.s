glabel _md_st_iextmax # 674
# _gp_disp: 0xFBE20D8
.set noreorder; .cpload $t9; # .set reorder
/* 03BC74 0043BC74 8F8E87C4 */  lw          $t6, %got(st_pchdr)($gp)
/* 03BC78 0043BC78 8DCE0000 */  lw          $t6, 0x0($t6)
/* 03BC7C 0043BC7C 03E00008 */  jr          $ra
/* 03BC80 0043BC80 8DC2001C */   lw         $v0, 0x1C($t6)
