glabel user_symbol_free # 608
# _gp_disp: 0xFBE6E74
.set noreorder; .cpload $t9; # .set reorder
/* 036ED8 00436ED8 8F8186F8 */  lw          $at, %got(sinx)($gp)
/* 036EDC 00436EDC 2403FFFE */  addiu       $v1, $zero, -0x2
/* 036EE0 00436EE0 00001025 */  move        $v0, $zero
/* 036EE4 00436EE4 AC230000 */  sw          $v1, 0x0($at)
/* 036EE8 00436EE8 8F8186FC */  lw          $at, %got(tinx)($gp)
/* 036EEC 00436EEC 03E00008 */  jr          $ra
/* 036EF0 00436EF0 AC230000 */   sw         $v1, 0x0($at)
