.section .rodata
glabel STR_10011AC0
/* 041AC0 10011AC0 */ .asciz "%s nop-ed out\n"
                      .balign 4


.section .text
glabel nop # 211
# _gp_disp: 0xFBF8FB4
.set noreorder; .cpload $t9; # .set reorder
/* 024D98 00424D98 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 024D9C 00424D9C 00803025 */  move        $a2, $a0
/* 024DA0 00424DA0 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 024DA4 00424DA4 8F85802C */  lw          $a1, %got(STR_10011AC0)($gp)
/* 024DA8 00424DA8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 024DAC 00424DAC AFBF001C */  sw          $ra, 0x1C($sp)
/* 024DB0 00424DB0 AFBC0018 */  sw          $gp, 0x18($sp)
/* 024DB4 00424DB4 24840020 */  addiu       $a0, $a0, 0x20
/* 024DB8 00424DB8 0320F809 */  jalr        $t9
/* 024DBC 00424DBC 24A51AC0 */   addiu      $a1, $a1, %lo(STR_10011AC0)
/* 024DC0 00424DC0 8FBF001C */  lw          $ra, 0x1C($sp)
/* 024DC4 00424DC4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 024DC8 00424DC8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 024DCC 00424DCC 03E00008 */  jr          $ra
/* 024DD0 00424DD0 00000000 */   nop
