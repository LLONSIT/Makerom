glabel obj_unset_rldflag # 381
/* 02A620 0042A620 8C8E0178 */  lw          $t6, 0x178($a0)
/* 02A624 0042A624 00A07827 */  not         $t7, $a1
/* 02A628 0042A628 01CFC024 */  and         $t8, $t6, $t7
/* 02A62C 0042A62C 03E00008 */  jr          $ra
/* 02A630 0042A630 AC980178 */   sw         $t8, 0x178($a0)
