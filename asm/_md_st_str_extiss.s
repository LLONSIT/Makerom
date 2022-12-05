glabel _md_st_str_extiss # 672
# _gp_disp: 0xFBE21C8
.set noreorder; .cpload $t9; # .set reorder
/* 03BB84 0043BB84 0480000A */  bltz        $a0, .L0043BBB0
/* 03BB88 0043BB88 00001025 */   move       $v0, $zero
/* 03BB8C 0043BB8C 8F8387C4 */  lw          $v1, %got(st_pchdr)($gp)
/* 03BB90 0043BB90 8C630000 */  lw          $v1, 0x0($v1)
/* 03BB94 0043BB94 8C6E0028 */  lw          $t6, 0x28($v1)
/* 03BB98 0043BB98 008E082A */  slt         $at, $a0, $t6
/* 03BB9C 0043BB9C 10200004 */  beqz        $at, .L0043BBB0
/* 03BBA0 0043BBA0 00000000 */   nop
/* 03BBA4 0043BBA4 8C6F0024 */  lw          $t7, 0x24($v1)
/* 03BBA8 0043BBA8 03E00008 */  jr          $ra
/* 03BBAC 0043BBAC 01E41021 */   addu       $v0, $t7, $a0
.L0043BBB0:
/* 03BBB0 0043BBB0 03E00008 */  jr          $ra
/* 03BBB4 0043BBB4 00000000 */   nop
