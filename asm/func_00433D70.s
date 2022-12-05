glabel func_00433D70 # 578
# _gp_disp: 0xFBE9FD0
.set noreorder; .cpload $t9; # .set reorder
/* 033D7C 00433D7C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 033D80 00433D80 8F9982AC */  lw          $t9, %call16(obj_otype)($gp)
/* 033D84 00433D84 AFBF0024 */  sw          $ra, 0x24($sp)
/* 033D88 00433D88 AFB1001C */  sw          $s1, 0x1C($sp)
/* 033D8C 00433D8C AFB00018 */  sw          $s0, 0x18($sp)
/* 033D90 00433D90 00A08025 */  move        $s0, $a1
/* 033D94 00433D94 00C08825 */  move        $s1, $a2
/* 033D98 00433D98 AFBC0020 */  sw          $gp, 0x20($sp)
/* 033D9C 00433D9C 0320F809 */  jalr        $t9
/* 033DA0 00433DA0 AFA40028 */   sw         $a0, 0x28($sp)
/* 033DA4 00433DA4 24010002 */  addiu       $at, $zero, 0x2
/* 033DA8 00433DA8 1441002C */  bne         $v0, $at, .L00433E5C
/* 033DAC 00433DAC 8FBC0020 */   lw         $gp, 0x20($sp)
/* 033DB0 00433DB0 8F998398 */  lw          $t9, %call16(obj_data_start)($gp)
/* 033DB4 00433DB4 8FA40028 */  lw          $a0, 0x28($sp)
/* 033DB8 00433DB8 0320F809 */  jalr        $t9
/* 033DBC 00433DBC 00000000 */   nop
/* 033DC0 00433DC0 8E0E000C */  lw          $t6, 0xC($s0)
/* 033DC4 00433DC4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 033DC8 00433DC8 544E000D */  bnel        $v0, $t6, .L00433E00
/* 033DCC 00433DCC 8E180014 */   lw         $t8, 0x14($s0)
/* 033DD0 00433DD0 8E240000 */  lw          $a0, 0x0($s1)
/* 033DD4 00433DD4 308F0FFF */  andi        $t7, $a0, 0xFFF
/* 033DD8 00433DD8 51E00009 */  beql        $t7, $zero, .L00433E00
/* 033DDC 00433DDC 8E180014 */   lw         $t8, 0x14($s0)
/* 033DE0 00433DE0 8F998020 */  lw          $t9, %got(func_00432460)($gp)
/* 033DE4 00433DE4 24051000 */  addiu       $a1, $zero, 0x1000
/* 033DE8 00433DE8 27392460 */  addiu       $t9, $t9, %lo(func_00432460)
/* 033DEC 00433DEC 0320F809 */  jalr        $t9
/* 033DF0 00433DF0 00000000 */   nop
/* 033DF4 00433DF4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 033DF8 00433DF8 AE220000 */  sw          $v0, 0x0($s1)
/* 033DFC 00433DFC 8E180014 */  lw          $t8, 0x14($s0)
.L00433E00:
/* 033E00 00433E00 13000006 */  beqz        $t8, .L00433E1C
/* 033E04 00433E04 00000000 */   nop
/* 033E08 00433E08 8E190010 */  lw          $t9, 0x10($s0)
/* 033E0C 00433E0C 13200003 */  beqz        $t9, .L00433E1C
/* 033E10 00433E10 00000000 */   nop
/* 033E14 00433E14 8E280000 */  lw          $t0, 0x0($s1)
/* 033E18 00433E18 AE080014 */  sw          $t0, 0x14($s0)
.L00433E1C:
/* 033E1C 00433E1C 8F99839C */  lw          $t9, %call16(obj_bss_start)($gp)
/* 033E20 00433E20 8FA40028 */  lw          $a0, 0x28($sp)
/* 033E24 00433E24 0320F809 */  jalr        $t9
/* 033E28 00433E28 00000000 */   nop
/* 033E2C 00433E2C 8E030010 */  lw          $v1, 0x10($s0)
/* 033E30 00433E30 8E09000C */  lw          $t1, 0xC($s0)
/* 033E34 00433E34 8FBC0020 */  lw          $gp, 0x20($sp)
/* 033E38 00433E38 01235021 */  addu        $t2, $t1, $v1
/* 033E3C 00433E3C 0142082B */  sltu        $at, $t2, $v0
/* 033E40 00433E40 10200004 */  beqz        $at, .L00433E54
/* 033E44 00433E44 00000000 */   nop
/* 033E48 00433E48 8E2B0000 */  lw          $t3, 0x0($s1)
/* 033E4C 00433E4C 01636021 */  addu        $t4, $t3, $v1
/* 033E50 00433E50 AE2C0000 */  sw          $t4, 0x0($s1)
.L00433E54:
/* 033E54 00433E54 10000022 */  b           .L00433EE0
/* 033E58 00433E58 2402FFFF */   addiu      $v0, $zero, -0x1
.L00433E5C:
/* 033E5C 00433E5C 8E0D0008 */  lw          $t5, 0x8($s0)
/* 033E60 00433E60 31AE0002 */  andi        $t6, $t5, 0x2
/* 033E64 00433E64 15C00003 */  bnez        $t6, .L00433E74
/* 033E68 00433E68 00000000 */   nop
/* 033E6C 00433E6C 1000001C */  b           .L00433EE0
/* 033E70 00433E70 2402FFFF */   addiu      $v0, $zero, -0x1
.L00433E74:
/* 033E74 00433E74 8F99854C */  lw          $t9, %call16(obj_vtofo)($gp)
/* 033E78 00433E78 8FA40028 */  lw          $a0, 0x28($sp)
/* 033E7C 00433E7C 8E05000C */  lw          $a1, 0xC($s0)
/* 033E80 00433E80 0320F809 */  jalr        $t9
/* 033E84 00433E84 00000000 */   nop
/* 033E88 00433E88 8FBC0020 */  lw          $gp, 0x20($sp)
/* 033E8C 00433E8C AE220000 */  sw          $v0, 0x0($s1)
/* 033E90 00433E90 8E0F000C */  lw          $t7, 0xC($s0)
/* 033E94 00433E94 51E00012 */  beql        $t7, $zero, .L00433EE0
/* 033E98 00433E98 2402FFFF */   addiu      $v0, $zero, -0x1
/* 033E9C 00433E9C 8F99839C */  lw          $t9, %call16(obj_bss_start)($gp)
/* 033EA0 00433EA0 8FA40028 */  lw          $a0, 0x28($sp)
/* 033EA4 00433EA4 0320F809 */  jalr        $t9
/* 033EA8 00433EA8 00000000 */   nop
/* 033EAC 00433EAC 8E18000C */  lw          $t8, 0xC($s0)
/* 033EB0 00433EB0 8E190014 */  lw          $t9, 0x14($s0)
/* 033EB4 00433EB4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 033EB8 00433EB8 03194021 */  addu        $t0, $t8, $t9
/* 033EBC 00433EBC 0102082B */  sltu        $at, $t0, $v0
/* 033EC0 00433EC0 50200007 */  beql        $at, $zero, .L00433EE0
/* 033EC4 00433EC4 2402FFFF */   addiu      $v0, $zero, -0x1
/* 033EC8 00433EC8 8E090010 */  lw          $t1, 0x10($s0)
/* 033ECC 00433ECC 51200004 */  beql        $t1, $zero, .L00433EE0
/* 033ED0 00433ED0 2402FFFF */   addiu      $v0, $zero, -0x1
/* 033ED4 00433ED4 8E2A0000 */  lw          $t2, 0x0($s1)
/* 033ED8 00433ED8 AE0A0010 */  sw          $t2, 0x10($s0)
/* 033EDC 00433EDC 2402FFFF */  addiu       $v0, $zero, -0x1
.L00433EE0:
/* 033EE0 00433EE0 8FBF0024 */  lw          $ra, 0x24($sp)
/* 033EE4 00433EE4 8FB00018 */  lw          $s0, 0x18($sp)
/* 033EE8 00433EE8 8FB1001C */  lw          $s1, 0x1C($sp)
/* 033EEC 00433EEC 03E00008 */  jr          $ra
/* 033EF0 00433EF0 27BD0028 */   addiu      $sp, $sp, 0x28
