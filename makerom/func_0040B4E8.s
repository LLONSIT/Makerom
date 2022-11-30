.section .rodata
glabel STR_1000F7E4
/* 03F7E4 1000F7E4 */ .asciz "/usr/lib/PR"
                      .balign 4

glabel STR_1000F7F0
/* 03F7F0 1000F7F0 */ .asciz "font"
                      .balign 4

glabel STR_1000F7F8
/* 03F7F8 1000F7F8 */ .asciz "%s: unable to open %s"
                      .balign 4

glabel STR_1000F810
/* 03F810 1000F810 */ .asciz "%s unable to stat %s"
                      .balign 4

glabel STR_1000F828
/* 03F828 1000F828 */ .asciz "%s: unable to malloc buffer to hold %d bytes\n"
                      .balign 4

glabel STR_1000F858
/* 03F858 1000F858 */ .asciz "%s unable to read %s"
                      .balign 4


.section .text
glabel func_0040B4E8 # 10
# _gp_disp: 0xFC12858
.set noreorder; .cpload $t9; # .set reorder
/* 00B4F4 0040B4F4 27BDFD50 */  addiu       $sp, $sp, -0x2B0
/* 00B4F8 0040B4F8 AFBF001C */  sw          $ra, 0x1C($sp)
/* 00B4FC 0040B4FC AFBC0018 */  sw          $gp, 0x18($sp)
/* 00B500 0040B500 AFA402B0 */  sw          $a0, 0x2B0($sp)
/* 00B504 0040B504 8F998018 */  lw          $t9, %got(func_0040B780)($gp)
/* 00B508 0040B508 8F85802C */  lw          $a1, %got(STR_1000F7E4)($gp)
/* 00B50C 0040B50C 8F86802C */  lw          $a2, %got(STR_1000F7F0)($gp)
/* 00B510 0040B510 2739B780 */  addiu       $t9, $t9, %lo(func_0040B780)
/* 00B514 0040B514 27A401AC */  addiu       $a0, $sp, 0x1AC
/* 00B518 0040B518 24A5F7E4 */  addiu       $a1, $a1, %lo(STR_1000F7E4)
/* 00B51C 0040B51C 0320F809 */  jalr        $t9
/* 00B520 0040B520 24C6F7F0 */   addiu      $a2, $a2, %lo(STR_1000F7F0)
/* 00B524 0040B524 10400003 */  beqz        $v0, .L0040B534
/* 00B528 0040B528 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00B52C 0040B52C 27AE01AC */  addiu       $t6, $sp, 0x1AC
/* 00B530 0040B530 AFAE02B0 */  sw          $t6, 0x2B0($sp)
.L0040B534:
/* 00B534 0040B534 8FAF02B0 */  lw          $t7, 0x2B0($sp)
/* 00B538 0040B538 11E00089 */  beqz        $t7, .L0040B760
/* 00B53C 0040B53C 00000000 */   nop
/* 00B540 0040B540 8F9980B4 */  lw          $t9, %call16(open)($gp)
/* 00B544 0040B544 8FA402B0 */  lw          $a0, 0x2B0($sp)
/* 00B548 0040B548 24050800 */  addiu       $a1, $zero, 0x800
/* 00B54C 0040B54C 0320F809 */  jalr        $t9
/* 00B550 0040B550 00000000 */   nop
/* 00B554 0040B554 AFA202AC */  sw          $v0, 0x2AC($sp)
/* 00B558 0040B558 8FB802AC */  lw          $t8, 0x2AC($sp)
/* 00B55C 0040B55C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B560 0040B560 07010014 */  bgez        $t8, .L0040B5B4
/* 00B564 0040B564 00000000 */   nop
/* 00B568 0040B568 8F998068 */  lw          $t9, %call16(sprintf)($gp)
/* 00B56C 0040B56C 8F85802C */  lw          $a1, %got(STR_1000F7F8)($gp)
/* 00B570 0040B570 8F86802C */  lw          $a2, %got(B_10016A20)($gp)
/* 00B574 0040B574 27A40024 */  addiu       $a0, $sp, 0x24
/* 00B578 0040B578 8FA702B0 */  lw          $a3, 0x2B0($sp)
/* 00B57C 0040B57C 24A5F7F8 */  addiu       $a1, $a1, %lo(STR_1000F7F8)
/* 00B580 0040B580 0320F809 */  jalr        $t9
/* 00B584 0040B584 8CC66A20 */   lw         $a2, %lo(B_10016A20)($a2)
/* 00B588 0040B588 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B58C 0040B58C 8F9980B8 */  lw          $t9, %call16(perror)($gp)
/* 00B590 0040B590 27A40024 */  addiu       $a0, $sp, 0x24
/* 00B594 0040B594 0320F809 */  jalr        $t9
/* 00B598 0040B598 00000000 */   nop
/* 00B59C 0040B59C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B5A0 0040B5A0 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 00B5A4 0040B5A4 24040001 */  addiu       $a0, $zero, 0x1
/* 00B5A8 0040B5A8 0320F809 */  jalr        $t9
/* 00B5AC 0040B5AC 00000000 */   nop
/* 00B5B0 0040B5B0 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040B5B4:
/* 00B5B4 0040B5B4 8F9980BC */  lw          $t9, %call16(fstat)($gp)
/* 00B5B8 0040B5B8 8FA402AC */  lw          $a0, 0x2AC($sp)
/* 00B5BC 0040B5BC 27A50124 */  addiu       $a1, $sp, 0x124
/* 00B5C0 0040B5C0 0320F809 */  jalr        $t9
/* 00B5C4 0040B5C4 00000000 */   nop
/* 00B5C8 0040B5C8 04410019 */  bgez        $v0, .L0040B630
/* 00B5CC 0040B5CC 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00B5D0 0040B5D0 8F998068 */  lw          $t9, %call16(sprintf)($gp)
/* 00B5D4 0040B5D4 8F85802C */  lw          $a1, %got(STR_1000F810)($gp)
/* 00B5D8 0040B5D8 8F86802C */  lw          $a2, %got(B_10016A20)($gp)
/* 00B5DC 0040B5DC 27A40024 */  addiu       $a0, $sp, 0x24
/* 00B5E0 0040B5E0 8FA702B0 */  lw          $a3, 0x2B0($sp)
/* 00B5E4 0040B5E4 24A5F810 */  addiu       $a1, $a1, %lo(STR_1000F810)
/* 00B5E8 0040B5E8 0320F809 */  jalr        $t9
/* 00B5EC 0040B5EC 8CC66A20 */   lw         $a2, %lo(B_10016A20)($a2)
/* 00B5F0 0040B5F0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B5F4 0040B5F4 8F9980B8 */  lw          $t9, %call16(perror)($gp)
/* 00B5F8 0040B5F8 27A40024 */  addiu       $a0, $sp, 0x24
/* 00B5FC 0040B5FC 0320F809 */  jalr        $t9
/* 00B600 0040B600 00000000 */   nop
/* 00B604 0040B604 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B608 0040B608 8F9980C0 */  lw          $t9, %call16(close)($gp)
/* 00B60C 0040B60C 8FA402AC */  lw          $a0, 0x2AC($sp)
/* 00B610 0040B610 0320F809 */  jalr        $t9
/* 00B614 0040B614 00000000 */   nop
/* 00B618 0040B618 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B61C 0040B61C 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 00B620 0040B620 24040001 */  addiu       $a0, $zero, 0x1
/* 00B624 0040B624 0320F809 */  jalr        $t9
/* 00B628 0040B628 00000000 */   nop
/* 00B62C 0040B62C 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040B630:
/* 00B630 0040B630 8F998064 */  lw          $t9, %call16(malloc)($gp)
/* 00B634 0040B634 8FA40154 */  lw          $a0, 0x154($sp)
/* 00B638 0040B638 0320F809 */  jalr        $t9
/* 00B63C 0040B63C 00000000 */   nop
/* 00B640 0040B640 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B644 0040B644 8F81872C */  lw          $at, %got(fontBuf)($gp)
/* 00B648 0040B648 AC220000 */  sw          $v0, 0x0($at)
/* 00B64C 0040B64C 8F99872C */  lw          $t9, %got(fontBuf)($gp)
/* 00B650 0040B650 8F390000 */  lw          $t9, 0x0($t9)
/* 00B654 0040B654 17200015 */  bnez        $t9, .L0040B6AC
/* 00B658 0040B658 00000000 */   nop
/* 00B65C 0040B65C 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00B660 0040B660 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00B664 0040B664 8F85802C */  lw          $a1, %got(STR_1000F828)($gp)
/* 00B668 0040B668 8F86802C */  lw          $a2, %got(B_10016A20)($gp)
/* 00B66C 0040B66C 8FA70154 */  lw          $a3, 0x154($sp)
/* 00B670 0040B670 24840020 */  addiu       $a0, $a0, 0x20
/* 00B674 0040B674 24A5F828 */  addiu       $a1, $a1, %lo(STR_1000F828)
/* 00B678 0040B678 0320F809 */  jalr        $t9
/* 00B67C 0040B67C 8CC66A20 */   lw         $a2, %lo(B_10016A20)($a2)
/* 00B680 0040B680 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B684 0040B684 8F9980C0 */  lw          $t9, %call16(close)($gp)
/* 00B688 0040B688 8FA402AC */  lw          $a0, 0x2AC($sp)
/* 00B68C 0040B68C 0320F809 */  jalr        $t9
/* 00B690 0040B690 00000000 */   nop
/* 00B694 0040B694 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B698 0040B698 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 00B69C 0040B69C 24040001 */  addiu       $a0, $zero, 0x1
/* 00B6A0 0040B6A0 0320F809 */  jalr        $t9
/* 00B6A4 0040B6A4 00000000 */   nop
/* 00B6A8 0040B6A8 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040B6AC:
/* 00B6AC 0040B6AC 8FA80154 */  lw          $t0, 0x154($sp)
/* 00B6B0 0040B6B0 8F81873C */  lw          $at, %got(fontdataWordAlignedByteSize)($gp)
/* 00B6B4 0040B6B4 AC280000 */  sw          $t0, 0x0($at)
/* 00B6B8 0040B6B8 8F9980C4 */  lw          $t9, %call16(read)($gp)
/* 00B6BC 0040B6BC 8F85872C */  lw          $a1, %got(fontBuf)($gp)
/* 00B6C0 0040B6C0 8F86873C */  lw          $a2, %got(fontdataWordAlignedByteSize)($gp)
/* 00B6C4 0040B6C4 8FA402AC */  lw          $a0, 0x2AC($sp)
/* 00B6C8 0040B6C8 8CA50000 */  lw          $a1, 0x0($a1)
/* 00B6CC 0040B6CC 0320F809 */  jalr        $t9
/* 00B6D0 0040B6D0 8CC60000 */   lw         $a2, 0x0($a2)
/* 00B6D4 0040B6D4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B6D8 0040B6D8 8F89873C */  lw          $t1, %got(fontdataWordAlignedByteSize)($gp)
/* 00B6DC 0040B6DC 8D290000 */  lw          $t1, 0x0($t1)
/* 00B6E0 0040B6E0 10490019 */  beq         $v0, $t1, .L0040B748
/* 00B6E4 0040B6E4 00000000 */   nop
/* 00B6E8 0040B6E8 8F998068 */  lw          $t9, %call16(sprintf)($gp)
/* 00B6EC 0040B6EC 8F85802C */  lw          $a1, %got(STR_1000F858)($gp)
/* 00B6F0 0040B6F0 8F86802C */  lw          $a2, %got(B_10016A20)($gp)
/* 00B6F4 0040B6F4 27A40024 */  addiu       $a0, $sp, 0x24
/* 00B6F8 0040B6F8 8FA702B0 */  lw          $a3, 0x2B0($sp)
/* 00B6FC 0040B6FC 24A5F858 */  addiu       $a1, $a1, %lo(STR_1000F858)
/* 00B700 0040B700 0320F809 */  jalr        $t9
/* 00B704 0040B704 8CC66A20 */   lw         $a2, %lo(B_10016A20)($a2)
/* 00B708 0040B708 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B70C 0040B70C 8F9980B8 */  lw          $t9, %call16(perror)($gp)
/* 00B710 0040B710 27A40024 */  addiu       $a0, $sp, 0x24
/* 00B714 0040B714 0320F809 */  jalr        $t9
/* 00B718 0040B718 00000000 */   nop
/* 00B71C 0040B71C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B720 0040B720 8F9980C0 */  lw          $t9, %call16(close)($gp)
/* 00B724 0040B724 8FA402AC */  lw          $a0, 0x2AC($sp)
/* 00B728 0040B728 0320F809 */  jalr        $t9
/* 00B72C 0040B72C 00000000 */   nop
/* 00B730 0040B730 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B734 0040B734 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 00B738 0040B738 24040001 */  addiu       $a0, $zero, 0x1
/* 00B73C 0040B73C 0320F809 */  jalr        $t9
/* 00B740 0040B740 00000000 */   nop
/* 00B744 0040B744 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040B748:
/* 00B748 0040B748 8F9980C0 */  lw          $t9, %call16(close)($gp)
/* 00B74C 0040B74C 8FA402AC */  lw          $a0, 0x2AC($sp)
/* 00B750 0040B750 0320F809 */  jalr        $t9
/* 00B754 0040B754 00000000 */   nop
/* 00B758 0040B758 10000003 */  b           .L0040B768
/* 00B75C 0040B75C 8FBC0018 */   lw         $gp, 0x18($sp)
.L0040B760:
/* 00B760 0040B760 8F81872C */  lw          $at, %got(fontBuf)($gp)
/* 00B764 0040B764 AC200000 */  sw          $zero, 0x0($at)
.L0040B768:
/* 00B768 0040B768 10000001 */  b           .L0040B770
/* 00B76C 0040B76C 00000000 */   nop
.L0040B770:
/* 00B770 0040B770 8FBF001C */  lw          $ra, 0x1C($sp)
/* 00B774 0040B774 27BD02B0 */  addiu       $sp, $sp, 0x2B0
/* 00B778 0040B778 03E00008 */  jr          $ra
/* 00B77C 0040B77C 00000000 */   nop
