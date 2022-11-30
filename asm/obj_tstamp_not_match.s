glabel obj_tstamp_not_match # 444
# _gp_disp: 0xFBF2F44
.set noreorder; .cpload $t9; # .set reorder
/* 02AE08 0042AE08 8F998418 */  lw          $t9, %call16(obj_liblist_tstamp)($gp)
/* 02AE0C 0042AE0C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02AE10 0042AE10 AFA40020 */  sw          $a0, 0x20($sp)
/* 02AE14 0042AE14 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02AE18 0042AE18 00A02025 */  move        $a0, $a1
/* 02AE1C 0042AE1C AFBC0018 */  sw          $gp, 0x18($sp)
/* 02AE20 0042AE20 0320F809 */  jalr        $t9
/* 02AE24 0042AE24 00C02825 */   move       $a1, $a2
/* 02AE28 0042AE28 8FAE0020 */  lw          $t6, 0x20($sp)
/* 02AE2C 0042AE2C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02AE30 0042AE30 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02AE34 0042AE34 8DCF014C */  lw          $t7, 0x14C($t6)
/* 02AE38 0042AE38 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02AE3C 0042AE3C 004F1026 */  xor         $v0, $v0, $t7
/* 02AE40 0042AE40 03E00008 */  jr          $ra
/* 02AE44 0042AE44 0002102B */   sltu       $v0, $zero, $v0
