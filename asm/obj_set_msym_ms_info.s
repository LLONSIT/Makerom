glabel obj_set_msym_ms_info # 428
/* 02AB64 0042AB64 8C8E0124 */  lw          $t6, 0x124($a0)
/* 02AB68 0042AB68 000578C0 */  sll         $t7, $a1, 3
/* 02AB6C 0042AB6C 01CFC021 */  addu        $t8, $t6, $t7
/* 02AB70 0042AB70 03E00008 */  jr          $ra
/* 02AB74 0042AB74 AF060004 */   sw         $a2, 0x4($t8)
