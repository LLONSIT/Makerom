glabel func_0041B760 # 99
# _gp_disp: 0xFC025E0
.set noreorder; .cpload $t9; # .set reorder
/* 01B76C 0041B76C 00061080 */  sll         $v0, $a2, 2
/* 01B770 0041B770 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 01B774 0041B774 00461023 */  subu        $v0, $v0, $a2
/* 01B778 0041B778 AFB10018 */  sw          $s1, 0x18($sp)
/* 01B77C 0041B77C 000210C0 */  sll         $v0, $v0, 3
/* 01B780 0041B780 00828821 */  addu        $s1, $a0, $v0
/* 01B784 0041B784 AFB2001C */  sw          $s2, 0x1C($sp)
/* 01B788 0041B788 AFB00014 */  sw          $s0, 0x14($sp)
/* 01B78C 0041B78C 0091382B */  sltu        $a3, $a0, $s1
/* 01B790 0041B790 AFBF0024 */  sw          $ra, 0x24($sp)
/* 01B794 0041B794 AFBC0020 */  sw          $gp, 0x20($sp)
/* 01B798 0041B798 00809025 */  move        $s2, $a0
/* 01B79C 0041B79C 00A28021 */  addu        $s0, $a1, $v0
/* 01B7A0 0041B7A0 10E000BB */  beqz        $a3, .L0041BA90
/* 01B7A4 0041B7A4 2631FFE8 */   addiu      $s1, $s1, -0x18
.L0041B7A8:
/* 01B7A8 0041B7A8 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B7AC 0041B7AC 2610FFE8 */  addiu       $s0, $s0, -0x18
/* 01B7B0 0041B7B0 92050010 */  lbu         $a1, 0x10($s0)
/* 01B7B4 0041B7B4 24040000 */  addiu       $a0, $zero, 0x0
/* 01B7B8 0041B7B8 24060000 */  addiu       $a2, $zero, 0x0
/* 01B7BC 0041B7BC 0320F809 */  jalr        $t9
/* 01B7C0 0041B7C0 24070008 */   addiu      $a3, $zero, 0x8
/* 01B7C4 0041B7C4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01B7C8 0041B7C8 920F0011 */  lbu         $t7, 0x11($s0)
/* 01B7CC 0041B7CC 24060000 */  addiu       $a2, $zero, 0x0
/* 01B7D0 0041B7D0 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B7D4 0041B7D4 01E32821 */  addu        $a1, $t7, $v1
/* 01B7D8 0041B7D8 00A3082B */  sltu        $at, $a1, $v1
/* 01B7DC 0041B7DC 000FC7C3 */  sra         $t8, $t7, 31
/* 01B7E0 0041B7E0 00382021 */  addu        $a0, $at, $t8
/* 01B7E4 0041B7E4 00822021 */  addu        $a0, $a0, $v0
/* 01B7E8 0041B7E8 0320F809 */  jalr        $t9
/* 01B7EC 0041B7EC 24070008 */   addiu      $a3, $zero, 0x8
/* 01B7F0 0041B7F0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01B7F4 0041B7F4 92080012 */  lbu         $t0, 0x12($s0)
/* 01B7F8 0041B7F8 24060000 */  addiu       $a2, $zero, 0x0
/* 01B7FC 0041B7FC 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B800 0041B800 01032821 */  addu        $a1, $t0, $v1
/* 01B804 0041B804 00A3082B */  sltu        $at, $a1, $v1
/* 01B808 0041B808 000857C3 */  sra         $t2, $t0, 31
/* 01B80C 0041B80C 002A2021 */  addu        $a0, $at, $t2
/* 01B810 0041B810 00822021 */  addu        $a0, $a0, $v0
/* 01B814 0041B814 0320F809 */  jalr        $t9
/* 01B818 0041B818 24070008 */   addiu      $a3, $zero, 0x8
/* 01B81C 0041B81C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01B820 0041B820 92090013 */  lbu         $t1, 0x13($s0)
/* 01B824 0041B824 24060000 */  addiu       $a2, $zero, 0x0
/* 01B828 0041B828 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B82C 0041B82C 01232821 */  addu        $a1, $t1, $v1
/* 01B830 0041B830 00A3082B */  sltu        $at, $a1, $v1
/* 01B834 0041B834 000967C3 */  sra         $t4, $t1, 31
/* 01B838 0041B838 002C2021 */  addu        $a0, $at, $t4
/* 01B83C 0041B83C 00822021 */  addu        $a0, $a0, $v0
/* 01B840 0041B840 0320F809 */  jalr        $t9
/* 01B844 0041B844 24070008 */   addiu      $a3, $zero, 0x8
/* 01B848 0041B848 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01B84C 0041B84C 920E0014 */  lbu         $t6, 0x14($s0)
/* 01B850 0041B850 24060000 */  addiu       $a2, $zero, 0x0
/* 01B854 0041B854 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B858 0041B858 01C32821 */  addu        $a1, $t6, $v1
/* 01B85C 0041B85C 00A3082B */  sltu        $at, $a1, $v1
/* 01B860 0041B860 000EC7C3 */  sra         $t8, $t6, 31
/* 01B864 0041B864 00382021 */  addu        $a0, $at, $t8
/* 01B868 0041B868 00822021 */  addu        $a0, $a0, $v0
/* 01B86C 0041B86C 0320F809 */  jalr        $t9
/* 01B870 0041B870 24070008 */   addiu      $a3, $zero, 0x8
/* 01B874 0041B874 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01B878 0041B878 920F0015 */  lbu         $t7, 0x15($s0)
/* 01B87C 0041B87C 24060000 */  addiu       $a2, $zero, 0x0
/* 01B880 0041B880 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B884 0041B884 01E32821 */  addu        $a1, $t7, $v1
/* 01B888 0041B888 00A3082B */  sltu        $at, $a1, $v1
/* 01B88C 0041B88C 000F47C3 */  sra         $t0, $t7, 31
/* 01B890 0041B890 00282021 */  addu        $a0, $at, $t0
/* 01B894 0041B894 00822021 */  addu        $a0, $a0, $v0
/* 01B898 0041B898 0320F809 */  jalr        $t9
/* 01B89C 0041B89C 24070008 */   addiu      $a3, $zero, 0x8
/* 01B8A0 0041B8A0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01B8A4 0041B8A4 920A0016 */  lbu         $t2, 0x16($s0)
/* 01B8A8 0041B8A8 24060000 */  addiu       $a2, $zero, 0x0
/* 01B8AC 0041B8AC 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B8B0 0041B8B0 01432821 */  addu        $a1, $t2, $v1
/* 01B8B4 0041B8B4 00A3082B */  sltu        $at, $a1, $v1
/* 01B8B8 0041B8B8 000A67C3 */  sra         $t4, $t2, 31
/* 01B8BC 0041B8BC 002C2021 */  addu        $a0, $at, $t4
/* 01B8C0 0041B8C0 00822021 */  addu        $a0, $a0, $v0
/* 01B8C4 0041B8C4 0320F809 */  jalr        $t9
/* 01B8C8 0041B8C8 24070008 */   addiu      $a3, $zero, 0x8
/* 01B8CC 0041B8CC 920B0017 */  lbu         $t3, 0x17($s0)
/* 01B8D0 0041B8D0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01B8D4 0041B8D4 24040000 */  addiu       $a0, $zero, 0x0
/* 01B8D8 0041B8D8 0163C821 */  addu        $t9, $t3, $v1
/* 01B8DC 0041B8DC 0323082B */  sltu        $at, $t9, $v1
/* 01B8E0 0041B8E0 000B77C3 */  sra         $t6, $t3, 31
/* 01B8E4 0041B8E4 002EC021 */  addu        $t8, $at, $t6
/* 01B8E8 0041B8E8 0302C021 */  addu        $t8, $t8, $v0
/* 01B8EC 0041B8EC AE380010 */  sw          $t8, 0x10($s1)
/* 01B8F0 0041B8F0 AE390014 */  sw          $t9, 0x14($s1)
/* 01B8F4 0041B8F4 9208000F */  lbu         $t0, 0xF($s0)
/* 01B8F8 0041B8F8 24060000 */  addiu       $a2, $zero, 0x0
/* 01B8FC 0041B8FC 24070008 */  addiu       $a3, $zero, 0x8
/* 01B900 0041B900 A228000F */  sb          $t0, 0xF($s1)
/* 01B904 0041B904 9209000E */  lbu         $t1, 0xE($s0)
/* 01B908 0041B908 A229000E */  sb          $t1, 0xE($s1)
/* 01B90C 0041B90C 920A000D */  lbu         $t2, 0xD($s0)
/* 01B910 0041B910 A22A000D */  sb          $t2, 0xD($s1)
/* 01B914 0041B914 920C000C */  lbu         $t4, 0xC($s0)
/* 01B918 0041B918 A22C000C */  sb          $t4, 0xC($s1)
/* 01B91C 0041B91C 920D0008 */  lbu         $t5, 0x8($s0)
/* 01B920 0041B920 920E0009 */  lbu         $t6, 0x9($s0)
/* 01B924 0041B924 9219000A */  lbu         $t9, 0xA($s0)
/* 01B928 0041B928 000D5A00 */  sll         $t3, $t5, 8
/* 01B92C 0041B92C 016E7821 */  addu        $t7, $t3, $t6
/* 01B930 0041B930 920A000B */  lbu         $t2, 0xB($s0)
/* 01B934 0041B934 000FC200 */  sll         $t8, $t7, 8
/* 01B938 0041B938 03194021 */  addu        $t0, $t8, $t9
/* 01B93C 0041B93C 00084A00 */  sll         $t1, $t0, 8
/* 01B940 0041B940 01496021 */  addu        $t4, $t2, $t1
/* 01B944 0041B944 AE2C0008 */  sw          $t4, 0x8($s1)
/* 01B948 0041B948 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B94C 0041B94C 92050000 */  lbu         $a1, 0x0($s0)
/* 01B950 0041B950 0320F809 */  jalr        $t9
/* 01B954 0041B954 00000000 */   nop
/* 01B958 0041B958 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01B95C 0041B95C 920B0001 */  lbu         $t3, 0x1($s0)
/* 01B960 0041B960 24060000 */  addiu       $a2, $zero, 0x0
/* 01B964 0041B964 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B968 0041B968 01632821 */  addu        $a1, $t3, $v1
/* 01B96C 0041B96C 00A3082B */  sltu        $at, $a1, $v1
/* 01B970 0041B970 000B77C3 */  sra         $t6, $t3, 31
/* 01B974 0041B974 002E2021 */  addu        $a0, $at, $t6
/* 01B978 0041B978 00822021 */  addu        $a0, $a0, $v0
/* 01B97C 0041B97C 0320F809 */  jalr        $t9
/* 01B980 0041B980 24070008 */   addiu      $a3, $zero, 0x8
/* 01B984 0041B984 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01B988 0041B988 92180002 */  lbu         $t8, 0x2($s0)
/* 01B98C 0041B98C 24060000 */  addiu       $a2, $zero, 0x0
/* 01B990 0041B990 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B994 0041B994 03032821 */  addu        $a1, $t8, $v1
/* 01B998 0041B998 00A3082B */  sltu        $at, $a1, $v1
/* 01B99C 0041B99C 001847C3 */  sra         $t0, $t8, 31
/* 01B9A0 0041B9A0 00282021 */  addu        $a0, $at, $t0
/* 01B9A4 0041B9A4 00822021 */  addu        $a0, $a0, $v0
/* 01B9A8 0041B9A8 0320F809 */  jalr        $t9
/* 01B9AC 0041B9AC 24070008 */   addiu      $a3, $zero, 0x8
/* 01B9B0 0041B9B0 92190003 */  lbu         $t9, 0x3($s0)
/* 01B9B4 0041B9B4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01B9B8 0041B9B8 24060000 */  addiu       $a2, $zero, 0x0
/* 01B9BC 0041B9BC 001957C3 */  sra         $t2, $t9, 31
/* 01B9C0 0041B9C0 03232821 */  addu        $a1, $t9, $v1
/* 01B9C4 0041B9C4 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B9C8 0041B9C8 00A3082B */  sltu        $at, $a1, $v1
/* 01B9CC 0041B9CC 002A2021 */  addu        $a0, $at, $t2
/* 01B9D0 0041B9D0 00822021 */  addu        $a0, $a0, $v0
/* 01B9D4 0041B9D4 0320F809 */  jalr        $t9
/* 01B9D8 0041B9D8 24070008 */   addiu      $a3, $zero, 0x8
/* 01B9DC 0041B9DC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01B9E0 0041B9E0 920C0004 */  lbu         $t4, 0x4($s0)
/* 01B9E4 0041B9E4 24060000 */  addiu       $a2, $zero, 0x0
/* 01B9E8 0041B9E8 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B9EC 0041B9EC 01832821 */  addu        $a1, $t4, $v1
/* 01B9F0 0041B9F0 00A3082B */  sltu        $at, $a1, $v1
/* 01B9F4 0041B9F4 000C77C3 */  sra         $t6, $t4, 31
/* 01B9F8 0041B9F8 002E2021 */  addu        $a0, $at, $t6
/* 01B9FC 0041B9FC 00822021 */  addu        $a0, $a0, $v0
/* 01BA00 0041BA00 0320F809 */  jalr        $t9
/* 01BA04 0041BA04 24070008 */   addiu      $a3, $zero, 0x8
/* 01BA08 0041BA08 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01BA0C 0041BA0C 920D0005 */  lbu         $t5, 0x5($s0)
/* 01BA10 0041BA10 24060000 */  addiu       $a2, $zero, 0x0
/* 01BA14 0041BA14 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01BA18 0041BA18 01A32821 */  addu        $a1, $t5, $v1
/* 01BA1C 0041BA1C 00A3082B */  sltu        $at, $a1, $v1
/* 01BA20 0041BA20 000DC7C3 */  sra         $t8, $t5, 31
/* 01BA24 0041BA24 00382021 */  addu        $a0, $at, $t8
/* 01BA28 0041BA28 00822021 */  addu        $a0, $a0, $v0
/* 01BA2C 0041BA2C 0320F809 */  jalr        $t9
/* 01BA30 0041BA30 24070008 */   addiu      $a3, $zero, 0x8
/* 01BA34 0041BA34 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01BA38 0041BA38 92080006 */  lbu         $t0, 0x6($s0)
/* 01BA3C 0041BA3C 24060000 */  addiu       $a2, $zero, 0x0
/* 01BA40 0041BA40 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01BA44 0041BA44 01032821 */  addu        $a1, $t0, $v1
/* 01BA48 0041BA48 00A3082B */  sltu        $at, $a1, $v1
/* 01BA4C 0041BA4C 000857C3 */  sra         $t2, $t0, 31
/* 01BA50 0041BA50 002A2021 */  addu        $a0, $at, $t2
/* 01BA54 0041BA54 00822021 */  addu        $a0, $a0, $v0
/* 01BA58 0041BA58 0320F809 */  jalr        $t9
/* 01BA5C 0041BA5C 24070008 */   addiu      $a3, $zero, 0x8
/* 01BA60 0041BA60 92090007 */  lbu         $t1, 0x7($s0)
/* 01BA64 0041BA64 0251382B */  sltu        $a3, $s2, $s1
/* 01BA68 0041BA68 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01BA6C 0041BA6C 01237821 */  addu        $t7, $t1, $v1
/* 01BA70 0041BA70 01E3082B */  sltu        $at, $t7, $v1
/* 01BA74 0041BA74 000967C3 */  sra         $t4, $t1, 31
/* 01BA78 0041BA78 002C7021 */  addu        $t6, $at, $t4
/* 01BA7C 0041BA7C 01C27021 */  addu        $t6, $t6, $v0
/* 01BA80 0041BA80 2631FFE8 */  addiu       $s1, $s1, -0x18
/* 01BA84 0041BA84 AE2E0018 */  sw          $t6, 0x18($s1)
/* 01BA88 0041BA88 14E0FF47 */  bnez        $a3, .L0041B7A8
/* 01BA8C 0041BA8C AE2F001C */   sw         $t7, 0x1C($s1)
.L0041BA90:
/* 01BA90 0041BA90 8FBF0024 */  lw          $ra, 0x24($sp)
/* 01BA94 0041BA94 8FB00014 */  lw          $s0, 0x14($sp)
/* 01BA98 0041BA98 8FB10018 */  lw          $s1, 0x18($sp)
/* 01BA9C 0041BA9C 8FB2001C */  lw          $s2, 0x1C($sp)
/* 01BAA0 0041BAA0 03E00008 */  jr          $ra
/* 01BAA4 0041BAA4 27BD0028 */   addiu      $sp, $sp, 0x28
