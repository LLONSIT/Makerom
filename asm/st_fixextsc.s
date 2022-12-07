glabel st_fixextsc # 702
# _gp_disp: 0xFBE035C
.set noreorder; .cpload $t9; # .set reorder
/* 03D9F0 0043D9F0 8F998630 */  lw          $t9, %call16(st_pdn_idn)($gp)
/* 03D9F4 0043D9F4 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 03D9F8 0043D9F8 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03D9FC 0043D9FC AFBC0018 */  sw          $gp, 0x18($sp)
/* 03DA00 0043DA00 0320F809 */  jalr        $t9
/* 03DA04 0043DA04 AFA50034 */   sw         $a1, 0x34($sp)
/* 03DA08 0043DA08 8C580000 */  lw          $t8, 0x0($v0)
/* 03DA0C 0043DA0C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03DA10 0043DA10 27AE0024 */  addiu       $t6, $sp, 0x24
/* 03DA14 0043DA14 ADD80000 */  sw          $t8, 0x0($t6)
/* 03DA18 0043DA18 8C4F0004 */  lw          $t7, 0x4($v0)
/* 03DA1C 0043DA1C ADCF0004 */  sw          $t7, 0x4($t6)
/* 03DA20 0043DA20 8F998628 */  lw          $t9, %call16(st_pext_iext)($gp)
/* 03DA24 0043DA24 8FA40028 */  lw          $a0, 0x28($sp)
/* 03DA28 0043DA28 0320F809 */  jalr        $t9
/* 03DA2C 0043DA2C 00000000 */   nop
/* 03DA30 0043DA30 8FB90034 */  lw          $t9, 0x34($sp)
/* 03DA34 0043DA34 944B000C */  lhu         $t3, 0xC($v0)
/* 03DA38 0043DA38 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03DA3C 0043DA3C 00194940 */  sll         $t1, $t9, 5
/* 03DA40 0043DA40 312A03E0 */  andi        $t2, $t1, 0x3E0
/* 03DA44 0043DA44 316CFC1F */  andi        $t4, $t3, 0xFC1F
/* 03DA48 0043DA48 014C6825 */  or          $t5, $t2, $t4
/* 03DA4C 0043DA4C A44D000C */  sh          $t5, 0xC($v0)
/* 03DA50 0043DA50 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03DA54 0043DA54 27BD0030 */  addiu       $sp, $sp, 0x30
/* 03DA58 0043DA58 03E00008 */  jr          $ra
/* 03DA5C 0043DA5C 00000000 */   nop
