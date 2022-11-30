glabel swap_conflict # 514
/* 02DC20 0042DC20 AFA50004 */  sw          $a1, 0x4($sp)
/* 02DC24 0042DC24 8C820000 */  lw          $v0, 0x0($a0)
/* 02DC28 0042DC28 3C0100FF */  lui         $at, (0xFF0000 >> 16)
/* 02DC2C 0042DC2C 00027602 */  srl         $t6, $v0, 24
/* 02DC30 0042DC30 00027E00 */  sll         $t7, $v0, 24
/* 02DC34 0042DC34 0002CA00 */  sll         $t9, $v0, 8
/* 02DC38 0042DC38 03214024 */  and         $t0, $t9, $at
/* 02DC3C 0042DC3C 01CFC025 */  or          $t8, $t6, $t7
/* 02DC40 0042DC40 00025202 */  srl         $t2, $v0, 8
/* 02DC44 0042DC44 314BFF00 */  andi        $t3, $t2, 0xFF00
/* 02DC48 0042DC48 03084825 */  or          $t1, $t8, $t0
/* 02DC4C 0042DC4C 012B6025 */  or          $t4, $t1, $t3
/* 02DC50 0042DC50 03E00008 */  jr          $ra
/* 02DC54 0042DC54 AC8C0000 */   sw         $t4, 0x0($a0)
