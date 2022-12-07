glabel st_non_gp # 657
/* 03AE80 0043AE80 8C8E0008 */  lw          $t6, 0x8($a0)
/* 03AE84 0043AE84 2401001B */  addiu       $at, $zero, 0x1B
/* 03AE88 0043AE88 00001025 */  move        $v0, $zero
/* 03AE8C 0043AE8C 000E7980 */  sll         $t7, $t6, 6
/* 03AE90 0043AE90 000FC6C2 */  srl         $t8, $t7, 27
/* 03AE94 0043AE94 17010003 */  bne         $t8, $at, .L0043AEA4
/* 03AE98 0043AE98 00000000 */   nop
/* 03AE9C 0043AE9C 03E00008 */  jr          $ra
/* 03AEA0 0043AEA0 24020001 */   addiu      $v0, $zero, 0x1
.L0043AEA4:
/* 03AEA4 0043AEA4 03E00008 */  jr          $ra
/* 03AEA8 0043AEA8 00000000 */   nop
