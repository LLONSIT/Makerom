.section .rodata
glabel STR_10011AD0
/* 041AD0 10011AD0 */ .asciz "ldinitheaders"
                      .balign 4


.section .text
glabel ldinitheaders # 212
# _gp_disp: 0xFBF8F6C
.set noreorder; .cpload $t9; # .set reorder
/* 024DE0 00424DE0 8F998244 */  lw          $t9, %call16(nyi)($gp)
/* 024DE4 00424DE4 8F84802C */  lw          $a0, %got(STR_10011AD0)($gp)
/* 024DE8 00424DE8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 024DEC 00424DEC AFBF001C */  sw          $ra, 0x1C($sp)
/* 024DF0 00424DF0 AFBC0018 */  sw          $gp, 0x18($sp)
/* 024DF4 00424DF4 0320F809 */  jalr        $t9
/* 024DF8 00424DF8 24841AD0 */   addiu      $a0, $a0, %lo(STR_10011AD0)
/* 024DFC 00424DFC 8FBF001C */  lw          $ra, 0x1C($sp)
/* 024E00 00424E00 8FBC0018 */  lw          $gp, 0x18($sp)
/* 024E04 00424E04 27BD0020 */  addiu       $sp, $sp, 0x20
/* 024E08 00424E08 03E00008 */  jr          $ra
/* 024E0C 00424E0C 00000000 */   nop
