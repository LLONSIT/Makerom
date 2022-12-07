glabel obj_rel_off # 431
/* 02ABA0 0042ABA0 8C8E0130 */  lw          $t6, 0x130($a0)
/* 02ABA4 0042ABA4 000578C0 */  sll         $t7, $a1, 3
/* 02ABA8 0042ABA8 01CFC021 */  addu        $t8, $t6, $t7
/* 02ABAC 0042ABAC 03E00008 */  jr          $ra
/* 02ABB0 0042ABB0 8F020000 */   lw         $v0, 0x0($t8)
