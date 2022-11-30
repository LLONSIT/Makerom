glabel obj_set_dynsym_value # 408
/* 02A818 0042A818 8C8E0120 */  lw          $t6, 0x120($a0)
/* 02A81C 0042A81C 00057900 */  sll         $t7, $a1, 4
/* 02A820 0042A820 01CFC021 */  addu        $t8, $t6, $t7
/* 02A824 0042A824 03E00008 */  jr          $ra
/* 02A828 0042A828 AF060004 */   sw         $a2, 0x4($t8)
