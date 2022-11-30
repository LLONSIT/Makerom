glabel obj_section_vaddr # 454
/* 02B074 0042B074 8C82008C */  lw          $v0, 0x8C($a0)
/* 02B078 0042B078 24010002 */  addiu       $at, $zero, 0x2
/* 02B07C 0042B07C 54410004 */  bnel        $v0, $at, .L0042B090
/* 02B080 0042B080 24010003 */   addiu      $at, $zero, 0x3
/* 02B084 0042B084 03E00008 */  jr          $ra
/* 02B088 0042B088 8CA2000C */   lw         $v0, 0xC($a1)
/* 02B08C 0042B08C 24010003 */  addiu       $at, $zero, 0x3
.L0042B090:
/* 02B090 0042B090 54410004 */  bnel        $v0, $at, .L0042B0A4
/* 02B094 0042B094 00001025 */   move       $v0, $zero
/* 02B098 0042B098 03E00008 */  jr          $ra
/* 02B09C 0042B09C 8CA2000C */   lw         $v0, 0xC($a1)
/* 02B0A0 0042B0A0 00001025 */  move        $v0, $zero
.L0042B0A4:
/* 02B0A4 0042B0A4 03E00008 */  jr          $ra
/* 02B0A8 0042B0A8 00000000 */   nop
