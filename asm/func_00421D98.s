glabel func_00421D98 # 181
# _gp_disp: 0xFBFBFA8
.set noreorder; .cpload $t9; # .set reorder
/* 021DA4 00421DA4 27BDFFA8 */  addiu       $sp, $sp, -0x58
/* 021DA8 00421DA8 8F9981F0 */  lw          $t9, %call16(_elf32_fsize)($gp)
/* 021DAC 00421DAC AFB00014 */  sw          $s0, 0x14($sp)
/* 021DB0 00421DB0 00808025 */  move        $s0, $a0
/* 021DB4 00421DB4 AFBF001C */  sw          $ra, 0x1C($sp)
/* 021DB8 00421DB8 AFBC0018 */  sw          $gp, 0x18($sp)
/* 021DBC 00421DBC AFA5005C */  sw          $a1, 0x5C($sp)
/* 021DC0 00421DC0 8E060044 */  lw          $a2, 0x44($s0)
/* 021DC4 00421DC4 24050001 */  addiu       $a1, $zero, 0x1
/* 021DC8 00421DC8 0320F809 */  jalr        $t9
/* 021DCC 00421DCC 24040003 */   addiu      $a0, $zero, 0x3
/* 021DD0 00421DD0 8E0E0034 */  lw          $t6, 0x34($s0)
/* 021DD4 00421DD4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 021DD8 00421DD8 00403025 */  move        $a2, $v0
/* 021DDC 00421DDC 01C2082B */  sltu        $at, $t6, $v0
/* 021DE0 00421DE0 10200006 */  beqz        $at, .L00421DFC
/* 021DE4 00421DE4 8FB8005C */   lw         $t8, 0x5C($sp)
/* 021DE8 00421DE8 8F8186E8 */  lw          $at, %got(_elf_err)($gp)
/* 021DEC 00421DEC 240F020B */  addiu       $t7, $zero, 0x20B
/* 021DF0 00421DF0 2402FFFF */  addiu       $v0, $zero, -0x1
/* 021DF4 00421DF4 1000004D */  b           .L00421F2C
/* 021DF8 00421DF8 AC2F0000 */   sw         $t7, 0x0($at)
.L00421DFC:
/* 021DFC 00421DFC 13000007 */  beqz        $t8, .L00421E1C
/* 021E00 00421E00 2C410034 */   sltiu      $at, $v0, 0x34
/* 021E04 00421E04 14200005 */  bnez        $at, .L00421E1C
/* 021E08 00421E08 24190001 */   addiu      $t9, $zero, 0x1
/* 021E0C 00421E0C 8E020028 */  lw          $v0, 0x28($s0)
/* 021E10 00421E10 AE19000C */  sw          $t9, 0xC($s0)
/* 021E14 00421E14 10000013 */  b           .L00421E64
/* 021E18 00421E18 AE020050 */   sw         $v0, 0x50($s0)
.L00421E1C:
/* 021E1C 00421E1C 8F998064 */  lw          $t9, %call16(malloc)($gp)
/* 021E20 00421E20 24040034 */  addiu       $a0, $zero, 0x34
/* 021E24 00421E24 AFA60054 */  sw          $a2, 0x54($sp)
/* 021E28 00421E28 0320F809 */  jalr        $t9
/* 021E2C 00421E2C 00000000 */   nop
/* 021E30 00421E30 8FBC0018 */  lw          $gp, 0x18($sp)
/* 021E34 00421E34 8FA60054 */  lw          $a2, 0x54($sp)
/* 021E38 00421E38 14400006 */  bnez        $v0, .L00421E54
/* 021E3C 00421E3C AE020050 */   sw         $v0, 0x50($s0)
/* 021E40 00421E40 8F8186E8 */  lw          $at, %got(_elf_err)($gp)
/* 021E44 00421E44 2408040C */  addiu       $t0, $zero, 0x40C
/* 021E48 00421E48 2402FFFF */  addiu       $v0, $zero, -0x1
/* 021E4C 00421E4C 10000037 */  b           .L00421F2C
/* 021E50 00421E50 AC280000 */   sw         $t0, 0x0($at)
.L00421E54:
/* 021E54 00421E54 8E090088 */  lw          $t1, 0x88($s0)
/* 021E58 00421E58 8E020028 */  lw          $v0, 0x28($s0)
/* 021E5C 00421E5C 352A0002 */  ori         $t2, $t1, 0x2
/* 021E60 00421E60 AE0A0088 */  sw          $t2, 0x88($s0)
.L00421E64:
/* 021E64 00421E64 240B0003 */  addiu       $t3, $zero, 0x3
/* 021E68 00421E68 AFA20024 */  sw          $v0, 0x24($sp)
/* 021E6C 00421E6C AFAB0028 */  sw          $t3, 0x28($sp)
/* 021E70 00421E70 AFA6002C */  sw          $a2, 0x2C($sp)
/* 021E74 00421E74 8E0C0044 */  lw          $t4, 0x44($s0)
/* 021E78 00421E78 8F998214 */  lw          $t9, %call16(_elf_vm)($gp)
/* 021E7C 00421E7C 240E0034 */  addiu       $t6, $zero, 0x34
/* 021E80 00421E80 AFAC0038 */  sw          $t4, 0x38($sp)
/* 021E84 00421E84 8E0D0050 */  lw          $t5, 0x50($s0)
/* 021E88 00421E88 240F0001 */  addiu       $t7, $zero, 0x1
/* 021E8C 00421E8C AFAE0044 */  sw          $t6, 0x44($sp)
/* 021E90 00421E90 AFAF0050 */  sw          $t7, 0x50($sp)
/* 021E94 00421E94 02002025 */  move        $a0, $s0
/* 021E98 00421E98 00002825 */  move        $a1, $zero
/* 021E9C 00421E9C 0320F809 */  jalr        $t9
/* 021EA0 00421EA0 AFAD003C */   sw         $t5, 0x3C($sp)
/* 021EA4 00421EA4 14400008 */  bnez        $v0, .L00421EC8
/* 021EA8 00421EA8 8FBC0018 */   lw         $gp, 0x18($sp)
/* 021EAC 00421EAC 8F9981FC */  lw          $t9, %call16(_elf32_xlatetom)($gp)
/* 021EB0 00421EB0 27A4003C */  addiu       $a0, $sp, 0x3C
/* 021EB4 00421EB4 27A50024 */  addiu       $a1, $sp, 0x24
/* 021EB8 00421EB8 0320F809 */  jalr        $t9
/* 021EBC 00421EBC 8E060040 */   lw         $a2, 0x40($s0)
/* 021EC0 00421EC0 14400010 */  bnez        $v0, .L00421F04
/* 021EC4 00421EC4 8FBC0018 */   lw         $gp, 0x18($sp)
.L00421EC8:
/* 021EC8 00421EC8 8E020088 */  lw          $v0, 0x88($s0)
/* 021ECC 00421ECC 2401FFFD */  addiu       $at, $zero, -0x3
/* 021ED0 00421ED0 30580002 */  andi        $t8, $v0, 0x2
/* 021ED4 00421ED4 53000009 */  beql        $t8, $zero, .L00421EFC
/* 021ED8 00421ED8 AE000050 */   sw         $zero, 0x50($s0)
/* 021EDC 00421EDC 0041C824 */  and         $t9, $v0, $at
/* 021EE0 00421EE0 AE190088 */  sw          $t9, 0x88($s0)
/* 021EE4 00421EE4 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 021EE8 00421EE8 8E040050 */  lw          $a0, 0x50($s0)
/* 021EEC 00421EEC 0320F809 */  jalr        $t9
/* 021EF0 00421EF0 00000000 */   nop
/* 021EF4 00421EF4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 021EF8 00421EF8 AE000050 */  sw          $zero, 0x50($s0)
.L00421EFC:
/* 021EFC 00421EFC 1000000B */  b           .L00421F2C
/* 021F00 00421F00 2402FFFF */   addiu      $v0, $zero, -0x1
.L00421F04:
/* 021F04 00421F04 8E090050 */  lw          $t1, 0x50($s0)
/* 021F08 00421F08 8E080044 */  lw          $t0, 0x44($s0)
/* 021F0C 00421F0C 00001025 */  move        $v0, $zero
/* 021F10 00421F10 8D2A0014 */  lw          $t2, 0x14($t1)
/* 021F14 00421F14 110A0005 */  beq         $t0, $t2, .L00421F2C
/* 021F18 00421F18 00000000 */   nop
/* 021F1C 00421F1C 8F8186E8 */  lw          $at, %got(_elf_err)($gp)
/* 021F20 00421F20 240B0212 */  addiu       $t3, $zero, 0x212
/* 021F24 00421F24 1000FFE8 */  b           .L00421EC8
/* 021F28 00421F28 AC2B0000 */   sw         $t3, 0x0($at)
.L00421F2C:
/* 021F2C 00421F2C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 021F30 00421F30 8FB00014 */  lw          $s0, 0x14($sp)
/* 021F34 00421F34 27BD0058 */  addiu       $sp, $sp, 0x58
/* 021F38 00421F38 03E00008 */  jr          $ra
/* 021F3C 00421F3C 00000000 */   nop
