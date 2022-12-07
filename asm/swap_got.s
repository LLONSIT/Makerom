glabel swap_got # 515
/* 02DC58 0042DC58 AFA50004 */  sw          $a1, 0x4($sp)
/* 02DC5C 0042DC5C 8C820000 */  lw          $v0, 0x0($a0)
/* 02DC60 0042DC60 3C0100FF */  lui         $at, (0xFF0000 >> 16)
/* 02DC64 0042DC64 00027A00 */  sll         $t7, $v0, 8
/* 02DC68 0042DC68 01E1C024 */  and         $t8, $t7, $at
/* 02DC6C 0042DC6C 00027600 */  sll         $t6, $v0, 24
/* 02DC70 0042DC70 00024202 */  srl         $t0, $v0, 8
/* 02DC74 0042DC74 3109FF00 */  andi        $t1, $t0, 0xFF00
/* 02DC78 0042DC78 01D8C825 */  or          $t9, $t6, $t8
/* 02DC7C 0042DC7C 03295025 */  or          $t2, $t9, $t1
/* 02DC80 0042DC80 00025E02 */  srl         $t3, $v0, 24
/* 02DC84 0042DC84 014B6025 */  or          $t4, $t2, $t3
/* 02DC88 0042DC88 03E00008 */  jr          $ra
/* 02DC8C 0042DC8C AC8C0000 */   sw         $t4, 0x0($a0)
