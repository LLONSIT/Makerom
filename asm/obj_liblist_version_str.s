glabel obj_liblist_version_str # 437
/* 02AC78 0042AC78 8C8E0134 */  lw          $t6, 0x134($a0)
/* 02AC7C 0042AC7C 00057880 */  sll         $t7, $a1, 2
/* 02AC80 0042AC80 01E57821 */  addu        $t7, $t7, $a1
/* 02AC84 0042AC84 000F7880 */  sll         $t7, $t7, 2
/* 02AC88 0042AC88 01CFC021 */  addu        $t8, $t6, $t7
/* 02AC8C 0042AC8C 8F19000C */  lw          $t9, 0xC($t8)
/* 02AC90 0042AC90 8C88011C */  lw          $t0, 0x11C($a0)
/* 02AC94 0042AC94 03E00008 */  jr          $ra
/* 02AC98 0042AC98 03281021 */   addu       $v0, $t9, $t0
