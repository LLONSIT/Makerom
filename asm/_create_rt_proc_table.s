.section .rodata
glabel STR_10012AF8
/* 042AF8 10012AF8 */ .asciz "_procedure_table"
                      .balign 4

glabel STR_10012B0C
/* 042B0C 10012B0C */ .asciz "_procedure_table"
                      .balign 4

glabel STR_10012B20
/* 042B20 10012B20 */ .asciz "Cannot open %s\n"
                      .balign 4

glabel STR_10012B30
/* 042B30 10012B30 */ .asciz "Cannot mmap the runtime proc table of %s\n"
                      .balign 4

glabel STR_10012B5C
/* 042B5C 10012B5C */ .asciz "_procedure_string_table"
                      .balign 4

glabel STR_10012B74
/* 042B74 10012B74 */ .asciz "_procedure_string_table"
                      .balign 4

glabel STR_10012B8C
/* 042B8C 10012B8C */ .asciz "_procedure_table_size"
                      .balign 4


.section .text
glabel _create_rt_proc_table # 284
# _gp_disp: 0xFBF3F90
.set noreorder; .cpload $t9; # .set reorder
/* 029DBC 00429DBC 27BDFFA0 */  addiu       $sp, $sp, -0x60
/* 029DC0 00429DC0 AFB10024 */  sw          $s1, 0x24($sp)
/* 029DC4 00429DC4 8F998284 */  lw          $t9, %call16(elfhash)($gp)
/* 029DC8 00429DC8 00808825 */  move        $s1, $a0
/* 029DCC 00429DCC 8F84802C */  lw          $a0, %got(STR_10012B0C)($gp)
/* 029DD0 00429DD0 AFBF0044 */  sw          $ra, 0x44($sp)
/* 029DD4 00429DD4 AFB7003C */  sw          $s7, 0x3C($sp)
/* 029DD8 00429DD8 00A0B825 */  move        $s7, $a1
/* 029DDC 00429DDC AFBC0040 */  sw          $gp, 0x40($sp)
/* 029DE0 00429DE0 AFB60038 */  sw          $s6, 0x38($sp)
/* 029DE4 00429DE4 AFB50034 */  sw          $s5, 0x34($sp)
/* 029DE8 00429DE8 AFB40030 */  sw          $s4, 0x30($sp)
/* 029DEC 00429DEC AFB3002C */  sw          $s3, 0x2C($sp)
/* 029DF0 00429DF0 AFB20028 */  sw          $s2, 0x28($sp)
/* 029DF4 00429DF4 AFB00020 */  sw          $s0, 0x20($sp)
/* 029DF8 00429DF8 AFA60068 */  sw          $a2, 0x68($sp)
/* 029DFC 00429DFC 0320F809 */  jalr        $t9
/* 029E00 00429E00 24842B0C */   addiu      $a0, $a0, %lo(STR_10012B0C)
/* 029E04 00429E04 8FBC0040 */  lw          $gp, 0x40($sp)
/* 029E08 00429E08 02202025 */  move        $a0, $s1
/* 029E0C 00429E0C 00403025 */  move        $a2, $v0
/* 029E10 00429E10 8F99829C */  lw          $t9, %call16(search_symbol_using_hash)($gp)
/* 029E14 00429E14 8F85802C */  lw          $a1, %got(STR_10012AF8)($gp)
/* 029E18 00429E18 0320F809 */  jalr        $t9
/* 029E1C 00429E1C 24A52AF8 */   addiu      $a1, $a1, %lo(STR_10012AF8)
/* 029E20 00429E20 8FBC0040 */  lw          $gp, 0x40($sp)
/* 029E24 00429E24 1C400003 */  bgtz        $v0, .L00429E34
/* 029E28 00429E28 0040A025 */   move       $s4, $v0
/* 029E2C 00429E2C 100000BB */  b           .L0042A11C
/* 029E30 00429E30 2402FFFF */   addiu      $v0, $zero, -0x1
.L00429E34:
/* 029E34 00429E34 8F9983E8 */  lw          $t9, %call16(obj_dynsym_value)($gp)
/* 029E38 00429E38 02202025 */  move        $a0, $s1
/* 029E3C 00429E3C 02802825 */  move        $a1, $s4
/* 029E40 00429E40 0320F809 */  jalr        $t9
/* 029E44 00429E44 00000000 */   nop
/* 029E48 00429E48 1040001E */  beqz        $v0, .L00429EC4
/* 029E4C 00429E4C 8FBC0040 */   lw         $gp, 0x40($sp)
/* 029E50 00429E50 8F9983E8 */  lw          $t9, %call16(obj_dynsym_value)($gp)
/* 029E54 00429E54 02202025 */  move        $a0, $s1
/* 029E58 00429E58 02802825 */  move        $a1, $s4
/* 029E5C 00429E5C 0320F809 */  jalr        $t9
/* 029E60 00429E60 00000000 */   nop
/* 029E64 00429E64 8FBC0040 */  lw          $gp, 0x40($sp)
/* 029E68 00429E68 00408025 */  move        $s0, $v0
/* 029E6C 00429E6C 02202025 */  move        $a0, $s1
/* 029E70 00429E70 8F9982D0 */  lw          $t9, %call16(obj_map_diff)($gp)
/* 029E74 00429E74 0320F809 */  jalr        $t9
/* 029E78 00429E78 00000000 */   nop
/* 029E7C 00429E7C 8FBC0040 */  lw          $gp, 0x40($sp)
/* 029E80 00429E80 02202025 */  move        $a0, $s1
/* 029E84 00429E84 02802825 */  move        $a1, $s4
/* 029E88 00429E88 8F99840C */  lw          $t9, %call16(obj_set_dynsym_got)($gp)
/* 029E8C 00429E8C 02023023 */  subu        $a2, $s0, $v0
/* 029E90 00429E90 0320F809 */  jalr        $t9
/* 029E94 00429E94 00000000 */   nop
/* 029E98 00429E98 12E00008 */  beqz        $s7, .L00429EBC
/* 029E9C 00429E9C 8FBC0040 */   lw         $gp, 0x40($sp)
/* 029EA0 00429EA0 8F998408 */  lw          $t9, %call16(obj_dynsym_got)($gp)
/* 029EA4 00429EA4 02202025 */  move        $a0, $s1
/* 029EA8 00429EA8 02802825 */  move        $a1, $s4
/* 029EAC 00429EAC 0320F809 */  jalr        $t9
/* 029EB0 00429EB0 00000000 */   nop
/* 029EB4 00429EB4 8FBC0040 */  lw          $gp, 0x40($sp)
/* 029EB8 00429EB8 AEE20000 */  sw          $v0, 0x0($s7)
.L00429EBC:
/* 029EBC 00429EBC 10000097 */  b           .L0042A11C
/* 029EC0 00429EC0 2402FFFF */   addiu      $v0, $zero, -0x1
.L00429EC4:
/* 029EC4 00429EC4 8F998428 */  lw          $t9, %call16(obj_pelfhdr)($gp)
/* 029EC8 00429EC8 02202025 */  move        $a0, $s1
/* 029ECC 00429ECC 0320F809 */  jalr        $t9
/* 029ED0 00429ED0 00000000 */   nop
/* 029ED4 00429ED4 8FBC0040 */  lw          $gp, 0x40($sp)
/* 029ED8 00429ED8 AFA20048 */  sw          $v0, 0x48($sp)
/* 029EDC 00429EDC 02202025 */  move        $a0, $s1
/* 029EE0 00429EE0 8F99842C */  lw          $t9, %call16(obj_pproghdr)($gp)
/* 029EE4 00429EE4 0320F809 */  jalr        $t9
/* 029EE8 00429EE8 00000000 */   nop
/* 029EEC 00429EEC 8FAE0048 */  lw          $t6, 0x48($sp)
/* 029EF0 00429EF0 8FBC0040 */  lw          $gp, 0x40($sp)
/* 029EF4 00429EF4 0000A825 */  move        $s5, $zero
/* 029EF8 00429EF8 95C3002C */  lhu         $v1, 0x2C($t6)
/* 029EFC 00429EFC 50600087 */  beql        $v1, $zero, .L0042A11C
/* 029F00 00429F00 2402FFFF */   addiu      $v0, $zero, -0x1
/* 029F04 00429F04 8F968040 */  lw          $s6, %got(__iob)($gp)
/* 029F08 00429F08 00409025 */  move        $s2, $v0
/* 029F0C 00429F0C 26D60020 */  addiu       $s6, $s6, 0x20
.L00429F10:
/* 029F10 00429F10 8E4F0000 */  lw          $t7, 0x0($s2)
/* 029F14 00429F14 3C017000 */  lui         $at, (0x70000001 >> 16)
/* 029F18 00429F18 34210001 */  ori         $at, $at, (0x70000001 & 0xFFFF)
/* 029F1C 00429F1C 55E1007B */  bnel        $t7, $at, .L0042A10C
/* 029F20 00429F20 26B50001 */   addiu      $s5, $s5, 0x1
/* 029F24 00429F24 8F9983B4 */  lw          $t9, %call16(obj_path)($gp)
/* 029F28 00429F28 02202025 */  move        $a0, $s1
/* 029F2C 00429F2C 0320F809 */  jalr        $t9
/* 029F30 00429F30 00000000 */   nop
/* 029F34 00429F34 8FBC0040 */  lw          $gp, 0x40($sp)
/* 029F38 00429F38 00402025 */  move        $a0, $v0
/* 029F3C 00429F3C 00002825 */  move        $a1, $zero
/* 029F40 00429F40 8F9980B4 */  lw          $t9, %call16(open)($gp)
/* 029F44 00429F44 0320F809 */  jalr        $t9
/* 029F48 00429F48 00000000 */   nop
/* 029F4C 00429F4C 8FBC0040 */  lw          $gp, 0x40($sp)
/* 029F50 00429F50 04410012 */  bgez        $v0, .L00429F9C
/* 029F54 00429F54 00408025 */   move       $s0, $v0
/* 029F58 00429F58 8F9983B4 */  lw          $t9, %call16(obj_path)($gp)
/* 029F5C 00429F5C 02202025 */  move        $a0, $s1
/* 029F60 00429F60 0320F809 */  jalr        $t9
/* 029F64 00429F64 00000000 */   nop
/* 029F68 00429F68 8FBC0040 */  lw          $gp, 0x40($sp)
/* 029F6C 00429F6C 02C02025 */  move        $a0, $s6
/* 029F70 00429F70 00403025 */  move        $a2, $v0
/* 029F74 00429F74 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 029F78 00429F78 8F85802C */  lw          $a1, %got(STR_10012B20)($gp)
/* 029F7C 00429F7C 0320F809 */  jalr        $t9
/* 029F80 00429F80 24A52B20 */   addiu      $a1, $a1, %lo(STR_10012B20)
/* 029F84 00429F84 8FBC0040 */  lw          $gp, 0x40($sp)
/* 029F88 00429F88 24040001 */  addiu       $a0, $zero, 0x1
/* 029F8C 00429F8C 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 029F90 00429F90 0320F809 */  jalr        $t9
/* 029F94 00429F94 00000000 */   nop
/* 029F98 00429F98 8FBC0040 */  lw          $gp, 0x40($sp)
.L00429F9C:
/* 029F9C 00429F9C 8F9980D8 */  lw          $t9, %call16(lseek)($gp)
/* 029FA0 00429FA0 02002025 */  move        $a0, $s0
/* 029FA4 00429FA4 00002825 */  move        $a1, $zero
/* 029FA8 00429FA8 0320F809 */  jalr        $t9
/* 029FAC 00429FAC 00003025 */   move       $a2, $zero
/* 029FB0 00429FB0 8FBC0040 */  lw          $gp, 0x40($sp)
/* 029FB4 00429FB4 8E450010 */  lw          $a1, 0x10($s2)
/* 029FB8 00429FB8 AFB00010 */  sw          $s0, 0x10($sp)
/* 029FBC 00429FBC 8F998134 */  lw          $t9, %call16(mmap)($gp)
/* 029FC0 00429FC0 8E580004 */  lw          $t8, 0x4($s2)
/* 029FC4 00429FC4 00002025 */  move        $a0, $zero
/* 029FC8 00429FC8 24060001 */  addiu       $a2, $zero, 0x1
/* 029FCC 00429FCC 24070001 */  addiu       $a3, $zero, 0x1
/* 029FD0 00429FD0 0320F809 */  jalr        $t9
/* 029FD4 00429FD4 AFB80014 */   sw         $t8, 0x14($sp)
/* 029FD8 00429FD8 2401FFFF */  addiu       $at, $zero, -0x1
/* 029FDC 00429FDC 8FBC0040 */  lw          $gp, 0x40($sp)
/* 029FE0 00429FE0 14410012 */  bne         $v0, $at, .L0042A02C
/* 029FE4 00429FE4 00409825 */   move       $s3, $v0
/* 029FE8 00429FE8 8F9983B4 */  lw          $t9, %call16(obj_path)($gp)
/* 029FEC 00429FEC 02202025 */  move        $a0, $s1
/* 029FF0 00429FF0 0320F809 */  jalr        $t9
/* 029FF4 00429FF4 00000000 */   nop
/* 029FF8 00429FF8 8FBC0040 */  lw          $gp, 0x40($sp)
/* 029FFC 00429FFC 02C02025 */  move        $a0, $s6
/* 02A000 0042A000 00403025 */  move        $a2, $v0
/* 02A004 0042A004 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 02A008 0042A008 8F85802C */  lw          $a1, %got(STR_10012B30)($gp)
/* 02A00C 0042A00C 0320F809 */  jalr        $t9
/* 02A010 0042A010 24A52B30 */   addiu      $a1, $a1, %lo(STR_10012B30)
/* 02A014 0042A014 8FBC0040 */  lw          $gp, 0x40($sp)
/* 02A018 0042A018 24040001 */  addiu       $a0, $zero, 0x1
/* 02A01C 0042A01C 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 02A020 0042A020 0320F809 */  jalr        $t9
/* 02A024 0042A024 00000000 */   nop
/* 02A028 0042A028 8FBC0040 */  lw          $gp, 0x40($sp)
.L0042A02C:
/* 02A02C 0042A02C 8F9980C0 */  lw          $t9, %call16(close)($gp)
/* 02A030 0042A030 02002025 */  move        $a0, $s0
/* 02A034 0042A034 0320F809 */  jalr        $t9
/* 02A038 0042A038 00000000 */   nop
/* 02A03C 0042A03C 8FBC0040 */  lw          $gp, 0x40($sp)
/* 02A040 0042A040 02202025 */  move        $a0, $s1
/* 02A044 0042A044 02802825 */  move        $a1, $s4
/* 02A048 0042A048 8F99840C */  lw          $t9, %call16(obj_set_dynsym_got)($gp)
/* 02A04C 0042A04C 02603025 */  move        $a2, $s3
/* 02A050 0042A050 0320F809 */  jalr        $t9
/* 02A054 0042A054 00000000 */   nop
/* 02A058 0042A058 12E00008 */  beqz        $s7, .L0042A07C
/* 02A05C 0042A05C 8FBC0040 */   lw         $gp, 0x40($sp)
/* 02A060 0042A060 8F998408 */  lw          $t9, %call16(obj_dynsym_got)($gp)
/* 02A064 0042A064 02202025 */  move        $a0, $s1
/* 02A068 0042A068 02802825 */  move        $a1, $s4
/* 02A06C 0042A06C 0320F809 */  jalr        $t9
/* 02A070 0042A070 00000000 */   nop
/* 02A074 0042A074 8FBC0040 */  lw          $gp, 0x40($sp)
/* 02A078 0042A078 AEE20000 */  sw          $v0, 0x0($s7)
.L0042A07C:
/* 02A07C 0042A07C 8F998284 */  lw          $t9, %call16(elfhash)($gp)
/* 02A080 0042A080 8F84802C */  lw          $a0, %got(STR_10012B74)($gp)
/* 02A084 0042A084 0320F809 */  jalr        $t9
/* 02A088 0042A088 24842B74 */   addiu      $a0, $a0, %lo(STR_10012B74)
/* 02A08C 0042A08C 8FBC0040 */  lw          $gp, 0x40($sp)
/* 02A090 0042A090 02202025 */  move        $a0, $s1
/* 02A094 0042A094 00403025 */  move        $a2, $v0
/* 02A098 0042A098 8F99829C */  lw          $t9, %call16(search_symbol_using_hash)($gp)
/* 02A09C 0042A09C 8F85802C */  lw          $a1, %got(STR_10012B5C)($gp)
/* 02A0A0 0042A0A0 0320F809 */  jalr        $t9
/* 02A0A4 0042A0A4 24A52B5C */   addiu      $a1, $a1, %lo(STR_10012B5C)
/* 02A0A8 0042A0A8 8FBC0040 */  lw          $gp, 0x40($sp)
/* 02A0AC 0042A0AC 1C400003 */  bgtz        $v0, .L0042A0BC
/* 02A0B0 0042A0B0 0040A025 */   move       $s4, $v0
/* 02A0B4 0042A0B4 10000019 */  b           .L0042A11C
/* 02A0B8 0042A0B8 2402FFFF */   addiu      $v0, $zero, -0x1
.L0042A0BC:
/* 02A0BC 0042A0BC 8F9982A0 */  lw          $t9, %call16(obj_find_symbol_value)($gp)
/* 02A0C0 0042A0C0 8F85802C */  lw          $a1, %got(STR_10012B8C)($gp)
/* 02A0C4 0042A0C4 02202025 */  move        $a0, $s1
/* 02A0C8 0042A0C8 00003025 */  move        $a2, $zero
/* 02A0CC 0042A0CC 0320F809 */  jalr        $t9
/* 02A0D0 0042A0D0 24A52B8C */   addiu      $a1, $a1, %lo(STR_10012B8C)
/* 02A0D4 0042A0D4 0002C880 */  sll         $t9, $v0, 2
/* 02A0D8 0042A0D8 8FBC0040 */  lw          $gp, 0x40($sp)
/* 02A0DC 0042A0DC 0322C821 */  addu        $t9, $t9, $v0
/* 02A0E0 0042A0E0 0019C8C0 */  sll         $t9, $t9, 3
/* 02A0E4 0042A0E4 03333021 */  addu        $a2, $t9, $s3
/* 02A0E8 0042A0E8 8F99840C */  lw          $t9, %call16(obj_set_dynsym_got)($gp)
/* 02A0EC 0042A0EC 02202025 */  move        $a0, $s1
/* 02A0F0 0042A0F0 02802825 */  move        $a1, $s4
/* 02A0F4 0042A0F4 0320F809 */  jalr        $t9
/* 02A0F8 0042A0F8 00000000 */   nop
/* 02A0FC 0042A0FC 8FA80048 */  lw          $t0, 0x48($sp)
/* 02A100 0042A100 8FBC0040 */  lw          $gp, 0x40($sp)
/* 02A104 0042A104 9503002C */  lhu         $v1, 0x2C($t0)
/* 02A108 0042A108 26B50001 */  addiu       $s5, $s5, 0x1
.L0042A10C:
/* 02A10C 0042A10C 02A3082B */  sltu        $at, $s5, $v1
/* 02A110 0042A110 1420FF7F */  bnez        $at, .L00429F10
/* 02A114 0042A114 26520020 */   addiu      $s2, $s2, 0x20
/* 02A118 0042A118 2402FFFF */  addiu       $v0, $zero, -0x1
.L0042A11C:
/* 02A11C 0042A11C 8FBF0044 */  lw          $ra, 0x44($sp)
/* 02A120 0042A120 8FB00020 */  lw          $s0, 0x20($sp)
/* 02A124 0042A124 8FB10024 */  lw          $s1, 0x24($sp)
/* 02A128 0042A128 8FB20028 */  lw          $s2, 0x28($sp)
/* 02A12C 0042A12C 8FB3002C */  lw          $s3, 0x2C($sp)
/* 02A130 0042A130 8FB40030 */  lw          $s4, 0x30($sp)
/* 02A134 0042A134 8FB50034 */  lw          $s5, 0x34($sp)
/* 02A138 0042A138 8FB60038 */  lw          $s6, 0x38($sp)
/* 02A13C 0042A13C 8FB7003C */  lw          $s7, 0x3C($sp)
/* 02A140 0042A140 03E00008 */  jr          $ra
/* 02A144 0042A144 27BD0060 */   addiu      $sp, $sp, 0x60
/* 02A148 0042A148 00000000 */  nop
/* 02A14C 0042A14C 00000000 */  nop
/* 02A150 0042A150 00000000 */  nop
/* 02A154 0042A154 00000000 */  nop
/* 02A158 0042A158 00000000 */  nop
/* 02A15C 0042A15C 00000000 */  nop
/* 02A160 0042A160 00000000 */  nop
/* 02A164 0042A164 00000000 */  nop
/* 02A168 0042A168 00000000 */  nop
/* 02A16C 0042A16C 00000000 */  nop
