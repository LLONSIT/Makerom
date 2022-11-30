glabel obj_sym_other # 409
/* 02A82C 0042A82C 8C8E0120 */  lw          $t6, 0x120($a0)
/* 02A830 0042A830 00057900 */  sll         $t7, $a1, 4
/* 02A834 0042A834 01CFC021 */  addu        $t8, $t6, $t7
/* 02A838 0042A838 03E00008 */  jr          $ra
/* 02A83C 0042A83C 9302000D */   lbu        $v0, 0xD($t8)
