.section .rodata
glabel STR_1001258C
/* 04258C 1001258C */ .asciz "obj_newstr: unable to malloc for new \n"
                      .balign 4
/* 0425B4 100125B4 */ .asciz "split: %s\n"
                      .balign 4


.section .text
glabel obj_newstr # 271
# _gp_disp: 0xFBF5044
.set noreorder; .cpload $t9; # .set reorder
/* 028D08 00428D08 8F99806C */  lw          $t9, %call16(strlen)($gp)
/* 028D0C 00428D0C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 028D10 00428D10 AFBF001C */  sw          $ra, 0x1C($sp)
/* 028D14 00428D14 AFBC0018 */  sw          $gp, 0x18($sp)
/* 028D18 00428D18 0320F809 */  jalr        $t9
/* 028D1C 00428D1C AFA40028 */   sw         $a0, 0x28($sp)
/* 028D20 00428D20 8FBC0018 */  lw          $gp, 0x18($sp)
/* 028D24 00428D24 24440001 */  addiu       $a0, $v0, 0x1
/* 028D28 00428D28 8F998064 */  lw          $t9, %call16(malloc)($gp)
/* 028D2C 00428D2C 0320F809 */  jalr        $t9
/* 028D30 00428D30 00000000 */   nop
/* 028D34 00428D34 8FBC0018 */  lw          $gp, 0x18($sp)
/* 028D38 00428D38 10400008 */  beqz        $v0, .L00428D5C
/* 028D3C 00428D3C AFA20024 */   sw         $v0, 0x24($sp)
/* 028D40 00428D40 8F99809C */  lw          $t9, %call16(strcpy)($gp)
/* 028D44 00428D44 00402025 */  move        $a0, $v0
/* 028D48 00428D48 8FA50028 */  lw          $a1, 0x28($sp)
/* 028D4C 00428D4C 0320F809 */  jalr        $t9
/* 028D50 00428D50 00000000 */   nop
/* 028D54 00428D54 10000006 */  b           .L00428D70
/* 028D58 00428D58 8FBC0018 */   lw         $gp, 0x18($sp)
.L00428D5C:
/* 028D5C 00428D5C 8F998634 */  lw          $t9, %call16(fatal)($gp)
/* 028D60 00428D60 8F84802C */  lw          $a0, %got(STR_1001258C)($gp)
/* 028D64 00428D64 0320F809 */  jalr        $t9
/* 028D68 00428D68 2484258C */   addiu      $a0, $a0, %lo(STR_1001258C)
/* 028D6C 00428D6C 8FBC0018 */  lw          $gp, 0x18($sp)
.L00428D70:
/* 028D70 00428D70 8FBF001C */  lw          $ra, 0x1C($sp)
/* 028D74 00428D74 8FA20024 */  lw          $v0, 0x24($sp)
/* 028D78 00428D78 27BD0028 */  addiu       $sp, $sp, 0x28
/* 028D7C 00428D7C 03E00008 */  jr          $ra
/* 028D80 00428D80 00000000 */   nop
