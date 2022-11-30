.section .rodata
glabel STR_100140F0
/* 0440F0 100140F0 */ .asciz "st_filebegin: tried to end too many files (%s)\n"
                      .balign 4


.section .text
glabel st_filebegin # 687
# _gp_disp: 0xFBE186C
.set noreorder; .cpload $t9; # .set reorder
/* 03C4E0 0043C4E0 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 03C4E4 0043C4E4 8F9985D8 */  lw          $t9, %call16(st_ifdmax)($gp)
/* 03C4E8 0043C4E8 AFBF002C */  sw          $ra, 0x2C($sp)
/* 03C4EC 0043C4EC AFB20024 */  sw          $s2, 0x24($sp)
/* 03C4F0 0043C4F0 AFB0001C */  sw          $s0, 0x1C($sp)
/* 03C4F4 0043C4F4 00809025 */  move        $s2, $a0
/* 03C4F8 0043C4F8 AFBC0028 */  sw          $gp, 0x28($sp)
/* 03C4FC 0043C4FC AFB10020 */  sw          $s1, 0x20($sp)
/* 03C500 0043C500 AFA50034 */  sw          $a1, 0x34($sp)
/* 03C504 0043C504 AFA60038 */  sw          $a2, 0x38($sp)
/* 03C508 0043C508 AFA7003C */  sw          $a3, 0x3C($sp)
/* 03C50C 0043C50C 0320F809 */  jalr        $t9
/* 03C510 0043C510 00008025 */   move       $s0, $zero
/* 03C514 0043C514 1840004B */  blez        $v0, .L0043C644
/* 03C518 0043C518 8FBC0028 */   lw         $gp, 0x28($sp)
/* 03C51C 0043C51C 8F918030 */  lw          $s1, %got(B_1001B810)($gp)
/* 03C520 0043C520 2631B810 */  addiu       $s1, $s1, %lo(B_1001B810)
.L0043C524:
/* 03C524 0043C524 8F998610 */  lw          $t9, %call16(st_str_ifd_iss)($gp)
/* 03C528 0043C528 02002025 */  move        $a0, $s0
/* 03C52C 0043C52C 24050001 */  addiu       $a1, $zero, 0x1
/* 03C530 0043C530 0320F809 */  jalr        $t9
/* 03C534 0043C534 00000000 */   nop
/* 03C538 0043C538 8FBC0028 */  lw          $gp, 0x28($sp)
/* 03C53C 0043C53C 02402025 */  move        $a0, $s2
/* 03C540 0043C540 00402825 */  move        $a1, $v0
/* 03C544 0043C544 8F9980A8 */  lw          $t9, %call16(strcmp)($gp)
/* 03C548 0043C548 0320F809 */  jalr        $t9
/* 03C54C 0043C54C 00000000 */   nop
/* 03C550 0043C550 14400035 */  bnez        $v0, .L0043C628
/* 03C554 0043C554 8FBC0028 */   lw         $gp, 0x28($sp)
/* 03C558 0043C558 8E240000 */  lw          $a0, 0x0($s1)
/* 03C55C 0043C55C 2483FFFF */  addiu       $v1, $a0, -0x1
/* 03C560 0043C560 0460000B */  bltz        $v1, .L0043C590
/* 03C564 0043C564 00000000 */   nop
/* 03C568 0043C568 8F8E8030 */  lw          $t6, %got(B_1001B80C)($gp)
/* 03C56C 0043C56C 000378C0 */  sll         $t7, $v1, 3
/* 03C570 0043C570 8DCEB80C */  lw          $t6, %lo(B_1001B80C)($t6)
/* 03C574 0043C574 01CF1021 */  addu        $v0, $t6, $t7
.L0043C578:
/* 03C578 0043C578 8C580000 */  lw          $t8, 0x0($v0)
/* 03C57C 0043C57C 12180004 */  beq         $s0, $t8, .L0043C590
/* 03C580 0043C580 00000000 */   nop
/* 03C584 0043C584 2463FFFF */  addiu       $v1, $v1, -0x1
/* 03C588 0043C588 0461FFFB */  bgez        $v1, .L0043C578
/* 03C58C 0043C58C 2442FFF8 */   addiu      $v0, $v0, -0x8
.L0043C590:
/* 03C590 0043C590 04600025 */  bltz        $v1, .L0043C628
/* 03C594 0043C594 00000000 */   nop
/* 03C598 0043C598 8F838030 */  lw          $v1, %got(B_1001B80C)($gp)
/* 03C59C 0043C59C 0004C8C0 */  sll         $t9, $a0, 3
/* 03C5A0 0043C5A0 8C63B80C */  lw          $v1, %lo(B_1001B80C)($v1)
/* 03C5A4 0043C5A4 00794021 */  addu        $t0, $v1, $t9
/* 03C5A8 0043C5A8 8D09FFF8 */  lw          $t1, -0x8($t0)
/* 03C5AC 0043C5AC 12090012 */  beq         $s0, $t1, .L0043C5F8
/* 03C5B0 0043C5B0 248AFFFF */   addiu      $t2, $a0, -0x1
.L0043C5B4:
/* 03C5B4 0043C5B4 AE2A0000 */  sw          $t2, 0x0($s1)
/* 03C5B8 0043C5B8 0541000A */  bgez        $t2, .L0043C5E4
/* 03C5BC 0043C5BC 01402025 */   move       $a0, $t2
/* 03C5C0 0043C5C0 8F998638 */  lw          $t9, %call16(st_internal)($gp)
/* 03C5C4 0043C5C4 8F84802C */  lw          $a0, %got(STR_100140F0)($gp)
/* 03C5C8 0043C5C8 02402825 */  move        $a1, $s2
/* 03C5CC 0043C5CC 0320F809 */  jalr        $t9
/* 03C5D0 0043C5D0 248440F0 */   addiu      $a0, $a0, %lo(STR_100140F0)
/* 03C5D4 0043C5D4 8FBC0028 */  lw          $gp, 0x28($sp)
/* 03C5D8 0043C5D8 8E240000 */  lw          $a0, 0x0($s1)
/* 03C5DC 0043C5DC 8F838030 */  lw          $v1, %got(B_1001B80C)($gp)
/* 03C5E0 0043C5E0 8C63B80C */  lw          $v1, %lo(B_1001B80C)($v1)
.L0043C5E4:
/* 03C5E4 0043C5E4 000458C0 */  sll         $t3, $a0, 3
/* 03C5E8 0043C5E8 006B6021 */  addu        $t4, $v1, $t3
/* 03C5EC 0043C5EC 8D8DFFF8 */  lw          $t5, -0x8($t4)
/* 03C5F0 0043C5F0 560DFFF0 */  bnel        $s0, $t5, .L0043C5B4
/* 03C5F4 0043C5F4 248AFFFF */   addiu      $t2, $a0, -0x1
.L0043C5F8:
/* 03C5F8 0043C5F8 8F9985DC */  lw          $t9, %call16(st_setfd)($gp)
/* 03C5FC 0043C5FC 02002025 */  move        $a0, $s0
/* 03C600 0043C600 0320F809 */  jalr        $t9
/* 03C604 0043C604 00000000 */   nop
/* 03C608 0043C608 8FBC0028 */  lw          $gp, 0x28($sp)
/* 03C60C 0043C60C 8E2F0000 */  lw          $t7, 0x0($s1)
/* 03C610 0043C610 8F8E8030 */  lw          $t6, %got(B_1001B80C)($gp)
/* 03C614 0043C614 000FC0C0 */  sll         $t8, $t7, 3
/* 03C618 0043C618 8DCEB80C */  lw          $t6, %lo(B_1001B80C)($t6)
/* 03C61C 0043C61C 01D8C821 */  addu        $t9, $t6, $t8
/* 03C620 0043C620 1000004D */  b           .L0043C758
/* 03C624 0043C624 8F22FFFC */   lw         $v0, -0x4($t9)
.L0043C628:
/* 03C628 0043C628 8F9985D8 */  lw          $t9, %call16(st_ifdmax)($gp)
/* 03C62C 0043C62C 26100001 */  addiu       $s0, $s0, 0x1
/* 03C630 0043C630 0320F809 */  jalr        $t9
/* 03C634 0043C634 00000000 */   nop
/* 03C638 0043C638 0202082A */  slt         $at, $s0, $v0
/* 03C63C 0043C63C 1420FFB9 */  bnez        $at, .L0043C524
/* 03C640 0043C640 8FBC0028 */   lw         $gp, 0x28($sp)
.L0043C644:
/* 03C644 0043C644 8F9985E0 */  lw          $t9, %call16(st_fdadd)($gp)
/* 03C648 0043C648 8F918030 */  lw          $s1, %got(B_1001B810)($gp)
/* 03C64C 0043C64C 02402025 */  move        $a0, $s2
/* 03C650 0043C650 8FA50034 */  lw          $a1, 0x34($sp)
/* 03C654 0043C654 8FA60038 */  lw          $a2, 0x38($sp)
/* 03C658 0043C658 8FA7003C */  lw          $a3, 0x3C($sp)
/* 03C65C 0043C65C 0320F809 */  jalr        $t9
/* 03C660 0043C660 2631B810 */   addiu      $s1, $s1, %lo(B_1001B810)
/* 03C664 0043C664 8FBC0028 */  lw          $gp, 0x28($sp)
/* 03C668 0043C668 8F99864C */  lw          $t9, %call16(st_feinit)($gp)
/* 03C66C 0043C66C 0320F809 */  jalr        $t9
/* 03C670 0043C670 00000000 */   nop
/* 03C674 0043C674 8FBC0028 */  lw          $gp, 0x28($sp)
/* 03C678 0043C678 8E290000 */  lw          $t1, 0x0($s1)
/* 03C67C 0043C67C 24060008 */  addiu       $a2, $zero, 0x8
/* 03C680 0043C680 8F858030 */  lw          $a1, %got(B_1001B814)($gp)
/* 03C684 0043C684 24A5B814 */  addiu       $a1, $a1, %lo(B_1001B814)
/* 03C688 0043C688 8CA80000 */  lw          $t0, 0x0($a1)
/* 03C68C 0043C68C 0128082A */  slt         $at, $t1, $t0
/* 03C690 0043C690 14200009 */  bnez        $at, .L0043C6B8
/* 03C694 0043C694 00000000 */   nop
/* 03C698 0043C698 8F9985F8 */  lw          $t9, %call16(st_malloc)($gp)
/* 03C69C 0043C69C 8F848030 */  lw          $a0, %got(B_1001B80C)($gp)
/* 03C6A0 0043C6A0 24070019 */  addiu       $a3, $zero, 0x19
/* 03C6A4 0043C6A4 0320F809 */  jalr        $t9
/* 03C6A8 0043C6A8 8C84B80C */   lw         $a0, %lo(B_1001B80C)($a0)
/* 03C6AC 0043C6AC 8FBC0028 */  lw          $gp, 0x28($sp)
/* 03C6B0 0043C6B0 8F818030 */  lw          $at, %got(B_1001B80C)($gp)
/* 03C6B4 0043C6B4 AC22B80C */  sw          $v0, %lo(B_1001B80C)($at)
.L0043C6B8:
/* 03C6B8 0043C6B8 8F9985D4 */  lw          $t9, %call16(st_currentifd)($gp)
/* 03C6BC 0043C6BC 0320F809 */  jalr        $t9
/* 03C6C0 0043C6C0 00000000 */   nop
/* 03C6C4 0043C6C4 8FBC0028 */  lw          $gp, 0x28($sp)
/* 03C6C8 0043C6C8 8E2B0000 */  lw          $t3, 0x0($s1)
/* 03C6CC 0043C6CC 3C0F000F */  lui         $t7, (0xFFFFF >> 16)
/* 03C6D0 0043C6D0 8F8A8030 */  lw          $t2, %got(B_1001B80C)($gp)
/* 03C6D4 0043C6D4 000B60C0 */  sll         $t4, $t3, 3
/* 03C6D8 0043C6D8 35EFFFFF */  ori         $t7, $t7, (0xFFFFF & 0xFFFF)
/* 03C6DC 0043C6DC 8D4AB80C */  lw          $t2, %lo(B_1001B80C)($t2)
/* 03C6E0 0043C6E0 24040001 */  addiu       $a0, $zero, 0x1
/* 03C6E4 0043C6E4 00002825 */  move        $a1, $zero
/* 03C6E8 0043C6E8 014C6821 */  addu        $t5, $t2, $t4
/* 03C6EC 0043C6EC ADA20000 */  sw          $v0, 0x0($t5)
/* 03C6F0 0043C6F0 8F9985FC */  lw          $t9, %call16(st_symadd)($gp)
/* 03C6F4 0043C6F4 AFAF0010 */  sw          $t7, 0x10($sp)
/* 03C6F8 0043C6F8 2406000B */  addiu       $a2, $zero, 0xB
/* 03C6FC 0043C6FC 0320F809 */  jalr        $t9
/* 03C700 0043C700 24070001 */   addiu      $a3, $zero, 0x1
/* 03C704 0043C704 8FBC0028 */  lw          $gp, 0x28($sp)
/* 03C708 0043C708 00402025 */  move        $a0, $v0
/* 03C70C 0043C70C 00002825 */  move        $a1, $zero
/* 03C710 0043C710 8F99862C */  lw          $t9, %call16(st_idn_index_fext)($gp)
/* 03C714 0043C714 0320F809 */  jalr        $t9
/* 03C718 0043C718 00000000 */   nop
/* 03C71C 0043C71C 8FBC0028 */  lw          $gp, 0x28($sp)
/* 03C720 0043C720 8E380000 */  lw          $t8, 0x0($s1)
/* 03C724 0043C724 8F858030 */  lw          $a1, %got(B_1001B80C)($gp)
/* 03C728 0043C728 0018C8C0 */  sll         $t9, $t8, 3
/* 03C72C 0043C72C 24A5B80C */  addiu       $a1, $a1, %lo(B_1001B80C)
/* 03C730 0043C730 8CAE0000 */  lw          $t6, 0x0($a1)
/* 03C734 0043C734 01D94021 */  addu        $t0, $t6, $t9
/* 03C738 0043C738 AD020004 */  sw          $v0, 0x4($t0)
/* 03C73C 0043C73C 8E240000 */  lw          $a0, 0x0($s1)
/* 03C740 0043C740 8CA90000 */  lw          $t1, 0x0($a1)
/* 03C744 0043C744 000458C0 */  sll         $t3, $a0, 3
/* 03C748 0043C748 012B5021 */  addu        $t2, $t1, $t3
/* 03C74C 0043C74C 8D420004 */  lw          $v0, 0x4($t2)
/* 03C750 0043C750 248C0001 */  addiu       $t4, $a0, 0x1
/* 03C754 0043C754 AE2C0000 */  sw          $t4, 0x0($s1)
.L0043C758:
/* 03C758 0043C758 8FBF002C */  lw          $ra, 0x2C($sp)
/* 03C75C 0043C75C 8FB0001C */  lw          $s0, 0x1C($sp)
/* 03C760 0043C760 8FB10020 */  lw          $s1, 0x20($sp)
/* 03C764 0043C764 8FB20024 */  lw          $s2, 0x24($sp)
/* 03C768 0043C768 03E00008 */  jr          $ra
/* 03C76C 0043C76C 27BD0030 */   addiu      $sp, $sp, 0x30
