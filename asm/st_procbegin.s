glabel st_procbegin # 696
# _gp_disp: 0xFBE0A74
.set noreorder; .cpload $t9; # .set reorder
/* 03D2D8 0043D2D8 8F998630 */  lw          $t9, %call16(st_pdn_idn)($gp)
/* 03D2DC 0043D2DC 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 03D2E0 0043D2E0 AFBF0024 */  sw          $ra, 0x24($sp)
/* 03D2E4 0043D2E4 AFBC0020 */  sw          $gp, 0x20($sp)
/* 03D2E8 0043D2E8 AFB0001C */  sw          $s0, 0x1C($sp)
/* 03D2EC 0043D2EC 0320F809 */  jalr        $t9
/* 03D2F0 0043D2F0 AFA40040 */   sw         $a0, 0x40($sp)
/* 03D2F4 0043D2F4 8C580000 */  lw          $t8, 0x0($v0)
/* 03D2F8 0043D2F8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03D2FC 0043D2FC 27AE0030 */  addiu       $t6, $sp, 0x30
/* 03D300 0043D300 ADD80000 */  sw          $t8, 0x0($t6)
/* 03D304 0043D304 8C4F0004 */  lw          $t7, 0x4($v0)
/* 03D308 0043D308 3C017FFF */  lui         $at, (0x7FFFFFFF >> 16)
/* 03D30C 0043D30C 3421FFFF */  ori         $at, $at, (0x7FFFFFFF & 0xFFFF)
/* 03D310 0043D310 ADCF0004 */  sw          $t7, 0x4($t6)
/* 03D314 0043D314 8FB90030 */  lw          $t9, 0x30($sp)
/* 03D318 0043D318 13210003 */  beq         $t9, $at, .L0043D328
/* 03D31C 0043D31C 00000000 */   nop
/* 03D320 0043D320 10000069 */  b           .L0043D4C8
/* 03D324 0043D324 8FA20040 */   lw         $v0, 0x40($sp)
.L0043D328:
/* 03D328 0043D328 8F998628 */  lw          $t9, %call16(st_pext_iext)($gp)
/* 03D32C 0043D32C 8FA40034 */  lw          $a0, 0x34($sp)
/* 03D330 0043D330 0320F809 */  jalr        $t9
/* 03D334 0043D334 00000000 */   nop
/* 03D338 0043D338 8C48000C */  lw          $t0, 0xC($v0)
/* 03D33C 0043D33C 24010001 */  addiu       $at, $zero, 0x1
/* 03D340 0043D340 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03D344 0043D344 00084980 */  sll         $t1, $t0, 6
/* 03D348 0043D348 000956C2 */  srl         $t2, $t1, 27
/* 03D34C 0043D34C 15410003 */  bne         $t2, $at, .L0043D35C
/* 03D350 0043D350 00408025 */   move       $s0, $v0
/* 03D354 0043D354 1000005C */  b           .L0043D4C8
/* 03D358 0043D358 8FA20040 */   lw         $v0, 0x40($sp)
.L0043D35C:
/* 03D35C 0043D35C 960B000C */  lhu         $t3, 0xC($s0)
/* 03D360 0043D360 316CFC1F */  andi        $t4, $t3, 0xFC1F
/* 03D364 0043D364 358D0020 */  ori         $t5, $t4, 0x20
/* 03D368 0043D368 A60D000C */  sh          $t5, 0xC($s0)
/* 03D36C 0043D36C 8F9985D4 */  lw          $t9, %call16(st_currentifd)($gp)
/* 03D370 0043D370 0320F809 */  jalr        $t9
/* 03D374 0043D374 00000000 */   nop
/* 03D378 0043D378 960E0002 */  lhu         $t6, 0x2($s0)
/* 03D37C 0043D37C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03D380 0043D380 104E0028 */  beq         $v0, $t6, .L0043D424
/* 03D384 0043D384 00000000 */   nop
/* 03D388 0043D388 8F9985D4 */  lw          $t9, %call16(st_currentifd)($gp)
/* 03D38C 0043D38C 0320F809 */  jalr        $t9
/* 03D390 0043D390 00000000 */   nop
/* 03D394 0043D394 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03D398 0043D398 00402025 */  move        $a0, $v0
/* 03D39C 0043D39C 8F998604 */  lw          $t9, %call16(st_pcfd_ifd)($gp)
/* 03D3A0 0043D3A0 0320F809 */  jalr        $t9
/* 03D3A4 0043D3A4 00000000 */   nop
/* 03D3A8 0043D3A8 8C4F0000 */  lw          $t7, 0x0($v0)
/* 03D3AC 0043D3AC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03D3B0 0043D3B0 8DF80030 */  lw          $t8, 0x30($t7)
/* 03D3B4 0043D3B4 1B000016 */  blez        $t8, .L0043D410
/* 03D3B8 0043D3B8 00000000 */   nop
/* 03D3BC 0043D3BC 8E19000C */  lw          $t9, 0xC($s0)
/* 03D3C0 0043D3C0 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03D3C4 0043D3C4 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03D3C8 0043D3C8 03214024 */  and         $t0, $t9, $at
/* 03D3CC 0043D3CC 11010010 */  beq         $t0, $at, .L0043D410
/* 03D3D0 0043D3D0 00000000 */   nop
/* 03D3D4 0043D3D4 8F998640 */  lw          $t9, %call16(st_iaux_copyty)($gp)
/* 03D3D8 0043D3D8 96040002 */  lhu         $a0, 0x2($s0)
/* 03D3DC 0043D3DC 26050004 */  addiu       $a1, $s0, 0x4
/* 03D3E0 0043D3E0 0320F809 */  jalr        $t9
/* 03D3E4 0043D3E4 00000000 */   nop
/* 03D3E8 0043D3E8 8E03000C */  lw          $v1, 0xC($s0)
/* 03D3EC 0043D3EC 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03D3F0 0043D3F0 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03D3F4 0043D3F4 00414824 */  and         $t1, $v0, $at
/* 03D3F8 0043D3F8 01235026 */  xor         $t2, $t1, $v1
/* 03D3FC 0043D3FC 000A5B00 */  sll         $t3, $t2, 12
/* 03D400 0043D400 000B6302 */  srl         $t4, $t3, 12
/* 03D404 0043D404 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03D408 0043D408 01836826 */  xor         $t5, $t4, $v1
/* 03D40C 0043D40C AE0D000C */  sw          $t5, 0xC($s0)
.L0043D410:
/* 03D410 0043D410 8F9985D4 */  lw          $t9, %call16(st_currentifd)($gp)
/* 03D414 0043D414 0320F809 */  jalr        $t9
/* 03D418 0043D418 00000000 */   nop
/* 03D41C 0043D41C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03D420 0043D420 A6020002 */  sh          $v0, 0x2($s0)
.L0043D424:
/* 03D424 0043D424 8F9985C8 */  lw          $t9, %call16(st_str_extiss)($gp)
/* 03D428 0043D428 8E040004 */  lw          $a0, 0x4($s0)
/* 03D42C 0043D42C 0320F809 */  jalr        $t9
/* 03D430 0043D430 00000000 */   nop
/* 03D434 0043D434 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03D438 0043D438 00402025 */  move        $a0, $v0
/* 03D43C 0043D43C 8F9985EC */  lw          $t9, %call16(st_stradd)($gp)
/* 03D440 0043D440 0320F809 */  jalr        $t9
/* 03D444 0043D444 00000000 */   nop
/* 03D448 0043D448 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03D44C 0043D44C 8E03000C */  lw          $v1, 0xC($s0)
/* 03D450 0043D450 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03D454 0043D454 8F9985FC */  lw          $t9, %call16(st_symadd)($gp)
/* 03D458 0043D458 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03D45C 0043D45C 00617024 */  and         $t6, $v1, $at
/* 03D460 0043D460 AFAE0010 */  sw          $t6, 0x10($sp)
/* 03D464 0043D464 00402025 */  move        $a0, $v0
/* 03D468 0043D468 00002825 */  move        $a1, $zero
/* 03D46C 0043D46C 24070001 */  addiu       $a3, $zero, 0x1
/* 03D470 0043D470 0320F809 */  jalr        $t9
/* 03D474 0043D474 00033682 */   srl        $a2, $v1, 26
/* 03D478 0043D478 8E03000C */  lw          $v1, 0xC($s0)
/* 03D47C 0043D47C 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03D480 0043D480 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03D484 0043D484 00417824 */  and         $t7, $v0, $at
/* 03D488 0043D488 01E3C026 */  xor         $t8, $t7, $v1
/* 03D48C 0043D48C 0018CB00 */  sll         $t9, $t8, 12
/* 03D490 0043D490 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03D494 0043D494 00194302 */  srl         $t0, $t9, 12
/* 03D498 0043D498 01034826 */  xor         $t1, $t0, $v1
/* 03D49C 0043D49C AE09000C */  sw          $t1, 0xC($s0)
/* 03D4A0 0043D4A0 8F998604 */  lw          $t9, %call16(st_pcfd_ifd)($gp)
/* 03D4A4 0043D4A4 96040002 */  lhu         $a0, 0x2($s0)
/* 03D4A8 0043D4A8 0320F809 */  jalr        $t9
/* 03D4AC 0043D4AC 00000000 */   nop
/* 03D4B0 0043D4B0 8C430000 */  lw          $v1, 0x0($v0)
/* 03D4B4 0043D4B4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03D4B8 0043D4B8 906A003C */  lbu         $t2, 0x3C($v1)
/* 03D4BC 0043D4BC 314BFFFB */  andi        $t3, $t2, 0xFFFB
/* 03D4C0 0043D4C0 A06B003C */  sb          $t3, 0x3C($v1)
/* 03D4C4 0043D4C4 8FA20040 */  lw          $v0, 0x40($sp)
.L0043D4C8:
/* 03D4C8 0043D4C8 8FBF0024 */  lw          $ra, 0x24($sp)
/* 03D4CC 0043D4CC 8FB0001C */  lw          $s0, 0x1C($sp)
/* 03D4D0 0043D4D0 27BD0040 */  addiu       $sp, $sp, 0x40
/* 03D4D4 0043D4D4 03E00008 */  jr          $ra
/* 03D4D8 0043D4D8 00000000 */   nop
