glabel swap_msym # 517
/* 02DD78 0042DD78 AFA50004 */  sw          $a1, 0x4($sp)
/* 02DD7C 0042DD7C 8C820000 */  lw          $v0, 0x0($a0)
/* 02DD80 0042DD80 8C830004 */  lw          $v1, 0x4($a0)
/* 02DD84 0042DD84 3C0500FF */  lui         $a1, (0xFF0000 >> 16)
/* 02DD88 0042DD88 00027A00 */  sll         $t7, $v0, 8
/* 02DD8C 0042DD8C 01E5C024 */  and         $t8, $t7, $a1
/* 02DD90 0042DD90 00027600 */  sll         $t6, $v0, 24
/* 02DD94 0042DD94 00024202 */  srl         $t0, $v0, 8
/* 02DD98 0042DD98 3109FF00 */  andi        $t1, $t0, 0xFF00
/* 02DD9C 0042DD9C 01D8C825 */  or          $t9, $t6, $t8
/* 02DDA0 0042DDA0 03295025 */  or          $t2, $t9, $t1
/* 02DDA4 0042DDA4 00037A00 */  sll         $t7, $v1, 8
/* 02DDA8 0042DDA8 01E57024 */  and         $t6, $t7, $a1
/* 02DDAC 0042DDAC 00025E02 */  srl         $t3, $v0, 24
/* 02DDB0 0042DDB0 00034202 */  srl         $t0, $v1, 8
/* 02DDB4 0042DDB4 00036E00 */  sll         $t5, $v1, 24
/* 02DDB8 0042DDB8 014B6025 */  or          $t4, $t2, $t3
/* 02DDBC 0042DDBC 01AEC025 */  or          $t8, $t5, $t6
/* 02DDC0 0042DDC0 3119FF00 */  andi        $t9, $t0, 0xFF00
/* 02DDC4 0042DDC4 03194825 */  or          $t1, $t8, $t9
/* 02DDC8 0042DDC8 00035602 */  srl         $t2, $v1, 24
/* 02DDCC 0042DDCC 012A5825 */  or          $t3, $t1, $t2
/* 02DDD0 0042DDD0 AC8C0000 */  sw          $t4, 0x0($a0)
/* 02DDD4 0042DDD4 03E00008 */  jr          $ra
/* 02DDD8 0042DDD8 AC8B0004 */   sw         $t3, 0x4($a0)
