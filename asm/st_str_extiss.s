glabel st_str_extiss # 641
# _gp_disp: 0xFBE4130
.set noreorder; .cpload $t9; # .set reorder
/* 039C1C 00439C1C 0480000A */  bltz        $a0, .L00439C48
/* 039C20 00439C20 00001025 */   move       $v0, $zero
/* 039C24 00439C24 8F8387C4 */  lw          $v1, %got(st_pchdr)($gp)
/* 039C28 00439C28 8C630000 */  lw          $v1, 0x0($v1)
/* 039C2C 00439C2C 8C6E0028 */  lw          $t6, 0x28($v1)
/* 039C30 00439C30 008E082A */  slt         $at, $a0, $t6
/* 039C34 00439C34 10200004 */  beqz        $at, .L00439C48
/* 039C38 00439C38 00000000 */   nop
/* 039C3C 00439C3C 8C6F0024 */  lw          $t7, 0x24($v1)
/* 039C40 00439C40 03E00008 */  jr          $ra
/* 039C44 00439C44 01E41021 */   addu       $v0, $t7, $a0
.L00439C48:
/* 039C48 00439C48 03E00008 */  jr          $ra
/* 039C4C 00439C4C 00000000 */   nop
