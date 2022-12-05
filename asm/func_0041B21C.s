glabel func_0041B21C # 97
# _gp_disp: 0xFC02B24
.set noreorder; .cpload $t9; # .set reorder
/* 01B228 0041B228 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 01B22C 0041B22C AFB10018 */  sw          $s1, 0x18($sp)
/* 01B230 0041B230 00061100 */  sll         $v0, $a2, 4
/* 01B234 0041B234 00828821 */  addu        $s1, $a0, $v0
/* 01B238 0041B238 AFB2001C */  sw          $s2, 0x1C($sp)
/* 01B23C 0041B23C AFB00014 */  sw          $s0, 0x14($sp)
/* 01B240 0041B240 0091382B */  sltu        $a3, $a0, $s1
/* 01B244 0041B244 AFBF0024 */  sw          $ra, 0x24($sp)
/* 01B248 0041B248 AFBC0020 */  sw          $gp, 0x20($sp)
/* 01B24C 0041B24C 00809025 */  move        $s2, $a0
/* 01B250 0041B250 00A28021 */  addu        $s0, $a1, $v0
/* 01B254 0041B254 10E0006A */  beqz        $a3, .L0041B400
/* 01B258 0041B258 2631FFF0 */   addiu      $s1, $s1, -0x10
.L0041B25C:
/* 01B25C 0041B25C 920EFFFF */  lbu         $t6, -0x1($s0)
/* 01B260 0041B260 2610FFF0 */  addiu       $s0, $s0, -0x10
/* 01B264 0041B264 24040000 */  addiu       $a0, $zero, 0x0
/* 01B268 0041B268 A22E000F */  sb          $t6, 0xF($s1)
/* 01B26C 0041B26C 920F000E */  lbu         $t7, 0xE($s0)
/* 01B270 0041B270 24060000 */  addiu       $a2, $zero, 0x0
/* 01B274 0041B274 24070008 */  addiu       $a3, $zero, 0x8
/* 01B278 0041B278 A22F000E */  sb          $t7, 0xE($s1)
/* 01B27C 0041B27C 9218000D */  lbu         $t8, 0xD($s0)
/* 01B280 0041B280 A238000D */  sb          $t8, 0xD($s1)
/* 01B284 0041B284 9219000C */  lbu         $t9, 0xC($s0)
/* 01B288 0041B288 A239000C */  sb          $t9, 0xC($s1)
/* 01B28C 0041B28C 92080008 */  lbu         $t0, 0x8($s0)
/* 01B290 0041B290 920A0009 */  lbu         $t2, 0x9($s0)
/* 01B294 0041B294 920D000A */  lbu         $t5, 0xA($s0)
/* 01B298 0041B298 00084A00 */  sll         $t1, $t0, 8
/* 01B29C 0041B29C 012A5821 */  addu        $t3, $t1, $t2
/* 01B2A0 0041B2A0 9218000B */  lbu         $t8, 0xB($s0)
/* 01B2A4 0041B2A4 000B6200 */  sll         $t4, $t3, 8
/* 01B2A8 0041B2A8 018D7021 */  addu        $t6, $t4, $t5
/* 01B2AC 0041B2AC 000E7A00 */  sll         $t7, $t6, 8
/* 01B2B0 0041B2B0 030FC821 */  addu        $t9, $t8, $t7
/* 01B2B4 0041B2B4 AE390008 */  sw          $t9, 0x8($s1)
/* 01B2B8 0041B2B8 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B2BC 0041B2BC 92050000 */  lbu         $a1, 0x0($s0)
/* 01B2C0 0041B2C0 0320F809 */  jalr        $t9
/* 01B2C4 0041B2C4 00000000 */   nop
/* 01B2C8 0041B2C8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01B2CC 0041B2CC 92090001 */  lbu         $t1, 0x1($s0)
/* 01B2D0 0041B2D0 24060000 */  addiu       $a2, $zero, 0x0
/* 01B2D4 0041B2D4 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B2D8 0041B2D8 01232821 */  addu        $a1, $t1, $v1
/* 01B2DC 0041B2DC 00A3082B */  sltu        $at, $a1, $v1
/* 01B2E0 0041B2E0 000957C3 */  sra         $t2, $t1, 31
/* 01B2E4 0041B2E4 002A2021 */  addu        $a0, $at, $t2
/* 01B2E8 0041B2E8 00822021 */  addu        $a0, $a0, $v0
/* 01B2EC 0041B2EC 0320F809 */  jalr        $t9
/* 01B2F0 0041B2F0 24070008 */   addiu      $a3, $zero, 0x8
/* 01B2F4 0041B2F4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01B2F8 0041B2F8 920C0002 */  lbu         $t4, 0x2($s0)
/* 01B2FC 0041B2FC 24060000 */  addiu       $a2, $zero, 0x0
/* 01B300 0041B300 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B304 0041B304 01832821 */  addu        $a1, $t4, $v1
/* 01B308 0041B308 00A3082B */  sltu        $at, $a1, $v1
/* 01B30C 0041B30C 000C77C3 */  sra         $t6, $t4, 31
/* 01B310 0041B310 002E2021 */  addu        $a0, $at, $t6
/* 01B314 0041B314 00822021 */  addu        $a0, $a0, $v0
/* 01B318 0041B318 0320F809 */  jalr        $t9
/* 01B31C 0041B31C 24070008 */   addiu      $a3, $zero, 0x8
/* 01B320 0041B320 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01B324 0041B324 920D0003 */  lbu         $t5, 0x3($s0)
/* 01B328 0041B328 24060000 */  addiu       $a2, $zero, 0x0
/* 01B32C 0041B32C 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B330 0041B330 01A32821 */  addu        $a1, $t5, $v1
/* 01B334 0041B334 00A3082B */  sltu        $at, $a1, $v1
/* 01B338 0041B338 000DC7C3 */  sra         $t8, $t5, 31
/* 01B33C 0041B33C 00382021 */  addu        $a0, $at, $t8
/* 01B340 0041B340 00822021 */  addu        $a0, $a0, $v0
/* 01B344 0041B344 0320F809 */  jalr        $t9
/* 01B348 0041B348 24070008 */   addiu      $a3, $zero, 0x8
/* 01B34C 0041B34C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01B350 0041B350 92080004 */  lbu         $t0, 0x4($s0)
/* 01B354 0041B354 24060000 */  addiu       $a2, $zero, 0x0
/* 01B358 0041B358 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B35C 0041B35C 01032821 */  addu        $a1, $t0, $v1
/* 01B360 0041B360 00A3082B */  sltu        $at, $a1, $v1
/* 01B364 0041B364 000857C3 */  sra         $t2, $t0, 31
/* 01B368 0041B368 002A2021 */  addu        $a0, $at, $t2
/* 01B36C 0041B36C 00822021 */  addu        $a0, $a0, $v0
/* 01B370 0041B370 0320F809 */  jalr        $t9
/* 01B374 0041B374 24070008 */   addiu      $a3, $zero, 0x8
/* 01B378 0041B378 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01B37C 0041B37C 92090005 */  lbu         $t1, 0x5($s0)
/* 01B380 0041B380 24060000 */  addiu       $a2, $zero, 0x0
/* 01B384 0041B384 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B388 0041B388 01232821 */  addu        $a1, $t1, $v1
/* 01B38C 0041B38C 00A3082B */  sltu        $at, $a1, $v1
/* 01B390 0041B390 000967C3 */  sra         $t4, $t1, 31
/* 01B394 0041B394 002C2021 */  addu        $a0, $at, $t4
/* 01B398 0041B398 00822021 */  addu        $a0, $a0, $v0
/* 01B39C 0041B39C 0320F809 */  jalr        $t9
/* 01B3A0 0041B3A0 24070008 */   addiu      $a3, $zero, 0x8
/* 01B3A4 0041B3A4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01B3A8 0041B3A8 920E0006 */  lbu         $t6, 0x6($s0)
/* 01B3AC 0041B3AC 24060000 */  addiu       $a2, $zero, 0x0
/* 01B3B0 0041B3B0 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B3B4 0041B3B4 01C32821 */  addu        $a1, $t6, $v1
/* 01B3B8 0041B3B8 00A3082B */  sltu        $at, $a1, $v1
/* 01B3BC 0041B3BC 000EC7C3 */  sra         $t8, $t6, 31
/* 01B3C0 0041B3C0 00382021 */  addu        $a0, $at, $t8
/* 01B3C4 0041B3C4 00822021 */  addu        $a0, $a0, $v0
/* 01B3C8 0041B3C8 0320F809 */  jalr        $t9
/* 01B3CC 0041B3CC 24070008 */   addiu      $a3, $zero, 0x8
/* 01B3D0 0041B3D0 920F0007 */  lbu         $t7, 0x7($s0)
/* 01B3D4 0041B3D4 0251382B */  sltu        $a3, $s2, $s1
/* 01B3D8 0041B3D8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01B3DC 0041B3DC 01E35821 */  addu        $t3, $t7, $v1
/* 01B3E0 0041B3E0 0163082B */  sltu        $at, $t3, $v1
/* 01B3E4 0041B3E4 000F47C3 */  sra         $t0, $t7, 31
/* 01B3E8 0041B3E8 00285021 */  addu        $t2, $at, $t0
/* 01B3EC 0041B3EC 01425021 */  addu        $t2, $t2, $v0
/* 01B3F0 0041B3F0 2631FFF0 */  addiu       $s1, $s1, -0x10
/* 01B3F4 0041B3F4 AE2A0010 */  sw          $t2, 0x10($s1)
/* 01B3F8 0041B3F8 14E0FF98 */  bnez        $a3, .L0041B25C
/* 01B3FC 0041B3FC AE2B0014 */   sw         $t3, 0x14($s1)
.L0041B400:
/* 01B400 0041B400 8FBF0024 */  lw          $ra, 0x24($sp)
/* 01B404 0041B404 8FB00014 */  lw          $s0, 0x14($sp)
/* 01B408 0041B408 8FB10018 */  lw          $s1, 0x18($sp)
/* 01B40C 0041B40C 8FB2001C */  lw          $s2, 0x1C($sp)
/* 01B410 0041B410 03E00008 */  jr          $ra
/* 01B414 0041B414 27BD0028 */   addiu      $sp, $sp, 0x28
