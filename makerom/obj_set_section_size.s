.section .rodata
glabel STR_1001354C
/* 04354C 1001354C */ .asciz "0"
                      .balign 4

glabel STR_10013550
/* 043550 10013550 */ .asciz "obj_rewrite.c"
                      .balign 4


.section .text
glabel obj_set_section_size # 584
# _gp_disp: 0xFBE8AD8
.set noreorder; .cpload $t9; # .set reorder
/* 035274 00435274 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 035278 00435278 8F998520 */  lw          $t9, %call16(foreach_section)($gp)
/* 03527C 0043527C AFA60030 */  sw          $a2, 0x30($sp)
/* 035280 00435280 00A03025 */  move        $a2, $a1
/* 035284 00435284 AFBF001C */  sw          $ra, 0x1C($sp)
/* 035288 00435288 AFA5002C */  sw          $a1, 0x2C($sp)
/* 03528C 0043528C AFBC0018 */  sw          $gp, 0x18($sp)
/* 035290 00435290 AFA40028 */  sw          $a0, 0x28($sp)
/* 035294 00435294 0320F809 */  jalr        $t9
/* 035298 00435298 8F858530 */   lw         $a1, %got(find_section_byname)($gp)
/* 03529C 0043529C 2401FFFF */  addiu       $at, $zero, -0x1
/* 0352A0 004352A0 10410021 */  beq         $v0, $at, .L00435328
/* 0352A4 004352A4 8FBC0018 */   lw         $gp, 0x18($sp)
/* 0352A8 004352A8 8F9982AC */  lw          $t9, %call16(obj_otype)($gp)
/* 0352AC 004352AC 8FA40028 */  lw          $a0, 0x28($sp)
/* 0352B0 004352B0 AFA20024 */  sw          $v0, 0x24($sp)
/* 0352B4 004352B4 0320F809 */  jalr        $t9
/* 0352B8 004352B8 00000000 */   nop
/* 0352BC 004352BC 24010002 */  addiu       $at, $zero, 0x2
/* 0352C0 004352C0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0352C4 004352C4 14410004 */  bne         $v0, $at, .L004352D8
/* 0352C8 004352C8 8FA30024 */   lw         $v1, 0x24($sp)
/* 0352CC 004352CC 8FAE0030 */  lw          $t6, 0x30($sp)
/* 0352D0 004352D0 10000015 */  b           .L00435328
/* 0352D4 004352D4 AC6E0010 */   sw         $t6, 0x10($v1)
.L004352D8:
/* 0352D8 004352D8 8F9982AC */  lw          $t9, %call16(obj_otype)($gp)
/* 0352DC 004352DC 8FA40028 */  lw          $a0, 0x28($sp)
/* 0352E0 004352E0 AFA30024 */  sw          $v1, 0x24($sp)
/* 0352E4 004352E4 0320F809 */  jalr        $t9
/* 0352E8 004352E8 00000000 */   nop
/* 0352EC 004352EC 24010003 */  addiu       $at, $zero, 0x3
/* 0352F0 004352F0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0352F4 004352F4 14410004 */  bne         $v0, $at, .L00435308
/* 0352F8 004352F8 8FA30024 */   lw         $v1, 0x24($sp)
/* 0352FC 004352FC 8FAF0030 */  lw          $t7, 0x30($sp)
/* 035300 00435300 10000009 */  b           .L00435328
/* 035304 00435304 AC6F0014 */   sw         $t7, 0x14($v1)
.L00435308:
/* 035308 00435308 8F998144 */  lw          $t9, %call16(__assert)($gp)
/* 03530C 0043530C 8F84802C */  lw          $a0, %got(STR_1001354C)($gp)
/* 035310 00435310 8F85802C */  lw          $a1, %got(STR_10013550)($gp)
/* 035314 00435314 240602E1 */  addiu       $a2, $zero, 0x2E1
/* 035318 00435318 2484354C */  addiu       $a0, $a0, %lo(STR_1001354C)
/* 03531C 0043531C 0320F809 */  jalr        $t9
/* 035320 00435320 24A53550 */   addiu      $a1, $a1, %lo(STR_10013550)
/* 035324 00435324 8FBC0018 */  lw          $gp, 0x18($sp)
.L00435328:
/* 035328 00435328 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03532C 0043532C 27BD0028 */  addiu       $sp, $sp, 0x28
/* 035330 00435330 03E00008 */  jr          $ra
/* 035334 00435334 00000000 */   nop
