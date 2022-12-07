.section .rodata
glabel STR_10013A24
/* 043A24 10013A24 */ .asciz "st_idn_rndx: you didn't initialize with cuinit or readst\n"
                      .balign 4


.section .text
glabel st_idn_rndx # 643
# _gp_disp: 0xFBE3FD8
.set noreorder; .cpload $t9; # .set reorder
/* 039D74 00439D74 8F8387C4 */  lw          $v1, %got(st_pchdr)($gp)
/* 039D78 00439D78 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 039D7C 00439D7C AFBF001C */  sw          $ra, 0x1C($sp)
/* 039D80 00439D80 8C630000 */  lw          $v1, 0x0($v1)
/* 039D84 00439D84 AFBC0018 */  sw          $gp, 0x18($sp)
/* 039D88 00439D88 AFA40028 */  sw          $a0, 0x28($sp)
/* 039D8C 00439D8C 54600009 */  bnel        $v1, $zero, .L00439DB4
/* 039D90 00439D90 8C620040 */   lw         $v0, 0x40($v1)
/* 039D94 00439D94 8F998638 */  lw          $t9, %call16(st_internal)($gp)
/* 039D98 00439D98 8F84802C */  lw          $a0, %got(STR_10013A24)($gp)
/* 039D9C 00439D9C 0320F809 */  jalr        $t9
/* 039DA0 00439DA0 24843A24 */   addiu      $a0, $a0, %lo(STR_10013A24)
/* 039DA4 00439DA4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 039DA8 00439DA8 8F8387C4 */  lw          $v1, %got(st_pchdr)($gp)
/* 039DAC 00439DAC 8C630000 */  lw          $v1, 0x0($v1)
/* 039DB0 00439DB0 8C620040 */  lw          $v0, 0x40($v1)
.L00439DB4:
/* 039DB4 00439DB4 8C6E003C */  lw          $t6, 0x3C($v1)
/* 039DB8 00439DB8 24650040 */  addiu       $a1, $v1, 0x40
/* 039DBC 00439DBC 24060008 */  addiu       $a2, $zero, 0x8
/* 039DC0 00439DC0 01C2082A */  slt         $at, $t6, $v0
/* 039DC4 00439DC4 1420000D */  bnez        $at, .L00439DFC
/* 039DC8 00439DC8 00404025 */   move       $t0, $v0
/* 039DCC 00439DCC 8F9985F8 */  lw          $t9, %call16(st_malloc)($gp)
/* 039DD0 00439DD0 8C640038 */  lw          $a0, 0x38($v1)
/* 039DD4 00439DD4 AFA20024 */  sw          $v0, 0x24($sp)
/* 039DD8 00439DD8 0320F809 */  jalr        $t9
/* 039DDC 00439DDC 24070080 */   addiu      $a3, $zero, 0x80
/* 039DE0 00439DE0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 039DE4 00439DE4 8FA80024 */  lw          $t0, 0x24($sp)
/* 039DE8 00439DE8 8F8F87C4 */  lw          $t7, %got(st_pchdr)($gp)
/* 039DEC 00439DEC 8F8387C4 */  lw          $v1, %got(st_pchdr)($gp)
/* 039DF0 00439DF0 8DEF0000 */  lw          $t7, 0x0($t7)
/* 039DF4 00439DF4 ADE20038 */  sw          $v0, 0x38($t7)
/* 039DF8 00439DF8 8C630000 */  lw          $v1, 0x0($v1)
.L00439DFC:
/* 039DFC 00439DFC 5500000A */  bnel        $t0, $zero, .L00439E28
/* 039E00 00439E00 8C69003C */   lw         $t1, 0x3C($v1)
/* 039E04 00439E04 8F998170 */  lw          $t9, %call16(bzero)($gp)
/* 039E08 00439E08 8C640038 */  lw          $a0, 0x38($v1)
/* 039E0C 00439E0C 24050010 */  addiu       $a1, $zero, 0x10
/* 039E10 00439E10 0320F809 */  jalr        $t9
/* 039E14 00439E14 00000000 */   nop
/* 039E18 00439E18 8FBC0018 */  lw          $gp, 0x18($sp)
/* 039E1C 00439E1C 8F8387C4 */  lw          $v1, %got(st_pchdr)($gp)
/* 039E20 00439E20 8C630000 */  lw          $v1, 0x0($v1)
/* 039E24 00439E24 8C69003C */  lw          $t1, 0x3C($v1)
.L00439E28:
/* 039E28 00439E28 8FA60028 */  lw          $a2, 0x28($sp)
/* 039E2C 00439E2C 8C790038 */  lw          $t9, 0x38($v1)
/* 039E30 00439E30 8F8387C4 */  lw          $v1, %got(st_pchdr)($gp)
/* 039E34 00439E34 000950C0 */  sll         $t2, $t1, 3
/* 039E38 00439E38 0006C502 */  srl         $t8, $a2, 20
/* 039E3C 00439E3C 032A5821 */  addu        $t3, $t9, $t2
/* 039E40 00439E40 AD780000 */  sw          $t8, 0x0($t3)
/* 039E44 00439E44 8C630000 */  lw          $v1, 0x0($v1)
/* 039E48 00439E48 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 039E4C 00439E4C 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 039E50 00439E50 8C6E003C */  lw          $t6, 0x3C($v1)
/* 039E54 00439E54 8C6D0038 */  lw          $t5, 0x38($v1)
/* 039E58 00439E58 8F8387C4 */  lw          $v1, %got(st_pchdr)($gp)
/* 039E5C 00439E5C 000E78C0 */  sll         $t7, $t6, 3
/* 039E60 00439E60 00C16024 */  and         $t4, $a2, $at
/* 039E64 00439E64 01AF4821 */  addu        $t1, $t5, $t7
/* 039E68 00439E68 AD2C0004 */  sw          $t4, 0x4($t1)
/* 039E6C 00439E6C 8C630000 */  lw          $v1, 0x0($v1)
/* 039E70 00439E70 8C62003C */  lw          $v0, 0x3C($v1)
/* 039E74 00439E74 24590001 */  addiu       $t9, $v0, 0x1
/* 039E78 00439E78 AC79003C */  sw          $t9, 0x3C($v1)
/* 039E7C 00439E7C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 039E80 00439E80 27BD0028 */  addiu       $sp, $sp, 0x28
/* 039E84 00439E84 03E00008 */  jr          $ra
/* 039E88 00439E88 00000000 */   nop
