glabel obj_dynsym_rel_index # 426
/* 02AB38 0042AB38 8C8E0124 */  lw          $t6, 0x124($a0)
/* 02AB3C 0042AB3C 000578C0 */  sll         $t7, $a1, 3
/* 02AB40 0042AB40 01CFC021 */  addu        $t8, $t6, $t7
/* 02AB44 0042AB44 8F020004 */  lw          $v0, 0x4($t8)
/* 02AB48 0042AB48 03E00008 */  jr          $ra
/* 02AB4C 0042AB4C 00021202 */   srl        $v0, $v0, 8
