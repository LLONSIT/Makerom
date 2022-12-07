glabel swap_fd # 498
# _gp_disp: 0xFBF1ED0
.set noreorder; .cpload $t9; # .set reorder
/* 02BE7C 0042BE7C 27BDFF70 */  addiu       $sp, $sp, -0x90
/* 02BE80 0042BE80 8F998234 */  lw          $t9, %call16(gethostsex)($gp)
/* 02BE84 0042BE84 AFBF0034 */  sw          $ra, 0x34($sp)
/* 02BE88 0042BE88 AFB5002C */  sw          $s5, 0x2C($sp)
/* 02BE8C 0042BE8C AFB40028 */  sw          $s4, 0x28($sp)
/* 02BE90 0042BE90 AFB00018 */  sw          $s0, 0x18($sp)
/* 02BE94 0042BE94 00808025 */  move        $s0, $a0
/* 02BE98 0042BE98 00A0A025 */  move        $s4, $a1
/* 02BE9C 0042BE9C 00C0A825 */  move        $s5, $a2
/* 02BEA0 0042BEA0 AFBC0030 */  sw          $gp, 0x30($sp)
/* 02BEA4 0042BEA4 AFB30024 */  sw          $s3, 0x24($sp)
/* 02BEA8 0042BEA8 AFB20020 */  sw          $s2, 0x20($sp)
/* 02BEAC 0042BEAC 0320F809 */  jalr        $t9
/* 02BEB0 0042BEB0 AFB1001C */   sw         $s1, 0x1C($sp)
/* 02BEB4 0042BEB4 1A80015F */  blez        $s4, .L0042C434
/* 02BEB8 0042BEB8 8FBC0030 */   lw         $gp, 0x30($sp)
/* 02BEBC 0042BEBC 001470C0 */  sll         $t6, $s4, 3
/* 02BEC0 0042BEC0 01D47021 */  addu        $t6, $t6, $s4
/* 02BEC4 0042BEC4 000E70C0 */  sll         $t6, $t6, 3
/* 02BEC8 0042BEC8 01D09821 */  addu        $s3, $t6, $s0
/* 02BECC 0042BECC 02001825 */  move        $v1, $s0
/* 02BED0 0042BED0 3C1200FF */  lui         $s2, (0xFF0000 >> 16)
/* 02BED4 0042BED4 27B10040 */  addiu       $s1, $sp, 0x40
/* 02BED8 0042BED8 3C0400FF */  lui         $a0, (0xFF0000 >> 16)
/* 02BEDC 0042BEDC 0060C825 */  move        $t9, $v1
.L0042BEE0:
/* 02BEE0 0042BEE0 02207025 */  move        $t6, $s1
/* 02BEE4 0042BEE4 24610048 */  addiu       $at, $v1, 0x48
.L0042BEE8:
/* 02BEE8 0042BEE8 8F380000 */  lw          $t8, 0x0($t9)
/* 02BEEC 0042BEEC 2739000C */  addiu       $t9, $t9, 0xC
/* 02BEF0 0042BEF0 25CE000C */  addiu       $t6, $t6, 0xC
/* 02BEF4 0042BEF4 ADD8FFF4 */  sw          $t8, -0xC($t6)
/* 02BEF8 0042BEF8 8F2FFFF8 */  lw          $t7, -0x8($t9)
/* 02BEFC 0042BEFC ADCFFFF8 */  sw          $t7, -0x8($t6)
/* 02BF00 0042BF00 8F38FFFC */  lw          $t8, -0x4($t9)
/* 02BF04 0042BF04 1721FFF8 */  bne         $t9, $at, .L0042BEE8
/* 02BF08 0042BF08 ADD8FFFC */   sw         $t8, -0x4($t6)
/* 02BF0C 0042BF0C 8FB90040 */  lw          $t9, 0x40($sp)
/* 02BF10 0042BF10 8FA50054 */  lw          $a1, 0x54($sp)
/* 02BF14 0042BF14 8FA60058 */  lw          $a2, 0x58($sp)
/* 02BF18 0042BF18 00197A00 */  sll         $t7, $t9, 8
/* 02BF1C 0042BF1C 01F2C024 */  and         $t8, $t7, $s2
/* 02BF20 0042BF20 00197600 */  sll         $t6, $t9, 24
/* 02BF24 0042BF24 01D87825 */  or          $t7, $t6, $t8
/* 02BF28 0042BF28 00197202 */  srl         $t6, $t9, 8
/* 02BF2C 0042BF2C 31D8FF00 */  andi        $t8, $t6, 0xFF00
/* 02BF30 0042BF30 01F87025 */  or          $t6, $t7, $t8
/* 02BF34 0042BF34 00197E02 */  srl         $t7, $t9, 24
/* 02BF38 0042BF38 8FB90044 */  lw          $t9, 0x44($sp)
/* 02BF3C 0042BF3C 01CFC025 */  or          $t8, $t6, $t7
/* 02BF40 0042BF40 AFB80040 */  sw          $t8, 0x40($sp)
/* 02BF44 0042BF44 00197A00 */  sll         $t7, $t9, 8
/* 02BF48 0042BF48 01E4C024 */  and         $t8, $t7, $a0
/* 02BF4C 0042BF4C 00197600 */  sll         $t6, $t9, 24
/* 02BF50 0042BF50 01D87825 */  or          $t7, $t6, $t8
/* 02BF54 0042BF54 00197203 */  sra         $t6, $t9, 8
/* 02BF58 0042BF58 31D8FF00 */  andi        $t8, $t6, 0xFF00
/* 02BF5C 0042BF5C 8FAE0044 */  lw          $t6, 0x44($sp)
/* 02BF60 0042BF60 01F8C825 */  or          $t9, $t7, $t8
/* 02BF64 0042BF64 8FA7005C */  lw          $a3, 0x5C($sp)
/* 02BF68 0042BF68 000E7E02 */  srl         $t7, $t6, 24
/* 02BF6C 0042BF6C 8FAE0048 */  lw          $t6, 0x48($sp)
/* 02BF70 0042BF70 032FC025 */  or          $t8, $t9, $t7
/* 02BF74 0042BF74 AFB80044 */  sw          $t8, 0x44($sp)
/* 02BF78 0042BF78 000E7A00 */  sll         $t7, $t6, 8
/* 02BF7C 0042BF7C 01E4C024 */  and         $t8, $t7, $a0
/* 02BF80 0042BF80 000ECE00 */  sll         $t9, $t6, 24
/* 02BF84 0042BF84 03387825 */  or          $t7, $t9, $t8
/* 02BF88 0042BF88 000ECA03 */  sra         $t9, $t6, 8
/* 02BF8C 0042BF8C 3338FF00 */  andi        $t8, $t9, 0xFF00
/* 02BF90 0042BF90 8FB90048 */  lw          $t9, 0x48($sp)
/* 02BF94 0042BF94 01F87025 */  or          $t6, $t7, $t8
/* 02BF98 0042BF98 8FA80060 */  lw          $t0, 0x60($sp)
/* 02BF9C 0042BF9C 00197E02 */  srl         $t7, $t9, 24
/* 02BFA0 0042BFA0 8FB9004C */  lw          $t9, 0x4C($sp)
/* 02BFA4 0042BFA4 01CFC025 */  or          $t8, $t6, $t7
/* 02BFA8 0042BFA8 AFB80048 */  sw          $t8, 0x48($sp)
/* 02BFAC 0042BFAC 00197A00 */  sll         $t7, $t9, 8
/* 02BFB0 0042BFB0 01E4C024 */  and         $t8, $t7, $a0
/* 02BFB4 0042BFB4 00197600 */  sll         $t6, $t9, 24
/* 02BFB8 0042BFB8 01D87825 */  or          $t7, $t6, $t8
/* 02BFBC 0042BFBC 00197203 */  sra         $t6, $t9, 8
/* 02BFC0 0042BFC0 31D8FF00 */  andi        $t8, $t6, 0xFF00
/* 02BFC4 0042BFC4 8FAE004C */  lw          $t6, 0x4C($sp)
/* 02BFC8 0042BFC8 01F8C825 */  or          $t9, $t7, $t8
/* 02BFCC 0042BFCC 8FA90064 */  lw          $t1, 0x64($sp)
/* 02BFD0 0042BFD0 000E7E02 */  srl         $t7, $t6, 24
/* 02BFD4 0042BFD4 8FAE0050 */  lw          $t6, 0x50($sp)
/* 02BFD8 0042BFD8 032FC025 */  or          $t8, $t9, $t7
/* 02BFDC 0042BFDC AFB8004C */  sw          $t8, 0x4C($sp)
/* 02BFE0 0042BFE0 000E7A00 */  sll         $t7, $t6, 8
/* 02BFE4 0042BFE4 01E4C024 */  and         $t8, $t7, $a0
/* 02BFE8 0042BFE8 000ECE00 */  sll         $t9, $t6, 24
/* 02BFEC 0042BFEC 03387825 */  or          $t7, $t9, $t8
/* 02BFF0 0042BFF0 000ECA03 */  sra         $t9, $t6, 8
/* 02BFF4 0042BFF4 3338FF00 */  andi        $t8, $t9, 0xFF00
/* 02BFF8 0042BFF8 8FB90050 */  lw          $t9, 0x50($sp)
/* 02BFFC 0042BFFC 01F87025 */  or          $t6, $t7, $t8
/* 02C000 0042C000 8FAA006C */  lw          $t2, 0x6C($sp)
/* 02C004 0042C004 00197E02 */  srl         $t7, $t9, 24
/* 02C008 0042C008 01CFC025 */  or          $t8, $t6, $t7
/* 02C00C 0042C00C 00057200 */  sll         $t6, $a1, 8
/* 02C010 0042C010 01C47824 */  and         $t7, $t6, $a0
/* 02C014 0042C014 AFB80050 */  sw          $t8, 0x50($sp)
/* 02C018 0042C018 0005CE00 */  sll         $t9, $a1, 24
/* 02C01C 0042C01C 032FC025 */  or          $t8, $t9, $t7
/* 02C020 0042C020 00057203 */  sra         $t6, $a1, 8
/* 02C024 0042C024 31D9FF00 */  andi        $t9, $t6, 0xFF00
/* 02C028 0042C028 03197825 */  or          $t7, $t8, $t9
/* 02C02C 0042C02C 00057602 */  srl         $t6, $a1, 24
/* 02C030 0042C030 01EE2825 */  or          $a1, $t7, $t6
/* 02C034 0042C034 0006CA00 */  sll         $t9, $a2, 8
/* 02C038 0042C038 03247824 */  and         $t7, $t9, $a0
/* 02C03C 0042C03C 0006C600 */  sll         $t8, $a2, 24
/* 02C040 0042C040 030F7025 */  or          $t6, $t8, $t7
/* 02C044 0042C044 0006CA03 */  sra         $t9, $a2, 8
/* 02C048 0042C048 3338FF00 */  andi        $t8, $t9, 0xFF00
/* 02C04C 0042C04C 01D87825 */  or          $t7, $t6, $t8
/* 02C050 0042C050 0006CE02 */  srl         $t9, $a2, 24
/* 02C054 0042C054 01F93025 */  or          $a2, $t7, $t9
/* 02C058 0042C058 0007C200 */  sll         $t8, $a3, 8
/* 02C05C 0042C05C 03047824 */  and         $t7, $t8, $a0
/* 02C060 0042C060 00077600 */  sll         $t6, $a3, 24
/* 02C064 0042C064 01CFC825 */  or          $t9, $t6, $t7
/* 02C068 0042C068 0007C203 */  sra         $t8, $a3, 8
/* 02C06C 0042C06C 330EFF00 */  andi        $t6, $t8, 0xFF00
/* 02C070 0042C070 032E7825 */  or          $t7, $t9, $t6
/* 02C074 0042C074 0007C602 */  srl         $t8, $a3, 24
/* 02C078 0042C078 01F83825 */  or          $a3, $t7, $t8
/* 02C07C 0042C07C 00087200 */  sll         $t6, $t0, 8
/* 02C080 0042C080 01C47824 */  and         $t7, $t6, $a0
/* 02C084 0042C084 0008CE00 */  sll         $t9, $t0, 24
/* 02C088 0042C088 032FC025 */  or          $t8, $t9, $t7
/* 02C08C 0042C08C 00087203 */  sra         $t6, $t0, 8
/* 02C090 0042C090 31D9FF00 */  andi        $t9, $t6, 0xFF00
/* 02C094 0042C094 03197825 */  or          $t7, $t8, $t9
/* 02C098 0042C098 00087602 */  srl         $t6, $t0, 24
/* 02C09C 0042C09C 01EE4025 */  or          $t0, $t7, $t6
/* 02C0A0 0042C0A0 0009CA00 */  sll         $t9, $t1, 8
/* 02C0A4 0042C0A4 03247824 */  and         $t7, $t9, $a0
/* 02C0A8 0042C0A8 0009C600 */  sll         $t8, $t1, 24
/* 02C0AC 0042C0AC 030F7025 */  or          $t6, $t8, $t7
/* 02C0B0 0042C0B0 0009CA03 */  sra         $t9, $t1, 8
/* 02C0B4 0042C0B4 3338FF00 */  andi        $t8, $t9, 0xFF00
/* 02C0B8 0042C0B8 01D87825 */  or          $t7, $t6, $t8
/* 02C0BC 0042C0BC 0009CE02 */  srl         $t9, $t1, 24
/* 02C0C0 0042C0C0 01F94825 */  or          $t1, $t7, $t9
/* 02C0C4 0042C0C4 97B90068 */  lhu         $t9, 0x68($sp)
/* 02C0C8 0042C0C8 87B80068 */  lh          $t8, 0x68($sp)
/* 02C0CC 0042C0CC 8FAB0070 */  lw          $t3, 0x70($sp)
/* 02C0D0 0042C0D0 00197202 */  srl         $t6, $t9, 8
/* 02C0D4 0042C0D4 00187A00 */  sll         $t7, $t8, 8
/* 02C0D8 0042C0D8 01EEC025 */  or          $t8, $t7, $t6
/* 02C0DC 0042C0DC A7B80068 */  sh          $t8, 0x68($sp)
/* 02C0E0 0042C0E0 97B8006A */  lhu         $t8, 0x6A($sp)
/* 02C0E4 0042C0E4 87AF006A */  lh          $t7, 0x6A($sp)
/* 02C0E8 0042C0E8 8FAC0074 */  lw          $t4, 0x74($sp)
/* 02C0EC 0042C0EC 0018CA02 */  srl         $t9, $t8, 8
/* 02C0F0 0042C0F0 000F7200 */  sll         $t6, $t7, 8
/* 02C0F4 0042C0F4 01D97825 */  or          $t7, $t6, $t9
/* 02C0F8 0042C0F8 000A7200 */  sll         $t6, $t2, 8
/* 02C0FC 0042C0FC 01C4C824 */  and         $t9, $t6, $a0
/* 02C100 0042C100 A7AF006A */  sh          $t7, 0x6A($sp)
/* 02C104 0042C104 000AC600 */  sll         $t8, $t2, 24
/* 02C108 0042C108 03197825 */  or          $t7, $t8, $t9
/* 02C10C 0042C10C 000A7203 */  sra         $t6, $t2, 8
/* 02C110 0042C110 31D8FF00 */  andi        $t8, $t6, 0xFF00
/* 02C114 0042C114 01F8C825 */  or          $t9, $t7, $t8
/* 02C118 0042C118 000A7602 */  srl         $t6, $t2, 24
/* 02C11C 0042C11C 032E5025 */  or          $t2, $t9, $t6
/* 02C120 0042C120 000BC200 */  sll         $t8, $t3, 8
/* 02C124 0042C124 0304C824 */  and         $t9, $t8, $a0
/* 02C128 0042C128 000B7E00 */  sll         $t7, $t3, 24
/* 02C12C 0042C12C 01F97025 */  or          $t6, $t7, $t9
/* 02C130 0042C130 000BC203 */  sra         $t8, $t3, 8
/* 02C134 0042C134 330FFF00 */  andi        $t7, $t8, 0xFF00
/* 02C138 0042C138 01CFC825 */  or          $t9, $t6, $t7
/* 02C13C 0042C13C 000BC602 */  srl         $t8, $t3, 24
/* 02C140 0042C140 03385825 */  or          $t3, $t9, $t8
/* 02C144 0042C144 000C7A00 */  sll         $t7, $t4, 8
/* 02C148 0042C148 01E4C824 */  and         $t9, $t7, $a0
/* 02C14C 0042C14C 000C7600 */  sll         $t6, $t4, 24
/* 02C150 0042C150 01D9C025 */  or          $t8, $t6, $t9
/* 02C154 0042C154 000C7A03 */  sra         $t7, $t4, 8
/* 02C158 0042C158 8FAD0078 */  lw          $t5, 0x78($sp)
/* 02C15C 0042C15C 31EEFF00 */  andi        $t6, $t7, 0xFF00
/* 02C160 0042C160 030EC825 */  or          $t9, $t8, $t6
/* 02C164 0042C164 000C7E02 */  srl         $t7, $t4, 24
/* 02C168 0042C168 032F6025 */  or          $t4, $t9, $t7
/* 02C16C 0042C16C 000D7200 */  sll         $t6, $t5, 8
/* 02C170 0042C170 01C4C824 */  and         $t9, $t6, $a0
/* 02C174 0042C174 000DC600 */  sll         $t8, $t5, 24
/* 02C178 0042C178 03197825 */  or          $t7, $t8, $t9
/* 02C17C 0042C17C 000D7203 */  sra         $t6, $t5, 8
/* 02C180 0042C180 8FBF0080 */  lw          $ra, 0x80($sp)
/* 02C184 0042C184 31D8FF00 */  andi        $t8, $t6, 0xFF00
/* 02C188 0042C188 01F8C825 */  or          $t9, $t7, $t8
/* 02C18C 0042C18C 000D7602 */  srl         $t6, $t5, 24
/* 02C190 0042C190 032E6825 */  or          $t5, $t9, $t6
/* 02C194 0042C194 001FC200 */  sll         $t8, $ra, 8
/* 02C198 0042C198 0304C824 */  and         $t9, $t8, $a0
/* 02C19C 0042C19C 001F7E00 */  sll         $t7, $ra, 24
/* 02C1A0 0042C1A0 01F97025 */  or          $t6, $t7, $t9
/* 02C1A4 0042C1A4 001FC203 */  sra         $t8, $ra, 8
/* 02C1A8 0042C1A8 8FB00084 */  lw          $s0, 0x84($sp)
/* 02C1AC 0042C1AC 330FFF00 */  andi        $t7, $t8, 0xFF00
/* 02C1B0 0042C1B0 01CFC825 */  or          $t9, $t6, $t7
/* 02C1B4 0042C1B4 001FC602 */  srl         $t8, $ra, 24
/* 02C1B8 0042C1B8 0338F825 */  or          $ra, $t9, $t8
/* 02C1BC 0042C1BC 00107A00 */  sll         $t7, $s0, 8
/* 02C1C0 0042C1C0 01E4C824 */  and         $t9, $t7, $a0
/* 02C1C4 0042C1C4 00107600 */  sll         $t6, $s0, 24
/* 02C1C8 0042C1C8 01D9C025 */  or          $t8, $t6, $t9
/* 02C1CC 0042C1CC 00107A03 */  sra         $t7, $s0, 8
/* 02C1D0 0042C1D0 31EEFF00 */  andi        $t6, $t7, 0xFF00
/* 02C1D4 0042C1D4 030EC825 */  or          $t9, $t8, $t6
/* 02C1D8 0042C1D8 00107E02 */  srl         $t7, $s0, 24
/* 02C1DC 0042C1DC 032F8025 */  or          $s0, $t9, $t7
/* 02C1E0 0042C1E0 AFB00084 */  sw          $s0, 0x84($sp)
/* 02C1E4 0042C1E4 AFBF0080 */  sw          $ra, 0x80($sp)
/* 02C1E8 0042C1E8 AFAD0078 */  sw          $t5, 0x78($sp)
/* 02C1EC 0042C1EC AFAC0074 */  sw          $t4, 0x74($sp)
/* 02C1F0 0042C1F0 AFAB0070 */  sw          $t3, 0x70($sp)
/* 02C1F4 0042C1F4 AFAA006C */  sw          $t2, 0x6C($sp)
/* 02C1F8 0042C1F8 AFA90064 */  sw          $t1, 0x64($sp)
/* 02C1FC 0042C1FC AFA80060 */  sw          $t0, 0x60($sp)
/* 02C200 0042C200 AFA7005C */  sw          $a3, 0x5C($sp)
/* 02C204 0042C204 AFA60058 */  sw          $a2, 0x58($sp)
/* 02C208 0042C208 16A20043 */  bne         $s5, $v0, .L0042C318
/* 02C20C 0042C20C AFA50054 */   sw         $a1, 0x54($sp)
/* 02C210 0042C210 0220C825 */  move        $t9, $s1
/* 02C214 0042C214 00607825 */  move        $t7, $v1
/* 02C218 0042C218 26210048 */  addiu       $at, $s1, 0x48
.L0042C21C:
/* 02C21C 0042C21C 8F2E0000 */  lw          $t6, 0x0($t9)
/* 02C220 0042C220 2739000C */  addiu       $t9, $t9, 0xC
/* 02C224 0042C224 25EF000C */  addiu       $t7, $t7, 0xC
/* 02C228 0042C228 ADEEFFF4 */  sw          $t6, -0xC($t7)
/* 02C22C 0042C22C 8F38FFF8 */  lw          $t8, -0x8($t9)
/* 02C230 0042C230 ADF8FFF8 */  sw          $t8, -0x8($t7)
/* 02C234 0042C234 8F2EFFFC */  lw          $t6, -0x4($t9)
/* 02C238 0042C238 1721FFF8 */  bne         $t9, $at, .L0042C21C
/* 02C23C 0042C23C ADEEFFFC */   sw         $t6, -0x4($t7)
/* 02C240 0042C240 8FB9007C */  lw          $t9, 0x7C($sp)
/* 02C244 0042C244 0019C200 */  sll         $t8, $t9, 8
/* 02C248 0042C248 03127024 */  and         $t6, $t8, $s2
/* 02C24C 0042C24C 00197E00 */  sll         $t7, $t9, 24
/* 02C250 0042C250 01EEC025 */  or          $t8, $t7, $t6
/* 02C254 0042C254 00197A02 */  srl         $t7, $t9, 8
/* 02C258 0042C258 31EEFF00 */  andi        $t6, $t7, 0xFF00
/* 02C25C 0042C25C 030E7825 */  or          $t7, $t8, $t6
/* 02C260 0042C260 0019C602 */  srl         $t8, $t9, 24
/* 02C264 0042C264 01F8C825 */  or          $t9, $t7, $t8
/* 02C268 0042C268 AFB9007C */  sw          $t9, 0x7C($sp)
/* 02C26C 0042C26C 906E003C */  lbu         $t6, 0x3C($v1)
/* 02C270 0042C270 0019C0C0 */  sll         $t8, $t9, 3
/* 02C274 0042C274 31D9FF07 */  andi        $t9, $t6, 0xFF07
/* 02C278 0042C278 03197825 */  or          $t7, $t8, $t9
/* 02C27C 0042C27C A06F003C */  sb          $t7, 0x3C($v1)
/* 02C280 0042C280 8FAE007C */  lw          $t6, 0x7C($sp)
/* 02C284 0042C284 000EC680 */  sll         $t8, $t6, 26
/* 02C288 0042C288 0018CFC2 */  srl         $t9, $t8, 31
/* 02C28C 0042C28C 9078003C */  lbu         $t8, 0x3C($v1)
/* 02C290 0042C290 00197880 */  sll         $t7, $t9, 2
/* 02C294 0042C294 31EE0004 */  andi        $t6, $t7, 0x4
/* 02C298 0042C298 3319FFFB */  andi        $t9, $t8, 0xFFFB
/* 02C29C 0042C29C 01D97825 */  or          $t7, $t6, $t9
/* 02C2A0 0042C2A0 A06F003C */  sb          $t7, 0x3C($v1)
/* 02C2A4 0042C2A4 8FB8007C */  lw          $t8, 0x7C($sp)
/* 02C2A8 0042C2A8 00187640 */  sll         $t6, $t8, 25
/* 02C2AC 0042C2AC 000ECFC2 */  srl         $t9, $t6, 31
/* 02C2B0 0042C2B0 906E003C */  lbu         $t6, 0x3C($v1)
/* 02C2B4 0042C2B4 00197840 */  sll         $t7, $t9, 1
/* 02C2B8 0042C2B8 31F80002 */  andi        $t8, $t7, 0x2
/* 02C2BC 0042C2BC 31D9FFFD */  andi        $t9, $t6, 0xFFFD
/* 02C2C0 0042C2C0 03197825 */  or          $t7, $t8, $t9
/* 02C2C4 0042C2C4 A06F003C */  sb          $t7, 0x3C($v1)
/* 02C2C8 0042C2C8 93AE007F */  lbu         $t6, 0x7F($sp)
/* 02C2CC 0042C2CC 000EC1C2 */  srl         $t8, $t6, 7
/* 02C2D0 0042C2D0 33190001 */  andi        $t9, $t8, 0x1
/* 02C2D4 0042C2D4 31EEFFFE */  andi        $t6, $t7, 0xFFFE
/* 02C2D8 0042C2D8 032EC025 */  or          $t8, $t9, $t6
/* 02C2DC 0042C2DC A078003C */  sb          $t8, 0x3C($v1)
/* 02C2E0 0042C2E0 93B9007E */  lbu         $t9, 0x7E($sp)
/* 02C2E4 0042C2E4 906F003D */  lbu         $t7, 0x3D($v1)
/* 02C2E8 0042C2E8 0019C180 */  sll         $t8, $t9, 6
/* 02C2EC 0042C2EC 31F9FF3F */  andi        $t9, $t7, 0xFF3F
/* 02C2F0 0042C2F0 03197025 */  or          $t6, $t8, $t9
/* 02C2F4 0042C2F4 A06E003D */  sb          $t6, 0x3D($v1)
/* 02C2F8 0042C2F8 8FAF007C */  lw          $t7, 0x7C($sp)
/* 02C2FC 0042C2FC 000FCA82 */  srl         $t9, $t7, 10
/* 02C300 0042C300 946F003E */  lhu         $t7, 0x3E($v1)
/* 02C304 0042C304 332E1FFF */  andi        $t6, $t9, 0x1FFF
/* 02C308 0042C308 31F8E000 */  andi        $t8, $t7, 0xE000
/* 02C30C 0042C30C 01D8C825 */  or          $t9, $t6, $t8
/* 02C310 0042C310 10000045 */  b           .L0042C428
/* 02C314 0042C314 A479003E */   sh         $t9, 0x3E($v1)
.L0042C318:
/* 02C318 0042C318 8C6F003C */  lw          $t7, 0x3C($v1)
/* 02C31C 0042C31C 93B9007F */  lbu         $t9, 0x7F($sp)
/* 02C320 0042C320 26210048 */  addiu       $at, $s1, 0x48
/* 02C324 0042C324 000F76C2 */  srl         $t6, $t7, 27
/* 02C328 0042C328 31D8001F */  andi        $t8, $t6, 0x1F
/* 02C32C 0042C32C 332FFFE0 */  andi        $t7, $t9, 0xFFE0
/* 02C330 0042C330 030F7025 */  or          $t6, $t8, $t7
/* 02C334 0042C334 A3AE007F */  sb          $t6, 0x7F($sp)
/* 02C338 0042C338 8C79003C */  lw          $t9, 0x3C($v1)
/* 02C33C 0042C33C 0019C140 */  sll         $t8, $t9, 5
/* 02C340 0042C340 00187FC2 */  srl         $t7, $t8, 31
/* 02C344 0042C344 000FC940 */  sll         $t9, $t7, 5
/* 02C348 0042C348 33380020 */  andi        $t8, $t9, 0x20
/* 02C34C 0042C34C 01C07825 */  move        $t7, $t6
/* 02C350 0042C350 31F900DF */  andi        $t9, $t7, 0xDF
/* 02C354 0042C354 03197025 */  or          $t6, $t8, $t9
/* 02C358 0042C358 A3AE007F */  sb          $t6, 0x7F($sp)
/* 02C35C 0042C35C 8C6F003C */  lw          $t7, 0x3C($v1)
/* 02C360 0042C360 000FC180 */  sll         $t8, $t7, 6
/* 02C364 0042C364 0018CFC2 */  srl         $t9, $t8, 31
/* 02C368 0042C368 00197980 */  sll         $t7, $t9, 6
/* 02C36C 0042C36C 31F80040 */  andi        $t8, $t7, 0x40
/* 02C370 0042C370 01C0C825 */  move        $t9, $t6
/* 02C374 0042C374 332F00BF */  andi        $t7, $t9, 0xBF
/* 02C378 0042C378 030F7025 */  or          $t6, $t8, $t7
/* 02C37C 0042C37C A3AE007F */  sb          $t6, 0x7F($sp)
/* 02C380 0042C380 9078003C */  lbu         $t8, 0x3C($v1)
/* 02C384 0042C384 0018C9C0 */  sll         $t9, $t8, 7
/* 02C388 0042C388 01C0C025 */  move        $t8, $t6
/* 02C38C 0042C38C 330F007F */  andi        $t7, $t8, 0x7F
/* 02C390 0042C390 032F7025 */  or          $t6, $t9, $t7
/* 02C394 0042C394 A3AE007F */  sb          $t6, 0x7F($sp)
/* 02C398 0042C398 9078003D */  lbu         $t8, 0x3D($v1)
/* 02C39C 0042C39C 93AE007E */  lbu         $t6, 0x7E($sp)
/* 02C3A0 0042C3A0 0018C982 */  srl         $t9, $t8, 6
/* 02C3A4 0042C3A4 332F0003 */  andi        $t7, $t9, 0x3
/* 02C3A8 0042C3A8 31D8FFFC */  andi        $t8, $t6, 0xFFFC
/* 02C3AC 0042C3AC 01F8C825 */  or          $t9, $t7, $t8
/* 02C3B0 0042C3B0 A3B9007E */  sb          $t9, 0x7E($sp)
/* 02C3B4 0042C3B4 8FB8007C */  lw          $t8, 0x7C($sp)
/* 02C3B8 0042C3B8 8C6E003C */  lw          $t6, 0x3C($v1)
/* 02C3BC 0042C3BC 0018CA82 */  srl         $t9, $t8, 10
/* 02C3C0 0042C3C0 31CF1FFF */  andi        $t7, $t6, 0x1FFF
/* 02C3C4 0042C3C4 01F97026 */  xor         $t6, $t7, $t9
/* 02C3C8 0042C3C8 000E7A80 */  sll         $t7, $t6, 10
/* 02C3CC 0042C3CC 01F8C826 */  xor         $t9, $t7, $t8
/* 02C3D0 0042C3D0 00197A00 */  sll         $t7, $t9, 8
/* 02C3D4 0042C3D4 01F2C024 */  and         $t8, $t7, $s2
/* 02C3D8 0042C3D8 00197600 */  sll         $t6, $t9, 24
/* 02C3DC 0042C3DC 01D87825 */  or          $t7, $t6, $t8
/* 02C3E0 0042C3E0 00197202 */  srl         $t6, $t9, 8
/* 02C3E4 0042C3E4 31D8FF00 */  andi        $t8, $t6, 0xFF00
/* 02C3E8 0042C3E8 01F87025 */  or          $t6, $t7, $t8
/* 02C3EC 0042C3EC 00197E02 */  srl         $t7, $t9, 24
/* 02C3F0 0042C3F0 01CFC025 */  or          $t8, $t6, $t7
/* 02C3F4 0042C3F4 AFB9007C */  sw          $t9, 0x7C($sp)
/* 02C3F8 0042C3F8 AFB8007C */  sw          $t8, 0x7C($sp)
/* 02C3FC 0042C3FC 0060C025 */  move        $t8, $v1
/* 02C400 0042C400 02207825 */  move        $t7, $s1
.L0042C404:
/* 02C404 0042C404 8DEE0000 */  lw          $t6, 0x0($t7)
/* 02C408 0042C408 25EF000C */  addiu       $t7, $t7, 0xC
/* 02C40C 0042C40C 2718000C */  addiu       $t8, $t8, 0xC
/* 02C410 0042C410 AF0EFFF4 */  sw          $t6, -0xC($t8)
/* 02C414 0042C414 8DF9FFF8 */  lw          $t9, -0x8($t7)
/* 02C418 0042C418 AF19FFF8 */  sw          $t9, -0x8($t8)
/* 02C41C 0042C41C 8DEEFFFC */  lw          $t6, -0x4($t7)
/* 02C420 0042C420 15E1FFF8 */  bne         $t7, $at, .L0042C404
/* 02C424 0042C424 AF0EFFFC */   sw         $t6, -0x4($t8)
.L0042C428:
/* 02C428 0042C428 24630048 */  addiu       $v1, $v1, 0x48
/* 02C42C 0042C42C 5473FEAC */  bnel        $v1, $s3, .L0042BEE0
/* 02C430 0042C430 0060C825 */   move       $t9, $v1
.L0042C434:
/* 02C434 0042C434 8FBF0034 */  lw          $ra, 0x34($sp)
/* 02C438 0042C438 8FB00018 */  lw          $s0, 0x18($sp)
/* 02C43C 0042C43C 8FB1001C */  lw          $s1, 0x1C($sp)
/* 02C440 0042C440 8FB20020 */  lw          $s2, 0x20($sp)
/* 02C444 0042C444 8FB30024 */  lw          $s3, 0x24($sp)
/* 02C448 0042C448 8FB40028 */  lw          $s4, 0x28($sp)
/* 02C44C 0042C44C 8FB5002C */  lw          $s5, 0x2C($sp)
/* 02C450 0042C450 03E00008 */  jr          $ra
/* 02C454 0042C454 27BD0090 */   addiu      $sp, $sp, 0x90
