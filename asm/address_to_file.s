glabel address_to_file # 547
# _gp_disp: 0xFBEE768
.set noreorder; .cpload $t9; # .set reorder
/* 02F5E4 0042F5E4 8F9984E8 */  lw          $t9, %call16(address_to_procedure)($gp)
/* 02F5E8 0042F5E8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02F5EC 0042F5EC AFBF001C */  sw          $ra, 0x1C($sp)
/* 02F5F0 0042F5F0 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02F5F4 0042F5F4 0320F809 */  jalr        $t9
/* 02F5F8 0042F5F8 AFA40020 */   sw         $a0, 0x20($sp)
/* 02F5FC 0042F5FC 2401FFFF */  addiu       $at, $zero, -0x1
/* 02F600 0042F600 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02F604 0042F604 14410003 */  bne         $v0, $at, .L0042F614
/* 02F608 0042F608 00402825 */   move       $a1, $v0
/* 02F60C 0042F60C 10000006 */  b           .L0042F628
/* 02F610 0042F610 2402FFFF */   addiu      $v0, $zero, -0x1
.L0042F614:
/* 02F614 0042F614 8F9984F4 */  lw          $t9, %call16(procedure_to_file)($gp)
/* 02F618 0042F618 8FA40020 */  lw          $a0, 0x20($sp)
/* 02F61C 0042F61C 0320F809 */  jalr        $t9
/* 02F620 0042F620 00000000 */   nop
/* 02F624 0042F624 8FBC0018 */  lw          $gp, 0x18($sp)
.L0042F628:
/* 02F628 0042F628 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02F62C 0042F62C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02F630 0042F630 03E00008 */  jr          $ra
/* 02F634 0042F634 00000000 */   nop
/* 02F638 0042F638 00000000 */  nop
/* 02F63C 0042F63C 00000000 */  nop
