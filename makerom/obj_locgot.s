glabel obj_locgot # 424
/* 02AB10 0042AB10 8C8E0128 */  lw          $t6, 0x128($a0)
/* 02AB14 0042AB14 00057880 */  sll         $t7, $a1, 2
/* 02AB18 0042AB18 01CFC021 */  addu        $t8, $t6, $t7
/* 02AB1C 0042AB1C 03E00008 */  jr          $ra
/* 02AB20 0042AB20 8F020000 */   lw         $v0, 0x0($t8)
