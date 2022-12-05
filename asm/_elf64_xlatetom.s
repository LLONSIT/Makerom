glabel _elf64_xlatetom # 54
# _gp_disp: 0xFC093B8
.set noreorder; .cpload $t9; # .set reorder
/* 014994 00414994 8F998018 */  lw          $t9, %got(func_00414690)($gp)
/* 014998 00414998 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01499C 0041499C AFBF001C */  sw          $ra, 0x1C($sp)
/* 0149A0 004149A0 27394690 */  addiu       $t9, $t9, %lo(func_00414690)
/* 0149A4 004149A4 AFBC0018 */  sw          $gp, 0x18($sp)
/* 0149A8 004149A8 0320F809 */  jalr        $t9
/* 0149AC 004149AC 00003825 */   move       $a3, $zero
/* 0149B0 004149B0 8FBF001C */  lw          $ra, 0x1C($sp)
/* 0149B4 004149B4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0149B8 004149B8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0149BC 004149BC 03E00008 */  jr          $ra
/* 0149C0 004149C0 00000000 */   nop
