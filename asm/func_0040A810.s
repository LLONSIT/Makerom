.section .rodata
glabel STR_1000F49C
/* 03F49C 1000F49C */ .asciz "/sbin/uname -r"
                      .balign 4

glabel STR_1000F4AC
/* 03F4AC 1000F4AC */ .asciz "r"
                      .balign 4

glabel STR_1000F4B0
/* 03F4B0 1000F4B0 */ .asciz "5.3\n"
                      .balign 4

glabel STR_1000F4B8
/* 03F4B8 1000F4B8 */ .asciz "6.2\n"
                      .balign 4

glabel STR_1000F4C0
/* 03F4C0 1000F4C0 */ .asciz "6.3\n"
                      .balign 4

glabel STR_1000F4C8
/* 03F4C8 1000F4C8 */ .asciz "6.4\n"
                      .balign 4

glabel STR_1000F4D0
/* 03F4D0 1000F4D0 */ .asciz "makerom: Operating system not recognized.  Trying 6.x ...\n"
                      .balign 4

glabel STR_1000F50C
/* 03F50C 1000F50C */ .asciz "makerom: Unable to find uname command!\n"
                      .balign 4


.section .text
glabel func_0040A810 # 4
# _gp_disp: 0xFC13530
.set noreorder; .cpload $t9; # .set reorder
/* 00A81C 0040A81C 27BDEFD8 */  addiu       $sp, $sp, -0x1028
/* 00A820 0040A820 AFBF001C */  sw          $ra, 0x1C($sp)
/* 00A824 0040A824 AFBC0018 */  sw          $gp, 0x18($sp)
/* 00A828 0040A828 8F8E802C */  lw          $t6, %got(STR_1000F49C)($gp)
/* 00A82C 0040A82C 25CEF49C */  addiu       $t6, $t6, %lo(STR_1000F49C)
/* 00A830 0040A830 AFAE1024 */  sw          $t6, 0x1024($sp)
/* 00A834 0040A834 8F998084 */  lw          $t9, %call16(popen)($gp)
/* 00A838 0040A838 8F85802C */  lw          $a1, %got(STR_1000F4AC)($gp)
/* 00A83C 0040A83C 8FA41024 */  lw          $a0, 0x1024($sp)
/* 00A840 0040A840 0320F809 */  jalr        $t9
/* 00A844 0040A844 24A5F4AC */   addiu      $a1, $a1, %lo(STR_1000F4AC)
/* 00A848 0040A848 AFA20020 */  sw          $v0, 0x20($sp)
/* 00A84C 0040A84C 8FAF0020 */  lw          $t7, 0x20($sp)
/* 00A850 0040A850 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00A854 0040A854 11E00043 */  beqz        $t7, .L0040A964
/* 00A858 0040A858 00000000 */   nop
/* 00A85C 0040A85C 8F9980A4 */  lw          $t9, %call16(fgets)($gp)
/* 00A860 0040A860 27A40024 */  addiu       $a0, $sp, 0x24
/* 00A864 0040A864 24051000 */  addiu       $a1, $zero, 0x1000
/* 00A868 0040A868 0320F809 */  jalr        $t9
/* 00A86C 0040A86C 8FA60020 */   lw         $a2, 0x20($sp)
/* 00A870 0040A870 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00A874 0040A874 8F998088 */  lw          $t9, %call16(pclose)($gp)
/* 00A878 0040A878 8FA40020 */  lw          $a0, 0x20($sp)
/* 00A87C 0040A87C 0320F809 */  jalr        $t9
/* 00A880 0040A880 00000000 */   nop
/* 00A884 0040A884 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00A888 0040A888 8F9980A8 */  lw          $t9, %call16(strcmp)($gp)
/* 00A88C 0040A88C 8F85802C */  lw          $a1, %got(STR_1000F4B0)($gp)
/* 00A890 0040A890 27A40024 */  addiu       $a0, $sp, 0x24
/* 00A894 0040A894 0320F809 */  jalr        $t9
/* 00A898 0040A898 24A5F4B0 */   addiu      $a1, $a1, %lo(STR_1000F4B0)
/* 00A89C 0040A89C 14400004 */  bnez        $v0, .L0040A8B0
/* 00A8A0 0040A8A0 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00A8A4 0040A8A4 8F818740 */  lw          $at, %got(irixVersion)($gp)
/* 00A8A8 0040A8A8 1000002C */  b           .L0040A95C
/* 00A8AC 0040A8AC AC200000 */   sw         $zero, 0x0($at)
.L0040A8B0:
/* 00A8B0 0040A8B0 8F9980A8 */  lw          $t9, %call16(strcmp)($gp)
/* 00A8B4 0040A8B4 8F85802C */  lw          $a1, %got(STR_1000F4B8)($gp)
/* 00A8B8 0040A8B8 27A40024 */  addiu       $a0, $sp, 0x24
/* 00A8BC 0040A8BC 0320F809 */  jalr        $t9
/* 00A8C0 0040A8C0 24A5F4B8 */   addiu      $a1, $a1, %lo(STR_1000F4B8)
/* 00A8C4 0040A8C4 14400005 */  bnez        $v0, .L0040A8DC
/* 00A8C8 0040A8C8 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00A8CC 0040A8CC 8F818740 */  lw          $at, %got(irixVersion)($gp)
/* 00A8D0 0040A8D0 24180001 */  addiu       $t8, $zero, 0x1
/* 00A8D4 0040A8D4 10000021 */  b           .L0040A95C
/* 00A8D8 0040A8D8 AC380000 */   sw         $t8, 0x0($at)
.L0040A8DC:
/* 00A8DC 0040A8DC 8F9980A8 */  lw          $t9, %call16(strcmp)($gp)
/* 00A8E0 0040A8E0 8F85802C */  lw          $a1, %got(STR_1000F4C0)($gp)
/* 00A8E4 0040A8E4 27A40024 */  addiu       $a0, $sp, 0x24
/* 00A8E8 0040A8E8 0320F809 */  jalr        $t9
/* 00A8EC 0040A8EC 24A5F4C0 */   addiu      $a1, $a1, %lo(STR_1000F4C0)
/* 00A8F0 0040A8F0 14400005 */  bnez        $v0, .L0040A908
/* 00A8F4 0040A8F4 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00A8F8 0040A8F8 8F818740 */  lw          $at, %got(irixVersion)($gp)
/* 00A8FC 0040A8FC 24190002 */  addiu       $t9, $zero, 0x2
/* 00A900 0040A900 10000016 */  b           .L0040A95C
/* 00A904 0040A904 AC390000 */   sw         $t9, 0x0($at)
.L0040A908:
/* 00A908 0040A908 8F9980A8 */  lw          $t9, %call16(strcmp)($gp)
/* 00A90C 0040A90C 8F85802C */  lw          $a1, %got(STR_1000F4C8)($gp)
/* 00A910 0040A910 27A40024 */  addiu       $a0, $sp, 0x24
/* 00A914 0040A914 0320F809 */  jalr        $t9
/* 00A918 0040A918 24A5F4C8 */   addiu      $a1, $a1, %lo(STR_1000F4C8)
/* 00A91C 0040A91C 14400005 */  bnez        $v0, .L0040A934
/* 00A920 0040A920 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00A924 0040A924 8F818740 */  lw          $at, %got(irixVersion)($gp)
/* 00A928 0040A928 24080003 */  addiu       $t0, $zero, 0x3
/* 00A92C 0040A92C 1000000B */  b           .L0040A95C
/* 00A930 0040A930 AC280000 */   sw         $t0, 0x0($at)
.L0040A934:
/* 00A934 0040A934 8F818740 */  lw          $at, %got(irixVersion)($gp)
/* 00A938 0040A938 24090004 */  addiu       $t1, $zero, 0x4
/* 00A93C 0040A93C AC290000 */  sw          $t1, 0x0($at)
/* 00A940 0040A940 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00A944 0040A944 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00A948 0040A948 8F85802C */  lw          $a1, %got(STR_1000F4D0)($gp)
/* 00A94C 0040A94C 24840020 */  addiu       $a0, $a0, 0x20
/* 00A950 0040A950 0320F809 */  jalr        $t9
/* 00A954 0040A954 24A5F4D0 */   addiu      $a1, $a1, %lo(STR_1000F4D0)
/* 00A958 0040A958 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040A95C:
/* 00A95C 0040A95C 1000000D */  b           .L0040A994
/* 00A960 0040A960 00000000 */   nop
.L0040A964:
/* 00A964 0040A964 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00A968 0040A968 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00A96C 0040A96C 8F85802C */  lw          $a1, %got(STR_1000F50C)($gp)
/* 00A970 0040A970 24840020 */  addiu       $a0, $a0, 0x20
/* 00A974 0040A974 0320F809 */  jalr        $t9
/* 00A978 0040A978 24A5F50C */   addiu      $a1, $a1, %lo(STR_1000F50C)
/* 00A97C 0040A97C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00A980 0040A980 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 00A984 0040A984 24040001 */  addiu       $a0, $zero, 0x1
/* 00A988 0040A988 0320F809 */  jalr        $t9
/* 00A98C 0040A98C 00000000 */   nop
/* 00A990 0040A990 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040A994:
/* 00A994 0040A994 10000001 */  b           .L0040A99C
/* 00A998 0040A998 00000000 */   nop
.L0040A99C:
/* 00A99C 0040A99C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 00A9A0 0040A9A0 27BD1028 */  addiu       $sp, $sp, 0x1028
/* 00A9A4 0040A9A4 03E00008 */  jr          $ra
/* 00A9A8 0040A9A8 00000000 */   nop
