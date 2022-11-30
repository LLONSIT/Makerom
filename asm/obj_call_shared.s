.section .rodata
glabel STR_10012580
/* 042580 10012580 */ .asciz "0"
                      .balign 4

glabel STR_10012584
/* 042584 10012584 */ .asciz "obj.c"
                      .balign 4


.section .text
glabel obj_call_shared # 270
# _gp_disp: 0xFBF50F0
.set noreorder; .cpload $t9; # .set reorder
/* 028C5C 00428C5C 8F9982AC */  lw          $t9, %call16(obj_otype)($gp)
/* 028C60 00428C60 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 028C64 00428C64 AFBF001C */  sw          $ra, 0x1C($sp)
/* 028C68 00428C68 AFBC0018 */  sw          $gp, 0x18($sp)
/* 028C6C 00428C6C 0320F809 */  jalr        $t9
/* 028C70 00428C70 AFA40020 */   sw         $a0, 0x20($sp)
/* 028C74 00428C74 24010002 */  addiu       $at, $zero, 0x2
/* 028C78 00428C78 14410008 */  bne         $v0, $at, .L00428C9C
/* 028C7C 00428C7C 8FBC0018 */   lw         $gp, 0x18($sp)
/* 028C80 00428C80 8FAE0020 */  lw          $t6, 0x20($sp)
/* 028C84 00428C84 8DCF0090 */  lw          $t7, 0x90($t6)
/* 028C88 00428C88 95E20012 */  lhu         $v0, 0x12($t7)
/* 028C8C 00428C8C 30423000 */  andi        $v0, $v0, 0x3000
/* 028C90 00428C90 38423000 */  xori        $v0, $v0, 0x3000
/* 028C94 00428C94 10000015 */  b           .L00428CEC
/* 028C98 00428C98 2C420001 */   sltiu      $v0, $v0, 0x1
.L00428C9C:
/* 028C9C 00428C9C 8F9982AC */  lw          $t9, %call16(obj_otype)($gp)
/* 028CA0 00428CA0 8FA40020 */  lw          $a0, 0x20($sp)
/* 028CA4 00428CA4 0320F809 */  jalr        $t9
/* 028CA8 00428CA8 00000000 */   nop
/* 028CAC 00428CAC 24010003 */  addiu       $at, $zero, 0x3
/* 028CB0 00428CB0 14410006 */  bne         $v0, $at, .L00428CCC
/* 028CB4 00428CB4 8FBC0018 */   lw         $gp, 0x18($sp)
/* 028CB8 00428CB8 8FB80020 */  lw          $t8, 0x20($sp)
/* 028CBC 00428CBC 8F1900E0 */  lw          $t9, 0xE0($t8)
/* 028CC0 00428CC0 8F220024 */  lw          $v0, 0x24($t9)
/* 028CC4 00428CC4 10000009 */  b           .L00428CEC
/* 028CC8 00428CC8 30420004 */   andi       $v0, $v0, 0x4
.L00428CCC:
/* 028CCC 00428CCC 8F998144 */  lw          $t9, %call16(__assert)($gp)
/* 028CD0 00428CD0 8F84802C */  lw          $a0, %got(STR_10012580)($gp)
/* 028CD4 00428CD4 8F85802C */  lw          $a1, %got(STR_10012584)($gp)
/* 028CD8 00428CD8 24060642 */  addiu       $a2, $zero, 0x642
/* 028CDC 00428CDC 24842580 */  addiu       $a0, $a0, %lo(STR_10012580)
/* 028CE0 00428CE0 0320F809 */  jalr        $t9
/* 028CE4 00428CE4 24A52584 */   addiu      $a1, $a1, %lo(STR_10012584)
/* 028CE8 00428CE8 8FBC0018 */  lw          $gp, 0x18($sp)
.L00428CEC:
/* 028CEC 00428CEC 8FBF001C */  lw          $ra, 0x1C($sp)
/* 028CF0 00428CF0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 028CF4 00428CF4 03E00008 */  jr          $ra
/* 028CF8 00428CF8 00000000 */   nop
