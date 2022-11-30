glabel func_00414B18 # 56
# _gp_disp: 0xFC09228
.set noreorder; .cpload $t9; # .set reorder
/* 014B24 00414B24 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 014B28 00414B28 AFB2001C */  sw          $s2, 0x1C($sp)
/* 014B2C 00414B2C AFB10018 */  sw          $s1, 0x18($sp)
/* 014B30 00414B30 AFB00014 */  sw          $s0, 0x14($sp)
/* 014B34 00414B34 000670C0 */  sll         $t6, $a2, 3
/* 014B38 00414B38 00808025 */  move        $s0, $a0
/* 014B3C 00414B3C 00A08825 */  move        $s1, $a1
/* 014B40 00414B40 AFBF0024 */  sw          $ra, 0x24($sp)
/* 014B44 00414B44 AFBC0020 */  sw          $gp, 0x20($sp)
/* 014B48 00414B48 01C59021 */  addu        $s2, $t6, $a1
.L00414B4C:
/* 014B4C 00414B4C 8E380000 */  lw          $t8, 0x0($s1)
/* 014B50 00414B50 8E390004 */  lw          $t9, 0x4($s1)
/* 014B54 00414B54 24060000 */  addiu       $a2, $zero, 0x0
/* 014B58 00414B58 AFB80028 */  sw          $t8, 0x28($sp)
/* 014B5C 00414B5C AFB9002C */  sw          $t9, 0x2C($sp)
/* 014B60 00414B60 A2190007 */  sb          $t9, 0x7($s0)
/* 014B64 00414B64 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 014B68 00414B68 8FA5002C */  lw          $a1, 0x2C($sp)
/* 014B6C 00414B6C 8FA40028 */  lw          $a0, 0x28($sp)
/* 014B70 00414B70 0320F809 */  jalr        $t9
/* 014B74 00414B74 24070008 */   addiu      $a3, $zero, 0x8
/* 014B78 00414B78 8FBC0020 */  lw          $gp, 0x20($sp)
/* 014B7C 00414B7C A2030006 */  sb          $v1, 0x6($s0)
/* 014B80 00414B80 8FA5002C */  lw          $a1, 0x2C($sp)
/* 014B84 00414B84 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 014B88 00414B88 8FA40028 */  lw          $a0, 0x28($sp)
/* 014B8C 00414B8C 24060000 */  addiu       $a2, $zero, 0x0
/* 014B90 00414B90 0320F809 */  jalr        $t9
/* 014B94 00414B94 24070010 */   addiu      $a3, $zero, 0x10
/* 014B98 00414B98 8FBC0020 */  lw          $gp, 0x20($sp)
/* 014B9C 00414B9C A2030005 */  sb          $v1, 0x5($s0)
/* 014BA0 00414BA0 8FA5002C */  lw          $a1, 0x2C($sp)
/* 014BA4 00414BA4 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 014BA8 00414BA8 8FA40028 */  lw          $a0, 0x28($sp)
/* 014BAC 00414BAC 24060000 */  addiu       $a2, $zero, 0x0
/* 014BB0 00414BB0 0320F809 */  jalr        $t9
/* 014BB4 00414BB4 24070018 */   addiu      $a3, $zero, 0x18
/* 014BB8 00414BB8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 014BBC 00414BBC A2030004 */  sb          $v1, 0x4($s0)
/* 014BC0 00414BC0 8FA5002C */  lw          $a1, 0x2C($sp)
/* 014BC4 00414BC4 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 014BC8 00414BC8 8FA40028 */  lw          $a0, 0x28($sp)
/* 014BCC 00414BCC 24060000 */  addiu       $a2, $zero, 0x0
/* 014BD0 00414BD0 0320F809 */  jalr        $t9
/* 014BD4 00414BD4 24070020 */   addiu      $a3, $zero, 0x20
/* 014BD8 00414BD8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 014BDC 00414BDC A2030003 */  sb          $v1, 0x3($s0)
/* 014BE0 00414BE0 8FA5002C */  lw          $a1, 0x2C($sp)
/* 014BE4 00414BE4 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 014BE8 00414BE8 8FA40028 */  lw          $a0, 0x28($sp)
/* 014BEC 00414BEC 24060000 */  addiu       $a2, $zero, 0x0
/* 014BF0 00414BF0 0320F809 */  jalr        $t9
/* 014BF4 00414BF4 24070028 */   addiu      $a3, $zero, 0x28
/* 014BF8 00414BF8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 014BFC 00414BFC A2030002 */  sb          $v1, 0x2($s0)
/* 014C00 00414C00 8FA5002C */  lw          $a1, 0x2C($sp)
/* 014C04 00414C04 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 014C08 00414C08 8FA40028 */  lw          $a0, 0x28($sp)
/* 014C0C 00414C0C 24060000 */  addiu       $a2, $zero, 0x0
/* 014C10 00414C10 0320F809 */  jalr        $t9
/* 014C14 00414C14 24070030 */   addiu      $a3, $zero, 0x30
/* 014C18 00414C18 8FBC0020 */  lw          $gp, 0x20($sp)
/* 014C1C 00414C1C A2030001 */  sb          $v1, 0x1($s0)
/* 014C20 00414C20 8FA5002C */  lw          $a1, 0x2C($sp)
/* 014C24 00414C24 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 014C28 00414C28 8FA40028 */  lw          $a0, 0x28($sp)
/* 014C2C 00414C2C 24060000 */  addiu       $a2, $zero, 0x0
/* 014C30 00414C30 0320F809 */  jalr        $t9
/* 014C34 00414C34 24070038 */   addiu      $a3, $zero, 0x38
/* 014C38 00414C38 26310008 */  addiu       $s1, $s1, 0x8
/* 014C3C 00414C3C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 014C40 00414C40 0232082B */  sltu        $at, $s1, $s2
/* 014C44 00414C44 A2030000 */  sb          $v1, 0x0($s0)
/* 014C48 00414C48 0060C825 */  move        $t9, $v1
/* 014C4C 00414C4C 1420FFBF */  bnez        $at, .L00414B4C
/* 014C50 00414C50 26100008 */   addiu      $s0, $s0, 0x8
/* 014C54 00414C54 8FBF0024 */  lw          $ra, 0x24($sp)
/* 014C58 00414C58 8FB00014 */  lw          $s0, 0x14($sp)
/* 014C5C 00414C5C 8FB10018 */  lw          $s1, 0x18($sp)
/* 014C60 00414C60 8FB2001C */  lw          $s2, 0x1C($sp)
/* 014C64 00414C64 03E00008 */  jr          $ra
/* 014C68 00414C68 27BD0038 */   addiu      $sp, $sp, 0x38
