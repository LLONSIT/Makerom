glabel obj_hash_bucket # 420
/* 02A97C 0042A97C 8C8E0118 */  lw          $t6, 0x118($a0)
/* 02A980 0042A980 00057880 */  sll         $t7, $a1, 2
/* 02A984 0042A984 01CFC021 */  addu        $t8, $t6, $t7
/* 02A988 0042A988 03E00008 */  jr          $ra
/* 02A98C 0042A98C 8F020008 */   lw         $v0, 0x8($t8)
