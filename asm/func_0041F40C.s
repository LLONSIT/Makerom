glabel func_0041F40C # 131
# _gp_disp: 0xFBFE934
.set noreorder; .cpload $t9; # .set reorder
/* 01F418 0041F418 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 01F41C 0041F41C 00067080 */  sll         $t6, $a2, 2
/* 01F420 0041F420 01C67023 */  subu        $t6, $t6, $a2
/* 01F424 0041F424 000E7080 */  sll         $t6, $t6, 2
/* 01F428 0041F428 01C67021 */  addu        $t6, $t6, $a2
/* 01F42C 0041F42C AFB2001C */  sw          $s2, 0x1C($sp)
/* 01F430 0041F430 AFB10018 */  sw          $s1, 0x18($sp)
/* 01F434 0041F434 AFB00014 */  sw          $s0, 0x14($sp)
/* 01F438 0041F438 000E7080 */  sll         $t6, $t6, 2
/* 01F43C 0041F43C 00808025 */  move        $s0, $a0
/* 01F440 0041F440 00A08825 */  move        $s1, $a1
/* 01F444 0041F444 AFBF0024 */  sw          $ra, 0x24($sp)
/* 01F448 0041F448 AFBC0020 */  sw          $gp, 0x20($sp)
/* 01F44C 0041F44C 01C59021 */  addu        $s2, $t6, $a1
.L0041F450:
/* 01F450 0041F450 52110008 */  beql        $s0, $s1, .L0041F474
/* 01F454 0041F454 96230010 */   lhu        $v1, 0x10($s1)
/* 01F458 0041F458 8F998108 */  lw          $t9, %call16(memcpy)($gp)
/* 01F45C 0041F45C 02002025 */  move        $a0, $s0
/* 01F460 0041F460 02202825 */  move        $a1, $s1
/* 01F464 0041F464 0320F809 */  jalr        $t9
/* 01F468 0041F468 24060010 */   addiu      $a2, $zero, 0x10
/* 01F46C 0041F46C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01F470 0041F470 96230010 */  lhu         $v1, 0x10($s1)
.L0041F474:
/* 01F474 0041F474 26310034 */  addiu       $s1, $s1, 0x34
/* 01F478 0041F478 0232082B */  sltu        $at, $s1, $s2
/* 01F47C 0041F47C 00037A03 */  sra         $t7, $v1, 8
/* 01F480 0041F480 A20F0011 */  sb          $t7, 0x11($s0)
/* 01F484 0041F484 A2030010 */  sb          $v1, 0x10($s0)
/* 01F488 0041F488 9624FFDE */  lhu         $a0, -0x22($s1)
/* 01F48C 0041F48C 26100034 */  addiu       $s0, $s0, 0x34
/* 01F490 0041F490 0004C203 */  sra         $t8, $a0, 8
/* 01F494 0041F494 A218FFDF */  sb          $t8, -0x21($s0)
/* 01F498 0041F498 A204FFDE */  sb          $a0, -0x22($s0)
/* 01F49C 0041F49C 8E22FFE0 */  lw          $v0, -0x20($s1)
/* 01F4A0 0041F4A0 0002CA02 */  srl         $t9, $v0, 8
/* 01F4A4 0041F4A4 00024402 */  srl         $t0, $v0, 16
/* 01F4A8 0041F4A8 00024E02 */  srl         $t1, $v0, 24
/* 01F4AC 0041F4AC A209FFE3 */  sb          $t1, -0x1D($s0)
/* 01F4B0 0041F4B0 A208FFE2 */  sb          $t0, -0x1E($s0)
/* 01F4B4 0041F4B4 A219FFE1 */  sb          $t9, -0x1F($s0)
/* 01F4B8 0041F4B8 A202FFE0 */  sb          $v0, -0x20($s0)
/* 01F4BC 0041F4BC 8E25FFE4 */  lw          $a1, -0x1C($s1)
/* 01F4C0 0041F4C0 00055202 */  srl         $t2, $a1, 8
/* 01F4C4 0041F4C4 00055C02 */  srl         $t3, $a1, 16
/* 01F4C8 0041F4C8 00056602 */  srl         $t4, $a1, 24
/* 01F4CC 0041F4CC A20CFFE7 */  sb          $t4, -0x19($s0)
/* 01F4D0 0041F4D0 A20BFFE6 */  sb          $t3, -0x1A($s0)
/* 01F4D4 0041F4D4 A20AFFE5 */  sb          $t2, -0x1B($s0)
/* 01F4D8 0041F4D8 A205FFE4 */  sb          $a1, -0x1C($s0)
/* 01F4DC 0041F4DC 8E22FFE8 */  lw          $v0, -0x18($s1)
/* 01F4E0 0041F4E0 00026A02 */  srl         $t5, $v0, 8
/* 01F4E4 0041F4E4 00027402 */  srl         $t6, $v0, 16
/* 01F4E8 0041F4E8 00027E02 */  srl         $t7, $v0, 24
/* 01F4EC 0041F4EC A20FFFEB */  sb          $t7, -0x15($s0)
/* 01F4F0 0041F4F0 A20EFFEA */  sb          $t6, -0x16($s0)
/* 01F4F4 0041F4F4 A20DFFE9 */  sb          $t5, -0x17($s0)
/* 01F4F8 0041F4F8 A202FFE8 */  sb          $v0, -0x18($s0)
/* 01F4FC 0041F4FC 8E24FFEC */  lw          $a0, -0x14($s1)
/* 01F500 0041F500 0004C202 */  srl         $t8, $a0, 8
/* 01F504 0041F504 0004CC02 */  srl         $t9, $a0, 16
/* 01F508 0041F508 00044602 */  srl         $t0, $a0, 24
/* 01F50C 0041F50C A208FFEF */  sb          $t0, -0x11($s0)
/* 01F510 0041F510 A219FFEE */  sb          $t9, -0x12($s0)
/* 01F514 0041F514 A218FFED */  sb          $t8, -0x13($s0)
/* 01F518 0041F518 A204FFEC */  sb          $a0, -0x14($s0)
/* 01F51C 0041F51C 8E22FFF0 */  lw          $v0, -0x10($s1)
/* 01F520 0041F520 00024A02 */  srl         $t1, $v0, 8
/* 01F524 0041F524 00025402 */  srl         $t2, $v0, 16
/* 01F528 0041F528 00025E02 */  srl         $t3, $v0, 24
/* 01F52C 0041F52C A20BFFF3 */  sb          $t3, -0xD($s0)
/* 01F530 0041F530 A20AFFF2 */  sb          $t2, -0xE($s0)
/* 01F534 0041F534 A209FFF1 */  sb          $t1, -0xF($s0)
/* 01F538 0041F538 A202FFF0 */  sb          $v0, -0x10($s0)
/* 01F53C 0041F53C 9623FFF4 */  lhu         $v1, -0xC($s1)
/* 01F540 0041F540 00036203 */  sra         $t4, $v1, 8
/* 01F544 0041F544 A20CFFF5 */  sb          $t4, -0xB($s0)
/* 01F548 0041F548 A203FFF4 */  sb          $v1, -0xC($s0)
/* 01F54C 0041F54C 9622FFF6 */  lhu         $v0, -0xA($s1)
/* 01F550 0041F550 00026A03 */  sra         $t5, $v0, 8
/* 01F554 0041F554 A20DFFF7 */  sb          $t5, -0x9($s0)
/* 01F558 0041F558 A202FFF6 */  sb          $v0, -0xA($s0)
/* 01F55C 0041F55C 9623FFF8 */  lhu         $v1, -0x8($s1)
/* 01F560 0041F560 00037203 */  sra         $t6, $v1, 8
/* 01F564 0041F564 A20EFFF9 */  sb          $t6, -0x7($s0)
/* 01F568 0041F568 A203FFF8 */  sb          $v1, -0x8($s0)
/* 01F56C 0041F56C 9624FFFA */  lhu         $a0, -0x6($s1)
/* 01F570 0041F570 00047A03 */  sra         $t7, $a0, 8
/* 01F574 0041F574 A20FFFFB */  sb          $t7, -0x5($s0)
/* 01F578 0041F578 A204FFFA */  sb          $a0, -0x6($s0)
/* 01F57C 0041F57C 9625FFFC */  lhu         $a1, -0x4($s1)
/* 01F580 0041F580 0005C203 */  sra         $t8, $a1, 8
/* 01F584 0041F584 A218FFFD */  sb          $t8, -0x3($s0)
/* 01F588 0041F588 A205FFFC */  sb          $a1, -0x4($s0)
/* 01F58C 0041F58C 9622FFFE */  lhu         $v0, -0x2($s1)
/* 01F590 0041F590 0002CA03 */  sra         $t9, $v0, 8
/* 01F594 0041F594 A219FFFF */  sb          $t9, -0x1($s0)
/* 01F598 0041F598 1420FFAD */  bnez        $at, .L0041F450
/* 01F59C 0041F59C A202FFFE */   sb         $v0, -0x2($s0)
/* 01F5A0 0041F5A0 8FBF0024 */  lw          $ra, 0x24($sp)
/* 01F5A4 0041F5A4 8FB00014 */  lw          $s0, 0x14($sp)
/* 01F5A8 0041F5A8 8FB10018 */  lw          $s1, 0x18($sp)
/* 01F5AC 0041F5AC 8FB2001C */  lw          $s2, 0x1C($sp)
/* 01F5B0 0041F5B0 03E00008 */  jr          $ra
/* 01F5B4 0041F5B4 27BD0028 */   addiu      $sp, $sp, 0x28