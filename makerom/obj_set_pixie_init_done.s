glabel obj_set_pixie_init_done # 399
/* 02A714 0042A714 8C8E0178 */  lw          $t6, 0x178($a0)
/* 02A718 0042A718 3C010002 */  lui         $at, (0x20000 >> 16)
/* 02A71C 0042A71C 01C17825 */  or          $t7, $t6, $at
/* 02A720 0042A720 03E00008 */  jr          $ra
/* 02A724 0042A724 AC8F0178 */   sw         $t7, 0x178($a0)
