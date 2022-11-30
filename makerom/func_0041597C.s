glabel func_0041597C # 65
# _gp_disp: 0xFC083C4
.set noreorder; .cpload $t9; # .set reorder
/* 015988 00415988 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 01598C 0041598C AFB2001C */  sw          $s2, 0x1C($sp)
/* 015990 00415990 AFB10018 */  sw          $s1, 0x18($sp)
/* 015994 00415994 AFB00014 */  sw          $s0, 0x14($sp)
/* 015998 00415998 000670C0 */  sll         $t6, $a2, 3
/* 01599C 0041599C 00808025 */  move        $s0, $a0
/* 0159A0 004159A0 00A08825 */  move        $s1, $a1
/* 0159A4 004159A4 AFBF0024 */  sw          $ra, 0x24($sp)
/* 0159A8 004159A8 AFBC0020 */  sw          $gp, 0x20($sp)
/* 0159AC 004159AC 01C59021 */  addu        $s2, $t6, $a1
.L004159B0:
/* 0159B0 004159B0 8E380000 */  lw          $t8, 0x0($s1)
/* 0159B4 004159B4 8E390004 */  lw          $t9, 0x4($s1)
/* 0159B8 004159B8 24060000 */  addiu       $a2, $zero, 0x0
/* 0159BC 004159BC AFB80028 */  sw          $t8, 0x28($sp)
/* 0159C0 004159C0 AFB9002C */  sw          $t9, 0x2C($sp)
/* 0159C4 004159C4 A2190007 */  sb          $t9, 0x7($s0)
/* 0159C8 004159C8 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 0159CC 004159CC 8FA5002C */  lw          $a1, 0x2C($sp)
/* 0159D0 004159D0 8FA40028 */  lw          $a0, 0x28($sp)
/* 0159D4 004159D4 0320F809 */  jalr        $t9
/* 0159D8 004159D8 24070008 */   addiu      $a3, $zero, 0x8
/* 0159DC 004159DC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 0159E0 004159E0 A2030006 */  sb          $v1, 0x6($s0)
/* 0159E4 004159E4 8FA5002C */  lw          $a1, 0x2C($sp)
/* 0159E8 004159E8 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 0159EC 004159EC 8FA40028 */  lw          $a0, 0x28($sp)
/* 0159F0 004159F0 24060000 */  addiu       $a2, $zero, 0x0
/* 0159F4 004159F4 0320F809 */  jalr        $t9
/* 0159F8 004159F8 24070010 */   addiu      $a3, $zero, 0x10
/* 0159FC 004159FC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 015A00 00415A00 A2030005 */  sb          $v1, 0x5($s0)
/* 015A04 00415A04 8FA5002C */  lw          $a1, 0x2C($sp)
/* 015A08 00415A08 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 015A0C 00415A0C 8FA40028 */  lw          $a0, 0x28($sp)
/* 015A10 00415A10 24060000 */  addiu       $a2, $zero, 0x0
/* 015A14 00415A14 0320F809 */  jalr        $t9
/* 015A18 00415A18 24070018 */   addiu      $a3, $zero, 0x18
/* 015A1C 00415A1C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 015A20 00415A20 A2030004 */  sb          $v1, 0x4($s0)
/* 015A24 00415A24 8FA5002C */  lw          $a1, 0x2C($sp)
/* 015A28 00415A28 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 015A2C 00415A2C 8FA40028 */  lw          $a0, 0x28($sp)
/* 015A30 00415A30 24060000 */  addiu       $a2, $zero, 0x0
/* 015A34 00415A34 0320F809 */  jalr        $t9
/* 015A38 00415A38 24070020 */   addiu      $a3, $zero, 0x20
/* 015A3C 00415A3C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 015A40 00415A40 A2030003 */  sb          $v1, 0x3($s0)
/* 015A44 00415A44 8FA5002C */  lw          $a1, 0x2C($sp)
/* 015A48 00415A48 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 015A4C 00415A4C 8FA40028 */  lw          $a0, 0x28($sp)
/* 015A50 00415A50 24060000 */  addiu       $a2, $zero, 0x0
/* 015A54 00415A54 0320F809 */  jalr        $t9
/* 015A58 00415A58 24070028 */   addiu      $a3, $zero, 0x28
/* 015A5C 00415A5C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 015A60 00415A60 A2030002 */  sb          $v1, 0x2($s0)
/* 015A64 00415A64 8FA5002C */  lw          $a1, 0x2C($sp)
/* 015A68 00415A68 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 015A6C 00415A6C 8FA40028 */  lw          $a0, 0x28($sp)
/* 015A70 00415A70 24060000 */  addiu       $a2, $zero, 0x0
/* 015A74 00415A74 0320F809 */  jalr        $t9
/* 015A78 00415A78 24070030 */   addiu      $a3, $zero, 0x30
/* 015A7C 00415A7C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 015A80 00415A80 A2030001 */  sb          $v1, 0x1($s0)
/* 015A84 00415A84 8FA5002C */  lw          $a1, 0x2C($sp)
/* 015A88 00415A88 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 015A8C 00415A8C 8FA40028 */  lw          $a0, 0x28($sp)
/* 015A90 00415A90 24060000 */  addiu       $a2, $zero, 0x0
/* 015A94 00415A94 0320F809 */  jalr        $t9
/* 015A98 00415A98 24070038 */   addiu      $a3, $zero, 0x38
/* 015A9C 00415A9C 26310008 */  addiu       $s1, $s1, 0x8
/* 015AA0 00415AA0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 015AA4 00415AA4 0232082B */  sltu        $at, $s1, $s2
/* 015AA8 00415AA8 A2030000 */  sb          $v1, 0x0($s0)
/* 015AAC 00415AAC 0060C825 */  move        $t9, $v1
/* 015AB0 00415AB0 1420FFBF */  bnez        $at, .L004159B0
/* 015AB4 00415AB4 26100008 */   addiu      $s0, $s0, 0x8
/* 015AB8 00415AB8 8FBF0024 */  lw          $ra, 0x24($sp)
/* 015ABC 00415ABC 8FB00014 */  lw          $s0, 0x14($sp)
/* 015AC0 00415AC0 8FB10018 */  lw          $s1, 0x18($sp)
/* 015AC4 00415AC4 8FB2001C */  lw          $s2, 0x1C($sp)
/* 015AC8 00415AC8 03E00008 */  jr          $ra
/* 015ACC 00415ACC 27BD0038 */   addiu      $sp, $sp, 0x38
