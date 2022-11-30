glabel obj_section_size # 455
/* 02B0AC 0042B0AC 8C82008C */  lw          $v0, 0x8C($a0)
/* 02B0B0 0042B0B0 24010002 */  addiu       $at, $zero, 0x2
/* 02B0B4 0042B0B4 54410004 */  bnel        $v0, $at, .L0042B0C8
/* 02B0B8 0042B0B8 24010003 */   addiu      $at, $zero, 0x3
/* 02B0BC 0042B0BC 03E00008 */  jr          $ra
/* 02B0C0 0042B0C0 8CA20010 */   lw         $v0, 0x10($a1)
/* 02B0C4 0042B0C4 24010003 */  addiu       $at, $zero, 0x3
.L0042B0C8:
/* 02B0C8 0042B0C8 54410004 */  bnel        $v0, $at, .L0042B0DC
/* 02B0CC 0042B0CC 00001025 */   move       $v0, $zero
/* 02B0D0 0042B0D0 03E00008 */  jr          $ra
/* 02B0D4 0042B0D4 8CA20014 */   lw         $v0, 0x14($a1)
/* 02B0D8 0042B0D8 00001025 */  move        $v0, $zero
.L0042B0DC:
/* 02B0DC 0042B0DC 03E00008 */  jr          $ra
/* 02B0E0 0042B0E0 00000000 */   nop
