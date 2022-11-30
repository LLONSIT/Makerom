glabel elf_strptr # 113
# _gp_disp: 0xFBFFE30
.set noreorder; .cpload $t9; # .set reorder
/* 01DF1C 0041DF1C 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 01DF20 0041DF20 AFB00014 */  sw          $s0, 0x14($sp)
/* 01DF24 0041DF24 00C08025 */  move        $s0, $a2
/* 01DF28 0041DF28 AFBF0024 */  sw          $ra, 0x24($sp)
/* 01DF2C 0041DF2C AFBC0020 */  sw          $gp, 0x20($sp)
/* 01DF30 0041DF30 AFB2001C */  sw          $s2, 0x1C($sp)
/* 01DF34 0041DF34 14800003 */  bnez        $a0, .L0041DF44
/* 01DF38 0041DF38 AFB10018 */   sw         $s1, 0x18($sp)
/* 01DF3C 0041DF3C 1000008D */  b           .L0041E174
/* 01DF40 0041DF40 00001025 */   move       $v0, $zero
.L0041DF44:
/* 01DF44 0041DF44 8C820048 */  lw          $v0, 0x48($a0)
/* 01DF48 0041DF48 24010002 */  addiu       $at, $zero, 0x2
/* 01DF4C 0041DF4C 54410004 */  bnel        $v0, $at, .L0041DF60
/* 01DF50 0041DF50 24010001 */   addiu      $at, $zero, 0x1
/* 01DF54 0041DF54 1000000A */  b           .L0041DF80
/* 01DF58 0041DF58 24110001 */   addiu      $s1, $zero, 0x1
/* 01DF5C 0041DF5C 24010001 */  addiu       $at, $zero, 0x1
.L0041DF60:
/* 01DF60 0041DF60 14410003 */  bne         $v0, $at, .L0041DF70
/* 01DF64 0041DF64 240E0505 */   addiu      $t6, $zero, 0x505
/* 01DF68 0041DF68 10000005 */  b           .L0041DF80
/* 01DF6C 0041DF6C 00008825 */   move       $s1, $zero
.L0041DF70:
/* 01DF70 0041DF70 8F8186E8 */  lw          $at, %got(_elf_err)($gp)
/* 01DF74 0041DF74 00001025 */  move        $v0, $zero
/* 01DF78 0041DF78 1000007E */  b           .L0041E174
/* 01DF7C 0041DF7C AC2E0000 */   sw         $t6, 0x0($at)
.L0041DF80:
/* 01DF80 0041DF80 8F998224 */  lw          $t9, %call16(_elf_getscn)($gp)
/* 01DF84 0041DF84 AFA40038 */  sw          $a0, 0x38($sp)
/* 01DF88 0041DF88 0320F809 */  jalr        $t9
/* 01DF8C 0041DF8C 00000000 */   nop
/* 01DF90 0041DF90 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01DF94 0041DF94 8FA40038 */  lw          $a0, 0x38($sp)
/* 01DF98 0041DF98 10400004 */  beqz        $v0, .L0041DFAC
/* 01DF9C 0041DF9C 00409025 */   move       $s2, $v0
/* 01DFA0 0041DFA0 8C430010 */  lw          $v1, 0x10($v0)
/* 01DFA4 0041DFA4 14600006 */  bnez        $v1, .L0041DFC0
/* 01DFA8 0041DFA8 00000000 */   nop
.L0041DFAC:
/* 01DFAC 0041DFAC 8F8186E8 */  lw          $at, %got(_elf_err)($gp)
/* 01DFB0 0041DFB0 240F0513 */  addiu       $t7, $zero, 0x513
/* 01DFB4 0041DFB4 00001025 */  move        $v0, $zero
/* 01DFB8 0041DFB8 1000006E */  b           .L0041E174
/* 01DFBC 0041DFBC AC2F0000 */   sw         $t7, 0x0($at)
.L0041DFC0:
/* 01DFC0 0041DFC0 12200005 */  beqz        $s1, .L0041DFD8
/* 01DFC4 0041DFC4 00000000 */   nop
/* 01DFC8 0041DFC8 8C780004 */  lw          $t8, 0x4($v1)
/* 01DFCC 0041DFCC 24010003 */  addiu       $at, $zero, 0x3
/* 01DFD0 0041DFD0 17010007 */  bne         $t8, $at, .L0041DFF0
/* 01DFD4 0041DFD4 00000000 */   nop
.L0041DFD8:
/* 01DFD8 0041DFD8 5620000B */  bnel        $s1, $zero, .L0041E008
/* 01DFDC 0041DFDC 8C890094 */   lw         $t1, 0x94($a0)
/* 01DFE0 0041DFE0 8C790004 */  lw          $t9, 0x4($v1)
/* 01DFE4 0041DFE4 24010003 */  addiu       $at, $zero, 0x3
/* 01DFE8 0041DFE8 53210007 */  beql        $t9, $at, .L0041E008
/* 01DFEC 0041DFEC 8C890094 */   lw         $t1, 0x94($a0)
.L0041DFF0:
/* 01DFF0 0041DFF0 8F8186E8 */  lw          $at, %got(_elf_err)($gp)
/* 01DFF4 0041DFF4 24080513 */  addiu       $t0, $zero, 0x513
/* 01DFF8 0041DFF8 00001025 */  move        $v0, $zero
/* 01DFFC 0041DFFC 1000005D */  b           .L0041E174
/* 01E000 0041E000 AC280000 */   sw         $t0, 0x0($at)
/* 01E004 0041E004 8C890094 */  lw          $t1, 0x94($a0)
.L0041E008:
/* 01E008 0041E008 312A0004 */  andi        $t2, $t1, 0x4
/* 01E00C 0041E00C 11400024 */  beqz        $t2, .L0041E0A0
/* 01E010 0041E010 00000000 */   nop
/* 01E014 0041E014 8F9981DC */  lw          $t9, %call16(elf_getdata)($gp)
/* 01E018 0041E018 02402025 */  move        $a0, $s2
/* 01E01C 0041E01C 00002825 */  move        $a1, $zero
/* 01E020 0041E020 0320F809 */  jalr        $t9
/* 01E024 0041E024 00000000 */   nop
/* 01E028 0041E028 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01E02C 0041E02C 1040004D */  beqz        $v0, .L0041E164
/* 01E030 0041E030 00408825 */   move       $s1, $v0
.L0041E034:
/* 01E034 0041E034 8C4B0000 */  lw          $t3, 0x0($v0)
/* 01E038 0041E038 1160000F */  beqz        $t3, .L0041E078
/* 01E03C 0041E03C 00000000 */   nop
/* 01E040 0041E040 8C43000C */  lw          $v1, 0xC($v0)
/* 01E044 0041E044 0203082B */  sltu        $at, $s0, $v1
/* 01E048 0041E048 1420000B */  bnez        $at, .L0041E078
/* 01E04C 0041E04C 00000000 */   nop
/* 01E050 0041E050 8C4C0008 */  lw          $t4, 0x8($v0)
/* 01E054 0041E054 006C6821 */  addu        $t5, $v1, $t4
/* 01E058 0041E058 020D082B */  sltu        $at, $s0, $t5
/* 01E05C 0041E05C 10200006 */  beqz        $at, .L0041E078
/* 01E060 0041E060 00000000 */   nop
/* 01E064 0041E064 8E2E0000 */  lw          $t6, 0x0($s1)
/* 01E068 0041E068 8E38000C */  lw          $t8, 0xC($s1)
/* 01E06C 0041E06C 01D07821 */  addu        $t7, $t6, $s0
/* 01E070 0041E070 10000040 */  b           .L0041E174
/* 01E074 0041E074 01F81023 */   subu       $v0, $t7, $t8
.L0041E078:
/* 01E078 0041E078 8F9981DC */  lw          $t9, %call16(elf_getdata)($gp)
/* 01E07C 0041E07C 02402025 */  move        $a0, $s2
/* 01E080 0041E080 02202825 */  move        $a1, $s1
/* 01E084 0041E084 0320F809 */  jalr        $t9
/* 01E088 0041E088 00000000 */   nop
/* 01E08C 0041E08C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01E090 0041E090 1440FFE8 */  bnez        $v0, .L0041E034
/* 01E094 0041E094 00408825 */   move       $s1, $v0
/* 01E098 0041E098 10000032 */  b           .L0041E164
/* 01E09C 0041E09C 00000000 */   nop
.L0041E0A0:
/* 01E0A0 0041E0A0 8F9981DC */  lw          $t9, %call16(elf_getdata)($gp)
/* 01E0A4 0041E0A4 02402025 */  move        $a0, $s2
/* 01E0A8 0041E0A8 00002825 */  move        $a1, $zero
/* 01E0AC 0041E0AC 0320F809 */  jalr        $t9
/* 01E0B0 0041E0B0 AFA00028 */   sw         $zero, 0x28($sp)
/* 01E0B4 0041E0B4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01E0B8 0041E0B8 8FA60028 */  lw          $a2, 0x28($sp)
/* 01E0BC 0041E0BC 10400029 */  beqz        $v0, .L0041E164
/* 01E0C0 0041E0C0 00408825 */   move       $s1, $v0
.L0041E0C4:
/* 01E0C4 0041E0C4 8C430010 */  lw          $v1, 0x10($v0)
/* 01E0C8 0041E0C8 2C610002 */  sltiu       $at, $v1, 0x2
/* 01E0CC 0041E0CC 5420000D */  bnel        $at, $zero, .L0041E104
/* 01E0D0 0041E0D0 8C590000 */   lw         $t9, 0x0($v0)
/* 01E0D4 0041E0D4 00C3001B */  divu        $zero, $a2, $v1
/* 01E0D8 0041E0D8 00002010 */  mfhi        $a0
/* 01E0DC 0041E0DC 14600002 */  bnez        $v1, .L0041E0E8
/* 01E0E0 0041E0E0 00000000 */   nop
/* 01E0E4 0041E0E4 0007000D */  break       7
.L0041E0E8:
/* 01E0E8 0041E0E8 00641823 */  subu        $v1, $v1, $a0
/* 01E0EC 0041E0EC 10800004 */  beqz        $a0, .L0041E100
/* 01E0F0 0041E0F0 0203082B */   sltu       $at, $s0, $v1
/* 01E0F4 0041E0F4 1420001B */  bnez        $at, .L0041E164
/* 01E0F8 0041E0F8 00C33021 */   addu       $a2, $a2, $v1
/* 01E0FC 0041E0FC 02038023 */  subu        $s0, $s0, $v1
.L0041E100:
/* 01E100 0041E100 8C590000 */  lw          $t9, 0x0($v0)
.L0041E104:
/* 01E104 0041E104 02402025 */  move        $a0, $s2
/* 01E108 0041E108 02202825 */  move        $a1, $s1
/* 01E10C 0041E10C 53200009 */  beql        $t9, $zero, .L0041E134
/* 01E110 0041E110 8C430008 */   lw         $v1, 0x8($v0)
/* 01E114 0041E114 8C480008 */  lw          $t0, 0x8($v0)
/* 01E118 0041E118 0208082B */  sltu        $at, $s0, $t0
/* 01E11C 0041E11C 50200005 */  beql        $at, $zero, .L0041E134
/* 01E120 0041E120 8C430008 */   lw         $v1, 0x8($v0)
/* 01E124 0041E124 8E290000 */  lw          $t1, 0x0($s1)
/* 01E128 0041E128 10000012 */  b           .L0041E174
/* 01E12C 0041E12C 01301021 */   addu       $v0, $t1, $s0
/* 01E130 0041E130 8C430008 */  lw          $v1, 0x8($v0)
.L0041E134:
/* 01E134 0041E134 0203082B */  sltu        $at, $s0, $v1
/* 01E138 0041E138 1420000A */  bnez        $at, .L0041E164
/* 01E13C 0041E13C 00C33021 */   addu       $a2, $a2, $v1
/* 01E140 0041E140 8F9981DC */  lw          $t9, %call16(elf_getdata)($gp)
/* 01E144 0041E144 8E2A0008 */  lw          $t2, 0x8($s1)
/* 01E148 0041E148 AFA60028 */  sw          $a2, 0x28($sp)
/* 01E14C 0041E14C 0320F809 */  jalr        $t9
/* 01E150 0041E150 020A8023 */   subu       $s0, $s0, $t2
/* 01E154 0041E154 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01E158 0041E158 8FA60028 */  lw          $a2, 0x28($sp)
/* 01E15C 0041E15C 1440FFD9 */  bnez        $v0, .L0041E0C4
/* 01E160 0041E160 00408825 */   move       $s1, $v0
.L0041E164:
/* 01E164 0041E164 8F8186E8 */  lw          $at, %got(_elf_err)($gp)
/* 01E168 0041E168 240B0512 */  addiu       $t3, $zero, 0x512
/* 01E16C 0041E16C 00001025 */  move        $v0, $zero
/* 01E170 0041E170 AC2B0000 */  sw          $t3, 0x0($at)
.L0041E174:
/* 01E174 0041E174 8FBF0024 */  lw          $ra, 0x24($sp)
/* 01E178 0041E178 8FB00014 */  lw          $s0, 0x14($sp)
/* 01E17C 0041E17C 8FB10018 */  lw          $s1, 0x18($sp)
/* 01E180 0041E180 8FB2001C */  lw          $s2, 0x1C($sp)
/* 01E184 0041E184 03E00008 */  jr          $ra
/* 01E188 0041E188 27BD0038 */   addiu      $sp, $sp, 0x38
/* 01E18C 0041E18C 00000000 */  nop
