glabel file_symbol_count # 542
/* 02F2C4 0042F2C4 8C9900D0 */  lw          $t9, 0xD0($a0)
/* 02F2C8 0042F2C8 8C8E00A0 */  lw          $t6, 0xA0($a0)
/* 02F2CC 0042F2CC 000578C0 */  sll         $t7, $a1, 3
/* 02F2D0 0042F2D0 001940C0 */  sll         $t0, $t9, 3
/* 02F2D4 0042F2D4 01E57821 */  addu        $t7, $t7, $a1
/* 02F2D8 0042F2D8 01194021 */  addu        $t0, $t0, $t9
/* 02F2DC 0042F2DC 000840C0 */  sll         $t0, $t0, 3
/* 02F2E0 0042F2E0 000F78C0 */  sll         $t7, $t7, 3
/* 02F2E4 0042F2E4 00084823 */  negu        $t1, $t0
/* 02F2E8 0042F2E8 01CFC021 */  addu        $t8, $t6, $t7
/* 02F2EC 0042F2EC 03095021 */  addu        $t2, $t8, $t1
/* 02F2F0 0042F2F0 03E00008 */  jr          $ra
/* 02F2F4 0042F2F4 8D420014 */   lw         $v0, 0x14($t2)
