glabel foreach_rfd # 545
# _gp_disp: 0xFBEE9D0
.set noreorder; .cpload $t9; # .set reorder
/* 02F37C 0042F37C 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 02F380 0042F380 AFBF0044 */  sw          $ra, 0x44($sp)
/* 02F384 0042F384 AFBE0040 */  sw          $fp, 0x40($sp)
/* 02F388 0042F388 AFBC003C */  sw          $gp, 0x3C($sp)
/* 02F38C 0042F38C AFB70038 */  sw          $s7, 0x38($sp)
/* 02F390 0042F390 AFB60034 */  sw          $s6, 0x34($sp)
/* 02F394 0042F394 AFB50030 */  sw          $s5, 0x30($sp)
/* 02F398 0042F398 AFB4002C */  sw          $s4, 0x2C($sp)
/* 02F39C 0042F39C AFB30028 */  sw          $s3, 0x28($sp)
/* 02F3A0 0042F3A0 AFB20024 */  sw          $s2, 0x24($sp)
/* 02F3A4 0042F3A4 AFB10020 */  sw          $s1, 0x20($sp)
/* 02F3A8 0042F3A8 AFB0001C */  sw          $s0, 0x1C($sp)
/* 02F3AC 0042F3AC AFA5004C */  sw          $a1, 0x4C($sp)
/* 02F3B0 0042F3B0 8C8300D0 */  lw          $v1, 0xD0($a0)
/* 02F3B4 0042F3B4 8C8E00A0 */  lw          $t6, 0xA0($a0)
/* 02F3B8 0042F3B8 0005C0C0 */  sll         $t8, $a1, 3
/* 02F3BC 0042F3BC 000350C0 */  sll         $t2, $v1, 3
/* 02F3C0 0042F3C0 0305C021 */  addu        $t8, $t8, $a1
/* 02F3C4 0042F3C4 01435021 */  addu        $t2, $t2, $v1
/* 02F3C8 0042F3C8 000A50C0 */  sll         $t2, $t2, 3
/* 02F3CC 0042F3CC 0018C0C0 */  sll         $t8, $t8, 3
/* 02F3D0 0042F3D0 000A5823 */  negu        $t3, $t2
/* 02F3D4 0042F3D4 01D8C821 */  addu        $t9, $t6, $t8
/* 02F3D8 0042F3D8 032B1021 */  addu        $v0, $t9, $t3
/* 02F3DC 0042F3DC 8C4C0034 */  lw          $t4, 0x34($v0)
/* 02F3E0 0042F3E0 8C490038 */  lw          $t1, 0x38($v0)
/* 02F3E4 0042F3E4 8C8F00BC */  lw          $t7, 0xBC($a0)
/* 02F3E8 0042F3E8 000C6880 */  sll         $t5, $t4, 2
/* 02F3EC 0042F3EC 00809025 */  move        $s2, $a0
/* 02F3F0 0042F3F0 00E0B025 */  move        $s6, $a3
/* 02F3F4 0042F3F4 00C0B825 */  move        $s7, $a2
/* 02F3F8 0042F3F8 1520001F */  bnez        $t1, .L0042F478
/* 02F3FC 0042F3FC 01AF4021 */   addu       $t0, $t5, $t7
/* 02F400 0042F400 8C8E009C */  lw          $t6, 0x9C($a0)
/* 02F404 0042F404 00608025 */  move        $s0, $v1
/* 02F408 0042F408 2415FFFF */  addiu       $s5, $zero, -0x1
/* 02F40C 0042F40C 8DD80048 */  lw          $t8, 0x48($t6)
/* 02F410 0042F410 8FB4005C */  lw          $s4, 0x5C($sp)
/* 02F414 0042F414 8FB30058 */  lw          $s3, 0x58($sp)
/* 02F418 0042F418 00785021 */  addu        $t2, $v1, $t8
/* 02F41C 0042F41C 006A082B */  sltu        $at, $v1, $t2
/* 02F420 0042F420 10200031 */  beqz        $at, .L0042F4E8
/* 02F424 0042F424 02402025 */   move       $a0, $s2
.L0042F428:
/* 02F428 0042F428 02002825 */  move        $a1, $s0
/* 02F42C 0042F42C 02C03025 */  move        $a2, $s6
/* 02F430 0042F430 02603825 */  move        $a3, $s3
/* 02F434 0042F434 AFB40010 */  sw          $s4, 0x10($sp)
/* 02F438 0042F438 02E0F809 */  jalr        $s7
/* 02F43C 0042F43C 02E0C825 */   move       $t9, $s7
/* 02F440 0042F440 10550003 */  beq         $v0, $s5, .L0042F450
/* 02F444 0042F444 8FBC003C */   lw         $gp, 0x3C($sp)
/* 02F448 0042F448 10000029 */  b           .L0042F4F0
/* 02F44C 0042F44C 8FBF0044 */   lw         $ra, 0x44($sp)
.L0042F450:
/* 02F450 0042F450 8E4B009C */  lw          $t3, 0x9C($s2)
/* 02F454 0042F454 8E5900D0 */  lw          $t9, 0xD0($s2)
/* 02F458 0042F458 26100001 */  addiu       $s0, $s0, 0x1
/* 02F45C 0042F45C 8D6C0048 */  lw          $t4, 0x48($t3)
/* 02F460 0042F460 032C6821 */  addu        $t5, $t9, $t4
/* 02F464 0042F464 020D082B */  sltu        $at, $s0, $t5
/* 02F468 0042F468 5420FFEF */  bnel        $at, $zero, .L0042F428
/* 02F46C 0042F46C 02402025 */   move       $a0, $s2
/* 02F470 0042F470 1000001E */  b           .L0042F4EC
/* 02F474 0042F474 2402FFFF */   addiu      $v0, $zero, -0x1
.L0042F478:
/* 02F478 0042F478 00097880 */  sll         $t7, $t1, 2
/* 02F47C 0042F47C 01E8F021 */  addu        $fp, $t7, $t0
/* 02F480 0042F480 011E082B */  sltu        $at, $t0, $fp
/* 02F484 0042F484 10200018 */  beqz        $at, .L0042F4E8
/* 02F488 0042F488 01008825 */   move       $s1, $t0
/* 02F48C 0042F48C 2415FFFF */  addiu       $s5, $zero, -0x1
/* 02F490 0042F490 8FB4005C */  lw          $s4, 0x5C($sp)
/* 02F494 0042F494 8FB30058 */  lw          $s3, 0x58($sp)
/* 02F498 0042F498 8E2E0000 */  lw          $t6, 0x0($s1)
.L0042F49C:
/* 02F49C 0042F49C 8E5800D0 */  lw          $t8, 0xD0($s2)
/* 02F4A0 0042F4A0 8FAA004C */  lw          $t2, 0x4C($sp)
/* 02F4A4 0042F4A4 02402025 */  move        $a0, $s2
/* 02F4A8 0042F4A8 01D88021 */  addu        $s0, $t6, $t8
/* 02F4AC 0042F4AC 120A000A */  beq         $s0, $t2, .L0042F4D8
/* 02F4B0 0042F4B0 02002825 */   move       $a1, $s0
/* 02F4B4 0042F4B4 02C03025 */  move        $a2, $s6
/* 02F4B8 0042F4B8 02603825 */  move        $a3, $s3
/* 02F4BC 0042F4BC AFB40010 */  sw          $s4, 0x10($sp)
/* 02F4C0 0042F4C0 02E0F809 */  jalr        $s7
/* 02F4C4 0042F4C4 02E0C825 */   move       $t9, $s7
/* 02F4C8 0042F4C8 10550003 */  beq         $v0, $s5, .L0042F4D8
/* 02F4CC 0042F4CC 8FBC003C */   lw         $gp, 0x3C($sp)
/* 02F4D0 0042F4D0 10000007 */  b           .L0042F4F0
/* 02F4D4 0042F4D4 8FBF0044 */   lw         $ra, 0x44($sp)
.L0042F4D8:
/* 02F4D8 0042F4D8 26310004 */  addiu       $s1, $s1, 0x4
/* 02F4DC 0042F4DC 023E082B */  sltu        $at, $s1, $fp
/* 02F4E0 0042F4E0 5420FFEE */  bnel        $at, $zero, .L0042F49C
/* 02F4E4 0042F4E4 8E2E0000 */   lw         $t6, 0x0($s1)
.L0042F4E8:
/* 02F4E8 0042F4E8 2402FFFF */  addiu       $v0, $zero, -0x1
.L0042F4EC:
/* 02F4EC 0042F4EC 8FBF0044 */  lw          $ra, 0x44($sp)
.L0042F4F0:
/* 02F4F0 0042F4F0 8FB0001C */  lw          $s0, 0x1C($sp)
/* 02F4F4 0042F4F4 8FB10020 */  lw          $s1, 0x20($sp)
/* 02F4F8 0042F4F8 8FB20024 */  lw          $s2, 0x24($sp)
/* 02F4FC 0042F4FC 8FB30028 */  lw          $s3, 0x28($sp)
/* 02F500 0042F500 8FB4002C */  lw          $s4, 0x2C($sp)
/* 02F504 0042F504 8FB50030 */  lw          $s5, 0x30($sp)
/* 02F508 0042F508 8FB60034 */  lw          $s6, 0x34($sp)
/* 02F50C 0042F50C 8FB70038 */  lw          $s7, 0x38($sp)
/* 02F510 0042F510 8FBE0040 */  lw          $fp, 0x40($sp)
/* 02F514 0042F514 03E00008 */  jr          $ra
/* 02F518 0042F518 27BD0048 */   addiu      $sp, $sp, 0x48
