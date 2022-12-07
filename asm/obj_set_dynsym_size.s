glabel obj_set_dynsym_size # 411
/* 02A854 0042A854 8C8E0120 */  lw          $t6, 0x120($a0)
/* 02A858 0042A858 00057900 */  sll         $t7, $a1, 4
/* 02A85C 0042A85C 01CFC021 */  addu        $t8, $t6, $t7
/* 02A860 0042A860 03E00008 */  jr          $ra
/* 02A864 0042A864 AF060008 */   sw         $a2, 0x8($t8)
