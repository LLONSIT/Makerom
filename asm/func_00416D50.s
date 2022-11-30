glabel func_00416D50 # 71
# _gp_disp: 0xFC06FF0
.set noreorder; .cpload $t9; # .set reorder
/* 016D5C 00416D5C 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 016D60 00416D60 00067080 */  sll         $t6, $a2, 2
/* 016D64 00416D64 01C67023 */  subu        $t6, $t6, $a2
/* 016D68 00416D68 AFB2001C */  sw          $s2, 0x1C($sp)
/* 016D6C 00416D6C AFB10018 */  sw          $s1, 0x18($sp)
/* 016D70 00416D70 AFB00014 */  sw          $s0, 0x14($sp)
/* 016D74 00416D74 000E70C0 */  sll         $t6, $t6, 3
/* 016D78 00416D78 00808025 */  move        $s0, $a0
/* 016D7C 00416D7C 00A08825 */  move        $s1, $a1
/* 016D80 00416D80 AFBF0024 */  sw          $ra, 0x24($sp)
/* 016D84 00416D84 AFBC0020 */  sw          $gp, 0x20($sp)
/* 016D88 00416D88 01C59021 */  addu        $s2, $t6, $a1
.L00416D8C:
/* 016D8C 00416D8C 8E380000 */  lw          $t8, 0x0($s1)
/* 016D90 00416D90 8E390004 */  lw          $t9, 0x4($s1)
/* 016D94 00416D94 24060000 */  addiu       $a2, $zero, 0x0
/* 016D98 00416D98 AFB80038 */  sw          $t8, 0x38($sp)
/* 016D9C 00416D9C AFB9003C */  sw          $t9, 0x3C($sp)
/* 016DA0 00416DA0 A2190007 */  sb          $t9, 0x7($s0)
/* 016DA4 00416DA4 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 016DA8 00416DA8 8FA5003C */  lw          $a1, 0x3C($sp)
/* 016DAC 00416DAC 8FA40038 */  lw          $a0, 0x38($sp)
/* 016DB0 00416DB0 0320F809 */  jalr        $t9
/* 016DB4 00416DB4 24070008 */   addiu      $a3, $zero, 0x8
/* 016DB8 00416DB8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 016DBC 00416DBC A2030006 */  sb          $v1, 0x6($s0)
/* 016DC0 00416DC0 8FA5003C */  lw          $a1, 0x3C($sp)
/* 016DC4 00416DC4 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 016DC8 00416DC8 8FA40038 */  lw          $a0, 0x38($sp)
/* 016DCC 00416DCC 24060000 */  addiu       $a2, $zero, 0x0
/* 016DD0 00416DD0 0320F809 */  jalr        $t9
/* 016DD4 00416DD4 24070010 */   addiu      $a3, $zero, 0x10
/* 016DD8 00416DD8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 016DDC 00416DDC A2030005 */  sb          $v1, 0x5($s0)
/* 016DE0 00416DE0 8FA5003C */  lw          $a1, 0x3C($sp)
/* 016DE4 00416DE4 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 016DE8 00416DE8 8FA40038 */  lw          $a0, 0x38($sp)
/* 016DEC 00416DEC 24060000 */  addiu       $a2, $zero, 0x0
/* 016DF0 00416DF0 0320F809 */  jalr        $t9
/* 016DF4 00416DF4 24070018 */   addiu      $a3, $zero, 0x18
/* 016DF8 00416DF8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 016DFC 00416DFC A2030004 */  sb          $v1, 0x4($s0)
/* 016E00 00416E00 8FA5003C */  lw          $a1, 0x3C($sp)
/* 016E04 00416E04 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 016E08 00416E08 8FA40038 */  lw          $a0, 0x38($sp)
/* 016E0C 00416E0C 24060000 */  addiu       $a2, $zero, 0x0
/* 016E10 00416E10 0320F809 */  jalr        $t9
/* 016E14 00416E14 24070020 */   addiu      $a3, $zero, 0x20
/* 016E18 00416E18 8FBC0020 */  lw          $gp, 0x20($sp)
/* 016E1C 00416E1C A2030003 */  sb          $v1, 0x3($s0)
/* 016E20 00416E20 8FA5003C */  lw          $a1, 0x3C($sp)
/* 016E24 00416E24 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 016E28 00416E28 8FA40038 */  lw          $a0, 0x38($sp)
/* 016E2C 00416E2C 24060000 */  addiu       $a2, $zero, 0x0
/* 016E30 00416E30 0320F809 */  jalr        $t9
/* 016E34 00416E34 24070028 */   addiu      $a3, $zero, 0x28
/* 016E38 00416E38 8FBC0020 */  lw          $gp, 0x20($sp)
/* 016E3C 00416E3C A2030002 */  sb          $v1, 0x2($s0)
/* 016E40 00416E40 8FA5003C */  lw          $a1, 0x3C($sp)
/* 016E44 00416E44 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 016E48 00416E48 8FA40038 */  lw          $a0, 0x38($sp)
/* 016E4C 00416E4C 24060000 */  addiu       $a2, $zero, 0x0
/* 016E50 00416E50 0320F809 */  jalr        $t9
/* 016E54 00416E54 24070030 */   addiu      $a3, $zero, 0x30
/* 016E58 00416E58 8FBC0020 */  lw          $gp, 0x20($sp)
/* 016E5C 00416E5C A2030001 */  sb          $v1, 0x1($s0)
/* 016E60 00416E60 8FA5003C */  lw          $a1, 0x3C($sp)
/* 016E64 00416E64 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 016E68 00416E68 8FA40038 */  lw          $a0, 0x38($sp)
/* 016E6C 00416E6C 24060000 */  addiu       $a2, $zero, 0x0
/* 016E70 00416E70 0320F809 */  jalr        $t9
/* 016E74 00416E74 24070038 */   addiu      $a3, $zero, 0x38
/* 016E78 00416E78 8FBC0020 */  lw          $gp, 0x20($sp)
/* 016E7C 00416E7C A2030000 */  sb          $v1, 0x0($s0)
/* 016E80 00416E80 8E240008 */  lw          $a0, 0x8($s1)
/* 016E84 00416E84 24060000 */  addiu       $a2, $zero, 0x0
/* 016E88 00416E88 24070008 */  addiu       $a3, $zero, 0x8
/* 016E8C 00416E8C 00044202 */  srl         $t0, $a0, 8
/* 016E90 00416E90 00044C02 */  srl         $t1, $a0, 16
/* 016E94 00416E94 00047E02 */  srl         $t7, $a0, 24
/* 016E98 00416E98 A20F0008 */  sb          $t7, 0x8($s0)
/* 016E9C 00416E9C A2090009 */  sb          $t1, 0x9($s0)
/* 016EA0 00416EA0 A208000A */  sb          $t0, 0xA($s0)
/* 016EA4 00416EA4 A204000B */  sb          $a0, 0xB($s0)
/* 016EA8 00416EA8 922A000C */  lbu         $t2, 0xC($s1)
/* 016EAC 00416EAC A20A000C */  sb          $t2, 0xC($s0)
/* 016EB0 00416EB0 922B000D */  lbu         $t3, 0xD($s1)
/* 016EB4 00416EB4 A20B000D */  sb          $t3, 0xD($s0)
/* 016EB8 00416EB8 922C000E */  lbu         $t4, 0xE($s1)
/* 016EBC 00416EBC A20C000E */  sb          $t4, 0xE($s0)
/* 016EC0 00416EC0 922D000F */  lbu         $t5, 0xF($s1)
/* 016EC4 00416EC4 A20D000F */  sb          $t5, 0xF($s0)
/* 016EC8 00416EC8 8E2F0014 */  lw          $t7, 0x14($s1)
/* 016ECC 00416ECC 8E2E0010 */  lw          $t6, 0x10($s1)
/* 016ED0 00416ED0 AFAF002C */  sw          $t7, 0x2C($sp)
/* 016ED4 00416ED4 AFAE0028 */  sw          $t6, 0x28($sp)
/* 016ED8 00416ED8 A20F0017 */  sb          $t7, 0x17($s0)
/* 016EDC 00416EDC 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 016EE0 00416EE0 8FA5002C */  lw          $a1, 0x2C($sp)
/* 016EE4 00416EE4 8FA40028 */  lw          $a0, 0x28($sp)
/* 016EE8 00416EE8 0320F809 */  jalr        $t9
/* 016EEC 00416EEC 00000000 */   nop
/* 016EF0 00416EF0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 016EF4 00416EF4 A2030016 */  sb          $v1, 0x16($s0)
/* 016EF8 00416EF8 8FA5002C */  lw          $a1, 0x2C($sp)
/* 016EFC 00416EFC 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 016F00 00416F00 8FA40028 */  lw          $a0, 0x28($sp)
/* 016F04 00416F04 24060000 */  addiu       $a2, $zero, 0x0
/* 016F08 00416F08 0320F809 */  jalr        $t9
/* 016F0C 00416F0C 24070010 */   addiu      $a3, $zero, 0x10
/* 016F10 00416F10 8FBC0020 */  lw          $gp, 0x20($sp)
/* 016F14 00416F14 A2030015 */  sb          $v1, 0x15($s0)
/* 016F18 00416F18 8FA5002C */  lw          $a1, 0x2C($sp)
/* 016F1C 00416F1C 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 016F20 00416F20 8FA40028 */  lw          $a0, 0x28($sp)
/* 016F24 00416F24 24060000 */  addiu       $a2, $zero, 0x0
/* 016F28 00416F28 0320F809 */  jalr        $t9
/* 016F2C 00416F2C 24070018 */   addiu      $a3, $zero, 0x18
/* 016F30 00416F30 8FBC0020 */  lw          $gp, 0x20($sp)
/* 016F34 00416F34 A2030014 */  sb          $v1, 0x14($s0)
/* 016F38 00416F38 8FA5002C */  lw          $a1, 0x2C($sp)
/* 016F3C 00416F3C 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 016F40 00416F40 8FA40028 */  lw          $a0, 0x28($sp)
/* 016F44 00416F44 24060000 */  addiu       $a2, $zero, 0x0
/* 016F48 00416F48 0320F809 */  jalr        $t9
/* 016F4C 00416F4C 24070020 */   addiu      $a3, $zero, 0x20
/* 016F50 00416F50 8FBC0020 */  lw          $gp, 0x20($sp)
/* 016F54 00416F54 A2030013 */  sb          $v1, 0x13($s0)
/* 016F58 00416F58 8FA5002C */  lw          $a1, 0x2C($sp)
/* 016F5C 00416F5C 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 016F60 00416F60 8FA40028 */  lw          $a0, 0x28($sp)
/* 016F64 00416F64 24060000 */  addiu       $a2, $zero, 0x0
/* 016F68 00416F68 0320F809 */  jalr        $t9
/* 016F6C 00416F6C 24070028 */   addiu      $a3, $zero, 0x28
/* 016F70 00416F70 8FBC0020 */  lw          $gp, 0x20($sp)
/* 016F74 00416F74 A2030012 */  sb          $v1, 0x12($s0)
/* 016F78 00416F78 8FA5002C */  lw          $a1, 0x2C($sp)
/* 016F7C 00416F7C 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 016F80 00416F80 8FA40028 */  lw          $a0, 0x28($sp)
/* 016F84 00416F84 24060000 */  addiu       $a2, $zero, 0x0
/* 016F88 00416F88 0320F809 */  jalr        $t9
/* 016F8C 00416F8C 24070030 */   addiu      $a3, $zero, 0x30
/* 016F90 00416F90 8FBC0020 */  lw          $gp, 0x20($sp)
/* 016F94 00416F94 A2030011 */  sb          $v1, 0x11($s0)
/* 016F98 00416F98 8FA5002C */  lw          $a1, 0x2C($sp)
/* 016F9C 00416F9C 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 016FA0 00416FA0 8FA40028 */  lw          $a0, 0x28($sp)
/* 016FA4 00416FA4 24060000 */  addiu       $a2, $zero, 0x0
/* 016FA8 00416FA8 0320F809 */  jalr        $t9
/* 016FAC 00416FAC 24070038 */   addiu      $a3, $zero, 0x38
/* 016FB0 00416FB0 26310018 */  addiu       $s1, $s1, 0x18
/* 016FB4 00416FB4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 016FB8 00416FB8 0232082B */  sltu        $at, $s1, $s2
/* 016FBC 00416FBC A2030010 */  sb          $v1, 0x10($s0)
/* 016FC0 00416FC0 1420FF72 */  bnez        $at, .L00416D8C
/* 016FC4 00416FC4 26100018 */   addiu      $s0, $s0, 0x18
/* 016FC8 00416FC8 8FBF0024 */  lw          $ra, 0x24($sp)
/* 016FCC 00416FCC 8FB00014 */  lw          $s0, 0x14($sp)
/* 016FD0 00416FD0 8FB10018 */  lw          $s1, 0x18($sp)
/* 016FD4 00416FD4 8FB2001C */  lw          $s2, 0x1C($sp)
/* 016FD8 00416FD8 03E00008 */  jr          $ra
/* 016FDC 00416FDC 27BD0048 */   addiu      $sp, $sp, 0x48
