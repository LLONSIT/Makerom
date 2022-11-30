.section .rodata
glabel STR_10013E8C
/* 043E8C 10013E8C */ .asciz "st_paux_iaux: iaux (%d) out of range\n"
                      .balign 4
/* 043EB4 10013EB4 */ .asciz ""
                      .balign 4
/* 043EB8 10013EB8 */ .asciz ""
                      .balign 4
/* 043EBC 10013EBC */ .asciz ""
                      .balign 4


.section .text
glabel st_paux_iaux # 667
# _gp_disp: 0xFBE25AC
.set noreorder; .cpload $t9; # .set reorder
/* 03B7A0 0043B7A0 8F8E87C4 */  lw          $t6, %got(st_pchdr)($gp)
/* 03B7A4 0043B7A4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03B7A8 0043B7A8 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03B7AC 0043B7AC 8DCE0000 */  lw          $t6, 0x0($t6)
/* 03B7B0 0043B7B0 AFBC0018 */  sw          $gp, 0x18($sp)
/* 03B7B4 0043B7B4 AFA40020 */  sw          $a0, 0x20($sp)
/* 03B7B8 0043B7B8 8DCF0004 */  lw          $t7, 0x4($t6)
/* 03B7BC 0043B7BC 15E00006 */  bnez        $t7, .L0043B7D8
/* 03B7C0 0043B7C0 00000000 */   nop
/* 03B7C4 0043B7C4 8F998614 */  lw          $t9, %call16(_md_st_internal)($gp)
/* 03B7C8 0043B7C8 8F84802C */  lw          $a0, %got(D_10015C20)($gp)
/* 03B7CC 0043B7CC 0320F809 */  jalr        $t9
/* 03B7D0 0043B7D0 24845C20 */   addiu      $a0, $a0, %lo(D_10015C20)
/* 03B7D4 0043B7D4 8FBC0018 */  lw          $gp, 0x18($sp)
.L0043B7D8:
/* 03B7D8 0043B7D8 8F9887C8 */  lw          $t8, %got(pcfdcur)($gp)
/* 03B7DC 0043B7DC 8F180000 */  lw          $t8, 0x0($t8)
/* 03B7E0 0043B7E0 57000007 */  bnel        $t8, $zero, .L0043B800
/* 03B7E4 0043B7E4 8FB90020 */   lw         $t9, 0x20($sp)
/* 03B7E8 0043B7E8 8F998614 */  lw          $t9, %call16(_md_st_internal)($gp)
/* 03B7EC 0043B7EC 8F84802C */  lw          $a0, %got(D_10015C5C)($gp)
/* 03B7F0 0043B7F0 0320F809 */  jalr        $t9
/* 03B7F4 0043B7F4 24845C5C */   addiu      $a0, $a0, %lo(D_10015C5C)
/* 03B7F8 0043B7F8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03B7FC 0043B7FC 8FB90020 */  lw          $t9, 0x20($sp)
.L0043B800:
/* 03B800 0043B800 07200008 */  bltz        $t9, .L0043B824
/* 03B804 0043B804 00000000 */   nop
/* 03B808 0043B808 8F8387C8 */  lw          $v1, %got(pcfdcur)($gp)
/* 03B80C 0043B80C 8C630000 */  lw          $v1, 0x0($v1)
/* 03B810 0043B810 8C680000 */  lw          $t0, 0x0($v1)
/* 03B814 0043B814 8D090030 */  lw          $t1, 0x30($t0)
/* 03B818 0043B818 0329082A */  slt         $at, $t9, $t1
/* 03B81C 0043B81C 5420000A */  bnel        $at, $zero, .L0043B848
/* 03B820 0043B820 8FAB0020 */   lw         $t3, 0x20($sp)
.L0043B824:
/* 03B824 0043B824 8F998614 */  lw          $t9, %call16(_md_st_internal)($gp)
/* 03B828 0043B828 8F84802C */  lw          $a0, %got(STR_10013E8C)($gp)
/* 03B82C 0043B82C 8FA50020 */  lw          $a1, 0x20($sp)
/* 03B830 0043B830 0320F809 */  jalr        $t9
/* 03B834 0043B834 24843E8C */   addiu      $a0, $a0, %lo(STR_10013E8C)
/* 03B838 0043B838 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03B83C 0043B83C 8F8387C8 */  lw          $v1, %got(pcfdcur)($gp)
/* 03B840 0043B840 8C630000 */  lw          $v1, 0x0($v1)
/* 03B844 0043B844 8FAB0020 */  lw          $t3, 0x20($sp)
.L0043B848:
/* 03B848 0043B848 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03B84C 0043B84C 8C6A000C */  lw          $t2, 0xC($v1)
/* 03B850 0043B850 000B6080 */  sll         $t4, $t3, 2
/* 03B854 0043B854 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03B858 0043B858 03E00008 */  jr          $ra
/* 03B85C 0043B85C 014C1021 */   addu       $v0, $t2, $t4
