glabel func_00418BE8 # 86
# _gp_disp: 0xFC05158
.set noreorder; .cpload $t9; # .set reorder
/* 018BF4 00418BF4 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 018BF8 00418BF8 AFB10018 */  sw          $s1, 0x18($sp)
/* 018BFC 00418BFC 00061100 */  sll         $v0, $a2, 4
/* 018C00 00418C00 00828821 */  addu        $s1, $a0, $v0
/* 018C04 00418C04 AFB2001C */  sw          $s2, 0x1C($sp)
/* 018C08 00418C08 AFB00014 */  sw          $s0, 0x14($sp)
/* 018C0C 00418C0C 0091382B */  sltu        $a3, $a0, $s1
/* 018C10 00418C10 AFBF0024 */  sw          $ra, 0x24($sp)
/* 018C14 00418C14 AFBC0020 */  sw          $gp, 0x20($sp)
/* 018C18 00418C18 00809025 */  move        $s2, $a0
/* 018C1C 00418C1C 00A28021 */  addu        $s0, $a1, $v0
/* 018C20 00418C20 10E000A7 */  beqz        $a3, .L00418EC0
/* 018C24 00418C24 2631FFF0 */   addiu      $s1, $s1, -0x10
.L00418C28:
/* 018C28 00418C28 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 018C2C 00418C2C 2610FFF0 */  addiu       $s0, $s0, -0x10
/* 018C30 00418C30 9205000F */  lbu         $a1, 0xF($s0)
/* 018C34 00418C34 24040000 */  addiu       $a0, $zero, 0x0
/* 018C38 00418C38 24060000 */  addiu       $a2, $zero, 0x0
/* 018C3C 00418C3C 0320F809 */  jalr        $t9
/* 018C40 00418C40 24070008 */   addiu      $a3, $zero, 0x8
/* 018C44 00418C44 8FBC0020 */  lw          $gp, 0x20($sp)
/* 018C48 00418C48 920F000E */  lbu         $t7, 0xE($s0)
/* 018C4C 00418C4C 24060000 */  addiu       $a2, $zero, 0x0
/* 018C50 00418C50 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 018C54 00418C54 01E32821 */  addu        $a1, $t7, $v1
/* 018C58 00418C58 00A3082B */  sltu        $at, $a1, $v1
/* 018C5C 00418C5C 000FC7C3 */  sra         $t8, $t7, 31
/* 018C60 00418C60 00382021 */  addu        $a0, $at, $t8
/* 018C64 00418C64 00822021 */  addu        $a0, $a0, $v0
/* 018C68 00418C68 0320F809 */  jalr        $t9
/* 018C6C 00418C6C 24070008 */   addiu      $a3, $zero, 0x8
/* 018C70 00418C70 8FBC0020 */  lw          $gp, 0x20($sp)
/* 018C74 00418C74 9208000D */  lbu         $t0, 0xD($s0)
/* 018C78 00418C78 24060000 */  addiu       $a2, $zero, 0x0
/* 018C7C 00418C7C 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 018C80 00418C80 01032821 */  addu        $a1, $t0, $v1
/* 018C84 00418C84 00A3082B */  sltu        $at, $a1, $v1
/* 018C88 00418C88 000857C3 */  sra         $t2, $t0, 31
/* 018C8C 00418C8C 002A2021 */  addu        $a0, $at, $t2
/* 018C90 00418C90 00822021 */  addu        $a0, $a0, $v0
/* 018C94 00418C94 0320F809 */  jalr        $t9
/* 018C98 00418C98 24070008 */   addiu      $a3, $zero, 0x8
/* 018C9C 00418C9C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 018CA0 00418CA0 9209000C */  lbu         $t1, 0xC($s0)
/* 018CA4 00418CA4 24060000 */  addiu       $a2, $zero, 0x0
/* 018CA8 00418CA8 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 018CAC 00418CAC 01232821 */  addu        $a1, $t1, $v1
/* 018CB0 00418CB0 00A3082B */  sltu        $at, $a1, $v1
/* 018CB4 00418CB4 000967C3 */  sra         $t4, $t1, 31
/* 018CB8 00418CB8 002C2021 */  addu        $a0, $at, $t4
/* 018CBC 00418CBC 00822021 */  addu        $a0, $a0, $v0
/* 018CC0 00418CC0 0320F809 */  jalr        $t9
/* 018CC4 00418CC4 24070008 */   addiu      $a3, $zero, 0x8
/* 018CC8 00418CC8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 018CCC 00418CCC 920E000B */  lbu         $t6, 0xB($s0)
/* 018CD0 00418CD0 24060000 */  addiu       $a2, $zero, 0x0
/* 018CD4 00418CD4 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 018CD8 00418CD8 01C32821 */  addu        $a1, $t6, $v1
/* 018CDC 00418CDC 00A3082B */  sltu        $at, $a1, $v1
/* 018CE0 00418CE0 000EC7C3 */  sra         $t8, $t6, 31
/* 018CE4 00418CE4 00382021 */  addu        $a0, $at, $t8
/* 018CE8 00418CE8 00822021 */  addu        $a0, $a0, $v0
/* 018CEC 00418CEC 0320F809 */  jalr        $t9
/* 018CF0 00418CF0 24070008 */   addiu      $a3, $zero, 0x8
/* 018CF4 00418CF4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 018CF8 00418CF8 920F000A */  lbu         $t7, 0xA($s0)
/* 018CFC 00418CFC 24060000 */  addiu       $a2, $zero, 0x0
/* 018D00 00418D00 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 018D04 00418D04 01E32821 */  addu        $a1, $t7, $v1
/* 018D08 00418D08 00A3082B */  sltu        $at, $a1, $v1
/* 018D0C 00418D0C 000F47C3 */  sra         $t0, $t7, 31
/* 018D10 00418D10 00282021 */  addu        $a0, $at, $t0
/* 018D14 00418D14 00822021 */  addu        $a0, $a0, $v0
/* 018D18 00418D18 0320F809 */  jalr        $t9
/* 018D1C 00418D1C 24070008 */   addiu      $a3, $zero, 0x8
/* 018D20 00418D20 8FBC0020 */  lw          $gp, 0x20($sp)
/* 018D24 00418D24 920A0009 */  lbu         $t2, 0x9($s0)
/* 018D28 00418D28 24060000 */  addiu       $a2, $zero, 0x0
/* 018D2C 00418D2C 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 018D30 00418D30 01432821 */  addu        $a1, $t2, $v1
/* 018D34 00418D34 00A3082B */  sltu        $at, $a1, $v1
/* 018D38 00418D38 000A67C3 */  sra         $t4, $t2, 31
/* 018D3C 00418D3C 002C2021 */  addu        $a0, $at, $t4
/* 018D40 00418D40 00822021 */  addu        $a0, $a0, $v0
/* 018D44 00418D44 0320F809 */  jalr        $t9
/* 018D48 00418D48 24070008 */   addiu      $a3, $zero, 0x8
/* 018D4C 00418D4C 920B0008 */  lbu         $t3, 0x8($s0)
/* 018D50 00418D50 8FBC0020 */  lw          $gp, 0x20($sp)
/* 018D54 00418D54 24040000 */  addiu       $a0, $zero, 0x0
/* 018D58 00418D58 0163C821 */  addu        $t9, $t3, $v1
/* 018D5C 00418D5C 0323082B */  sltu        $at, $t9, $v1
/* 018D60 00418D60 000B77C3 */  sra         $t6, $t3, 31
/* 018D64 00418D64 002EC021 */  addu        $t8, $at, $t6
/* 018D68 00418D68 0302C021 */  addu        $t8, $t8, $v0
/* 018D6C 00418D6C AE380008 */  sw          $t8, 0x8($s1)
/* 018D70 00418D70 AE39000C */  sw          $t9, 0xC($s1)
/* 018D74 00418D74 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 018D78 00418D78 92050007 */  lbu         $a1, 0x7($s0)
/* 018D7C 00418D7C 24060000 */  addiu       $a2, $zero, 0x0
/* 018D80 00418D80 0320F809 */  jalr        $t9
/* 018D84 00418D84 24070008 */   addiu      $a3, $zero, 0x8
/* 018D88 00418D88 8FBC0020 */  lw          $gp, 0x20($sp)
/* 018D8C 00418D8C 92090006 */  lbu         $t1, 0x6($s0)
/* 018D90 00418D90 24060000 */  addiu       $a2, $zero, 0x0
/* 018D94 00418D94 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 018D98 00418D98 01232821 */  addu        $a1, $t1, $v1
/* 018D9C 00418D9C 00A3082B */  sltu        $at, $a1, $v1
/* 018DA0 00418DA0 000957C3 */  sra         $t2, $t1, 31
/* 018DA4 00418DA4 002A2021 */  addu        $a0, $at, $t2
/* 018DA8 00418DA8 00822021 */  addu        $a0, $a0, $v0
/* 018DAC 00418DAC 0320F809 */  jalr        $t9
/* 018DB0 00418DB0 24070008 */   addiu      $a3, $zero, 0x8
/* 018DB4 00418DB4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 018DB8 00418DB8 920C0005 */  lbu         $t4, 0x5($s0)
/* 018DBC 00418DBC 24060000 */  addiu       $a2, $zero, 0x0
/* 018DC0 00418DC0 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 018DC4 00418DC4 01832821 */  addu        $a1, $t4, $v1
/* 018DC8 00418DC8 00A3082B */  sltu        $at, $a1, $v1
/* 018DCC 00418DCC 000C77C3 */  sra         $t6, $t4, 31
/* 018DD0 00418DD0 002E2021 */  addu        $a0, $at, $t6
/* 018DD4 00418DD4 00822021 */  addu        $a0, $a0, $v0
/* 018DD8 00418DD8 0320F809 */  jalr        $t9
/* 018DDC 00418DDC 24070008 */   addiu      $a3, $zero, 0x8
/* 018DE0 00418DE0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 018DE4 00418DE4 920D0004 */  lbu         $t5, 0x4($s0)
/* 018DE8 00418DE8 24060000 */  addiu       $a2, $zero, 0x0
/* 018DEC 00418DEC 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 018DF0 00418DF0 01A32821 */  addu        $a1, $t5, $v1
/* 018DF4 00418DF4 00A3082B */  sltu        $at, $a1, $v1
/* 018DF8 00418DF8 000DC7C3 */  sra         $t8, $t5, 31
/* 018DFC 00418DFC 00382021 */  addu        $a0, $at, $t8
/* 018E00 00418E00 00822021 */  addu        $a0, $a0, $v0
/* 018E04 00418E04 0320F809 */  jalr        $t9
/* 018E08 00418E08 24070008 */   addiu      $a3, $zero, 0x8
/* 018E0C 00418E0C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 018E10 00418E10 92080003 */  lbu         $t0, 0x3($s0)
/* 018E14 00418E14 24060000 */  addiu       $a2, $zero, 0x0
/* 018E18 00418E18 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 018E1C 00418E1C 01032821 */  addu        $a1, $t0, $v1
/* 018E20 00418E20 00A3082B */  sltu        $at, $a1, $v1
/* 018E24 00418E24 000857C3 */  sra         $t2, $t0, 31
/* 018E28 00418E28 002A2021 */  addu        $a0, $at, $t2
/* 018E2C 00418E2C 00822021 */  addu        $a0, $a0, $v0
/* 018E30 00418E30 0320F809 */  jalr        $t9
/* 018E34 00418E34 24070008 */   addiu      $a3, $zero, 0x8
/* 018E38 00418E38 8FBC0020 */  lw          $gp, 0x20($sp)
/* 018E3C 00418E3C 92090002 */  lbu         $t1, 0x2($s0)
/* 018E40 00418E40 24060000 */  addiu       $a2, $zero, 0x0
/* 018E44 00418E44 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 018E48 00418E48 01232821 */  addu        $a1, $t1, $v1
/* 018E4C 00418E4C 00A3082B */  sltu        $at, $a1, $v1
/* 018E50 00418E50 000967C3 */  sra         $t4, $t1, 31
/* 018E54 00418E54 002C2021 */  addu        $a0, $at, $t4
/* 018E58 00418E58 00822021 */  addu        $a0, $a0, $v0
/* 018E5C 00418E5C 0320F809 */  jalr        $t9
/* 018E60 00418E60 24070008 */   addiu      $a3, $zero, 0x8
/* 018E64 00418E64 8FBC0020 */  lw          $gp, 0x20($sp)
/* 018E68 00418E68 920E0001 */  lbu         $t6, 0x1($s0)
/* 018E6C 00418E6C 24060000 */  addiu       $a2, $zero, 0x0
/* 018E70 00418E70 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 018E74 00418E74 01C32821 */  addu        $a1, $t6, $v1
/* 018E78 00418E78 00A3082B */  sltu        $at, $a1, $v1
/* 018E7C 00418E7C 000EC7C3 */  sra         $t8, $t6, 31
/* 018E80 00418E80 00382021 */  addu        $a0, $at, $t8
/* 018E84 00418E84 00822021 */  addu        $a0, $a0, $v0
/* 018E88 00418E88 0320F809 */  jalr        $t9
/* 018E8C 00418E8C 24070008 */   addiu      $a3, $zero, 0x8
/* 018E90 00418E90 920F0000 */  lbu         $t7, 0x0($s0)
/* 018E94 00418E94 0251382B */  sltu        $a3, $s2, $s1
/* 018E98 00418E98 8FBC0020 */  lw          $gp, 0x20($sp)
/* 018E9C 00418E9C 01E35821 */  addu        $t3, $t7, $v1
/* 018EA0 00418EA0 0163082B */  sltu        $at, $t3, $v1
/* 018EA4 00418EA4 000F47C3 */  sra         $t0, $t7, 31
/* 018EA8 00418EA8 00285021 */  addu        $t2, $at, $t0
/* 018EAC 00418EAC 01425021 */  addu        $t2, $t2, $v0
/* 018EB0 00418EB0 2631FFF0 */  addiu       $s1, $s1, -0x10
/* 018EB4 00418EB4 AE2A0010 */  sw          $t2, 0x10($s1)
/* 018EB8 00418EB8 14E0FF5B */  bnez        $a3, .L00418C28
/* 018EBC 00418EBC AE2B0014 */   sw         $t3, 0x14($s1)
.L00418EC0:
/* 018EC0 00418EC0 8FBF0024 */  lw          $ra, 0x24($sp)
/* 018EC4 00418EC4 8FB00014 */  lw          $s0, 0x14($sp)
/* 018EC8 00418EC8 8FB10018 */  lw          $s1, 0x18($sp)
/* 018ECC 00418ECC 8FB2001C */  lw          $s2, 0x1C($sp)
/* 018ED0 00418ED0 03E00008 */  jr          $ra
/* 018ED4 00418ED4 27BD0028 */   addiu      $sp, $sp, 0x28
