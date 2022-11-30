glabel st_iaux_copyty # 709
# _gp_disp: 0xFBDFE68
.set noreorder; .cpload $t9; # .set reorder
/* 03DEE4 0043DEE4 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 03DEE8 0043DEE8 8F9985F0 */  lw          $t9, %call16(st_paux_ifd_iaux)($gp)
/* 03DEEC 0043DEEC AFBF0024 */  sw          $ra, 0x24($sp)
/* 03DEF0 0043DEF0 AFBC0020 */  sw          $gp, 0x20($sp)
/* 03DEF4 0043DEF4 AFB2001C */  sw          $s2, 0x1C($sp)
/* 03DEF8 0043DEF8 AFB10018 */  sw          $s1, 0x18($sp)
/* 03DEFC 0043DEFC AFB00014 */  sw          $s0, 0x14($sp)
/* 03DF00 0043DF00 AFA5003C */  sw          $a1, 0x3C($sp)
/* 03DF04 0043DF04 8CA50008 */  lw          $a1, 0x8($a1)
/* 03DF08 0043DF08 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03DF0C 0043DF0C 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03DF10 0043DF10 00809025 */  move        $s2, $a0
/* 03DF14 0043DF14 00008825 */  move        $s1, $zero
/* 03DF18 0043DF18 0320F809 */  jalr        $t9
/* 03DF1C 0043DF1C 00A12824 */   and        $a1, $a1, $at
/* 03DF20 0043DF20 8FA7003C */  lw          $a3, 0x3C($sp)
/* 03DF24 0043DF24 24010006 */  addiu       $at, $zero, 0x6
/* 03DF28 0043DF28 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03DF2C 0043DF2C 8CEF0008 */  lw          $t7, 0x8($a3)
/* 03DF30 0043DF30 000FC682 */  srl         $t8, $t7, 26
/* 03DF34 0043DF34 57010003 */  bnel        $t8, $at, .L0043DF44
/* 03DF38 0043DF38 00111880 */   sll        $v1, $s1, 2
/* 03DF3C 0043DF3C 24110001 */  addiu       $s1, $zero, 0x1
/* 03DF40 0043DF40 00111880 */  sll         $v1, $s1, 2
.L0043DF44:
/* 03DF44 0043DF44 00623021 */  addu        $a2, $v1, $v0
/* 03DF48 0043DF48 90C40000 */  lbu         $a0, 0x0($a2)
/* 03DF4C 0043DF4C 24010025 */  addiu       $at, $zero, 0x25
/* 03DF50 0043DF50 24630004 */  addiu       $v1, $v1, 0x4
/* 03DF54 0043DF54 3084003F */  andi        $a0, $a0, 0x3F
/* 03DF58 0043DF58 1481000C */  bne         $a0, $at, .L0043DF8C
/* 03DF5C 0043DF5C 26310001 */   addiu      $s1, $s1, 0x1
/* 03DF60 0043DF60 0043C821 */  addu        $t9, $v0, $v1
/* 03DF64 0043DF64 8F290000 */  lw          $t1, 0x0($t9)
/* 03DF68 0043DF68 24080FFF */  addiu       $t0, $zero, 0xFFF
/* 03DF6C 0043DF6C 00095502 */  srl         $t2, $t1, 20
/* 03DF70 0043DF70 550A0004 */  bnel        $t0, $t2, .L0043DF84
/* 03DF74 0043DF74 26310001 */   addiu      $s1, $s1, 0x1
/* 03DF78 0043DF78 26310001 */  addiu       $s1, $s1, 0x1
/* 03DF7C 0043DF7C 24630004 */  addiu       $v1, $v1, 0x4
/* 03DF80 0043DF80 26310001 */  addiu       $s1, $s1, 0x1
.L0043DF84:
/* 03DF84 0043DF84 10000025 */  b           .L0043E01C
/* 03DF88 0043DF88 24630004 */   addiu      $v1, $v1, 0x4
.L0043DF8C:
/* 03DF8C 0043DF8C 24010011 */  addiu       $at, $zero, 0x11
/* 03DF90 0043DF90 1081000C */  beq         $a0, $at, .L0043DFC4
/* 03DF94 0043DF94 00435821 */   addu       $t3, $v0, $v1
/* 03DF98 0043DF98 24010014 */  addiu       $at, $zero, 0x14
/* 03DF9C 0043DF9C 10810009 */  beq         $a0, $at, .L0043DFC4
/* 03DFA0 0043DFA0 2401000C */   addiu      $at, $zero, 0xC
/* 03DFA4 0043DFA4 10810007 */  beq         $a0, $at, .L0043DFC4
/* 03DFA8 0043DFA8 2401000D */   addiu      $at, $zero, 0xD
/* 03DFAC 0043DFAC 10810005 */  beq         $a0, $at, .L0043DFC4
/* 03DFB0 0043DFB0 2401000F */   addiu      $at, $zero, 0xF
/* 03DFB4 0043DFB4 10810003 */  beq         $a0, $at, .L0043DFC4
/* 03DFB8 0043DFB8 2401000E */   addiu      $at, $zero, 0xE
/* 03DFBC 0043DFBC 5481000C */  bnel        $a0, $at, .L0043DFF0
/* 03DFC0 0043DFC0 24010010 */   addiu      $at, $zero, 0x10
.L0043DFC4:
/* 03DFC4 0043DFC4 8D6C0000 */  lw          $t4, 0x0($t3)
/* 03DFC8 0043DFC8 24080FFF */  addiu       $t0, $zero, 0xFFF
/* 03DFCC 0043DFCC 000C6D02 */  srl         $t5, $t4, 20
/* 03DFD0 0043DFD0 550D0004 */  bnel        $t0, $t5, .L0043DFE4
/* 03DFD4 0043DFD4 26310001 */   addiu      $s1, $s1, 0x1
/* 03DFD8 0043DFD8 26310001 */  addiu       $s1, $s1, 0x1
/* 03DFDC 0043DFDC 24630004 */  addiu       $v1, $v1, 0x4
/* 03DFE0 0043DFE0 26310001 */  addiu       $s1, $s1, 0x1
.L0043DFE4:
/* 03DFE4 0043DFE4 1000000D */  b           .L0043E01C
/* 03DFE8 0043DFE8 24630004 */   addiu      $v1, $v1, 0x4
/* 03DFEC 0043DFEC 24010010 */  addiu       $at, $zero, 0x10
.L0043DFF0:
/* 03DFF0 0043DFF0 1481000A */  bne         $a0, $at, .L0043E01C
/* 03DFF4 0043DFF4 00437021 */   addu       $t6, $v0, $v1
/* 03DFF8 0043DFF8 8DCF0000 */  lw          $t7, 0x0($t6)
/* 03DFFC 0043DFFC 24080FFF */  addiu       $t0, $zero, 0xFFF
/* 03E000 0043E000 000FC502 */  srl         $t8, $t7, 20
/* 03E004 0043E004 55180004 */  bnel        $t0, $t8, .L0043E018
/* 03E008 0043E008 26310003 */   addiu      $s1, $s1, 0x3
/* 03E00C 0043E00C 26310001 */  addiu       $s1, $s1, 0x1
/* 03E010 0043E010 24630004 */  addiu       $v1, $v1, 0x4
/* 03E014 0043E014 26310003 */  addiu       $s1, $s1, 0x3
.L0043E018:
/* 03E018 0043E018 2463000C */  addiu       $v1, $v1, 0xC
.L0043E01C:
/* 03E01C 0043E01C 94D90002 */  lhu         $t9, 0x2($a2)
/* 03E020 0043E020 24040003 */  addiu       $a0, $zero, 0x3
/* 03E024 0043E024 24080FFF */  addiu       $t0, $zero, 0xFFF
/* 03E028 0043E028 00194B02 */  srl         $t1, $t9, 12
/* 03E02C 0043E02C 14890009 */  bne         $a0, $t1, .L0043E054
/* 03E030 0043E030 00435021 */   addu       $t2, $v0, $v1
/* 03E034 0043E034 8D4B0000 */  lw          $t3, 0x0($t2)
/* 03E038 0043E038 000B6502 */  srl         $t4, $t3, 20
/* 03E03C 0043E03C 550C0004 */  bnel        $t0, $t4, .L0043E050
/* 03E040 0043E040 26310004 */   addiu      $s1, $s1, 0x4
/* 03E044 0043E044 26310001 */  addiu       $s1, $s1, 0x1
/* 03E048 0043E048 24630004 */  addiu       $v1, $v1, 0x4
/* 03E04C 0043E04C 26310004 */  addiu       $s1, $s1, 0x4
.L0043E050:
/* 03E050 0043E050 24630010 */  addiu       $v1, $v1, 0x10
.L0043E054:
/* 03E054 0043E054 90CD0002 */  lbu         $t5, 0x2($a2)
/* 03E058 0043E058 00437821 */  addu        $t7, $v0, $v1
/* 03E05C 0043E05C 31AE000F */  andi        $t6, $t5, 0xF
/* 03E060 0043E060 548E000A */  bnel        $a0, $t6, .L0043E08C
/* 03E064 0043E064 90C90003 */   lbu        $t1, 0x3($a2)
/* 03E068 0043E068 8DF80000 */  lw          $t8, 0x0($t7)
/* 03E06C 0043E06C 0018CD02 */  srl         $t9, $t8, 20
/* 03E070 0043E070 55190004 */  bnel        $t0, $t9, .L0043E084
/* 03E074 0043E074 26310004 */   addiu      $s1, $s1, 0x4
/* 03E078 0043E078 26310001 */  addiu       $s1, $s1, 0x1
/* 03E07C 0043E07C 24630004 */  addiu       $v1, $v1, 0x4
/* 03E080 0043E080 26310004 */  addiu       $s1, $s1, 0x4
.L0043E084:
/* 03E084 0043E084 24630010 */  addiu       $v1, $v1, 0x10
/* 03E088 0043E088 90C90003 */  lbu         $t1, 0x3($a2)
.L0043E08C:
/* 03E08C 0043E08C 00435821 */  addu        $t3, $v0, $v1
/* 03E090 0043E090 00095102 */  srl         $t2, $t1, 4
/* 03E094 0043E094 548A000A */  bnel        $a0, $t2, .L0043E0C0
/* 03E098 0043E098 8CC50000 */   lw         $a1, 0x0($a2)
/* 03E09C 0043E09C 8D6C0000 */  lw          $t4, 0x0($t3)
/* 03E0A0 0043E0A0 000C6D02 */  srl         $t5, $t4, 20
/* 03E0A4 0043E0A4 550D0004 */  bnel        $t0, $t5, .L0043E0B8
/* 03E0A8 0043E0A8 26310004 */   addiu      $s1, $s1, 0x4
/* 03E0AC 0043E0AC 26310001 */  addiu       $s1, $s1, 0x1
/* 03E0B0 0043E0B0 24630004 */  addiu       $v1, $v1, 0x4
/* 03E0B4 0043E0B4 26310004 */  addiu       $s1, $s1, 0x4
.L0043E0B8:
/* 03E0B8 0043E0B8 24630010 */  addiu       $v1, $v1, 0x10
/* 03E0BC 0043E0BC 8CC50000 */  lw          $a1, 0x0($a2)
.L0043E0C0:
/* 03E0C0 0043E0C0 00437821 */  addu        $t7, $v0, $v1
/* 03E0C4 0043E0C4 30AE000F */  andi        $t6, $a1, 0xF
/* 03E0C8 0043E0C8 548E000A */  bnel        $a0, $t6, .L0043E0F4
/* 03E0CC 0043E0CC 90C90001 */   lbu        $t1, 0x1($a2)
/* 03E0D0 0043E0D0 8DF80000 */  lw          $t8, 0x0($t7)
/* 03E0D4 0043E0D4 0018CD02 */  srl         $t9, $t8, 20
/* 03E0D8 0043E0D8 55190004 */  bnel        $t0, $t9, .L0043E0EC
/* 03E0DC 0043E0DC 26310004 */   addiu      $s1, $s1, 0x4
/* 03E0E0 0043E0E0 26310001 */  addiu       $s1, $s1, 0x1
/* 03E0E4 0043E0E4 24630004 */  addiu       $v1, $v1, 0x4
/* 03E0E8 0043E0E8 26310004 */  addiu       $s1, $s1, 0x4
.L0043E0EC:
/* 03E0EC 0043E0EC 24630010 */  addiu       $v1, $v1, 0x10
/* 03E0F0 0043E0F0 90C90001 */  lbu         $t1, 0x1($a2)
.L0043E0F4:
/* 03E0F4 0043E0F4 00435821 */  addu        $t3, $v0, $v1
/* 03E0F8 0043E0F8 00095102 */  srl         $t2, $t1, 4
/* 03E0FC 0043E0FC 548A000A */  bnel        $a0, $t2, .L0043E128
/* 03E100 0043E100 94CE0000 */   lhu        $t6, 0x0($a2)
/* 03E104 0043E104 8D6C0000 */  lw          $t4, 0x0($t3)
/* 03E108 0043E108 000C6D02 */  srl         $t5, $t4, 20
/* 03E10C 0043E10C 550D0004 */  bnel        $t0, $t5, .L0043E120
/* 03E110 0043E110 26310004 */   addiu      $s1, $s1, 0x4
/* 03E114 0043E114 26310001 */  addiu       $s1, $s1, 0x1
/* 03E118 0043E118 24630004 */  addiu       $v1, $v1, 0x4
/* 03E11C 0043E11C 26310004 */  addiu       $s1, $s1, 0x4
.L0043E120:
/* 03E120 0043E120 24630010 */  addiu       $v1, $v1, 0x10
/* 03E124 0043E124 94CE0000 */  lhu         $t6, 0x0($a2)
.L0043E128:
/* 03E128 0043E128 0043C021 */  addu        $t8, $v0, $v1
/* 03E12C 0043E12C 000557C2 */  srl         $t2, $a1, 31
/* 03E130 0043E130 31CF000F */  andi        $t7, $t6, 0xF
/* 03E134 0043E134 148F0007 */  bne         $a0, $t7, .L0043E154
/* 03E138 0043E138 00000000 */   nop
/* 03E13C 0043E13C 8F190000 */  lw          $t9, 0x0($t8)
/* 03E140 0043E140 00194D02 */  srl         $t1, $t9, 20
/* 03E144 0043E144 55090003 */  bnel        $t0, $t1, .L0043E154
/* 03E148 0043E148 26310004 */   addiu      $s1, $s1, 0x4
/* 03E14C 0043E14C 26310001 */  addiu       $s1, $s1, 0x1
/* 03E150 0043E150 26310004 */  addiu       $s1, $s1, 0x4
.L0043E154:
/* 03E154 0043E154 11400002 */  beqz        $t2, .L0043E160
/* 03E158 0043E158 00000000 */   nop
/* 03E15C 0043E15C 26310001 */  addiu       $s1, $s1, 0x1
.L0043E160:
/* 03E160 0043E160 1A200025 */  blez        $s1, .L0043E1F8
/* 03E164 0043E164 00008025 */   move       $s0, $zero
/* 03E168 0043E168 8FA7003C */  lw          $a3, 0x3C($sp)
.L0043E16C:
/* 03E16C 0043E16C 02402025 */  move        $a0, $s2
/* 03E170 0043E170 16000011 */  bnez        $s0, .L0043E1B8
/* 03E174 0043E174 8CE20008 */   lw         $v0, 0x8($a3)
/* 03E178 0043E178 8F9985F0 */  lw          $t9, %call16(st_paux_ifd_iaux)($gp)
/* 03E17C 0043E17C 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03E180 0043E180 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03E184 0043E184 00415824 */  and         $t3, $v0, $at
/* 03E188 0043E188 01702821 */  addu        $a1, $t3, $s0
/* 03E18C 0043E18C 0320F809 */  jalr        $t9
/* 03E190 0043E190 02402025 */   move       $a0, $s2
/* 03E194 0043E194 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03E198 0043E198 8C440000 */  lw          $a0, 0x0($v0)
/* 03E19C 0043E19C 8F9985E4 */  lw          $t9, %call16(st_auxadd)($gp)
/* 03E1A0 0043E1A0 AFA40000 */  sw          $a0, 0x0($sp)
/* 03E1A4 0043E1A4 0320F809 */  jalr        $t9
/* 03E1A8 0043E1A8 00000000 */   nop
/* 03E1AC 0043E1AC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03E1B0 0043E1B0 1000000E */  b           .L0043E1EC
/* 03E1B4 0043E1B4 AFA2002C */   sw         $v0, 0x2C($sp)
.L0043E1B8:
/* 03E1B8 0043E1B8 8F9985F0 */  lw          $t9, %call16(st_paux_ifd_iaux)($gp)
/* 03E1BC 0043E1BC 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03E1C0 0043E1C0 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03E1C4 0043E1C4 00417024 */  and         $t6, $v0, $at
/* 03E1C8 0043E1C8 0320F809 */  jalr        $t9
/* 03E1CC 0043E1CC 01D02821 */   addu       $a1, $t6, $s0
/* 03E1D0 0043E1D0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03E1D4 0043E1D4 8C440000 */  lw          $a0, 0x0($v0)
/* 03E1D8 0043E1D8 8F9985E4 */  lw          $t9, %call16(st_auxadd)($gp)
/* 03E1DC 0043E1DC AFA40000 */  sw          $a0, 0x0($sp)
/* 03E1E0 0043E1E0 0320F809 */  jalr        $t9
/* 03E1E4 0043E1E4 00000000 */   nop
/* 03E1E8 0043E1E8 8FBC0020 */  lw          $gp, 0x20($sp)
.L0043E1EC:
/* 03E1EC 0043E1EC 26100001 */  addiu       $s0, $s0, 0x1
/* 03E1F0 0043E1F0 5611FFDE */  bnel        $s0, $s1, .L0043E16C
/* 03E1F4 0043E1F4 8FA7003C */   lw         $a3, 0x3C($sp)
.L0043E1F8:
/* 03E1F8 0043E1F8 8FBF0024 */  lw          $ra, 0x24($sp)
/* 03E1FC 0043E1FC 8FA2002C */  lw          $v0, 0x2C($sp)
/* 03E200 0043E200 8FB00014 */  lw          $s0, 0x14($sp)
/* 03E204 0043E204 8FB10018 */  lw          $s1, 0x18($sp)
/* 03E208 0043E208 8FB2001C */  lw          $s2, 0x1C($sp)
/* 03E20C 0043E20C 03E00008 */  jr          $ra
/* 03E210 0043E210 27BD0038 */   addiu      $sp, $sp, 0x38
