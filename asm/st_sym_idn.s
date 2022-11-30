glabel st_sym_idn # 697
# _gp_disp: 0xFBE0864
.set noreorder; .cpload $t9; # .set reorder
/* 03D4E8 0043D4E8 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 03D4EC 0043D4EC 8F998630 */  lw          $t9, %call16(st_pdn_idn)($gp)
/* 03D4F0 0043D4F0 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03D4F4 0043D4F4 AFBC0018 */  sw          $gp, 0x18($sp)
/* 03D4F8 0043D4F8 AFA50034 */  sw          $a1, 0x34($sp)
/* 03D4FC 0043D4FC AFA60038 */  sw          $a2, 0x38($sp)
/* 03D500 0043D500 0320F809 */  jalr        $t9
/* 03D504 0043D504 AFA7003C */   sw         $a3, 0x3C($sp)
/* 03D508 0043D508 8C580000 */  lw          $t8, 0x0($v0)
/* 03D50C 0043D50C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03D510 0043D510 27AE0028 */  addiu       $t6, $sp, 0x28
/* 03D514 0043D514 ADD80000 */  sw          $t8, 0x0($t6)
/* 03D518 0043D518 8C4F0004 */  lw          $t7, 0x4($v0)
/* 03D51C 0043D51C 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03D520 0043D520 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03D524 0043D524 ADCF0004 */  sw          $t7, 0x4($t6)
/* 03D528 0043D528 8FB9002C */  lw          $t9, 0x2C($sp)
/* 03D52C 0043D52C 17210003 */  bne         $t9, $at, .L0043D53C
/* 03D530 0043D530 00000000 */   nop
/* 03D534 0043D534 1000001F */  b           .L0043D5B4
/* 03D538 0043D538 2402FFFF */   addiu      $v0, $zero, -0x1
.L0043D53C:
/* 03D53C 0043D53C 8F998608 */  lw          $t9, %call16(st_psym_ifd_isym)($gp)
/* 03D540 0043D540 8FA40028 */  lw          $a0, 0x28($sp)
/* 03D544 0043D544 8FA5002C */  lw          $a1, 0x2C($sp)
/* 03D548 0043D548 0320F809 */  jalr        $t9
/* 03D54C 0043D54C 00000000 */   nop
/* 03D550 0043D550 8C480008 */  lw          $t0, 0x8($v0)
/* 03D554 0043D554 8FAB0034 */  lw          $t3, 0x34($sp)
/* 03D558 0043D558 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03D55C 0043D55C 00084980 */  sll         $t1, $t0, 6
/* 03D560 0043D560 000956C2 */  srl         $t2, $t1, 27
/* 03D564 0043D564 AD6A0000 */  sw          $t2, 0x0($t3)
/* 03D568 0043D568 8C4C0008 */  lw          $t4, 0x8($v0)
/* 03D56C 0043D56C 8FAE0038 */  lw          $t6, 0x38($sp)
/* 03D570 0043D570 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03D574 0043D574 000C6E82 */  srl         $t5, $t4, 26
/* 03D578 0043D578 ADCD0000 */  sw          $t5, 0x0($t6)
/* 03D57C 0043D57C 8FB8003C */  lw          $t8, 0x3C($sp)
/* 03D580 0043D580 8C4F0004 */  lw          $t7, 0x4($v0)
/* 03D584 0043D584 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03D588 0043D588 AF0F0000 */  sw          $t7, 0x0($t8)
/* 03D58C 0043D58C 8C590008 */  lw          $t9, 0x8($v0)
/* 03D590 0043D590 8FA90040 */  lw          $t1, 0x40($sp)
/* 03D594 0043D594 03214024 */  and         $t0, $t9, $at
/* 03D598 0043D598 AD280000 */  sw          $t0, 0x0($t1)
/* 03D59C 0043D59C 8F998610 */  lw          $t9, %call16(st_str_ifd_iss)($gp)
/* 03D5A0 0043D5A0 8C450000 */  lw          $a1, 0x0($v0)
/* 03D5A4 0043D5A4 8FA40028 */  lw          $a0, 0x28($sp)
/* 03D5A8 0043D5A8 0320F809 */  jalr        $t9
/* 03D5AC 0043D5AC 00000000 */   nop
/* 03D5B0 0043D5B0 8FBC0018 */  lw          $gp, 0x18($sp)
.L0043D5B4:
/* 03D5B4 0043D5B4 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03D5B8 0043D5B8 27BD0030 */  addiu       $sp, $sp, 0x30
/* 03D5BC 0043D5BC 03E00008 */  jr          $ra
/* 03D5C0 0043D5C0 00000000 */   nop
