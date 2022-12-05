glabel user_symbol_alloc # 607
# _gp_disp: 0xFBE6EC4
.set noreorder; .cpload $t9; # .set reorder
/* 036E88 00436E88 8F8586F8 */  lw          $a1, %got(sinx)($gp)
/* 036E8C 00436E8C 8CA30000 */  lw          $v1, 0x0($a1)
/* 036E90 00436E90 00037023 */  negu        $t6, $v1
/* 036E94 00436E94 29C10200 */  slti        $at, $t6, 0x200
/* 036E98 00436E98 14200003 */  bnez        $at, .L00436EA8
/* 036E9C 00436E9C 246FFFFF */   addiu      $t7, $v1, -0x1
/* 036EA0 00436EA0 03E00008 */  jr          $ra
/* 036EA4 00436EA4 00001025 */   move       $v0, $zero
.L00436EA8:
/* 036EA8 00436EA8 0003C023 */  negu        $t8, $v1
/* 036EAC 00436EAC 8F8887D0 */  lw          $t0, %got(usersymbol)($gp)
/* 036EB0 00436EB0 0018C880 */  sll         $t9, $t8, 2
/* 036EB4 00436EB4 0338C823 */  subu        $t9, $t9, $t8
/* 036EB8 00436EB8 0019C880 */  sll         $t9, $t9, 2
/* 036EBC 00436EBC ACAF0000 */  sw          $t7, 0x0($a1)
/* 036EC0 00436EC0 03281021 */  addu        $v0, $t9, $t0
/* 036EC4 00436EC4 03E00008 */  jr          $ra
/* 036EC8 00436EC8 00000000 */   nop
