glabel freeldptr # 216
# _gp_disp: 0xFBF8E80
.set noreorder; .cpload $t9; # .set reorder
/* 024ECC 00424ECC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 024ED0 00424ED0 AFBF001C */  sw          $ra, 0x1C($sp)
/* 024ED4 00424ED4 AFBC0018 */  sw          $gp, 0x18($sp)
/* 024ED8 00424ED8 AFB00014 */  sw          $s0, 0x14($sp)
/* 024EDC 00424EDC 8C85002C */  lw          $a1, 0x2C($a0)
/* 024EE0 00424EE0 00808025 */  move        $s0, $a0
/* 024EE4 00424EE4 50A00007 */  beql        $a1, $zero, .L00424F04
/* 024EE8 00424EE8 8E020020 */   lw         $v0, 0x20($s0)
/* 024EEC 00424EEC 8F99827C */  lw          $t9, %call16(obj_close)($gp)
/* 024EF0 00424EF0 00A02025 */  move        $a0, $a1
/* 024EF4 00424EF4 0320F809 */  jalr        $t9
/* 024EF8 00424EF8 00000000 */   nop
/* 024EFC 00424EFC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 024F00 00424F00 8E020020 */  lw          $v0, 0x20($s0)
.L00424F04:
/* 024F04 00424F04 AE00002C */  sw          $zero, 0x2C($s0)
/* 024F08 00424F08 10400011 */  beqz        $v0, .L00424F50
/* 024F0C 00424F0C 00000000 */   nop
/* 024F10 00424F10 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 024F14 00424F14 8C440048 */  lw          $a0, 0x48($v0)
/* 024F18 00424F18 0320F809 */  jalr        $t9
/* 024F1C 00424F1C 00000000 */   nop
/* 024F20 00424F20 8FBC0018 */  lw          $gp, 0x18($sp)
/* 024F24 00424F24 8E0E0020 */  lw          $t6, 0x20($s0)
/* 024F28 00424F28 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 024F2C 00424F2C 8DC40004 */  lw          $a0, 0x4($t6)
/* 024F30 00424F30 0320F809 */  jalr        $t9
/* 024F34 00424F34 00000000 */   nop
/* 024F38 00424F38 8FBC0018 */  lw          $gp, 0x18($sp)
/* 024F3C 00424F3C 8E040020 */  lw          $a0, 0x20($s0)
/* 024F40 00424F40 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 024F44 00424F44 0320F809 */  jalr        $t9
/* 024F48 00424F48 00000000 */   nop
/* 024F4C 00424F4C 8FBC0018 */  lw          $gp, 0x18($sp)
.L00424F50:
/* 024F50 00424F50 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 024F54 00424F54 02002025 */  move        $a0, $s0
/* 024F58 00424F58 0320F809 */  jalr        $t9
/* 024F5C 00424F5C 00000000 */   nop
/* 024F60 00424F60 8FBF001C */  lw          $ra, 0x1C($sp)
/* 024F64 00424F64 8FBC0018 */  lw          $gp, 0x18($sp)
/* 024F68 00424F68 8FB00014 */  lw          $s0, 0x14($sp)
/* 024F6C 00424F6C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 024F70 00424F70 03E00008 */  jr          $ra
/* 024F74 00424F74 24020001 */   addiu      $v0, $zero, 0x1
