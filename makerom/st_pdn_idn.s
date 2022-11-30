.section .rodata
glabel STR_1001407C
/* 04407C 1001407C */ .asciz "st_pdn_idn: idn (%d) less than 0 or greater than max (%d)\n"
                      .balign 4
/* 0440B8 100140B8 */ .asciz ""
                      .balign 4
/* 0440BC 100140BC */ .asciz ""
                      .balign 4


.section .text
glabel st_pdn_idn # 683
# _gp_disp: 0xFBE1A84
.set noreorder; .cpload $t9; # .set reorder
/* 03C2C8 0043C2C8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03C2CC 0043C2CC AFBF001C */  sw          $ra, 0x1C($sp)
/* 03C2D0 0043C2D0 AFBC0018 */  sw          $gp, 0x18($sp)
/* 03C2D4 0043C2D4 04800007 */  bltz        $a0, .L0043C2F4
/* 03C2D8 0043C2D8 00802825 */   move       $a1, $a0
/* 03C2DC 0043C2DC 8F8387C4 */  lw          $v1, %got(st_pchdr)($gp)
/* 03C2E0 0043C2E0 8C630000 */  lw          $v1, 0x0($v1)
/* 03C2E4 0043C2E4 8C6E003C */  lw          $t6, 0x3C($v1)
/* 03C2E8 0043C2E8 01C4082A */  slt         $at, $t6, $a0
/* 03C2EC 0043C2EC 5020000E */  beql        $at, $zero, .L0043C328
/* 03C2F0 0043C2F0 8FBF001C */   lw         $ra, 0x1C($sp)
.L0043C2F4:
/* 03C2F4 0043C2F4 8F8F87C4 */  lw          $t7, %got(st_pchdr)($gp)
/* 03C2F8 0043C2F8 8F998614 */  lw          $t9, %call16(_md_st_internal)($gp)
/* 03C2FC 0043C2FC 8F84802C */  lw          $a0, %got(STR_1001407C)($gp)
/* 03C300 0043C300 8DEF0000 */  lw          $t7, 0x0($t7)
/* 03C304 0043C304 2484407C */  addiu       $a0, $a0, %lo(STR_1001407C)
/* 03C308 0043C308 8DE6003C */  lw          $a2, 0x3C($t7)
/* 03C30C 0043C30C 0320F809 */  jalr        $t9
/* 03C310 0043C310 AFA50020 */   sw         $a1, 0x20($sp)
/* 03C314 0043C314 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03C318 0043C318 8FA50020 */  lw          $a1, 0x20($sp)
/* 03C31C 0043C31C 8F8387C4 */  lw          $v1, %got(st_pchdr)($gp)
/* 03C320 0043C320 8C630000 */  lw          $v1, 0x0($v1)
/* 03C324 0043C324 8FBF001C */  lw          $ra, 0x1C($sp)
.L0043C328:
/* 03C328 0043C328 8C780038 */  lw          $t8, 0x38($v1)
/* 03C32C 0043C32C 0005C8C0 */  sll         $t9, $a1, 3
/* 03C330 0043C330 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03C334 0043C334 03E00008 */  jr          $ra
/* 03C338 0043C338 03191021 */   addu       $v0, $t8, $t9
/* 03C33C 0043C33C 00000000 */  nop
