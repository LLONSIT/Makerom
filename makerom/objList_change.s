.section .late_rodata
glabel jtbl_10012D30
/* 042D30 10012D30 F0411A6C */ .gpword .L0042F7AC
/* 042D34 10012D34 F0411AC8 */ .gpword .L0042F808
/* 042D38 10012D38 F0411B0C */ .gpword .L0042F84C
/* 042D3C 10012D3C F0411B54 */ .gpword .L0042F894
/* 042D40 10012D40 F0411BA4 */ .gpword .L0042F8E4
/* 042D44 10012D44 00000000 */ .word 0x00000000
/* 042D48 10012D48 00000000 */ .word 0x00000000
/* 042D4C 10012D4C 00000000 */ .word 0x00000000


.section .text
glabel objList_change # 549
# _gp_disp: 0xFBEE624
.set noreorder; .cpload $t9; # .set reorder
/* 02F728 0042F728 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 02F72C 0042F72C 8F998064 */  lw          $t9, %call16(malloc)($gp)
/* 02F730 0042F730 AFA7003C */  sw          $a3, 0x3C($sp)
/* 02F734 0042F734 00803825 */  move        $a3, $a0
/* 02F738 0042F738 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02F73C 0042F73C AFA40030 */  sw          $a0, 0x30($sp)
/* 02F740 0042F740 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02F744 0042F744 AFA60038 */  sw          $a2, 0x38($sp)
/* 02F748 0042F748 AFA70030 */  sw          $a3, 0x30($sp)
/* 02F74C 0042F74C 2404000C */  addiu       $a0, $zero, 0xC
/* 02F750 0042F750 0320F809 */  jalr        $t9
/* 02F754 0042F754 AFA50034 */   sw         $a1, 0x34($sp)
/* 02F758 0042F758 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02F75C 0042F75C 8FA50034 */  lw          $a1, 0x34($sp)
/* 02F760 0042F760 8FA70030 */  lw          $a3, 0x30($sp)
/* 02F764 0042F764 14400003 */  bnez        $v0, .L0042F774
/* 02F768 0042F768 AFA2002C */   sw         $v0, 0x2C($sp)
/* 02F76C 0042F76C 10000076 */  b           .L0042F948
/* 02F770 0042F770 00001025 */   move       $v0, $zero
.L0042F774:
/* 02F774 0042F774 8FAE0038 */  lw          $t6, 0x38($sp)
/* 02F778 0042F778 AC4E0000 */  sw          $t6, 0x0($v0)
/* 02F77C 0042F77C 8FAF0040 */  lw          $t7, 0x40($sp)
/* 02F780 0042F780 25F8FFFF */  addiu       $t8, $t7, -0x1
/* 02F784 0042F784 2F010005 */  sltiu       $at, $t8, 0x5
/* 02F788 0042F788 5020006F */  beql        $at, $zero, .L0042F948
/* 02F78C 0042F78C 27A2002C */   addiu      $v0, $sp, 0x2C
/* 02F790 0042F790 8F81802C */  lw          $at, %got(jtbl_10012D30)($gp)
/* 02F794 0042F794 0018C080 */  sll         $t8, $t8, 2
/* 02F798 0042F798 00380821 */  addu        $at, $at, $t8
/* 02F79C 0042F79C 8C382D30 */  lw          $t8, %lo(jtbl_10012D30)($at)
/* 02F7A0 0042F7A0 031CC021 */  addu        $t8, $t8, $gp
/* 02F7A4 0042F7A4 03000008 */  jr          $t8
/* 02F7A8 0042F7A8 00000000 */   nop
.L0042F7AC:
/* 02F7AC 0042F7AC 8CE20000 */  lw          $v0, 0x0($a3)
/* 02F7B0 0042F7B0 8FB9002C */  lw          $t9, 0x2C($sp)
/* 02F7B4 0042F7B4 8FAA002C */  lw          $t2, 0x2C($sp)
/* 02F7B8 0042F7B8 54400008 */  bnel        $v0, $zero, .L0042F7DC
/* 02F7BC 0042F7BC 8C4B0008 */   lw         $t3, 0x8($v0)
/* 02F7C0 0042F7C0 AF220004 */  sw          $v0, 0x4($t9)
/* 02F7C4 0042F7C4 8FA8002C */  lw          $t0, 0x2C($sp)
/* 02F7C8 0042F7C8 AD080008 */  sw          $t0, 0x8($t0)
/* 02F7CC 0042F7CC 8FA9002C */  lw          $t1, 0x2C($sp)
/* 02F7D0 0042F7D0 1000005C */  b           .L0042F944
/* 02F7D4 0042F7D4 ACE90000 */   sw         $t1, 0x0($a3)
/* 02F7D8 0042F7D8 8C4B0008 */  lw          $t3, 0x8($v0)
.L0042F7DC:
/* 02F7DC 0042F7DC AD6A0004 */  sw          $t2, 0x4($t3)
/* 02F7E0 0042F7E0 8CEC0000 */  lw          $t4, 0x0($a3)
/* 02F7E4 0042F7E4 8FAE002C */  lw          $t6, 0x2C($sp)
/* 02F7E8 0042F7E8 8D8D0008 */  lw          $t5, 0x8($t4)
/* 02F7EC 0042F7EC ADCD0008 */  sw          $t5, 0x8($t6)
/* 02F7F0 0042F7F0 8FAF002C */  lw          $t7, 0x2C($sp)
/* 02F7F4 0042F7F4 8CF80000 */  lw          $t8, 0x0($a3)
/* 02F7F8 0042F7F8 AF0F0008 */  sw          $t7, 0x8($t8)
/* 02F7FC 0042F7FC 8FB9002C */  lw          $t9, 0x2C($sp)
/* 02F800 0042F800 10000050 */  b           .L0042F944
/* 02F804 0042F804 AF200004 */   sw         $zero, 0x4($t9)
.L0042F808:
/* 02F808 0042F808 8CE80000 */  lw          $t0, 0x0($a3)
/* 02F80C 0042F80C 8FA9002C */  lw          $t1, 0x2C($sp)
/* 02F810 0042F810 8FAA002C */  lw          $t2, 0x2C($sp)
/* 02F814 0042F814 54A80004 */  bnel        $a1, $t0, .L0042F828
/* 02F818 0042F818 8CAB0008 */   lw         $t3, 0x8($a1)
/* 02F81C 0042F81C 10000003 */  b           .L0042F82C
/* 02F820 0042F820 ACE90000 */   sw         $t1, 0x0($a3)
/* 02F824 0042F824 8CAB0008 */  lw          $t3, 0x8($a1)
.L0042F828:
/* 02F828 0042F828 AD6A0004 */  sw          $t2, 0x4($t3)
.L0042F82C:
/* 02F82C 0042F82C 8CAC0008 */  lw          $t4, 0x8($a1)
/* 02F830 0042F830 8FAD002C */  lw          $t5, 0x2C($sp)
/* 02F834 0042F834 ADAC0008 */  sw          $t4, 0x8($t5)
/* 02F838 0042F838 8FAE002C */  lw          $t6, 0x2C($sp)
/* 02F83C 0042F83C ACAE0008 */  sw          $t6, 0x8($a1)
/* 02F840 0042F840 8FAF002C */  lw          $t7, 0x2C($sp)
/* 02F844 0042F844 1000003F */  b           .L0042F944
/* 02F848 0042F848 ADE50004 */   sw         $a1, 0x4($t7)
.L0042F84C:
/* 02F84C 0042F84C 8CE20000 */  lw          $v0, 0x0($a3)
/* 02F850 0042F850 8FA8002C */  lw          $t0, 0x2C($sp)
/* 02F854 0042F854 8C580008 */  lw          $t8, 0x8($v0)
/* 02F858 0042F858 54B80005 */  bnel        $a1, $t8, .L0042F870
/* 02F85C 0042F85C 8CA90004 */   lw         $t1, 0x4($a1)
/* 02F860 0042F860 8FB9002C */  lw          $t9, 0x2C($sp)
/* 02F864 0042F864 10000003 */  b           .L0042F874
/* 02F868 0042F868 AC590008 */   sw         $t9, 0x8($v0)
/* 02F86C 0042F86C 8CA90004 */  lw          $t1, 0x4($a1)
.L0042F870:
/* 02F870 0042F870 AD280008 */  sw          $t0, 0x8($t1)
.L0042F874:
/* 02F874 0042F874 8CAA0004 */  lw          $t2, 0x4($a1)
/* 02F878 0042F878 8FAB002C */  lw          $t3, 0x2C($sp)
/* 02F87C 0042F87C AD6A0004 */  sw          $t2, 0x4($t3)
/* 02F880 0042F880 8FAC002C */  lw          $t4, 0x2C($sp)
/* 02F884 0042F884 ACAC0004 */  sw          $t4, 0x4($a1)
/* 02F888 0042F888 8FAD002C */  lw          $t5, 0x2C($sp)
/* 02F88C 0042F88C 1000002D */  b           .L0042F944
/* 02F890 0042F890 ADA50008 */   sw         $a1, 0x8($t5)
.L0042F894:
/* 02F894 0042F894 8CAE0008 */  lw          $t6, 0x8($a1)
/* 02F898 0042F898 AFAE002C */  sw          $t6, 0x2C($sp)
/* 02F89C 0042F89C 8CE20000 */  lw          $v0, 0x0($a3)
/* 02F8A0 0042F8A0 54A20004 */  bnel        $a1, $v0, .L0042F8B4
/* 02F8A4 0042F8A4 8CAF0004 */   lw         $t7, 0x4($a1)
/* 02F8A8 0042F8A8 10000004 */  b           .L0042F8BC
/* 02F8AC 0042F8AC AFA2002C */   sw         $v0, 0x2C($sp)
/* 02F8B0 0042F8B0 8CAF0004 */  lw          $t7, 0x4($a1)
.L0042F8B4:
/* 02F8B4 0042F8B4 8CB80008 */  lw          $t8, 0x8($a1)
/* 02F8B8 0042F8B8 AF0F0004 */  sw          $t7, 0x4($t8)
.L0042F8BC:
/* 02F8BC 0042F8BC 8CA20004 */  lw          $v0, 0x4($a1)
/* 02F8C0 0042F8C0 50400005 */  beql        $v0, $zero, .L0042F8D8
/* 02F8C4 0042F8C4 8CA80008 */   lw         $t0, 0x8($a1)
/* 02F8C8 0042F8C8 8CB90008 */  lw          $t9, 0x8($a1)
/* 02F8CC 0042F8CC 1000001D */  b           .L0042F944
/* 02F8D0 0042F8D0 AC590008 */   sw         $t9, 0x8($v0)
/* 02F8D4 0042F8D4 8CA80008 */  lw          $t0, 0x8($a1)
.L0042F8D8:
/* 02F8D8 0042F8D8 8CE90000 */  lw          $t1, 0x0($a3)
/* 02F8DC 0042F8DC 10000019 */  b           .L0042F944
/* 02F8E0 0042F8E0 AD280008 */   sw         $t0, 0x8($t1)
.L0042F8E4:
/* 02F8E4 0042F8E4 8CEA0000 */  lw          $t2, 0x0($a3)
/* 02F8E8 0042F8E8 8FAB002C */  lw          $t3, 0x2C($sp)
/* 02F8EC 0042F8EC 8FAC002C */  lw          $t4, 0x2C($sp)
/* 02F8F0 0042F8F0 54AA0004 */  bnel        $a1, $t2, .L0042F904
/* 02F8F4 0042F8F4 8CAD0008 */   lw         $t5, 0x8($a1)
/* 02F8F8 0042F8F8 10000003 */  b           .L0042F908
/* 02F8FC 0042F8FC ACEB0000 */   sw         $t3, 0x0($a3)
/* 02F900 0042F900 8CAD0008 */  lw          $t5, 0x8($a1)
.L0042F904:
/* 02F904 0042F904 ADAC0004 */  sw          $t4, 0x4($t5)
.L0042F908:
/* 02F908 0042F908 8CA20004 */  lw          $v0, 0x4($a1)
/* 02F90C 0042F90C 8FAE002C */  lw          $t6, 0x2C($sp)
/* 02F910 0042F910 8FAF002C */  lw          $t7, 0x2C($sp)
/* 02F914 0042F914 50400004 */  beql        $v0, $zero, .L0042F928
/* 02F918 0042F918 8CF80000 */   lw         $t8, 0x0($a3)
/* 02F91C 0042F91C 10000003 */  b           .L0042F92C
/* 02F920 0042F920 AC4E0008 */   sw         $t6, 0x8($v0)
/* 02F924 0042F924 8CF80000 */  lw          $t8, 0x0($a3)
.L0042F928:
/* 02F928 0042F928 AF0F0008 */  sw          $t7, 0x8($t8)
.L0042F92C:
/* 02F92C 0042F92C 8CB90008 */  lw          $t9, 0x8($a1)
/* 02F930 0042F930 8FA8002C */  lw          $t0, 0x2C($sp)
/* 02F934 0042F934 AD190008 */  sw          $t9, 0x8($t0)
/* 02F938 0042F938 8FAA002C */  lw          $t2, 0x2C($sp)
/* 02F93C 0042F93C 8CA90004 */  lw          $t1, 0x4($a1)
/* 02F940 0042F940 AD490004 */  sw          $t1, 0x4($t2)
.L0042F944:
/* 02F944 0042F944 27A2002C */  addiu       $v0, $sp, 0x2C
.L0042F948:
/* 02F948 0042F948 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02F94C 0042F94C 27BD0030 */  addiu       $sp, $sp, 0x30
/* 02F950 0042F950 03E00008 */  jr          $ra
/* 02F954 0042F954 00000000 */   nop
