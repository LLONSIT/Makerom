.section .rodata
glabel STR_10011000
/* 041000 10011000 */ .asciz "makerom: %s at line %d [%s]\n"
                      .balign 4


.section .text
glabel yyerror # 43
# _gp_disp: 0xFC0B5F0
.set noreorder; .cpload $t9; # .set reorder
/* 01275C 0041275C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 012760 00412760 AFBF0024 */  sw          $ra, 0x24($sp)
/* 012764 00412764 AFBC0020 */  sw          $gp, 0x20($sp)
/* 012768 00412768 AFA40028 */  sw          $a0, 0x28($sp)
/* 01276C 0041276C 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 012770 00412770 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 012774 00412774 8F85802C */  lw          $a1, %got(STR_10011000)($gp)
/* 012778 00412778 8F878690 */  lw          $a3, %got(lineNumber)($gp)
/* 01277C 0041277C 8F8E8768 */  lw          $t6, %got(yytext)($gp)
/* 012780 00412780 8FA60028 */  lw          $a2, 0x28($sp)
/* 012784 00412784 24840020 */  addiu       $a0, $a0, 0x20
/* 012788 00412788 24A51000 */  addiu       $a1, $a1, %lo(STR_10011000)
/* 01278C 0041278C 8CE70000 */  lw          $a3, 0x0($a3)
/* 012790 00412790 0320F809 */  jalr        $t9
/* 012794 00412794 AFAE0010 */   sw         $t6, 0x10($sp)
/* 012798 00412798 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01279C 0041279C 10000001 */  b           .L004127A4
/* 0127A0 004127A0 00000000 */   nop
.L004127A4:
/* 0127A4 004127A4 8FBF0024 */  lw          $ra, 0x24($sp)
/* 0127A8 004127A8 27BD0028 */  addiu       $sp, $sp, 0x28
/* 0127AC 004127AC 03E00008 */  jr          $ra
/* 0127B0 004127B0 00000000 */   nop
