.section .rodata
glabel STR_10011F7C
/* 041F7C 10011F7C */ .asciz "obj_dynamic:Bad obj type %d\n"
                      .balign 4

glabel STR_10011F9C
/* 041F9C 10011F9C */ .asciz "0"
                      .balign 4

glabel STR_10011FA0
/* 041FA0 10011FA0 */ .asciz "obj.c"
                      .balign 4
/* 041FA8 10011FA8 */ .asciz "get_dynamic_info: dynaddr 0x%x, obj 0x%x, offset 0x%x,0x%x\n"
                      .balign 4
/* 041FE4 10011FE4 */ .asciz "get_dynamic_info: obj 0x%x, name %s, dyn 0x%x,offset 0x%x,0x%x\n"
                      .balign 4
/* 042024 10012024 */ .asciz "get_dynamic_info: base addr 0x%x\n"
                      .balign 4
/* 042048 10012048 */ .asciz "get_dynamic_info: init addr 0x%x\n"
                      .balign 4
/* 04206C 1001206C */ .asciz "get_dynamic_info: pixie init addr 0x%x\n"
                      .balign 4
/* 042094 10012094 */ .asciz "get_dynamic_info: fini addr 0x%x\n"
                      .balign 4
/* 0420B8 100120B8 */ .asciz "get_dynamic_info: hash addr 0x%x\n"
                      .balign 4


.section .text
glabel obj_dynamic # 266
# _gp_disp: 0xFBF5C4C
.set noreorder; .cpload $t9; # .set reorder
/* 028100 00428100 8F9982AC */  lw          $t9, %call16(obj_otype)($gp)
/* 028104 00428104 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 028108 00428108 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02810C 0042810C AFB00014 */  sw          $s0, 0x14($sp)
/* 028110 00428110 00808025 */  move        $s0, $a0
/* 028114 00428114 0320F809 */  jalr        $t9
/* 028118 00428118 AFBC0018 */   sw         $gp, 0x18($sp)
/* 02811C 0042811C 24010002 */  addiu       $at, $zero, 0x2
/* 028120 00428120 14410003 */  bne         $v0, $at, .L00428130
/* 028124 00428124 8FBC0018 */   lw         $gp, 0x18($sp)
/* 028128 00428128 10000017 */  b           .L00428188
/* 02812C 0042812C 24062000 */   addiu      $a2, $zero, 0x2000
.L00428130:
/* 028130 00428130 8F9982AC */  lw          $t9, %call16(obj_otype)($gp)
/* 028134 00428134 02002025 */  move        $a0, $s0
/* 028138 00428138 0320F809 */  jalr        $t9
/* 02813C 0042813C 00000000 */   nop
/* 028140 00428140 24010003 */  addiu       $at, $zero, 0x3
/* 028144 00428144 14410003 */  bne         $v0, $at, .L00428154
/* 028148 00428148 8FBC0018 */   lw         $gp, 0x18($sp)
/* 02814C 0042814C 1000000E */  b           .L00428188
/* 028150 00428150 24060006 */   addiu      $a2, $zero, 0x6
.L00428154:
/* 028154 00428154 8F9982AC */  lw          $t9, %call16(obj_otype)($gp)
/* 028158 00428158 02002025 */  move        $a0, $s0
/* 02815C 0042815C 0320F809 */  jalr        $t9
/* 028160 00428160 00000000 */   nop
/* 028164 00428164 8FBC0018 */  lw          $gp, 0x18($sp)
/* 028168 00428168 00402825 */  move        $a1, $v0
/* 02816C 0042816C 8F998538 */  lw          $t9, %call16(st_error)($gp)
/* 028170 00428170 8F84802C */  lw          $a0, %got(STR_10011F7C)($gp)
/* 028174 00428174 0320F809 */  jalr        $t9
/* 028178 00428178 24841F7C */   addiu      $a0, $a0, %lo(STR_10011F7C)
/* 02817C 0042817C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 028180 00428180 10000029 */  b           .L00428228
/* 028184 00428184 00001025 */   move       $v0, $zero
.L00428188:
/* 028188 00428188 8F998520 */  lw          $t9, %call16(foreach_section)($gp)
/* 02818C 0042818C 02002025 */  move        $a0, $s0
/* 028190 00428190 8F858534 */  lw          $a1, %got(find_section_bytype)($gp)
/* 028194 00428194 0320F809 */  jalr        $t9
/* 028198 00428198 00000000 */   nop
/* 02819C 0042819C 2401FFFF */  addiu       $at, $zero, -0x1
/* 0281A0 004281A0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0281A4 004281A4 14410003 */  bne         $v0, $at, .L004281B4
/* 0281A8 004281A8 00401825 */   move       $v1, $v0
/* 0281AC 004281AC 1000001E */  b           .L00428228
/* 0281B0 004281B0 00001025 */   move       $v0, $zero
.L004281B4:
/* 0281B4 004281B4 8E02008C */  lw          $v0, 0x8C($s0)
/* 0281B8 004281B8 24010002 */  addiu       $at, $zero, 0x2
/* 0281BC 004281BC 54410009 */  bnel        $v0, $at, .L004281E4
/* 0281C0 004281C0 24010003 */   addiu      $at, $zero, 0x3
/* 0281C4 004281C4 8F998550 */  lw          $t9, %call16(obj_vtop)($gp)
/* 0281C8 004281C8 02002025 */  move        $a0, $s0
/* 0281CC 004281CC 8C65000C */  lw          $a1, 0xC($v1)
/* 0281D0 004281D0 0320F809 */  jalr        $t9
/* 0281D4 004281D4 00000000 */   nop
/* 0281D8 004281D8 10000013 */  b           .L00428228
/* 0281DC 004281DC 8FBC0018 */   lw         $gp, 0x18($sp)
/* 0281E0 004281E0 24010003 */  addiu       $at, $zero, 0x3
.L004281E4:
/* 0281E4 004281E4 14410008 */  bne         $v0, $at, .L00428208
/* 0281E8 004281E8 00000000 */   nop
/* 0281EC 004281EC 8F998550 */  lw          $t9, %call16(obj_vtop)($gp)
/* 0281F0 004281F0 02002025 */  move        $a0, $s0
/* 0281F4 004281F4 8C65000C */  lw          $a1, 0xC($v1)
/* 0281F8 004281F8 0320F809 */  jalr        $t9
/* 0281FC 004281FC 00000000 */   nop
/* 028200 00428200 10000009 */  b           .L00428228
/* 028204 00428204 8FBC0018 */   lw         $gp, 0x18($sp)
.L00428208:
/* 028208 00428208 8F998144 */  lw          $t9, %call16(__assert)($gp)
/* 02820C 0042820C 8F84802C */  lw          $a0, %got(STR_10011F9C)($gp)
/* 028210 00428210 8F85802C */  lw          $a1, %got(STR_10011FA0)($gp)
/* 028214 00428214 240604AF */  addiu       $a2, $zero, 0x4AF
/* 028218 00428218 24841F9C */  addiu       $a0, $a0, %lo(STR_10011F9C)
/* 02821C 0042821C 0320F809 */  jalr        $t9
/* 028220 00428220 24A51FA0 */   addiu      $a1, $a1, %lo(STR_10011FA0)
/* 028224 00428224 8FBC0018 */  lw          $gp, 0x18($sp)
.L00428228:
/* 028228 00428228 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02822C 0042822C 8FB00014 */  lw          $s0, 0x14($sp)
/* 028230 00428230 27BD0020 */  addiu       $sp, $sp, 0x20
/* 028234 00428234 03E00008 */  jr          $ra
/* 028238 00428238 00000000 */   nop
