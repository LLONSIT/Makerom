glabel obj_delta_rel_info # 479
/* 02B2D8 0042B2D8 8C8E01B0 */  lw          $t6, 0x1B0($a0)
/* 02B2DC 0042B2DC 000578C0 */  sll         $t7, $a1, 3
/* 02B2E0 0042B2E0 01CFC021 */  addu        $t8, $t6, $t7
/* 02B2E4 0042B2E4 03E00008 */  jr          $ra
/* 02B2E8 0042B2E8 8F020004 */   lw         $v0, 0x4($t8)
