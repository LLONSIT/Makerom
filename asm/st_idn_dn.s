.section .rodata
glabel STR_100139EC
/* 0439EC 100139EC */ .asciz "st_idn_dn: you didn't initialize with cuinit or readst\n"
                      .balign 4


.section .text
glabel st_idn_dn # 642
# _gp_disp: 0xFBE40F0
.set noreorder; .cpload $t9; # .set reorder
/* 039C5C 00439C5C 8F8387C4 */  lw          $v1, %got(st_pchdr)($gp)
/* 039C60 00439C60 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 039C64 00439C64 AFBF001C */  sw          $ra, 0x1C($sp)
/* 039C68 00439C68 8C630000 */  lw          $v1, 0x0($v1)
/* 039C6C 00439C6C AFBC0018 */  sw          $gp, 0x18($sp)
/* 039C70 00439C70 AFA40028 */  sw          $a0, 0x28($sp)
/* 039C74 00439C74 14600008 */  bnez        $v1, .L00439C98
/* 039C78 00439C78 AFA5002C */   sw         $a1, 0x2C($sp)
/* 039C7C 00439C7C 8F998638 */  lw          $t9, %call16(st_internal)($gp)
/* 039C80 00439C80 8F84802C */  lw          $a0, %got(STR_100139EC)($gp)
/* 039C84 00439C84 0320F809 */  jalr        $t9
/* 039C88 00439C88 248439EC */   addiu      $a0, $a0, %lo(STR_100139EC)
/* 039C8C 00439C8C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 039C90 00439C90 8F8387C4 */  lw          $v1, %got(st_pchdr)($gp)
/* 039C94 00439C94 8C630000 */  lw          $v1, 0x0($v1)
.L00439C98:
/* 039C98 00439C98 8C620040 */  lw          $v0, 0x40($v1)
/* 039C9C 00439C9C 8C6E003C */  lw          $t6, 0x3C($v1)
/* 039CA0 00439CA0 24650040 */  addiu       $a1, $v1, 0x40
/* 039CA4 00439CA4 24060008 */  addiu       $a2, $zero, 0x8
/* 039CA8 00439CA8 01C2082A */  slt         $at, $t6, $v0
/* 039CAC 00439CAC 1420000D */  bnez        $at, .L00439CE4
/* 039CB0 00439CB0 00404025 */   move       $t0, $v0
/* 039CB4 00439CB4 8F9985F8 */  lw          $t9, %call16(st_malloc)($gp)
/* 039CB8 00439CB8 8C640038 */  lw          $a0, 0x38($v1)
/* 039CBC 00439CBC AFA20024 */  sw          $v0, 0x24($sp)
/* 039CC0 00439CC0 0320F809 */  jalr        $t9
/* 039CC4 00439CC4 24070080 */   addiu      $a3, $zero, 0x80
/* 039CC8 00439CC8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 039CCC 00439CCC 8FA80024 */  lw          $t0, 0x24($sp)
/* 039CD0 00439CD0 8F8F87C4 */  lw          $t7, %got(st_pchdr)($gp)
/* 039CD4 00439CD4 8F8387C4 */  lw          $v1, %got(st_pchdr)($gp)
/* 039CD8 00439CD8 8DEF0000 */  lw          $t7, 0x0($t7)
/* 039CDC 00439CDC ADE20038 */  sw          $v0, 0x38($t7)
/* 039CE0 00439CE0 8C630000 */  lw          $v1, 0x0($v1)
.L00439CE4:
/* 039CE4 00439CE4 5500000A */  bnel        $t0, $zero, .L00439D10
/* 039CE8 00439CE8 8C69003C */   lw         $t1, 0x3C($v1)
/* 039CEC 00439CEC 8F998170 */  lw          $t9, %call16(bzero)($gp)
/* 039CF0 00439CF0 8C640038 */  lw          $a0, 0x38($v1)
/* 039CF4 00439CF4 24050010 */  addiu       $a1, $zero, 0x10
/* 039CF8 00439CF8 0320F809 */  jalr        $t9
/* 039CFC 00439CFC 00000000 */   nop
/* 039D00 00439D00 8FBC0018 */  lw          $gp, 0x18($sp)
/* 039D04 00439D04 8F8387C4 */  lw          $v1, %got(st_pchdr)($gp)
/* 039D08 00439D08 8C630000 */  lw          $v1, 0x0($v1)
/* 039D0C 00439D0C 8C69003C */  lw          $t1, 0x3C($v1)
.L00439D10:
/* 039D10 00439D10 8C790038 */  lw          $t9, 0x38($v1)
/* 039D14 00439D14 8FB80028 */  lw          $t8, 0x28($sp)
/* 039D18 00439D18 8F8387C4 */  lw          $v1, %got(st_pchdr)($gp)
/* 039D1C 00439D1C 000950C0 */  sll         $t2, $t1, 3
/* 039D20 00439D20 032A5821 */  addu        $t3, $t9, $t2
/* 039D24 00439D24 AD780000 */  sw          $t8, 0x0($t3)
/* 039D28 00439D28 8C630000 */  lw          $v1, 0x0($v1)
/* 039D2C 00439D2C 8FAC002C */  lw          $t4, 0x2C($sp)
/* 039D30 00439D30 8C6E003C */  lw          $t6, 0x3C($v1)
/* 039D34 00439D34 8C6D0038 */  lw          $t5, 0x38($v1)
/* 039D38 00439D38 8F8387C4 */  lw          $v1, %got(st_pchdr)($gp)
/* 039D3C 00439D3C 000E78C0 */  sll         $t7, $t6, 3
/* 039D40 00439D40 01AF4821 */  addu        $t1, $t5, $t7
/* 039D44 00439D44 AD2C0004 */  sw          $t4, 0x4($t1)
/* 039D48 00439D48 8C630000 */  lw          $v1, 0x0($v1)
/* 039D4C 00439D4C 8C62003C */  lw          $v0, 0x3C($v1)
/* 039D50 00439D50 24590001 */  addiu       $t9, $v0, 0x1
/* 039D54 00439D54 AC79003C */  sw          $t9, 0x3C($v1)
/* 039D58 00439D58 8FBF001C */  lw          $ra, 0x1C($sp)
/* 039D5C 00439D5C 27BD0028 */  addiu       $sp, $sp, 0x28
/* 039D60 00439D60 03E00008 */  jr          $ra
/* 039D64 00439D64 00000000 */   nop
