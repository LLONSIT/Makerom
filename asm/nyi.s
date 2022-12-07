.section .rodata
glabel STR_10011A8C
/* 041A8C 10011A8C */ .asciz "%s in not yet implemented...aborting\n"
                      .balign 4

glabel STR_10011AB4
/* 041AB4 10011AB4 */ .asciz "0"
                      .balign 4

glabel STR_10011AB8
/* 041AB8 10011AB8 */ .asciz "ldfcn.c"
                      .balign 4


.section .text
glabel nyi # 210
# _gp_disp: 0xFBF901C
.set noreorder; .cpload $t9; # .set reorder
/* 024D30 00424D30 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 024D34 00424D34 00803025 */  move        $a2, $a0
/* 024D38 00424D38 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 024D3C 00424D3C 8F85802C */  lw          $a1, %got(STR_10011A8C)($gp)
/* 024D40 00424D40 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 024D44 00424D44 AFBF001C */  sw          $ra, 0x1C($sp)
/* 024D48 00424D48 AFBC0018 */  sw          $gp, 0x18($sp)
/* 024D4C 00424D4C 24840020 */  addiu       $a0, $a0, 0x20
/* 024D50 00424D50 0320F809 */  jalr        $t9
/* 024D54 00424D54 24A51A8C */   addiu      $a1, $a1, %lo(STR_10011A8C)
/* 024D58 00424D58 8FBC0018 */  lw          $gp, 0x18($sp)
/* 024D5C 00424D5C 2406014E */  addiu       $a2, $zero, 0x14E
/* 024D60 00424D60 8F998144 */  lw          $t9, %call16(__assert)($gp)
/* 024D64 00424D64 8F84802C */  lw          $a0, %got(STR_10011AB4)($gp)
/* 024D68 00424D68 8F85802C */  lw          $a1, %got(STR_10011AB8)($gp)
/* 024D6C 00424D6C 24841AB4 */  addiu       $a0, $a0, %lo(STR_10011AB4)
/* 024D70 00424D70 0320F809 */  jalr        $t9
/* 024D74 00424D74 24A51AB8 */   addiu      $a1, $a1, %lo(STR_10011AB8)
/* 024D78 00424D78 8FBF001C */  lw          $ra, 0x1C($sp)
/* 024D7C 00424D7C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 024D80 00424D80 27BD0020 */  addiu       $sp, $sp, 0x20
/* 024D84 00424D84 03E00008 */  jr          $ra
/* 024D88 00424D88 00000000 */   nop
