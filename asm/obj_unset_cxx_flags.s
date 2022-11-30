glabel obj_unset_cxx_flags # 390
/* 02A698 0042A698 8C8E01C8 */  lw          $t6, 0x1C8($a0)
/* 02A69C 0042A69C 00A07827 */  not         $t7, $a1
/* 02A6A0 0042A6A0 01CFC024 */  and         $t8, $t6, $t7
/* 02A6A4 0042A6A4 03E00008 */  jr          $ra
/* 02A6A8 0042A6A8 AC9801C8 */   sw         $t8, 0x1C8($a0)
