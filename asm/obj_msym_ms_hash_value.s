glabel obj_msym_ms_hash_value # 429
/* 02AB78 0042AB78 8C8E0124 */  lw          $t6, 0x124($a0)
/* 02AB7C 0042AB7C 000578C0 */  sll         $t7, $a1, 3
/* 02AB80 0042AB80 01CFC021 */  addu        $t8, $t6, $t7
/* 02AB84 0042AB84 03E00008 */  jr          $ra
/* 02AB88 0042AB88 8F020000 */   lw         $v0, 0x0($t8)
