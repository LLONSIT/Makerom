glabel get_aux # 631
# _gp_disp: 0xFBE4F48
.set noreorder; .cpload $t9; # .set reorder
/* 038E04 00438E04 04A30006 */  bgezl       $a1, .L00438E20
/* 038E08 00438E08 8C9900C8 */   lw         $t9, 0xC8($a0)
/* 038E0C 00438E0C 8F8F87CC */  lw          $t7, %got(usertype)($gp)
/* 038E10 00438E10 00057080 */  sll         $t6, $a1, 2
/* 038E14 00438E14 10000006 */  b           .L00438E30
/* 038E18 00438E18 01CF1821 */   addu       $v1, $t6, $t7
/* 038E1C 00438E1C 8C9900C8 */  lw          $t9, 0xC8($a0)
.L00438E20:
/* 038E20 00438E20 8C9800C0 */  lw          $t8, 0xC0($a0)
/* 038E24 00438E24 00B94023 */  subu        $t0, $a1, $t9
/* 038E28 00438E28 00084880 */  sll         $t1, $t0, 2
/* 038E2C 00438E2C 03091821 */  addu        $v1, $t8, $t1
.L00438E30:
/* 038E30 00438E30 03E00008 */  jr          $ra
/* 038E34 00438E34 8C620000 */   lw         $v0, 0x0($v1)
