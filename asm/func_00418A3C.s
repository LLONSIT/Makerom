glabel func_00418A3C # 85
# _gp_disp: 0xFC05304
.set noreorder; .cpload $t9; # .set reorder
/* 018A48 00418A48 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 018A4C 00418A4C AFB10018 */  sw          $s1, 0x18($sp)
/* 018A50 00418A50 000610C0 */  sll         $v0, $a2, 3
/* 018A54 00418A54 00828821 */  addu        $s1, $a0, $v0
/* 018A58 00418A58 AFB2001C */  sw          $s2, 0x1C($sp)
/* 018A5C 00418A5C AFB00014 */  sw          $s0, 0x14($sp)
/* 018A60 00418A60 0091382B */  sltu        $a3, $a0, $s1
/* 018A64 00418A64 AFBF0024 */  sw          $ra, 0x24($sp)
/* 018A68 00418A68 AFBC0020 */  sw          $gp, 0x20($sp)
/* 018A6C 00418A6C 00809025 */  move        $s2, $a0
/* 018A70 00418A70 00A28021 */  addu        $s0, $a1, $v0
/* 018A74 00418A74 10E00056 */  beqz        $a3, .L00418BD0
/* 018A78 00418A78 2631FFF8 */   addiu      $s1, $s1, -0x8
.L00418A7C:
/* 018A7C 00418A7C 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 018A80 00418A80 2610FFF8 */  addiu       $s0, $s0, -0x8
/* 018A84 00418A84 92050000 */  lbu         $a1, 0x0($s0)
/* 018A88 00418A88 24040000 */  addiu       $a0, $zero, 0x0
/* 018A8C 00418A8C 24060000 */  addiu       $a2, $zero, 0x0
/* 018A90 00418A90 0320F809 */  jalr        $t9
/* 018A94 00418A94 24070008 */   addiu      $a3, $zero, 0x8
/* 018A98 00418A98 8FBC0020 */  lw          $gp, 0x20($sp)
/* 018A9C 00418A9C 920F0001 */  lbu         $t7, 0x1($s0)
/* 018AA0 00418AA0 24060000 */  addiu       $a2, $zero, 0x0
/* 018AA4 00418AA4 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 018AA8 00418AA8 01E32821 */  addu        $a1, $t7, $v1
/* 018AAC 00418AAC 00A3082B */  sltu        $at, $a1, $v1
/* 018AB0 00418AB0 000FC7C3 */  sra         $t8, $t7, 31
/* 018AB4 00418AB4 00382021 */  addu        $a0, $at, $t8
/* 018AB8 00418AB8 00822021 */  addu        $a0, $a0, $v0
/* 018ABC 00418ABC 0320F809 */  jalr        $t9
/* 018AC0 00418AC0 24070008 */   addiu      $a3, $zero, 0x8
/* 018AC4 00418AC4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 018AC8 00418AC8 92080002 */  lbu         $t0, 0x2($s0)
/* 018ACC 00418ACC 24060000 */  addiu       $a2, $zero, 0x0
/* 018AD0 00418AD0 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 018AD4 00418AD4 01032821 */  addu        $a1, $t0, $v1
/* 018AD8 00418AD8 00A3082B */  sltu        $at, $a1, $v1
/* 018ADC 00418ADC 000857C3 */  sra         $t2, $t0, 31
/* 018AE0 00418AE0 002A2021 */  addu        $a0, $at, $t2
/* 018AE4 00418AE4 00822021 */  addu        $a0, $a0, $v0
/* 018AE8 00418AE8 0320F809 */  jalr        $t9
/* 018AEC 00418AEC 24070008 */   addiu      $a3, $zero, 0x8
/* 018AF0 00418AF0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 018AF4 00418AF4 92090003 */  lbu         $t1, 0x3($s0)
/* 018AF8 00418AF8 24060000 */  addiu       $a2, $zero, 0x0
/* 018AFC 00418AFC 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 018B00 00418B00 01232821 */  addu        $a1, $t1, $v1
/* 018B04 00418B04 00A3082B */  sltu        $at, $a1, $v1
/* 018B08 00418B08 000967C3 */  sra         $t4, $t1, 31
/* 018B0C 00418B0C 002C2021 */  addu        $a0, $at, $t4
/* 018B10 00418B10 00822021 */  addu        $a0, $a0, $v0
/* 018B14 00418B14 0320F809 */  jalr        $t9
/* 018B18 00418B18 24070008 */   addiu      $a3, $zero, 0x8
/* 018B1C 00418B1C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 018B20 00418B20 920E0004 */  lbu         $t6, 0x4($s0)
/* 018B24 00418B24 24060000 */  addiu       $a2, $zero, 0x0
/* 018B28 00418B28 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 018B2C 00418B2C 01C32821 */  addu        $a1, $t6, $v1
/* 018B30 00418B30 00A3082B */  sltu        $at, $a1, $v1
/* 018B34 00418B34 000EC7C3 */  sra         $t8, $t6, 31
/* 018B38 00418B38 00382021 */  addu        $a0, $at, $t8
/* 018B3C 00418B3C 00822021 */  addu        $a0, $a0, $v0
/* 018B40 00418B40 0320F809 */  jalr        $t9
/* 018B44 00418B44 24070008 */   addiu      $a3, $zero, 0x8
/* 018B48 00418B48 8FBC0020 */  lw          $gp, 0x20($sp)
/* 018B4C 00418B4C 920F0005 */  lbu         $t7, 0x5($s0)
/* 018B50 00418B50 24060000 */  addiu       $a2, $zero, 0x0
/* 018B54 00418B54 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 018B58 00418B58 01E32821 */  addu        $a1, $t7, $v1
/* 018B5C 00418B5C 00A3082B */  sltu        $at, $a1, $v1
/* 018B60 00418B60 000F47C3 */  sra         $t0, $t7, 31
/* 018B64 00418B64 00282021 */  addu        $a0, $at, $t0
/* 018B68 00418B68 00822021 */  addu        $a0, $a0, $v0
/* 018B6C 00418B6C 0320F809 */  jalr        $t9
/* 018B70 00418B70 24070008 */   addiu      $a3, $zero, 0x8
/* 018B74 00418B74 8FBC0020 */  lw          $gp, 0x20($sp)
/* 018B78 00418B78 920A0006 */  lbu         $t2, 0x6($s0)
/* 018B7C 00418B7C 24060000 */  addiu       $a2, $zero, 0x0
/* 018B80 00418B80 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 018B84 00418B84 01432821 */  addu        $a1, $t2, $v1
/* 018B88 00418B88 00A3082B */  sltu        $at, $a1, $v1
/* 018B8C 00418B8C 000A67C3 */  sra         $t4, $t2, 31
/* 018B90 00418B90 002C2021 */  addu        $a0, $at, $t4
/* 018B94 00418B94 00822021 */  addu        $a0, $a0, $v0
/* 018B98 00418B98 0320F809 */  jalr        $t9
/* 018B9C 00418B9C 24070008 */   addiu      $a3, $zero, 0x8
/* 018BA0 00418BA0 920B0007 */  lbu         $t3, 0x7($s0)
/* 018BA4 00418BA4 0251382B */  sltu        $a3, $s2, $s1
/* 018BA8 00418BA8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 018BAC 00418BAC 0163C821 */  addu        $t9, $t3, $v1
/* 018BB0 00418BB0 0323082B */  sltu        $at, $t9, $v1
/* 018BB4 00418BB4 000B77C3 */  sra         $t6, $t3, 31
/* 018BB8 00418BB8 002EC021 */  addu        $t8, $at, $t6
/* 018BBC 00418BBC 0302C021 */  addu        $t8, $t8, $v0
/* 018BC0 00418BC0 2631FFF8 */  addiu       $s1, $s1, -0x8
/* 018BC4 00418BC4 AE380008 */  sw          $t8, 0x8($s1)
/* 018BC8 00418BC8 14E0FFAC */  bnez        $a3, .L00418A7C
/* 018BCC 00418BCC AE39000C */   sw         $t9, 0xC($s1)
.L00418BD0:
/* 018BD0 00418BD0 8FBF0024 */  lw          $ra, 0x24($sp)
/* 018BD4 00418BD4 8FB00014 */  lw          $s0, 0x14($sp)
/* 018BD8 00418BD8 8FB10018 */  lw          $s1, 0x18($sp)
/* 018BDC 00418BDC 8FB2001C */  lw          $s2, 0x1C($sp)
/* 018BE0 00418BE0 03E00008 */  jr          $ra
/* 018BE4 00418BE4 27BD0028 */   addiu      $sp, $sp, 0x28
