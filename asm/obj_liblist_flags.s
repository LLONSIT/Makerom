glabel obj_liblist_flags # 439
/* 02ACB8 0042ACB8 8C8E0134 */  lw          $t6, 0x134($a0)
/* 02ACBC 0042ACBC 00057880 */  sll         $t7, $a1, 2
/* 02ACC0 0042ACC0 01E57821 */  addu        $t7, $t7, $a1
/* 02ACC4 0042ACC4 000F7880 */  sll         $t7, $t7, 2
/* 02ACC8 0042ACC8 01CFC021 */  addu        $t8, $t6, $t7
/* 02ACCC 0042ACCC 03E00008 */  jr          $ra
/* 02ACD0 0042ACD0 8F020010 */   lw         $v0, 0x10($t8)
