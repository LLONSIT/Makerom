glabel obj_section_type # 564
# _gp_disp: 0xFBED8DC
.set noreorder; .cpload $t9; # .set reorder
/* 030470 00430470 8F998518 */  lw          $t9, %call16(foreach_obj)($gp)
/* 030474 00430474 00A03025 */  move        $a2, $a1
/* 030478 00430478 8F858020 */  lw          $a1, %got(func_004303F0)($gp)
/* 03047C 0043047C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 030480 00430480 AFBF001C */  sw          $ra, 0x1C($sp)
/* 030484 00430484 AFBC0018 */  sw          $gp, 0x18($sp)
/* 030488 00430488 0320F809 */  jalr        $t9
/* 03048C 0043048C 24A503F0 */   addiu      $a1, $a1, %lo(func_004303F0)
/* 030490 00430490 2401FFFF */  addiu       $at, $zero, -0x1
/* 030494 00430494 10410003 */  beq         $v0, $at, .L004304A4
/* 030498 00430498 8FBC0018 */   lw         $gp, 0x18($sp)
/* 03049C 0043049C 10000003 */  b           .L004304AC
/* 0304A0 004304A0 8FBF001C */   lw         $ra, 0x1C($sp)
.L004304A4:
/* 0304A4 004304A4 00001025 */  move        $v0, $zero
/* 0304A8 004304A8 8FBF001C */  lw          $ra, 0x1C($sp)
.L004304AC:
/* 0304AC 004304AC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0304B0 004304B0 03E00008 */  jr          $ra
/* 0304B4 004304B4 00000000 */   nop
/* 0304B8 004304B8 00000000 */  nop
/* 0304BC 004304BC 00000000 */  nop
