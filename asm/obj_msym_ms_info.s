glabel obj_msym_ms_info # 427
/* 02AB50 0042AB50 8C8E0124 */  lw          $t6, 0x124($a0)
/* 02AB54 0042AB54 000578C0 */  sll         $t7, $a1, 3
/* 02AB58 0042AB58 01CFC021 */  addu        $t8, $t6, $t7
/* 02AB5C 0042AB5C 03E00008 */  jr          $ra
/* 02AB60 0042AB60 8F020004 */   lw         $v0, 0x4($t8)
