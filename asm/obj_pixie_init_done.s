glabel obj_pixie_init_done # 398
/* 02A704 0042A704 8C820178 */  lw          $v0, 0x178($a0)
/* 02A708 0042A708 3C010002 */  lui         $at, (0x20000 >> 16)
/* 02A70C 0042A70C 03E00008 */  jr          $ra
/* 02A710 0042A710 00411024 */   and        $v0, $v0, $at
