glabel procedure_lnlow # 463
/* 02B1EC 0042B1EC 8C9900D4 */  lw          $t9, 0xD4($a0)
/* 02B1F0 0042B1F0 00057880 */  sll         $t7, $a1, 2
/* 02B1F4 0042B1F4 01E57823 */  subu        $t7, $t7, $a1
/* 02B1F8 0042B1F8 00194080 */  sll         $t0, $t9, 2
/* 02B1FC 0042B1FC 01194023 */  subu        $t0, $t0, $t9
/* 02B200 0042B200 8C8E00A4 */  lw          $t6, 0xA4($a0)
/* 02B204 0042B204 00084080 */  sll         $t0, $t0, 2
/* 02B208 0042B208 000F7880 */  sll         $t7, $t7, 2
/* 02B20C 0042B20C 01E57821 */  addu        $t7, $t7, $a1
/* 02B210 0042B210 01194021 */  addu        $t0, $t0, $t9
/* 02B214 0042B214 00084080 */  sll         $t0, $t0, 2
/* 02B218 0042B218 000F7880 */  sll         $t7, $t7, 2
/* 02B21C 0042B21C 00084823 */  negu        $t1, $t0
/* 02B220 0042B220 01CFC021 */  addu        $t8, $t6, $t7
/* 02B224 0042B224 03095021 */  addu        $t2, $t8, $t1
/* 02B228 0042B228 03E00008 */  jr          $ra
/* 02B22C 0042B22C 8D420028 */   lw         $v0, 0x28($t2)
