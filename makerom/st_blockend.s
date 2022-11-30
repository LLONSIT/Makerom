glabel st_blockend # 693
# _gp_disp: 0xFBE0EB4
.set noreorder; .cpload $t9; # .set reorder
/* 03CE98 0043CE98 8F828030 */  lw          $v0, %got(B_1001B804)($gp)
/* 03CE9C 0043CE9C 8F998030 */  lw          $t9, %got(B_1001B800)($gp)
/* 03CEA0 0043CEA0 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 03CEA4 0043CEA4 2442B804 */  addiu       $v0, $v0, %lo(B_1001B804)
/* 03CEA8 0043CEA8 8C4E0000 */  lw          $t6, 0x0($v0)
/* 03CEAC 0043CEAC AFBF0024 */  sw          $ra, 0x24($sp)
/* 03CEB0 0043CEB0 AFBC0020 */  sw          $gp, 0x20($sp)
/* 03CEB4 0043CEB4 25CFFFFF */  addiu       $t7, $t6, -0x1
/* 03CEB8 0043CEB8 AC4F0000 */  sw          $t7, 0x0($v0)
/* 03CEBC 0043CEBC 8F39B800 */  lw          $t9, %lo(B_1001B800)($t9)
/* 03CEC0 0043CEC0 000F50C0 */  sll         $t2, $t7, 3
/* 03CEC4 0043CEC4 AFA40040 */  sw          $a0, 0x40($sp)
/* 03CEC8 0043CEC8 032A5821 */  addu        $t3, $t9, $t2
/* 03CECC 0043CECC 8D6D0000 */  lw          $t5, 0x0($t3)
/* 03CED0 0043CED0 27B80034 */  addiu       $t8, $sp, 0x34
/* 03CED4 0043CED4 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03CED8 0043CED8 AF0D0000 */  sw          $t5, 0x0($t8)
/* 03CEDC 0043CEDC 8D6C0004 */  lw          $t4, 0x4($t3)
/* 03CEE0 0043CEE0 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03CEE4 0043CEE4 AF0C0004 */  sw          $t4, 0x4($t8)
/* 03CEE8 0043CEE8 8FAE0038 */  lw          $t6, 0x38($sp)
/* 03CEEC 0043CEEC 15C10005 */  bne         $t6, $at, .L0043CF04
/* 03CEF0 0043CEF0 00000000 */   nop
/* 03CEF4 0043CEF4 8F81802C */  lw          $at, %got(D_10015D44)($gp)
/* 03CEF8 0043CEF8 00001025 */  move        $v0, $zero
/* 03CEFC 0043CEFC 1000004D */  b           .L0043D034
/* 03CF00 0043CF00 AC205D44 */   sw         $zero, %lo(D_10015D44)($at)
.L0043CF04:
/* 03CF04 0043CF04 8F998608 */  lw          $t9, %call16(st_psym_ifd_isym)($gp)
/* 03CF08 0043CF08 8FA40034 */  lw          $a0, 0x34($sp)
/* 03CF0C 0043CF0C 8FA50038 */  lw          $a1, 0x38($sp)
/* 03CF10 0043CF10 0320F809 */  jalr        $t9
/* 03CF14 0043CF14 00000000 */   nop
/* 03CF18 0043CF18 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03CF1C 0043CF1C AFA2003C */  sw          $v0, 0x3C($sp)
/* 03CF20 0043CF20 8F9985D4 */  lw          $t9, %call16(st_currentifd)($gp)
/* 03CF24 0043CF24 0320F809 */  jalr        $t9
/* 03CF28 0043CF28 00000000 */   nop
/* 03CF2C 0043CF2C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03CF30 0043CF30 AFA2002C */  sw          $v0, 0x2C($sp)
/* 03CF34 0043CF34 8FA40034 */  lw          $a0, 0x34($sp)
/* 03CF38 0043CF38 8F9985DC */  lw          $t9, %call16(st_setfd)($gp)
/* 03CF3C 0043CF3C 0320F809 */  jalr        $t9
/* 03CF40 0043CF40 00000000 */   nop
/* 03CF44 0043CF44 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03CF48 0043CF48 8FA8003C */  lw          $t0, 0x3C($sp)
/* 03CF4C 0043CF4C 00002025 */  move        $a0, $zero
/* 03CF50 0043CF50 8F898030 */  lw          $t1, %got(B_1001B804)($gp)
/* 03CF54 0043CF54 8F8F8030 */  lw          $t7, %got(B_1001B800)($gp)
/* 03CF58 0043CF58 8D070008 */  lw          $a3, 0x8($t0)
/* 03CF5C 0043CF5C 8D29B804 */  lw          $t1, %lo(B_1001B804)($t1)
/* 03CF60 0043CF60 8DEFB800 */  lw          $t7, %lo(B_1001B800)($t7)
/* 03CF64 0043CF64 00073980 */  sll         $a3, $a3, 6
/* 03CF68 0043CF68 0009C8C0 */  sll         $t9, $t1, 3
/* 03CF6C 0043CF6C 01F95021 */  addu        $t2, $t7, $t9
/* 03CF70 0043CF70 8F9985FC */  lw          $t9, %call16(st_symadd)($gp)
/* 03CF74 0043CF74 8D580004 */  lw          $t8, 0x4($t2)
/* 03CF78 0043CF78 00073EC2 */  srl         $a3, $a3, 27
/* 03CF7C 0043CF7C 00002825 */  move        $a1, $zero
/* 03CF80 0043CF80 24060008 */  addiu       $a2, $zero, 0x8
/* 03CF84 0043CF84 0320F809 */  jalr        $t9
/* 03CF88 0043CF88 AFB80010 */   sw         $t8, 0x10($sp)
/* 03CF8C 0043CF8C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03CF90 0043CF90 244B0001 */  addiu       $t3, $v0, 0x1
/* 03CF94 0043CF94 AFAB0030 */  sw          $t3, 0x30($sp)
/* 03CF98 0043CF98 8F998608 */  lw          $t9, %call16(st_psym_ifd_isym)($gp)
/* 03CF9C 0043CF9C 8FA40034 */  lw          $a0, 0x34($sp)
/* 03CFA0 0043CFA0 8FA50038 */  lw          $a1, 0x38($sp)
/* 03CFA4 0043CFA4 0320F809 */  jalr        $t9
/* 03CFA8 0043CFA8 00000000 */   nop
/* 03CFAC 0043CFAC 8FAC0030 */  lw          $t4, 0x30($sp)
/* 03CFB0 0043CFB0 8C430008 */  lw          $v1, 0x8($v0)
/* 03CFB4 0043CFB4 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03CFB8 0043CFB8 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03CFBC 0043CFBC 01816824 */  and         $t5, $t4, $at
/* 03CFC0 0043CFC0 01A37026 */  xor         $t6, $t5, $v1
/* 03CFC4 0043CFC4 000E4B00 */  sll         $t1, $t6, 12
/* 03CFC8 0043CFC8 00097B02 */  srl         $t7, $t1, 12
/* 03CFCC 0043CFCC 01E3C826 */  xor         $t9, $t7, $v1
/* 03CFD0 0043CFD0 0019C180 */  sll         $t8, $t9, 6
/* 03CFD4 0043CFD4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03CFD8 0043CFD8 00185EC2 */  srl         $t3, $t8, 27
/* 03CFDC 0043CFDC 24010001 */  addiu       $at, $zero, 0x1
/* 03CFE0 0043CFE0 00404025 */  move        $t0, $v0
/* 03CFE4 0043CFE4 11610003 */  beq         $t3, $at, .L0043CFF4
/* 03CFE8 0043CFE8 AC590008 */   sw         $t9, 0x8($v0)
/* 03CFEC 0043CFEC 8FAC0040 */  lw          $t4, 0x40($sp)
/* 03CFF0 0043CFF0 AC4C0004 */  sw          $t4, 0x4($v0)
.L0043CFF4:
/* 03CFF4 0043CFF4 8D040008 */  lw          $a0, 0x8($t0)
/* 03CFF8 0043CFF8 8F99862C */  lw          $t9, %call16(st_idn_index_fext)($gp)
/* 03CFFC 0043CFFC 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03D000 0043D000 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03D004 0043D004 00812024 */  and         $a0, $a0, $at
/* 03D008 0043D008 2484FFFF */  addiu       $a0, $a0, -0x1
/* 03D00C 0043D00C 0320F809 */  jalr        $t9
/* 03D010 0043D010 00002825 */   move       $a1, $zero
/* 03D014 0043D014 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03D018 0043D018 AFA20030 */  sw          $v0, 0x30($sp)
/* 03D01C 0043D01C 8FA4002C */  lw          $a0, 0x2C($sp)
/* 03D020 0043D020 8F9985DC */  lw          $t9, %call16(st_setfd)($gp)
/* 03D024 0043D024 0320F809 */  jalr        $t9
/* 03D028 0043D028 00000000 */   nop
/* 03D02C 0043D02C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03D030 0043D030 8FA20030 */  lw          $v0, 0x30($sp)
.L0043D034:
/* 03D034 0043D034 8FBF0024 */  lw          $ra, 0x24($sp)
/* 03D038 0043D038 27BD0040 */  addiu       $sp, $sp, 0x40
/* 03D03C 0043D03C 03E00008 */  jr          $ra
/* 03D040 0043D040 00000000 */   nop
