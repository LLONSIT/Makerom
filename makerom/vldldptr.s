glabel vldldptr # 215
/* 024E9C 00424E9C 10800006 */  beqz        $a0, .L00424EB8
/* 024EA0 00424EA0 00001025 */   move       $v0, $zero
/* 024EA4 00424EA4 8C8E002C */  lw          $t6, 0x2C($a0)
/* 024EA8 00424EA8 11C00003 */  beqz        $t6, .L00424EB8
/* 024EAC 00424EAC 00000000 */   nop
/* 024EB0 00424EB0 03E00008 */  jr          $ra
/* 024EB4 00424EB4 24020001 */   addiu      $v0, $zero, 0x1
.L00424EB8:
/* 024EB8 00424EB8 03E00008 */  jr          $ra
/* 024EBC 00424EBC 00000000 */   nop
