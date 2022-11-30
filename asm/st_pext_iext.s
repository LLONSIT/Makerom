.section .rodata
glabel STR_10014014
/* 044014 10014014 */ .asciz "st_pext_iext: index out of range (%d)\n"
                      .balign 4


.section .text
glabel st_pext_iext # 681
# _gp_disp: 0xFBE1C34
.set noreorder; .cpload $t9; # .set reorder
/* 03C118 0043C118 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03C11C 0043C11C AFBF001C */  sw          $ra, 0x1C($sp)
/* 03C120 0043C120 AFBC0018 */  sw          $gp, 0x18($sp)
/* 03C124 0043C124 04800007 */  bltz        $a0, .L0043C144
/* 03C128 0043C128 00802825 */   move       $a1, $a0
/* 03C12C 0043C12C 8F8387C4 */  lw          $v1, %got(st_pchdr)($gp)
/* 03C130 0043C130 8C630000 */  lw          $v1, 0x0($v1)
/* 03C134 0043C134 8C6E001C */  lw          $t6, 0x1C($v1)
/* 03C138 0043C138 01C4082A */  slt         $at, $t6, $a0
/* 03C13C 0043C13C 5020000B */  beql        $at, $zero, .L0043C16C
/* 03C140 0043C140 8FBF001C */   lw         $ra, 0x1C($sp)
.L0043C144:
/* 03C144 0043C144 8F998614 */  lw          $t9, %call16(_md_st_internal)($gp)
/* 03C148 0043C148 8F84802C */  lw          $a0, %got(STR_10014014)($gp)
/* 03C14C 0043C14C AFA50020 */  sw          $a1, 0x20($sp)
/* 03C150 0043C150 0320F809 */  jalr        $t9
/* 03C154 0043C154 24844014 */   addiu      $a0, $a0, %lo(STR_10014014)
/* 03C158 0043C158 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03C15C 0043C15C 8FA50020 */  lw          $a1, 0x20($sp)
/* 03C160 0043C160 8F8387C4 */  lw          $v1, %got(st_pchdr)($gp)
/* 03C164 0043C164 8C630000 */  lw          $v1, 0x0($v1)
/* 03C168 0043C168 8FBF001C */  lw          $ra, 0x1C($sp)
.L0043C16C:
/* 03C16C 0043C16C 8C6F0018 */  lw          $t7, 0x18($v1)
/* 03C170 0043C170 0005C100 */  sll         $t8, $a1, 4
/* 03C174 0043C174 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03C178 0043C178 03E00008 */  jr          $ra
/* 03C17C 0043C17C 01F81021 */   addu       $v0, $t7, $t8
