glabel st_fglobal_idn # 699
# _gp_disp: 0xFBE06E8
.set noreorder; .cpload $t9; # .set reorder
/* 03D664 0043D664 8F998630 */  lw          $t9, %call16(st_pdn_idn)($gp)
/* 03D668 0043D668 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 03D66C 0043D66C AFBF001C */  sw          $ra, 0x1C($sp)
/* 03D670 0043D670 0320F809 */  jalr        $t9
/* 03D674 0043D674 AFBC0018 */   sw         $gp, 0x18($sp)
/* 03D678 0043D678 8C580000 */  lw          $t8, 0x0($v0)
/* 03D67C 0043D67C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03D680 0043D680 27AE0028 */  addiu       $t6, $sp, 0x28
/* 03D684 0043D684 ADD80000 */  sw          $t8, 0x0($t6)
/* 03D688 0043D688 8C4F0004 */  lw          $t7, 0x4($v0)
/* 03D68C 0043D68C 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03D690 0043D690 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03D694 0043D694 ADCF0004 */  sw          $t7, 0x4($t6)
/* 03D698 0043D698 8FB9002C */  lw          $t9, 0x2C($sp)
/* 03D69C 0043D69C 17210003 */  bne         $t9, $at, .L0043D6AC
/* 03D6A0 0043D6A0 00000000 */   nop
/* 03D6A4 0043D6A4 10000012 */  b           .L0043D6F0
/* 03D6A8 0043D6A8 00001025 */   move       $v0, $zero
.L0043D6AC:
/* 03D6AC 0043D6AC 8F998608 */  lw          $t9, %call16(st_psym_ifd_isym)($gp)
/* 03D6B0 0043D6B0 8FA40028 */  lw          $a0, 0x28($sp)
/* 03D6B4 0043D6B4 8FA5002C */  lw          $a1, 0x2C($sp)
/* 03D6B8 0043D6B8 0320F809 */  jalr        $t9
/* 03D6BC 0043D6BC 00000000 */   nop
/* 03D6C0 0043D6C0 00401825 */  move        $v1, $v0
/* 03D6C4 0043D6C4 8C420008 */  lw          $v0, 0x8($v0)
/* 03D6C8 0043D6C8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03D6CC 0043D6CC 00021682 */  srl         $v0, $v0, 26
/* 03D6D0 0043D6D0 38420002 */  xori        $v0, $v0, 0x2
/* 03D6D4 0043D6D4 0002102B */  sltu        $v0, $zero, $v0
/* 03D6D8 0043D6D8 50400006 */  beql        $v0, $zero, .L0043D6F4
/* 03D6DC 0043D6DC 8FBF001C */   lw         $ra, 0x1C($sp)
/* 03D6E0 0043D6E0 8C620008 */  lw          $v0, 0x8($v1)
/* 03D6E4 0043D6E4 00021682 */  srl         $v0, $v0, 26
/* 03D6E8 0043D6E8 3842000E */  xori        $v0, $v0, 0xE
/* 03D6EC 0043D6EC 0002102B */  sltu        $v0, $zero, $v0
.L0043D6F0:
/* 03D6F0 0043D6F0 8FBF001C */  lw          $ra, 0x1C($sp)
.L0043D6F4:
/* 03D6F4 0043D6F4 27BD0030 */  addiu       $sp, $sp, 0x30
/* 03D6F8 0043D6F8 03E00008 */  jr          $ra
/* 03D6FC 0043D6FC 00000000 */   nop
