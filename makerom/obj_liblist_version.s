glabel obj_liblist_version # 438
/* 02AC9C 0042AC9C 8C8E0134 */  lw          $t6, 0x134($a0)
/* 02ACA0 0042ACA0 00057880 */  sll         $t7, $a1, 2
/* 02ACA4 0042ACA4 01E57821 */  addu        $t7, $t7, $a1
/* 02ACA8 0042ACA8 000F7880 */  sll         $t7, $t7, 2
/* 02ACAC 0042ACAC 01CFC021 */  addu        $t8, $t6, $t7
/* 02ACB0 0042ACB0 03E00008 */  jr          $ra
/* 02ACB4 0042ACB4 8F02000C */   lw         $v0, 0xC($t8)
