glabel type_to_file # 533
# _gp_disp: 0xFBEEE0C
.set noreorder; .cpload $t9; # .set reorder
/* 02EF40 0042EF40 8F838030 */  lw          $v1, %got(B_1001A574)($gp)
/* 02EF44 0042EF44 8C82009C */  lw          $v0, 0x9C($a0)
/* 02EF48 0042EF48 8C8E00C8 */  lw          $t6, 0xC8($a0)
/* 02EF4C 0042EF4C 8C63A574 */  lw          $v1, %lo(B_1001A574)($v1)
/* 02EF50 0042EF50 8C460048 */  lw          $a2, 0x48($v0)
/* 02EF54 0042EF54 00AE2823 */  subu        $a1, $a1, $t6
/* 02EF58 0042EF58 0003C0C0 */  sll         $t8, $v1, 3
/* 02EF5C 0042EF5C 0066082A */  slt         $at, $v1, $a2
/* 02EF60 0042EF60 50200012 */  beql        $at, $zero, .L0042EFAC
/* 02EF64 0042EF64 8C4B0030 */   lw         $t3, 0x30($v0)
/* 02EF68 0042EF68 8C8F00A0 */  lw          $t7, 0xA0($a0)
/* 02EF6C 0042EF6C 0303C021 */  addu        $t8, $t8, $v1
/* 02EF70 0042EF70 0018C0C0 */  sll         $t8, $t8, 3
/* 02EF74 0042EF74 01F83821 */  addu        $a3, $t7, $t8
/* 02EF78 0042EF78 8CE8002C */  lw          $t0, 0x2C($a3)
/* 02EF7C 0042EF7C 00A8082B */  sltu        $at, $a1, $t0
/* 02EF80 0042EF80 5420000A */  bnel        $at, $zero, .L0042EFAC
/* 02EF84 0042EF84 8C4B0030 */   lw         $t3, 0x30($v0)
/* 02EF88 0042EF88 8CF90030 */  lw          $t9, 0x30($a3)
/* 02EF8C 0042EF8C 03284821 */  addu        $t1, $t9, $t0
/* 02EF90 0042EF90 00A9082B */  sltu        $at, $a1, $t1
/* 02EF94 0042EF94 50200005 */  beql        $at, $zero, .L0042EFAC
/* 02EF98 0042EF98 8C4B0030 */   lw         $t3, 0x30($v0)
/* 02EF9C 0042EF9C 8C8A00D0 */  lw          $t2, 0xD0($a0)
/* 02EFA0 0042EFA0 03E00008 */  jr          $ra
/* 02EFA4 0042EFA4 006A1021 */   addu       $v0, $v1, $t2
/* 02EFA8 0042EFA8 8C4B0030 */  lw          $t3, 0x30($v0)
.L0042EFAC:
/* 02EFAC 0042EFAC 00AB082B */  sltu        $at, $a1, $t3
/* 02EFB0 0042EFB0 14200003 */  bnez        $at, .L0042EFC0
/* 02EFB4 0042EFB4 00000000 */   nop
/* 02EFB8 0042EFB8 03E00008 */  jr          $ra
/* 02EFBC 0042EFBC 2402FFFF */   addiu      $v0, $zero, -0x1
.L0042EFC0:
/* 02EFC0 0042EFC0 8F818030 */  lw          $at, %got(B_1001A574)($gp)
/* 02EFC4 0042EFC4 00001825 */  move        $v1, $zero
/* 02EFC8 0042EFC8 18C00016 */  blez        $a2, .L0042F024
/* 02EFCC 0042EFCC AC20A574 */   sw         $zero, %lo(B_1001A574)($at)
/* 02EFD0 0042EFD0 8C8700A0 */  lw          $a3, 0xA0($a0)
.L0042EFD4:
/* 02EFD4 0042EFD4 8CE8002C */  lw          $t0, 0x2C($a3)
/* 02EFD8 0042EFD8 00A8082B */  sltu        $at, $a1, $t0
/* 02EFDC 0042EFDC 5420000C */  bnel        $at, $zero, .L0042F010
/* 02EFE0 0042EFE0 24630001 */   addiu      $v1, $v1, 0x1
/* 02EFE4 0042EFE4 8CEC0030 */  lw          $t4, 0x30($a3)
/* 02EFE8 0042EFE8 01886821 */  addu        $t5, $t4, $t0
/* 02EFEC 0042EFEC 00AD082B */  sltu        $at, $a1, $t5
/* 02EFF0 0042EFF0 50200007 */  beql        $at, $zero, .L0042F010
/* 02EFF4 0042EFF4 24630001 */   addiu      $v1, $v1, 0x1
/* 02EFF8 0042EFF8 8C8E00D0 */  lw          $t6, 0xD0($a0)
/* 02EFFC 0042EFFC 8F818030 */  lw          $at, %got(B_1001A574)($gp)
/* 02F000 0042F000 006E1021 */  addu        $v0, $v1, $t6
/* 02F004 0042F004 03E00008 */  jr          $ra
/* 02F008 0042F008 AC23A574 */   sw         $v1, %lo(B_1001A574)($at)
/* 02F00C 0042F00C 24630001 */  addiu       $v1, $v1, 0x1
.L0042F010:
/* 02F010 0042F010 0066082A */  slt         $at, $v1, $a2
/* 02F014 0042F014 1420FFEF */  bnez        $at, .L0042EFD4
/* 02F018 0042F018 24E70048 */   addiu      $a3, $a3, 0x48
/* 02F01C 0042F01C 8F818030 */  lw          $at, %got(B_1001A574)($gp)
/* 02F020 0042F020 AC23A574 */  sw          $v1, %lo(B_1001A574)($at)
.L0042F024:
/* 02F024 0042F024 2402FFFF */  addiu       $v0, $zero, -0x1
/* 02F028 0042F028 03E00008 */  jr          $ra
/* 02F02C 0042F02C 00000000 */   nop
