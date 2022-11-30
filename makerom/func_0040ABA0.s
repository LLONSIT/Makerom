.section .rodata
glabel STR_1000F5F8
/* 03F5F8 1000F5F8 */ .asciz "Nintendo64 Makerom v2.2 for IRIX.\n"
                      .balign 4

glabel STR_1000F61C
/* 03F61C 1000F61C */ .asciz "Nintendo64 Makerom v2.2 -BETA- for IRIX.\n"
                      .balign 4


.section .text
glabel func_0040ABA0 # 6
# _gp_disp: 0xFC131A0
.set noreorder; .cpload $t9; # .set reorder
/* 00ABAC 0040ABAC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00ABB0 0040ABB0 AFBF001C */  sw          $ra, 0x1C($sp)
/* 00ABB4 0040ABB4 AFBC0018 */  sw          $gp, 0x18($sp)
/* 00ABB8 0040ABB8 8F8E8740 */  lw          $t6, %got(irixVersion)($gp)
/* 00ABBC 0040ABBC 8DCE0000 */  lw          $t6, 0x0($t6)
/* 00ABC0 0040ABC0 15C00007 */  bnez        $t6, .L0040ABE0
/* 00ABC4 0040ABC4 00000000 */   nop
/* 00ABC8 0040ABC8 8F998090 */  lw          $t9, %call16(printf)($gp)
/* 00ABCC 0040ABCC 8F84802C */  lw          $a0, %got(STR_1000F5F8)($gp)
/* 00ABD0 0040ABD0 0320F809 */  jalr        $t9
/* 00ABD4 0040ABD4 2484F5F8 */   addiu      $a0, $a0, %lo(STR_1000F5F8)
/* 00ABD8 0040ABD8 10000006 */  b           .L0040ABF4
/* 00ABDC 0040ABDC 8FBC0018 */   lw         $gp, 0x18($sp)
.L0040ABE0:
/* 00ABE0 0040ABE0 8F998090 */  lw          $t9, %call16(printf)($gp)
/* 00ABE4 0040ABE4 8F84802C */  lw          $a0, %got(STR_1000F61C)($gp)
/* 00ABE8 0040ABE8 0320F809 */  jalr        $t9
/* 00ABEC 0040ABEC 2484F61C */   addiu      $a0, $a0, %lo(STR_1000F61C)
/* 00ABF0 0040ABF0 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040ABF4:
/* 00ABF4 0040ABF4 10000001 */  b           .L0040ABFC
/* 00ABF8 0040ABF8 00000000 */   nop
.L0040ABFC:
/* 00ABFC 0040ABFC 8FBF001C */  lw          $ra, 0x1C($sp)
/* 00AC00 0040AC00 27BD0020 */  addiu       $sp, $sp, 0x20
/* 00AC04 0040AC04 03E00008 */  jr          $ra
/* 00AC08 0040AC08 00000000 */   nop
