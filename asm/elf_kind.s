glabel elf_kind # 190
/* 022D90 00422D90 54800004 */  bnel        $a0, $zero, .L00422DA4
/* 022D94 00422D94 8C82004C */   lw         $v0, 0x4C($a0)
/* 022D98 00422D98 03E00008 */  jr          $ra
/* 022D9C 00422D9C 00001025 */   move       $v0, $zero
/* 022DA0 00422DA0 8C82004C */  lw          $v0, 0x4C($a0)
.L00422DA4:
/* 022DA4 00422DA4 03E00008 */  jr          $ra
/* 022DA8 00422DA8 00000000 */   nop
/* 022DAC 00422DAC 00000000 */  nop
