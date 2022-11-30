glabel obj_section_index_bits # 453
# _gp_disp: 0xFBF2D1C
.set noreorder; .cpload $t9; # .set reorder
/* 02B030 0042B030 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 02B034 0042B034 8F998434 */  lw          $t9, %call16(obj_section)($gp)
/* 02B038 0042B038 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02B03C 0042B03C AFA40048 */  sw          $a0, 0x48($sp)
/* 02B040 0042B040 00A03025 */  move        $a2, $a1
/* 02B044 0042B044 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02B048 0042B048 8FA50048 */  lw          $a1, 0x48($sp)
/* 02B04C 0042B04C 0320F809 */  jalr        $t9
/* 02B050 0042B050 27A40020 */   addiu      $a0, $sp, 0x20
/* 02B054 0042B054 8FAF0048 */  lw          $t7, 0x48($sp)
/* 02B058 0042B058 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02B05C 0042B05C 8FAE0030 */  lw          $t6, 0x30($sp)
/* 02B060 0042B060 8DF800C4 */  lw          $t8, 0xC4($t7)
/* 02B064 0042B064 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02B068 0042B068 27BD0048 */  addiu       $sp, $sp, 0x48
/* 02B06C 0042B06C 03E00008 */  jr          $ra
/* 02B070 0042B070 01D81021 */   addu       $v0, $t6, $t8
