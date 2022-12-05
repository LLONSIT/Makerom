glabel func_004149C4 # 55
# _gp_disp: 0xFC0937C
.set noreorder; .cpload $t9; # .set reorder
/* 0149D0 004149D0 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 0149D4 004149D4 AFB2001C */  sw          $s2, 0x1C($sp)
/* 0149D8 004149D8 AFB10018 */  sw          $s1, 0x18($sp)
/* 0149DC 004149DC AFB00014 */  sw          $s0, 0x14($sp)
/* 0149E0 004149E0 000670C0 */  sll         $t6, $a2, 3
/* 0149E4 004149E4 00808025 */  move        $s0, $a0
/* 0149E8 004149E8 00A08825 */  move        $s1, $a1
/* 0149EC 004149EC AFBF0024 */  sw          $ra, 0x24($sp)
/* 0149F0 004149F0 AFBC0020 */  sw          $gp, 0x20($sp)
/* 0149F4 004149F4 01C59021 */  addu        $s2, $t6, $a1
.L004149F8:
/* 0149F8 004149F8 8E380000 */  lw          $t8, 0x0($s1)
/* 0149FC 004149FC 8E390004 */  lw          $t9, 0x4($s1)
/* 014A00 00414A00 24060000 */  addiu       $a2, $zero, 0x0
/* 014A04 00414A04 AFB80028 */  sw          $t8, 0x28($sp)
/* 014A08 00414A08 AFB9002C */  sw          $t9, 0x2C($sp)
/* 014A0C 00414A0C A2190000 */  sb          $t9, 0x0($s0)
/* 014A10 00414A10 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 014A14 00414A14 8FA5002C */  lw          $a1, 0x2C($sp)
/* 014A18 00414A18 8FA40028 */  lw          $a0, 0x28($sp)
/* 014A1C 00414A1C 0320F809 */  jalr        $t9
/* 014A20 00414A20 24070008 */   addiu      $a3, $zero, 0x8
/* 014A24 00414A24 8FBC0020 */  lw          $gp, 0x20($sp)
/* 014A28 00414A28 A2030001 */  sb          $v1, 0x1($s0)
/* 014A2C 00414A2C 8FA5002C */  lw          $a1, 0x2C($sp)
/* 014A30 00414A30 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 014A34 00414A34 8FA40028 */  lw          $a0, 0x28($sp)
/* 014A38 00414A38 24060000 */  addiu       $a2, $zero, 0x0
/* 014A3C 00414A3C 0320F809 */  jalr        $t9
/* 014A40 00414A40 24070010 */   addiu      $a3, $zero, 0x10
/* 014A44 00414A44 8FBC0020 */  lw          $gp, 0x20($sp)
/* 014A48 00414A48 A2030002 */  sb          $v1, 0x2($s0)
/* 014A4C 00414A4C 8FA5002C */  lw          $a1, 0x2C($sp)
/* 014A50 00414A50 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 014A54 00414A54 8FA40028 */  lw          $a0, 0x28($sp)
/* 014A58 00414A58 24060000 */  addiu       $a2, $zero, 0x0
/* 014A5C 00414A5C 0320F809 */  jalr        $t9
/* 014A60 00414A60 24070018 */   addiu      $a3, $zero, 0x18
/* 014A64 00414A64 8FBC0020 */  lw          $gp, 0x20($sp)
/* 014A68 00414A68 A2030003 */  sb          $v1, 0x3($s0)
/* 014A6C 00414A6C 8FA5002C */  lw          $a1, 0x2C($sp)
/* 014A70 00414A70 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 014A74 00414A74 8FA40028 */  lw          $a0, 0x28($sp)
/* 014A78 00414A78 24060000 */  addiu       $a2, $zero, 0x0
/* 014A7C 00414A7C 0320F809 */  jalr        $t9
/* 014A80 00414A80 24070020 */   addiu      $a3, $zero, 0x20
/* 014A84 00414A84 8FBC0020 */  lw          $gp, 0x20($sp)
/* 014A88 00414A88 A2030004 */  sb          $v1, 0x4($s0)
/* 014A8C 00414A8C 8FA5002C */  lw          $a1, 0x2C($sp)
/* 014A90 00414A90 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 014A94 00414A94 8FA40028 */  lw          $a0, 0x28($sp)
/* 014A98 00414A98 24060000 */  addiu       $a2, $zero, 0x0
/* 014A9C 00414A9C 0320F809 */  jalr        $t9
/* 014AA0 00414AA0 24070028 */   addiu      $a3, $zero, 0x28
/* 014AA4 00414AA4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 014AA8 00414AA8 A2030005 */  sb          $v1, 0x5($s0)
/* 014AAC 00414AAC 8FA5002C */  lw          $a1, 0x2C($sp)
/* 014AB0 00414AB0 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 014AB4 00414AB4 8FA40028 */  lw          $a0, 0x28($sp)
/* 014AB8 00414AB8 24060000 */  addiu       $a2, $zero, 0x0
/* 014ABC 00414ABC 0320F809 */  jalr        $t9
/* 014AC0 00414AC0 24070030 */   addiu      $a3, $zero, 0x30
/* 014AC4 00414AC4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 014AC8 00414AC8 A2030006 */  sb          $v1, 0x6($s0)
/* 014ACC 00414ACC 8FA5002C */  lw          $a1, 0x2C($sp)
/* 014AD0 00414AD0 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 014AD4 00414AD4 8FA40028 */  lw          $a0, 0x28($sp)
/* 014AD8 00414AD8 24060000 */  addiu       $a2, $zero, 0x0
/* 014ADC 00414ADC 0320F809 */  jalr        $t9
/* 014AE0 00414AE0 24070038 */   addiu      $a3, $zero, 0x38
/* 014AE4 00414AE4 26310008 */  addiu       $s1, $s1, 0x8
/* 014AE8 00414AE8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 014AEC 00414AEC 0232082B */  sltu        $at, $s1, $s2
/* 014AF0 00414AF0 A2030007 */  sb          $v1, 0x7($s0)
/* 014AF4 00414AF4 0060C825 */  move        $t9, $v1
/* 014AF8 00414AF8 1420FFBF */  bnez        $at, .L004149F8
/* 014AFC 00414AFC 26100008 */   addiu      $s0, $s0, 0x8
/* 014B00 00414B00 8FBF0024 */  lw          $ra, 0x24($sp)
/* 014B04 00414B04 8FB00014 */  lw          $s0, 0x14($sp)
/* 014B08 00414B08 8FB10018 */  lw          $s1, 0x18($sp)
/* 014B0C 00414B0C 8FB2001C */  lw          $s2, 0x1C($sp)
/* 014B10 00414B10 03E00008 */  jr          $ra
/* 014B14 00414B14 27BD0038 */   addiu      $sp, $sp, 0x38
