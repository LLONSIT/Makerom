glabel obj_conflict_symbol # 433
/* 02ABC8 0042ABC8 8C8E0138 */  lw          $t6, 0x138($a0)
/* 02ABCC 0042ABCC 00057880 */  sll         $t7, $a1, 2
/* 02ABD0 0042ABD0 01CFC021 */  addu        $t8, $t6, $t7
/* 02ABD4 0042ABD4 03E00008 */  jr          $ra
/* 02ABD8 0042ABD8 8F020000 */   lw         $v0, 0x0($t8)
