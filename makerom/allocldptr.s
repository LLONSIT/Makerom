glabel allocldptr # 204
# _gp_disp: 0xFBF9C6C
.set noreorder; .cpload $t9; # .set reorder
/* 0240E0 004240E0 8F9980D4 */  lw          $t9, %call16(calloc)($gp)
/* 0240E4 004240E4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0240E8 004240E8 AFBF001C */  sw          $ra, 0x1C($sp)
/* 0240EC 004240EC AFBC0018 */  sw          $gp, 0x18($sp)
/* 0240F0 004240F0 24040001 */  addiu       $a0, $zero, 0x1
/* 0240F4 004240F4 0320F809 */  jalr        $t9
/* 0240F8 004240F8 2405005C */   addiu      $a1, $zero, 0x5C
/* 0240FC 004240FC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 024100 00424100 10400007 */  beqz        $v0, .L00424120
/* 024104 00424104 00401825 */   move       $v1, $v0
/* 024108 00424108 8F84802C */  lw          $a0, %got(D_10015B1C)($gp)
/* 02410C 0042410C 8F81802C */  lw          $at, %got(D_10015B1C)($gp)
/* 024110 00424110 8C845B1C */  lw          $a0, %lo(D_10015B1C)($a0)
/* 024114 00424114 24840001 */  addiu       $a0, $a0, 0x1
/* 024118 00424118 AC440000 */  sw          $a0, 0x0($v0)
/* 02411C 0042411C AC245B1C */  sw          $a0, %lo(D_10015B1C)($at)
.L00424120:
/* 024120 00424120 8FBF001C */  lw          $ra, 0x1C($sp)
/* 024124 00424124 27BD0020 */  addiu       $sp, $sp, 0x20
/* 024128 00424128 00601025 */  move        $v0, $v1
/* 02412C 0042412C 03E00008 */  jr          $ra
/* 024130 00424130 00000000 */   nop
