glabel swap_dynsym # 513
/* 02DB7C 0042DB7C AFA50004 */  sw          $a1, 0x4($sp)
/* 02DB80 0042DB80 8C820000 */  lw          $v0, 0x0($a0)
/* 02DB84 0042DB84 8C830004 */  lw          $v1, 0x4($a0)
/* 02DB88 0042DB88 3C0700FF */  lui         $a3, (0xFF0000 >> 16)
/* 02DB8C 0042DB8C 00027A00 */  sll         $t7, $v0, 8
/* 02DB90 0042DB90 01E7C024 */  and         $t8, $t7, $a3
/* 02DB94 0042DB94 00027600 */  sll         $t6, $v0, 24
/* 02DB98 0042DB98 00024202 */  srl         $t0, $v0, 8
/* 02DB9C 0042DB9C 3109FF00 */  andi        $t1, $t0, 0xFF00
/* 02DBA0 0042DBA0 01D8C825 */  or          $t9, $t6, $t8
/* 02DBA4 0042DBA4 03295025 */  or          $t2, $t9, $t1
/* 02DBA8 0042DBA8 00037A00 */  sll         $t7, $v1, 8
/* 02DBAC 0042DBAC 01E77024 */  and         $t6, $t7, $a3
/* 02DBB0 0042DBB0 00025E02 */  srl         $t3, $v0, 24
/* 02DBB4 0042DBB4 00034202 */  srl         $t0, $v1, 8
/* 02DBB8 0042DBB8 00036E00 */  sll         $t5, $v1, 24
/* 02DBBC 0042DBBC 014B6025 */  or          $t4, $t2, $t3
/* 02DBC0 0042DBC0 01AEC025 */  or          $t8, $t5, $t6
/* 02DBC4 0042DBC4 3119FF00 */  andi        $t9, $t0, 0xFF00
/* 02DBC8 0042DBC8 8C850008 */  lw          $a1, 0x8($a0)
/* 02DBCC 0042DBCC 03194825 */  or          $t1, $t8, $t9
/* 02DBD0 0042DBD0 00035602 */  srl         $t2, $v1, 24
/* 02DBD4 0042DBD4 012A5825 */  or          $t3, $t1, $t2
/* 02DBD8 0042DBD8 AC8B0004 */  sw          $t3, 0x4($a0)
/* 02DBDC 0042DBDC 948B000E */  lhu         $t3, 0xE($a0)
/* 02DBE0 0042DBE0 AC8C0000 */  sw          $t4, 0x0($a0)
/* 02DBE4 0042DBE4 00057A00 */  sll         $t7, $a1, 8
/* 02DBE8 0042DBE8 01E76824 */  and         $t5, $t7, $a3
/* 02DBEC 0042DBEC 00056600 */  sll         $t4, $a1, 24
/* 02DBF0 0042DBF0 018D7025 */  or          $t6, $t4, $t5
/* 02DBF4 0042DBF4 00054202 */  srl         $t0, $a1, 8
/* 02DBF8 0042DBF8 3118FF00 */  andi        $t8, $t0, 0xFF00
/* 02DBFC 0042DBFC 01D8C825 */  or          $t9, $t6, $t8
/* 02DC00 0042DC00 00054E02 */  srl         $t1, $a1, 24
/* 02DC04 0042DC04 000B6202 */  srl         $t4, $t3, 8
/* 02DC08 0042DC08 000B7A00 */  sll         $t7, $t3, 8
/* 02DC0C 0042DC0C 03295025 */  or          $t2, $t9, $t1
/* 02DC10 0042DC10 01EC6825 */  or          $t5, $t7, $t4
/* 02DC14 0042DC14 AC8A0008 */  sw          $t2, 0x8($a0)
/* 02DC18 0042DC18 03E00008 */  jr          $ra
/* 02DC1C 0042DC1C A48D000E */   sh         $t5, 0xE($a0)
