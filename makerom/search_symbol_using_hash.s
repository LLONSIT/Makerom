glabel search_symbol_using_hash # 281
# _gp_disp: 0xFBF4394
.set noreorder; .cpload $t9; # .set reorder
/* 0299B8 004299B8 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 0299BC 004299BC 8F998334 */  lw          $t9, %call16(obj_dynflags)($gp)
/* 0299C0 004299C0 AFBF002C */  sw          $ra, 0x2C($sp)
/* 0299C4 004299C4 AFB30024 */  sw          $s3, 0x24($sp)
/* 0299C8 004299C8 AFB20020 */  sw          $s2, 0x20($sp)
/* 0299CC 004299CC AFB1001C */  sw          $s1, 0x1C($sp)
/* 0299D0 004299D0 00808825 */  move        $s1, $a0
/* 0299D4 004299D4 00C09025 */  move        $s2, $a2
/* 0299D8 004299D8 00A09825 */  move        $s3, $a1
/* 0299DC 004299DC AFBC0028 */  sw          $gp, 0x28($sp)
/* 0299E0 004299E0 0320F809 */  jalr        $t9
/* 0299E4 004299E4 AFB00018 */   sw         $s0, 0x18($sp)
/* 0299E8 004299E8 304E0002 */  andi        $t6, $v0, 0x2
/* 0299EC 004299EC 15C0000F */  bnez        $t6, .L00429A2C
/* 0299F0 004299F0 8FBC0028 */   lw         $gp, 0x28($sp)
/* 0299F4 004299F4 8F9983FC */  lw          $t9, %call16(obj_nbucket)($gp)
/* 0299F8 004299F8 02202025 */  move        $a0, $s1
/* 0299FC 004299FC 0320F809 */  jalr        $t9
/* 029A00 00429A00 00000000 */   nop
/* 029A04 00429A04 8FBC0028 */  lw          $gp, 0x28($sp)
/* 029A08 00429A08 244FFFFF */  addiu       $t7, $v0, -0x1
/* 029A0C 00429A0C 01F22824 */  and         $a1, $t7, $s2
/* 029A10 00429A10 8F998400 */  lw          $t9, %call16(obj_hash_bucket)($gp)
/* 029A14 00429A14 02202025 */  move        $a0, $s1
/* 029A18 00429A18 0320F809 */  jalr        $t9
/* 029A1C 00429A1C 00000000 */   nop
/* 029A20 00429A20 8FBC0028 */  lw          $gp, 0x28($sp)
/* 029A24 00429A24 10000011 */  b           .L00429A6C
/* 029A28 00429A28 00408025 */   move       $s0, $v0
.L00429A2C:
/* 029A2C 00429A2C 8F9983FC */  lw          $t9, %call16(obj_nbucket)($gp)
/* 029A30 00429A30 02202025 */  move        $a0, $s1
/* 029A34 00429A34 0320F809 */  jalr        $t9
/* 029A38 00429A38 00000000 */   nop
/* 029A3C 00429A3C 0242001B */  divu        $zero, $s2, $v0
/* 029A40 00429A40 8FBC0028 */  lw          $gp, 0x28($sp)
/* 029A44 00429A44 00002810 */  mfhi        $a1
/* 029A48 00429A48 02202025 */  move        $a0, $s1
/* 029A4C 00429A4C 8F998400 */  lw          $t9, %call16(obj_hash_bucket)($gp)
/* 029A50 00429A50 14400002 */  bnez        $v0, .L00429A5C
/* 029A54 00429A54 00000000 */   nop
/* 029A58 00429A58 0007000D */  break       7
.L00429A5C:
/* 029A5C 00429A5C 0320F809 */  jalr        $t9
/* 029A60 00429A60 00000000 */   nop
/* 029A64 00429A64 8FBC0028 */  lw          $gp, 0x28($sp)
/* 029A68 00429A68 00408025 */  move        $s0, $v0
.L00429A6C:
/* 029A6C 00429A6C 8F9983F8 */  lw          $t9, %call16(obj_dynsym_hash_value)($gp)
/* 029A70 00429A70 02202025 */  move        $a0, $s1
/* 029A74 00429A74 02002825 */  move        $a1, $s0
/* 029A78 00429A78 0320F809 */  jalr        $t9
/* 029A7C 00429A7C 00000000 */   nop
/* 029A80 00429A80 1452000E */  bne         $v0, $s2, .L00429ABC
/* 029A84 00429A84 8FBC0028 */   lw         $gp, 0x28($sp)
/* 029A88 00429A88 8F9983F0 */  lw          $t9, %call16(obj_dynsym_name)($gp)
/* 029A8C 00429A8C 02202025 */  move        $a0, $s1
/* 029A90 00429A90 02002825 */  move        $a1, $s0
/* 029A94 00429A94 0320F809 */  jalr        $t9
/* 029A98 00429A98 00000000 */   nop
/* 029A9C 00429A9C 8FBC0028 */  lw          $gp, 0x28($sp)
/* 029AA0 00429AA0 00402025 */  move        $a0, $v0
/* 029AA4 00429AA4 02602825 */  move        $a1, $s3
/* 029AA8 00429AA8 8F9980A8 */  lw          $t9, %call16(strcmp)($gp)
/* 029AAC 00429AAC 0320F809 */  jalr        $t9
/* 029AB0 00429AB0 00000000 */   nop
/* 029AB4 00429AB4 10400027 */  beqz        $v0, .L00429B54
/* 029AB8 00429AB8 8FBC0028 */   lw         $gp, 0x28($sp)
.L00429ABC:
/* 029ABC 00429ABC 8F998404 */  lw          $t9, %call16(obj_hash_chain)($gp)
/* 029AC0 00429AC0 02202025 */  move        $a0, $s1
/* 029AC4 00429AC4 02002825 */  move        $a1, $s0
/* 029AC8 00429AC8 0320F809 */  jalr        $t9
/* 029ACC 00429ACC 00000000 */   nop
/* 029AD0 00429AD0 8FBC0028 */  lw          $gp, 0x28($sp)
/* 029AD4 00429AD4 1040001D */  beqz        $v0, .L00429B4C
/* 029AD8 00429AD8 00408025 */   move       $s0, $v0
.L00429ADC:
/* 029ADC 00429ADC 8F9983F8 */  lw          $t9, %call16(obj_dynsym_hash_value)($gp)
/* 029AE0 00429AE0 02202025 */  move        $a0, $s1
/* 029AE4 00429AE4 02002825 */  move        $a1, $s0
/* 029AE8 00429AE8 0320F809 */  jalr        $t9
/* 029AEC 00429AEC 00000000 */   nop
/* 029AF0 00429AF0 1452000E */  bne         $v0, $s2, .L00429B2C
/* 029AF4 00429AF4 8FBC0028 */   lw         $gp, 0x28($sp)
/* 029AF8 00429AF8 8F9983F0 */  lw          $t9, %call16(obj_dynsym_name)($gp)
/* 029AFC 00429AFC 02202025 */  move        $a0, $s1
/* 029B00 00429B00 02002825 */  move        $a1, $s0
/* 029B04 00429B04 0320F809 */  jalr        $t9
/* 029B08 00429B08 00000000 */   nop
/* 029B0C 00429B0C 8FBC0028 */  lw          $gp, 0x28($sp)
/* 029B10 00429B10 00402025 */  move        $a0, $v0
/* 029B14 00429B14 02602825 */  move        $a1, $s3
/* 029B18 00429B18 8F9980A8 */  lw          $t9, %call16(strcmp)($gp)
/* 029B1C 00429B1C 0320F809 */  jalr        $t9
/* 029B20 00429B20 00000000 */   nop
/* 029B24 00429B24 1040000B */  beqz        $v0, .L00429B54
/* 029B28 00429B28 8FBC0028 */   lw         $gp, 0x28($sp)
.L00429B2C:
/* 029B2C 00429B2C 8F998404 */  lw          $t9, %call16(obj_hash_chain)($gp)
/* 029B30 00429B30 02202025 */  move        $a0, $s1
/* 029B34 00429B34 02002825 */  move        $a1, $s0
/* 029B38 00429B38 0320F809 */  jalr        $t9
/* 029B3C 00429B3C 00000000 */   nop
/* 029B40 00429B40 8FBC0028 */  lw          $gp, 0x28($sp)
/* 029B44 00429B44 1440FFE5 */  bnez        $v0, .L00429ADC
/* 029B48 00429B48 00408025 */   move       $s0, $v0
.L00429B4C:
/* 029B4C 00429B4C 10000002 */  b           .L00429B58
/* 029B50 00429B50 2402FFFF */   addiu      $v0, $zero, -0x1
.L00429B54:
/* 029B54 00429B54 02001025 */  move        $v0, $s0
.L00429B58:
/* 029B58 00429B58 8FBF002C */  lw          $ra, 0x2C($sp)
/* 029B5C 00429B5C 8FB00018 */  lw          $s0, 0x18($sp)
/* 029B60 00429B60 8FB1001C */  lw          $s1, 0x1C($sp)
/* 029B64 00429B64 8FB20020 */  lw          $s2, 0x20($sp)
/* 029B68 00429B68 8FB30024 */  lw          $s3, 0x24($sp)
/* 029B6C 00429B6C 03E00008 */  jr          $ra
/* 029B70 00429B70 27BD0030 */   addiu      $sp, $sp, 0x30
