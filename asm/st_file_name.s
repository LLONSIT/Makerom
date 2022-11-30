glabel st_file_name # 546
# _gp_disp: 0xFBEE824
.set noreorder; .cpload $t9; # .set reorder
/* 02F528 0042F528 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02F52C 0042F52C AFBF001C */  sw          $ra, 0x1C($sp)
/* 02F530 0042F530 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02F534 0042F534 8C9900D0 */  lw          $t9, 0xD0($a0)
/* 02F538 0042F538 8C8E00A0 */  lw          $t6, 0xA0($a0)
/* 02F53C 0042F53C 000578C0 */  sll         $t7, $a1, 3
/* 02F540 0042F540 001940C0 */  sll         $t0, $t9, 3
/* 02F544 0042F544 01E57821 */  addu        $t7, $t7, $a1
/* 02F548 0042F548 01194021 */  addu        $t0, $t0, $t9
/* 02F54C 0042F54C 000840C0 */  sll         $t0, $t0, 3
/* 02F550 0042F550 000F78C0 */  sll         $t7, $t7, 3
/* 02F554 0042F554 00084823 */  negu        $t1, $t0
/* 02F558 0042F558 01CFC021 */  addu        $t8, $t6, $t7
/* 02F55C 0042F55C 03095021 */  addu        $t2, $t8, $t1
/* 02F560 0042F560 8D4B000C */  lw          $t3, 0xC($t2)
/* 02F564 0042F564 15600003 */  bnez        $t3, .L0042F574
/* 02F568 0042F568 00000000 */   nop
/* 02F56C 0042F56C 10000016 */  b           .L0042F5C8
/* 02F570 0042F570 00001025 */   move       $v0, $zero
.L0042F574:
/* 02F574 0042F574 8F998508 */  lw          $t9, %call16(file_string_base)($gp)
/* 02F578 0042F578 AFA40020 */  sw          $a0, 0x20($sp)
/* 02F57C 0042F57C AFA50024 */  sw          $a1, 0x24($sp)
/* 02F580 0042F580 0320F809 */  jalr        $t9
/* 02F584 0042F584 00000000 */   nop
/* 02F588 0042F588 8FA40020 */  lw          $a0, 0x20($sp)
/* 02F58C 0042F58C 8FA50024 */  lw          $a1, 0x24($sp)
/* 02F590 0042F590 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02F594 0042F594 8C8F00D0 */  lw          $t7, 0xD0($a0)
/* 02F598 0042F598 8C8C00A0 */  lw          $t4, 0xA0($a0)
/* 02F59C 0042F59C 000568C0 */  sll         $t5, $a1, 3
/* 02F5A0 0042F5A0 000FC8C0 */  sll         $t9, $t7, 3
/* 02F5A4 0042F5A4 01A56821 */  addu        $t5, $t5, $a1
/* 02F5A8 0042F5A8 032FC821 */  addu        $t9, $t9, $t7
/* 02F5AC 0042F5AC 0019C8C0 */  sll         $t9, $t9, 3
/* 02F5B0 0042F5B0 000D68C0 */  sll         $t5, $t5, 3
/* 02F5B4 0042F5B4 00194023 */  negu        $t0, $t9
/* 02F5B8 0042F5B8 018D7021 */  addu        $t6, $t4, $t5
/* 02F5BC 0042F5BC 01C8C021 */  addu        $t8, $t6, $t0
/* 02F5C0 0042F5C0 8F090004 */  lw          $t1, 0x4($t8)
/* 02F5C4 0042F5C4 01221021 */  addu        $v0, $t1, $v0
.L0042F5C8:
/* 02F5C8 0042F5C8 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02F5CC 0042F5CC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02F5D0 0042F5D0 03E00008 */  jr          $ra
/* 02F5D4 0042F5D4 00000000 */   nop
