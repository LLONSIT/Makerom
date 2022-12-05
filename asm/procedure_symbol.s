glabel procedure_symbol # 521
# _gp_disp: 0xFBEFAB0
.set noreorder; .cpload $t9; # .set reorder
/* 02E29C 0042E29C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 02E2A0 0042E2A0 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02E2A4 0042E2A4 04A1000E */  bgez        $a1, .L0042E2E0
/* 02E2A8 0042E2A8 AFBC0018 */   sw         $gp, 0x18($sp)
/* 02E2AC 0042E2AC 00051823 */  negu        $v1, $a1
/* 02E2B0 0042E2B0 28610010 */  slti        $at, $v1, 0x10
/* 02E2B4 0042E2B4 1020000A */  beqz        $at, .L0042E2E0
/* 02E2B8 0042E2B8 00037080 */   sll        $t6, $v1, 2
/* 02E2BC 0042E2BC 8F8F8030 */  lw          $t7, %got(B_1001A230)($gp)
/* 02E2C0 0042E2C0 01C37023 */  subu        $t6, $t6, $v1
/* 02E2C4 0042E2C4 000E7080 */  sll         $t6, $t6, 2
/* 02E2C8 0042E2C8 01C37021 */  addu        $t6, $t6, $v1
/* 02E2CC 0042E2CC 000E7080 */  sll         $t6, $t6, 2
/* 02E2D0 0042E2D0 25EFA230 */  addiu       $t7, $t7, %lo(B_1001A230)
/* 02E2D4 0042E2D4 01CFC021 */  addu        $t8, $t6, $t7
/* 02E2D8 0042E2D8 1000003B */  b           .L0042E3C8
/* 02E2DC 0042E2DC 8F020004 */   lw         $v0, 0x4($t8)
.L0042E2E0:
/* 02E2E0 0042E2E0 8C82009C */  lw          $v0, 0x9C($a0)
/* 02E2E4 0042E2E4 10400008 */  beqz        $v0, .L0042E308
/* 02E2E8 0042E2E8 00000000 */   nop
/* 02E2EC 0042E2EC 8C8600D4 */  lw          $a2, 0xD4($a0)
/* 02E2F0 0042E2F0 8C480018 */  lw          $t0, 0x18($v0)
/* 02E2F4 0042E2F4 00055080 */  sll         $t2, $a1, 2
/* 02E2F8 0042E2F8 00A6C823 */  subu        $t9, $a1, $a2
/* 02E2FC 0042E2FC 0328082B */  sltu        $at, $t9, $t0
/* 02E300 0042E300 14200003 */  bnez        $at, .L0042E310
/* 02E304 0042E304 01455023 */   subu       $t2, $t2, $a1
.L0042E308:
/* 02E308 0042E308 1000002F */  b           .L0042E3C8
/* 02E30C 0042E30C 2402FFFF */   addiu      $v0, $zero, -0x1
.L0042E310:
/* 02E310 0042E310 00066080 */  sll         $t4, $a2, 2
/* 02E314 0042E314 01866023 */  subu        $t4, $t4, $a2
/* 02E318 0042E318 8C8900A4 */  lw          $t1, 0xA4($a0)
/* 02E31C 0042E31C 000C6080 */  sll         $t4, $t4, 2
/* 02E320 0042E320 000A5080 */  sll         $t2, $t2, 2
/* 02E324 0042E324 01455021 */  addu        $t2, $t2, $a1
/* 02E328 0042E328 01866021 */  addu        $t4, $t4, $a2
/* 02E32C 0042E32C 000C6080 */  sll         $t4, $t4, 2
/* 02E330 0042E330 000A5080 */  sll         $t2, $t2, 2
/* 02E334 0042E334 000C6823 */  negu        $t5, $t4
/* 02E338 0042E338 012A5821 */  addu        $t3, $t1, $t2
/* 02E33C 0042E33C 016D7021 */  addu        $t6, $t3, $t5
/* 02E340 0042E340 8DC30004 */  lw          $v1, 0x4($t6)
/* 02E344 0042E344 2401FFFF */  addiu       $at, $zero, -0x1
/* 02E348 0042E348 14610003 */  bne         $v1, $at, .L0042E358
/* 02E34C 0042E34C 00000000 */   nop
/* 02E350 0042E350 1000001D */  b           .L0042E3C8
/* 02E354 0042E354 2402FFFF */   addiu      $v0, $zero, -0x1
.L0042E358:
/* 02E358 0042E358 8F9984F4 */  lw          $t9, %call16(procedure_to_file)($gp)
/* 02E35C 0042E35C AFA30024 */  sw          $v1, 0x24($sp)
/* 02E360 0042E360 AFA40028 */  sw          $a0, 0x28($sp)
/* 02E364 0042E364 0320F809 */  jalr        $t9
/* 02E368 0042E368 00000000 */   nop
/* 02E36C 0042E36C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02E370 0042E370 8FA40028 */  lw          $a0, 0x28($sp)
/* 02E374 0042E374 AFA20020 */  sw          $v0, 0x20($sp)
/* 02E378 0042E378 8F998500 */  lw          $t9, %call16(file_symbol_count)($gp)
/* 02E37C 0042E37C 00402825 */  move        $a1, $v0
/* 02E380 0042E380 0320F809 */  jalr        $t9
/* 02E384 0042E384 00000000 */   nop
/* 02E388 0042E388 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02E38C 0042E38C 8FA30024 */  lw          $v1, 0x24($sp)
/* 02E390 0042E390 14400004 */  bnez        $v0, .L0042E3A4
/* 02E394 0042E394 8FA40028 */   lw         $a0, 0x28($sp)
/* 02E398 0042E398 8C8F00D8 */  lw          $t7, 0xD8($a0)
/* 02E39C 0042E39C 10000009 */  b           .L0042E3C4
/* 02E3A0 0042E3A0 006F1821 */   addu       $v1, $v1, $t7
.L0042E3A4:
/* 02E3A4 0042E3A4 8F9984F8 */  lw          $t9, %call16(file_symbol)($gp)
/* 02E3A8 0042E3A8 8FA50020 */  lw          $a1, 0x20($sp)
/* 02E3AC 0042E3AC AFA30024 */  sw          $v1, 0x24($sp)
/* 02E3B0 0042E3B0 0320F809 */  jalr        $t9
/* 02E3B4 0042E3B4 00000000 */   nop
/* 02E3B8 0042E3B8 8FA30024 */  lw          $v1, 0x24($sp)
/* 02E3BC 0042E3BC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02E3C0 0042E3C0 00621821 */  addu        $v1, $v1, $v0
.L0042E3C4:
/* 02E3C4 0042E3C4 00601025 */  move        $v0, $v1
.L0042E3C8:
/* 02E3C8 0042E3C8 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02E3CC 0042E3CC 27BD0028 */  addiu       $sp, $sp, 0x28
/* 02E3D0 0042E3D0 03E00008 */  jr          $ra
/* 02E3D4 0042E3D4 00000000 */   nop
