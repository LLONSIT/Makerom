.section .rodata
glabel STR_100136E0
/* 0436E0 100136E0 */ .asciz "_block%x"
                      .balign 4


.section .text
glabel symbol_name # 606
# _gp_disp: 0xFBE7040
.set noreorder; .cpload $t9; # .set reorder
/* 036D0C 00436D0C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 036D10 00436D10 AFB1001C */  sw          $s1, 0x1C($sp)
/* 036D14 00436D14 AFB00018 */  sw          $s0, 0x18($sp)
/* 036D18 00436D18 00808025 */  move        $s0, $a0
/* 036D1C 00436D1C 00A08825 */  move        $s1, $a1
/* 036D20 00436D20 AFBF0024 */  sw          $ra, 0x24($sp)
/* 036D24 00436D24 04A10009 */  bgez        $a1, .L00436D4C
/* 036D28 00436D28 AFBC0020 */   sw         $gp, 0x20($sp)
/* 036D2C 00436D2C 00057023 */  negu        $t6, $a1
/* 036D30 00436D30 8F9887D0 */  lw          $t8, %got(usersymbol)($gp)
/* 036D34 00436D34 000E7880 */  sll         $t7, $t6, 2
/* 036D38 00436D38 01EE7823 */  subu        $t7, $t7, $t6
/* 036D3C 00436D3C 000F7880 */  sll         $t7, $t7, 2
/* 036D40 00436D40 01F8C821 */  addu        $t9, $t7, $t8
/* 036D44 00436D44 10000048 */  b           .L00436E68
/* 036D48 00436D48 8F220000 */   lw         $v0, 0x0($t9)
.L00436D4C:
/* 036D4C 00436D4C 8E0300D8 */  lw          $v1, 0xD8($s0)
/* 036D50 00436D50 00114900 */  sll         $t1, $s1, 4
/* 036D54 00436D54 0223082B */  sltu        $at, $s1, $v1
/* 036D58 00436D58 14200009 */  bnez        $at, .L00436D80
/* 036D5C 00436D5C 00035900 */   sll        $t3, $v1, 4
/* 036D60 00436D60 8E0800AC */  lw          $t0, 0xAC($s0)
/* 036D64 00436D64 000B6023 */  negu        $t4, $t3
/* 036D68 00436D68 8E0F00B0 */  lw          $t7, 0xB0($s0)
/* 036D6C 00436D6C 01095021 */  addu        $t2, $t0, $t1
/* 036D70 00436D70 014C6821 */  addu        $t5, $t2, $t4
/* 036D74 00436D74 8DAE0004 */  lw          $t6, 0x4($t5)
/* 036D78 00436D78 1000003B */  b           .L00436E68
/* 036D7C 00436D7C 01CF1021 */   addu       $v0, $t6, $t7
.L00436D80:
/* 036D80 00436D80 8F998560 */  lw          $t9, %call16(symbol_type)($gp)
/* 036D84 00436D84 02002025 */  move        $a0, $s0
/* 036D88 00436D88 02202825 */  move        $a1, $s1
/* 036D8C 00436D8C 0320F809 */  jalr        $t9
/* 036D90 00436D90 00000000 */   nop
/* 036D94 00436D94 24010007 */  addiu       $at, $zero, 0x7
/* 036D98 00436D98 1441001A */  bne         $v0, $at, .L00436E04
/* 036D9C 00436D9C 8FBC0020 */   lw         $gp, 0x20($sp)
/* 036DA0 00436DA0 8F99855C */  lw          $t9, %call16(symbol_class)($gp)
/* 036DA4 00436DA4 02002025 */  move        $a0, $s0
/* 036DA8 00436DA8 02202825 */  move        $a1, $s1
/* 036DAC 00436DAC 0320F809 */  jalr        $t9
/* 036DB0 00436DB0 00000000 */   nop
/* 036DB4 00436DB4 24010001 */  addiu       $at, $zero, 0x1
/* 036DB8 00436DB8 14410012 */  bne         $v0, $at, .L00436E04
/* 036DBC 00436DBC 8FBC0020 */   lw         $gp, 0x20($sp)
/* 036DC0 00436DC0 8F998564 */  lw          $t9, %call16(symbol_value)($gp)
/* 036DC4 00436DC4 02002025 */  move        $a0, $s0
/* 036DC8 00436DC8 02202825 */  move        $a1, $s1
/* 036DCC 00436DCC 0320F809 */  jalr        $t9
/* 036DD0 00436DD0 00000000 */   nop
/* 036DD4 00436DD4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 036DD8 00436DD8 00403025 */  move        $a2, $v0
/* 036DDC 00436DDC 8F908030 */  lw          $s0, %got(B_1001A5D8)($gp)
/* 036DE0 00436DE0 8F998068 */  lw          $t9, %call16(sprintf)($gp)
/* 036DE4 00436DE4 8F85802C */  lw          $a1, %got(STR_100136E0)($gp)
/* 036DE8 00436DE8 2610A5D8 */  addiu       $s0, $s0, %lo(B_1001A5D8)
/* 036DEC 00436DEC 02002025 */  move        $a0, $s0
/* 036DF0 00436DF0 0320F809 */  jalr        $t9
/* 036DF4 00436DF4 24A536E0 */   addiu      $a1, $a1, %lo(STR_100136E0)
/* 036DF8 00436DF8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 036DFC 00436DFC 1000001A */  b           .L00436E68
/* 036E00 00436E00 02001025 */   move       $v0, $s0
.L00436E04:
/* 036E04 00436E04 8F9984EC */  lw          $t9, %call16(symbol_to_file)($gp)
/* 036E08 00436E08 02002025 */  move        $a0, $s0
/* 036E0C 00436E0C 02202825 */  move        $a1, $s1
/* 036E10 00436E10 0320F809 */  jalr        $t9
/* 036E14 00436E14 00000000 */   nop
/* 036E18 00436E18 8FBC0020 */  lw          $gp, 0x20($sp)
/* 036E1C 00436E1C 02002025 */  move        $a0, $s0
/* 036E20 00436E20 00402825 */  move        $a1, $v0
/* 036E24 00436E24 8F998508 */  lw          $t9, %call16(file_string_base)($gp)
/* 036E28 00436E28 0320F809 */  jalr        $t9
/* 036E2C 00436E2C 00000000 */   nop
/* 036E30 00436E30 8E0900CC */  lw          $t1, 0xCC($s0)
/* 036E34 00436E34 8E1800A8 */  lw          $t8, 0xA8($s0)
/* 036E38 00436E38 0011C880 */  sll         $t9, $s1, 2
/* 036E3C 00436E3C 00095880 */  sll         $t3, $t1, 2
/* 036E40 00436E40 0331C823 */  subu        $t9, $t9, $s1
/* 036E44 00436E44 01695823 */  subu        $t3, $t3, $t1
/* 036E48 00436E48 000B5880 */  sll         $t3, $t3, 2
/* 036E4C 00436E4C 0019C880 */  sll         $t9, $t9, 2
/* 036E50 00436E50 000B5023 */  negu        $t2, $t3
/* 036E54 00436E54 03194021 */  addu        $t0, $t8, $t9
/* 036E58 00436E58 010A6021 */  addu        $t4, $t0, $t2
/* 036E5C 00436E5C 8D8D0000 */  lw          $t5, 0x0($t4)
/* 036E60 00436E60 8FBC0020 */  lw          $gp, 0x20($sp)
/* 036E64 00436E64 01A21021 */  addu        $v0, $t5, $v0
.L00436E68:
/* 036E68 00436E68 8FBF0024 */  lw          $ra, 0x24($sp)
/* 036E6C 00436E6C 8FB00018 */  lw          $s0, 0x18($sp)
/* 036E70 00436E70 8FB1001C */  lw          $s1, 0x1C($sp)
/* 036E74 00436E74 03E00008 */  jr          $ra
/* 036E78 00436E78 27BD0028 */   addiu      $sp, $sp, 0x28
