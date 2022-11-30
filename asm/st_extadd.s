.section .rodata
glabel STR_10013FDC
/* 043FDC 10013FDC */ .asciz "st_extadd: you didn't initialize with cuinit or readst\n"
                      .balign 4


.section .text
glabel st_extadd # 680
# _gp_disp: 0xFBE1E1C
.set noreorder; .cpload $t9; # .set reorder
/* 03BF30 0043BF30 8F8887C4 */  lw          $t0, %got(st_pchdr)($gp)
/* 03BF34 0043BF34 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03BF38 0043BF38 AFB00014 */  sw          $s0, 0x14($sp)
/* 03BF3C 0043BF3C 8D080000 */  lw          $t0, 0x0($t0)
/* 03BF40 0043BF40 00E08025 */  move        $s0, $a3
/* 03BF44 0043BF44 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03BF48 0043BF48 AFBC0018 */  sw          $gp, 0x18($sp)
/* 03BF4C 0043BF4C AFA40028 */  sw          $a0, 0x28($sp)
/* 03BF50 0043BF50 AFA5002C */  sw          $a1, 0x2C($sp)
/* 03BF54 0043BF54 15000008 */  bnez        $t0, .L0043BF78
/* 03BF58 0043BF58 AFA60030 */   sw         $a2, 0x30($sp)
/* 03BF5C 0043BF5C 8F998614 */  lw          $t9, %call16(_md_st_internal)($gp)
/* 03BF60 0043BF60 8F84802C */  lw          $a0, %got(STR_10013FDC)($gp)
/* 03BF64 0043BF64 0320F809 */  jalr        $t9
/* 03BF68 0043BF68 24843FDC */   addiu      $a0, $a0, %lo(STR_10013FDC)
/* 03BF6C 0043BF6C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03BF70 0043BF70 8F8887C4 */  lw          $t0, %got(st_pchdr)($gp)
/* 03BF74 0043BF74 8D080000 */  lw          $t0, 0x0($t0)
.L0043BF78:
/* 03BF78 0043BF78 8D04001C */  lw          $a0, 0x1C($t0)
/* 03BF7C 0043BF7C 8D0E0020 */  lw          $t6, 0x20($t0)
/* 03BF80 0043BF80 25050020 */  addiu       $a1, $t0, 0x20
/* 03BF84 0043BF84 008E082A */  slt         $at, $a0, $t6
/* 03BF88 0043BF88 5420000E */  bnel        $at, $zero, .L0043BFC4
/* 03BF8C 0043BF8C 8D180018 */   lw         $t8, 0x18($t0)
/* 03BF90 0043BF90 8F998624 */  lw          $t9, %call16(_md_st_malloc)($gp)
/* 03BF94 0043BF94 8D040018 */  lw          $a0, 0x18($t0)
/* 03BF98 0043BF98 24060010 */  addiu       $a2, $zero, 0x10
/* 03BF9C 0043BF9C 0320F809 */  jalr        $t9
/* 03BFA0 0043BFA0 24070020 */   addiu      $a3, $zero, 0x20
/* 03BFA4 0043BFA4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03BFA8 0043BFA8 8F8F87C4 */  lw          $t7, %got(st_pchdr)($gp)
/* 03BFAC 0043BFAC 8F8887C4 */  lw          $t0, %got(st_pchdr)($gp)
/* 03BFB0 0043BFB0 8DEF0000 */  lw          $t7, 0x0($t7)
/* 03BFB4 0043BFB4 ADE20018 */  sw          $v0, 0x18($t7)
/* 03BFB8 0043BFB8 8D080000 */  lw          $t0, 0x0($t0)
/* 03BFBC 0043BFBC 8D04001C */  lw          $a0, 0x1C($t0)
/* 03BFC0 0043BFC0 8D180018 */  lw          $t8, 0x18($t0)
.L0043BFC4:
/* 03BFC4 0043BFC4 0004C900 */  sll         $t9, $a0, 4
/* 03BFC8 0043BFC8 03191821 */  addu        $v1, $t8, $t9
/* 03BFCC 0043BFCC 8F998620 */  lw          $t9, %call16(_md_st_currentifd)($gp)
/* 03BFD0 0043BFD0 AFA30024 */  sw          $v1, 0x24($sp)
/* 03BFD4 0043BFD4 0320F809 */  jalr        $t9
/* 03BFD8 0043BFD8 00000000 */   nop
/* 03BFDC 0043BFDC 8FA30024 */  lw          $v1, 0x24($sp)
/* 03BFE0 0043BFE0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03BFE4 0043BFE4 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03BFE8 0043BFE8 90690000 */  lbu         $t1, 0x0($v1)
/* 03BFEC 0043BFEC A4620002 */  sh          $v0, 0x2($v1)
/* 03BFF0 0043BFF0 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03BFF4 0043BFF4 312BFF7F */  andi        $t3, $t1, 0xFF7F
/* 03BFF8 0043BFF8 316D00BF */  andi        $t5, $t3, 0xBF
/* 03BFFC 0043BFFC 31AF00DF */  andi        $t7, $t5, 0xDF
/* 03C000 0043C000 A06B0000 */  sb          $t3, 0x0($v1)
/* 03C004 0043C004 31F900EF */  andi        $t9, $t7, 0xEF
/* 03C008 0043C008 A06D0000 */  sb          $t5, 0x0($v1)
/* 03C00C 0043C00C A06F0000 */  sb          $t7, 0x0($v1)
/* 03C010 0043C010 332900F7 */  andi        $t1, $t9, 0xF7
/* 03C014 0043C014 A0790000 */  sb          $t9, 0x0($v1)
/* 03C018 0043C018 A0690000 */  sb          $t1, 0x0($v1)
/* 03C01C 0043C01C 946A0000 */  lhu         $t2, 0x0($v1)
/* 03C020 0043C020 9069000C */  lbu         $t1, 0xC($v1)
/* 03C024 0043C024 314BF800 */  andi        $t3, $t2, 0xF800
/* 03C028 0043C028 A46B0000 */  sh          $t3, 0x0($v1)
/* 03C02C 0043C02C 8FAC0028 */  lw          $t4, 0x28($sp)
/* 03C030 0043C030 312AFF03 */  andi        $t2, $t1, 0xFF03
/* 03C034 0043C034 AC6C0004 */  sw          $t4, 0x4($v1)
/* 03C038 0043C038 8FAD002C */  lw          $t5, 0x2C($sp)
/* 03C03C 0043C03C AC6D0008 */  sw          $t5, 0x8($v1)
/* 03C040 0043C040 8FAF0030 */  lw          $t7, 0x30($sp)
/* 03C044 0043C044 00106940 */  sll         $t5, $s0, 5
/* 03C048 0043C048 31AE03E0 */  andi        $t6, $t5, 0x3E0
/* 03C04C 0043C04C 000FC880 */  sll         $t9, $t7, 2
/* 03C050 0043C050 032A5825 */  or          $t3, $t9, $t2
/* 03C054 0043C054 A06B000C */  sb          $t3, 0xC($v1)
/* 03C058 0043C058 946F000C */  lhu         $t7, 0xC($v1)
/* 03C05C 0043C05C 31F8FC1F */  andi        $t8, $t7, 0xFC1F
/* 03C060 0043C060 01D84825 */  or          $t1, $t6, $t8
/* 03C064 0043C064 A469000C */  sh          $t1, 0xC($v1)
/* 03C068 0043C068 9079000D */  lbu         $t9, 0xD($v1)
/* 03C06C 0043C06C 332AFFEF */  andi        $t2, $t9, 0xFFEF
/* 03C070 0043C070 A06A000D */  sb          $t2, 0xD($v1)
/* 03C074 0043C074 8FAB0038 */  lw          $t3, 0x38($sp)
/* 03C078 0043C078 8C62000C */  lw          $v0, 0xC($v1)
/* 03C07C 0043C07C 01616024 */  and         $t4, $t3, $at
/* 03C080 0043C080 01826826 */  xor         $t5, $t4, $v0
/* 03C084 0043C084 000D7B00 */  sll         $t7, $t5, 12
/* 03C088 0043C088 000F7302 */  srl         $t6, $t7, 12
/* 03C08C 0043C08C 24010012 */  addiu       $at, $zero, 0x12
/* 03C090 0043C090 01C2C026 */  xor         $t8, $t6, $v0
/* 03C094 0043C094 12010013 */  beq         $s0, $at, .L0043C0E4
/* 03C098 0043C098 AC78000C */   sw         $t8, 0xC($v1)
/* 03C09C 0043C09C 24010011 */  addiu       $at, $zero, 0x11
/* 03C0A0 0043C0A0 12010010 */  beq         $s0, $at, .L0043C0E4
/* 03C0A4 0043C0A4 00000000 */   nop
/* 03C0A8 0043C0A8 1200000E */  beqz        $s0, .L0043C0E4
/* 03C0AC 0043C0AC 24010006 */   addiu      $at, $zero, 0x6
/* 03C0B0 0043C0B0 1201000C */  beq         $s0, $at, .L0043C0E4
/* 03C0B4 0043C0B4 24010015 */   addiu      $at, $zero, 0x15
/* 03C0B8 0043C0B8 1201000A */  beq         $s0, $at, .L0043C0E4
/* 03C0BC 0043C0BC 00000000 */   nop
/* 03C0C0 0043C0C0 8F998604 */  lw          $t9, %call16(st_pcfd_ifd)($gp)
/* 03C0C4 0043C0C4 94640002 */  lhu         $a0, 0x2($v1)
/* 03C0C8 0043C0C8 0320F809 */  jalr        $t9
/* 03C0CC 0043C0CC 00000000 */   nop
/* 03C0D0 0043C0D0 8C430000 */  lw          $v1, 0x0($v0)
/* 03C0D4 0043C0D4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03C0D8 0043C0D8 9069003C */  lbu         $t1, 0x3C($v1)
/* 03C0DC 0043C0DC 3139FFFB */  andi        $t9, $t1, 0xFFFB
/* 03C0E0 0043C0E0 A079003C */  sb          $t9, 0x3C($v1)
.L0043C0E4:
/* 03C0E4 0043C0E4 8F8887C4 */  lw          $t0, %got(st_pchdr)($gp)
/* 03C0E8 0043C0E8 8D080000 */  lw          $t0, 0x0($t0)
/* 03C0EC 0043C0EC 8D02001C */  lw          $v0, 0x1C($t0)
/* 03C0F0 0043C0F0 244A0001 */  addiu       $t2, $v0, 0x1
/* 03C0F4 0043C0F4 AD0A001C */  sw          $t2, 0x1C($t0)
/* 03C0F8 0043C0F8 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03C0FC 0043C0FC 8FB00014 */  lw          $s0, 0x14($sp)
/* 03C100 0043C100 27BD0028 */  addiu       $sp, $sp, 0x28
/* 03C104 0043C104 03E00008 */  jr          $ra
/* 03C108 0043C108 00000000 */   nop
