glabel __sgi_dbx_freeldptr # 217
# _gp_disp: 0xFBF8DC8
.set noreorder; .cpload $t9; # .set reorder
/* 024F84 00424F84 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 024F88 00424F88 8F998268 */  lw          $t9, %call16(__sgi_dbx_obj_close)($gp)
/* 024F8C 00424F8C AFB00014 */  sw          $s0, 0x14($sp)
/* 024F90 00424F90 00808025 */  move        $s0, $a0
/* 024F94 00424F94 AFBF001C */  sw          $ra, 0x1C($sp)
/* 024F98 00424F98 AFBC0018 */  sw          $gp, 0x18($sp)
/* 024F9C 00424F9C 0320F809 */  jalr        $t9
/* 024FA0 00424FA0 8C84002C */   lw         $a0, 0x2C($a0)
/* 024FA4 00424FA4 8E020020 */  lw          $v0, 0x20($s0)
/* 024FA8 00424FA8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 024FAC 00424FAC AE00002C */  sw          $zero, 0x2C($s0)
/* 024FB0 00424FB0 10400011 */  beqz        $v0, .L00424FF8
/* 024FB4 00424FB4 00000000 */   nop
/* 024FB8 00424FB8 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 024FBC 00424FBC 8C440048 */  lw          $a0, 0x48($v0)
/* 024FC0 00424FC0 0320F809 */  jalr        $t9
/* 024FC4 00424FC4 00000000 */   nop
/* 024FC8 00424FC8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 024FCC 00424FCC 8E0E0020 */  lw          $t6, 0x20($s0)
/* 024FD0 00424FD0 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 024FD4 00424FD4 8DC40004 */  lw          $a0, 0x4($t6)
/* 024FD8 00424FD8 0320F809 */  jalr        $t9
/* 024FDC 00424FDC 00000000 */   nop
/* 024FE0 00424FE0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 024FE4 00424FE4 8E040020 */  lw          $a0, 0x20($s0)
/* 024FE8 00424FE8 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 024FEC 00424FEC 0320F809 */  jalr        $t9
/* 024FF0 00424FF0 00000000 */   nop
/* 024FF4 00424FF4 8FBC0018 */  lw          $gp, 0x18($sp)
.L00424FF8:
/* 024FF8 00424FF8 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 024FFC 00424FFC 02002025 */  move        $a0, $s0
/* 025000 00425000 0320F809 */  jalr        $t9
/* 025004 00425004 00000000 */   nop
/* 025008 00425008 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02500C 0042500C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 025010 00425010 8FB00014 */  lw          $s0, 0x14($sp)
/* 025014 00425014 27BD0020 */  addiu       $sp, $sp, 0x20
/* 025018 00425018 03E00008 */  jr          $ra
/* 02501C 0042501C 24020001 */   addiu      $v0, $zero, 0x1
