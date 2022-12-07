glabel st_str_idn # 698
# _gp_disp: 0xFBE077C
.set noreorder; .cpload $t9; # .set reorder
/* 03D5D0 0043D5D0 8F998630 */  lw          $t9, %call16(st_pdn_idn)($gp)
/* 03D5D4 0043D5D4 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 03D5D8 0043D5D8 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03D5DC 0043D5DC 0320F809 */  jalr        $t9
/* 03D5E0 0043D5E0 AFBC0018 */   sw         $gp, 0x18($sp)
/* 03D5E4 0043D5E4 8C580000 */  lw          $t8, 0x0($v0)
/* 03D5E8 0043D5E8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03D5EC 0043D5EC 27AE0028 */  addiu       $t6, $sp, 0x28
/* 03D5F0 0043D5F0 ADD80000 */  sw          $t8, 0x0($t6)
/* 03D5F4 0043D5F4 8C4F0004 */  lw          $t7, 0x4($v0)
/* 03D5F8 0043D5F8 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03D5FC 0043D5FC 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03D600 0043D600 ADCF0004 */  sw          $t7, 0x4($t6)
/* 03D604 0043D604 8FB9002C */  lw          $t9, 0x2C($sp)
/* 03D608 0043D608 17210003 */  bne         $t9, $at, .L0043D618
/* 03D60C 0043D60C 00000000 */   nop
/* 03D610 0043D610 1000000D */  b           .L0043D648
/* 03D614 0043D614 2402FFFF */   addiu      $v0, $zero, -0x1
.L0043D618:
/* 03D618 0043D618 8F998608 */  lw          $t9, %call16(st_psym_ifd_isym)($gp)
/* 03D61C 0043D61C 8FA40028 */  lw          $a0, 0x28($sp)
/* 03D620 0043D620 8FA5002C */  lw          $a1, 0x2C($sp)
/* 03D624 0043D624 0320F809 */  jalr        $t9
/* 03D628 0043D628 00000000 */   nop
/* 03D62C 0043D62C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03D630 0043D630 8FA40028 */  lw          $a0, 0x28($sp)
/* 03D634 0043D634 8C450000 */  lw          $a1, 0x0($v0)
/* 03D638 0043D638 8F998610 */  lw          $t9, %call16(st_str_ifd_iss)($gp)
/* 03D63C 0043D63C 0320F809 */  jalr        $t9
/* 03D640 0043D640 00000000 */   nop
/* 03D644 0043D644 8FBC0018 */  lw          $gp, 0x18($sp)
.L0043D648:
/* 03D648 0043D648 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03D64C 0043D64C 27BD0030 */  addiu       $sp, $sp, 0x30
/* 03D650 0043D650 03E00008 */  jr          $ra
/* 03D654 0043D654 00000000 */   nop
