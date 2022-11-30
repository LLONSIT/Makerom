glabel obj_set_local_got # 425
/* 02AB24 0042AB24 8C8E0128 */  lw          $t6, 0x128($a0)
/* 02AB28 0042AB28 00057880 */  sll         $t7, $a1, 2
/* 02AB2C 0042AB2C 01CFC021 */  addu        $t8, $t6, $t7
/* 02AB30 0042AB30 03E00008 */  jr          $ra
/* 02AB34 0042AB34 AF060000 */   sw         $a2, 0x0($t8)
