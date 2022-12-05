glabel func_0041B020 # 96
# _gp_disp: 0xFC02D20
.set noreorder; .cpload $t9; # .set reorder
/* 01B02C 0041B02C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 01B030 0041B030 AFB10018 */  sw          $s1, 0x18($sp)
/* 01B034 0041B034 00061100 */  sll         $v0, $a2, 4
/* 01B038 0041B038 00828821 */  addu        $s1, $a0, $v0
/* 01B03C 0041B03C AFB2001C */  sw          $s2, 0x1C($sp)
/* 01B040 0041B040 AFB00014 */  sw          $s0, 0x14($sp)
/* 01B044 0041B044 0091382B */  sltu        $a3, $a0, $s1
/* 01B048 0041B048 AFBF0024 */  sw          $ra, 0x24($sp)
/* 01B04C 0041B04C AFBC0020 */  sw          $gp, 0x20($sp)
/* 01B050 0041B050 00809025 */  move        $s2, $a0
/* 01B054 0041B054 00A28021 */  addu        $s0, $a1, $v0
/* 01B058 0041B058 10E0006A */  beqz        $a3, .L0041B204
/* 01B05C 0041B05C 2631FFF0 */   addiu      $s1, $s1, -0x10
.L0041B060:
/* 01B060 0041B060 920EFFFF */  lbu         $t6, -0x1($s0)
/* 01B064 0041B064 2610FFF0 */  addiu       $s0, $s0, -0x10
/* 01B068 0041B068 24040000 */  addiu       $a0, $zero, 0x0
/* 01B06C 0041B06C A22E000F */  sb          $t6, 0xF($s1)
/* 01B070 0041B070 920F000E */  lbu         $t7, 0xE($s0)
/* 01B074 0041B074 24060000 */  addiu       $a2, $zero, 0x0
/* 01B078 0041B078 24070008 */  addiu       $a3, $zero, 0x8
/* 01B07C 0041B07C A22F000E */  sb          $t7, 0xE($s1)
/* 01B080 0041B080 9218000D */  lbu         $t8, 0xD($s0)
/* 01B084 0041B084 A238000D */  sb          $t8, 0xD($s1)
/* 01B088 0041B088 9219000C */  lbu         $t9, 0xC($s0)
/* 01B08C 0041B08C A239000C */  sb          $t9, 0xC($s1)
/* 01B090 0041B090 9208000B */  lbu         $t0, 0xB($s0)
/* 01B094 0041B094 920A000A */  lbu         $t2, 0xA($s0)
/* 01B098 0041B098 920D0009 */  lbu         $t5, 0x9($s0)
/* 01B09C 0041B09C 00084A00 */  sll         $t1, $t0, 8
/* 01B0A0 0041B0A0 012A5821 */  addu        $t3, $t1, $t2
/* 01B0A4 0041B0A4 92180008 */  lbu         $t8, 0x8($s0)
/* 01B0A8 0041B0A8 000B6200 */  sll         $t4, $t3, 8
/* 01B0AC 0041B0AC 018D7021 */  addu        $t6, $t4, $t5
/* 01B0B0 0041B0B0 000E7A00 */  sll         $t7, $t6, 8
/* 01B0B4 0041B0B4 030FC821 */  addu        $t9, $t8, $t7
/* 01B0B8 0041B0B8 AE390008 */  sw          $t9, 0x8($s1)
/* 01B0BC 0041B0BC 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B0C0 0041B0C0 92050007 */  lbu         $a1, 0x7($s0)
/* 01B0C4 0041B0C4 0320F809 */  jalr        $t9
/* 01B0C8 0041B0C8 00000000 */   nop
/* 01B0CC 0041B0CC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01B0D0 0041B0D0 92090006 */  lbu         $t1, 0x6($s0)
/* 01B0D4 0041B0D4 24060000 */  addiu       $a2, $zero, 0x0
/* 01B0D8 0041B0D8 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B0DC 0041B0DC 01232821 */  addu        $a1, $t1, $v1
/* 01B0E0 0041B0E0 00A3082B */  sltu        $at, $a1, $v1
/* 01B0E4 0041B0E4 000957C3 */  sra         $t2, $t1, 31
/* 01B0E8 0041B0E8 002A2021 */  addu        $a0, $at, $t2
/* 01B0EC 0041B0EC 00822021 */  addu        $a0, $a0, $v0
/* 01B0F0 0041B0F0 0320F809 */  jalr        $t9
/* 01B0F4 0041B0F4 24070008 */   addiu      $a3, $zero, 0x8
/* 01B0F8 0041B0F8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01B0FC 0041B0FC 920C0005 */  lbu         $t4, 0x5($s0)
/* 01B100 0041B100 24060000 */  addiu       $a2, $zero, 0x0
/* 01B104 0041B104 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B108 0041B108 01832821 */  addu        $a1, $t4, $v1
/* 01B10C 0041B10C 00A3082B */  sltu        $at, $a1, $v1
/* 01B110 0041B110 000C77C3 */  sra         $t6, $t4, 31
/* 01B114 0041B114 002E2021 */  addu        $a0, $at, $t6
/* 01B118 0041B118 00822021 */  addu        $a0, $a0, $v0
/* 01B11C 0041B11C 0320F809 */  jalr        $t9
/* 01B120 0041B120 24070008 */   addiu      $a3, $zero, 0x8
/* 01B124 0041B124 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01B128 0041B128 920D0004 */  lbu         $t5, 0x4($s0)
/* 01B12C 0041B12C 24060000 */  addiu       $a2, $zero, 0x0
/* 01B130 0041B130 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B134 0041B134 01A32821 */  addu        $a1, $t5, $v1
/* 01B138 0041B138 00A3082B */  sltu        $at, $a1, $v1
/* 01B13C 0041B13C 000DC7C3 */  sra         $t8, $t5, 31
/* 01B140 0041B140 00382021 */  addu        $a0, $at, $t8
/* 01B144 0041B144 00822021 */  addu        $a0, $a0, $v0
/* 01B148 0041B148 0320F809 */  jalr        $t9
/* 01B14C 0041B14C 24070008 */   addiu      $a3, $zero, 0x8
/* 01B150 0041B150 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01B154 0041B154 92080003 */  lbu         $t0, 0x3($s0)
/* 01B158 0041B158 24060000 */  addiu       $a2, $zero, 0x0
/* 01B15C 0041B15C 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B160 0041B160 01032821 */  addu        $a1, $t0, $v1
/* 01B164 0041B164 00A3082B */  sltu        $at, $a1, $v1
/* 01B168 0041B168 000857C3 */  sra         $t2, $t0, 31
/* 01B16C 0041B16C 002A2021 */  addu        $a0, $at, $t2
/* 01B170 0041B170 00822021 */  addu        $a0, $a0, $v0
/* 01B174 0041B174 0320F809 */  jalr        $t9
/* 01B178 0041B178 24070008 */   addiu      $a3, $zero, 0x8
/* 01B17C 0041B17C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01B180 0041B180 92090002 */  lbu         $t1, 0x2($s0)
/* 01B184 0041B184 24060000 */  addiu       $a2, $zero, 0x0
/* 01B188 0041B188 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B18C 0041B18C 01232821 */  addu        $a1, $t1, $v1
/* 01B190 0041B190 00A3082B */  sltu        $at, $a1, $v1
/* 01B194 0041B194 000967C3 */  sra         $t4, $t1, 31
/* 01B198 0041B198 002C2021 */  addu        $a0, $at, $t4
/* 01B19C 0041B19C 00822021 */  addu        $a0, $a0, $v0
/* 01B1A0 0041B1A0 0320F809 */  jalr        $t9
/* 01B1A4 0041B1A4 24070008 */   addiu      $a3, $zero, 0x8
/* 01B1A8 0041B1A8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01B1AC 0041B1AC 920E0001 */  lbu         $t6, 0x1($s0)
/* 01B1B0 0041B1B0 24060000 */  addiu       $a2, $zero, 0x0
/* 01B1B4 0041B1B4 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B1B8 0041B1B8 01C32821 */  addu        $a1, $t6, $v1
/* 01B1BC 0041B1BC 00A3082B */  sltu        $at, $a1, $v1
/* 01B1C0 0041B1C0 000EC7C3 */  sra         $t8, $t6, 31
/* 01B1C4 0041B1C4 00382021 */  addu        $a0, $at, $t8
/* 01B1C8 0041B1C8 00822021 */  addu        $a0, $a0, $v0
/* 01B1CC 0041B1CC 0320F809 */  jalr        $t9
/* 01B1D0 0041B1D0 24070008 */   addiu      $a3, $zero, 0x8
/* 01B1D4 0041B1D4 920F0000 */  lbu         $t7, 0x0($s0)
/* 01B1D8 0041B1D8 0251382B */  sltu        $a3, $s2, $s1
/* 01B1DC 0041B1DC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01B1E0 0041B1E0 01E35821 */  addu        $t3, $t7, $v1
/* 01B1E4 0041B1E4 0163082B */  sltu        $at, $t3, $v1
/* 01B1E8 0041B1E8 000F47C3 */  sra         $t0, $t7, 31
/* 01B1EC 0041B1EC 00285021 */  addu        $t2, $at, $t0
/* 01B1F0 0041B1F0 01425021 */  addu        $t2, $t2, $v0
/* 01B1F4 0041B1F4 2631FFF0 */  addiu       $s1, $s1, -0x10
/* 01B1F8 0041B1F8 AE2A0010 */  sw          $t2, 0x10($s1)
/* 01B1FC 0041B1FC 14E0FF98 */  bnez        $a3, .L0041B060
/* 01B200 0041B200 AE2B0014 */   sw         $t3, 0x14($s1)
.L0041B204:
/* 01B204 0041B204 8FBF0024 */  lw          $ra, 0x24($sp)
/* 01B208 0041B208 8FB00014 */  lw          $s0, 0x14($sp)
/* 01B20C 0041B20C 8FB10018 */  lw          $s1, 0x18($sp)
/* 01B210 0041B210 8FB2001C */  lw          $s2, 0x1C($sp)
/* 01B214 0041B214 03E00008 */  jr          $ra
/* 01B218 0041B218 27BD0028 */   addiu      $sp, $sp, 0x28
