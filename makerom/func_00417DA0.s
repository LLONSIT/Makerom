glabel func_00417DA0 # 76
# _gp_disp: 0xFC05FA0
.set noreorder; .cpload $t9; # .set reorder
/* 017DAC 00417DAC 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 017DB0 00417DB0 AFB2001C */  sw          $s2, 0x1C($sp)
/* 017DB4 00417DB4 AFB10018 */  sw          $s1, 0x18($sp)
/* 017DB8 00417DB8 AFB00014 */  sw          $s0, 0x14($sp)
/* 017DBC 00417DBC 000670C0 */  sll         $t6, $a2, 3
/* 017DC0 00417DC0 00808025 */  move        $s0, $a0
/* 017DC4 00417DC4 00A08825 */  move        $s1, $a1
/* 017DC8 00417DC8 AFBF0024 */  sw          $ra, 0x24($sp)
/* 017DCC 00417DCC AFBC0020 */  sw          $gp, 0x20($sp)
/* 017DD0 00417DD0 01C59021 */  addu        $s2, $t6, $a1
.L00417DD4:
/* 017DD4 00417DD4 8E380000 */  lw          $t8, 0x0($s1)
/* 017DD8 00417DD8 8E390004 */  lw          $t9, 0x4($s1)
/* 017DDC 00417DDC 24060000 */  addiu       $a2, $zero, 0x0
/* 017DE0 00417DE0 AFB80028 */  sw          $t8, 0x28($sp)
/* 017DE4 00417DE4 AFB9002C */  sw          $t9, 0x2C($sp)
/* 017DE8 00417DE8 A2190000 */  sb          $t9, 0x0($s0)
/* 017DEC 00417DEC 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 017DF0 00417DF0 8FA5002C */  lw          $a1, 0x2C($sp)
/* 017DF4 00417DF4 8FA40028 */  lw          $a0, 0x28($sp)
/* 017DF8 00417DF8 0320F809 */  jalr        $t9
/* 017DFC 00417DFC 24070008 */   addiu      $a3, $zero, 0x8
/* 017E00 00417E00 8FBC0020 */  lw          $gp, 0x20($sp)
/* 017E04 00417E04 A2030001 */  sb          $v1, 0x1($s0)
/* 017E08 00417E08 8FA5002C */  lw          $a1, 0x2C($sp)
/* 017E0C 00417E0C 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 017E10 00417E10 8FA40028 */  lw          $a0, 0x28($sp)
/* 017E14 00417E14 24060000 */  addiu       $a2, $zero, 0x0
/* 017E18 00417E18 0320F809 */  jalr        $t9
/* 017E1C 00417E1C 24070010 */   addiu      $a3, $zero, 0x10
/* 017E20 00417E20 8FBC0020 */  lw          $gp, 0x20($sp)
/* 017E24 00417E24 A2030002 */  sb          $v1, 0x2($s0)
/* 017E28 00417E28 8FA5002C */  lw          $a1, 0x2C($sp)
/* 017E2C 00417E2C 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 017E30 00417E30 8FA40028 */  lw          $a0, 0x28($sp)
/* 017E34 00417E34 24060000 */  addiu       $a2, $zero, 0x0
/* 017E38 00417E38 0320F809 */  jalr        $t9
/* 017E3C 00417E3C 24070018 */   addiu      $a3, $zero, 0x18
/* 017E40 00417E40 8FBC0020 */  lw          $gp, 0x20($sp)
/* 017E44 00417E44 A2030003 */  sb          $v1, 0x3($s0)
/* 017E48 00417E48 8FA5002C */  lw          $a1, 0x2C($sp)
/* 017E4C 00417E4C 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 017E50 00417E50 8FA40028 */  lw          $a0, 0x28($sp)
/* 017E54 00417E54 24060000 */  addiu       $a2, $zero, 0x0
/* 017E58 00417E58 0320F809 */  jalr        $t9
/* 017E5C 00417E5C 24070020 */   addiu      $a3, $zero, 0x20
/* 017E60 00417E60 8FBC0020 */  lw          $gp, 0x20($sp)
/* 017E64 00417E64 A2030004 */  sb          $v1, 0x4($s0)
/* 017E68 00417E68 8FA5002C */  lw          $a1, 0x2C($sp)
/* 017E6C 00417E6C 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 017E70 00417E70 8FA40028 */  lw          $a0, 0x28($sp)
/* 017E74 00417E74 24060000 */  addiu       $a2, $zero, 0x0
/* 017E78 00417E78 0320F809 */  jalr        $t9
/* 017E7C 00417E7C 24070028 */   addiu      $a3, $zero, 0x28
/* 017E80 00417E80 8FBC0020 */  lw          $gp, 0x20($sp)
/* 017E84 00417E84 A2030005 */  sb          $v1, 0x5($s0)
/* 017E88 00417E88 8FA5002C */  lw          $a1, 0x2C($sp)
/* 017E8C 00417E8C 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 017E90 00417E90 8FA40028 */  lw          $a0, 0x28($sp)
/* 017E94 00417E94 24060000 */  addiu       $a2, $zero, 0x0
/* 017E98 00417E98 0320F809 */  jalr        $t9
/* 017E9C 00417E9C 24070030 */   addiu      $a3, $zero, 0x30
/* 017EA0 00417EA0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 017EA4 00417EA4 A2030006 */  sb          $v1, 0x6($s0)
/* 017EA8 00417EA8 8FA5002C */  lw          $a1, 0x2C($sp)
/* 017EAC 00417EAC 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 017EB0 00417EB0 8FA40028 */  lw          $a0, 0x28($sp)
/* 017EB4 00417EB4 24060000 */  addiu       $a2, $zero, 0x0
/* 017EB8 00417EB8 0320F809 */  jalr        $t9
/* 017EBC 00417EBC 24070038 */   addiu      $a3, $zero, 0x38
/* 017EC0 00417EC0 26310008 */  addiu       $s1, $s1, 0x8
/* 017EC4 00417EC4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 017EC8 00417EC8 0232082B */  sltu        $at, $s1, $s2
/* 017ECC 00417ECC A2030007 */  sb          $v1, 0x7($s0)
/* 017ED0 00417ED0 0060C825 */  move        $t9, $v1
/* 017ED4 00417ED4 1420FFBF */  bnez        $at, .L00417DD4
/* 017ED8 00417ED8 26100008 */   addiu      $s0, $s0, 0x8
/* 017EDC 00417EDC 8FBF0024 */  lw          $ra, 0x24($sp)
/* 017EE0 00417EE0 8FB00014 */  lw          $s0, 0x14($sp)
/* 017EE4 00417EE4 8FB10018 */  lw          $s1, 0x18($sp)
/* 017EE8 00417EE8 8FB2001C */  lw          $s2, 0x1C($sp)
/* 017EEC 00417EEC 03E00008 */  jr          $ra
/* 017EF0 00417EF0 27BD0038 */   addiu      $sp, $sp, 0x38
