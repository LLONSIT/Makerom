glabel obj_set_msym_ms_hash_value # 430
/* 02AB8C 0042AB8C 8C8E0124 */  lw          $t6, 0x124($a0)
/* 02AB90 0042AB90 000578C0 */  sll         $t7, $a1, 3
/* 02AB94 0042AB94 01CFC021 */  addu        $t8, $t6, $t7
/* 02AB98 0042AB98 03E00008 */  jr          $ra
/* 02AB9C 0042AB9C AF060000 */   sw         $a2, 0x0($t8)
