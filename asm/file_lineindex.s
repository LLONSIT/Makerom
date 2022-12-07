glabel file_lineindex # 537
/* 02F1A0 0042F1A0 8C9900D0 */  lw          $t9, 0xD0($a0)
/* 02F1A4 0042F1A4 8C8E00A0 */  lw          $t6, 0xA0($a0)
/* 02F1A8 0042F1A8 000578C0 */  sll         $t7, $a1, 3
/* 02F1AC 0042F1AC 001940C0 */  sll         $t0, $t9, 3
/* 02F1B0 0042F1B0 01E57821 */  addu        $t7, $t7, $a1
/* 02F1B4 0042F1B4 01194021 */  addu        $t0, $t0, $t9
/* 02F1B8 0042F1B8 000840C0 */  sll         $t0, $t0, 3
/* 02F1BC 0042F1BC 000F78C0 */  sll         $t7, $t7, 3
/* 02F1C0 0042F1C0 00084823 */  negu        $t1, $t0
/* 02F1C4 0042F1C4 01CFC021 */  addu        $t8, $t6, $t7
/* 02F1C8 0042F1C8 03091821 */  addu        $v1, $t8, $t1
/* 02F1CC 0042F1CC 8C6A001C */  lw          $t2, 0x1C($v1)
/* 02F1D0 0042F1D0 5D400004 */  bgtzl       $t2, .L0042F1E4
/* 02F1D4 0042F1D4 8C620018 */   lw         $v0, 0x18($v1)
/* 02F1D8 0042F1D8 03E00008 */  jr          $ra
/* 02F1DC 0042F1DC 2402FFFF */   addiu      $v0, $zero, -0x1
/* 02F1E0 0042F1E0 8C620018 */  lw          $v0, 0x18($v1)
.L0042F1E4:
/* 02F1E4 0042F1E4 03E00008 */  jr          $ra
/* 02F1E8 0042F1E8 00000000 */   nop
