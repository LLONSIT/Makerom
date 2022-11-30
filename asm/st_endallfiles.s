glabel st_endallfiles # 688
# _gp_disp: 0xFBE15D0
.set noreorder; .cpload $t9; # .set reorder
/* 03C77C 0043C77C 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 03C780 0043C780 8F9985D4 */  lw          $t9, %call16(st_currentifd)($gp)
/* 03C784 0043C784 AFBF0034 */  sw          $ra, 0x34($sp)
/* 03C788 0043C788 AFBC0030 */  sw          $gp, 0x30($sp)
/* 03C78C 0043C78C AFB4002C */  sw          $s4, 0x2C($sp)
/* 03C790 0043C790 AFB30028 */  sw          $s3, 0x28($sp)
/* 03C794 0043C794 AFB20024 */  sw          $s2, 0x24($sp)
/* 03C798 0043C798 AFB10020 */  sw          $s1, 0x20($sp)
/* 03C79C 0043C79C 0320F809 */  jalr        $t9
/* 03C7A0 0043C7A0 AFB0001C */   sw         $s0, 0x1C($sp)
/* 03C7A4 0043C7A4 8FBC0030 */  lw          $gp, 0x30($sp)
/* 03C7A8 0043C7A8 AFA20038 */  sw          $v0, 0x38($sp)
/* 03C7AC 0043C7AC 00008825 */  move        $s1, $zero
/* 03C7B0 0043C7B0 8F9985D8 */  lw          $t9, %call16(st_ifdmax)($gp)
/* 03C7B4 0043C7B4 0320F809 */  jalr        $t9
/* 03C7B8 0043C7B8 00000000 */   nop
/* 03C7BC 0043C7BC 18400048 */  blez        $v0, .L0043C8E0
/* 03C7C0 0043C7C0 8FBC0030 */   lw         $gp, 0x30($sp)
/* 03C7C4 0043C7C4 2414000C */  addiu       $s4, $zero, 0xC
/* 03C7C8 0043C7C8 24130008 */  addiu       $s3, $zero, 0x8
/* 03C7CC 0043C7CC 2412FFFF */  addiu       $s2, $zero, -0x1
.L0043C7D0:
/* 03C7D0 0043C7D0 8F998604 */  lw          $t9, %call16(st_pcfd_ifd)($gp)
/* 03C7D4 0043C7D4 02202025 */  move        $a0, $s1
/* 03C7D8 0043C7D8 0320F809 */  jalr        $t9
/* 03C7DC 0043C7DC 00000000 */   nop
/* 03C7E0 0043C7E0 8C430004 */  lw          $v1, 0x4($v0)
/* 03C7E4 0043C7E4 8FBC0030 */  lw          $gp, 0x30($sp)
/* 03C7E8 0043C7E8 10600012 */  beqz        $v1, .L0043C834
/* 03C7EC 0043C7EC 00000000 */   nop
/* 03C7F0 0043C7F0 12430010 */  beq         $s2, $v1, .L0043C834
/* 03C7F4 0043C7F4 00000000 */   nop
/* 03C7F8 0043C7F8 8C4E0000 */  lw          $t6, 0x0($v0)
/* 03C7FC 0043C7FC 8DC40014 */  lw          $a0, 0x14($t6)
/* 03C800 0043C800 1880000C */  blez        $a0, .L0043C834
/* 03C804 0043C804 00000000 */   nop
/* 03C808 0043C808 00940019 */  multu       $a0, $s4
/* 03C80C 0043C80C 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03C810 0043C810 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03C814 0043C814 00007812 */  mflo        $t7
/* 03C818 0043C818 006FC021 */  addu        $t8, $v1, $t7
/* 03C81C 0043C81C 8F05FFFC */  lw          $a1, -0x4($t8)
/* 03C820 0043C820 0005CE82 */  srl         $t9, $a1, 26
/* 03C824 0043C824 16790003 */  bne         $s3, $t9, .L0043C834
/* 03C828 0043C828 00A14024 */   and        $t0, $a1, $at
/* 03C82C 0043C82C 11000025 */  beqz        $t0, .L0043C8C4
/* 03C830 0043C830 00000000 */   nop
.L0043C834:
/* 03C834 0043C834 8F9985DC */  lw          $t9, %call16(st_setfd)($gp)
/* 03C838 0043C838 02202025 */  move        $a0, $s1
/* 03C83C 0043C83C 0320F809 */  jalr        $t9
/* 03C840 0043C840 00000000 */   nop
/* 03C844 0043C844 8FBC0030 */  lw          $gp, 0x30($sp)
/* 03C848 0043C848 02202025 */  move        $a0, $s1
/* 03C84C 0043C84C 00002825 */  move        $a1, $zero
/* 03C850 0043C850 8F998608 */  lw          $t9, %call16(st_psym_ifd_isym)($gp)
/* 03C854 0043C854 0320F809 */  jalr        $t9
/* 03C858 0043C858 00000000 */   nop
/* 03C85C 0043C85C 8FBC0030 */  lw          $gp, 0x30($sp)
/* 03C860 0043C860 8C440000 */  lw          $a0, 0x0($v0)
/* 03C864 0043C864 AFA00010 */  sw          $zero, 0x10($sp)
/* 03C868 0043C868 8F9985FC */  lw          $t9, %call16(st_symadd)($gp)
/* 03C86C 0043C86C 00002825 */  move        $a1, $zero
/* 03C870 0043C870 24060008 */  addiu       $a2, $zero, 0x8
/* 03C874 0043C874 0320F809 */  jalr        $t9
/* 03C878 0043C878 24070001 */   addiu      $a3, $zero, 0x1
/* 03C87C 0043C87C 8FBC0030 */  lw          $gp, 0x30($sp)
/* 03C880 0043C880 00408025 */  move        $s0, $v0
/* 03C884 0043C884 02202025 */  move        $a0, $s1
/* 03C888 0043C888 8F998608 */  lw          $t9, %call16(st_psym_ifd_isym)($gp)
/* 03C88C 0043C88C 00002825 */  move        $a1, $zero
/* 03C890 0043C890 0320F809 */  jalr        $t9
/* 03C894 0043C894 00000000 */   nop
/* 03C898 0043C898 8C430008 */  lw          $v1, 0x8($v0)
/* 03C89C 0043C89C 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03C8A0 0043C8A0 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03C8A4 0043C8A4 26100001 */  addiu       $s0, $s0, 0x1
/* 03C8A8 0043C8A8 02014824 */  and         $t1, $s0, $at
/* 03C8AC 0043C8AC 01235026 */  xor         $t2, $t1, $v1
/* 03C8B0 0043C8B0 000A5B00 */  sll         $t3, $t2, 12
/* 03C8B4 0043C8B4 000B6302 */  srl         $t4, $t3, 12
/* 03C8B8 0043C8B8 8FBC0030 */  lw          $gp, 0x30($sp)
/* 03C8BC 0043C8BC 01836826 */  xor         $t5, $t4, $v1
/* 03C8C0 0043C8C0 AC4D0008 */  sw          $t5, 0x8($v0)
.L0043C8C4:
/* 03C8C4 0043C8C4 8F9985D8 */  lw          $t9, %call16(st_ifdmax)($gp)
/* 03C8C8 0043C8C8 26310001 */  addiu       $s1, $s1, 0x1
/* 03C8CC 0043C8CC 0320F809 */  jalr        $t9
/* 03C8D0 0043C8D0 00000000 */   nop
/* 03C8D4 0043C8D4 0222082A */  slt         $at, $s1, $v0
/* 03C8D8 0043C8D8 1420FFBD */  bnez        $at, .L0043C7D0
/* 03C8DC 0043C8DC 8FBC0030 */   lw         $gp, 0x30($sp)
.L0043C8E0:
/* 03C8E0 0043C8E0 8F9985DC */  lw          $t9, %call16(st_setfd)($gp)
/* 03C8E4 0043C8E4 8FA40038 */  lw          $a0, 0x38($sp)
/* 03C8E8 0043C8E8 0320F809 */  jalr        $t9
/* 03C8EC 0043C8EC 00000000 */   nop
/* 03C8F0 0043C8F0 8FBC0030 */  lw          $gp, 0x30($sp)
/* 03C8F4 0043C8F4 8F908030 */  lw          $s0, %got(B_1001B80C)($gp)
/* 03C8F8 0043C8F8 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 03C8FC 0043C8FC 2610B80C */  addiu       $s0, $s0, %lo(B_1001B80C)
/* 03C900 0043C900 0320F809 */  jalr        $t9
/* 03C904 0043C904 8E040000 */   lw         $a0, 0x0($s0)
/* 03C908 0043C908 8FBC0030 */  lw          $gp, 0x30($sp)
/* 03C90C 0043C90C AE000000 */  sw          $zero, 0x0($s0)
/* 03C910 0043C910 8FBF0034 */  lw          $ra, 0x34($sp)
/* 03C914 0043C914 8F818030 */  lw          $at, %got(B_1001B810)($gp)
/* 03C918 0043C918 8FB0001C */  lw          $s0, 0x1C($sp)
/* 03C91C 0043C91C 8FB10020 */  lw          $s1, 0x20($sp)
/* 03C920 0043C920 AC20B810 */  sw          $zero, %lo(B_1001B810)($at)
/* 03C924 0043C924 8F818030 */  lw          $at, %got(B_1001B814)($gp)
/* 03C928 0043C928 8FB20024 */  lw          $s2, 0x24($sp)
/* 03C92C 0043C92C 8FB30028 */  lw          $s3, 0x28($sp)
/* 03C930 0043C930 8FB4002C */  lw          $s4, 0x2C($sp)
/* 03C934 0043C934 27BD0048 */  addiu       $sp, $sp, 0x48
/* 03C938 0043C938 03E00008 */  jr          $ra
/* 03C93C 0043C93C AC20B814 */   sw         $zero, %lo(B_1001B814)($at)
