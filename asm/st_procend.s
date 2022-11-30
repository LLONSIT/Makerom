glabel st_procend # 695
# _gp_disp: 0xFBE0CD8
.set noreorder; .cpload $t9; # .set reorder
/* 03D074 0043D074 8F998630 */  lw          $t9, %call16(st_pdn_idn)($gp)
/* 03D078 0043D078 27BDFFA8 */  addiu       $sp, $sp, -0x58
/* 03D07C 0043D07C AFBF0024 */  sw          $ra, 0x24($sp)
/* 03D080 0043D080 AFBC0020 */  sw          $gp, 0x20($sp)
/* 03D084 0043D084 AFB0001C */  sw          $s0, 0x1C($sp)
/* 03D088 0043D088 0320F809 */  jalr        $t9
/* 03D08C 0043D08C AFA40058 */   sw         $a0, 0x58($sp)
/* 03D090 0043D090 8C580000 */  lw          $t8, 0x0($v0)
/* 03D094 0043D094 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03D098 0043D098 27AE0044 */  addiu       $t6, $sp, 0x44
/* 03D09C 0043D09C ADD80000 */  sw          $t8, 0x0($t6)
/* 03D0A0 0043D0A0 8C4F0004 */  lw          $t7, 0x4($v0)
/* 03D0A4 0043D0A4 3C017FFF */  lui         $at, (0x7FFFFFFF >> 16)
/* 03D0A8 0043D0A8 3421FFFF */  ori         $at, $at, (0x7FFFFFFF & 0xFFFF)
/* 03D0AC 0043D0AC ADCF0004 */  sw          $t7, 0x4($t6)
/* 03D0B0 0043D0B0 8FB90044 */  lw          $t9, 0x44($sp)
/* 03D0B4 0043D0B4 1721001A */  bne         $t9, $at, .L0043D120
/* 03D0B8 0043D0B8 00000000 */   nop
/* 03D0BC 0043D0BC 8F998628 */  lw          $t9, %call16(st_pext_iext)($gp)
/* 03D0C0 0043D0C0 24080001 */  addiu       $t0, $zero, 0x1
/* 03D0C4 0043D0C4 AFA8003C */  sw          $t0, 0x3C($sp)
/* 03D0C8 0043D0C8 0320F809 */  jalr        $t9
/* 03D0CC 0043D0CC 8FA40048 */   lw         $a0, 0x48($sp)
/* 03D0D0 0043D0D0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03D0D4 0043D0D4 AFA20054 */  sw          $v0, 0x54($sp)
/* 03D0D8 0043D0D8 8C45000C */  lw          $a1, 0xC($v0)
/* 03D0DC 0043D0DC 8F998608 */  lw          $t9, %call16(st_psym_ifd_isym)($gp)
/* 03D0E0 0043D0E0 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03D0E4 0043D0E4 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03D0E8 0043D0E8 94440002 */  lhu         $a0, 0x2($v0)
/* 03D0EC 0043D0EC 0320F809 */  jalr        $t9
/* 03D0F0 0043D0F0 00A12824 */   and        $a1, $a1, $at
/* 03D0F4 0043D0F4 8FA90054 */  lw          $t1, 0x54($sp)
/* 03D0F8 0043D0F8 AFA20050 */  sw          $v0, 0x50($sp)
/* 03D0FC 0043D0FC 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03D100 0043D100 952A0002 */  lhu         $t2, 0x2($t1)
/* 03D104 0043D104 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03D108 0043D108 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03D10C 0043D10C AFAA0044 */  sw          $t2, 0x44($sp)
/* 03D110 0043D110 8D30000C */  lw          $s0, 0xC($t1)
/* 03D114 0043D114 02018024 */  and         $s0, $s0, $at
/* 03D118 0043D118 10000009 */  b           .L0043D140
/* 03D11C 0043D11C AFB00048 */   sw         $s0, 0x48($sp)
.L0043D120:
/* 03D120 0043D120 8F998608 */  lw          $t9, %call16(st_psym_ifd_isym)($gp)
/* 03D124 0043D124 AFA0003C */  sw          $zero, 0x3C($sp)
/* 03D128 0043D128 8FA40044 */  lw          $a0, 0x44($sp)
/* 03D12C 0043D12C 0320F809 */  jalr        $t9
/* 03D130 0043D130 8FA50048 */   lw         $a1, 0x48($sp)
/* 03D134 0043D134 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03D138 0043D138 AFA20050 */  sw          $v0, 0x50($sp)
/* 03D13C 0043D13C 8FB00048 */  lw          $s0, 0x48($sp)
.L0043D140:
/* 03D140 0043D140 8F9985D4 */  lw          $t9, %call16(st_currentifd)($gp)
/* 03D144 0043D144 0320F809 */  jalr        $t9
/* 03D148 0043D148 00000000 */   nop
/* 03D14C 0043D14C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03D150 0043D150 AFA20038 */  sw          $v0, 0x38($sp)
/* 03D154 0043D154 8FA40044 */  lw          $a0, 0x44($sp)
/* 03D158 0043D158 8F9985DC */  lw          $t9, %call16(st_setfd)($gp)
/* 03D15C 0043D15C 0320F809 */  jalr        $t9
/* 03D160 0043D160 00000000 */   nop
/* 03D164 0043D164 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03D168 0043D168 8FAB0050 */  lw          $t3, 0x50($sp)
/* 03D16C 0043D16C 00002825 */  move        $a1, $zero
/* 03D170 0043D170 8F9985FC */  lw          $t9, %call16(st_symadd)($gp)
/* 03D174 0043D174 8D640000 */  lw          $a0, 0x0($t3)
/* 03D178 0043D178 AFB00010 */  sw          $s0, 0x10($sp)
/* 03D17C 0043D17C 24060008 */  addiu       $a2, $zero, 0x8
/* 03D180 0043D180 0320F809 */  jalr        $t9
/* 03D184 0043D184 24070001 */   addiu      $a3, $zero, 0x1
/* 03D188 0043D188 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03D18C 0043D18C 00408025 */  move        $s0, $v0
/* 03D190 0043D190 8FA40044 */  lw          $a0, 0x44($sp)
/* 03D194 0043D194 8F998608 */  lw          $t9, %call16(st_psym_ifd_isym)($gp)
/* 03D198 0043D198 8FA50048 */  lw          $a1, 0x48($sp)
/* 03D19C 0043D19C 0320F809 */  jalr        $t9
/* 03D1A0 0043D1A0 00000000 */   nop
/* 03D1A4 0043D1A4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03D1A8 0043D1A8 AFA20050 */  sw          $v0, 0x50($sp)
/* 03D1AC 0043D1AC 8F9985D4 */  lw          $t9, %call16(st_currentifd)($gp)
/* 03D1B0 0043D1B0 0320F809 */  jalr        $t9
/* 03D1B4 0043D1B4 00000000 */   nop
/* 03D1B8 0043D1B8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03D1BC 0043D1BC 00402025 */  move        $a0, $v0
/* 03D1C0 0043D1C0 8F998604 */  lw          $t9, %call16(st_pcfd_ifd)($gp)
/* 03D1C4 0043D1C4 0320F809 */  jalr        $t9
/* 03D1C8 0043D1C8 00000000 */   nop
/* 03D1CC 0043D1CC 8FAC0050 */  lw          $t4, 0x50($sp)
/* 03D1D0 0043D1D0 8C4D0000 */  lw          $t5, 0x0($v0)
/* 03D1D4 0043D1D4 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03D1D8 0043D1D8 8D840008 */  lw          $a0, 0x8($t4)
/* 03D1DC 0043D1DC 8DAE0030 */  lw          $t6, 0x30($t5)
/* 03D1E0 0043D1E0 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03D1E4 0043D1E4 00812024 */  and         $a0, $a0, $at
/* 03D1E8 0043D1E8 01C4082B */  sltu        $at, $t6, $a0
/* 03D1EC 0043D1EC 1420000B */  bnez        $at, .L0043D21C
/* 03D1F0 0043D1F0 8FBC0020 */   lw         $gp, 0x20($sp)
/* 03D1F4 0043D1F4 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03D1F8 0043D1F8 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03D1FC 0043D1FC 50810008 */  beql        $a0, $at, .L0043D220
/* 03D200 0043D200 8FB8003C */   lw         $t8, 0x3C($sp)
/* 03D204 0043D204 8F99860C */  lw          $t9, %call16(st_paux_iaux)($gp)
/* 03D208 0043D208 0320F809 */  jalr        $t9
/* 03D20C 0043D20C 00000000 */   nop
/* 03D210 0043D210 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03D214 0043D214 260F0001 */  addiu       $t7, $s0, 0x1
/* 03D218 0043D218 AC4F0000 */  sw          $t7, 0x0($v0)
.L0043D21C:
/* 03D21C 0043D21C 8FB8003C */  lw          $t8, 0x3C($sp)
.L0043D220:
/* 03D220 0043D220 24010001 */  addiu       $at, $zero, 0x1
/* 03D224 0043D224 8FB90054 */  lw          $t9, 0x54($sp)
/* 03D228 0043D228 17010017 */  bne         $t8, $at, .L0043D288
/* 03D22C 0043D22C 00000000 */   nop
/* 03D230 0043D230 8F22000C */  lw          $v0, 0xC($t9)
/* 03D234 0043D234 2401000E */  addiu       $at, $zero, 0xE
/* 03D238 0043D238 00002825 */  move        $a1, $zero
/* 03D23C 0043D23C 00024682 */  srl         $t0, $v0, 26
/* 03D240 0043D240 15010011 */  bne         $t0, $at, .L0043D288
/* 03D244 0043D244 00000000 */   nop
/* 03D248 0043D248 8F99862C */  lw          $t9, %call16(st_idn_index_fext)($gp)
/* 03D24C 0043D24C 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03D250 0043D250 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03D254 0043D254 0320F809 */  jalr        $t9
/* 03D258 0043D258 00412024 */   and        $a0, $v0, $at
/* 03D25C 0043D25C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03D260 0043D260 8FA40058 */  lw          $a0, 0x58($sp)
/* 03D264 0043D264 00402825 */  move        $a1, $v0
/* 03D268 0043D268 8F9985D0 */  lw          $t9, %call16(st_setidn)($gp)
/* 03D26C 0043D26C 0320F809 */  jalr        $t9
/* 03D270 0043D270 00000000 */   nop
/* 03D274 0043D274 8FAA0054 */  lw          $t2, 0x54($sp)
/* 03D278 0043D278 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03D27C 0043D27C 9549000C */  lhu         $t1, 0xC($t2)
/* 03D280 0043D280 312BFC1F */  andi        $t3, $t1, 0xFC1F
/* 03D284 0043D284 A54B000C */  sh          $t3, 0xC($t2)
.L0043D288:
/* 03D288 0043D288 8F99862C */  lw          $t9, %call16(st_idn_index_fext)($gp)
/* 03D28C 0043D28C 02002025 */  move        $a0, $s0
/* 03D290 0043D290 00002825 */  move        $a1, $zero
/* 03D294 0043D294 0320F809 */  jalr        $t9
/* 03D298 0043D298 00000000 */   nop
/* 03D29C 0043D29C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03D2A0 0043D2A0 AFA20058 */  sw          $v0, 0x58($sp)
/* 03D2A4 0043D2A4 8FA40038 */  lw          $a0, 0x38($sp)
/* 03D2A8 0043D2A8 8F9985DC */  lw          $t9, %call16(st_setfd)($gp)
/* 03D2AC 0043D2AC 0320F809 */  jalr        $t9
/* 03D2B0 0043D2B0 00000000 */   nop
/* 03D2B4 0043D2B4 8FBF0024 */  lw          $ra, 0x24($sp)
/* 03D2B8 0043D2B8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03D2BC 0043D2BC 8FA20058 */  lw          $v0, 0x58($sp)
/* 03D2C0 0043D2C0 8FB0001C */  lw          $s0, 0x1C($sp)
/* 03D2C4 0043D2C4 03E00008 */  jr          $ra
/* 03D2C8 0043D2C8 27BD0058 */   addiu      $sp, $sp, 0x58
