glabel func_00419E9C # 93
# _gp_disp: 0xFC03EA4
.set noreorder; .cpload $t9; # .set reorder
/* 019EA8 00419EA8 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 019EAC 00419EAC AFB10018 */  sw          $s1, 0x18($sp)
/* 019EB0 00419EB0 000610C0 */  sll         $v0, $a2, 3
/* 019EB4 00419EB4 00828821 */  addu        $s1, $a0, $v0
/* 019EB8 00419EB8 AFB2001C */  sw          $s2, 0x1C($sp)
/* 019EBC 00419EBC AFB00014 */  sw          $s0, 0x14($sp)
/* 019EC0 00419EC0 0091382B */  sltu        $a3, $a0, $s1
/* 019EC4 00419EC4 AFBF0024 */  sw          $ra, 0x24($sp)
/* 019EC8 00419EC8 AFBC0020 */  sw          $gp, 0x20($sp)
/* 019ECC 00419ECC 00809025 */  move        $s2, $a0
/* 019ED0 00419ED0 00A28021 */  addu        $s0, $a1, $v0
/* 019ED4 00419ED4 10E00056 */  beqz        $a3, .L0041A030
/* 019ED8 00419ED8 2631FFF8 */   addiu      $s1, $s1, -0x8
.L00419EDC:
/* 019EDC 00419EDC 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 019EE0 00419EE0 2610FFF8 */  addiu       $s0, $s0, -0x8
/* 019EE4 00419EE4 92050000 */  lbu         $a1, 0x0($s0)
/* 019EE8 00419EE8 24040000 */  addiu       $a0, $zero, 0x0
/* 019EEC 00419EEC 24060000 */  addiu       $a2, $zero, 0x0
/* 019EF0 00419EF0 0320F809 */  jalr        $t9
/* 019EF4 00419EF4 24070008 */   addiu      $a3, $zero, 0x8
/* 019EF8 00419EF8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 019EFC 00419EFC 920F0001 */  lbu         $t7, 0x1($s0)
/* 019F00 00419F00 24060000 */  addiu       $a2, $zero, 0x0
/* 019F04 00419F04 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 019F08 00419F08 01E32821 */  addu        $a1, $t7, $v1
/* 019F0C 00419F0C 00A3082B */  sltu        $at, $a1, $v1
/* 019F10 00419F10 000FC7C3 */  sra         $t8, $t7, 31
/* 019F14 00419F14 00382021 */  addu        $a0, $at, $t8
/* 019F18 00419F18 00822021 */  addu        $a0, $a0, $v0
/* 019F1C 00419F1C 0320F809 */  jalr        $t9
/* 019F20 00419F20 24070008 */   addiu      $a3, $zero, 0x8
/* 019F24 00419F24 8FBC0020 */  lw          $gp, 0x20($sp)
/* 019F28 00419F28 92080002 */  lbu         $t0, 0x2($s0)
/* 019F2C 00419F2C 24060000 */  addiu       $a2, $zero, 0x0
/* 019F30 00419F30 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 019F34 00419F34 01032821 */  addu        $a1, $t0, $v1
/* 019F38 00419F38 00A3082B */  sltu        $at, $a1, $v1
/* 019F3C 00419F3C 000857C3 */  sra         $t2, $t0, 31
/* 019F40 00419F40 002A2021 */  addu        $a0, $at, $t2
/* 019F44 00419F44 00822021 */  addu        $a0, $a0, $v0
/* 019F48 00419F48 0320F809 */  jalr        $t9
/* 019F4C 00419F4C 24070008 */   addiu      $a3, $zero, 0x8
/* 019F50 00419F50 8FBC0020 */  lw          $gp, 0x20($sp)
/* 019F54 00419F54 92090003 */  lbu         $t1, 0x3($s0)
/* 019F58 00419F58 24060000 */  addiu       $a2, $zero, 0x0
/* 019F5C 00419F5C 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 019F60 00419F60 01232821 */  addu        $a1, $t1, $v1
/* 019F64 00419F64 00A3082B */  sltu        $at, $a1, $v1
/* 019F68 00419F68 000967C3 */  sra         $t4, $t1, 31
/* 019F6C 00419F6C 002C2021 */  addu        $a0, $at, $t4
/* 019F70 00419F70 00822021 */  addu        $a0, $a0, $v0
/* 019F74 00419F74 0320F809 */  jalr        $t9
/* 019F78 00419F78 24070008 */   addiu      $a3, $zero, 0x8
/* 019F7C 00419F7C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 019F80 00419F80 920E0004 */  lbu         $t6, 0x4($s0)
/* 019F84 00419F84 24060000 */  addiu       $a2, $zero, 0x0
/* 019F88 00419F88 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 019F8C 00419F8C 01C32821 */  addu        $a1, $t6, $v1
/* 019F90 00419F90 00A3082B */  sltu        $at, $a1, $v1
/* 019F94 00419F94 000EC7C3 */  sra         $t8, $t6, 31
/* 019F98 00419F98 00382021 */  addu        $a0, $at, $t8
/* 019F9C 00419F9C 00822021 */  addu        $a0, $a0, $v0
/* 019FA0 00419FA0 0320F809 */  jalr        $t9
/* 019FA4 00419FA4 24070008 */   addiu      $a3, $zero, 0x8
/* 019FA8 00419FA8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 019FAC 00419FAC 920F0005 */  lbu         $t7, 0x5($s0)
/* 019FB0 00419FB0 24060000 */  addiu       $a2, $zero, 0x0
/* 019FB4 00419FB4 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 019FB8 00419FB8 01E32821 */  addu        $a1, $t7, $v1
/* 019FBC 00419FBC 00A3082B */  sltu        $at, $a1, $v1
/* 019FC0 00419FC0 000F47C3 */  sra         $t0, $t7, 31
/* 019FC4 00419FC4 00282021 */  addu        $a0, $at, $t0
/* 019FC8 00419FC8 00822021 */  addu        $a0, $a0, $v0
/* 019FCC 00419FCC 0320F809 */  jalr        $t9
/* 019FD0 00419FD0 24070008 */   addiu      $a3, $zero, 0x8
/* 019FD4 00419FD4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 019FD8 00419FD8 920A0006 */  lbu         $t2, 0x6($s0)
/* 019FDC 00419FDC 24060000 */  addiu       $a2, $zero, 0x0
/* 019FE0 00419FE0 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 019FE4 00419FE4 01432821 */  addu        $a1, $t2, $v1
/* 019FE8 00419FE8 00A3082B */  sltu        $at, $a1, $v1
/* 019FEC 00419FEC 000A67C3 */  sra         $t4, $t2, 31
/* 019FF0 00419FF0 002C2021 */  addu        $a0, $at, $t4
/* 019FF4 00419FF4 00822021 */  addu        $a0, $a0, $v0
/* 019FF8 00419FF8 0320F809 */  jalr        $t9
/* 019FFC 00419FFC 24070008 */   addiu      $a3, $zero, 0x8
/* 01A000 0041A000 920B0007 */  lbu         $t3, 0x7($s0)
/* 01A004 0041A004 0251382B */  sltu        $a3, $s2, $s1
/* 01A008 0041A008 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A00C 0041A00C 0163C821 */  addu        $t9, $t3, $v1
/* 01A010 0041A010 0323082B */  sltu        $at, $t9, $v1
/* 01A014 0041A014 000B77C3 */  sra         $t6, $t3, 31
/* 01A018 0041A018 002EC021 */  addu        $t8, $at, $t6
/* 01A01C 0041A01C 0302C021 */  addu        $t8, $t8, $v0
/* 01A020 0041A020 2631FFF8 */  addiu       $s1, $s1, -0x8
/* 01A024 0041A024 AE380008 */  sw          $t8, 0x8($s1)
/* 01A028 0041A028 14E0FFAC */  bnez        $a3, .L00419EDC
/* 01A02C 0041A02C AE39000C */   sw         $t9, 0xC($s1)
.L0041A030:
/* 01A030 0041A030 8FBF0024 */  lw          $ra, 0x24($sp)
/* 01A034 0041A034 8FB00014 */  lw          $s0, 0x14($sp)
/* 01A038 0041A038 8FB10018 */  lw          $s1, 0x18($sp)
/* 01A03C 0041A03C 8FB2001C */  lw          $s2, 0x1C($sp)
/* 01A040 0041A040 03E00008 */  jr          $ra
/* 01A044 0041A044 27BD0028 */   addiu      $sp, $sp, 0x28
