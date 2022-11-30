glabel func_0041D91C # 111
# _gp_disp: 0xFC00424
.set noreorder; .cpload $t9; # .set reorder
/* 01D928 0041D928 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 01D92C 0041D92C AFB10018 */  sw          $s1, 0x18($sp)
/* 01D930 0041D930 000610C0 */  sll         $v0, $a2, 3
/* 01D934 0041D934 00828821 */  addu        $s1, $a0, $v0
/* 01D938 0041D938 AFB2001C */  sw          $s2, 0x1C($sp)
/* 01D93C 0041D93C AFB00014 */  sw          $s0, 0x14($sp)
/* 01D940 0041D940 0091382B */  sltu        $a3, $a0, $s1
/* 01D944 0041D944 AFBF0024 */  sw          $ra, 0x24($sp)
/* 01D948 0041D948 AFBC0020 */  sw          $gp, 0x20($sp)
/* 01D94C 0041D94C 00809025 */  move        $s2, $a0
/* 01D950 0041D950 00A28021 */  addu        $s0, $a1, $v0
/* 01D954 0041D954 10E00056 */  beqz        $a3, .L0041DAB0
/* 01D958 0041D958 2631FFF8 */   addiu      $s1, $s1, -0x8
.L0041D95C:
/* 01D95C 0041D95C 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01D960 0041D960 2610FFF8 */  addiu       $s0, $s0, -0x8
/* 01D964 0041D964 92050000 */  lbu         $a1, 0x0($s0)
/* 01D968 0041D968 24040000 */  addiu       $a0, $zero, 0x0
/* 01D96C 0041D96C 24060000 */  addiu       $a2, $zero, 0x0
/* 01D970 0041D970 0320F809 */  jalr        $t9
/* 01D974 0041D974 24070008 */   addiu      $a3, $zero, 0x8
/* 01D978 0041D978 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01D97C 0041D97C 920F0001 */  lbu         $t7, 0x1($s0)
/* 01D980 0041D980 24060000 */  addiu       $a2, $zero, 0x0
/* 01D984 0041D984 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01D988 0041D988 01E32821 */  addu        $a1, $t7, $v1
/* 01D98C 0041D98C 00A3082B */  sltu        $at, $a1, $v1
/* 01D990 0041D990 000FC7C3 */  sra         $t8, $t7, 31
/* 01D994 0041D994 00382021 */  addu        $a0, $at, $t8
/* 01D998 0041D998 00822021 */  addu        $a0, $a0, $v0
/* 01D99C 0041D99C 0320F809 */  jalr        $t9
/* 01D9A0 0041D9A0 24070008 */   addiu      $a3, $zero, 0x8
/* 01D9A4 0041D9A4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01D9A8 0041D9A8 92080002 */  lbu         $t0, 0x2($s0)
/* 01D9AC 0041D9AC 24060000 */  addiu       $a2, $zero, 0x0
/* 01D9B0 0041D9B0 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01D9B4 0041D9B4 01032821 */  addu        $a1, $t0, $v1
/* 01D9B8 0041D9B8 00A3082B */  sltu        $at, $a1, $v1
/* 01D9BC 0041D9BC 000857C3 */  sra         $t2, $t0, 31
/* 01D9C0 0041D9C0 002A2021 */  addu        $a0, $at, $t2
/* 01D9C4 0041D9C4 00822021 */  addu        $a0, $a0, $v0
/* 01D9C8 0041D9C8 0320F809 */  jalr        $t9
/* 01D9CC 0041D9CC 24070008 */   addiu      $a3, $zero, 0x8
/* 01D9D0 0041D9D0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01D9D4 0041D9D4 92090003 */  lbu         $t1, 0x3($s0)
/* 01D9D8 0041D9D8 24060000 */  addiu       $a2, $zero, 0x0
/* 01D9DC 0041D9DC 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01D9E0 0041D9E0 01232821 */  addu        $a1, $t1, $v1
/* 01D9E4 0041D9E4 00A3082B */  sltu        $at, $a1, $v1
/* 01D9E8 0041D9E8 000967C3 */  sra         $t4, $t1, 31
/* 01D9EC 0041D9EC 002C2021 */  addu        $a0, $at, $t4
/* 01D9F0 0041D9F0 00822021 */  addu        $a0, $a0, $v0
/* 01D9F4 0041D9F4 0320F809 */  jalr        $t9
/* 01D9F8 0041D9F8 24070008 */   addiu      $a3, $zero, 0x8
/* 01D9FC 0041D9FC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01DA00 0041DA00 920E0004 */  lbu         $t6, 0x4($s0)
/* 01DA04 0041DA04 24060000 */  addiu       $a2, $zero, 0x0
/* 01DA08 0041DA08 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01DA0C 0041DA0C 01C32821 */  addu        $a1, $t6, $v1
/* 01DA10 0041DA10 00A3082B */  sltu        $at, $a1, $v1
/* 01DA14 0041DA14 000EC7C3 */  sra         $t8, $t6, 31
/* 01DA18 0041DA18 00382021 */  addu        $a0, $at, $t8
/* 01DA1C 0041DA1C 00822021 */  addu        $a0, $a0, $v0
/* 01DA20 0041DA20 0320F809 */  jalr        $t9
/* 01DA24 0041DA24 24070008 */   addiu      $a3, $zero, 0x8
/* 01DA28 0041DA28 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01DA2C 0041DA2C 920F0005 */  lbu         $t7, 0x5($s0)
/* 01DA30 0041DA30 24060000 */  addiu       $a2, $zero, 0x0
/* 01DA34 0041DA34 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01DA38 0041DA38 01E32821 */  addu        $a1, $t7, $v1
/* 01DA3C 0041DA3C 00A3082B */  sltu        $at, $a1, $v1
/* 01DA40 0041DA40 000F47C3 */  sra         $t0, $t7, 31
/* 01DA44 0041DA44 00282021 */  addu        $a0, $at, $t0
/* 01DA48 0041DA48 00822021 */  addu        $a0, $a0, $v0
/* 01DA4C 0041DA4C 0320F809 */  jalr        $t9
/* 01DA50 0041DA50 24070008 */   addiu      $a3, $zero, 0x8
/* 01DA54 0041DA54 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01DA58 0041DA58 920A0006 */  lbu         $t2, 0x6($s0)
/* 01DA5C 0041DA5C 24060000 */  addiu       $a2, $zero, 0x0
/* 01DA60 0041DA60 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01DA64 0041DA64 01432821 */  addu        $a1, $t2, $v1
/* 01DA68 0041DA68 00A3082B */  sltu        $at, $a1, $v1
/* 01DA6C 0041DA6C 000A67C3 */  sra         $t4, $t2, 31
/* 01DA70 0041DA70 002C2021 */  addu        $a0, $at, $t4
/* 01DA74 0041DA74 00822021 */  addu        $a0, $a0, $v0
/* 01DA78 0041DA78 0320F809 */  jalr        $t9
/* 01DA7C 0041DA7C 24070008 */   addiu      $a3, $zero, 0x8
/* 01DA80 0041DA80 920B0007 */  lbu         $t3, 0x7($s0)
/* 01DA84 0041DA84 0251382B */  sltu        $a3, $s2, $s1
/* 01DA88 0041DA88 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01DA8C 0041DA8C 0163C821 */  addu        $t9, $t3, $v1
/* 01DA90 0041DA90 0323082B */  sltu        $at, $t9, $v1
/* 01DA94 0041DA94 000B77C3 */  sra         $t6, $t3, 31
/* 01DA98 0041DA98 002EC021 */  addu        $t8, $at, $t6
/* 01DA9C 0041DA9C 0302C021 */  addu        $t8, $t8, $v0
/* 01DAA0 0041DAA0 2631FFF8 */  addiu       $s1, $s1, -0x8
/* 01DAA4 0041DAA4 AE380008 */  sw          $t8, 0x8($s1)
/* 01DAA8 0041DAA8 14E0FFAC */  bnez        $a3, .L0041D95C
/* 01DAAC 0041DAAC AE39000C */   sw         $t9, 0xC($s1)
.L0041DAB0:
/* 01DAB0 0041DAB0 8FBF0024 */  lw          $ra, 0x24($sp)
/* 01DAB4 0041DAB4 8FB00014 */  lw          $s0, 0x14($sp)
/* 01DAB8 0041DAB8 8FB10018 */  lw          $s1, 0x18($sp)
/* 01DABC 0041DABC 8FB2001C */  lw          $s2, 0x1C($sp)
/* 01DAC0 0041DAC0 03E00008 */  jr          $ra
/* 01DAC4 0041DAC4 27BD0028 */   addiu      $sp, $sp, 0x28
/* 01DAC8 0041DAC8 00000000 */  nop
/* 01DACC 0041DACC 00000000 */  nop
