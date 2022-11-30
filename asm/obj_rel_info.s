glabel obj_rel_info # 432
/* 02ABB4 0042ABB4 8C8E0130 */  lw          $t6, 0x130($a0)
/* 02ABB8 0042ABB8 000578C0 */  sll         $t7, $a1, 3
/* 02ABBC 0042ABBC 01CFC021 */  addu        $t8, $t6, $t7
/* 02ABC0 0042ABC0 03E00008 */  jr          $ra
/* 02ABC4 0042ABC4 8F020004 */   lw         $v0, 0x4($t8)
