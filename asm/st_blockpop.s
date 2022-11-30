glabel st_blockpop # 694
# _gp_disp: 0xFBE0CFC
.set noreorder; .cpload $t9; # .set reorder
/* 03D050 0043D050 8F828030 */  lw          $v0, %got(B_1001B804)($gp)
/* 03D054 0043D054 2442B804 */  addiu       $v0, $v0, %lo(B_1001B804)
/* 03D058 0043D058 8C4E0000 */  lw          $t6, 0x0($v0)
/* 03D05C 0043D05C 25CFFFFF */  addiu       $t7, $t6, -0x1
/* 03D060 0043D060 03E00008 */  jr          $ra
/* 03D064 0043D064 AC4F0000 */   sw         $t7, 0x0($v0)
