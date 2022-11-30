glabel func_0041A048 # 94
# _gp_disp: 0xFC03CF8
.set noreorder; .cpload $t9; # .set reorder
/* 01A054 0041A054 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 01A058 0041A058 AFB10018 */  sw          $s1, 0x18($sp)
/* 01A05C 0041A05C 00067140 */  sll         $t6, $a2, 5
/* 01A060 0041A060 000678C0 */  sll         $t7, $a2, 3
/* 01A064 0041A064 008E8821 */  addu        $s1, $a0, $t6
/* 01A068 0041A068 01E67823 */  subu        $t7, $t7, $a2
/* 01A06C 0041A06C AFB2001C */  sw          $s2, 0x1C($sp)
/* 01A070 0041A070 AFB00014 */  sw          $s0, 0x14($sp)
/* 01A074 0041A074 000F78C0 */  sll         $t7, $t7, 3
/* 01A078 0041A078 0091382B */  sltu        $a3, $a0, $s1
/* 01A07C 0041A07C AFBF0024 */  sw          $ra, 0x24($sp)
/* 01A080 0041A080 AFBC0020 */  sw          $gp, 0x20($sp)
/* 01A084 0041A084 00809025 */  move        $s2, $a0
/* 01A088 0041A088 00AF8021 */  addu        $s0, $a1, $t7
/* 01A08C 0041A08C 10E001E3 */  beqz        $a3, .L0041A81C
/* 01A090 0041A090 2631FFE0 */   addiu      $s1, $s1, -0x20
.L0041A094:
/* 01A094 0041A094 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A098 0041A098 2610FFC8 */  addiu       $s0, $s0, -0x38
/* 01A09C 0041A09C 92050037 */  lbu         $a1, 0x37($s0)
/* 01A0A0 0041A0A0 24040000 */  addiu       $a0, $zero, 0x0
/* 01A0A4 0041A0A4 24060000 */  addiu       $a2, $zero, 0x0
/* 01A0A8 0041A0A8 0320F809 */  jalr        $t9
/* 01A0AC 0041A0AC 24070008 */   addiu      $a3, $zero, 0x8
/* 01A0B0 0041A0B0 92190036 */  lbu         $t9, 0x36($s0)
/* 01A0B4 0041A0B4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A0B8 0041A0B8 24060000 */  addiu       $a2, $zero, 0x0
/* 01A0BC 0041A0BC 001947C3 */  sra         $t0, $t9, 31
/* 01A0C0 0041A0C0 03232821 */  addu        $a1, $t9, $v1
/* 01A0C4 0041A0C4 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A0C8 0041A0C8 00A3082B */  sltu        $at, $a1, $v1
/* 01A0CC 0041A0CC 00282021 */  addu        $a0, $at, $t0
/* 01A0D0 0041A0D0 00822021 */  addu        $a0, $a0, $v0
/* 01A0D4 0041A0D4 0320F809 */  jalr        $t9
/* 01A0D8 0041A0D8 24070008 */   addiu      $a3, $zero, 0x8
/* 01A0DC 0041A0DC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A0E0 0041A0E0 920A0035 */  lbu         $t2, 0x35($s0)
/* 01A0E4 0041A0E4 24060000 */  addiu       $a2, $zero, 0x0
/* 01A0E8 0041A0E8 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A0EC 0041A0EC 01432821 */  addu        $a1, $t2, $v1
/* 01A0F0 0041A0F0 00A3082B */  sltu        $at, $a1, $v1
/* 01A0F4 0041A0F4 000A67C3 */  sra         $t4, $t2, 31
/* 01A0F8 0041A0F8 002C2021 */  addu        $a0, $at, $t4
/* 01A0FC 0041A0FC 00822021 */  addu        $a0, $a0, $v0
/* 01A100 0041A100 0320F809 */  jalr        $t9
/* 01A104 0041A104 24070008 */   addiu      $a3, $zero, 0x8
/* 01A108 0041A108 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A10C 0041A10C 920B0034 */  lbu         $t3, 0x34($s0)
/* 01A110 0041A110 24060000 */  addiu       $a2, $zero, 0x0
/* 01A114 0041A114 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A118 0041A118 01632821 */  addu        $a1, $t3, $v1
/* 01A11C 0041A11C 00A3082B */  sltu        $at, $a1, $v1
/* 01A120 0041A120 000B77C3 */  sra         $t6, $t3, 31
/* 01A124 0041A124 002E2021 */  addu        $a0, $at, $t6
/* 01A128 0041A128 00822021 */  addu        $a0, $a0, $v0
/* 01A12C 0041A12C 0320F809 */  jalr        $t9
/* 01A130 0041A130 24070008 */   addiu      $a3, $zero, 0x8
/* 01A134 0041A134 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A138 0041A138 92180033 */  lbu         $t8, 0x33($s0)
/* 01A13C 0041A13C 24060000 */  addiu       $a2, $zero, 0x0
/* 01A140 0041A140 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A144 0041A144 03032821 */  addu        $a1, $t8, $v1
/* 01A148 0041A148 00A3082B */  sltu        $at, $a1, $v1
/* 01A14C 0041A14C 001847C3 */  sra         $t0, $t8, 31
/* 01A150 0041A150 00282021 */  addu        $a0, $at, $t0
/* 01A154 0041A154 00822021 */  addu        $a0, $a0, $v0
/* 01A158 0041A158 0320F809 */  jalr        $t9
/* 01A15C 0041A15C 24070008 */   addiu      $a3, $zero, 0x8
/* 01A160 0041A160 92190032 */  lbu         $t9, 0x32($s0)
/* 01A164 0041A164 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A168 0041A168 24060000 */  addiu       $a2, $zero, 0x0
/* 01A16C 0041A16C 001957C3 */  sra         $t2, $t9, 31
/* 01A170 0041A170 03232821 */  addu        $a1, $t9, $v1
/* 01A174 0041A174 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A178 0041A178 00A3082B */  sltu        $at, $a1, $v1
/* 01A17C 0041A17C 002A2021 */  addu        $a0, $at, $t2
/* 01A180 0041A180 00822021 */  addu        $a0, $a0, $v0
/* 01A184 0041A184 0320F809 */  jalr        $t9
/* 01A188 0041A188 24070008 */   addiu      $a3, $zero, 0x8
/* 01A18C 0041A18C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A190 0041A190 920C0031 */  lbu         $t4, 0x31($s0)
/* 01A194 0041A194 24060000 */  addiu       $a2, $zero, 0x0
/* 01A198 0041A198 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A19C 0041A19C 01832821 */  addu        $a1, $t4, $v1
/* 01A1A0 0041A1A0 00A3082B */  sltu        $at, $a1, $v1
/* 01A1A4 0041A1A4 000C77C3 */  sra         $t6, $t4, 31
/* 01A1A8 0041A1A8 002E2021 */  addu        $a0, $at, $t6
/* 01A1AC 0041A1AC 00822021 */  addu        $a0, $a0, $v0
/* 01A1B0 0041A1B0 0320F809 */  jalr        $t9
/* 01A1B4 0041A1B4 24070008 */   addiu      $a3, $zero, 0x8
/* 01A1B8 0041A1B8 920D0030 */  lbu         $t5, 0x30($s0)
/* 01A1BC 0041A1BC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A1C0 0041A1C0 24040000 */  addiu       $a0, $zero, 0x0
/* 01A1C4 0041A1C4 01A34821 */  addu        $t1, $t5, $v1
/* 01A1C8 0041A1C8 AE29001C */  sw          $t1, 0x1C($s1)
/* 01A1CC 0041A1CC 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A1D0 0041A1D0 9205002F */  lbu         $a1, 0x2F($s0)
/* 01A1D4 0041A1D4 24060000 */  addiu       $a2, $zero, 0x0
/* 01A1D8 0041A1D8 0320F809 */  jalr        $t9
/* 01A1DC 0041A1DC 24070008 */   addiu      $a3, $zero, 0x8
/* 01A1E0 0041A1E0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A1E4 0041A1E4 920C002E */  lbu         $t4, 0x2E($s0)
/* 01A1E8 0041A1E8 24060000 */  addiu       $a2, $zero, 0x0
/* 01A1EC 0041A1EC 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A1F0 0041A1F0 01832821 */  addu        $a1, $t4, $v1
/* 01A1F4 0041A1F4 00A3082B */  sltu        $at, $a1, $v1
/* 01A1F8 0041A1F8 000C77C3 */  sra         $t6, $t4, 31
/* 01A1FC 0041A1FC 002E2021 */  addu        $a0, $at, $t6
/* 01A200 0041A200 00822021 */  addu        $a0, $a0, $v0
/* 01A204 0041A204 0320F809 */  jalr        $t9
/* 01A208 0041A208 24070008 */   addiu      $a3, $zero, 0x8
/* 01A20C 0041A20C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A210 0041A210 920D002D */  lbu         $t5, 0x2D($s0)
/* 01A214 0041A214 24060000 */  addiu       $a2, $zero, 0x0
/* 01A218 0041A218 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A21C 0041A21C 01A32821 */  addu        $a1, $t5, $v1
/* 01A220 0041A220 00A3082B */  sltu        $at, $a1, $v1
/* 01A224 0041A224 000DC7C3 */  sra         $t8, $t5, 31
/* 01A228 0041A228 00382021 */  addu        $a0, $at, $t8
/* 01A22C 0041A22C 00822021 */  addu        $a0, $a0, $v0
/* 01A230 0041A230 0320F809 */  jalr        $t9
/* 01A234 0041A234 24070008 */   addiu      $a3, $zero, 0x8
/* 01A238 0041A238 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A23C 0041A23C 9208002C */  lbu         $t0, 0x2C($s0)
/* 01A240 0041A240 24060000 */  addiu       $a2, $zero, 0x0
/* 01A244 0041A244 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A248 0041A248 01032821 */  addu        $a1, $t0, $v1
/* 01A24C 0041A24C 00A3082B */  sltu        $at, $a1, $v1
/* 01A250 0041A250 000857C3 */  sra         $t2, $t0, 31
/* 01A254 0041A254 002A2021 */  addu        $a0, $at, $t2
/* 01A258 0041A258 00822021 */  addu        $a0, $a0, $v0
/* 01A25C 0041A25C 0320F809 */  jalr        $t9
/* 01A260 0041A260 24070008 */   addiu      $a3, $zero, 0x8
/* 01A264 0041A264 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A268 0041A268 9209002B */  lbu         $t1, 0x2B($s0)
/* 01A26C 0041A26C 24060000 */  addiu       $a2, $zero, 0x0
/* 01A270 0041A270 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A274 0041A274 01232821 */  addu        $a1, $t1, $v1
/* 01A278 0041A278 00A3082B */  sltu        $at, $a1, $v1
/* 01A27C 0041A27C 000967C3 */  sra         $t4, $t1, 31
/* 01A280 0041A280 002C2021 */  addu        $a0, $at, $t4
/* 01A284 0041A284 00822021 */  addu        $a0, $a0, $v0
/* 01A288 0041A288 0320F809 */  jalr        $t9
/* 01A28C 0041A28C 24070008 */   addiu      $a3, $zero, 0x8
/* 01A290 0041A290 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A294 0041A294 920E002A */  lbu         $t6, 0x2A($s0)
/* 01A298 0041A298 24060000 */  addiu       $a2, $zero, 0x0
/* 01A29C 0041A29C 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A2A0 0041A2A0 01C32821 */  addu        $a1, $t6, $v1
/* 01A2A4 0041A2A4 00A3082B */  sltu        $at, $a1, $v1
/* 01A2A8 0041A2A8 000EC7C3 */  sra         $t8, $t6, 31
/* 01A2AC 0041A2AC 00382021 */  addu        $a0, $at, $t8
/* 01A2B0 0041A2B0 00822021 */  addu        $a0, $a0, $v0
/* 01A2B4 0041A2B4 0320F809 */  jalr        $t9
/* 01A2B8 0041A2B8 24070008 */   addiu      $a3, $zero, 0x8
/* 01A2BC 0041A2BC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A2C0 0041A2C0 920F0029 */  lbu         $t7, 0x29($s0)
/* 01A2C4 0041A2C4 24060000 */  addiu       $a2, $zero, 0x0
/* 01A2C8 0041A2C8 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A2CC 0041A2CC 01E32821 */  addu        $a1, $t7, $v1
/* 01A2D0 0041A2D0 00A3082B */  sltu        $at, $a1, $v1
/* 01A2D4 0041A2D4 000F47C3 */  sra         $t0, $t7, 31
/* 01A2D8 0041A2D8 00282021 */  addu        $a0, $at, $t0
/* 01A2DC 0041A2DC 00822021 */  addu        $a0, $a0, $v0
/* 01A2E0 0041A2E0 0320F809 */  jalr        $t9
/* 01A2E4 0041A2E4 24070008 */   addiu      $a3, $zero, 0x8
/* 01A2E8 0041A2E8 920A0028 */  lbu         $t2, 0x28($s0)
/* 01A2EC 0041A2EC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A2F0 0041A2F0 24040000 */  addiu       $a0, $zero, 0x0
/* 01A2F4 0041A2F4 01437821 */  addu        $t7, $t2, $v1
/* 01A2F8 0041A2F8 AE2F0014 */  sw          $t7, 0x14($s1)
/* 01A2FC 0041A2FC 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A300 0041A300 92050027 */  lbu         $a1, 0x27($s0)
/* 01A304 0041A304 24060000 */  addiu       $a2, $zero, 0x0
/* 01A308 0041A308 0320F809 */  jalr        $t9
/* 01A30C 0041A30C 24070008 */   addiu      $a3, $zero, 0x8
/* 01A310 0041A310 92190026 */  lbu         $t9, 0x26($s0)
/* 01A314 0041A314 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A318 0041A318 24060000 */  addiu       $a2, $zero, 0x0
/* 01A31C 0041A31C 001947C3 */  sra         $t0, $t9, 31
/* 01A320 0041A320 03232821 */  addu        $a1, $t9, $v1
/* 01A324 0041A324 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A328 0041A328 00A3082B */  sltu        $at, $a1, $v1
/* 01A32C 0041A32C 00282021 */  addu        $a0, $at, $t0
/* 01A330 0041A330 00822021 */  addu        $a0, $a0, $v0
/* 01A334 0041A334 0320F809 */  jalr        $t9
/* 01A338 0041A338 24070008 */   addiu      $a3, $zero, 0x8
/* 01A33C 0041A33C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A340 0041A340 920A0025 */  lbu         $t2, 0x25($s0)
/* 01A344 0041A344 24060000 */  addiu       $a2, $zero, 0x0
/* 01A348 0041A348 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A34C 0041A34C 01432821 */  addu        $a1, $t2, $v1
/* 01A350 0041A350 00A3082B */  sltu        $at, $a1, $v1
/* 01A354 0041A354 000A67C3 */  sra         $t4, $t2, 31
/* 01A358 0041A358 002C2021 */  addu        $a0, $at, $t4
/* 01A35C 0041A35C 00822021 */  addu        $a0, $a0, $v0
/* 01A360 0041A360 0320F809 */  jalr        $t9
/* 01A364 0041A364 24070008 */   addiu      $a3, $zero, 0x8
/* 01A368 0041A368 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A36C 0041A36C 920E0024 */  lbu         $t6, 0x24($s0)
/* 01A370 0041A370 24060000 */  addiu       $a2, $zero, 0x0
/* 01A374 0041A374 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A378 0041A378 01C32821 */  addu        $a1, $t6, $v1
/* 01A37C 0041A37C 00A3082B */  sltu        $at, $a1, $v1
/* 01A380 0041A380 000EC7C3 */  sra         $t8, $t6, 31
/* 01A384 0041A384 00382021 */  addu        $a0, $at, $t8
/* 01A388 0041A388 00822021 */  addu        $a0, $a0, $v0
/* 01A38C 0041A38C 0320F809 */  jalr        $t9
/* 01A390 0041A390 24070008 */   addiu      $a3, $zero, 0x8
/* 01A394 0041A394 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A398 0041A398 920F0023 */  lbu         $t7, 0x23($s0)
/* 01A39C 0041A39C 24060000 */  addiu       $a2, $zero, 0x0
/* 01A3A0 0041A3A0 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A3A4 0041A3A4 01E32821 */  addu        $a1, $t7, $v1
/* 01A3A8 0041A3A8 00A3082B */  sltu        $at, $a1, $v1
/* 01A3AC 0041A3AC 000F47C3 */  sra         $t0, $t7, 31
/* 01A3B0 0041A3B0 00282021 */  addu        $a0, $at, $t0
/* 01A3B4 0041A3B4 00822021 */  addu        $a0, $a0, $v0
/* 01A3B8 0041A3B8 0320F809 */  jalr        $t9
/* 01A3BC 0041A3BC 24070008 */   addiu      $a3, $zero, 0x8
/* 01A3C0 0041A3C0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A3C4 0041A3C4 920B0022 */  lbu         $t3, 0x22($s0)
/* 01A3C8 0041A3C8 24060000 */  addiu       $a2, $zero, 0x0
/* 01A3CC 0041A3CC 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A3D0 0041A3D0 01632821 */  addu        $a1, $t3, $v1
/* 01A3D4 0041A3D4 00A3082B */  sltu        $at, $a1, $v1
/* 01A3D8 0041A3D8 000B57C3 */  sra         $t2, $t3, 31
/* 01A3DC 0041A3DC 002A2021 */  addu        $a0, $at, $t2
/* 01A3E0 0041A3E0 00822021 */  addu        $a0, $a0, $v0
/* 01A3E4 0041A3E4 0320F809 */  jalr        $t9
/* 01A3E8 0041A3E8 24070008 */   addiu      $a3, $zero, 0x8
/* 01A3EC 0041A3EC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A3F0 0041A3F0 920C0021 */  lbu         $t4, 0x21($s0)
/* 01A3F4 0041A3F4 24060000 */  addiu       $a2, $zero, 0x0
/* 01A3F8 0041A3F8 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A3FC 0041A3FC 01832821 */  addu        $a1, $t4, $v1
/* 01A400 0041A400 00A3082B */  sltu        $at, $a1, $v1
/* 01A404 0041A404 000C77C3 */  sra         $t6, $t4, 31
/* 01A408 0041A408 002E2021 */  addu        $a0, $at, $t6
/* 01A40C 0041A40C 00822021 */  addu        $a0, $a0, $v0
/* 01A410 0041A410 0320F809 */  jalr        $t9
/* 01A414 0041A414 24070008 */   addiu      $a3, $zero, 0x8
/* 01A418 0041A418 920D0020 */  lbu         $t5, 0x20($s0)
/* 01A41C 0041A41C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A420 0041A420 24040000 */  addiu       $a0, $zero, 0x0
/* 01A424 0041A424 01A34821 */  addu        $t1, $t5, $v1
/* 01A428 0041A428 AE290010 */  sw          $t1, 0x10($s1)
/* 01A42C 0041A42C 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A430 0041A430 9205001F */  lbu         $a1, 0x1F($s0)
/* 01A434 0041A434 24060000 */  addiu       $a2, $zero, 0x0
/* 01A438 0041A438 0320F809 */  jalr        $t9
/* 01A43C 0041A43C 24070008 */   addiu      $a3, $zero, 0x8
/* 01A440 0041A440 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A444 0041A444 920C001E */  lbu         $t4, 0x1E($s0)
/* 01A448 0041A448 24060000 */  addiu       $a2, $zero, 0x0
/* 01A44C 0041A44C 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A450 0041A450 01832821 */  addu        $a1, $t4, $v1
/* 01A454 0041A454 00A3082B */  sltu        $at, $a1, $v1
/* 01A458 0041A458 000C77C3 */  sra         $t6, $t4, 31
/* 01A45C 0041A45C 002E2021 */  addu        $a0, $at, $t6
/* 01A460 0041A460 00822021 */  addu        $a0, $a0, $v0
/* 01A464 0041A464 0320F809 */  jalr        $t9
/* 01A468 0041A468 24070008 */   addiu      $a3, $zero, 0x8
/* 01A46C 0041A46C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A470 0041A470 920D001D */  lbu         $t5, 0x1D($s0)
/* 01A474 0041A474 24060000 */  addiu       $a2, $zero, 0x0
/* 01A478 0041A478 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A47C 0041A47C 01A32821 */  addu        $a1, $t5, $v1
/* 01A480 0041A480 00A3082B */  sltu        $at, $a1, $v1
/* 01A484 0041A484 000DC7C3 */  sra         $t8, $t5, 31
/* 01A488 0041A488 00382021 */  addu        $a0, $at, $t8
/* 01A48C 0041A48C 00822021 */  addu        $a0, $a0, $v0
/* 01A490 0041A490 0320F809 */  jalr        $t9
/* 01A494 0041A494 24070008 */   addiu      $a3, $zero, 0x8
/* 01A498 0041A498 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A49C 0041A49C 9208001C */  lbu         $t0, 0x1C($s0)
/* 01A4A0 0041A4A0 24060000 */  addiu       $a2, $zero, 0x0
/* 01A4A4 0041A4A4 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A4A8 0041A4A8 01032821 */  addu        $a1, $t0, $v1
/* 01A4AC 0041A4AC 00A3082B */  sltu        $at, $a1, $v1
/* 01A4B0 0041A4B0 000857C3 */  sra         $t2, $t0, 31
/* 01A4B4 0041A4B4 002A2021 */  addu        $a0, $at, $t2
/* 01A4B8 0041A4B8 00822021 */  addu        $a0, $a0, $v0
/* 01A4BC 0041A4BC 0320F809 */  jalr        $t9
/* 01A4C0 0041A4C0 24070008 */   addiu      $a3, $zero, 0x8
/* 01A4C4 0041A4C4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A4C8 0041A4C8 9209001B */  lbu         $t1, 0x1B($s0)
/* 01A4CC 0041A4CC 24060000 */  addiu       $a2, $zero, 0x0
/* 01A4D0 0041A4D0 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A4D4 0041A4D4 01232821 */  addu        $a1, $t1, $v1
/* 01A4D8 0041A4D8 00A3082B */  sltu        $at, $a1, $v1
/* 01A4DC 0041A4DC 000967C3 */  sra         $t4, $t1, 31
/* 01A4E0 0041A4E0 002C2021 */  addu        $a0, $at, $t4
/* 01A4E4 0041A4E4 00822021 */  addu        $a0, $a0, $v0
/* 01A4E8 0041A4E8 0320F809 */  jalr        $t9
/* 01A4EC 0041A4EC 24070008 */   addiu      $a3, $zero, 0x8
/* 01A4F0 0041A4F0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A4F4 0041A4F4 920E001A */  lbu         $t6, 0x1A($s0)
/* 01A4F8 0041A4F8 24060000 */  addiu       $a2, $zero, 0x0
/* 01A4FC 0041A4FC 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A500 0041A500 01C32821 */  addu        $a1, $t6, $v1
/* 01A504 0041A504 00A3082B */  sltu        $at, $a1, $v1
/* 01A508 0041A508 000EC7C3 */  sra         $t8, $t6, 31
/* 01A50C 0041A50C 00382021 */  addu        $a0, $at, $t8
/* 01A510 0041A510 00822021 */  addu        $a0, $a0, $v0
/* 01A514 0041A514 0320F809 */  jalr        $t9
/* 01A518 0041A518 24070008 */   addiu      $a3, $zero, 0x8
/* 01A51C 0041A51C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A520 0041A520 920F0019 */  lbu         $t7, 0x19($s0)
/* 01A524 0041A524 24060000 */  addiu       $a2, $zero, 0x0
/* 01A528 0041A528 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A52C 0041A52C 01E32821 */  addu        $a1, $t7, $v1
/* 01A530 0041A530 00A3082B */  sltu        $at, $a1, $v1
/* 01A534 0041A534 000F47C3 */  sra         $t0, $t7, 31
/* 01A538 0041A538 00282021 */  addu        $a0, $at, $t0
/* 01A53C 0041A53C 00822021 */  addu        $a0, $a0, $v0
/* 01A540 0041A540 0320F809 */  jalr        $t9
/* 01A544 0041A544 24070008 */   addiu      $a3, $zero, 0x8
/* 01A548 0041A548 920A0018 */  lbu         $t2, 0x18($s0)
/* 01A54C 0041A54C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A550 0041A550 24040000 */  addiu       $a0, $zero, 0x0
/* 01A554 0041A554 01437821 */  addu        $t7, $t2, $v1
/* 01A558 0041A558 AE2F000C */  sw          $t7, 0xC($s1)
/* 01A55C 0041A55C 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A560 0041A560 92050017 */  lbu         $a1, 0x17($s0)
/* 01A564 0041A564 24060000 */  addiu       $a2, $zero, 0x0
/* 01A568 0041A568 0320F809 */  jalr        $t9
/* 01A56C 0041A56C 24070008 */   addiu      $a3, $zero, 0x8
/* 01A570 0041A570 92190016 */  lbu         $t9, 0x16($s0)
/* 01A574 0041A574 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A578 0041A578 24060000 */  addiu       $a2, $zero, 0x0
/* 01A57C 0041A57C 001947C3 */  sra         $t0, $t9, 31
/* 01A580 0041A580 03232821 */  addu        $a1, $t9, $v1
/* 01A584 0041A584 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A588 0041A588 00A3082B */  sltu        $at, $a1, $v1
/* 01A58C 0041A58C 00282021 */  addu        $a0, $at, $t0
/* 01A590 0041A590 00822021 */  addu        $a0, $a0, $v0
/* 01A594 0041A594 0320F809 */  jalr        $t9
/* 01A598 0041A598 24070008 */   addiu      $a3, $zero, 0x8
/* 01A59C 0041A59C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A5A0 0041A5A0 920A0015 */  lbu         $t2, 0x15($s0)
/* 01A5A4 0041A5A4 24060000 */  addiu       $a2, $zero, 0x0
/* 01A5A8 0041A5A8 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A5AC 0041A5AC 01432821 */  addu        $a1, $t2, $v1
/* 01A5B0 0041A5B0 00A3082B */  sltu        $at, $a1, $v1
/* 01A5B4 0041A5B4 000A67C3 */  sra         $t4, $t2, 31
/* 01A5B8 0041A5B8 002C2021 */  addu        $a0, $at, $t4
/* 01A5BC 0041A5BC 00822021 */  addu        $a0, $a0, $v0
/* 01A5C0 0041A5C0 0320F809 */  jalr        $t9
/* 01A5C4 0041A5C4 24070008 */   addiu      $a3, $zero, 0x8
/* 01A5C8 0041A5C8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A5CC 0041A5CC 920E0014 */  lbu         $t6, 0x14($s0)
/* 01A5D0 0041A5D0 24060000 */  addiu       $a2, $zero, 0x0
/* 01A5D4 0041A5D4 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A5D8 0041A5D8 01C32821 */  addu        $a1, $t6, $v1
/* 01A5DC 0041A5DC 00A3082B */  sltu        $at, $a1, $v1
/* 01A5E0 0041A5E0 000EC7C3 */  sra         $t8, $t6, 31
/* 01A5E4 0041A5E4 00382021 */  addu        $a0, $at, $t8
/* 01A5E8 0041A5E8 00822021 */  addu        $a0, $a0, $v0
/* 01A5EC 0041A5EC 0320F809 */  jalr        $t9
/* 01A5F0 0041A5F0 24070008 */   addiu      $a3, $zero, 0x8
/* 01A5F4 0041A5F4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A5F8 0041A5F8 920F0013 */  lbu         $t7, 0x13($s0)
/* 01A5FC 0041A5FC 24060000 */  addiu       $a2, $zero, 0x0
/* 01A600 0041A600 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A604 0041A604 01E32821 */  addu        $a1, $t7, $v1
/* 01A608 0041A608 00A3082B */  sltu        $at, $a1, $v1
/* 01A60C 0041A60C 000F47C3 */  sra         $t0, $t7, 31
/* 01A610 0041A610 00282021 */  addu        $a0, $at, $t0
/* 01A614 0041A614 00822021 */  addu        $a0, $a0, $v0
/* 01A618 0041A618 0320F809 */  jalr        $t9
/* 01A61C 0041A61C 24070008 */   addiu      $a3, $zero, 0x8
/* 01A620 0041A620 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A624 0041A624 920B0012 */  lbu         $t3, 0x12($s0)
/* 01A628 0041A628 24060000 */  addiu       $a2, $zero, 0x0
/* 01A62C 0041A62C 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A630 0041A630 01632821 */  addu        $a1, $t3, $v1
/* 01A634 0041A634 00A3082B */  sltu        $at, $a1, $v1
/* 01A638 0041A638 000B57C3 */  sra         $t2, $t3, 31
/* 01A63C 0041A63C 002A2021 */  addu        $a0, $at, $t2
/* 01A640 0041A640 00822021 */  addu        $a0, $a0, $v0
/* 01A644 0041A644 0320F809 */  jalr        $t9
/* 01A648 0041A648 24070008 */   addiu      $a3, $zero, 0x8
/* 01A64C 0041A64C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A650 0041A650 920C0011 */  lbu         $t4, 0x11($s0)
/* 01A654 0041A654 24060000 */  addiu       $a2, $zero, 0x0
/* 01A658 0041A658 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A65C 0041A65C 01832821 */  addu        $a1, $t4, $v1
/* 01A660 0041A660 00A3082B */  sltu        $at, $a1, $v1
/* 01A664 0041A664 000C77C3 */  sra         $t6, $t4, 31
/* 01A668 0041A668 002E2021 */  addu        $a0, $at, $t6
/* 01A66C 0041A66C 00822021 */  addu        $a0, $a0, $v0
/* 01A670 0041A670 0320F809 */  jalr        $t9
/* 01A674 0041A674 24070008 */   addiu      $a3, $zero, 0x8
/* 01A678 0041A678 920D0010 */  lbu         $t5, 0x10($s0)
/* 01A67C 0041A67C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A680 0041A680 24040000 */  addiu       $a0, $zero, 0x0
/* 01A684 0041A684 01A34821 */  addu        $t1, $t5, $v1
/* 01A688 0041A688 AE290008 */  sw          $t1, 0x8($s1)
/* 01A68C 0041A68C 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A690 0041A690 9205000F */  lbu         $a1, 0xF($s0)
/* 01A694 0041A694 24060000 */  addiu       $a2, $zero, 0x0
/* 01A698 0041A698 0320F809 */  jalr        $t9
/* 01A69C 0041A69C 24070008 */   addiu      $a3, $zero, 0x8
/* 01A6A0 0041A6A0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A6A4 0041A6A4 920C000E */  lbu         $t4, 0xE($s0)
/* 01A6A8 0041A6A8 24060000 */  addiu       $a2, $zero, 0x0
/* 01A6AC 0041A6AC 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A6B0 0041A6B0 01832821 */  addu        $a1, $t4, $v1
/* 01A6B4 0041A6B4 00A3082B */  sltu        $at, $a1, $v1
/* 01A6B8 0041A6B8 000C77C3 */  sra         $t6, $t4, 31
/* 01A6BC 0041A6BC 002E2021 */  addu        $a0, $at, $t6
/* 01A6C0 0041A6C0 00822021 */  addu        $a0, $a0, $v0
/* 01A6C4 0041A6C4 0320F809 */  jalr        $t9
/* 01A6C8 0041A6C8 24070008 */   addiu      $a3, $zero, 0x8
/* 01A6CC 0041A6CC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A6D0 0041A6D0 920D000D */  lbu         $t5, 0xD($s0)
/* 01A6D4 0041A6D4 24060000 */  addiu       $a2, $zero, 0x0
/* 01A6D8 0041A6D8 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A6DC 0041A6DC 01A32821 */  addu        $a1, $t5, $v1
/* 01A6E0 0041A6E0 00A3082B */  sltu        $at, $a1, $v1
/* 01A6E4 0041A6E4 000DC7C3 */  sra         $t8, $t5, 31
/* 01A6E8 0041A6E8 00382021 */  addu        $a0, $at, $t8
/* 01A6EC 0041A6EC 00822021 */  addu        $a0, $a0, $v0
/* 01A6F0 0041A6F0 0320F809 */  jalr        $t9
/* 01A6F4 0041A6F4 24070008 */   addiu      $a3, $zero, 0x8
/* 01A6F8 0041A6F8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A6FC 0041A6FC 9208000C */  lbu         $t0, 0xC($s0)
/* 01A700 0041A700 24060000 */  addiu       $a2, $zero, 0x0
/* 01A704 0041A704 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A708 0041A708 01032821 */  addu        $a1, $t0, $v1
/* 01A70C 0041A70C 00A3082B */  sltu        $at, $a1, $v1
/* 01A710 0041A710 000857C3 */  sra         $t2, $t0, 31
/* 01A714 0041A714 002A2021 */  addu        $a0, $at, $t2
/* 01A718 0041A718 00822021 */  addu        $a0, $a0, $v0
/* 01A71C 0041A71C 0320F809 */  jalr        $t9
/* 01A720 0041A720 24070008 */   addiu      $a3, $zero, 0x8
/* 01A724 0041A724 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A728 0041A728 9209000B */  lbu         $t1, 0xB($s0)
/* 01A72C 0041A72C 24060000 */  addiu       $a2, $zero, 0x0
/* 01A730 0041A730 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A734 0041A734 01232821 */  addu        $a1, $t1, $v1
/* 01A738 0041A738 00A3082B */  sltu        $at, $a1, $v1
/* 01A73C 0041A73C 000967C3 */  sra         $t4, $t1, 31
/* 01A740 0041A740 002C2021 */  addu        $a0, $at, $t4
/* 01A744 0041A744 00822021 */  addu        $a0, $a0, $v0
/* 01A748 0041A748 0320F809 */  jalr        $t9
/* 01A74C 0041A74C 24070008 */   addiu      $a3, $zero, 0x8
/* 01A750 0041A750 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A754 0041A754 920E000A */  lbu         $t6, 0xA($s0)
/* 01A758 0041A758 24060000 */  addiu       $a2, $zero, 0x0
/* 01A75C 0041A75C 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A760 0041A760 01C32821 */  addu        $a1, $t6, $v1
/* 01A764 0041A764 00A3082B */  sltu        $at, $a1, $v1
/* 01A768 0041A768 000EC7C3 */  sra         $t8, $t6, 31
/* 01A76C 0041A76C 00382021 */  addu        $a0, $at, $t8
/* 01A770 0041A770 00822021 */  addu        $a0, $a0, $v0
/* 01A774 0041A774 0320F809 */  jalr        $t9
/* 01A778 0041A778 24070008 */   addiu      $a3, $zero, 0x8
/* 01A77C 0041A77C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A780 0041A780 920F0009 */  lbu         $t7, 0x9($s0)
/* 01A784 0041A784 24060000 */  addiu       $a2, $zero, 0x0
/* 01A788 0041A788 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A78C 0041A78C 01E32821 */  addu        $a1, $t7, $v1
/* 01A790 0041A790 00A3082B */  sltu        $at, $a1, $v1
/* 01A794 0041A794 000F47C3 */  sra         $t0, $t7, 31
/* 01A798 0041A798 00282021 */  addu        $a0, $at, $t0
/* 01A79C 0041A79C 00822021 */  addu        $a0, $a0, $v0
/* 01A7A0 0041A7A0 0320F809 */  jalr        $t9
/* 01A7A4 0041A7A4 24070008 */   addiu      $a3, $zero, 0x8
/* 01A7A8 0041A7A8 920A0008 */  lbu         $t2, 0x8($s0)
/* 01A7AC 0041A7AC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A7B0 0041A7B0 0251382B */  sltu        $a3, $s2, $s1
/* 01A7B4 0041A7B4 01437821 */  addu        $t7, $t2, $v1
/* 01A7B8 0041A7B8 AE2F0004 */  sw          $t7, 0x4($s1)
/* 01A7BC 0041A7BC 92180007 */  lbu         $t8, 0x7($s0)
/* 01A7C0 0041A7C0 92080006 */  lbu         $t0, 0x6($s0)
/* 01A7C4 0041A7C4 920C0005 */  lbu         $t4, 0x5($s0)
/* 01A7C8 0041A7C8 0018CA00 */  sll         $t9, $t8, 8
/* 01A7CC 0041A7CC 03284821 */  addu        $t1, $t9, $t0
/* 01A7D0 0041A7D0 920F0004 */  lbu         $t7, 0x4($s0)
/* 01A7D4 0041A7D4 00095200 */  sll         $t2, $t1, 8
/* 01A7D8 0041A7D8 014C6821 */  addu        $t5, $t2, $t4
/* 01A7DC 0041A7DC 000D7200 */  sll         $t6, $t5, 8
/* 01A7E0 0041A7E0 01EE5821 */  addu        $t3, $t7, $t6
/* 01A7E4 0041A7E4 AE2B0018 */  sw          $t3, 0x18($s1)
/* 01A7E8 0041A7E8 92180003 */  lbu         $t8, 0x3($s0)
/* 01A7EC 0041A7EC 92080002 */  lbu         $t0, 0x2($s0)
/* 01A7F0 0041A7F0 920C0001 */  lbu         $t4, 0x1($s0)
/* 01A7F4 0041A7F4 0018CA00 */  sll         $t9, $t8, 8
/* 01A7F8 0041A7F8 03284821 */  addu        $t1, $t9, $t0
/* 01A7FC 0041A7FC 920E0000 */  lbu         $t6, 0x0($s0)
/* 01A800 0041A800 00095200 */  sll         $t2, $t1, 8
/* 01A804 0041A804 014C6821 */  addu        $t5, $t2, $t4
/* 01A808 0041A808 000D7A00 */  sll         $t7, $t5, 8
/* 01A80C 0041A80C 01CF5821 */  addu        $t3, $t6, $t7
/* 01A810 0041A810 2631FFE0 */  addiu       $s1, $s1, -0x20
/* 01A814 0041A814 14E0FE1F */  bnez        $a3, .L0041A094
/* 01A818 0041A818 AE2B0020 */   sw         $t3, 0x20($s1)
.L0041A81C:
/* 01A81C 0041A81C 8FBF0024 */  lw          $ra, 0x24($sp)
/* 01A820 0041A820 8FB00014 */  lw          $s0, 0x14($sp)
/* 01A824 0041A824 8FB10018 */  lw          $s1, 0x18($sp)
/* 01A828 0041A828 8FB2001C */  lw          $s2, 0x1C($sp)
/* 01A82C 0041A82C 03E00008 */  jr          $ra
/* 01A830 0041A830 27BD0028 */   addiu      $sp, $sp, 0x28
