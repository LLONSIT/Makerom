glabel func_0041E958 # 117
# _gp_disp: 0xFBFF3E8
.set noreorder; .cpload $t9; # .set reorder
/* 01E964 0041E964 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01E968 0041E968 8F998064 */  lw          $t9, %call16(malloc)($gp)
/* 01E96C 0041E96C AFBF001C */  sw          $ra, 0x1C($sp)
/* 01E970 0041E970 AFA40020 */  sw          $a0, 0x20($sp)
/* 01E974 0041E974 AFBC0018 */  sw          $gp, 0x18($sp)
/* 01E978 0041E978 AFB00014 */  sw          $s0, 0x14($sp)
/* 01E97C 0041E97C AFA50024 */  sw          $a1, 0x24($sp)
/* 01E980 0041E980 0320F809 */  jalr        $t9
/* 01E984 0041E984 2404009C */   addiu      $a0, $zero, 0x9C
/* 01E988 0041E988 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01E98C 0041E98C 14400006 */  bnez        $v0, .L0041E9A8
/* 01E990 0041E990 00408025 */   move       $s0, $v0
/* 01E994 0041E994 8F8186E8 */  lw          $at, %got(_elf_err)($gp)
/* 01E998 0041E998 240E040D */  addiu       $t6, $zero, 0x40D
/* 01E99C 0041E99C 00001025 */  move        $v0, $zero
/* 01E9A0 0041E9A0 10000041 */  b           .L0041EAA8
/* 01E9A4 0041E9A4 AC2E0000 */   sw         $t6, 0x0($at)
.L0041E9A8:
/* 01E9A8 0041E9A8 8F8F802C */  lw          $t7, %got(D_100158B0)($gp)
/* 01E9AC 0041E9AC 02004025 */  move        $t0, $s0
/* 01E9B0 0041E9B0 240AFFFF */  addiu       $t2, $zero, -0x1
/* 01E9B4 0041E9B4 25EF58B0 */  addiu       $t7, $t7, %lo(D_100158B0)
/* 01E9B8 0041E9B8 25E9009C */  addiu       $t1, $t7, 0x9C
.L0041E9BC:
/* 01E9BC 0041E9BC 8DF90000 */  lw          $t9, 0x0($t7)
/* 01E9C0 0041E9C0 25EF000C */  addiu       $t7, $t7, 0xC
/* 01E9C4 0041E9C4 2508000C */  addiu       $t0, $t0, 0xC
/* 01E9C8 0041E9C8 AD19FFF4 */  sw          $t9, -0xC($t0)
/* 01E9CC 0041E9CC 8DF8FFF8 */  lw          $t8, -0x8($t7)
/* 01E9D0 0041E9D0 AD18FFF8 */  sw          $t8, -0x8($t0)
/* 01E9D4 0041E9D4 8DF9FFFC */  lw          $t9, -0x4($t7)
/* 01E9D8 0041E9D8 15E9FFF8 */  bne         $t7, $t1, .L0041E9BC
/* 01E9DC 0041E9DC AD19FFFC */   sw         $t9, -0x4($t0)
/* 01E9E0 0041E9E0 AE0A0098 */  sw          $t2, 0x98($s0)
/* 01E9E4 0041E9E4 8FAB0020 */  lw          $t3, 0x20($sp)
/* 01E9E8 0041E9E8 8E0C0088 */  lw          $t4, 0x88($s0)
/* 01E9EC 0041E9EC 02002025 */  move        $a0, $s0
/* 01E9F0 0041E9F0 AE0B0008 */  sw          $t3, 0x8($s0)
/* 01E9F4 0041E9F4 8FAD0024 */  lw          $t5, 0x24($sp)
/* 01E9F8 0041E9F8 018D7025 */  or          $t6, $t4, $t5
/* 01E9FC 0041E9FC AE0E0088 */  sw          $t6, 0x88($s0)
/* 01EA00 0041EA00 8F998218 */  lw          $t9, %call16(_elf_inmap)($gp)
/* 01EA04 0041EA04 0320F809 */  jalr        $t9
/* 01EA08 0041EA08 00000000 */   nop
/* 01EA0C 0041EA0C 10400025 */  beqz        $v0, .L0041EAA4
/* 01EA10 0041EA10 8FBC0018 */   lw         $gp, 0x18($sp)
/* 01EA14 0041EA14 8E040038 */  lw          $a0, 0x38($s0)
/* 01EA18 0041EA18 10800006 */  beqz        $a0, .L0041EA34
/* 01EA1C 0041EA1C 00000000 */   nop
/* 01EA20 0041EA20 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 01EA24 0041EA24 0320F809 */  jalr        $t9
/* 01EA28 0041EA28 00000000 */   nop
/* 01EA2C 0041EA2C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01EA30 0041EA30 8E040038 */  lw          $a0, 0x38($s0)
.L0041EA34:
/* 01EA34 0041EA34 10800005 */  beqz        $a0, .L0041EA4C
/* 01EA38 0041EA38 00000000 */   nop
/* 01EA3C 0041EA3C 8E020088 */  lw          $v0, 0x88($s0)
/* 01EA40 0041EA40 00024800 */  sll         $t1, $v0, 0
/* 01EA44 0041EA44 05230009 */  bgezl       $t1, .L0041EA6C
/* 01EA48 0041EA48 00027880 */   sll        $t7, $v0, 2
.L0041EA4C:
/* 01EA4C 0041EA4C 8F99821C */  lw          $t9, %call16(_elf_unmap)($gp)
/* 01EA50 0041EA50 8E040020 */  lw          $a0, 0x20($s0)
/* 01EA54 0041EA54 8E050024 */  lw          $a1, 0x24($s0)
/* 01EA58 0041EA58 0320F809 */  jalr        $t9
/* 01EA5C 0041EA5C 00000000 */   nop
/* 01EA60 0041EA60 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01EA64 0041EA64 8E020088 */  lw          $v0, 0x88($s0)
/* 01EA68 0041EA68 00027880 */  sll         $t7, $v0, 2
.L0041EA6C:
/* 01EA6C 0041EA6C 05E10006 */  bgez        $t7, .L0041EA88
/* 01EA70 0041EA70 00000000 */   nop
/* 01EA74 0041EA74 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 01EA78 0041EA78 8E040020 */  lw          $a0, 0x20($s0)
/* 01EA7C 0041EA7C 0320F809 */  jalr        $t9
/* 01EA80 0041EA80 00000000 */   nop
/* 01EA84 0041EA84 8FBC0018 */  lw          $gp, 0x18($sp)
.L0041EA88:
/* 01EA88 0041EA88 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 01EA8C 0041EA8C 02002025 */  move        $a0, $s0
/* 01EA90 0041EA90 0320F809 */  jalr        $t9
/* 01EA94 0041EA94 00000000 */   nop
/* 01EA98 0041EA98 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01EA9C 0041EA9C 10000002 */  b           .L0041EAA8
/* 01EAA0 0041EAA0 00001025 */   move       $v0, $zero
.L0041EAA4:
/* 01EAA4 0041EAA4 02001025 */  move        $v0, $s0
.L0041EAA8:
/* 01EAA8 0041EAA8 8FBF001C */  lw          $ra, 0x1C($sp)
/* 01EAAC 0041EAAC 8FB00014 */  lw          $s0, 0x14($sp)
/* 01EAB0 0041EAB0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01EAB4 0041EAB4 03E00008 */  jr          $ra
/* 01EAB8 0041EAB8 00000000 */   nop
/* 01EABC 0041EABC 00000000 */  nop
