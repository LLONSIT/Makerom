glabel st_symadd # 663
# _gp_disp: 0xFBE2AA0
.set noreorder; .cpload $t9; # .set reorder
/* 03B2AC 0043B2AC 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03B2B0 0043B2B0 8F8E87C4 */  lw          $t6, %got(st_pchdr)($gp)
/* 03B2B4 0043B2B4 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03B2B8 0043B2B8 AFBC0018 */  sw          $gp, 0x18($sp)
/* 03B2BC 0043B2BC 8DCE0000 */  lw          $t6, 0x0($t6)
/* 03B2C0 0043B2C0 AFA40028 */  sw          $a0, 0x28($sp)
/* 03B2C4 0043B2C4 AFA5002C */  sw          $a1, 0x2C($sp)
/* 03B2C8 0043B2C8 AFA60030 */  sw          $a2, 0x30($sp)
/* 03B2CC 0043B2CC AFA70034 */  sw          $a3, 0x34($sp)
/* 03B2D0 0043B2D0 8DCF0004 */  lw          $t7, 0x4($t6)
/* 03B2D4 0043B2D4 15E00006 */  bnez        $t7, .L0043B2F0
/* 03B2D8 0043B2D8 00000000 */   nop
/* 03B2DC 0043B2DC 8F998614 */  lw          $t9, %call16(_md_st_internal)($gp)
/* 03B2E0 0043B2E0 8F84802C */  lw          $a0, %got(D_10015C20)($gp)
/* 03B2E4 0043B2E4 0320F809 */  jalr        $t9
/* 03B2E8 0043B2E8 24845C20 */   addiu      $a0, $a0, %lo(D_10015C20)
/* 03B2EC 0043B2EC 8FBC0018 */  lw          $gp, 0x18($sp)
.L0043B2F0:
/* 03B2F0 0043B2F0 8F8887C8 */  lw          $t0, %got(pcfdcur)($gp)
/* 03B2F4 0043B2F4 8D030000 */  lw          $v1, 0x0($t0)
/* 03B2F8 0043B2F8 54600009 */  bnel        $v1, $zero, .L0043B320
/* 03B2FC 0043B2FC 8C78003C */   lw         $t8, 0x3C($v1)
/* 03B300 0043B300 8F998614 */  lw          $t9, %call16(_md_st_internal)($gp)
/* 03B304 0043B304 8F84802C */  lw          $a0, %got(D_10015C5C)($gp)
/* 03B308 0043B308 0320F809 */  jalr        $t9
/* 03B30C 0043B30C 24845C5C */   addiu      $a0, $a0, %lo(D_10015C5C)
/* 03B310 0043B310 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03B314 0043B314 8F8887C8 */  lw          $t0, %got(pcfdcur)($gp)
/* 03B318 0043B318 8D030000 */  lw          $v1, 0x0($t0)
/* 03B31C 0043B31C 8C78003C */  lw          $t8, 0x3C($v1)
.L0043B320:
/* 03B320 0043B320 33190002 */  andi        $t9, $t8, 0x2
/* 03B324 0043B324 53200009 */  beql        $t9, $zero, .L0043B34C
/* 03B328 0043B328 8C690000 */   lw         $t1, 0x0($v1)
/* 03B32C 0043B32C 8F998614 */  lw          $t9, %call16(_md_st_internal)($gp)
/* 03B330 0043B330 8F84802C */  lw          $a0, %got(D_10015C90)($gp)
/* 03B334 0043B334 0320F809 */  jalr        $t9
/* 03B338 0043B338 24845C90 */   addiu      $a0, $a0, %lo(D_10015C90)
/* 03B33C 0043B33C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03B340 0043B340 8F8887C8 */  lw          $t0, %got(pcfdcur)($gp)
/* 03B344 0043B344 8D030000 */  lw          $v1, 0x0($t0)
/* 03B348 0043B348 8C690000 */  lw          $t1, 0x0($v1)
.L0043B34C:
/* 03B34C 0043B34C 8C6A0008 */  lw          $t2, 0x8($v1)
/* 03B350 0043B350 2406000C */  addiu       $a2, $zero, 0xC
/* 03B354 0043B354 8D250014 */  lw          $a1, 0x14($t1)
/* 03B358 0043B358 00AA082A */  slt         $at, $a1, $t2
/* 03B35C 0043B35C 5420000E */  bnel        $at, $zero, .L0043B398
/* 03B360 0043B360 8C6D0004 */   lw         $t5, 0x4($v1)
/* 03B364 0043B364 8F998624 */  lw          $t9, %call16(_md_st_malloc)($gp)
/* 03B368 0043B368 8C640004 */  lw          $a0, 0x4($v1)
/* 03B36C 0043B36C 24650008 */  addiu       $a1, $v1, 0x8
/* 03B370 0043B370 0320F809 */  jalr        $t9
/* 03B374 0043B374 24070040 */   addiu      $a3, $zero, 0x40
/* 03B378 0043B378 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03B37C 0043B37C 8F8887C8 */  lw          $t0, %got(pcfdcur)($gp)
/* 03B380 0043B380 8D0B0000 */  lw          $t3, 0x0($t0)
/* 03B384 0043B384 AD620004 */  sw          $v0, 0x4($t3)
/* 03B388 0043B388 8D030000 */  lw          $v1, 0x0($t0)
/* 03B38C 0043B38C 8C6C0000 */  lw          $t4, 0x0($v1)
/* 03B390 0043B390 8D850014 */  lw          $a1, 0x14($t4)
/* 03B394 0043B394 8C6D0004 */  lw          $t5, 0x4($v1)
.L0043B398:
/* 03B398 0043B398 00057080 */  sll         $t6, $a1, 2
/* 03B39C 0043B39C 8FAF0028 */  lw          $t7, 0x28($sp)
/* 03B3A0 0043B3A0 01C57023 */  subu        $t6, $t6, $a1
/* 03B3A4 0043B3A4 000E7080 */  sll         $t6, $t6, 2
/* 03B3A8 0043B3A8 01AE1021 */  addu        $v0, $t5, $t6
/* 03B3AC 0043B3AC AC4F0000 */  sw          $t7, 0x0($v0)
/* 03B3B0 0043B3B0 8FB8002C */  lw          $t8, 0x2C($sp)
/* 03B3B4 0043B3B4 904C0008 */  lbu         $t4, 0x8($v0)
/* 03B3B8 0043B3B8 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03B3BC 0043B3BC AC580004 */  sw          $t8, 0x4($v0)
/* 03B3C0 0043B3C0 8FA90030 */  lw          $t1, 0x30($sp)
/* 03B3C4 0043B3C4 318DFF03 */  andi        $t5, $t4, 0xFF03
/* 03B3C8 0043B3C8 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03B3CC 0043B3CC 00095880 */  sll         $t3, $t1, 2
/* 03B3D0 0043B3D0 016D7025 */  or          $t6, $t3, $t5
/* 03B3D4 0043B3D4 A04E0008 */  sb          $t6, 0x8($v0)
/* 03B3D8 0043B3D8 8FB80034 */  lw          $t8, 0x34($sp)
/* 03B3DC 0043B3DC 944A0008 */  lhu         $t2, 0x8($v0)
/* 03B3E0 0043B3E0 0018C940 */  sll         $t9, $t8, 5
/* 03B3E4 0043B3E4 332903E0 */  andi        $t1, $t9, 0x3E0
/* 03B3E8 0043B3E8 314CFC1F */  andi        $t4, $t2, 0xFC1F
/* 03B3EC 0043B3EC 012C5825 */  or          $t3, $t1, $t4
/* 03B3F0 0043B3F0 A44B0008 */  sh          $t3, 0x8($v0)
/* 03B3F4 0043B3F4 904D0009 */  lbu         $t5, 0x9($v0)
/* 03B3F8 0043B3F8 31AEFFEF */  andi        $t6, $t5, 0xFFEF
/* 03B3FC 0043B3FC A04E0009 */  sb          $t6, 0x9($v0)
/* 03B400 0043B400 8FAF0038 */  lw          $t7, 0x38($sp)
/* 03B404 0043B404 8C460008 */  lw          $a2, 0x8($v0)
/* 03B408 0043B408 01E1C024 */  and         $t8, $t7, $at
/* 03B40C 0043B40C 0306C826 */  xor         $t9, $t8, $a2
/* 03B410 0043B410 00195300 */  sll         $t2, $t9, 12
/* 03B414 0043B414 000A4B02 */  srl         $t1, $t2, 12
/* 03B418 0043B418 01266026 */  xor         $t4, $t1, $a2
/* 03B41C 0043B41C AC4C0008 */  sw          $t4, 0x8($v0)
/* 03B420 0043B420 8F9985F4 */  lw          $t9, %call16(st_str_iss)($gp)
/* 03B424 0043B424 8FA40028 */  lw          $a0, 0x28($sp)
/* 03B428 0043B428 0320F809 */  jalr        $t9
/* 03B42C 0043B42C 00000000 */   nop
/* 03B430 0043B430 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03B434 0043B434 AFA20020 */  sw          $v0, 0x20($sp)
/* 03B438 0043B438 00402025 */  move        $a0, $v0
/* 03B43C 0043B43C 8F99806C */  lw          $t9, %call16(strlen)($gp)
/* 03B440 0043B440 0320F809 */  jalr        $t9
/* 03B444 0043B444 00000000 */   nop
/* 03B448 0043B448 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03B44C 0043B44C 8FAD0030 */  lw          $t5, 0x30($sp)
/* 03B450 0043B450 8FAE0034 */  lw          $t6, 0x34($sp)
/* 03B454 0043B454 8F8887C8 */  lw          $t0, %got(pcfdcur)($gp)
/* 03B458 0043B458 00403025 */  move        $a2, $v0
/* 03B45C 0043B45C 01AE7821 */  addu        $t7, $t5, $t6
/* 03B460 0043B460 8D0B0000 */  lw          $t3, 0x0($t0)
/* 03B464 0043B464 00002025 */  move        $a0, $zero
/* 03B468 0043B468 8D630000 */  lw          $v1, 0x0($t3)
/* 03B46C 0043B46C 8C78003C */  lw          $t8, 0x3C($v1)
/* 03B470 0043B470 946C003E */  lhu         $t4, 0x3E($v1)
/* 03B474 0043B474 33191FFF */  andi        $t9, $t8, 0x1FFF
/* 03B478 0043B478 032F5021 */  addu        $t2, $t9, $t7
/* 03B47C 0043B47C 31491FFF */  andi        $t1, $t2, 0x1FFF
/* 03B480 0043B480 318BE000 */  andi        $t3, $t4, 0xE000
/* 03B484 0043B484 012B6825 */  or          $t5, $t1, $t3
/* 03B488 0043B488 18400013 */  blez        $v0, .L0043B4D8
/* 03B48C 0043B48C A46D003E */   sh         $t5, 0x3E($v1)
/* 03B490 0043B490 8FA50020 */  lw          $a1, 0x20($sp)
.L0043B494:
/* 03B494 0043B494 8D0E0000 */  lw          $t6, 0x0($t0)
/* 03B498 0043B498 80B80000 */  lb          $t8, 0x0($a1)
/* 03B49C 0043B49C 24840001 */  addiu       $a0, $a0, 0x1
/* 03B4A0 0043B4A0 8DC30000 */  lw          $v1, 0x0($t6)
/* 03B4A4 0043B4A4 0086082A */  slt         $at, $a0, $a2
/* 03B4A8 0043B4A8 24A50001 */  addiu       $a1, $a1, 0x1
/* 03B4AC 0043B4AC 8C62003C */  lw          $v0, 0x3C($v1)
/* 03B4B0 0043B4B0 946B003E */  lhu         $t3, 0x3E($v1)
/* 03B4B4 0043B4B4 30421FFF */  andi        $v0, $v0, 0x1FFF
/* 03B4B8 0043B4B8 0002C940 */  sll         $t9, $v0, 5
/* 03B4BC 0043B4BC 03197821 */  addu        $t7, $t8, $t9
/* 03B4C0 0043B4C0 01E26021 */  addu        $t4, $t7, $v0
/* 03B4C4 0043B4C4 31891FFF */  andi        $t1, $t4, 0x1FFF
/* 03B4C8 0043B4C8 316DE000 */  andi        $t5, $t3, 0xE000
/* 03B4CC 0043B4CC 012D7025 */  or          $t6, $t1, $t5
/* 03B4D0 0043B4D0 1420FFF0 */  bnez        $at, .L0043B494
/* 03B4D4 0043B4D4 A46E003E */   sh         $t6, 0x3E($v1)
.L0043B4D8:
/* 03B4D8 0043B4D8 8FB80030 */  lw          $t8, 0x30($sp)
/* 03B4DC 0043B4DC 2401000E */  addiu       $at, $zero, 0xE
/* 03B4E0 0043B4E0 13010007 */  beq         $t8, $at, .L0043B500
/* 03B4E4 0043B4E4 24010002 */   addiu      $at, $zero, 0x2
/* 03B4E8 0043B4E8 13010005 */  beq         $t8, $at, .L0043B500
/* 03B4EC 0043B4EC 24010005 */   addiu      $at, $zero, 0x5
/* 03B4F0 0043B4F0 13010003 */  beq         $t8, $at, .L0043B500
/* 03B4F4 0043B4F4 24010006 */   addiu      $at, $zero, 0x6
/* 03B4F8 0043B4F8 57010007 */  bnel        $t8, $at, .L0043B518
/* 03B4FC 0043B4FC 8D0C0000 */   lw         $t4, 0x0($t0)
.L0043B500:
/* 03B500 0043B500 8D190000 */  lw          $t9, 0x0($t0)
/* 03B504 0043B504 8F230000 */  lw          $v1, 0x0($t9)
/* 03B508 0043B508 906F003C */  lbu         $t7, 0x3C($v1)
/* 03B50C 0043B50C 31EAFFFB */  andi        $t2, $t7, 0xFFFB
/* 03B510 0043B510 A06A003C */  sb          $t2, 0x3C($v1)
/* 03B514 0043B514 8D0C0000 */  lw          $t4, 0x0($t0)
.L0043B518:
/* 03B518 0043B518 8D830000 */  lw          $v1, 0x0($t4)
/* 03B51C 0043B51C 8C620014 */  lw          $v0, 0x14($v1)
/* 03B520 0043B520 244B0001 */  addiu       $t3, $v0, 0x1
/* 03B524 0043B524 AC6B0014 */  sw          $t3, 0x14($v1)
/* 03B528 0043B528 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03B52C 0043B52C 27BD0028 */  addiu       $sp, $sp, 0x28
/* 03B530 0043B530 03E00008 */  jr          $ra
/* 03B534 0043B534 00000000 */   nop
