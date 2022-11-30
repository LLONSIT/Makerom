glabel st_ifdmax # 650
# _gp_disp: 0xFBE3B40
.set noreorder; .cpload $t9; # .set reorder
/* 03A20C 0043A20C 8F8E87C4 */  lw          $t6, %got(st_pchdr)($gp)
/* 03A210 0043A210 8DCE0000 */  lw          $t6, 0x0($t6)
/* 03A214 0043A214 03E00008 */  jr          $ra
/* 03A218 0043A218 8DC2000C */   lw         $v0, 0xC($t6)
