glabel symbol_type # 591
# _gp_disp: 0xFBE7F84
.set noreorder; .cpload $t9; # .set reorder
/* 035DC8 00435DC8 04A10009 */  bgez        $a1, .L00435DF0
/* 035DCC 00435DCC 00057023 */   negu       $t6, $a1
/* 035DD0 00435DD0 8F9887D0 */  lw          $t8, %got(usersymbol)($gp)
/* 035DD4 00435DD4 000E7880 */  sll         $t7, $t6, 2
/* 035DD8 00435DD8 01EE7823 */  subu        $t7, $t7, $t6
/* 035DDC 00435DDC 000F7880 */  sll         $t7, $t7, 2
/* 035DE0 00435DE0 01F8C821 */  addu        $t9, $t7, $t8
/* 035DE4 00435DE4 8F220008 */  lw          $v0, 0x8($t9)
/* 035DE8 00435DE8 03E00008 */  jr          $ra
/* 035DEC 00435DEC 00021682 */   srl        $v0, $v0, 26
.L00435DF0:
/* 035DF0 00435DF0 8C8300D8 */  lw          $v1, 0xD8($a0)
/* 035DF4 00435DF4 00057880 */  sll         $t7, $a1, 2
/* 035DF8 00435DF8 00054900 */  sll         $t1, $a1, 4
/* 035DFC 00435DFC 00A3082B */  sltu        $at, $a1, $v1
/* 035E00 00435E00 14200009 */  bnez        $at, .L00435E28
/* 035E04 00435E04 01E57823 */   subu       $t7, $t7, $a1
/* 035E08 00435E08 8C8800AC */  lw          $t0, 0xAC($a0)
/* 035E0C 00435E0C 00035900 */  sll         $t3, $v1, 4
/* 035E10 00435E10 000B6023 */  negu        $t4, $t3
/* 035E14 00435E14 01095021 */  addu        $t2, $t0, $t1
/* 035E18 00435E18 014C6821 */  addu        $t5, $t2, $t4
/* 035E1C 00435E1C 8DA2000C */  lw          $v0, 0xC($t5)
/* 035E20 00435E20 03E00008 */  jr          $ra
/* 035E24 00435E24 00021682 */   srl        $v0, $v0, 26
.L00435E28:
/* 035E28 00435E28 8C9900CC */  lw          $t9, 0xCC($a0)
/* 035E2C 00435E2C 8C8E00A8 */  lw          $t6, 0xA8($a0)
/* 035E30 00435E30 000F7880 */  sll         $t7, $t7, 2
/* 035E34 00435E34 00194080 */  sll         $t0, $t9, 2
/* 035E38 00435E38 01194023 */  subu        $t0, $t0, $t9
/* 035E3C 00435E3C 00084080 */  sll         $t0, $t0, 2
/* 035E40 00435E40 00084823 */  negu        $t1, $t0
/* 035E44 00435E44 01CFC021 */  addu        $t8, $t6, $t7
/* 035E48 00435E48 03095821 */  addu        $t3, $t8, $t1
/* 035E4C 00435E4C 8D620008 */  lw          $v0, 0x8($t3)
/* 035E50 00435E50 00021682 */  srl         $v0, $v0, 26
/* 035E54 00435E54 03E00008 */  jr          $ra
/* 035E58 00435E58 00000000 */   nop
