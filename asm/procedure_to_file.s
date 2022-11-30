glabel procedure_to_file # 534
# _gp_disp: 0xFBEED10
.set noreorder; .cpload $t9; # .set reorder
/* 02F03C 0042F03C 8F838030 */  lw          $v1, %got(B_1001A578)($gp)
/* 02F040 0042F040 8C82009C */  lw          $v0, 0x9C($a0)
/* 02F044 0042F044 8C8E00D4 */  lw          $t6, 0xD4($a0)
/* 02F048 0042F048 8C63A578 */  lw          $v1, %lo(B_1001A578)($v1)
/* 02F04C 0042F04C 8C460048 */  lw          $a2, 0x48($v0)
/* 02F050 0042F050 00AE2823 */  subu        $a1, $a1, $t6
/* 02F054 0042F054 0003C0C0 */  sll         $t8, $v1, 3
/* 02F058 0042F058 0066082A */  slt         $at, $v1, $a2
/* 02F05C 0042F05C 50200012 */  beql        $at, $zero, .L0042F0A8
/* 02F060 0042F060 8C4B0018 */   lw         $t3, 0x18($v0)
/* 02F064 0042F064 8C8F00A0 */  lw          $t7, 0xA0($a0)
/* 02F068 0042F068 0303C021 */  addu        $t8, $t8, $v1
/* 02F06C 0042F06C 0018C0C0 */  sll         $t8, $t8, 3
/* 02F070 0042F070 01F83821 */  addu        $a3, $t7, $t8
/* 02F074 0042F074 94E80028 */  lhu         $t0, 0x28($a3)
/* 02F078 0042F078 00A8082B */  sltu        $at, $a1, $t0
/* 02F07C 0042F07C 5420000A */  bnel        $at, $zero, .L0042F0A8
/* 02F080 0042F080 8C4B0018 */   lw         $t3, 0x18($v0)
/* 02F084 0042F084 94F9002A */  lhu         $t9, 0x2A($a3)
/* 02F088 0042F088 03284821 */  addu        $t1, $t9, $t0
/* 02F08C 0042F08C 00A9082B */  sltu        $at, $a1, $t1
/* 02F090 0042F090 50200005 */  beql        $at, $zero, .L0042F0A8
/* 02F094 0042F094 8C4B0018 */   lw         $t3, 0x18($v0)
/* 02F098 0042F098 8C8A00D0 */  lw          $t2, 0xD0($a0)
/* 02F09C 0042F09C 03E00008 */  jr          $ra
/* 02F0A0 0042F0A0 006A1021 */   addu       $v0, $v1, $t2
/* 02F0A4 0042F0A4 8C4B0018 */  lw          $t3, 0x18($v0)
.L0042F0A8:
/* 02F0A8 0042F0A8 00AB082B */  sltu        $at, $a1, $t3
/* 02F0AC 0042F0AC 14200003 */  bnez        $at, .L0042F0BC
/* 02F0B0 0042F0B0 00000000 */   nop
/* 02F0B4 0042F0B4 03E00008 */  jr          $ra
/* 02F0B8 0042F0B8 2402FFFF */   addiu      $v0, $zero, -0x1
.L0042F0BC:
/* 02F0BC 0042F0BC 8F818030 */  lw          $at, %got(B_1001A578)($gp)
/* 02F0C0 0042F0C0 00001825 */  move        $v1, $zero
/* 02F0C4 0042F0C4 18C00016 */  blez        $a2, .L0042F120
/* 02F0C8 0042F0C8 AC20A578 */   sw         $zero, %lo(B_1001A578)($at)
/* 02F0CC 0042F0CC 8C8700A0 */  lw          $a3, 0xA0($a0)
.L0042F0D0:
/* 02F0D0 0042F0D0 94E80028 */  lhu         $t0, 0x28($a3)
/* 02F0D4 0042F0D4 00A8082B */  sltu        $at, $a1, $t0
/* 02F0D8 0042F0D8 5420000C */  bnel        $at, $zero, .L0042F10C
/* 02F0DC 0042F0DC 24630001 */   addiu      $v1, $v1, 0x1
/* 02F0E0 0042F0E0 94EC002A */  lhu         $t4, 0x2A($a3)
/* 02F0E4 0042F0E4 01886821 */  addu        $t5, $t4, $t0
/* 02F0E8 0042F0E8 00AD082B */  sltu        $at, $a1, $t5
/* 02F0EC 0042F0EC 50200007 */  beql        $at, $zero, .L0042F10C
/* 02F0F0 0042F0F0 24630001 */   addiu      $v1, $v1, 0x1
/* 02F0F4 0042F0F4 8C8E00D0 */  lw          $t6, 0xD0($a0)
/* 02F0F8 0042F0F8 8F818030 */  lw          $at, %got(B_1001A578)($gp)
/* 02F0FC 0042F0FC 006E1021 */  addu        $v0, $v1, $t6
/* 02F100 0042F100 03E00008 */  jr          $ra
/* 02F104 0042F104 AC23A578 */   sw         $v1, %lo(B_1001A578)($at)
/* 02F108 0042F108 24630001 */  addiu       $v1, $v1, 0x1
.L0042F10C:
/* 02F10C 0042F10C 0066082A */  slt         $at, $v1, $a2
/* 02F110 0042F110 1420FFEF */  bnez        $at, .L0042F0D0
/* 02F114 0042F114 24E70048 */   addiu      $a3, $a3, 0x48
/* 02F118 0042F118 8F818030 */  lw          $at, %got(B_1001A578)($gp)
/* 02F11C 0042F11C AC23A578 */  sw          $v1, %lo(B_1001A578)($at)
.L0042F120:
/* 02F120 0042F120 2402FFFF */  addiu       $v0, $zero, -0x1
/* 02F124 0042F124 03E00008 */  jr          $ra
/* 02F128 0042F128 00000000 */   nop
