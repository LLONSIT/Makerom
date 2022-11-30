glabel func_0041A834 # 95
# _gp_disp: 0xFC0350C
.set noreorder; .cpload $t9; # .set reorder
/* 01A840 0041A840 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 01A844 0041A844 AFB10018 */  sw          $s1, 0x18($sp)
/* 01A848 0041A848 00067140 */  sll         $t6, $a2, 5
/* 01A84C 0041A84C 000678C0 */  sll         $t7, $a2, 3
/* 01A850 0041A850 008E8821 */  addu        $s1, $a0, $t6
/* 01A854 0041A854 01E67823 */  subu        $t7, $t7, $a2
/* 01A858 0041A858 AFB2001C */  sw          $s2, 0x1C($sp)
/* 01A85C 0041A85C AFB00014 */  sw          $s0, 0x14($sp)
/* 01A860 0041A860 000F78C0 */  sll         $t7, $t7, 3
/* 01A864 0041A864 0091382B */  sltu        $a3, $a0, $s1
/* 01A868 0041A868 AFBF0024 */  sw          $ra, 0x24($sp)
/* 01A86C 0041A86C AFBC0020 */  sw          $gp, 0x20($sp)
/* 01A870 0041A870 00809025 */  move        $s2, $a0
/* 01A874 0041A874 00AF8021 */  addu        $s0, $a1, $t7
/* 01A878 0041A878 10E001E3 */  beqz        $a3, .L0041B008
/* 01A87C 0041A87C 2631FFE0 */   addiu      $s1, $s1, -0x20
.L0041A880:
/* 01A880 0041A880 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A884 0041A884 2610FFC8 */  addiu       $s0, $s0, -0x38
/* 01A888 0041A888 92050030 */  lbu         $a1, 0x30($s0)
/* 01A88C 0041A88C 24040000 */  addiu       $a0, $zero, 0x0
/* 01A890 0041A890 24060000 */  addiu       $a2, $zero, 0x0
/* 01A894 0041A894 0320F809 */  jalr        $t9
/* 01A898 0041A898 24070008 */   addiu      $a3, $zero, 0x8
/* 01A89C 0041A89C 92190031 */  lbu         $t9, 0x31($s0)
/* 01A8A0 0041A8A0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A8A4 0041A8A4 24060000 */  addiu       $a2, $zero, 0x0
/* 01A8A8 0041A8A8 001947C3 */  sra         $t0, $t9, 31
/* 01A8AC 0041A8AC 03232821 */  addu        $a1, $t9, $v1
/* 01A8B0 0041A8B0 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A8B4 0041A8B4 00A3082B */  sltu        $at, $a1, $v1
/* 01A8B8 0041A8B8 00282021 */  addu        $a0, $at, $t0
/* 01A8BC 0041A8BC 00822021 */  addu        $a0, $a0, $v0
/* 01A8C0 0041A8C0 0320F809 */  jalr        $t9
/* 01A8C4 0041A8C4 24070008 */   addiu      $a3, $zero, 0x8
/* 01A8C8 0041A8C8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A8CC 0041A8CC 920A0032 */  lbu         $t2, 0x32($s0)
/* 01A8D0 0041A8D0 24060000 */  addiu       $a2, $zero, 0x0
/* 01A8D4 0041A8D4 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A8D8 0041A8D8 01432821 */  addu        $a1, $t2, $v1
/* 01A8DC 0041A8DC 00A3082B */  sltu        $at, $a1, $v1
/* 01A8E0 0041A8E0 000A67C3 */  sra         $t4, $t2, 31
/* 01A8E4 0041A8E4 002C2021 */  addu        $a0, $at, $t4
/* 01A8E8 0041A8E8 00822021 */  addu        $a0, $a0, $v0
/* 01A8EC 0041A8EC 0320F809 */  jalr        $t9
/* 01A8F0 0041A8F0 24070008 */   addiu      $a3, $zero, 0x8
/* 01A8F4 0041A8F4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A8F8 0041A8F8 920B0033 */  lbu         $t3, 0x33($s0)
/* 01A8FC 0041A8FC 24060000 */  addiu       $a2, $zero, 0x0
/* 01A900 0041A900 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A904 0041A904 01632821 */  addu        $a1, $t3, $v1
/* 01A908 0041A908 00A3082B */  sltu        $at, $a1, $v1
/* 01A90C 0041A90C 000B77C3 */  sra         $t6, $t3, 31
/* 01A910 0041A910 002E2021 */  addu        $a0, $at, $t6
/* 01A914 0041A914 00822021 */  addu        $a0, $a0, $v0
/* 01A918 0041A918 0320F809 */  jalr        $t9
/* 01A91C 0041A91C 24070008 */   addiu      $a3, $zero, 0x8
/* 01A920 0041A920 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A924 0041A924 92180034 */  lbu         $t8, 0x34($s0)
/* 01A928 0041A928 24060000 */  addiu       $a2, $zero, 0x0
/* 01A92C 0041A92C 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A930 0041A930 03032821 */  addu        $a1, $t8, $v1
/* 01A934 0041A934 00A3082B */  sltu        $at, $a1, $v1
/* 01A938 0041A938 001847C3 */  sra         $t0, $t8, 31
/* 01A93C 0041A93C 00282021 */  addu        $a0, $at, $t0
/* 01A940 0041A940 00822021 */  addu        $a0, $a0, $v0
/* 01A944 0041A944 0320F809 */  jalr        $t9
/* 01A948 0041A948 24070008 */   addiu      $a3, $zero, 0x8
/* 01A94C 0041A94C 92190035 */  lbu         $t9, 0x35($s0)
/* 01A950 0041A950 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A954 0041A954 24060000 */  addiu       $a2, $zero, 0x0
/* 01A958 0041A958 001957C3 */  sra         $t2, $t9, 31
/* 01A95C 0041A95C 03232821 */  addu        $a1, $t9, $v1
/* 01A960 0041A960 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A964 0041A964 00A3082B */  sltu        $at, $a1, $v1
/* 01A968 0041A968 002A2021 */  addu        $a0, $at, $t2
/* 01A96C 0041A96C 00822021 */  addu        $a0, $a0, $v0
/* 01A970 0041A970 0320F809 */  jalr        $t9
/* 01A974 0041A974 24070008 */   addiu      $a3, $zero, 0x8
/* 01A978 0041A978 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A97C 0041A97C 920C0036 */  lbu         $t4, 0x36($s0)
/* 01A980 0041A980 24060000 */  addiu       $a2, $zero, 0x0
/* 01A984 0041A984 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A988 0041A988 01832821 */  addu        $a1, $t4, $v1
/* 01A98C 0041A98C 00A3082B */  sltu        $at, $a1, $v1
/* 01A990 0041A990 000C77C3 */  sra         $t6, $t4, 31
/* 01A994 0041A994 002E2021 */  addu        $a0, $at, $t6
/* 01A998 0041A998 00822021 */  addu        $a0, $a0, $v0
/* 01A99C 0041A99C 0320F809 */  jalr        $t9
/* 01A9A0 0041A9A0 24070008 */   addiu      $a3, $zero, 0x8
/* 01A9A4 0041A9A4 920D0037 */  lbu         $t5, 0x37($s0)
/* 01A9A8 0041A9A8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A9AC 0041A9AC 24040000 */  addiu       $a0, $zero, 0x0
/* 01A9B0 0041A9B0 01A34821 */  addu        $t1, $t5, $v1
/* 01A9B4 0041A9B4 AE29001C */  sw          $t1, 0x1C($s1)
/* 01A9B8 0041A9B8 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A9BC 0041A9BC 92050028 */  lbu         $a1, 0x28($s0)
/* 01A9C0 0041A9C0 24060000 */  addiu       $a2, $zero, 0x0
/* 01A9C4 0041A9C4 0320F809 */  jalr        $t9
/* 01A9C8 0041A9C8 24070008 */   addiu      $a3, $zero, 0x8
/* 01A9CC 0041A9CC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A9D0 0041A9D0 920C0029 */  lbu         $t4, 0x29($s0)
/* 01A9D4 0041A9D4 24060000 */  addiu       $a2, $zero, 0x0
/* 01A9D8 0041A9D8 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A9DC 0041A9DC 01832821 */  addu        $a1, $t4, $v1
/* 01A9E0 0041A9E0 00A3082B */  sltu        $at, $a1, $v1
/* 01A9E4 0041A9E4 000C77C3 */  sra         $t6, $t4, 31
/* 01A9E8 0041A9E8 002E2021 */  addu        $a0, $at, $t6
/* 01A9EC 0041A9EC 00822021 */  addu        $a0, $a0, $v0
/* 01A9F0 0041A9F0 0320F809 */  jalr        $t9
/* 01A9F4 0041A9F4 24070008 */   addiu      $a3, $zero, 0x8
/* 01A9F8 0041A9F8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A9FC 0041A9FC 920D002A */  lbu         $t5, 0x2A($s0)
/* 01AA00 0041AA00 24060000 */  addiu       $a2, $zero, 0x0
/* 01AA04 0041AA04 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01AA08 0041AA08 01A32821 */  addu        $a1, $t5, $v1
/* 01AA0C 0041AA0C 00A3082B */  sltu        $at, $a1, $v1
/* 01AA10 0041AA10 000DC7C3 */  sra         $t8, $t5, 31
/* 01AA14 0041AA14 00382021 */  addu        $a0, $at, $t8
/* 01AA18 0041AA18 00822021 */  addu        $a0, $a0, $v0
/* 01AA1C 0041AA1C 0320F809 */  jalr        $t9
/* 01AA20 0041AA20 24070008 */   addiu      $a3, $zero, 0x8
/* 01AA24 0041AA24 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01AA28 0041AA28 9208002B */  lbu         $t0, 0x2B($s0)
/* 01AA2C 0041AA2C 24060000 */  addiu       $a2, $zero, 0x0
/* 01AA30 0041AA30 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01AA34 0041AA34 01032821 */  addu        $a1, $t0, $v1
/* 01AA38 0041AA38 00A3082B */  sltu        $at, $a1, $v1
/* 01AA3C 0041AA3C 000857C3 */  sra         $t2, $t0, 31
/* 01AA40 0041AA40 002A2021 */  addu        $a0, $at, $t2
/* 01AA44 0041AA44 00822021 */  addu        $a0, $a0, $v0
/* 01AA48 0041AA48 0320F809 */  jalr        $t9
/* 01AA4C 0041AA4C 24070008 */   addiu      $a3, $zero, 0x8
/* 01AA50 0041AA50 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01AA54 0041AA54 9209002C */  lbu         $t1, 0x2C($s0)
/* 01AA58 0041AA58 24060000 */  addiu       $a2, $zero, 0x0
/* 01AA5C 0041AA5C 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01AA60 0041AA60 01232821 */  addu        $a1, $t1, $v1
/* 01AA64 0041AA64 00A3082B */  sltu        $at, $a1, $v1
/* 01AA68 0041AA68 000967C3 */  sra         $t4, $t1, 31
/* 01AA6C 0041AA6C 002C2021 */  addu        $a0, $at, $t4
/* 01AA70 0041AA70 00822021 */  addu        $a0, $a0, $v0
/* 01AA74 0041AA74 0320F809 */  jalr        $t9
/* 01AA78 0041AA78 24070008 */   addiu      $a3, $zero, 0x8
/* 01AA7C 0041AA7C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01AA80 0041AA80 920E002D */  lbu         $t6, 0x2D($s0)
/* 01AA84 0041AA84 24060000 */  addiu       $a2, $zero, 0x0
/* 01AA88 0041AA88 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01AA8C 0041AA8C 01C32821 */  addu        $a1, $t6, $v1
/* 01AA90 0041AA90 00A3082B */  sltu        $at, $a1, $v1
/* 01AA94 0041AA94 000EC7C3 */  sra         $t8, $t6, 31
/* 01AA98 0041AA98 00382021 */  addu        $a0, $at, $t8
/* 01AA9C 0041AA9C 00822021 */  addu        $a0, $a0, $v0
/* 01AAA0 0041AAA0 0320F809 */  jalr        $t9
/* 01AAA4 0041AAA4 24070008 */   addiu      $a3, $zero, 0x8
/* 01AAA8 0041AAA8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01AAAC 0041AAAC 920F002E */  lbu         $t7, 0x2E($s0)
/* 01AAB0 0041AAB0 24060000 */  addiu       $a2, $zero, 0x0
/* 01AAB4 0041AAB4 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01AAB8 0041AAB8 01E32821 */  addu        $a1, $t7, $v1
/* 01AABC 0041AABC 00A3082B */  sltu        $at, $a1, $v1
/* 01AAC0 0041AAC0 000F47C3 */  sra         $t0, $t7, 31
/* 01AAC4 0041AAC4 00282021 */  addu        $a0, $at, $t0
/* 01AAC8 0041AAC8 00822021 */  addu        $a0, $a0, $v0
/* 01AACC 0041AACC 0320F809 */  jalr        $t9
/* 01AAD0 0041AAD0 24070008 */   addiu      $a3, $zero, 0x8
/* 01AAD4 0041AAD4 920A002F */  lbu         $t2, 0x2F($s0)
/* 01AAD8 0041AAD8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01AADC 0041AADC 24040000 */  addiu       $a0, $zero, 0x0
/* 01AAE0 0041AAE0 01437821 */  addu        $t7, $t2, $v1
/* 01AAE4 0041AAE4 AE2F0014 */  sw          $t7, 0x14($s1)
/* 01AAE8 0041AAE8 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01AAEC 0041AAEC 92050020 */  lbu         $a1, 0x20($s0)
/* 01AAF0 0041AAF0 24060000 */  addiu       $a2, $zero, 0x0
/* 01AAF4 0041AAF4 0320F809 */  jalr        $t9
/* 01AAF8 0041AAF8 24070008 */   addiu      $a3, $zero, 0x8
/* 01AAFC 0041AAFC 92190021 */  lbu         $t9, 0x21($s0)
/* 01AB00 0041AB00 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01AB04 0041AB04 24060000 */  addiu       $a2, $zero, 0x0
/* 01AB08 0041AB08 001947C3 */  sra         $t0, $t9, 31
/* 01AB0C 0041AB0C 03232821 */  addu        $a1, $t9, $v1
/* 01AB10 0041AB10 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01AB14 0041AB14 00A3082B */  sltu        $at, $a1, $v1
/* 01AB18 0041AB18 00282021 */  addu        $a0, $at, $t0
/* 01AB1C 0041AB1C 00822021 */  addu        $a0, $a0, $v0
/* 01AB20 0041AB20 0320F809 */  jalr        $t9
/* 01AB24 0041AB24 24070008 */   addiu      $a3, $zero, 0x8
/* 01AB28 0041AB28 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01AB2C 0041AB2C 920A0022 */  lbu         $t2, 0x22($s0)
/* 01AB30 0041AB30 24060000 */  addiu       $a2, $zero, 0x0
/* 01AB34 0041AB34 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01AB38 0041AB38 01432821 */  addu        $a1, $t2, $v1
/* 01AB3C 0041AB3C 00A3082B */  sltu        $at, $a1, $v1
/* 01AB40 0041AB40 000A67C3 */  sra         $t4, $t2, 31
/* 01AB44 0041AB44 002C2021 */  addu        $a0, $at, $t4
/* 01AB48 0041AB48 00822021 */  addu        $a0, $a0, $v0
/* 01AB4C 0041AB4C 0320F809 */  jalr        $t9
/* 01AB50 0041AB50 24070008 */   addiu      $a3, $zero, 0x8
/* 01AB54 0041AB54 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01AB58 0041AB58 920E0023 */  lbu         $t6, 0x23($s0)
/* 01AB5C 0041AB5C 24060000 */  addiu       $a2, $zero, 0x0
/* 01AB60 0041AB60 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01AB64 0041AB64 01C32821 */  addu        $a1, $t6, $v1
/* 01AB68 0041AB68 00A3082B */  sltu        $at, $a1, $v1
/* 01AB6C 0041AB6C 000EC7C3 */  sra         $t8, $t6, 31
/* 01AB70 0041AB70 00382021 */  addu        $a0, $at, $t8
/* 01AB74 0041AB74 00822021 */  addu        $a0, $a0, $v0
/* 01AB78 0041AB78 0320F809 */  jalr        $t9
/* 01AB7C 0041AB7C 24070008 */   addiu      $a3, $zero, 0x8
/* 01AB80 0041AB80 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01AB84 0041AB84 920F0024 */  lbu         $t7, 0x24($s0)
/* 01AB88 0041AB88 24060000 */  addiu       $a2, $zero, 0x0
/* 01AB8C 0041AB8C 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01AB90 0041AB90 01E32821 */  addu        $a1, $t7, $v1
/* 01AB94 0041AB94 00A3082B */  sltu        $at, $a1, $v1
/* 01AB98 0041AB98 000F47C3 */  sra         $t0, $t7, 31
/* 01AB9C 0041AB9C 00282021 */  addu        $a0, $at, $t0
/* 01ABA0 0041ABA0 00822021 */  addu        $a0, $a0, $v0
/* 01ABA4 0041ABA4 0320F809 */  jalr        $t9
/* 01ABA8 0041ABA8 24070008 */   addiu      $a3, $zero, 0x8
/* 01ABAC 0041ABAC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01ABB0 0041ABB0 920B0025 */  lbu         $t3, 0x25($s0)
/* 01ABB4 0041ABB4 24060000 */  addiu       $a2, $zero, 0x0
/* 01ABB8 0041ABB8 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01ABBC 0041ABBC 01632821 */  addu        $a1, $t3, $v1
/* 01ABC0 0041ABC0 00A3082B */  sltu        $at, $a1, $v1
/* 01ABC4 0041ABC4 000B57C3 */  sra         $t2, $t3, 31
/* 01ABC8 0041ABC8 002A2021 */  addu        $a0, $at, $t2
/* 01ABCC 0041ABCC 00822021 */  addu        $a0, $a0, $v0
/* 01ABD0 0041ABD0 0320F809 */  jalr        $t9
/* 01ABD4 0041ABD4 24070008 */   addiu      $a3, $zero, 0x8
/* 01ABD8 0041ABD8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01ABDC 0041ABDC 920C0026 */  lbu         $t4, 0x26($s0)
/* 01ABE0 0041ABE0 24060000 */  addiu       $a2, $zero, 0x0
/* 01ABE4 0041ABE4 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01ABE8 0041ABE8 01832821 */  addu        $a1, $t4, $v1
/* 01ABEC 0041ABEC 00A3082B */  sltu        $at, $a1, $v1
/* 01ABF0 0041ABF0 000C77C3 */  sra         $t6, $t4, 31
/* 01ABF4 0041ABF4 002E2021 */  addu        $a0, $at, $t6
/* 01ABF8 0041ABF8 00822021 */  addu        $a0, $a0, $v0
/* 01ABFC 0041ABFC 0320F809 */  jalr        $t9
/* 01AC00 0041AC00 24070008 */   addiu      $a3, $zero, 0x8
/* 01AC04 0041AC04 920D0027 */  lbu         $t5, 0x27($s0)
/* 01AC08 0041AC08 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01AC0C 0041AC0C 24040000 */  addiu       $a0, $zero, 0x0
/* 01AC10 0041AC10 01A34821 */  addu        $t1, $t5, $v1
/* 01AC14 0041AC14 AE290010 */  sw          $t1, 0x10($s1)
/* 01AC18 0041AC18 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01AC1C 0041AC1C 92050018 */  lbu         $a1, 0x18($s0)
/* 01AC20 0041AC20 24060000 */  addiu       $a2, $zero, 0x0
/* 01AC24 0041AC24 0320F809 */  jalr        $t9
/* 01AC28 0041AC28 24070008 */   addiu      $a3, $zero, 0x8
/* 01AC2C 0041AC2C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01AC30 0041AC30 920C0019 */  lbu         $t4, 0x19($s0)
/* 01AC34 0041AC34 24060000 */  addiu       $a2, $zero, 0x0
/* 01AC38 0041AC38 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01AC3C 0041AC3C 01832821 */  addu        $a1, $t4, $v1
/* 01AC40 0041AC40 00A3082B */  sltu        $at, $a1, $v1
/* 01AC44 0041AC44 000C77C3 */  sra         $t6, $t4, 31
/* 01AC48 0041AC48 002E2021 */  addu        $a0, $at, $t6
/* 01AC4C 0041AC4C 00822021 */  addu        $a0, $a0, $v0
/* 01AC50 0041AC50 0320F809 */  jalr        $t9
/* 01AC54 0041AC54 24070008 */   addiu      $a3, $zero, 0x8
/* 01AC58 0041AC58 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01AC5C 0041AC5C 920D001A */  lbu         $t5, 0x1A($s0)
/* 01AC60 0041AC60 24060000 */  addiu       $a2, $zero, 0x0
/* 01AC64 0041AC64 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01AC68 0041AC68 01A32821 */  addu        $a1, $t5, $v1
/* 01AC6C 0041AC6C 00A3082B */  sltu        $at, $a1, $v1
/* 01AC70 0041AC70 000DC7C3 */  sra         $t8, $t5, 31
/* 01AC74 0041AC74 00382021 */  addu        $a0, $at, $t8
/* 01AC78 0041AC78 00822021 */  addu        $a0, $a0, $v0
/* 01AC7C 0041AC7C 0320F809 */  jalr        $t9
/* 01AC80 0041AC80 24070008 */   addiu      $a3, $zero, 0x8
/* 01AC84 0041AC84 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01AC88 0041AC88 9208001B */  lbu         $t0, 0x1B($s0)
/* 01AC8C 0041AC8C 24060000 */  addiu       $a2, $zero, 0x0
/* 01AC90 0041AC90 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01AC94 0041AC94 01032821 */  addu        $a1, $t0, $v1
/* 01AC98 0041AC98 00A3082B */  sltu        $at, $a1, $v1
/* 01AC9C 0041AC9C 000857C3 */  sra         $t2, $t0, 31
/* 01ACA0 0041ACA0 002A2021 */  addu        $a0, $at, $t2
/* 01ACA4 0041ACA4 00822021 */  addu        $a0, $a0, $v0
/* 01ACA8 0041ACA8 0320F809 */  jalr        $t9
/* 01ACAC 0041ACAC 24070008 */   addiu      $a3, $zero, 0x8
/* 01ACB0 0041ACB0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01ACB4 0041ACB4 9209001C */  lbu         $t1, 0x1C($s0)
/* 01ACB8 0041ACB8 24060000 */  addiu       $a2, $zero, 0x0
/* 01ACBC 0041ACBC 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01ACC0 0041ACC0 01232821 */  addu        $a1, $t1, $v1
/* 01ACC4 0041ACC4 00A3082B */  sltu        $at, $a1, $v1
/* 01ACC8 0041ACC8 000967C3 */  sra         $t4, $t1, 31
/* 01ACCC 0041ACCC 002C2021 */  addu        $a0, $at, $t4
/* 01ACD0 0041ACD0 00822021 */  addu        $a0, $a0, $v0
/* 01ACD4 0041ACD4 0320F809 */  jalr        $t9
/* 01ACD8 0041ACD8 24070008 */   addiu      $a3, $zero, 0x8
/* 01ACDC 0041ACDC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01ACE0 0041ACE0 920E001D */  lbu         $t6, 0x1D($s0)
/* 01ACE4 0041ACE4 24060000 */  addiu       $a2, $zero, 0x0
/* 01ACE8 0041ACE8 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01ACEC 0041ACEC 01C32821 */  addu        $a1, $t6, $v1
/* 01ACF0 0041ACF0 00A3082B */  sltu        $at, $a1, $v1
/* 01ACF4 0041ACF4 000EC7C3 */  sra         $t8, $t6, 31
/* 01ACF8 0041ACF8 00382021 */  addu        $a0, $at, $t8
/* 01ACFC 0041ACFC 00822021 */  addu        $a0, $a0, $v0
/* 01AD00 0041AD00 0320F809 */  jalr        $t9
/* 01AD04 0041AD04 24070008 */   addiu      $a3, $zero, 0x8
/* 01AD08 0041AD08 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01AD0C 0041AD0C 920F001E */  lbu         $t7, 0x1E($s0)
/* 01AD10 0041AD10 24060000 */  addiu       $a2, $zero, 0x0
/* 01AD14 0041AD14 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01AD18 0041AD18 01E32821 */  addu        $a1, $t7, $v1
/* 01AD1C 0041AD1C 00A3082B */  sltu        $at, $a1, $v1
/* 01AD20 0041AD20 000F47C3 */  sra         $t0, $t7, 31
/* 01AD24 0041AD24 00282021 */  addu        $a0, $at, $t0
/* 01AD28 0041AD28 00822021 */  addu        $a0, $a0, $v0
/* 01AD2C 0041AD2C 0320F809 */  jalr        $t9
/* 01AD30 0041AD30 24070008 */   addiu      $a3, $zero, 0x8
/* 01AD34 0041AD34 920A001F */  lbu         $t2, 0x1F($s0)
/* 01AD38 0041AD38 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01AD3C 0041AD3C 24040000 */  addiu       $a0, $zero, 0x0
/* 01AD40 0041AD40 01437821 */  addu        $t7, $t2, $v1
/* 01AD44 0041AD44 AE2F000C */  sw          $t7, 0xC($s1)
/* 01AD48 0041AD48 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01AD4C 0041AD4C 92050010 */  lbu         $a1, 0x10($s0)
/* 01AD50 0041AD50 24060000 */  addiu       $a2, $zero, 0x0
/* 01AD54 0041AD54 0320F809 */  jalr        $t9
/* 01AD58 0041AD58 24070008 */   addiu      $a3, $zero, 0x8
/* 01AD5C 0041AD5C 92190011 */  lbu         $t9, 0x11($s0)
/* 01AD60 0041AD60 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01AD64 0041AD64 24060000 */  addiu       $a2, $zero, 0x0
/* 01AD68 0041AD68 001947C3 */  sra         $t0, $t9, 31
/* 01AD6C 0041AD6C 03232821 */  addu        $a1, $t9, $v1
/* 01AD70 0041AD70 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01AD74 0041AD74 00A3082B */  sltu        $at, $a1, $v1
/* 01AD78 0041AD78 00282021 */  addu        $a0, $at, $t0
/* 01AD7C 0041AD7C 00822021 */  addu        $a0, $a0, $v0
/* 01AD80 0041AD80 0320F809 */  jalr        $t9
/* 01AD84 0041AD84 24070008 */   addiu      $a3, $zero, 0x8
/* 01AD88 0041AD88 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01AD8C 0041AD8C 920A0012 */  lbu         $t2, 0x12($s0)
/* 01AD90 0041AD90 24060000 */  addiu       $a2, $zero, 0x0
/* 01AD94 0041AD94 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01AD98 0041AD98 01432821 */  addu        $a1, $t2, $v1
/* 01AD9C 0041AD9C 00A3082B */  sltu        $at, $a1, $v1
/* 01ADA0 0041ADA0 000A67C3 */  sra         $t4, $t2, 31
/* 01ADA4 0041ADA4 002C2021 */  addu        $a0, $at, $t4
/* 01ADA8 0041ADA8 00822021 */  addu        $a0, $a0, $v0
/* 01ADAC 0041ADAC 0320F809 */  jalr        $t9
/* 01ADB0 0041ADB0 24070008 */   addiu      $a3, $zero, 0x8
/* 01ADB4 0041ADB4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01ADB8 0041ADB8 920E0013 */  lbu         $t6, 0x13($s0)
/* 01ADBC 0041ADBC 24060000 */  addiu       $a2, $zero, 0x0
/* 01ADC0 0041ADC0 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01ADC4 0041ADC4 01C32821 */  addu        $a1, $t6, $v1
/* 01ADC8 0041ADC8 00A3082B */  sltu        $at, $a1, $v1
/* 01ADCC 0041ADCC 000EC7C3 */  sra         $t8, $t6, 31
/* 01ADD0 0041ADD0 00382021 */  addu        $a0, $at, $t8
/* 01ADD4 0041ADD4 00822021 */  addu        $a0, $a0, $v0
/* 01ADD8 0041ADD8 0320F809 */  jalr        $t9
/* 01ADDC 0041ADDC 24070008 */   addiu      $a3, $zero, 0x8
/* 01ADE0 0041ADE0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01ADE4 0041ADE4 920F0014 */  lbu         $t7, 0x14($s0)
/* 01ADE8 0041ADE8 24060000 */  addiu       $a2, $zero, 0x0
/* 01ADEC 0041ADEC 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01ADF0 0041ADF0 01E32821 */  addu        $a1, $t7, $v1
/* 01ADF4 0041ADF4 00A3082B */  sltu        $at, $a1, $v1
/* 01ADF8 0041ADF8 000F47C3 */  sra         $t0, $t7, 31
/* 01ADFC 0041ADFC 00282021 */  addu        $a0, $at, $t0
/* 01AE00 0041AE00 00822021 */  addu        $a0, $a0, $v0
/* 01AE04 0041AE04 0320F809 */  jalr        $t9
/* 01AE08 0041AE08 24070008 */   addiu      $a3, $zero, 0x8
/* 01AE0C 0041AE0C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01AE10 0041AE10 920B0015 */  lbu         $t3, 0x15($s0)
/* 01AE14 0041AE14 24060000 */  addiu       $a2, $zero, 0x0
/* 01AE18 0041AE18 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01AE1C 0041AE1C 01632821 */  addu        $a1, $t3, $v1
/* 01AE20 0041AE20 00A3082B */  sltu        $at, $a1, $v1
/* 01AE24 0041AE24 000B57C3 */  sra         $t2, $t3, 31
/* 01AE28 0041AE28 002A2021 */  addu        $a0, $at, $t2
/* 01AE2C 0041AE2C 00822021 */  addu        $a0, $a0, $v0
/* 01AE30 0041AE30 0320F809 */  jalr        $t9
/* 01AE34 0041AE34 24070008 */   addiu      $a3, $zero, 0x8
/* 01AE38 0041AE38 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01AE3C 0041AE3C 920C0016 */  lbu         $t4, 0x16($s0)
/* 01AE40 0041AE40 24060000 */  addiu       $a2, $zero, 0x0
/* 01AE44 0041AE44 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01AE48 0041AE48 01832821 */  addu        $a1, $t4, $v1
/* 01AE4C 0041AE4C 00A3082B */  sltu        $at, $a1, $v1
/* 01AE50 0041AE50 000C77C3 */  sra         $t6, $t4, 31
/* 01AE54 0041AE54 002E2021 */  addu        $a0, $at, $t6
/* 01AE58 0041AE58 00822021 */  addu        $a0, $a0, $v0
/* 01AE5C 0041AE5C 0320F809 */  jalr        $t9
/* 01AE60 0041AE60 24070008 */   addiu      $a3, $zero, 0x8
/* 01AE64 0041AE64 920D0017 */  lbu         $t5, 0x17($s0)
/* 01AE68 0041AE68 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01AE6C 0041AE6C 24040000 */  addiu       $a0, $zero, 0x0
/* 01AE70 0041AE70 01A34821 */  addu        $t1, $t5, $v1
/* 01AE74 0041AE74 AE290008 */  sw          $t1, 0x8($s1)
/* 01AE78 0041AE78 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01AE7C 0041AE7C 92050008 */  lbu         $a1, 0x8($s0)
/* 01AE80 0041AE80 24060000 */  addiu       $a2, $zero, 0x0
/* 01AE84 0041AE84 0320F809 */  jalr        $t9
/* 01AE88 0041AE88 24070008 */   addiu      $a3, $zero, 0x8
/* 01AE8C 0041AE8C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01AE90 0041AE90 920C0009 */  lbu         $t4, 0x9($s0)
/* 01AE94 0041AE94 24060000 */  addiu       $a2, $zero, 0x0
/* 01AE98 0041AE98 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01AE9C 0041AE9C 01832821 */  addu        $a1, $t4, $v1
/* 01AEA0 0041AEA0 00A3082B */  sltu        $at, $a1, $v1
/* 01AEA4 0041AEA4 000C77C3 */  sra         $t6, $t4, 31
/* 01AEA8 0041AEA8 002E2021 */  addu        $a0, $at, $t6
/* 01AEAC 0041AEAC 00822021 */  addu        $a0, $a0, $v0
/* 01AEB0 0041AEB0 0320F809 */  jalr        $t9
/* 01AEB4 0041AEB4 24070008 */   addiu      $a3, $zero, 0x8
/* 01AEB8 0041AEB8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01AEBC 0041AEBC 920D000A */  lbu         $t5, 0xA($s0)
/* 01AEC0 0041AEC0 24060000 */  addiu       $a2, $zero, 0x0
/* 01AEC4 0041AEC4 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01AEC8 0041AEC8 01A32821 */  addu        $a1, $t5, $v1
/* 01AECC 0041AECC 00A3082B */  sltu        $at, $a1, $v1
/* 01AED0 0041AED0 000DC7C3 */  sra         $t8, $t5, 31
/* 01AED4 0041AED4 00382021 */  addu        $a0, $at, $t8
/* 01AED8 0041AED8 00822021 */  addu        $a0, $a0, $v0
/* 01AEDC 0041AEDC 0320F809 */  jalr        $t9
/* 01AEE0 0041AEE0 24070008 */   addiu      $a3, $zero, 0x8
/* 01AEE4 0041AEE4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01AEE8 0041AEE8 9208000B */  lbu         $t0, 0xB($s0)
/* 01AEEC 0041AEEC 24060000 */  addiu       $a2, $zero, 0x0
/* 01AEF0 0041AEF0 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01AEF4 0041AEF4 01032821 */  addu        $a1, $t0, $v1
/* 01AEF8 0041AEF8 00A3082B */  sltu        $at, $a1, $v1
/* 01AEFC 0041AEFC 000857C3 */  sra         $t2, $t0, 31
/* 01AF00 0041AF00 002A2021 */  addu        $a0, $at, $t2
/* 01AF04 0041AF04 00822021 */  addu        $a0, $a0, $v0
/* 01AF08 0041AF08 0320F809 */  jalr        $t9
/* 01AF0C 0041AF0C 24070008 */   addiu      $a3, $zero, 0x8
/* 01AF10 0041AF10 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01AF14 0041AF14 9209000C */  lbu         $t1, 0xC($s0)
/* 01AF18 0041AF18 24060000 */  addiu       $a2, $zero, 0x0
/* 01AF1C 0041AF1C 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01AF20 0041AF20 01232821 */  addu        $a1, $t1, $v1
/* 01AF24 0041AF24 00A3082B */  sltu        $at, $a1, $v1
/* 01AF28 0041AF28 000967C3 */  sra         $t4, $t1, 31
/* 01AF2C 0041AF2C 002C2021 */  addu        $a0, $at, $t4
/* 01AF30 0041AF30 00822021 */  addu        $a0, $a0, $v0
/* 01AF34 0041AF34 0320F809 */  jalr        $t9
/* 01AF38 0041AF38 24070008 */   addiu      $a3, $zero, 0x8
/* 01AF3C 0041AF3C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01AF40 0041AF40 920E000D */  lbu         $t6, 0xD($s0)
/* 01AF44 0041AF44 24060000 */  addiu       $a2, $zero, 0x0
/* 01AF48 0041AF48 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01AF4C 0041AF4C 01C32821 */  addu        $a1, $t6, $v1
/* 01AF50 0041AF50 00A3082B */  sltu        $at, $a1, $v1
/* 01AF54 0041AF54 000EC7C3 */  sra         $t8, $t6, 31
/* 01AF58 0041AF58 00382021 */  addu        $a0, $at, $t8
/* 01AF5C 0041AF5C 00822021 */  addu        $a0, $a0, $v0
/* 01AF60 0041AF60 0320F809 */  jalr        $t9
/* 01AF64 0041AF64 24070008 */   addiu      $a3, $zero, 0x8
/* 01AF68 0041AF68 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01AF6C 0041AF6C 920F000E */  lbu         $t7, 0xE($s0)
/* 01AF70 0041AF70 24060000 */  addiu       $a2, $zero, 0x0
/* 01AF74 0041AF74 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01AF78 0041AF78 01E32821 */  addu        $a1, $t7, $v1
/* 01AF7C 0041AF7C 00A3082B */  sltu        $at, $a1, $v1
/* 01AF80 0041AF80 000F47C3 */  sra         $t0, $t7, 31
/* 01AF84 0041AF84 00282021 */  addu        $a0, $at, $t0
/* 01AF88 0041AF88 00822021 */  addu        $a0, $a0, $v0
/* 01AF8C 0041AF8C 0320F809 */  jalr        $t9
/* 01AF90 0041AF90 24070008 */   addiu      $a3, $zero, 0x8
/* 01AF94 0041AF94 920A000F */  lbu         $t2, 0xF($s0)
/* 01AF98 0041AF98 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01AF9C 0041AF9C 0251382B */  sltu        $a3, $s2, $s1
/* 01AFA0 0041AFA0 01437821 */  addu        $t7, $t2, $v1
/* 01AFA4 0041AFA4 AE2F0004 */  sw          $t7, 0x4($s1)
/* 01AFA8 0041AFA8 92180004 */  lbu         $t8, 0x4($s0)
/* 01AFAC 0041AFAC 92080005 */  lbu         $t0, 0x5($s0)
/* 01AFB0 0041AFB0 920C0006 */  lbu         $t4, 0x6($s0)
/* 01AFB4 0041AFB4 0018CA00 */  sll         $t9, $t8, 8
/* 01AFB8 0041AFB8 03284821 */  addu        $t1, $t9, $t0
/* 01AFBC 0041AFBC 920F0007 */  lbu         $t7, 0x7($s0)
/* 01AFC0 0041AFC0 00095200 */  sll         $t2, $t1, 8
/* 01AFC4 0041AFC4 014C6821 */  addu        $t5, $t2, $t4
/* 01AFC8 0041AFC8 000D7200 */  sll         $t6, $t5, 8
/* 01AFCC 0041AFCC 01EE5821 */  addu        $t3, $t7, $t6
/* 01AFD0 0041AFD0 AE2B0018 */  sw          $t3, 0x18($s1)
/* 01AFD4 0041AFD4 92180000 */  lbu         $t8, 0x0($s0)
/* 01AFD8 0041AFD8 92080001 */  lbu         $t0, 0x1($s0)
/* 01AFDC 0041AFDC 920C0002 */  lbu         $t4, 0x2($s0)
/* 01AFE0 0041AFE0 0018CA00 */  sll         $t9, $t8, 8
/* 01AFE4 0041AFE4 03284821 */  addu        $t1, $t9, $t0
/* 01AFE8 0041AFE8 920E0003 */  lbu         $t6, 0x3($s0)
/* 01AFEC 0041AFEC 00095200 */  sll         $t2, $t1, 8
/* 01AFF0 0041AFF0 014C6821 */  addu        $t5, $t2, $t4
/* 01AFF4 0041AFF4 000D7A00 */  sll         $t7, $t5, 8
/* 01AFF8 0041AFF8 01CF5821 */  addu        $t3, $t6, $t7
/* 01AFFC 0041AFFC 2631FFE0 */  addiu       $s1, $s1, -0x20
/* 01B000 0041B000 14E0FE1F */  bnez        $a3, .L0041A880
/* 01B004 0041B004 AE2B0020 */   sw         $t3, 0x20($s1)
.L0041B008:
/* 01B008 0041B008 8FBF0024 */  lw          $ra, 0x24($sp)
/* 01B00C 0041B00C 8FB00014 */  lw          $s0, 0x14($sp)
/* 01B010 0041B010 8FB10018 */  lw          $s1, 0x18($sp)
/* 01B014 0041B014 8FB2001C */  lw          $s2, 0x1C($sp)
/* 01B018 0041B018 03E00008 */  jr          $ra
/* 01B01C 0041B01C 27BD0028 */   addiu      $sp, $sp, 0x28
