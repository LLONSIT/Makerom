glabel st_set_non_gp # 658
/* 03AEAC 0043AEAC 948E0008 */  lhu         $t6, 0x8($a0)
/* 03AEB0 0043AEB0 31CFFC1F */  andi        $t7, $t6, 0xFC1F
/* 03AEB4 0043AEB4 35F80360 */  ori         $t8, $t7, 0x360
/* 03AEB8 0043AEB8 03E00008 */  jr          $ra
/* 03AEBC 0043AEBC A4980008 */   sh         $t8, 0x8($a0)
