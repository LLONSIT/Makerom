glabel obj_sym_info # 414
/* 02A8C0 0042A8C0 8C8E0120 */  lw          $t6, 0x120($a0)
/* 02A8C4 0042A8C4 00057900 */  sll         $t7, $a1, 4
/* 02A8C8 0042A8C8 01CFC021 */  addu        $t8, $t6, $t7
/* 02A8CC 0042A8CC 03E00008 */  jr          $ra
/* 02A8D0 0042A8D0 9302000C */   lbu        $v0, 0xC($t8)
