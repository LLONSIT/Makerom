glabel user_type_alloc # 609
# _gp_disp: 0xFBE6E4C
.set noreorder; .cpload $t9; # .set reorder
/* 036F00 00436F00 8F8586FC */  lw          $a1, %got(tinx)($gp)
/* 036F04 00436F04 8CA30000 */  lw          $v1, 0x0($a1)
/* 036F08 00436F08 00037023 */  negu        $t6, $v1
/* 036F0C 00436F0C 29C10200 */  slti        $at, $t6, 0x200
/* 036F10 00436F10 14200003 */  bnez        $at, .L00436F20
/* 036F14 00436F14 246FFFFF */   addiu      $t7, $v1, -0x1
/* 036F18 00436F18 03E00008 */  jr          $ra
/* 036F1C 00436F1C 00001025 */   move       $v0, $zero
.L00436F20:
/* 036F20 00436F20 8F8887CC */  lw          $t0, %got(usertype)($gp)
/* 036F24 00436F24 0003C023 */  negu        $t8, $v1
/* 036F28 00436F28 0018C880 */  sll         $t9, $t8, 2
/* 036F2C 00436F2C ACAF0000 */  sw          $t7, 0x0($a1)
/* 036F30 00436F30 03281021 */  addu        $v0, $t9, $t0
/* 036F34 00436F34 03E00008 */  jr          $ra
/* 036F38 00436F38 00000000 */   nop
