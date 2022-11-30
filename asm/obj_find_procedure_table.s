.section .rodata
glabel STR_10012ACC
/* 042ACC 10012ACC */ .asciz "_procedure_table"
                      .balign 4

glabel STR_10012AE0
/* 042AE0 10012AE0 */ .asciz "_procedure_table_size"
                      .balign 4


.section .text
glabel obj_find_procedure_table # 283
# _gp_disp: 0xFBF40B8
.set noreorder; .cpload $t9; # .set reorder
/* 029C94 00429C94 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 029C98 00429C98 8F998064 */  lw          $t9, %call16(malloc)($gp)
/* 029C9C 00429C9C AFB00018 */  sw          $s0, 0x18($sp)
/* 029CA0 00429CA0 00808025 */  move        $s0, $a0
/* 029CA4 00429CA4 AFBF0024 */  sw          $ra, 0x24($sp)
/* 029CA8 00429CA8 AFBC0020 */  sw          $gp, 0x20($sp)
/* 029CAC 00429CAC AFB1001C */  sw          $s1, 0x1C($sp)
/* 029CB0 00429CB0 AFA5002C */  sw          $a1, 0x2C($sp)
/* 029CB4 00429CB4 AFA60030 */  sw          $a2, 0x30($sp)
/* 029CB8 00429CB8 0320F809 */  jalr        $t9
/* 029CBC 00429CBC 24040008 */   addiu      $a0, $zero, 0x8
/* 029CC0 00429CC0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 029CC4 00429CC4 00408825 */  move        $s1, $v0
/* 029CC8 00429CC8 00402025 */  move        $a0, $v0
/* 029CCC 00429CCC 8F998138 */  lw          $t9, %call16(memset)($gp)
/* 029CD0 00429CD0 00002825 */  move        $a1, $zero
/* 029CD4 00429CD4 24060008 */  addiu       $a2, $zero, 0x8
/* 029CD8 00429CD8 0320F809 */  jalr        $t9
/* 029CDC 00429CDC 00000000 */   nop
/* 029CE0 00429CE0 8FA4002C */  lw          $a0, 0x2C($sp)
/* 029CE4 00429CE4 8E0300FC */  lw          $v1, 0xFC($s0)
/* 029CE8 00429CE8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 029CEC 00429CEC 0083082B */  sltu        $at, $a0, $v1
/* 029CF0 00429CF0 14200006 */  bnez        $at, .L00429D0C
/* 029CF4 00429CF4 00000000 */   nop
/* 029CF8 00429CF8 8E0E0100 */  lw          $t6, 0x100($s0)
/* 029CFC 00429CFC 006E7821 */  addu        $t7, $v1, $t6
/* 029D00 00429D00 01E4082B */  sltu        $at, $t7, $a0
/* 029D04 00429D04 10200003 */  beqz        $at, .L00429D14
/* 029D08 00429D08 00000000 */   nop
.L00429D0C:
/* 029D0C 00429D0C 10000023 */  b           .L00429D9C
/* 029D10 00429D10 2402FFFF */   addiu      $v0, $zero, -0x1
.L00429D14:
/* 029D14 00429D14 8F9982D0 */  lw          $t9, %call16(obj_map_diff)($gp)
/* 029D18 00429D18 02002025 */  move        $a0, $s0
/* 029D1C 00429D1C 0320F809 */  jalr        $t9
/* 029D20 00429D20 00000000 */   nop
/* 029D24 00429D24 8FBC0020 */  lw          $gp, 0x20($sp)
/* 029D28 00429D28 02002025 */  move        $a0, $s0
/* 029D2C 00429D2C 00403025 */  move        $a2, $v0
/* 029D30 00429D30 8F9982A0 */  lw          $t9, %call16(obj_find_symbol_value)($gp)
/* 029D34 00429D34 8F85802C */  lw          $a1, %got(STR_10012ACC)($gp)
/* 029D38 00429D38 0320F809 */  jalr        $t9
/* 029D3C 00429D3C 24A52ACC */   addiu      $a1, $a1, %lo(STR_10012ACC)
/* 029D40 00429D40 8FBC0020 */  lw          $gp, 0x20($sp)
/* 029D44 00429D44 1440000C */  bnez        $v0, .L00429D78
/* 029D48 00429D48 AE220000 */   sw         $v0, 0x0($s1)
/* 029D4C 00429D4C 8F9982A8 */  lw          $t9, %call16(_create_rt_proc_table)($gp)
/* 029D50 00429D50 02002025 */  move        $a0, $s0
/* 029D54 00429D54 02202825 */  move        $a1, $s1
/* 029D58 00429D58 0320F809 */  jalr        $t9
/* 029D5C 00429D5C 00003025 */   move       $a2, $zero
/* 029D60 00429D60 8E380000 */  lw          $t8, 0x0($s1)
/* 029D64 00429D64 8FBC0020 */  lw          $gp, 0x20($sp)
/* 029D68 00429D68 17000003 */  bnez        $t8, .L00429D78
/* 029D6C 00429D6C 00000000 */   nop
/* 029D70 00429D70 1000000A */  b           .L00429D9C
/* 029D74 00429D74 00001025 */   move       $v0, $zero
.L00429D78:
/* 029D78 00429D78 8F9982A0 */  lw          $t9, %call16(obj_find_symbol_value)($gp)
/* 029D7C 00429D7C 8F85802C */  lw          $a1, %got(STR_10012AE0)($gp)
/* 029D80 00429D80 02002025 */  move        $a0, $s0
/* 029D84 00429D84 00003025 */  move        $a2, $zero
/* 029D88 00429D88 0320F809 */  jalr        $t9
/* 029D8C 00429D8C 24A52AE0 */   addiu      $a1, $a1, %lo(STR_10012AE0)
/* 029D90 00429D90 8FBC0020 */  lw          $gp, 0x20($sp)
/* 029D94 00429D94 AE220004 */  sw          $v0, 0x4($s1)
/* 029D98 00429D98 02201025 */  move        $v0, $s1
.L00429D9C:
/* 029D9C 00429D9C 8FBF0024 */  lw          $ra, 0x24($sp)
/* 029DA0 00429DA0 8FB00018 */  lw          $s0, 0x18($sp)
/* 029DA4 00429DA4 8FB1001C */  lw          $s1, 0x1C($sp)
/* 029DA8 00429DA8 03E00008 */  jr          $ra
/* 029DAC 00429DAC 27BD0028 */   addiu      $sp, $sp, 0x28
