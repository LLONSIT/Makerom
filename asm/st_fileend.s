glabel st_fileend # 689
# _gp_disp: 0xFBE1400
.set noreorder; .cpload $t9; # .set reorder
/* 03C94C 0043C94C 8F998630 */  lw          $t9, %call16(st_pdn_idn)($gp)
/* 03C950 0043C950 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 03C954 0043C954 AFBF0024 */  sw          $ra, 0x24($sp)
/* 03C958 0043C958 0320F809 */  jalr        $t9
/* 03C95C 0043C95C AFBC0020 */   sw         $gp, 0x20($sp)
/* 03C960 0043C960 8C580000 */  lw          $t8, 0x0($v0)
/* 03C964 0043C964 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03C968 0043C968 27AE0048 */  addiu       $t6, $sp, 0x48
/* 03C96C 0043C96C ADD80000 */  sw          $t8, 0x0($t6)
/* 03C970 0043C970 8C4F0004 */  lw          $t7, 0x4($v0)
/* 03C974 0043C974 ADCF0004 */  sw          $t7, 0x4($t6)
/* 03C978 0043C978 8F998604 */  lw          $t9, %call16(st_pcfd_ifd)($gp)
/* 03C97C 0043C97C 8FA40048 */  lw          $a0, 0x48($sp)
/* 03C980 0043C980 0320F809 */  jalr        $t9
/* 03C984 0043C984 00000000 */   nop
/* 03C988 0043C988 8C430004 */  lw          $v1, 0x4($v0)
/* 03C98C 0043C98C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03C990 0043C990 2401FFFF */  addiu       $at, $zero, -0x1
/* 03C994 0043C994 10600015 */  beqz        $v1, .L0043C9EC
/* 03C998 0043C998 00000000 */   nop
/* 03C99C 0043C99C 10610013 */  beq         $v1, $at, .L0043C9EC
/* 03C9A0 0043C9A0 00000000 */   nop
/* 03C9A4 0043C9A4 8C590000 */  lw          $t9, 0x0($v0)
/* 03C9A8 0043C9A8 8F240014 */  lw          $a0, 0x14($t9)
/* 03C9AC 0043C9AC 1880000F */  blez        $a0, .L0043C9EC
/* 03C9B0 0043C9B0 00044880 */   sll        $t1, $a0, 2
/* 03C9B4 0043C9B4 01244823 */  subu        $t1, $t1, $a0
/* 03C9B8 0043C9B8 00094880 */  sll         $t1, $t1, 2
/* 03C9BC 0043C9BC 00695021 */  addu        $t2, $v1, $t1
/* 03C9C0 0043C9C0 8D45FFFC */  lw          $a1, -0x4($t2)
/* 03C9C4 0043C9C4 24010008 */  addiu       $at, $zero, 0x8
/* 03C9C8 0043C9C8 00055E82 */  srl         $t3, $a1, 26
/* 03C9CC 0043C9CC 15610007 */  bne         $t3, $at, .L0043C9EC
/* 03C9D0 0043C9D0 3C01000F */   lui        $at, (0xFFFFF >> 16)
/* 03C9D4 0043C9D4 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03C9D8 0043C9D8 00A16024 */  and         $t4, $a1, $at
/* 03C9DC 0043C9DC 15800003 */  bnez        $t4, .L0043C9EC
/* 03C9E0 0043C9E0 00000000 */   nop
/* 03C9E4 0043C9E4 1000003A */  b           .L0043CAD0
/* 03C9E8 0043C9E8 2402FFFF */   addiu      $v0, $zero, -0x1
.L0043C9EC:
/* 03C9EC 0043C9EC 8F9985D4 */  lw          $t9, %call16(st_currentifd)($gp)
/* 03C9F0 0043C9F0 0320F809 */  jalr        $t9
/* 03C9F4 0043C9F4 00000000 */   nop
/* 03C9F8 0043C9F8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03C9FC 0043C9FC AFA2003C */  sw          $v0, 0x3C($sp)
/* 03CA00 0043CA00 8FA40048 */  lw          $a0, 0x48($sp)
/* 03CA04 0043CA04 8F9985DC */  lw          $t9, %call16(st_setfd)($gp)
/* 03CA08 0043CA08 0320F809 */  jalr        $t9
/* 03CA0C 0043CA0C 00000000 */   nop
/* 03CA10 0043CA10 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03CA14 0043CA14 8FA40048 */  lw          $a0, 0x48($sp)
/* 03CA18 0043CA18 8FA5004C */  lw          $a1, 0x4C($sp)
/* 03CA1C 0043CA1C 8F998608 */  lw          $t9, %call16(st_psym_ifd_isym)($gp)
/* 03CA20 0043CA20 0320F809 */  jalr        $t9
/* 03CA24 0043CA24 00000000 */   nop
/* 03CA28 0043CA28 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03CA2C 0043CA2C 8C440000 */  lw          $a0, 0x0($v0)
/* 03CA30 0043CA30 AFA20044 */  sw          $v0, 0x44($sp)
/* 03CA34 0043CA34 8F9985FC */  lw          $t9, %call16(st_symadd)($gp)
/* 03CA38 0043CA38 AFA00010 */  sw          $zero, 0x10($sp)
/* 03CA3C 0043CA3C 00002825 */  move        $a1, $zero
/* 03CA40 0043CA40 24060008 */  addiu       $a2, $zero, 0x8
/* 03CA44 0043CA44 0320F809 */  jalr        $t9
/* 03CA48 0043CA48 24070001 */   addiu      $a3, $zero, 0x1
/* 03CA4C 0043CA4C 8FA80044 */  lw          $t0, 0x44($sp)
/* 03CA50 0043CA50 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03CA54 0043CA54 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03CA58 0043CA58 8D030008 */  lw          $v1, 0x8($t0)
/* 03CA5C 0043CA5C 00412824 */  and         $a1, $v0, $at
/* 03CA60 0043CA60 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03CA64 0043CA64 00A36826 */  xor         $t5, $a1, $v1
/* 03CA68 0043CA68 000D7300 */  sll         $t6, $t5, 12
/* 03CA6C 0043CA6C 000E7B02 */  srl         $t7, $t6, 12
/* 03CA70 0043CA70 01E3C026 */  xor         $t8, $t7, $v1
/* 03CA74 0043CA74 AD180008 */  sw          $t8, 0x8($t0)
/* 03CA78 0043CA78 AFA5004C */  sw          $a1, 0x4C($sp)
/* 03CA7C 0043CA7C 8D030008 */  lw          $v1, 0x8($t0)
/* 03CA80 0043CA80 0061C824 */  and         $t9, $v1, $at
/* 03CA84 0043CA84 27290001 */  addiu       $t1, $t9, 0x1
/* 03CA88 0043CA88 01235026 */  xor         $t2, $t1, $v1
/* 03CA8C 0043CA8C 000A5B00 */  sll         $t3, $t2, 12
/* 03CA90 0043CA90 000B6302 */  srl         $t4, $t3, 12
/* 03CA94 0043CA94 01836826 */  xor         $t5, $t4, $v1
/* 03CA98 0043CA98 AD0D0008 */  sw          $t5, 0x8($t0)
/* 03CA9C 0043CA9C 8F9985DC */  lw          $t9, %call16(st_setfd)($gp)
/* 03CAA0 0043CAA0 8FA4003C */  lw          $a0, 0x3C($sp)
/* 03CAA4 0043CAA4 0320F809 */  jalr        $t9
/* 03CAA8 0043CAA8 00000000 */   nop
/* 03CAAC 0043CAAC 27AE0048 */  addiu       $t6, $sp, 0x48
/* 03CAB0 0043CAB0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03CAB4 0043CAB4 8DC40000 */  lw          $a0, 0x0($t6)
/* 03CAB8 0043CAB8 8F9985CC */  lw          $t9, %call16(st_idn_dn)($gp)
/* 03CABC 0043CABC AFA40000 */  sw          $a0, 0x0($sp)
/* 03CAC0 0043CAC0 8DC50004 */  lw          $a1, 0x4($t6)
/* 03CAC4 0043CAC4 0320F809 */  jalr        $t9
/* 03CAC8 0043CAC8 AFA50004 */   sw         $a1, 0x4($sp)
/* 03CACC 0043CACC 8FBC0020 */  lw          $gp, 0x20($sp)
.L0043CAD0:
/* 03CAD0 0043CAD0 8FBF0024 */  lw          $ra, 0x24($sp)
/* 03CAD4 0043CAD4 27BD0050 */  addiu       $sp, $sp, 0x50
/* 03CAD8 0043CAD8 03E00008 */  jr          $ra
/* 03CADC 0043CADC 00000000 */   nop
