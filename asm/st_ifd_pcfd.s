glabel st_ifd_pcfd # 664
# _gp_disp: 0xFBE2808
.set noreorder; .cpload $t9; # .set reorder
/* 03B544 0043B544 8F8E87C4 */  lw          $t6, %got(st_pchdr)($gp)
/* 03B548 0043B548 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03B54C 0043B54C AFBF001C */  sw          $ra, 0x1C($sp)
/* 03B550 0043B550 8DCE0000 */  lw          $t6, 0x0($t6)
/* 03B554 0043B554 AFBC0018 */  sw          $gp, 0x18($sp)
/* 03B558 0043B558 AFA40020 */  sw          $a0, 0x20($sp)
/* 03B55C 0043B55C 8DCF0004 */  lw          $t7, 0x4($t6)
/* 03B560 0043B560 15E00006 */  bnez        $t7, .L0043B57C
/* 03B564 0043B564 00000000 */   nop
/* 03B568 0043B568 8F998614 */  lw          $t9, %call16(_md_st_internal)($gp)
/* 03B56C 0043B56C 8F84802C */  lw          $a0, %got(D_10015C20)($gp)
/* 03B570 0043B570 0320F809 */  jalr        $t9
/* 03B574 0043B574 24845C20 */   addiu      $a0, $a0, %lo(D_10015C20)
/* 03B578 0043B578 8FBC0018 */  lw          $gp, 0x18($sp)
.L0043B57C:
/* 03B57C 0043B57C 8F9887C8 */  lw          $t8, %got(pcfdcur)($gp)
/* 03B580 0043B580 8F180000 */  lw          $t8, 0x0($t8)
/* 03B584 0043B584 17000006 */  bnez        $t8, .L0043B5A0
/* 03B588 0043B588 00000000 */   nop
/* 03B58C 0043B58C 8F998614 */  lw          $t9, %call16(_md_st_internal)($gp)
/* 03B590 0043B590 8F84802C */  lw          $a0, %got(D_10015C5C)($gp)
/* 03B594 0043B594 0320F809 */  jalr        $t9
/* 03B598 0043B598 24845C5C */   addiu      $a0, $a0, %lo(D_10015C5C)
/* 03B59C 0043B59C 8FBC0018 */  lw          $gp, 0x18($sp)
.L0043B5A0:
/* 03B5A0 0043B5A0 8F8887C4 */  lw          $t0, %got(st_pchdr)($gp)
/* 03B5A4 0043B5A4 8FB90020 */  lw          $t9, 0x20($sp)
/* 03B5A8 0043B5A8 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03B5AC 0043B5AC 8D080000 */  lw          $t0, 0x0($t0)
/* 03B5B0 0043B5B0 8D090004 */  lw          $t1, 0x4($t0)
/* 03B5B4 0043B5B4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03B5B8 0043B5B8 03291023 */  subu        $v0, $t9, $t1
/* 03B5BC 0043B5BC 03E00008 */  jr          $ra
/* 03B5C0 0043B5C0 00021183 */   sra        $v0, $v0, 6
