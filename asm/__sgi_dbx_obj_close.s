.section .rodata
glabel STR_10011C98
/* 041C98 10011C98 */ .asciz "obj_write failed"
                      .balign 4
/* 041CAC 10011CAC */ .asciz "obj_init: obj %s\n"
                      .balign 4
/* 041CC0 10011CC0 */ .asciz "obj_init: gethostsex %d\n"
                      .balign 4
/* 041CDC 10011CDC */ .asciz "obj_init: obj->o_mode %d\n"
                      .balign 4
/* 041CF8 10011CF8 */ .asciz "obj_init: Elf object\n"
                      .balign 4
/* 041D10 10011D10 */ .asciz "obj_init: Coff object\n"
                      .balign 4


.section .text
glabel __sgi_dbx_obj_close # 244
# _gp_disp: 0xFBF7B10
.set noreorder; .cpload $t9; # .set reorder
/* 02623C 0042623C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 026240 00426240 AFBF001C */  sw          $ra, 0x1C($sp)
/* 026244 00426244 AFBC0018 */  sw          $gp, 0x18($sp)
/* 026248 00426248 AFB00014 */  sw          $s0, 0x14($sp)
/* 02624C 0042624C 8C820180 */  lw          $v0, 0x180($a0)
/* 026250 00426250 24010001 */  addiu       $at, $zero, 0x1
/* 026254 00426254 00808025 */  move        $s0, $a0
/* 026258 00426258 5441000A */  bnel        $v0, $at, .L00426284
/* 02625C 0042625C 24010003 */   addiu      $at, $zero, 0x3
/* 026260 00426260 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 026264 00426264 8C8400C4 */  lw          $a0, 0xC4($a0)
/* 026268 00426268 0320F809 */  jalr        $t9
/* 02626C 0042626C 00000000 */   nop
/* 026270 00426270 8FBC0018 */  lw          $gp, 0x18($sp)
/* 026274 00426274 AE0000C4 */  sw          $zero, 0xC4($s0)
/* 026278 00426278 10000010 */  b           .L004262BC
/* 02627C 0042627C AE0000DC */   sw         $zero, 0xDC($s0)
/* 026280 00426280 24010003 */  addiu       $at, $zero, 0x3
.L00426284:
/* 026284 00426284 1441000D */  bne         $v0, $at, .L004262BC
/* 026288 00426288 00000000 */   nop
/* 02628C 0042628C 8F998554 */  lw          $t9, %call16(obj_write)($gp)
/* 026290 00426290 02002025 */  move        $a0, $s0
/* 026294 00426294 0320F809 */  jalr        $t9
/* 026298 00426298 00000000 */   nop
/* 02629C 0042629C 14400007 */  bnez        $v0, .L004262BC
/* 0262A0 004262A0 8FBC0018 */   lw         $gp, 0x18($sp)
/* 0262A4 004262A4 8F998538 */  lw          $t9, %call16(st_error)($gp)
/* 0262A8 004262A8 8F84802C */  lw          $a0, %got(STR_10011C98)($gp)
/* 0262AC 004262AC 0320F809 */  jalr        $t9
/* 0262B0 004262B0 24841C98 */   addiu      $a0, $a0, %lo(STR_10011C98)
/* 0262B4 004262B4 10000012 */  b           .L00426300
/* 0262B8 004262B8 8FBC0018 */   lw         $gp, 0x18($sp)
.L004262BC:
/* 0262BC 004262BC 8F8E87D4 */  lw          $t6, %got(D_1001D858)($gp)
/* 0262C0 004262C0 25CE0001 */  addiu       $t6, $t6, 0x1
/* 0262C4 004262C4 020E082B */  sltu        $at, $s0, $t6
/* 0262C8 004262C8 5420000E */  bnel        $at, $zero, .L00426304
/* 0262CC 004262CC 8FBF001C */   lw         $ra, 0x1C($sp)
/* 0262D0 004262D0 8F998158 */  lw          $t9, %call16(sbrk)($gp)
/* 0262D4 004262D4 00002025 */  move        $a0, $zero
/* 0262D8 004262D8 0320F809 */  jalr        $t9
/* 0262DC 004262DC 00000000 */   nop
/* 0262E0 004262E0 0202082B */  sltu        $at, $s0, $v0
/* 0262E4 004262E4 10200006 */  beqz        $at, .L00426300
/* 0262E8 004262E8 8FBC0018 */   lw         $gp, 0x18($sp)
/* 0262EC 004262EC 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 0262F0 004262F0 02002025 */  move        $a0, $s0
/* 0262F4 004262F4 0320F809 */  jalr        $t9
/* 0262F8 004262F8 00000000 */   nop
/* 0262FC 004262FC 8FBC0018 */  lw          $gp, 0x18($sp)
.L00426300:
/* 026300 00426300 8FBF001C */  lw          $ra, 0x1C($sp)
.L00426304:
/* 026304 00426304 8FB00014 */  lw          $s0, 0x14($sp)
/* 026308 00426308 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02630C 0042630C 03E00008 */  jr          $ra
/* 026310 00426310 00000000 */   nop
