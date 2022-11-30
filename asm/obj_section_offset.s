glabel obj_section_offset # 456
/* 02B0E4 0042B0E4 8C82008C */  lw          $v0, 0x8C($a0)
/* 02B0E8 0042B0E8 24010002 */  addiu       $at, $zero, 0x2
/* 02B0EC 0042B0EC 54410004 */  bnel        $v0, $at, .L0042B100
/* 02B0F0 0042B0F0 24010003 */   addiu      $at, $zero, 0x3
/* 02B0F4 0042B0F4 03E00008 */  jr          $ra
/* 02B0F8 0042B0F8 8CA20014 */   lw         $v0, 0x14($a1)
/* 02B0FC 0042B0FC 24010003 */  addiu       $at, $zero, 0x3
.L0042B100:
/* 02B100 0042B100 54410004 */  bnel        $v0, $at, .L0042B114
/* 02B104 0042B104 00001025 */   move       $v0, $zero
/* 02B108 0042B108 03E00008 */  jr          $ra
/* 02B10C 0042B10C 8CA20010 */   lw         $v0, 0x10($a1)
/* 02B110 0042B110 00001025 */  move        $v0, $zero
.L0042B114:
/* 02B114 0042B114 03E00008 */  jr          $ra
/* 02B118 0042B118 00000000 */   nop
