glabel _elf32_xlatetom # 125
# _gp_disp: 0xFBFEAEC
.set noreorder; .cpload $t9; # .set reorder
/* 01F260 0041F260 8F99801C */  lw          $t9, %got(func_0041EF5C)($gp)
/* 01F264 0041F264 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01F268 0041F268 AFBF001C */  sw          $ra, 0x1C($sp)
/* 01F26C 0041F26C 2739EF5C */  addiu       $t9, $t9, %lo(func_0041EF5C)
/* 01F270 0041F270 AFBC0018 */  sw          $gp, 0x18($sp)
/* 01F274 0041F274 0320F809 */  jalr        $t9
/* 01F278 0041F278 00003825 */   move       $a3, $zero
/* 01F27C 0041F27C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 01F280 0041F280 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01F284 0041F284 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01F288 0041F288 03E00008 */  jr          $ra
/* 01F28C 0041F28C 00000000 */   nop
