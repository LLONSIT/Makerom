glabel func_00422848 # 186
# _gp_disp: 0xFBFB4F8
.set noreorder; .cpload $t9; # .set reorder
/* 022854 00422854 27BDFF88 */  addiu       $sp, $sp, -0x78
/* 022858 00422858 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02285C 0042285C AFBC0018 */  sw          $gp, 0x18($sp)
/* 022860 00422860 AFB00014 */  sw          $s0, 0x14($sp)
/* 022864 00422864 AFA5007C */  sw          $a1, 0x7C($sp)
/* 022868 00422868 8C880050 */  lw          $t0, 0x50($a0)
/* 02286C 0042286C 00808025 */  move        $s0, $a0
/* 022870 00422870 24040009 */  addiu       $a0, $zero, 0x9
/* 022874 00422874 950E003C */  lhu         $t6, 0x3C($t0)
/* 022878 00422878 15C00003 */  bnez        $t6, .L00422888
/* 02287C 0042287C 00000000 */   nop
/* 022880 00422880 1000009F */  b           .L00422B00
/* 022884 00422884 00001025 */   move       $v0, $zero
.L00422888:
/* 022888 00422888 8F9981C8 */  lw          $t9, %call16(_elf64_fsize)($gp)
/* 02288C 0042288C 8E060044 */  lw          $a2, 0x44($s0)
/* 022890 00422890 AFA8003C */  sw          $t0, 0x3C($sp)
/* 022894 00422894 0320F809 */  jalr        $t9
/* 022898 00422898 24050001 */   addiu      $a1, $zero, 0x1
/* 02289C 0042289C 8FA8003C */  lw          $t0, 0x3C($sp)
/* 0228A0 004228A0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0228A4 004228A4 24180210 */  addiu       $t8, $zero, 0x210
/* 0228A8 004228A8 950F003A */  lhu         $t7, 0x3A($t0)
/* 0228AC 004228AC 504F0006 */  beql        $v0, $t7, .L004228C8
/* 0228B0 004228B0 9504003C */   lhu        $a0, 0x3C($t0)
/* 0228B4 004228B4 8F8186E8 */  lw          $at, %got(_elf_err)($gp)
/* 0228B8 004228B8 2402FFFF */  addiu       $v0, $zero, -0x1
/* 0228BC 004228BC 10000090 */  b           .L00422B00
/* 0228C0 004228C0 AC380000 */   sw         $t8, 0x0($at)
/* 0228C4 004228C4 9504003C */  lhu         $a0, 0x3C($t0)
.L004228C8:
/* 0228C8 004228C8 24180000 */  addiu       $t8, $zero, 0x0
/* 0228CC 004228CC 03005025 */  move        $t2, $t8
/* 0228D0 004228D0 00440019 */  multu       $v0, $a0
/* 0228D4 004228D4 00044980 */  sll         $t1, $a0, 6
/* 0228D8 004228D8 AFA90070 */  sw          $t1, 0x70($sp)
/* 0228DC 004228DC 0000C812 */  mflo        $t9
/* 0228E0 004228E0 AFB90074 */  sw          $t9, 0x74($sp)
/* 0228E4 004228E4 8D0D002C */  lw          $t5, 0x2C($t0)
/* 0228E8 004228E8 8D0C0028 */  lw          $t4, 0x28($t0)
/* 0228EC 004228EC AFAD0034 */  sw          $t5, 0x34($sp)
/* 0228F0 004228F0 AFAC0030 */  sw          $t4, 0x30($sp)
/* 0228F4 004228F4 55800004 */  bnel        $t4, $zero, .L00422908
/* 0228F8 004228F8 8E0E0034 */   lw         $t6, 0x34($s0)
/* 0228FC 004228FC 11A0001A */  beqz        $t5, .L00422968
/* 022900 00422900 00000000 */   nop
/* 022904 00422904 8E0E0034 */  lw          $t6, 0x34($s0)
.L00422908:
/* 022908 00422908 030C082B */  sltu        $at, $t8, $t4
/* 02290C 0042290C AFB80028 */  sw          $t8, 0x28($sp)
/* 022910 00422910 01C0C825 */  move        $t9, $t6
/* 022914 00422914 AFAE002C */  sw          $t6, 0x2C($sp)
/* 022918 00422918 14200013 */  bnez        $at, .L00422968
/* 02291C 0042291C 01C05825 */   move       $t3, $t6
/* 022920 00422920 0198082B */  sltu        $at, $t4, $t8
/* 022924 00422924 14200003 */  bnez        $at, .L00422934
/* 022928 00422928 016D7823 */   subu       $t7, $t3, $t5
/* 02292C 0042292C 01AE082B */  sltu        $at, $t5, $t6
/* 022930 00422930 1020000D */  beqz        $at, .L00422968
.L00422934:
/* 022934 00422934 016D082B */   sltu       $at, $t3, $t5
/* 022938 00422938 014C7023 */  subu        $t6, $t2, $t4
/* 02293C 0042293C 8FA90074 */  lw          $t1, 0x74($sp)
/* 022940 00422940 01C17023 */  subu        $t6, $t6, $at
/* 022944 00422944 24180000 */  addiu       $t8, $zero, 0x0
/* 022948 00422948 030E082B */  sltu        $at, $t8, $t6
/* 02294C 0042294C 1420000B */  bnez        $at, .L0042297C
/* 022950 00422950 0120C825 */   move       $t9, $t1
/* 022954 00422954 01D8082B */  sltu        $at, $t6, $t8
/* 022958 00422958 14200003 */  bnez        $at, .L00422968
/* 02295C 0042295C 01E9082B */   sltu       $at, $t7, $t1
/* 022960 00422960 50200007 */  beql        $at, $zero, .L00422980
/* 022964 00422964 8FAB007C */   lw         $t3, 0x7C($sp)
.L00422968:
/* 022968 00422968 8F8186E8 */  lw          $at, %got(_elf_err)($gp)
/* 02296C 0042296C 240A0211 */  addiu       $t2, $zero, 0x211
/* 022970 00422970 2402FFFF */  addiu       $v0, $zero, -0x1
/* 022974 00422974 10000062 */  b           .L00422B00
/* 022978 00422978 AC2A0000 */   sw         $t2, 0x0($at)
.L0042297C:
/* 02297C 0042297C 8FAB007C */  lw          $t3, 0x7C($sp)
.L00422980:
/* 022980 00422980 8FAC0074 */  lw          $t4, 0x74($sp)
/* 022984 00422984 8FAD0070 */  lw          $t5, 0x70($sp)
/* 022988 00422988 11600015 */  beqz        $t3, .L004229E0
/* 02298C 0042298C 018D082B */   sltu       $at, $t4, $t5
/* 022990 00422990 14200013 */  bnez        $at, .L004229E0
/* 022994 00422994 8FA40030 */   lw         $a0, 0x30($sp)
/* 022998 00422998 8F99812C */  lw          $t9, %call16(__ull_rem)($gp)
/* 02299C 0042299C 8FA50034 */  lw          $a1, 0x34($sp)
/* 0229A0 004229A0 24060000 */  addiu       $a2, $zero, 0x0
/* 0229A4 004229A4 24070008 */  addiu       $a3, $zero, 0x8
/* 0229A8 004229A8 0320F809 */  jalr        $t9
/* 0229AC 004229AC AFA8003C */   sw         $t0, 0x3C($sp)
/* 0229B0 004229B0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0229B4 004229B4 1440000A */  bnez        $v0, .L004229E0
/* 0229B8 004229B8 8FA8003C */   lw         $t0, 0x3C($sp)
/* 0229BC 004229BC 14600008 */  bnez        $v1, .L004229E0
/* 0229C0 004229C0 00000000 */   nop
/* 0229C4 004229C4 8E020028 */  lw          $v0, 0x28($s0)
/* 0229C8 004229C8 8D0F002C */  lw          $t7, 0x2C($t0)
/* 0229CC 004229CC 24190001 */  addiu       $t9, $zero, 0x1
/* 0229D0 004229D0 AE19000C */  sw          $t9, 0xC($s0)
/* 0229D4 004229D4 004FC021 */  addu        $t8, $v0, $t7
/* 0229D8 004229D8 10000013 */  b           .L00422A28
/* 0229DC 004229DC AE18005C */   sw         $t8, 0x5C($s0)
.L004229E0:
/* 0229E0 004229E0 8F998064 */  lw          $t9, %call16(malloc)($gp)
/* 0229E4 004229E4 8FA40070 */  lw          $a0, 0x70($sp)
/* 0229E8 004229E8 AFA8003C */  sw          $t0, 0x3C($sp)
/* 0229EC 004229EC 0320F809 */  jalr        $t9
/* 0229F0 004229F0 00000000 */   nop
/* 0229F4 004229F4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0229F8 004229F8 8FA8003C */  lw          $t0, 0x3C($sp)
/* 0229FC 004229FC 14400006 */  bnez        $v0, .L00422A18
/* 022A00 00422A00 AE02005C */   sw         $v0, 0x5C($s0)
/* 022A04 00422A04 8F8186E8 */  lw          $at, %got(_elf_err)($gp)
/* 022A08 00422A08 240A0411 */  addiu       $t2, $zero, 0x411
/* 022A0C 00422A0C 2402FFFF */  addiu       $v0, $zero, -0x1
/* 022A10 00422A10 1000003B */  b           .L00422B00
/* 022A14 00422A14 AC2A0000 */   sw         $t2, 0x0($at)
.L00422A18:
/* 022A18 00422A18 8E0B0088 */  lw          $t3, 0x88($s0)
/* 022A1C 00422A1C 8E020028 */  lw          $v0, 0x28($s0)
/* 022A20 00422A20 356C0008 */  ori         $t4, $t3, 0x8
/* 022A24 00422A24 AE0C0088 */  sw          $t4, 0x88($s0)
.L00422A28:
/* 022A28 00422A28 8D0F002C */  lw          $t7, 0x2C($t0)
/* 022A2C 00422A2C 8FA60074 */  lw          $a2, 0x74($sp)
/* 022A30 00422A30 24180009 */  addiu       $t8, $zero, 0x9
/* 022A34 00422A34 004F4821 */  addu        $t1, $v0, $t7
/* 022A38 00422A38 AFA90040 */  sw          $t1, 0x40($sp)
/* 022A3C 00422A3C AFB80044 */  sw          $t8, 0x44($sp)
/* 022A40 00422A40 AFA60048 */  sw          $a2, 0x48($sp)
/* 022A44 00422A44 8E0A0044 */  lw          $t2, 0x44($s0)
/* 022A48 00422A48 8FAC0070 */  lw          $t4, 0x70($sp)
/* 022A4C 00422A4C 8F998214 */  lw          $t9, %call16(_elf_vm)($gp)
/* 022A50 00422A50 AFAA0054 */  sw          $t2, 0x54($sp)
/* 022A54 00422A54 8E0B005C */  lw          $t3, 0x5C($s0)
/* 022A58 00422A58 240E0001 */  addiu       $t6, $zero, 0x1
/* 022A5C 00422A5C AFAE006C */  sw          $t6, 0x6C($sp)
/* 022A60 00422A60 AFAC0060 */  sw          $t4, 0x60($sp)
/* 022A64 00422A64 AFAB0058 */  sw          $t3, 0x58($sp)
/* 022A68 00422A68 8D05002C */  lw          $a1, 0x2C($t0)
/* 022A6C 00422A6C AFA8003C */  sw          $t0, 0x3C($sp)
/* 022A70 00422A70 0320F809 */  jalr        $t9
/* 022A74 00422A74 02002025 */   move       $a0, $s0
/* 022A78 00422A78 8FBC0018 */  lw          $gp, 0x18($sp)
/* 022A7C 00422A7C 14400011 */  bnez        $v0, .L00422AC4
/* 022A80 00422A80 8FA8003C */   lw         $t0, 0x3C($sp)
/* 022A84 00422A84 8F9981D8 */  lw          $t9, %call16(_elf64_xlatetom)($gp)
/* 022A88 00422A88 8E060040 */  lw          $a2, 0x40($s0)
/* 022A8C 00422A8C AFA8003C */  sw          $t0, 0x3C($sp)
/* 022A90 00422A90 27A40058 */  addiu       $a0, $sp, 0x58
/* 022A94 00422A94 0320F809 */  jalr        $t9
/* 022A98 00422A98 27A50040 */   addiu      $a1, $sp, 0x40
/* 022A9C 00422A9C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 022AA0 00422AA0 10400008 */  beqz        $v0, .L00422AC4
/* 022AA4 00422AA4 8FA8003C */   lw         $t0, 0x3C($sp)
/* 022AA8 00422AA8 8F998208 */  lw          $t9, %call16(_elf_cookscn)($gp)
/* 022AAC 00422AAC 02002025 */  move        $a0, $s0
/* 022AB0 00422AB0 9505003C */  lhu         $a1, 0x3C($t0)
/* 022AB4 00422AB4 0320F809 */  jalr        $t9
/* 022AB8 00422AB8 00000000 */   nop
/* 022ABC 00422ABC 1040000F */  beqz        $v0, .L00422AFC
/* 022AC0 00422AC0 8FBC0018 */   lw         $gp, 0x18($sp)
.L00422AC4:
/* 022AC4 00422AC4 8E020088 */  lw          $v0, 0x88($s0)
/* 022AC8 00422AC8 2401FFF7 */  addiu       $at, $zero, -0x9
/* 022ACC 00422ACC 304D0008 */  andi        $t5, $v0, 0x8
/* 022AD0 00422AD0 11A00007 */  beqz        $t5, .L00422AF0
/* 022AD4 00422AD4 00414824 */   and        $t1, $v0, $at
/* 022AD8 00422AD8 AE090088 */  sw          $t1, 0x88($s0)
/* 022ADC 00422ADC 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 022AE0 00422AE0 8E04005C */  lw          $a0, 0x5C($s0)
/* 022AE4 00422AE4 0320F809 */  jalr        $t9
/* 022AE8 00422AE8 00000000 */   nop
/* 022AEC 00422AEC 8FBC0018 */  lw          $gp, 0x18($sp)
.L00422AF0:
/* 022AF0 00422AF0 AE00005C */  sw          $zero, 0x5C($s0)
/* 022AF4 00422AF4 10000002 */  b           .L00422B00
/* 022AF8 00422AF8 2402FFFF */   addiu      $v0, $zero, -0x1
.L00422AFC:
/* 022AFC 00422AFC 00001025 */  move        $v0, $zero
.L00422B00:
/* 022B00 00422B00 8FBF001C */  lw          $ra, 0x1C($sp)
/* 022B04 00422B04 8FB00014 */  lw          $s0, 0x14($sp)
/* 022B08 00422B08 27BD0078 */  addiu       $sp, $sp, 0x78
/* 022B0C 00422B0C 03E00008 */  jr          $ra
/* 022B10 00422B10 00000000 */   nop
