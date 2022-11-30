glabel obj_create_liblist_entry # 315
# _gp_disp: 0xFBF3A24
.set noreorder; .cpload $t9; # .set reorder
/* 02A328 0042A328 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02A32C 0042A32C 8F998064 */  lw          $t9, %call16(malloc)($gp)
/* 02A330 0042A330 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02A334 0042A334 AFA40020 */  sw          $a0, 0x20($sp)
/* 02A338 0042A338 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02A33C 0042A33C AFA50024 */  sw          $a1, 0x24($sp)
/* 02A340 0042A340 AFA60028 */  sw          $a2, 0x28($sp)
/* 02A344 0042A344 AFA7002C */  sw          $a3, 0x2C($sp)
/* 02A348 0042A348 0320F809 */  jalr        $t9
/* 02A34C 0042A34C 24040014 */   addiu      $a0, $zero, 0x14
/* 02A350 0042A350 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02A354 0042A354 14400003 */  bnez        $v0, .L0042A364
/* 02A358 0042A358 00401825 */   move       $v1, $v0
/* 02A35C 0042A35C 1000000C */  b           .L0042A390
/* 02A360 0042A360 00001025 */   move       $v0, $zero
.L0042A364:
/* 02A364 0042A364 8FAE0020 */  lw          $t6, 0x20($sp)
/* 02A368 0042A368 00601025 */  move        $v0, $v1
/* 02A36C 0042A36C AC6E0000 */  sw          $t6, 0x0($v1)
/* 02A370 0042A370 8FAF0024 */  lw          $t7, 0x24($sp)
/* 02A374 0042A374 AC6F0004 */  sw          $t7, 0x4($v1)
/* 02A378 0042A378 8FB80028 */  lw          $t8, 0x28($sp)
/* 02A37C 0042A37C AC780008 */  sw          $t8, 0x8($v1)
/* 02A380 0042A380 8FB9002C */  lw          $t9, 0x2C($sp)
/* 02A384 0042A384 AC79000C */  sw          $t9, 0xC($v1)
/* 02A388 0042A388 8FA80030 */  lw          $t0, 0x30($sp)
/* 02A38C 0042A38C AC680010 */  sw          $t0, 0x10($v1)
.L0042A390:
/* 02A390 0042A390 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02A394 0042A394 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02A398 0042A398 03E00008 */  jr          $ra
/* 02A39C 0042A39C 00000000 */   nop
