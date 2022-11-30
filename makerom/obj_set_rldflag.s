glabel obj_set_rldflag # 380
/* 02A610 0042A610 8C8E0178 */  lw          $t6, 0x178($a0)
/* 02A614 0042A614 01C57825 */  or          $t7, $t6, $a1
/* 02A618 0042A618 03E00008 */  jr          $ra
/* 02A61C 0042A61C AC8F0178 */   sw         $t7, 0x178($a0)
