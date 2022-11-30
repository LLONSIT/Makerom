glabel func_00414CA8 # 58
# _gp_disp: 0xFC09098
.set noreorder; .cpload $t9; # .set reorder
/* 014CB4 00414CB4 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 014CB8 00414CB8 AFB2001C */  sw          $s2, 0x1C($sp)
/* 014CBC 00414CBC AFB10018 */  sw          $s1, 0x18($sp)
/* 014CC0 00414CC0 AFB00014 */  sw          $s0, 0x14($sp)
/* 014CC4 00414CC4 00067100 */  sll         $t6, $a2, 4
/* 014CC8 00414CC8 00808025 */  move        $s0, $a0
/* 014CCC 00414CCC 00A08825 */  move        $s1, $a1
/* 014CD0 00414CD0 AFBF0024 */  sw          $ra, 0x24($sp)
/* 014CD4 00414CD4 AFBC0020 */  sw          $gp, 0x20($sp)
/* 014CD8 00414CD8 01C59021 */  addu        $s2, $t6, $a1
.L00414CDC:
/* 014CDC 00414CDC 8E390004 */  lw          $t9, 0x4($s1)
/* 014CE0 00414CE0 24060000 */  addiu       $a2, $zero, 0x0
/* 014CE4 00414CE4 24070008 */  addiu       $a3, $zero, 0x8
/* 014CE8 00414CE8 00197A02 */  srl         $t7, $t9, 8
/* 014CEC 00414CEC 00194402 */  srl         $t0, $t9, 16
/* 014CF0 00414CF0 00194E02 */  srl         $t1, $t9, 24
/* 014CF4 00414CF4 A2090003 */  sb          $t1, 0x3($s0)
/* 014CF8 00414CF8 A2080002 */  sb          $t0, 0x2($s0)
/* 014CFC 00414CFC A20F0001 */  sb          $t7, 0x1($s0)
/* 014D00 00414D00 A2190000 */  sb          $t9, 0x0($s0)
/* 014D04 00414D04 8E2B000C */  lw          $t3, 0xC($s1)
/* 014D08 00414D08 8E2A0008 */  lw          $t2, 0x8($s1)
/* 014D0C 00414D0C AFAB002C */  sw          $t3, 0x2C($sp)
/* 014D10 00414D10 AFAA0028 */  sw          $t2, 0x28($sp)
/* 014D14 00414D14 A20B0008 */  sb          $t3, 0x8($s0)
/* 014D18 00414D18 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 014D1C 00414D1C 8FA5002C */  lw          $a1, 0x2C($sp)
/* 014D20 00414D20 8FA40028 */  lw          $a0, 0x28($sp)
/* 014D24 00414D24 0320F809 */  jalr        $t9
/* 014D28 00414D28 00000000 */   nop
/* 014D2C 00414D2C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 014D30 00414D30 A2030009 */  sb          $v1, 0x9($s0)
/* 014D34 00414D34 8FA5002C */  lw          $a1, 0x2C($sp)
/* 014D38 00414D38 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 014D3C 00414D3C 8FA40028 */  lw          $a0, 0x28($sp)
/* 014D40 00414D40 24060000 */  addiu       $a2, $zero, 0x0
/* 014D44 00414D44 0320F809 */  jalr        $t9
/* 014D48 00414D48 24070010 */   addiu      $a3, $zero, 0x10
/* 014D4C 00414D4C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 014D50 00414D50 A203000A */  sb          $v1, 0xA($s0)
/* 014D54 00414D54 8FA5002C */  lw          $a1, 0x2C($sp)
/* 014D58 00414D58 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 014D5C 00414D5C 8FA40028 */  lw          $a0, 0x28($sp)
/* 014D60 00414D60 24060000 */  addiu       $a2, $zero, 0x0
/* 014D64 00414D64 0320F809 */  jalr        $t9
/* 014D68 00414D68 24070018 */   addiu      $a3, $zero, 0x18
/* 014D6C 00414D6C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 014D70 00414D70 A203000B */  sb          $v1, 0xB($s0)
/* 014D74 00414D74 8FA5002C */  lw          $a1, 0x2C($sp)
/* 014D78 00414D78 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 014D7C 00414D7C 8FA40028 */  lw          $a0, 0x28($sp)
/* 014D80 00414D80 24060000 */  addiu       $a2, $zero, 0x0
/* 014D84 00414D84 0320F809 */  jalr        $t9
/* 014D88 00414D88 24070020 */   addiu      $a3, $zero, 0x20
/* 014D8C 00414D8C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 014D90 00414D90 A203000C */  sb          $v1, 0xC($s0)
/* 014D94 00414D94 8FA5002C */  lw          $a1, 0x2C($sp)
/* 014D98 00414D98 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 014D9C 00414D9C 8FA40028 */  lw          $a0, 0x28($sp)
/* 014DA0 00414DA0 24060000 */  addiu       $a2, $zero, 0x0
/* 014DA4 00414DA4 0320F809 */  jalr        $t9
/* 014DA8 00414DA8 24070028 */   addiu      $a3, $zero, 0x28
/* 014DAC 00414DAC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 014DB0 00414DB0 A203000D */  sb          $v1, 0xD($s0)
/* 014DB4 00414DB4 8FA5002C */  lw          $a1, 0x2C($sp)
/* 014DB8 00414DB8 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 014DBC 00414DBC 8FA40028 */  lw          $a0, 0x28($sp)
/* 014DC0 00414DC0 24060000 */  addiu       $a2, $zero, 0x0
/* 014DC4 00414DC4 0320F809 */  jalr        $t9
/* 014DC8 00414DC8 24070030 */   addiu      $a3, $zero, 0x30
/* 014DCC 00414DCC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 014DD0 00414DD0 A203000E */  sb          $v1, 0xE($s0)
/* 014DD4 00414DD4 8FA5002C */  lw          $a1, 0x2C($sp)
/* 014DD8 00414DD8 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 014DDC 00414DDC 8FA40028 */  lw          $a0, 0x28($sp)
/* 014DE0 00414DE0 24060000 */  addiu       $a2, $zero, 0x0
/* 014DE4 00414DE4 0320F809 */  jalr        $t9
/* 014DE8 00414DE8 24070038 */   addiu      $a3, $zero, 0x38
/* 014DEC 00414DEC 26310010 */  addiu       $s1, $s1, 0x10
/* 014DF0 00414DF0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 014DF4 00414DF4 0232082B */  sltu        $at, $s1, $s2
/* 014DF8 00414DF8 A203000F */  sb          $v1, 0xF($s0)
/* 014DFC 00414DFC 1420FFB7 */  bnez        $at, .L00414CDC
/* 014E00 00414E00 26100010 */   addiu      $s0, $s0, 0x10
/* 014E04 00414E04 8FBF0024 */  lw          $ra, 0x24($sp)
/* 014E08 00414E08 8FB00014 */  lw          $s0, 0x14($sp)
/* 014E0C 00414E0C 8FB10018 */  lw          $s1, 0x18($sp)
/* 014E10 00414E10 8FB2001C */  lw          $s2, 0x1C($sp)
/* 014E14 00414E14 03E00008 */  jr          $ra
/* 014E18 00414E18 27BD0038 */   addiu      $sp, $sp, 0x38
