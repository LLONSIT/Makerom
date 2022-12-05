.section .rodata
glabel STR_10011F00
/* 041F00 10011F00 */ .asciz "adding obj to objlist"
                      .balign 4


.section .text
glabel add_obj # 250
# _gp_disp: 0xFBF6A20
.set noreorder; .cpload $t9; # .set reorder
/* 02732C 0042732C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 027330 00427330 8F9980D4 */  lw          $t9, %call16(calloc)($gp)
/* 027334 00427334 AFBF001C */  sw          $ra, 0x1C($sp)
/* 027338 00427338 AFA40020 */  sw          $a0, 0x20($sp)
/* 02733C 0042733C AFA50024 */  sw          $a1, 0x24($sp)
/* 027340 00427340 AFBC0018 */  sw          $gp, 0x18($sp)
/* 027344 00427344 AFB00014 */  sw          $s0, 0x14($sp)
/* 027348 00427348 240501DC */  addiu       $a1, $zero, 0x1DC
/* 02734C 0042734C 0320F809 */  jalr        $t9
/* 027350 00427350 24040001 */   addiu      $a0, $zero, 0x1
/* 027354 00427354 8FBC0018 */  lw          $gp, 0x18($sp)
/* 027358 00427358 14400003 */  bnez        $v0, .L00427368
/* 02735C 0042735C 00408025 */   move       $s0, $v0
/* 027360 00427360 10000042 */  b           .L0042746C
/* 027364 00427364 00001025 */   move       $v0, $zero
.L00427368:
/* 027368 00427368 8F99826C */  lw          $t9, %call16(obj_open)($gp)
/* 02736C 0042736C 02002025 */  move        $a0, $s0
/* 027370 00427370 8FA50024 */  lw          $a1, 0x24($sp)
/* 027374 00427374 0320F809 */  jalr        $t9
/* 027378 00427378 24060003 */   addiu      $a2, $zero, 0x3
/* 02737C 0042737C 10500003 */  beq         $v0, $s0, .L0042738C
/* 027380 00427380 8FBC0018 */   lw         $gp, 0x18($sp)
/* 027384 00427384 10000039 */  b           .L0042746C
/* 027388 00427388 00001025 */   move       $v0, $zero
.L0042738C:
/* 02738C 0042738C 8F99851C */  lw          $t9, %call16(list_last)($gp)
/* 027390 00427390 8FAE0020 */  lw          $t6, 0x20($sp)
/* 027394 00427394 0320F809 */  jalr        $t9
/* 027398 00427398 8DC40000 */   lw         $a0, 0x0($t6)
/* 02739C 0042739C 2401FFFF */  addiu       $at, $zero, -0x1
/* 0273A0 004273A0 10410021 */  beq         $v0, $at, .L00427428
/* 0273A4 004273A4 8FBC0018 */   lw         $gp, 0x18($sp)
/* 0273A8 004273A8 8C43009C */  lw          $v1, 0x9C($v0)
/* 0273AC 004273AC 50600016 */  beql        $v1, $zero, .L00427408
/* 0273B0 004273B0 8C4A00D0 */   lw         $t2, 0xD0($v0)
/* 0273B4 004273B4 8C4F00D0 */  lw          $t7, 0xD0($v0)
/* 0273B8 004273B8 8C780048 */  lw          $t8, 0x48($v1)
/* 0273BC 004273BC 01F8C821 */  addu        $t9, $t7, $t8
/* 0273C0 004273C0 AE1900D0 */  sw          $t9, 0xD0($s0)
/* 0273C4 004273C4 8C49009C */  lw          $t1, 0x9C($v0)
/* 0273C8 004273C8 8C4800D8 */  lw          $t0, 0xD8($v0)
/* 0273CC 004273CC 8D2A0058 */  lw          $t2, 0x58($t1)
/* 0273D0 004273D0 010A5821 */  addu        $t3, $t0, $t2
/* 0273D4 004273D4 AE0B00CC */  sw          $t3, 0xCC($s0)
/* 0273D8 004273D8 8C4D009C */  lw          $t5, 0x9C($v0)
/* 0273DC 004273DC 8C4C00C8 */  lw          $t4, 0xC8($v0)
/* 0273E0 004273E0 8DAE0030 */  lw          $t6, 0x30($t5)
/* 0273E4 004273E4 018E7821 */  addu        $t7, $t4, $t6
/* 0273E8 004273E8 AE0F00C8 */  sw          $t7, 0xC8($s0)
/* 0273EC 004273EC 8C59009C */  lw          $t9, 0x9C($v0)
/* 0273F0 004273F0 8C5800D4 */  lw          $t8, 0xD4($v0)
/* 0273F4 004273F4 8F290018 */  lw          $t1, 0x18($t9)
/* 0273F8 004273F8 03094021 */  addu        $t0, $t8, $t1
/* 0273FC 004273FC 1000000E */  b           .L00427438
/* 027400 00427400 AE0800D4 */   sw         $t0, 0xD4($s0)
/* 027404 00427404 8C4A00D0 */  lw          $t2, 0xD0($v0)
.L00427408:
/* 027408 00427408 AE0A00D0 */  sw          $t2, 0xD0($s0)
/* 02740C 0042740C 8C4B00D8 */  lw          $t3, 0xD8($v0)
/* 027410 00427410 AE0B00CC */  sw          $t3, 0xCC($s0)
/* 027414 00427414 8C4D00C8 */  lw          $t5, 0xC8($v0)
/* 027418 00427418 AE0D00C8 */  sw          $t5, 0xC8($s0)
/* 02741C 0042741C 8C4C00D4 */  lw          $t4, 0xD4($v0)
/* 027420 00427420 10000005 */  b           .L00427438
/* 027424 00427424 AE0C00D4 */   sw         $t4, 0xD4($s0)
.L00427428:
/* 027428 00427428 AE0000CC */  sw          $zero, 0xCC($s0)
/* 02742C 0042742C AE0000D0 */  sw          $zero, 0xD0($s0)
/* 027430 00427430 AE0000C8 */  sw          $zero, 0xC8($s0)
/* 027434 00427434 AE0000D4 */  sw          $zero, 0xD4($s0)
.L00427438:
/* 027438 00427438 8E0E00D8 */  lw          $t6, 0xD8($s0)
/* 02743C 0042743C 8E0F00CC */  lw          $t7, 0xCC($s0)
/* 027440 00427440 8F86802C */  lw          $a2, %got(STR_10011F00)($gp)
/* 027444 00427444 02002825 */  move        $a1, $s0
/* 027448 00427448 01CFC821 */  addu        $t9, $t6, $t7
/* 02744C 0042744C AE1900D8 */  sw          $t9, 0xD8($s0)
/* 027450 00427450 8F998514 */  lw          $t9, %call16(objList_add)($gp)
/* 027454 00427454 8FA40020 */  lw          $a0, 0x20($sp)
/* 027458 00427458 24070001 */  addiu       $a3, $zero, 0x1
/* 02745C 0042745C 0320F809 */  jalr        $t9
/* 027460 00427460 24C61F00 */   addiu      $a2, $a2, %lo(STR_10011F00)
/* 027464 00427464 8FBC0018 */  lw          $gp, 0x18($sp)
/* 027468 00427468 02001025 */  move        $v0, $s0
.L0042746C:
/* 02746C 0042746C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 027470 00427470 8FB00014 */  lw          $s0, 0x14($sp)
/* 027474 00427474 27BD0020 */  addiu       $sp, $sp, 0x20
/* 027478 00427478 03E00008 */  jr          $ra
/* 02747C 0042747C 00000000 */   nop
