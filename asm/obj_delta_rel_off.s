glabel obj_delta_rel_off # 478
/* 02B2C4 0042B2C4 8C8E01B0 */  lw          $t6, 0x1B0($a0)
/* 02B2C8 0042B2C8 000578C0 */  sll         $t7, $a1, 3
/* 02B2CC 0042B2CC 01CFC021 */  addu        $t8, $t6, $t7
/* 02B2D0 0042B2D0 03E00008 */  jr          $ra
/* 02B2D4 0042B2D4 8F020000 */   lw         $v0, 0x0($t8)
