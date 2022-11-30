glabel obj_liblist_tstamp # 435
/* 02AC40 0042AC40 8C8E0134 */  lw          $t6, 0x134($a0)
/* 02AC44 0042AC44 00057880 */  sll         $t7, $a1, 2
/* 02AC48 0042AC48 01E57821 */  addu        $t7, $t7, $a1
/* 02AC4C 0042AC4C 000F7880 */  sll         $t7, $t7, 2
/* 02AC50 0042AC50 01CFC021 */  addu        $t8, $t6, $t7
/* 02AC54 0042AC54 03E00008 */  jr          $ra
/* 02AC58 0042AC58 8F020004 */   lw         $v0, 0x4($t8)
