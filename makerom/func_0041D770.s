glabel func_0041D770 # 110
# _gp_disp: 0xFC005D0
.set noreorder; .cpload $t9; # .set reorder
/* 01D77C 0041D77C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 01D780 0041D780 AFB10018 */  sw          $s1, 0x18($sp)
/* 01D784 0041D784 000610C0 */  sll         $v0, $a2, 3
/* 01D788 0041D788 00828821 */  addu        $s1, $a0, $v0
/* 01D78C 0041D78C AFB2001C */  sw          $s2, 0x1C($sp)
/* 01D790 0041D790 AFB00014 */  sw          $s0, 0x14($sp)
/* 01D794 0041D794 0091382B */  sltu        $a3, $a0, $s1
/* 01D798 0041D798 AFBF0024 */  sw          $ra, 0x24($sp)
/* 01D79C 0041D79C AFBC0020 */  sw          $gp, 0x20($sp)
/* 01D7A0 0041D7A0 00809025 */  move        $s2, $a0
/* 01D7A4 0041D7A4 00A28021 */  addu        $s0, $a1, $v0
/* 01D7A8 0041D7A8 10E00056 */  beqz        $a3, .L0041D904
/* 01D7AC 0041D7AC 2631FFF8 */   addiu      $s1, $s1, -0x8
.L0041D7B0:
/* 01D7B0 0041D7B0 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01D7B4 0041D7B4 2610FFF8 */  addiu       $s0, $s0, -0x8
/* 01D7B8 0041D7B8 92050007 */  lbu         $a1, 0x7($s0)
/* 01D7BC 0041D7BC 24040000 */  addiu       $a0, $zero, 0x0
/* 01D7C0 0041D7C0 24060000 */  addiu       $a2, $zero, 0x0
/* 01D7C4 0041D7C4 0320F809 */  jalr        $t9
/* 01D7C8 0041D7C8 24070008 */   addiu      $a3, $zero, 0x8
/* 01D7CC 0041D7CC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01D7D0 0041D7D0 920F0006 */  lbu         $t7, 0x6($s0)
/* 01D7D4 0041D7D4 24060000 */  addiu       $a2, $zero, 0x0
/* 01D7D8 0041D7D8 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01D7DC 0041D7DC 01E32821 */  addu        $a1, $t7, $v1
/* 01D7E0 0041D7E0 00A3082B */  sltu        $at, $a1, $v1
/* 01D7E4 0041D7E4 000FC7C3 */  sra         $t8, $t7, 31
/* 01D7E8 0041D7E8 00382021 */  addu        $a0, $at, $t8
/* 01D7EC 0041D7EC 00822021 */  addu        $a0, $a0, $v0
/* 01D7F0 0041D7F0 0320F809 */  jalr        $t9
/* 01D7F4 0041D7F4 24070008 */   addiu      $a3, $zero, 0x8
/* 01D7F8 0041D7F8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01D7FC 0041D7FC 92080005 */  lbu         $t0, 0x5($s0)
/* 01D800 0041D800 24060000 */  addiu       $a2, $zero, 0x0
/* 01D804 0041D804 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01D808 0041D808 01032821 */  addu        $a1, $t0, $v1
/* 01D80C 0041D80C 00A3082B */  sltu        $at, $a1, $v1
/* 01D810 0041D810 000857C3 */  sra         $t2, $t0, 31
/* 01D814 0041D814 002A2021 */  addu        $a0, $at, $t2
/* 01D818 0041D818 00822021 */  addu        $a0, $a0, $v0
/* 01D81C 0041D81C 0320F809 */  jalr        $t9
/* 01D820 0041D820 24070008 */   addiu      $a3, $zero, 0x8
/* 01D824 0041D824 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01D828 0041D828 92090004 */  lbu         $t1, 0x4($s0)
/* 01D82C 0041D82C 24060000 */  addiu       $a2, $zero, 0x0
/* 01D830 0041D830 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01D834 0041D834 01232821 */  addu        $a1, $t1, $v1
/* 01D838 0041D838 00A3082B */  sltu        $at, $a1, $v1
/* 01D83C 0041D83C 000967C3 */  sra         $t4, $t1, 31
/* 01D840 0041D840 002C2021 */  addu        $a0, $at, $t4
/* 01D844 0041D844 00822021 */  addu        $a0, $a0, $v0
/* 01D848 0041D848 0320F809 */  jalr        $t9
/* 01D84C 0041D84C 24070008 */   addiu      $a3, $zero, 0x8
/* 01D850 0041D850 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01D854 0041D854 920E0003 */  lbu         $t6, 0x3($s0)
/* 01D858 0041D858 24060000 */  addiu       $a2, $zero, 0x0
/* 01D85C 0041D85C 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01D860 0041D860 01C32821 */  addu        $a1, $t6, $v1
/* 01D864 0041D864 00A3082B */  sltu        $at, $a1, $v1
/* 01D868 0041D868 000EC7C3 */  sra         $t8, $t6, 31
/* 01D86C 0041D86C 00382021 */  addu        $a0, $at, $t8
/* 01D870 0041D870 00822021 */  addu        $a0, $a0, $v0
/* 01D874 0041D874 0320F809 */  jalr        $t9
/* 01D878 0041D878 24070008 */   addiu      $a3, $zero, 0x8
/* 01D87C 0041D87C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01D880 0041D880 920F0002 */  lbu         $t7, 0x2($s0)
/* 01D884 0041D884 24060000 */  addiu       $a2, $zero, 0x0
/* 01D888 0041D888 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01D88C 0041D88C 01E32821 */  addu        $a1, $t7, $v1
/* 01D890 0041D890 00A3082B */  sltu        $at, $a1, $v1
/* 01D894 0041D894 000F47C3 */  sra         $t0, $t7, 31
/* 01D898 0041D898 00282021 */  addu        $a0, $at, $t0
/* 01D89C 0041D89C 00822021 */  addu        $a0, $a0, $v0
/* 01D8A0 0041D8A0 0320F809 */  jalr        $t9
/* 01D8A4 0041D8A4 24070008 */   addiu      $a3, $zero, 0x8
/* 01D8A8 0041D8A8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01D8AC 0041D8AC 920A0001 */  lbu         $t2, 0x1($s0)
/* 01D8B0 0041D8B0 24060000 */  addiu       $a2, $zero, 0x0
/* 01D8B4 0041D8B4 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01D8B8 0041D8B8 01432821 */  addu        $a1, $t2, $v1
/* 01D8BC 0041D8BC 00A3082B */  sltu        $at, $a1, $v1
/* 01D8C0 0041D8C0 000A67C3 */  sra         $t4, $t2, 31
/* 01D8C4 0041D8C4 002C2021 */  addu        $a0, $at, $t4
/* 01D8C8 0041D8C8 00822021 */  addu        $a0, $a0, $v0
/* 01D8CC 0041D8CC 0320F809 */  jalr        $t9
/* 01D8D0 0041D8D0 24070008 */   addiu      $a3, $zero, 0x8
/* 01D8D4 0041D8D4 920B0000 */  lbu         $t3, 0x0($s0)
/* 01D8D8 0041D8D8 0251382B */  sltu        $a3, $s2, $s1
/* 01D8DC 0041D8DC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01D8E0 0041D8E0 0163C821 */  addu        $t9, $t3, $v1
/* 01D8E4 0041D8E4 0323082B */  sltu        $at, $t9, $v1
/* 01D8E8 0041D8E8 000B77C3 */  sra         $t6, $t3, 31
/* 01D8EC 0041D8EC 002EC021 */  addu        $t8, $at, $t6
/* 01D8F0 0041D8F0 0302C021 */  addu        $t8, $t8, $v0
/* 01D8F4 0041D8F4 2631FFF8 */  addiu       $s1, $s1, -0x8
/* 01D8F8 0041D8F8 AE380008 */  sw          $t8, 0x8($s1)
/* 01D8FC 0041D8FC 14E0FFAC */  bnez        $a3, .L0041D7B0
/* 01D900 0041D900 AE39000C */   sw         $t9, 0xC($s1)
.L0041D904:
/* 01D904 0041D904 8FBF0024 */  lw          $ra, 0x24($sp)
/* 01D908 0041D908 8FB00014 */  lw          $s0, 0x14($sp)
/* 01D90C 0041D90C 8FB10018 */  lw          $s1, 0x18($sp)
/* 01D910 0041D910 8FB2001C */  lw          $s2, 0x1C($sp)
/* 01D914 0041D914 03E00008 */  jr          $ra
/* 01D918 0041D918 27BD0028 */   addiu      $sp, $sp, 0x28
