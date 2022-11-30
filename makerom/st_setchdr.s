glabel st_setchdr # 637
# _gp_disp: 0xFBE4560
.set noreorder; .cpload $t9; # .set reorder
/* 0397EC 004397EC 8F8187C4 */  lw          $at, %got(st_pchdr)($gp)
/* 0397F0 004397F0 03E00008 */  jr          $ra
/* 0397F4 004397F4 AC240000 */   sw         $a0, 0x0($at)
