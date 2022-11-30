glabel func_00414E1C # 59
# _gp_disp: 0xFC08F24
.set noreorder; .cpload $t9; # .set reorder
/* 014E28 00414E28 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 014E2C 00414E2C AFB2001C */  sw          $s2, 0x1C($sp)
/* 014E30 00414E30 AFB10018 */  sw          $s1, 0x18($sp)
/* 014E34 00414E34 AFB00014 */  sw          $s0, 0x14($sp)
/* 014E38 00414E38 00067100 */  sll         $t6, $a2, 4
/* 014E3C 00414E3C 00808025 */  move        $s0, $a0
/* 014E40 00414E40 00A08825 */  move        $s1, $a1
/* 014E44 00414E44 AFBF0024 */  sw          $ra, 0x24($sp)
/* 014E48 00414E48 AFBC0020 */  sw          $gp, 0x20($sp)
/* 014E4C 00414E4C 01C59021 */  addu        $s2, $t6, $a1
.L00414E50:
/* 014E50 00414E50 8E390004 */  lw          $t9, 0x4($s1)
/* 014E54 00414E54 24060000 */  addiu       $a2, $zero, 0x0
/* 014E58 00414E58 24070008 */  addiu       $a3, $zero, 0x8
/* 014E5C 00414E5C 00197A02 */  srl         $t7, $t9, 8
/* 014E60 00414E60 00194402 */  srl         $t0, $t9, 16
/* 014E64 00414E64 00194E02 */  srl         $t1, $t9, 24
/* 014E68 00414E68 A2090004 */  sb          $t1, 0x4($s0)
/* 014E6C 00414E6C A2080005 */  sb          $t0, 0x5($s0)
/* 014E70 00414E70 A20F0006 */  sb          $t7, 0x6($s0)
/* 014E74 00414E74 A2190007 */  sb          $t9, 0x7($s0)
/* 014E78 00414E78 8E2B000C */  lw          $t3, 0xC($s1)
/* 014E7C 00414E7C 8E2A0008 */  lw          $t2, 0x8($s1)
/* 014E80 00414E80 AFAB002C */  sw          $t3, 0x2C($sp)
/* 014E84 00414E84 AFAA0028 */  sw          $t2, 0x28($sp)
/* 014E88 00414E88 A20B000F */  sb          $t3, 0xF($s0)
/* 014E8C 00414E8C 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 014E90 00414E90 8FA5002C */  lw          $a1, 0x2C($sp)
/* 014E94 00414E94 8FA40028 */  lw          $a0, 0x28($sp)
/* 014E98 00414E98 0320F809 */  jalr        $t9
/* 014E9C 00414E9C 00000000 */   nop
/* 014EA0 00414EA0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 014EA4 00414EA4 A203000E */  sb          $v1, 0xE($s0)
/* 014EA8 00414EA8 8FA5002C */  lw          $a1, 0x2C($sp)
/* 014EAC 00414EAC 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 014EB0 00414EB0 8FA40028 */  lw          $a0, 0x28($sp)
/* 014EB4 00414EB4 24060000 */  addiu       $a2, $zero, 0x0
/* 014EB8 00414EB8 0320F809 */  jalr        $t9
/* 014EBC 00414EBC 24070010 */   addiu      $a3, $zero, 0x10
/* 014EC0 00414EC0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 014EC4 00414EC4 A203000D */  sb          $v1, 0xD($s0)
/* 014EC8 00414EC8 8FA5002C */  lw          $a1, 0x2C($sp)
/* 014ECC 00414ECC 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 014ED0 00414ED0 8FA40028 */  lw          $a0, 0x28($sp)
/* 014ED4 00414ED4 24060000 */  addiu       $a2, $zero, 0x0
/* 014ED8 00414ED8 0320F809 */  jalr        $t9
/* 014EDC 00414EDC 24070018 */   addiu      $a3, $zero, 0x18
/* 014EE0 00414EE0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 014EE4 00414EE4 A203000C */  sb          $v1, 0xC($s0)
/* 014EE8 00414EE8 8FA5002C */  lw          $a1, 0x2C($sp)
/* 014EEC 00414EEC 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 014EF0 00414EF0 8FA40028 */  lw          $a0, 0x28($sp)
/* 014EF4 00414EF4 24060000 */  addiu       $a2, $zero, 0x0
/* 014EF8 00414EF8 0320F809 */  jalr        $t9
/* 014EFC 00414EFC 24070020 */   addiu      $a3, $zero, 0x20
/* 014F00 00414F00 8FBC0020 */  lw          $gp, 0x20($sp)
/* 014F04 00414F04 A203000B */  sb          $v1, 0xB($s0)
/* 014F08 00414F08 8FA5002C */  lw          $a1, 0x2C($sp)
/* 014F0C 00414F0C 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 014F10 00414F10 8FA40028 */  lw          $a0, 0x28($sp)
/* 014F14 00414F14 24060000 */  addiu       $a2, $zero, 0x0
/* 014F18 00414F18 0320F809 */  jalr        $t9
/* 014F1C 00414F1C 24070028 */   addiu      $a3, $zero, 0x28
/* 014F20 00414F20 8FBC0020 */  lw          $gp, 0x20($sp)
/* 014F24 00414F24 A203000A */  sb          $v1, 0xA($s0)
/* 014F28 00414F28 8FA5002C */  lw          $a1, 0x2C($sp)
/* 014F2C 00414F2C 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 014F30 00414F30 8FA40028 */  lw          $a0, 0x28($sp)
/* 014F34 00414F34 24060000 */  addiu       $a2, $zero, 0x0
/* 014F38 00414F38 0320F809 */  jalr        $t9
/* 014F3C 00414F3C 24070030 */   addiu      $a3, $zero, 0x30
/* 014F40 00414F40 8FBC0020 */  lw          $gp, 0x20($sp)
/* 014F44 00414F44 A2030009 */  sb          $v1, 0x9($s0)
/* 014F48 00414F48 8FA5002C */  lw          $a1, 0x2C($sp)
/* 014F4C 00414F4C 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 014F50 00414F50 8FA40028 */  lw          $a0, 0x28($sp)
/* 014F54 00414F54 24060000 */  addiu       $a2, $zero, 0x0
/* 014F58 00414F58 0320F809 */  jalr        $t9
/* 014F5C 00414F5C 24070038 */   addiu      $a3, $zero, 0x38
/* 014F60 00414F60 26310010 */  addiu       $s1, $s1, 0x10
/* 014F64 00414F64 8FBC0020 */  lw          $gp, 0x20($sp)
/* 014F68 00414F68 0232082B */  sltu        $at, $s1, $s2
/* 014F6C 00414F6C A2030008 */  sb          $v1, 0x8($s0)
/* 014F70 00414F70 1420FFB7 */  bnez        $at, .L00414E50
/* 014F74 00414F74 26100010 */   addiu      $s0, $s0, 0x10
/* 014F78 00414F78 8FBF0024 */  lw          $ra, 0x24($sp)
/* 014F7C 00414F7C 8FB00014 */  lw          $s0, 0x14($sp)
/* 014F80 00414F80 8FB10018 */  lw          $s1, 0x18($sp)
/* 014F84 00414F84 8FB2001C */  lw          $s2, 0x1C($sp)
/* 014F88 00414F88 03E00008 */  jr          $ra
/* 014F8C 00414F8C 27BD0038 */   addiu      $sp, $sp, 0x38
