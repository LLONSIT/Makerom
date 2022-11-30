glabel _md_st_ifdmax # 677
# _gp_disp: 0xFBE1F20
.set noreorder; .cpload $t9; # .set reorder
/* 03BE2C 0043BE2C 8F8E87C4 */  lw          $t6, %got(st_pchdr)($gp)
/* 03BE30 0043BE30 8DCE0000 */  lw          $t6, 0x0($t6)
/* 03BE34 0043BE34 03E00008 */  jr          $ra
/* 03BE38 0043BE38 8DC2000C */   lw         $v0, 0xC($t6)
