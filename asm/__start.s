glabel __start # 0
/* 0096E0 004096E0 03E04025 */  move        $t0, $ra
/* 0096E4 004096E4 04110001 */  bal         .L004096EC
/* 0096E8 004096E8 00000000 */   nop
.L004096EC:
# _gp_disp: 0xFC14654
.set noreorder; .cpload $ra; # .set reorder
/* 0096F8 004096F8 0100F825 */  move        $ra, $t0
/* 0096FC 004096FC 3C070000 */  lui         $a3, %got_hi(_environ)
/* 009700 00409700 00FC3821 */  addu        $a3, $a3, $gp
/* 009704 00409704 8CE78034 */  lw          $a3, %got_lo(_environ)($a3)
/* 009708 00409708 8FA40000 */  lw          $a0, 0x0($sp)
/* 00970C 0040970C 27A50004 */  addiu       $a1, $sp, 0x4
/* 009710 00409710 8CE70000 */  lw          $a3, 0x0($a3)
/* 009714 00409714 2401FFF0 */  addiu       $at, $zero, -0x10
/* 009718 00409718 03A1E824 */  and         $sp, $sp, $at
/* 00971C 0040971C 24A60004 */  addiu       $a2, $a1, 0x4
/* 009720 00409720 00041080 */  sll         $v0, $a0, 2
/* 009724 00409724 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 009728 00409728 14E00005 */  bnez        $a3, .L00409740
/* 00972C 0040972C 00C23021 */   addu       $a2, $a2, $v0
/* 009730 00409730 3C010000 */  lui         $at, %got_hi(_environ)
/* 009734 00409734 003C0821 */  addu        $at, $at, $gp
/* 009738 00409738 8C218034 */  lw          $at, %got_lo(_environ)($at)
/* 00973C 0040973C AC260000 */  sw          $a2, 0x0($at)
.L00409740:
/* 009740 00409740 3C010000 */  lui         $at, %got_hi(__Argc)
/* 009744 00409744 003C0821 */  addu        $at, $at, $gp
/* 009748 00409748 8C2187C0 */  lw          $at, %got_lo(__Argc)($at)
/* 00974C 0040974C 3C190000 */  lui         $t9, %call_hi(__istart)
/* 009750 00409750 033CC821 */  addu        $t9, $t9, $gp
/* 009754 00409754 AC240000 */  sw          $a0, 0x0($at)
/* 009758 00409758 3C010000 */  lui         $at, %got_hi(__Argv)
/* 00975C 0040975C 8F398650 */  lw          $t9, %call_lo(__istart)($t9)
/* 009760 00409760 003C0821 */  addu        $at, $at, $gp
/* 009764 00409764 8C2187BC */  lw          $at, %got_lo(__Argv)($at)
/* 009768 00409768 AFBC0018 */  sw          $gp, 0x18($sp)
/* 00976C 0040976C AFA0001C */  sw          $zero, 0x1C($sp)
/* 009770 00409770 0000F025 */  move        $fp, $zero
/* 009774 00409774 0320F809 */  jalr        $t9
/* 009778 00409778 AC250000 */   sw         $a1, 0x0($at)
/* 00977C 0040977C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 009780 00409780 3C190000 */  lui         $t9, %call_hi(__readenv_sigfpe)
/* 009784 00409784 033CC821 */  addu        $t9, $t9, $gp
/* 009788 00409788 8F398058 */  lw          $t9, %call_lo(__readenv_sigfpe)($t9)
/* 00978C 0040978C 0320F809 */  jalr        $t9
/* 009790 00409790 00000000 */   nop
/* 009794 00409794 8FBC0018 */  lw          $gp, 0x18($sp)
/* 009798 00409798 3C190000 */  lui         $t9, %call_hi(main)
/* 00979C 0040979C 3C040000 */  lui         $a0, %got_hi(__Argc)
/* 0097A0 004097A0 3C050000 */  lui         $a1, %got_hi(__Argv)
/* 0097A4 004097A4 3C060000 */  lui         $a2, %got_hi(_environ)
/* 0097A8 004097A8 033CC821 */  addu        $t9, $t9, $gp
/* 0097AC 004097AC 8F398184 */  lw          $t9, %call_lo(main)($t9)
/* 0097B0 004097B0 009C2021 */  addu        $a0, $a0, $gp
/* 0097B4 004097B4 00BC2821 */  addu        $a1, $a1, $gp
/* 0097B8 004097B8 00DC3021 */  addu        $a2, $a2, $gp
/* 0097BC 004097BC 8C8487C0 */  lw          $a0, %got_lo(__Argc)($a0)
/* 0097C0 004097C0 8CA587BC */  lw          $a1, %got_lo(__Argv)($a1)
/* 0097C4 004097C4 8CC68034 */  lw          $a2, %got_lo(_environ)($a2)
/* 0097C8 004097C8 8C840000 */  lw          $a0, 0x0($a0)
/* 0097CC 004097CC 8CA50000 */  lw          $a1, 0x0($a1)
/* 0097D0 004097D0 0320F809 */  jalr        $t9
/* 0097D4 004097D4 8CC60000 */   lw         $a2, 0x0($a2)
/* 0097D8 004097D8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0097DC 004097DC 3C190000 */  lui         $t9, %call_hi(exit)
/* 0097E0 004097E0 00402025 */  move        $a0, $v0
/* 0097E4 004097E4 033CC821 */  addu        $t9, $t9, $gp
/* 0097E8 004097E8 8F398054 */  lw          $t9, %call_lo(exit)($t9)
/* 0097EC 004097EC 0320F809 */  jalr        $t9
/* 0097F0 004097F0 00000000 */   nop
/* 0097F4 004097F4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0097F8 004097F8 0000000D */  break       0
