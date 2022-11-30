glabel func_0042FCD8 # 555
# _gp_disp: 0xFBEE068
.set noreorder; .cpload $t9; # .set reorder
/* 02FCE4 0042FCE4 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 02FCE8 0042FCE8 8F998444 */  lw          $t9, %call16(obj_section_vaddr)($gp)
/* 02FCEC 0042FCEC AFBF0024 */  sw          $ra, 0x24($sp)
/* 02FCF0 0042FCF0 AFB2001C */  sw          $s2, 0x1C($sp)
/* 02FCF4 0042FCF4 AFB10018 */  sw          $s1, 0x18($sp)
/* 02FCF8 0042FCF8 00808825 */  move        $s1, $a0
/* 02FCFC 0042FCFC 00A09025 */  move        $s2, $a1
/* 02FD00 0042FD00 AFBC0020 */  sw          $gp, 0x20($sp)
/* 02FD04 0042FD04 AFB00014 */  sw          $s0, 0x14($sp)
/* 02FD08 0042FD08 0320F809 */  jalr        $t9
/* 02FD0C 0042FD0C AFA60040 */   sw         $a2, 0x40($sp)
/* 02FD10 0042FD10 8FBC0020 */  lw          $gp, 0x20($sp)
/* 02FD14 0042FD14 00408025 */  move        $s0, $v0
/* 02FD18 0042FD18 02202025 */  move        $a0, $s1
/* 02FD1C 0042FD1C 8F99838C */  lw          $t9, %call16(obj_text_start)($gp)
/* 02FD20 0042FD20 0320F809 */  jalr        $t9
/* 02FD24 0042FD24 00000000 */   nop
/* 02FD28 0042FD28 8FBC0020 */  lw          $gp, 0x20($sp)
/* 02FD2C 0042FD2C AFA2002C */  sw          $v0, 0x2C($sp)
/* 02FD30 0042FD30 02202025 */  move        $a0, $s1
/* 02FD34 0042FD34 8F9982C4 */  lw          $t9, %call16(obj_base_address)($gp)
/* 02FD38 0042FD38 0320F809 */  jalr        $t9
/* 02FD3C 0042FD3C 00000000 */   nop
/* 02FD40 0042FD40 8FBC0020 */  lw          $gp, 0x20($sp)
/* 02FD44 0042FD44 8FAE002C */  lw          $t6, 0x2C($sp)
/* 02FD48 0042FD48 02202025 */  move        $a0, $s1
/* 02FD4C 0042FD4C 8F998448 */  lw          $t9, %call16(obj_section_size)($gp)
/* 02FD50 0042FD50 020E7821 */  addu        $t7, $s0, $t6
/* 02FD54 0042FD54 01E28023 */  subu        $s0, $t7, $v0
/* 02FD58 0042FD58 0320F809 */  jalr        $t9
/* 02FD5C 0042FD5C 02402825 */   move       $a1, $s2
/* 02FD60 0042FD60 8FA60040 */  lw          $a2, 0x40($sp)
/* 02FD64 0042FD64 8FBC0020 */  lw          $gp, 0x20($sp)
/* 02FD68 0042FD68 00401825 */  move        $v1, $v0
/* 02FD6C 0042FD6C 00D0082B */  sltu        $at, $a2, $s0
/* 02FD70 0042FD70 14200006 */  bnez        $at, .L0042FD8C
/* 02FD74 0042FD74 0202C021 */   addu       $t8, $s0, $v0
/* 02FD78 0042FD78 00D8082B */  sltu        $at, $a2, $t8
/* 02FD7C 0042FD7C 10200003 */  beqz        $at, .L0042FD8C
/* 02FD80 0042FD80 00000000 */   nop
/* 02FD84 0042FD84 10000011 */  b           .L0042FDCC
/* 02FD88 0042FD88 02401025 */   move       $v0, $s2
.L0042FD8C:
/* 02FD8C 0042FD8C 8F998528 */  lw          $t9, %call16(section_type)($gp)
/* 02FD90 0042FD90 02202025 */  move        $a0, $s1
/* 02FD94 0042FD94 02402825 */  move        $a1, $s2
/* 02FD98 0042FD98 0320F809 */  jalr        $t9
/* 02FD9C 0042FD9C AFA30030 */   sw         $v1, 0x30($sp)
/* 02FDA0 0042FDA0 24010006 */  addiu       $at, $zero, 0x6
/* 02FDA4 0042FDA4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 02FDA8 0042FDA8 14410007 */  bne         $v0, $at, .L0042FDC8
/* 02FDAC 0042FDAC 8FA30030 */   lw         $v1, 0x30($sp)
/* 02FDB0 0042FDB0 8FB90040 */  lw          $t9, 0x40($sp)
/* 02FDB4 0042FDB4 02034021 */  addu        $t0, $s0, $v1
/* 02FDB8 0042FDB8 57280004 */  bnel        $t9, $t0, .L0042FDCC
/* 02FDBC 0042FDBC 2402FFFF */   addiu      $v0, $zero, -0x1
/* 02FDC0 0042FDC0 10000002 */  b           .L0042FDCC
/* 02FDC4 0042FDC4 02401025 */   move       $v0, $s2
.L0042FDC8:
/* 02FDC8 0042FDC8 2402FFFF */  addiu       $v0, $zero, -0x1
.L0042FDCC:
/* 02FDCC 0042FDCC 8FBF0024 */  lw          $ra, 0x24($sp)
/* 02FDD0 0042FDD0 8FB00014 */  lw          $s0, 0x14($sp)
/* 02FDD4 0042FDD4 8FB10018 */  lw          $s1, 0x18($sp)
/* 02FDD8 0042FDD8 8FB2001C */  lw          $s2, 0x1C($sp)
/* 02FDDC 0042FDDC 03E00008 */  jr          $ra
/* 02FDE0 0042FDE0 27BD0038 */   addiu      $sp, $sp, 0x38
