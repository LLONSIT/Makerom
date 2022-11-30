glabel swap_reginfo # 512
/* 02DA64 0042DA64 AFA50004 */  sw          $a1, 0x4($sp)
/* 02DA68 0042DA68 8C820000 */  lw          $v0, 0x0($a0)
/* 02DA6C 0042DA6C 8C830004 */  lw          $v1, 0x4($a0)
/* 02DA70 0042DA70 3C0700FF */  lui         $a3, (0xFF0000 >> 16)
/* 02DA74 0042DA74 00027A00 */  sll         $t7, $v0, 8
/* 02DA78 0042DA78 01E7C024 */  and         $t8, $t7, $a3
/* 02DA7C 0042DA7C 00027600 */  sll         $t6, $v0, 24
/* 02DA80 0042DA80 00024202 */  srl         $t0, $v0, 8
/* 02DA84 0042DA84 3109FF00 */  andi        $t1, $t0, 0xFF00
/* 02DA88 0042DA88 01D8C825 */  or          $t9, $t6, $t8
/* 02DA8C 0042DA8C 03295025 */  or          $t2, $t9, $t1
/* 02DA90 0042DA90 00025E02 */  srl         $t3, $v0, 24
/* 02DA94 0042DA94 8C850008 */  lw          $a1, 0x8($a0)
/* 02DA98 0042DA98 014B6025 */  or          $t4, $t2, $t3
/* 02DA9C 0042DA9C 0003C200 */  sll         $t8, $v1, 8
/* 02DAA0 0042DAA0 00037E00 */  sll         $t7, $v1, 24
/* 02DAA4 0042DAA4 00036E02 */  srl         $t5, $v1, 24
/* 02DAA8 0042DAA8 01AF7025 */  or          $t6, $t5, $t7
/* 02DAAC 0042DAAC 03074024 */  and         $t0, $t8, $a3
/* 02DAB0 0042DAB0 00034A02 */  srl         $t1, $v1, 8
/* 02DAB4 0042DAB4 8C86000C */  lw          $a2, 0xC($a0)
/* 02DAB8 0042DAB8 AC8C0000 */  sw          $t4, 0x0($a0)
/* 02DABC 0042DABC 312AFF00 */  andi        $t2, $t1, 0xFF00
/* 02DAC0 0042DAC0 01C8C825 */  or          $t9, $t6, $t0
/* 02DAC4 0042DAC4 032A5825 */  or          $t3, $t9, $t2
/* 02DAC8 0042DAC8 00056602 */  srl         $t4, $a1, 24
/* 02DACC 0042DACC 00056E00 */  sll         $t5, $a1, 24
/* 02DAD0 0042DAD0 018D7825 */  or          $t7, $t4, $t5
/* 02DAD4 0042DAD4 0005C200 */  sll         $t8, $a1, 8
/* 02DAD8 0042DAD8 8C820010 */  lw          $v0, 0x10($a0)
/* 02DADC 0042DADC AC8B0004 */  sw          $t3, 0x4($a0)
/* 02DAE0 0042DAE0 03077024 */  and         $t6, $t8, $a3
/* 02DAE4 0042DAE4 00054A02 */  srl         $t1, $a1, 8
/* 02DAE8 0042DAE8 3139FF00 */  andi        $t9, $t1, 0xFF00
/* 02DAEC 0042DAEC 01EE4025 */  or          $t0, $t7, $t6
/* 02DAF0 0042DAF0 00065E02 */  srl         $t3, $a2, 24
/* 02DAF4 0042DAF4 00066600 */  sll         $t4, $a2, 24
/* 02DAF8 0042DAF8 01195025 */  or          $t2, $t0, $t9
/* 02DAFC 0042DAFC 016C6825 */  or          $t5, $t3, $t4
/* 02DB00 0042DB00 0006C200 */  sll         $t8, $a2, 8
/* 02DB04 0042DB04 AC8A0008 */  sw          $t2, 0x8($a0)
/* 02DB08 0042DB08 03077824 */  and         $t7, $t8, $a3
/* 02DB0C 0042DB0C 8C830014 */  lw          $v1, 0x14($a0)
/* 02DB10 0042DB10 01AF7025 */  or          $t6, $t5, $t7
/* 02DB14 0042DB14 00064A02 */  srl         $t1, $a2, 8
/* 02DB18 0042DB18 00025602 */  srl         $t2, $v0, 24
/* 02DB1C 0042DB1C 00025E00 */  sll         $t3, $v0, 24
/* 02DB20 0042DB20 3128FF00 */  andi        $t0, $t1, 0xFF00
/* 02DB24 0042DB24 014B6025 */  or          $t4, $t2, $t3
/* 02DB28 0042DB28 0002C200 */  sll         $t8, $v0, 8
/* 02DB2C 0042DB2C 01C8C825 */  or          $t9, $t6, $t0
/* 02DB30 0042DB30 03076824 */  and         $t5, $t8, $a3
/* 02DB34 0042DB34 018D7825 */  or          $t7, $t4, $t5
/* 02DB38 0042DB38 AC99000C */  sw          $t9, 0xC($a0)
/* 02DB3C 0042DB3C 3C0100FF */  lui         $at, (0xFF0000 >> 16)
/* 02DB40 0042DB40 00024A02 */  srl         $t1, $v0, 8
/* 02DB44 0042DB44 00035200 */  sll         $t2, $v1, 8
/* 02DB48 0042DB48 312EFF00 */  andi        $t6, $t1, 0xFF00
/* 02DB4C 0042DB4C 01415824 */  and         $t3, $t2, $at
/* 02DB50 0042DB50 0003CE00 */  sll         $t9, $v1, 24
/* 02DB54 0042DB54 00036203 */  sra         $t4, $v1, 8
/* 02DB58 0042DB58 01EE4025 */  or          $t0, $t7, $t6
/* 02DB5C 0042DB5C 318DFF00 */  andi        $t5, $t4, 0xFF00
/* 02DB60 0042DB60 032BC025 */  or          $t8, $t9, $t3
/* 02DB64 0042DB64 030D4825 */  or          $t1, $t8, $t5
/* 02DB68 0042DB68 00037E02 */  srl         $t7, $v1, 24
/* 02DB6C 0042DB6C 012F7025 */  or          $t6, $t1, $t7
/* 02DB70 0042DB70 AC880010 */  sw          $t0, 0x10($a0)
/* 02DB74 0042DB74 03E00008 */  jr          $ra
/* 02DB78 0042DB78 AC8E0014 */   sw         $t6, 0x14($a0)
