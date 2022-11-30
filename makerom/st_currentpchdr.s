glabel st_currentpchdr # 638
# _gp_disp: 0xFBE4548
.set noreorder; .cpload $t9; # .set reorder
/* 039804 00439804 8F8287C4 */  lw          $v0, %got(st_pchdr)($gp)
/* 039808 00439808 03E00008 */  jr          $ra
/* 03980C 0043980C 8C420000 */   lw         $v0, 0x0($v0)
