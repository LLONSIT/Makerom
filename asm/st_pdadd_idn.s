glabel st_pdadd_idn # 703
# _gp_disp: 0xFBE02E0
.set noreorder; .cpload $t9; # .set reorder
/* 03DA6C 0043DA6C 8F998630 */  lw          $t9, %call16(st_pdn_idn)($gp)
/* 03DA70 0043DA70 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03DA74 0043DA74 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03DA78 0043DA78 0320F809 */  jalr        $t9
/* 03DA7C 0043DA7C AFBC0018 */   sw         $gp, 0x18($sp)
/* 03DA80 0043DA80 8C4E0000 */  lw          $t6, 0x0($v0)
/* 03DA84 0043DA84 3C017FFF */  lui         $at, (0x7FFFFFFF >> 16)
/* 03DA88 0043DA88 3421FFFF */  ori         $at, $at, (0x7FFFFFFF & 0xFFFF)
/* 03DA8C 0043DA8C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03DA90 0043DA90 15C1000B */  bne         $t6, $at, .L0043DAC0
/* 03DA94 0043DA94 00401825 */   move       $v1, $v0
/* 03DA98 0043DA98 8F998628 */  lw          $t9, %call16(st_pext_iext)($gp)
/* 03DA9C 0043DA9C 8C640004 */  lw          $a0, 0x4($v1)
/* 03DAA0 0043DAA0 0320F809 */  jalr        $t9
/* 03DAA4 0043DAA4 00000000 */   nop
/* 03DAA8 0043DAA8 8C44000C */  lw          $a0, 0xC($v0)
/* 03DAAC 0043DAAC 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03DAB0 0043DAB0 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03DAB4 0043DAB4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03DAB8 0043DAB8 10000002 */  b           .L0043DAC4
/* 03DABC 0043DABC 00812024 */   and        $a0, $a0, $at
.L0043DAC0:
/* 03DAC0 0043DAC0 8C440004 */  lw          $a0, 0x4($v0)
.L0043DAC4:
/* 03DAC4 0043DAC4 8F9985E8 */  lw          $t9, %call16(st_pdadd)($gp)
/* 03DAC8 0043DAC8 0320F809 */  jalr        $t9
/* 03DACC 0043DACC 00000000 */   nop
/* 03DAD0 0043DAD0 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03DAD4 0043DAD4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03DAD8 0043DAD8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03DADC 0043DADC 03E00008 */  jr          $ra
/* 03DAE0 0043DAE0 00000000 */   nop
