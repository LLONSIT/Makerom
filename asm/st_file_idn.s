.section .rodata
glabel STR_10014154
/* 044154 10014154 */ .asciz "st_file_idn: istack underflow (%s)\n"
                      .balign 4
/* 044178 10014178 */ .asciz ""
                      .balign 4
/* 04417C 1001417C */ .asciz ""
                      .balign 4


.section .text
glabel st_file_idn # 706
# _gp_disp: 0xFBE0184
.set noreorder; .cpload $t9; # .set reorder
/* 03DBC8 0043DBC8 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 03DBCC 0043DBCC 8F9985C4 */  lw          $t9, %call16(st_currentpchdr)($gp)
/* 03DBD0 0043DBD0 AFBF002C */  sw          $ra, 0x2C($sp)
/* 03DBD4 0043DBD4 AFB30024 */  sw          $s3, 0x24($sp)
/* 03DBD8 0043DBD8 00809825 */  move        $s3, $a0
/* 03DBDC 0043DBDC AFBC0028 */  sw          $gp, 0x28($sp)
/* 03DBE0 0043DBE0 AFB20020 */  sw          $s2, 0x20($sp)
/* 03DBE4 0043DBE4 AFB1001C */  sw          $s1, 0x1C($sp)
/* 03DBE8 0043DBE8 0320F809 */  jalr        $t9
/* 03DBEC 0043DBEC AFB00018 */   sw         $s0, 0x18($sp)
/* 03DBF0 0043DBF0 14400003 */  bnez        $v0, .L0043DC00
/* 03DBF4 0043DBF4 8FBC0028 */   lw         $gp, 0x28($sp)
/* 03DBF8 0043DBF8 10000048 */  b           .L0043DD1C
/* 03DBFC 0043DBFC 00001025 */   move       $v0, $zero
.L0043DC00:
/* 03DC00 0043DC00 8F9985D8 */  lw          $t9, %call16(st_ifdmax)($gp)
/* 03DC04 0043DC04 00008025 */  move        $s0, $zero
/* 03DC08 0043DC08 0320F809 */  jalr        $t9
/* 03DC0C 0043DC0C 00000000 */   nop
/* 03DC10 0043DC10 18400041 */  blez        $v0, .L0043DD18
/* 03DC14 0043DC14 8FBC0028 */   lw         $gp, 0x28($sp)
/* 03DC18 0043DC18 8F918030 */  lw          $s1, %got(B_1001B810)($gp)
/* 03DC1C 0043DC1C 2631B810 */  addiu       $s1, $s1, %lo(B_1001B810)
.L0043DC20:
/* 03DC20 0043DC20 8F998610 */  lw          $t9, %call16(st_str_ifd_iss)($gp)
/* 03DC24 0043DC24 02002025 */  move        $a0, $s0
/* 03DC28 0043DC28 24050001 */  addiu       $a1, $zero, 0x1
/* 03DC2C 0043DC2C 0320F809 */  jalr        $t9
/* 03DC30 0043DC30 00000000 */   nop
/* 03DC34 0043DC34 8FBC0028 */  lw          $gp, 0x28($sp)
/* 03DC38 0043DC38 02602025 */  move        $a0, $s3
/* 03DC3C 0043DC3C 00402825 */  move        $a1, $v0
/* 03DC40 0043DC40 8F9980A8 */  lw          $t9, %call16(strcmp)($gp)
/* 03DC44 0043DC44 0320F809 */  jalr        $t9
/* 03DC48 0043DC48 00000000 */   nop
/* 03DC4C 0043DC4C 1440002B */  bnez        $v0, .L0043DCFC
/* 03DC50 0043DC50 8FBC0028 */   lw         $gp, 0x28($sp)
/* 03DC54 0043DC54 8E240000 */  lw          $a0, 0x0($s1)
/* 03DC58 0043DC58 2483FFFF */  addiu       $v1, $a0, -0x1
/* 03DC5C 0043DC5C 0460000B */  bltz        $v1, .L0043DC8C
/* 03DC60 0043DC60 00000000 */   nop
/* 03DC64 0043DC64 8F8E8030 */  lw          $t6, %got(B_1001B80C)($gp)
/* 03DC68 0043DC68 000378C0 */  sll         $t7, $v1, 3
/* 03DC6C 0043DC6C 8DCEB80C */  lw          $t6, %lo(B_1001B80C)($t6)
/* 03DC70 0043DC70 01CF1021 */  addu        $v0, $t6, $t7
.L0043DC74:
/* 03DC74 0043DC74 8C580000 */  lw          $t8, 0x0($v0)
/* 03DC78 0043DC78 12180004 */  beq         $s0, $t8, .L0043DC8C
/* 03DC7C 0043DC7C 00000000 */   nop
/* 03DC80 0043DC80 2463FFFF */  addiu       $v1, $v1, -0x1
/* 03DC84 0043DC84 0461FFFB */  bgez        $v1, .L0043DC74
/* 03DC88 0043DC88 2442FFF8 */   addiu      $v0, $v0, -0x8
.L0043DC8C:
/* 03DC8C 0043DC8C 0460001B */  bltz        $v1, .L0043DCFC
/* 03DC90 0043DC90 00000000 */   nop
/* 03DC94 0043DC94 8F998030 */  lw          $t9, %got(B_1001B80C)($gp)
/* 03DC98 0043DC98 000488C0 */  sll         $s1, $a0, 3
/* 03DC9C 0043DC9C 8F39B80C */  lw          $t9, %lo(B_1001B80C)($t9)
/* 03DCA0 0043DCA0 03311821 */  addu        $v1, $t9, $s1
/* 03DCA4 0043DCA4 8C68FFF8 */  lw          $t0, -0x8($v1)
/* 03DCA8 0043DCA8 12080012 */  beq         $s0, $t0, .L0043DCF4
/* 03DCAC 0043DCAC 00000000 */   nop
/* 03DCB0 0043DCB0 8F92802C */  lw          $s2, %got(STR_10014154)($gp)
/* 03DCB4 0043DCB4 26524154 */  addiu       $s2, $s2, %lo(STR_10014154)
/* 03DCB8 0043DCB8 2631FFF8 */  addiu       $s1, $s1, -0x8
.L0043DCBC:
/* 03DCBC 0043DCBC 0621000A */  bgez        $s1, .L0043DCE8
/* 03DCC0 0043DCC0 2463FFF8 */   addiu      $v1, $v1, -0x8
/* 03DCC4 0043DCC4 8F998638 */  lw          $t9, %call16(st_internal)($gp)
/* 03DCC8 0043DCC8 02402025 */  move        $a0, $s2
/* 03DCCC 0043DCCC 02602825 */  move        $a1, $s3
/* 03DCD0 0043DCD0 0320F809 */  jalr        $t9
/* 03DCD4 0043DCD4 00000000 */   nop
/* 03DCD8 0043DCD8 8FBC0028 */  lw          $gp, 0x28($sp)
/* 03DCDC 0043DCDC 8F898030 */  lw          $t1, %got(B_1001B80C)($gp)
/* 03DCE0 0043DCE0 8D29B80C */  lw          $t1, %lo(B_1001B80C)($t1)
/* 03DCE4 0043DCE4 01311821 */  addu        $v1, $t1, $s1
.L0043DCE8:
/* 03DCE8 0043DCE8 8C6AFFF8 */  lw          $t2, -0x8($v1)
/* 03DCEC 0043DCEC 560AFFF3 */  bnel        $s0, $t2, .L0043DCBC
/* 03DCF0 0043DCF0 2631FFF8 */   addiu      $s1, $s1, -0x8
.L0043DCF4:
/* 03DCF4 0043DCF4 10000009 */  b           .L0043DD1C
/* 03DCF8 0043DCF8 8C62FFFC */   lw         $v0, -0x4($v1)
.L0043DCFC:
/* 03DCFC 0043DCFC 8F9985D8 */  lw          $t9, %call16(st_ifdmax)($gp)
/* 03DD00 0043DD00 26100001 */  addiu       $s0, $s0, 0x1
/* 03DD04 0043DD04 0320F809 */  jalr        $t9
/* 03DD08 0043DD08 00000000 */   nop
/* 03DD0C 0043DD0C 0202082A */  slt         $at, $s0, $v0
/* 03DD10 0043DD10 1420FFC3 */  bnez        $at, .L0043DC20
/* 03DD14 0043DD14 8FBC0028 */   lw         $gp, 0x28($sp)
.L0043DD18:
/* 03DD18 0043DD18 00001025 */  move        $v0, $zero
.L0043DD1C:
/* 03DD1C 0043DD1C 8FBF002C */  lw          $ra, 0x2C($sp)
/* 03DD20 0043DD20 8FB00018 */  lw          $s0, 0x18($sp)
/* 03DD24 0043DD24 8FB1001C */  lw          $s1, 0x1C($sp)
/* 03DD28 0043DD28 8FB20020 */  lw          $s2, 0x20($sp)
/* 03DD2C 0043DD2C 8FB30024 */  lw          $s3, 0x24($sp)
/* 03DD30 0043DD30 03E00008 */  jr          $ra
/* 03DD34 0043DD34 27BD0030 */   addiu      $sp, $sp, 0x30
/* 03DD38 0043DD38 00000000 */  nop
/* 03DD3C 0043DD3C 00000000 */  nop
