glabel func_00421F40 # 182
# _gp_disp: 0xFBFBE00
.set noreorder; .cpload $t9; # .set reorder
/* 021F4C 00421F4C 27BDFFA8 */  addiu       $sp, $sp, -0x58
/* 021F50 00421F50 8F9981C8 */  lw          $t9, %call16(_elf64_fsize)($gp)
/* 021F54 00421F54 AFB00014 */  sw          $s0, 0x14($sp)
/* 021F58 00421F58 00808025 */  move        $s0, $a0
/* 021F5C 00421F5C AFBF001C */  sw          $ra, 0x1C($sp)
/* 021F60 00421F60 AFBC0018 */  sw          $gp, 0x18($sp)
/* 021F64 00421F64 AFA5005C */  sw          $a1, 0x5C($sp)
/* 021F68 00421F68 8E060044 */  lw          $a2, 0x44($s0)
/* 021F6C 00421F6C 24050001 */  addiu       $a1, $zero, 0x1
/* 021F70 00421F70 0320F809 */  jalr        $t9
/* 021F74 00421F74 24040003 */   addiu      $a0, $zero, 0x3
/* 021F78 00421F78 8E0E0034 */  lw          $t6, 0x34($s0)
/* 021F7C 00421F7C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 021F80 00421F80 00403025 */  move        $a2, $v0
/* 021F84 00421F84 01C2082B */  sltu        $at, $t6, $v0
/* 021F88 00421F88 10200006 */  beqz        $at, .L00421FA4
/* 021F8C 00421F8C 8FB8005C */   lw         $t8, 0x5C($sp)
/* 021F90 00421F90 8F8186E8 */  lw          $at, %got(_elf_err)($gp)
/* 021F94 00421F94 240F020B */  addiu       $t7, $zero, 0x20B
/* 021F98 00421F98 2402FFFF */  addiu       $v0, $zero, -0x1
/* 021F9C 00421F9C 1000004D */  b           .L004220D4
/* 021FA0 00421FA0 AC2F0000 */   sw         $t7, 0x0($at)
.L00421FA4:
/* 021FA4 00421FA4 13000007 */  beqz        $t8, .L00421FC4
/* 021FA8 00421FA8 2C410040 */   sltiu      $at, $v0, 0x40
/* 021FAC 00421FAC 14200005 */  bnez        $at, .L00421FC4
/* 021FB0 00421FB0 24190001 */   addiu      $t9, $zero, 0x1
/* 021FB4 00421FB4 8E020028 */  lw          $v0, 0x28($s0)
/* 021FB8 00421FB8 AE19000C */  sw          $t9, 0xC($s0)
/* 021FBC 00421FBC 10000013 */  b           .L0042200C
/* 021FC0 00421FC0 AE020050 */   sw         $v0, 0x50($s0)
.L00421FC4:
/* 021FC4 00421FC4 8F998064 */  lw          $t9, %call16(malloc)($gp)
/* 021FC8 00421FC8 24040040 */  addiu       $a0, $zero, 0x40
/* 021FCC 00421FCC AFA60054 */  sw          $a2, 0x54($sp)
/* 021FD0 00421FD0 0320F809 */  jalr        $t9
/* 021FD4 00421FD4 00000000 */   nop
/* 021FD8 00421FD8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 021FDC 00421FDC 8FA60054 */  lw          $a2, 0x54($sp)
/* 021FE0 00421FE0 14400006 */  bnez        $v0, .L00421FFC
/* 021FE4 00421FE4 AE020050 */   sw         $v0, 0x50($s0)
/* 021FE8 00421FE8 8F8186E8 */  lw          $at, %got(_elf_err)($gp)
/* 021FEC 00421FEC 2408040C */  addiu       $t0, $zero, 0x40C
/* 021FF0 00421FF0 2402FFFF */  addiu       $v0, $zero, -0x1
/* 021FF4 00421FF4 10000037 */  b           .L004220D4
/* 021FF8 00421FF8 AC280000 */   sw         $t0, 0x0($at)
.L00421FFC:
/* 021FFC 00421FFC 8E090088 */  lw          $t1, 0x88($s0)
/* 022000 00422000 8E020028 */  lw          $v0, 0x28($s0)
/* 022004 00422004 352A0002 */  ori         $t2, $t1, 0x2
/* 022008 00422008 AE0A0088 */  sw          $t2, 0x88($s0)
.L0042200C:
/* 02200C 0042200C 240B0003 */  addiu       $t3, $zero, 0x3
/* 022010 00422010 AFA20024 */  sw          $v0, 0x24($sp)
/* 022014 00422014 AFAB0028 */  sw          $t3, 0x28($sp)
/* 022018 00422018 AFA6002C */  sw          $a2, 0x2C($sp)
/* 02201C 0042201C 8E0C0044 */  lw          $t4, 0x44($s0)
/* 022020 00422020 8F998214 */  lw          $t9, %call16(_elf_vm)($gp)
/* 022024 00422024 240E0040 */  addiu       $t6, $zero, 0x40
/* 022028 00422028 AFAC0038 */  sw          $t4, 0x38($sp)
/* 02202C 0042202C 8E0D0050 */  lw          $t5, 0x50($s0)
/* 022030 00422030 240F0001 */  addiu       $t7, $zero, 0x1
/* 022034 00422034 AFAE0044 */  sw          $t6, 0x44($sp)
/* 022038 00422038 AFAF0050 */  sw          $t7, 0x50($sp)
/* 02203C 0042203C 02002025 */  move        $a0, $s0
/* 022040 00422040 00002825 */  move        $a1, $zero
/* 022044 00422044 0320F809 */  jalr        $t9
/* 022048 00422048 AFAD003C */   sw         $t5, 0x3C($sp)
/* 02204C 0042204C 14400008 */  bnez        $v0, .L00422070
/* 022050 00422050 8FBC0018 */   lw         $gp, 0x18($sp)
/* 022054 00422054 8F9981D8 */  lw          $t9, %call16(_elf64_xlatetom)($gp)
/* 022058 00422058 27A4003C */  addiu       $a0, $sp, 0x3C
/* 02205C 0042205C 27A50024 */  addiu       $a1, $sp, 0x24
/* 022060 00422060 0320F809 */  jalr        $t9
/* 022064 00422064 8E060040 */   lw         $a2, 0x40($s0)
/* 022068 00422068 14400010 */  bnez        $v0, .L004220AC
/* 02206C 0042206C 8FBC0018 */   lw         $gp, 0x18($sp)
.L00422070:
/* 022070 00422070 8E020088 */  lw          $v0, 0x88($s0)
/* 022074 00422074 2401FFFD */  addiu       $at, $zero, -0x3
/* 022078 00422078 30580002 */  andi        $t8, $v0, 0x2
/* 02207C 0042207C 53000009 */  beql        $t8, $zero, .L004220A4
/* 022080 00422080 AE000050 */   sw         $zero, 0x50($s0)
/* 022084 00422084 0041C824 */  and         $t9, $v0, $at
/* 022088 00422088 AE190088 */  sw          $t9, 0x88($s0)
/* 02208C 0042208C 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 022090 00422090 8E040050 */  lw          $a0, 0x50($s0)
/* 022094 00422094 0320F809 */  jalr        $t9
/* 022098 00422098 00000000 */   nop
/* 02209C 0042209C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0220A0 004220A0 AE000050 */  sw          $zero, 0x50($s0)
.L004220A4:
/* 0220A4 004220A4 1000000B */  b           .L004220D4
/* 0220A8 004220A8 2402FFFF */   addiu      $v0, $zero, -0x1
.L004220AC:
/* 0220AC 004220AC 8E090050 */  lw          $t1, 0x50($s0)
/* 0220B0 004220B0 8E080044 */  lw          $t0, 0x44($s0)
/* 0220B4 004220B4 00001025 */  move        $v0, $zero
/* 0220B8 004220B8 8D2A0014 */  lw          $t2, 0x14($t1)
/* 0220BC 004220BC 110A0005 */  beq         $t0, $t2, .L004220D4
/* 0220C0 004220C0 00000000 */   nop
/* 0220C4 004220C4 8F8186E8 */  lw          $at, %got(_elf_err)($gp)
/* 0220C8 004220C8 240B0212 */  addiu       $t3, $zero, 0x212
/* 0220CC 004220CC 1000FFE8 */  b           .L00422070
/* 0220D0 004220D0 AC2B0000 */   sw         $t3, 0x0($at)
.L004220D4:
/* 0220D4 004220D4 8FBF001C */  lw          $ra, 0x1C($sp)
/* 0220D8 004220D8 8FB00014 */  lw          $s0, 0x14($sp)
/* 0220DC 004220DC 27BD0058 */  addiu       $sp, $sp, 0x58
/* 0220E0 004220E0 03E00008 */  jr          $ra
/* 0220E4 004220E4 00000000 */   nop
