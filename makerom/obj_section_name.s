glabel obj_section_name # 457
# _gp_disp: 0xFBF2C24
.set noreorder; .cpload $t9; # .set reorder
/* 02B128 0042B128 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 02B12C 0042B12C AFBF001C */  sw          $ra, 0x1C($sp)
/* 02B130 0042B130 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02B134 0042B134 AFA50054 */  sw          $a1, 0x54($sp)
/* 02B138 0042B138 8C82008C */  lw          $v0, 0x8C($a0)
/* 02B13C 0042B13C 24010002 */  addiu       $at, $zero, 0x2
/* 02B140 0042B140 54410004 */  bnel        $v0, $at, .L0042B154
/* 02B144 0042B144 24010003 */   addiu      $at, $zero, 0x3
/* 02B148 0042B148 10000019 */  b           .L0042B1B0
/* 02B14C 0042B14C 00A01025 */   move       $v0, $a1
/* 02B150 0042B150 24010003 */  addiu       $at, $zero, 0x3
.L0042B154:
/* 02B154 0042B154 54410016 */  bnel        $v0, $at, .L0042B1B0
/* 02B158 0042B158 00001025 */   move       $v0, $zero
/* 02B15C 0042B15C 8F998438 */  lw          $t9, %call16(obj_shstrndx)($gp)
/* 02B160 0042B160 AFA40050 */  sw          $a0, 0x50($sp)
/* 02B164 0042B164 0320F809 */  jalr        $t9
/* 02B168 0042B168 00000000 */   nop
/* 02B16C 0042B16C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02B170 0042B170 27A40028 */  addiu       $a0, $sp, 0x28
/* 02B174 0042B174 8FA50050 */  lw          $a1, 0x50($sp)
/* 02B178 0042B178 8F998434 */  lw          $t9, %call16(obj_section)($gp)
/* 02B17C 0042B17C 00403025 */  move        $a2, $v0
/* 02B180 0042B180 0320F809 */  jalr        $t9
/* 02B184 0042B184 00000000 */   nop
/* 02B188 0042B188 8FAF0050 */  lw          $t7, 0x50($sp)
/* 02B18C 0042B18C 8FA80054 */  lw          $t0, 0x54($sp)
/* 02B190 0042B190 8FAE0038 */  lw          $t6, 0x38($sp)
/* 02B194 0042B194 8DF800C4 */  lw          $t8, 0xC4($t7)
/* 02B198 0042B198 8D090000 */  lw          $t1, 0x0($t0)
/* 02B19C 0042B19C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02B1A0 0042B1A0 01D8C821 */  addu        $t9, $t6, $t8
/* 02B1A4 0042B1A4 10000002 */  b           .L0042B1B0
/* 02B1A8 0042B1A8 03291021 */   addu       $v0, $t9, $t1
/* 02B1AC 0042B1AC 00001025 */  move        $v0, $zero
.L0042B1B0:
/* 02B1B0 0042B1B0 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02B1B4 0042B1B4 27BD0050 */  addiu       $sp, $sp, 0x50
/* 02B1B8 0042B1B8 03E00008 */  jr          $ra
/* 02B1BC 0042B1BC 00000000 */   nop
