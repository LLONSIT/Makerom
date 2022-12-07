glabel st_iextmax # 647
# _gp_disp: 0xFBE3C54
.set noreorder; .cpload $t9; # .set reorder
/* 03A0F8 0043A0F8 8F8E87C4 */  lw          $t6, %got(st_pchdr)($gp)
/* 03A0FC 0043A0FC 8DCE0000 */  lw          $t6, 0x0($t6)
/* 03A100 0043A100 03E00008 */  jr          $ra
/* 03A104 0043A104 8DC2001C */   lw         $v0, 0x1C($t6)
