.section .rodata
glabel STR_10011AE0
/* 041AE0 10011AE0 */ .asciz "Can only ldmemseek on archives!\n"
                      .balign 4

glabel STR_10011B04
/* 041B04 10011B04 */ .asciz "Can only ldmemseek from BEGINNING\n"
                      .balign 4

glabel STR_10011B28
/* 041B28 10011B28 */ .asciz "Bad  offset in ldmemseek\n"
                      .balign 4


.section .text
glabel __sgi_ldmemseek # 219
# _gp_disp: 0xFBF8CE0
.set noreorder; .cpload $t9; # .set reorder
/* 02506C 0042506C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 025070 00425070 AFBF001C */  sw          $ra, 0x1C($sp)
/* 025074 00425074 AFBC0018 */  sw          $gp, 0x18($sp)
/* 025078 00425078 948E0028 */  lhu         $t6, 0x28($a0)
/* 02507C 0042507C 3401FF65 */  ori         $at, $zero, 0xFF65
/* 025080 00425080 11C1000A */  beq         $t6, $at, .L004250AC
/* 025084 00425084 00000000 */   nop
/* 025088 00425088 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 02508C 0042508C 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 025090 00425090 8F85802C */  lw          $a1, %got(STR_10011AE0)($gp)
/* 025094 00425094 24840020 */  addiu       $a0, $a0, 0x20
/* 025098 00425098 0320F809 */  jalr        $t9
/* 02509C 0042509C 24A51AE0 */   addiu      $a1, $a1, %lo(STR_10011AE0)
/* 0250A0 004250A0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0250A4 004250A4 1000001E */  b           .L00425120
/* 0250A8 004250A8 2402FFFF */   addiu      $v0, $zero, -0x1
.L004250AC:
/* 0250AC 004250AC 10C00008 */  beqz        $a2, .L004250D0
/* 0250B0 004250B0 00001025 */   move       $v0, $zero
/* 0250B4 004250B4 24010001 */  addiu       $at, $zero, 0x1
/* 0250B8 004250B8 10C10007 */  beq         $a2, $at, .L004250D8
/* 0250BC 004250BC 24010002 */   addiu      $at, $zero, 0x2
/* 0250C0 004250C0 10C10005 */  beq         $a2, $at, .L004250D8
/* 0250C4 004250C4 00000000 */   nop
/* 0250C8 004250C8 1000000C */  b           .L004250FC
/* 0250CC 004250CC 00000000 */   nop
.L004250D0:
/* 0250D0 004250D0 10000013 */  b           .L00425120
/* 0250D4 004250D4 AC850034 */   sw         $a1, 0x34($a0)
.L004250D8:
/* 0250D8 004250D8 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 0250DC 004250DC 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 0250E0 004250E0 8F85802C */  lw          $a1, %got(STR_10011B04)($gp)
/* 0250E4 004250E4 24840020 */  addiu       $a0, $a0, 0x20
/* 0250E8 004250E8 0320F809 */  jalr        $t9
/* 0250EC 004250EC 24A51B04 */   addiu      $a1, $a1, %lo(STR_10011B04)
/* 0250F0 004250F0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0250F4 004250F4 1000000A */  b           .L00425120
/* 0250F8 004250F8 2402FFFF */   addiu      $v0, $zero, -0x1
.L004250FC:
/* 0250FC 004250FC 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 025100 00425100 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 025104 00425104 8F85802C */  lw          $a1, %got(STR_10011B28)($gp)
/* 025108 00425108 24840020 */  addiu       $a0, $a0, 0x20
/* 02510C 0042510C 0320F809 */  jalr        $t9
/* 025110 00425110 24A51B28 */   addiu      $a1, $a1, %lo(STR_10011B28)
/* 025114 00425114 8FBC0018 */  lw          $gp, 0x18($sp)
/* 025118 00425118 10000001 */  b           .L00425120
/* 02511C 0042511C 2402FFFF */   addiu      $v0, $zero, -0x1
.L00425120:
/* 025120 00425120 8FBF001C */  lw          $ra, 0x1C($sp)
/* 025124 00425124 27BD0020 */  addiu       $sp, $sp, 0x20
/* 025128 00425128 03E00008 */  jr          $ra
/* 02512C 0042512C 00000000 */   nop
