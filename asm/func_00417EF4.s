glabel func_00417EF4 # 77
# _gp_disp: 0xFC05E4C
.set noreorder; .cpload $t9; # .set reorder
/* 017F00 00417F00 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 017F04 00417F04 AFB2001C */  sw          $s2, 0x1C($sp)
/* 017F08 00417F08 AFB10018 */  sw          $s1, 0x18($sp)
/* 017F0C 00417F0C AFB00014 */  sw          $s0, 0x14($sp)
/* 017F10 00417F10 000670C0 */  sll         $t6, $a2, 3
/* 017F14 00417F14 00808025 */  move        $s0, $a0
/* 017F18 00417F18 00A08825 */  move        $s1, $a1
/* 017F1C 00417F1C AFBF0024 */  sw          $ra, 0x24($sp)
/* 017F20 00417F20 AFBC0020 */  sw          $gp, 0x20($sp)
/* 017F24 00417F24 01C59021 */  addu        $s2, $t6, $a1
.L00417F28:
/* 017F28 00417F28 8E380000 */  lw          $t8, 0x0($s1)
/* 017F2C 00417F2C 8E390004 */  lw          $t9, 0x4($s1)
/* 017F30 00417F30 24060000 */  addiu       $a2, $zero, 0x0
/* 017F34 00417F34 AFB80028 */  sw          $t8, 0x28($sp)
/* 017F38 00417F38 AFB9002C */  sw          $t9, 0x2C($sp)
/* 017F3C 00417F3C A2190007 */  sb          $t9, 0x7($s0)
/* 017F40 00417F40 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 017F44 00417F44 8FA5002C */  lw          $a1, 0x2C($sp)
/* 017F48 00417F48 8FA40028 */  lw          $a0, 0x28($sp)
/* 017F4C 00417F4C 0320F809 */  jalr        $t9
/* 017F50 00417F50 24070008 */   addiu      $a3, $zero, 0x8
/* 017F54 00417F54 8FBC0020 */  lw          $gp, 0x20($sp)
/* 017F58 00417F58 A2030006 */  sb          $v1, 0x6($s0)
/* 017F5C 00417F5C 8FA5002C */  lw          $a1, 0x2C($sp)
/* 017F60 00417F60 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 017F64 00417F64 8FA40028 */  lw          $a0, 0x28($sp)
/* 017F68 00417F68 24060000 */  addiu       $a2, $zero, 0x0
/* 017F6C 00417F6C 0320F809 */  jalr        $t9
/* 017F70 00417F70 24070010 */   addiu      $a3, $zero, 0x10
/* 017F74 00417F74 8FBC0020 */  lw          $gp, 0x20($sp)
/* 017F78 00417F78 A2030005 */  sb          $v1, 0x5($s0)
/* 017F7C 00417F7C 8FA5002C */  lw          $a1, 0x2C($sp)
/* 017F80 00417F80 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 017F84 00417F84 8FA40028 */  lw          $a0, 0x28($sp)
/* 017F88 00417F88 24060000 */  addiu       $a2, $zero, 0x0
/* 017F8C 00417F8C 0320F809 */  jalr        $t9
/* 017F90 00417F90 24070018 */   addiu      $a3, $zero, 0x18
/* 017F94 00417F94 8FBC0020 */  lw          $gp, 0x20($sp)
/* 017F98 00417F98 A2030004 */  sb          $v1, 0x4($s0)
/* 017F9C 00417F9C 8FA5002C */  lw          $a1, 0x2C($sp)
/* 017FA0 00417FA0 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 017FA4 00417FA4 8FA40028 */  lw          $a0, 0x28($sp)
/* 017FA8 00417FA8 24060000 */  addiu       $a2, $zero, 0x0
/* 017FAC 00417FAC 0320F809 */  jalr        $t9
/* 017FB0 00417FB0 24070020 */   addiu      $a3, $zero, 0x20
/* 017FB4 00417FB4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 017FB8 00417FB8 A2030003 */  sb          $v1, 0x3($s0)
/* 017FBC 00417FBC 8FA5002C */  lw          $a1, 0x2C($sp)
/* 017FC0 00417FC0 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 017FC4 00417FC4 8FA40028 */  lw          $a0, 0x28($sp)
/* 017FC8 00417FC8 24060000 */  addiu       $a2, $zero, 0x0
/* 017FCC 00417FCC 0320F809 */  jalr        $t9
/* 017FD0 00417FD0 24070028 */   addiu      $a3, $zero, 0x28
/* 017FD4 00417FD4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 017FD8 00417FD8 A2030002 */  sb          $v1, 0x2($s0)
/* 017FDC 00417FDC 8FA5002C */  lw          $a1, 0x2C($sp)
/* 017FE0 00417FE0 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 017FE4 00417FE4 8FA40028 */  lw          $a0, 0x28($sp)
/* 017FE8 00417FE8 24060000 */  addiu       $a2, $zero, 0x0
/* 017FEC 00417FEC 0320F809 */  jalr        $t9
/* 017FF0 00417FF0 24070030 */   addiu      $a3, $zero, 0x30
/* 017FF4 00417FF4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 017FF8 00417FF8 A2030001 */  sb          $v1, 0x1($s0)
/* 017FFC 00417FFC 8FA5002C */  lw          $a1, 0x2C($sp)
/* 018000 00418000 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 018004 00418004 8FA40028 */  lw          $a0, 0x28($sp)
/* 018008 00418008 24060000 */  addiu       $a2, $zero, 0x0
/* 01800C 0041800C 0320F809 */  jalr        $t9
/* 018010 00418010 24070038 */   addiu      $a3, $zero, 0x38
/* 018014 00418014 26310008 */  addiu       $s1, $s1, 0x8
/* 018018 00418018 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01801C 0041801C 0232082B */  sltu        $at, $s1, $s2
/* 018020 00418020 A2030000 */  sb          $v1, 0x0($s0)
/* 018024 00418024 0060C825 */  move        $t9, $v1
/* 018028 00418028 1420FFBF */  bnez        $at, .L00417F28
/* 01802C 0041802C 26100008 */   addiu      $s0, $s0, 0x8
/* 018030 00418030 8FBF0024 */  lw          $ra, 0x24($sp)
/* 018034 00418034 8FB00014 */  lw          $s0, 0x14($sp)
/* 018038 00418038 8FB10018 */  lw          $s1, 0x18($sp)
/* 01803C 0041803C 8FB2001C */  lw          $s2, 0x1C($sp)
/* 018040 00418040 03E00008 */  jr          $ra
/* 018044 00418044 27BD0038 */   addiu      $sp, $sp, 0x38
