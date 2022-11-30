.section .rodata
glabel STR_10012574
/* 042574 10012574 */ .asciz "0"
                      .balign 4

glabel STR_10012578
/* 042578 10012578 */ .asciz "obj.c"
                      .balign 4


.section .text
glabel obj_shared # 269
# _gp_disp: 0xFBF519C
.set noreorder; .cpload $t9; # .set reorder
/* 028BB0 00428BB0 8F9982AC */  lw          $t9, %call16(obj_otype)($gp)
/* 028BB4 00428BB4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 028BB8 00428BB8 AFBF001C */  sw          $ra, 0x1C($sp)
/* 028BBC 00428BBC AFBC0018 */  sw          $gp, 0x18($sp)
/* 028BC0 00428BC0 0320F809 */  jalr        $t9
/* 028BC4 00428BC4 AFA40020 */   sw         $a0, 0x20($sp)
/* 028BC8 00428BC8 24010002 */  addiu       $at, $zero, 0x2
/* 028BCC 00428BCC 14410008 */  bne         $v0, $at, .L00428BF0
/* 028BD0 00428BD0 8FBC0018 */   lw         $gp, 0x18($sp)
/* 028BD4 00428BD4 8FAE0020 */  lw          $t6, 0x20($sp)
/* 028BD8 00428BD8 8DCF0090 */  lw          $t7, 0x90($t6)
/* 028BDC 00428BDC 95E20012 */  lhu         $v0, 0x12($t7)
/* 028BE0 00428BE0 30423000 */  andi        $v0, $v0, 0x3000
/* 028BE4 00428BE4 38422000 */  xori        $v0, $v0, 0x2000
/* 028BE8 00428BE8 10000015 */  b           .L00428C40
/* 028BEC 00428BEC 2C420001 */   sltiu      $v0, $v0, 0x1
.L00428BF0:
/* 028BF0 00428BF0 8F9982AC */  lw          $t9, %call16(obj_otype)($gp)
/* 028BF4 00428BF4 8FA40020 */  lw          $a0, 0x20($sp)
/* 028BF8 00428BF8 0320F809 */  jalr        $t9
/* 028BFC 00428BFC 00000000 */   nop
/* 028C00 00428C00 24010003 */  addiu       $at, $zero, 0x3
/* 028C04 00428C04 14410006 */  bne         $v0, $at, .L00428C20
/* 028C08 00428C08 8FBC0018 */   lw         $gp, 0x18($sp)
/* 028C0C 00428C0C 8FB80020 */  lw          $t8, 0x20($sp)
/* 028C10 00428C10 8F1900E0 */  lw          $t9, 0xE0($t8)
/* 028C14 00428C14 8F220024 */  lw          $v0, 0x24($t9)
/* 028C18 00428C18 10000009 */  b           .L00428C40
/* 028C1C 00428C1C 30420002 */   andi       $v0, $v0, 0x2
.L00428C20:
/* 028C20 00428C20 8F998144 */  lw          $t9, %call16(__assert)($gp)
/* 028C24 00428C24 8F84802C */  lw          $a0, %got(STR_10012574)($gp)
/* 028C28 00428C28 8F85802C */  lw          $a1, %got(STR_10012578)($gp)
/* 028C2C 00428C2C 24060636 */  addiu       $a2, $zero, 0x636
/* 028C30 00428C30 24842574 */  addiu       $a0, $a0, %lo(STR_10012574)
/* 028C34 00428C34 0320F809 */  jalr        $t9
/* 028C38 00428C38 24A52578 */   addiu      $a1, $a1, %lo(STR_10012578)
/* 028C3C 00428C3C 8FBC0018 */  lw          $gp, 0x18($sp)
.L00428C40:
/* 028C40 00428C40 8FBF001C */  lw          $ra, 0x1C($sp)
/* 028C44 00428C44 27BD0020 */  addiu       $sp, $sp, 0x20
/* 028C48 00428C48 03E00008 */  jr          $ra
/* 028C4C 00428C4C 00000000 */   nop
