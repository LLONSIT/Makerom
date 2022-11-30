glabel obj_liblist_csum # 436
/* 02AC5C 0042AC5C 8C8E0134 */  lw          $t6, 0x134($a0)
/* 02AC60 0042AC60 00057880 */  sll         $t7, $a1, 2
/* 02AC64 0042AC64 01E57821 */  addu        $t7, $t7, $a1
/* 02AC68 0042AC68 000F7880 */  sll         $t7, $t7, 2
/* 02AC6C 0042AC6C 01CFC021 */  addu        $t8, $t6, $t7
/* 02AC70 0042AC70 03E00008 */  jr          $ra
/* 02AC74 0042AC74 8F020008 */   lw         $v0, 0x8($t8)
