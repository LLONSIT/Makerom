glabel obj_get_delta_version # 395
/* 02A6D8 0042A6D8 8C8201C8 */  lw          $v0, 0x1C8($a0)
/* 02A6DC 0042A6DC 3C01F000 */  lui         $at, (0xF0000000 >> 16)
/* 02A6E0 0042A6E0 00411024 */  and         $v0, $v0, $at
/* 02A6E4 0042A6E4 03E00008 */  jr          $ra
/* 02A6E8 0042A6E8 00021702 */   srl        $v0, $v0, 28
