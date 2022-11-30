glabel func_00419CF0 # 92
# _gp_disp: 0xFC04050
.set noreorder; .cpload $t9; # .set reorder
/* 019CFC 00419CFC 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 019D00 00419D00 AFB10018 */  sw          $s1, 0x18($sp)
/* 019D04 00419D04 000610C0 */  sll         $v0, $a2, 3
/* 019D08 00419D08 00828821 */  addu        $s1, $a0, $v0
/* 019D0C 00419D0C AFB2001C */  sw          $s2, 0x1C($sp)
/* 019D10 00419D10 AFB00014 */  sw          $s0, 0x14($sp)
/* 019D14 00419D14 0091382B */  sltu        $a3, $a0, $s1
/* 019D18 00419D18 AFBF0024 */  sw          $ra, 0x24($sp)
/* 019D1C 00419D1C AFBC0020 */  sw          $gp, 0x20($sp)
/* 019D20 00419D20 00809025 */  move        $s2, $a0
/* 019D24 00419D24 00A28021 */  addu        $s0, $a1, $v0
/* 019D28 00419D28 10E00056 */  beqz        $a3, .L00419E84
/* 019D2C 00419D2C 2631FFF8 */   addiu      $s1, $s1, -0x8
.L00419D30:
/* 019D30 00419D30 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 019D34 00419D34 2610FFF8 */  addiu       $s0, $s0, -0x8
/* 019D38 00419D38 92050007 */  lbu         $a1, 0x7($s0)
/* 019D3C 00419D3C 24040000 */  addiu       $a0, $zero, 0x0
/* 019D40 00419D40 24060000 */  addiu       $a2, $zero, 0x0
/* 019D44 00419D44 0320F809 */  jalr        $t9
/* 019D48 00419D48 24070008 */   addiu      $a3, $zero, 0x8
/* 019D4C 00419D4C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 019D50 00419D50 920F0006 */  lbu         $t7, 0x6($s0)
/* 019D54 00419D54 24060000 */  addiu       $a2, $zero, 0x0
/* 019D58 00419D58 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 019D5C 00419D5C 01E32821 */  addu        $a1, $t7, $v1
/* 019D60 00419D60 00A3082B */  sltu        $at, $a1, $v1
/* 019D64 00419D64 000FC7C3 */  sra         $t8, $t7, 31
/* 019D68 00419D68 00382021 */  addu        $a0, $at, $t8
/* 019D6C 00419D6C 00822021 */  addu        $a0, $a0, $v0
/* 019D70 00419D70 0320F809 */  jalr        $t9
/* 019D74 00419D74 24070008 */   addiu      $a3, $zero, 0x8
/* 019D78 00419D78 8FBC0020 */  lw          $gp, 0x20($sp)
/* 019D7C 00419D7C 92080005 */  lbu         $t0, 0x5($s0)
/* 019D80 00419D80 24060000 */  addiu       $a2, $zero, 0x0
/* 019D84 00419D84 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 019D88 00419D88 01032821 */  addu        $a1, $t0, $v1
/* 019D8C 00419D8C 00A3082B */  sltu        $at, $a1, $v1
/* 019D90 00419D90 000857C3 */  sra         $t2, $t0, 31
/* 019D94 00419D94 002A2021 */  addu        $a0, $at, $t2
/* 019D98 00419D98 00822021 */  addu        $a0, $a0, $v0
/* 019D9C 00419D9C 0320F809 */  jalr        $t9
/* 019DA0 00419DA0 24070008 */   addiu      $a3, $zero, 0x8
/* 019DA4 00419DA4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 019DA8 00419DA8 92090004 */  lbu         $t1, 0x4($s0)
/* 019DAC 00419DAC 24060000 */  addiu       $a2, $zero, 0x0
/* 019DB0 00419DB0 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 019DB4 00419DB4 01232821 */  addu        $a1, $t1, $v1
/* 019DB8 00419DB8 00A3082B */  sltu        $at, $a1, $v1
/* 019DBC 00419DBC 000967C3 */  sra         $t4, $t1, 31
/* 019DC0 00419DC0 002C2021 */  addu        $a0, $at, $t4
/* 019DC4 00419DC4 00822021 */  addu        $a0, $a0, $v0
/* 019DC8 00419DC8 0320F809 */  jalr        $t9
/* 019DCC 00419DCC 24070008 */   addiu      $a3, $zero, 0x8
/* 019DD0 00419DD0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 019DD4 00419DD4 920E0003 */  lbu         $t6, 0x3($s0)
/* 019DD8 00419DD8 24060000 */  addiu       $a2, $zero, 0x0
/* 019DDC 00419DDC 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 019DE0 00419DE0 01C32821 */  addu        $a1, $t6, $v1
/* 019DE4 00419DE4 00A3082B */  sltu        $at, $a1, $v1
/* 019DE8 00419DE8 000EC7C3 */  sra         $t8, $t6, 31
/* 019DEC 00419DEC 00382021 */  addu        $a0, $at, $t8
/* 019DF0 00419DF0 00822021 */  addu        $a0, $a0, $v0
/* 019DF4 00419DF4 0320F809 */  jalr        $t9
/* 019DF8 00419DF8 24070008 */   addiu      $a3, $zero, 0x8
/* 019DFC 00419DFC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 019E00 00419E00 920F0002 */  lbu         $t7, 0x2($s0)
/* 019E04 00419E04 24060000 */  addiu       $a2, $zero, 0x0
/* 019E08 00419E08 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 019E0C 00419E0C 01E32821 */  addu        $a1, $t7, $v1
/* 019E10 00419E10 00A3082B */  sltu        $at, $a1, $v1
/* 019E14 00419E14 000F47C3 */  sra         $t0, $t7, 31
/* 019E18 00419E18 00282021 */  addu        $a0, $at, $t0
/* 019E1C 00419E1C 00822021 */  addu        $a0, $a0, $v0
/* 019E20 00419E20 0320F809 */  jalr        $t9
/* 019E24 00419E24 24070008 */   addiu      $a3, $zero, 0x8
/* 019E28 00419E28 8FBC0020 */  lw          $gp, 0x20($sp)
/* 019E2C 00419E2C 920A0001 */  lbu         $t2, 0x1($s0)
/* 019E30 00419E30 24060000 */  addiu       $a2, $zero, 0x0
/* 019E34 00419E34 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 019E38 00419E38 01432821 */  addu        $a1, $t2, $v1
/* 019E3C 00419E3C 00A3082B */  sltu        $at, $a1, $v1
/* 019E40 00419E40 000A67C3 */  sra         $t4, $t2, 31
/* 019E44 00419E44 002C2021 */  addu        $a0, $at, $t4
/* 019E48 00419E48 00822021 */  addu        $a0, $a0, $v0
/* 019E4C 00419E4C 0320F809 */  jalr        $t9
/* 019E50 00419E50 24070008 */   addiu      $a3, $zero, 0x8
/* 019E54 00419E54 920B0000 */  lbu         $t3, 0x0($s0)
/* 019E58 00419E58 0251382B */  sltu        $a3, $s2, $s1
/* 019E5C 00419E5C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 019E60 00419E60 0163C821 */  addu        $t9, $t3, $v1
/* 019E64 00419E64 0323082B */  sltu        $at, $t9, $v1
/* 019E68 00419E68 000B77C3 */  sra         $t6, $t3, 31
/* 019E6C 00419E6C 002EC021 */  addu        $t8, $at, $t6
/* 019E70 00419E70 0302C021 */  addu        $t8, $t8, $v0
/* 019E74 00419E74 2631FFF8 */  addiu       $s1, $s1, -0x8
/* 019E78 00419E78 AE380008 */  sw          $t8, 0x8($s1)
/* 019E7C 00419E7C 14E0FFAC */  bnez        $a3, .L00419D30
/* 019E80 00419E80 AE39000C */   sw         $t9, 0xC($s1)
.L00419E84:
/* 019E84 00419E84 8FBF0024 */  lw          $ra, 0x24($sp)
/* 019E88 00419E88 8FB00014 */  lw          $s0, 0x14($sp)
/* 019E8C 00419E8C 8FB10018 */  lw          $s1, 0x18($sp)
/* 019E90 00419E90 8FB2001C */  lw          $s2, 0x1C($sp)
/* 019E94 00419E94 03E00008 */  jr          $ra
/* 019E98 00419E98 27BD0028 */   addiu      $sp, $sp, 0x28
