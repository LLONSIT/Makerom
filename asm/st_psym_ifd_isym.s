.section .rodata
glabel STR_10013E54
/* 043E54 10013E54 */ .asciz "st_psym_ifd_isym: ifd (%d) or isym (%d) out of range\n"
                      .balign 4


.section .text
glabel st_psym_ifd_isym # 666
# _gp_disp: 0xFBE26D4
.set noreorder; .cpload $t9; # .set reorder
/* 03B678 0043B678 8F8E87C4 */  lw          $t6, %got(st_pchdr)($gp)
/* 03B67C 0043B67C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03B680 0043B680 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03B684 0043B684 8DCE0000 */  lw          $t6, 0x0($t6)
/* 03B688 0043B688 AFBC0018 */  sw          $gp, 0x18($sp)
/* 03B68C 0043B68C 00803825 */  move        $a3, $a0
/* 03B690 0043B690 8DCF0004 */  lw          $t7, 0x4($t6)
/* 03B694 0043B694 00A03025 */  move        $a2, $a1
/* 03B698 0043B698 55E0000B */  bnel        $t7, $zero, .L0043B6C8
/* 03B69C 0043B69C 3C017FFF */   lui        $at, (0x7FFFFFFF >> 16)
/* 03B6A0 0043B6A0 8F998614 */  lw          $t9, %call16(_md_st_internal)($gp)
/* 03B6A4 0043B6A4 8F84802C */  lw          $a0, %got(D_10015C20)($gp)
/* 03B6A8 0043B6A8 AFA5002C */  sw          $a1, 0x2C($sp)
/* 03B6AC 0043B6AC AFA70028 */  sw          $a3, 0x28($sp)
/* 03B6B0 0043B6B0 0320F809 */  jalr        $t9
/* 03B6B4 0043B6B4 24845C20 */   addiu      $a0, $a0, %lo(D_10015C20)
/* 03B6B8 0043B6B8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03B6BC 0043B6BC 8FA6002C */  lw          $a2, 0x2C($sp)
/* 03B6C0 0043B6C0 8FA70028 */  lw          $a3, 0x28($sp)
/* 03B6C4 0043B6C4 3C017FFF */  lui         $at, (0x7FFFFFFF >> 16)
.L0043B6C8:
/* 03B6C8 0043B6C8 3421FFFF */  ori         $at, $at, (0x7FFFFFFF & 0xFFFF)
/* 03B6CC 0043B6CC 14E10008 */  bne         $a3, $at, .L0043B6F0
/* 03B6D0 0043B6D0 00000000 */   nop
/* 03B6D4 0043B6D4 8F998628 */  lw          $t9, %call16(st_pext_iext)($gp)
/* 03B6D8 0043B6D8 00C02025 */  move        $a0, $a2
/* 03B6DC 0043B6DC 0320F809 */  jalr        $t9
/* 03B6E0 0043B6E0 00000000 */   nop
/* 03B6E4 0043B6E4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03B6E8 0043B6E8 10000026 */  b           .L0043B784
/* 03B6EC 0043B6EC 24420004 */   addiu      $v0, $v0, 0x4
.L0043B6F0:
/* 03B6F0 0043B6F0 04E00011 */  bltz        $a3, .L0043B738
/* 03B6F4 0043B6F4 00E02825 */   move       $a1, $a3
/* 03B6F8 0043B6F8 04C0000F */  bltz        $a2, .L0043B738
/* 03B6FC 0043B6FC 00000000 */   nop
/* 03B700 0043B700 8F8287C4 */  lw          $v0, %got(st_pchdr)($gp)
/* 03B704 0043B704 8C420000 */  lw          $v0, 0x0($v0)
/* 03B708 0043B708 8C58000C */  lw          $t8, 0xC($v0)
/* 03B70C 0043B70C 00F8082A */  slt         $at, $a3, $t8
/* 03B710 0043B710 10200009 */  beqz        $at, .L0043B738
/* 03B714 0043B714 00000000 */   nop
/* 03B718 0043B718 8C590004 */  lw          $t9, 0x4($v0)
/* 03B71C 0043B71C 00074180 */  sll         $t0, $a3, 6
/* 03B720 0043B720 03281821 */  addu        $v1, $t9, $t0
/* 03B724 0043B724 8C690000 */  lw          $t1, 0x0($v1)
/* 03B728 0043B728 8D2A0014 */  lw          $t2, 0x14($t1)
/* 03B72C 0043B72C 00CA082A */  slt         $at, $a2, $t2
/* 03B730 0043B730 54200010 */  bnel        $at, $zero, .L0043B774
/* 03B734 0043B734 8C6F0004 */   lw         $t7, 0x4($v1)
.L0043B738:
/* 03B738 0043B738 8F998614 */  lw          $t9, %call16(_md_st_internal)($gp)
/* 03B73C 0043B73C 8F84802C */  lw          $a0, %got(STR_10013E54)($gp)
/* 03B740 0043B740 00075980 */  sll         $t3, $a3, 6
/* 03B744 0043B744 AFAB0024 */  sw          $t3, 0x24($sp)
/* 03B748 0043B748 AFA6002C */  sw          $a2, 0x2C($sp)
/* 03B74C 0043B74C 0320F809 */  jalr        $t9
/* 03B750 0043B750 24843E54 */   addiu      $a0, $a0, %lo(STR_10013E54)
/* 03B754 0043B754 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03B758 0043B758 8FAE0024 */  lw          $t6, 0x24($sp)
/* 03B75C 0043B75C 8FA6002C */  lw          $a2, 0x2C($sp)
/* 03B760 0043B760 8F8C87C4 */  lw          $t4, %got(st_pchdr)($gp)
/* 03B764 0043B764 8D8C0000 */  lw          $t4, 0x0($t4)
/* 03B768 0043B768 8D8D0004 */  lw          $t5, 0x4($t4)
/* 03B76C 0043B76C 01AE1821 */  addu        $v1, $t5, $t6
/* 03B770 0043B770 8C6F0004 */  lw          $t7, 0x4($v1)
.L0043B774:
/* 03B774 0043B774 0006C080 */  sll         $t8, $a2, 2
/* 03B778 0043B778 0306C023 */  subu        $t8, $t8, $a2
/* 03B77C 0043B77C 0018C080 */  sll         $t8, $t8, 2
/* 03B780 0043B780 01F81021 */  addu        $v0, $t7, $t8
.L0043B784:
/* 03B784 0043B784 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03B788 0043B788 27BD0028 */  addiu       $sp, $sp, 0x28
/* 03B78C 0043B78C 03E00008 */  jr          $ra
/* 03B790 0043B790 00000000 */   nop
