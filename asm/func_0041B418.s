glabel func_0041B418 # 98
# _gp_disp: 0xFC02928
.set noreorder; .cpload $t9; # .set reorder
/* 01B424 0041B424 00061080 */  sll         $v0, $a2, 2
/* 01B428 0041B428 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 01B42C 0041B42C 00461023 */  subu        $v0, $v0, $a2
/* 01B430 0041B430 AFB10018 */  sw          $s1, 0x18($sp)
/* 01B434 0041B434 000210C0 */  sll         $v0, $v0, 3
/* 01B438 0041B438 00828821 */  addu        $s1, $a0, $v0
/* 01B43C 0041B43C AFB2001C */  sw          $s2, 0x1C($sp)
/* 01B440 0041B440 AFB00014 */  sw          $s0, 0x14($sp)
/* 01B444 0041B444 0091382B */  sltu        $a3, $a0, $s1
/* 01B448 0041B448 AFBF0024 */  sw          $ra, 0x24($sp)
/* 01B44C 0041B44C AFBC0020 */  sw          $gp, 0x20($sp)
/* 01B450 0041B450 00809025 */  move        $s2, $a0
/* 01B454 0041B454 00A28021 */  addu        $s0, $a1, $v0
/* 01B458 0041B458 10E000BB */  beqz        $a3, .L0041B748
/* 01B45C 0041B45C 2631FFE8 */   addiu      $s1, $s1, -0x18
.L0041B460:
/* 01B460 0041B460 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B464 0041B464 2610FFE8 */  addiu       $s0, $s0, -0x18
/* 01B468 0041B468 92050017 */  lbu         $a1, 0x17($s0)
/* 01B46C 0041B46C 24040000 */  addiu       $a0, $zero, 0x0
/* 01B470 0041B470 24060000 */  addiu       $a2, $zero, 0x0
/* 01B474 0041B474 0320F809 */  jalr        $t9
/* 01B478 0041B478 24070008 */   addiu      $a3, $zero, 0x8
/* 01B47C 0041B47C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01B480 0041B480 920F0016 */  lbu         $t7, 0x16($s0)
/* 01B484 0041B484 24060000 */  addiu       $a2, $zero, 0x0
/* 01B488 0041B488 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B48C 0041B48C 01E32821 */  addu        $a1, $t7, $v1
/* 01B490 0041B490 00A3082B */  sltu        $at, $a1, $v1
/* 01B494 0041B494 000FC7C3 */  sra         $t8, $t7, 31
/* 01B498 0041B498 00382021 */  addu        $a0, $at, $t8
/* 01B49C 0041B49C 00822021 */  addu        $a0, $a0, $v0
/* 01B4A0 0041B4A0 0320F809 */  jalr        $t9
/* 01B4A4 0041B4A4 24070008 */   addiu      $a3, $zero, 0x8
/* 01B4A8 0041B4A8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01B4AC 0041B4AC 92080015 */  lbu         $t0, 0x15($s0)
/* 01B4B0 0041B4B0 24060000 */  addiu       $a2, $zero, 0x0
/* 01B4B4 0041B4B4 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B4B8 0041B4B8 01032821 */  addu        $a1, $t0, $v1
/* 01B4BC 0041B4BC 00A3082B */  sltu        $at, $a1, $v1
/* 01B4C0 0041B4C0 000857C3 */  sra         $t2, $t0, 31
/* 01B4C4 0041B4C4 002A2021 */  addu        $a0, $at, $t2
/* 01B4C8 0041B4C8 00822021 */  addu        $a0, $a0, $v0
/* 01B4CC 0041B4CC 0320F809 */  jalr        $t9
/* 01B4D0 0041B4D0 24070008 */   addiu      $a3, $zero, 0x8
/* 01B4D4 0041B4D4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01B4D8 0041B4D8 92090014 */  lbu         $t1, 0x14($s0)
/* 01B4DC 0041B4DC 24060000 */  addiu       $a2, $zero, 0x0
/* 01B4E0 0041B4E0 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B4E4 0041B4E4 01232821 */  addu        $a1, $t1, $v1
/* 01B4E8 0041B4E8 00A3082B */  sltu        $at, $a1, $v1
/* 01B4EC 0041B4EC 000967C3 */  sra         $t4, $t1, 31
/* 01B4F0 0041B4F0 002C2021 */  addu        $a0, $at, $t4
/* 01B4F4 0041B4F4 00822021 */  addu        $a0, $a0, $v0
/* 01B4F8 0041B4F8 0320F809 */  jalr        $t9
/* 01B4FC 0041B4FC 24070008 */   addiu      $a3, $zero, 0x8
/* 01B500 0041B500 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01B504 0041B504 920E0013 */  lbu         $t6, 0x13($s0)
/* 01B508 0041B508 24060000 */  addiu       $a2, $zero, 0x0
/* 01B50C 0041B50C 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B510 0041B510 01C32821 */  addu        $a1, $t6, $v1
/* 01B514 0041B514 00A3082B */  sltu        $at, $a1, $v1
/* 01B518 0041B518 000EC7C3 */  sra         $t8, $t6, 31
/* 01B51C 0041B51C 00382021 */  addu        $a0, $at, $t8
/* 01B520 0041B520 00822021 */  addu        $a0, $a0, $v0
/* 01B524 0041B524 0320F809 */  jalr        $t9
/* 01B528 0041B528 24070008 */   addiu      $a3, $zero, 0x8
/* 01B52C 0041B52C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01B530 0041B530 920F0012 */  lbu         $t7, 0x12($s0)
/* 01B534 0041B534 24060000 */  addiu       $a2, $zero, 0x0
/* 01B538 0041B538 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B53C 0041B53C 01E32821 */  addu        $a1, $t7, $v1
/* 01B540 0041B540 00A3082B */  sltu        $at, $a1, $v1
/* 01B544 0041B544 000F47C3 */  sra         $t0, $t7, 31
/* 01B548 0041B548 00282021 */  addu        $a0, $at, $t0
/* 01B54C 0041B54C 00822021 */  addu        $a0, $a0, $v0
/* 01B550 0041B550 0320F809 */  jalr        $t9
/* 01B554 0041B554 24070008 */   addiu      $a3, $zero, 0x8
/* 01B558 0041B558 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01B55C 0041B55C 920A0011 */  lbu         $t2, 0x11($s0)
/* 01B560 0041B560 24060000 */  addiu       $a2, $zero, 0x0
/* 01B564 0041B564 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B568 0041B568 01432821 */  addu        $a1, $t2, $v1
/* 01B56C 0041B56C 00A3082B */  sltu        $at, $a1, $v1
/* 01B570 0041B570 000A67C3 */  sra         $t4, $t2, 31
/* 01B574 0041B574 002C2021 */  addu        $a0, $at, $t4
/* 01B578 0041B578 00822021 */  addu        $a0, $a0, $v0
/* 01B57C 0041B57C 0320F809 */  jalr        $t9
/* 01B580 0041B580 24070008 */   addiu      $a3, $zero, 0x8
/* 01B584 0041B584 920B0010 */  lbu         $t3, 0x10($s0)
/* 01B588 0041B588 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01B58C 0041B58C 24040000 */  addiu       $a0, $zero, 0x0
/* 01B590 0041B590 0163C821 */  addu        $t9, $t3, $v1
/* 01B594 0041B594 0323082B */  sltu        $at, $t9, $v1
/* 01B598 0041B598 000B77C3 */  sra         $t6, $t3, 31
/* 01B59C 0041B59C 002EC021 */  addu        $t8, $at, $t6
/* 01B5A0 0041B5A0 0302C021 */  addu        $t8, $t8, $v0
/* 01B5A4 0041B5A4 AE380010 */  sw          $t8, 0x10($s1)
/* 01B5A8 0041B5A8 AE390014 */  sw          $t9, 0x14($s1)
/* 01B5AC 0041B5AC 9208000F */  lbu         $t0, 0xF($s0)
/* 01B5B0 0041B5B0 24060000 */  addiu       $a2, $zero, 0x0
/* 01B5B4 0041B5B4 24070008 */  addiu       $a3, $zero, 0x8
/* 01B5B8 0041B5B8 A228000F */  sb          $t0, 0xF($s1)
/* 01B5BC 0041B5BC 9209000E */  lbu         $t1, 0xE($s0)
/* 01B5C0 0041B5C0 A229000E */  sb          $t1, 0xE($s1)
/* 01B5C4 0041B5C4 920A000D */  lbu         $t2, 0xD($s0)
/* 01B5C8 0041B5C8 A22A000D */  sb          $t2, 0xD($s1)
/* 01B5CC 0041B5CC 920C000C */  lbu         $t4, 0xC($s0)
/* 01B5D0 0041B5D0 A22C000C */  sb          $t4, 0xC($s1)
/* 01B5D4 0041B5D4 920D000B */  lbu         $t5, 0xB($s0)
/* 01B5D8 0041B5D8 920E000A */  lbu         $t6, 0xA($s0)
/* 01B5DC 0041B5DC 92190009 */  lbu         $t9, 0x9($s0)
/* 01B5E0 0041B5E0 000D5A00 */  sll         $t3, $t5, 8
/* 01B5E4 0041B5E4 016E7821 */  addu        $t7, $t3, $t6
/* 01B5E8 0041B5E8 920A0008 */  lbu         $t2, 0x8($s0)
/* 01B5EC 0041B5EC 000FC200 */  sll         $t8, $t7, 8
/* 01B5F0 0041B5F0 03194021 */  addu        $t0, $t8, $t9
/* 01B5F4 0041B5F4 00084A00 */  sll         $t1, $t0, 8
/* 01B5F8 0041B5F8 01496021 */  addu        $t4, $t2, $t1
/* 01B5FC 0041B5FC AE2C0008 */  sw          $t4, 0x8($s1)
/* 01B600 0041B600 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B604 0041B604 92050007 */  lbu         $a1, 0x7($s0)
/* 01B608 0041B608 0320F809 */  jalr        $t9
/* 01B60C 0041B60C 00000000 */   nop
/* 01B610 0041B610 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01B614 0041B614 920B0006 */  lbu         $t3, 0x6($s0)
/* 01B618 0041B618 24060000 */  addiu       $a2, $zero, 0x0
/* 01B61C 0041B61C 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B620 0041B620 01632821 */  addu        $a1, $t3, $v1
/* 01B624 0041B624 00A3082B */  sltu        $at, $a1, $v1
/* 01B628 0041B628 000B77C3 */  sra         $t6, $t3, 31
/* 01B62C 0041B62C 002E2021 */  addu        $a0, $at, $t6
/* 01B630 0041B630 00822021 */  addu        $a0, $a0, $v0
/* 01B634 0041B634 0320F809 */  jalr        $t9
/* 01B638 0041B638 24070008 */   addiu      $a3, $zero, 0x8
/* 01B63C 0041B63C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01B640 0041B640 92180005 */  lbu         $t8, 0x5($s0)
/* 01B644 0041B644 24060000 */  addiu       $a2, $zero, 0x0
/* 01B648 0041B648 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B64C 0041B64C 03032821 */  addu        $a1, $t8, $v1
/* 01B650 0041B650 00A3082B */  sltu        $at, $a1, $v1
/* 01B654 0041B654 001847C3 */  sra         $t0, $t8, 31
/* 01B658 0041B658 00282021 */  addu        $a0, $at, $t0
/* 01B65C 0041B65C 00822021 */  addu        $a0, $a0, $v0
/* 01B660 0041B660 0320F809 */  jalr        $t9
/* 01B664 0041B664 24070008 */   addiu      $a3, $zero, 0x8
/* 01B668 0041B668 92190004 */  lbu         $t9, 0x4($s0)
/* 01B66C 0041B66C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01B670 0041B670 24060000 */  addiu       $a2, $zero, 0x0
/* 01B674 0041B674 001957C3 */  sra         $t2, $t9, 31
/* 01B678 0041B678 03232821 */  addu        $a1, $t9, $v1
/* 01B67C 0041B67C 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B680 0041B680 00A3082B */  sltu        $at, $a1, $v1
/* 01B684 0041B684 002A2021 */  addu        $a0, $at, $t2
/* 01B688 0041B688 00822021 */  addu        $a0, $a0, $v0
/* 01B68C 0041B68C 0320F809 */  jalr        $t9
/* 01B690 0041B690 24070008 */   addiu      $a3, $zero, 0x8
/* 01B694 0041B694 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01B698 0041B698 920C0003 */  lbu         $t4, 0x3($s0)
/* 01B69C 0041B69C 24060000 */  addiu       $a2, $zero, 0x0
/* 01B6A0 0041B6A0 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B6A4 0041B6A4 01832821 */  addu        $a1, $t4, $v1
/* 01B6A8 0041B6A8 00A3082B */  sltu        $at, $a1, $v1
/* 01B6AC 0041B6AC 000C77C3 */  sra         $t6, $t4, 31
/* 01B6B0 0041B6B0 002E2021 */  addu        $a0, $at, $t6
/* 01B6B4 0041B6B4 00822021 */  addu        $a0, $a0, $v0
/* 01B6B8 0041B6B8 0320F809 */  jalr        $t9
/* 01B6BC 0041B6BC 24070008 */   addiu      $a3, $zero, 0x8
/* 01B6C0 0041B6C0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01B6C4 0041B6C4 920D0002 */  lbu         $t5, 0x2($s0)
/* 01B6C8 0041B6C8 24060000 */  addiu       $a2, $zero, 0x0
/* 01B6CC 0041B6CC 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B6D0 0041B6D0 01A32821 */  addu        $a1, $t5, $v1
/* 01B6D4 0041B6D4 00A3082B */  sltu        $at, $a1, $v1
/* 01B6D8 0041B6D8 000DC7C3 */  sra         $t8, $t5, 31
/* 01B6DC 0041B6DC 00382021 */  addu        $a0, $at, $t8
/* 01B6E0 0041B6E0 00822021 */  addu        $a0, $a0, $v0
/* 01B6E4 0041B6E4 0320F809 */  jalr        $t9
/* 01B6E8 0041B6E8 24070008 */   addiu      $a3, $zero, 0x8
/* 01B6EC 0041B6EC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01B6F0 0041B6F0 92080001 */  lbu         $t0, 0x1($s0)
/* 01B6F4 0041B6F4 24060000 */  addiu       $a2, $zero, 0x0
/* 01B6F8 0041B6F8 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B6FC 0041B6FC 01032821 */  addu        $a1, $t0, $v1
/* 01B700 0041B700 00A3082B */  sltu        $at, $a1, $v1
/* 01B704 0041B704 000857C3 */  sra         $t2, $t0, 31
/* 01B708 0041B708 002A2021 */  addu        $a0, $at, $t2
/* 01B70C 0041B70C 00822021 */  addu        $a0, $a0, $v0
/* 01B710 0041B710 0320F809 */  jalr        $t9
/* 01B714 0041B714 24070008 */   addiu      $a3, $zero, 0x8
/* 01B718 0041B718 92090000 */  lbu         $t1, 0x0($s0)
/* 01B71C 0041B71C 0251382B */  sltu        $a3, $s2, $s1
/* 01B720 0041B720 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01B724 0041B724 01237821 */  addu        $t7, $t1, $v1
/* 01B728 0041B728 01E3082B */  sltu        $at, $t7, $v1
/* 01B72C 0041B72C 000967C3 */  sra         $t4, $t1, 31
/* 01B730 0041B730 002C7021 */  addu        $t6, $at, $t4
/* 01B734 0041B734 01C27021 */  addu        $t6, $t6, $v0
/* 01B738 0041B738 2631FFE8 */  addiu       $s1, $s1, -0x18
/* 01B73C 0041B73C AE2E0018 */  sw          $t6, 0x18($s1)
/* 01B740 0041B740 14E0FF47 */  bnez        $a3, .L0041B460
/* 01B744 0041B744 AE2F001C */   sw         $t7, 0x1C($s1)
.L0041B748:
/* 01B748 0041B748 8FBF0024 */  lw          $ra, 0x24($sp)
/* 01B74C 0041B74C 8FB00014 */  lw          $s0, 0x14($sp)
/* 01B750 0041B750 8FB10018 */  lw          $s1, 0x18($sp)
/* 01B754 0041B754 8FB2001C */  lw          $s2, 0x1C($sp)
/* 01B758 0041B758 03E00008 */  jr          $ra
/* 01B75C 0041B75C 27BD0028 */   addiu      $sp, $sp, 0x28
