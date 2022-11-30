glabel swap_ext # 501
# _gp_disp: 0xFBF1530
.set noreorder; .cpload $t9; # .set reorder
/* 02C81C 0042C81C 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 02C820 0042C820 8F998234 */  lw          $t9, %call16(gethostsex)($gp)
/* 02C824 0042C824 AFBF0024 */  sw          $ra, 0x24($sp)
/* 02C828 0042C828 AFB1001C */  sw          $s1, 0x1C($sp)
/* 02C82C 0042C82C AFB00018 */  sw          $s0, 0x18($sp)
/* 02C830 0042C830 00A08025 */  move        $s0, $a1
/* 02C834 0042C834 00C08825 */  move        $s1, $a2
/* 02C838 0042C838 AFBC0020 */  sw          $gp, 0x20($sp)
/* 02C83C 0042C83C 0320F809 */  jalr        $t9
/* 02C840 0042C840 AFA40048 */   sw         $a0, 0x48($sp)
/* 02C844 0042C844 8FBC0020 */  lw          $gp, 0x20($sp)
/* 02C848 0042C848 1A0000E6 */  blez        $s0, .L0042CBE4
/* 02C84C 0042C84C 8FA40048 */   lw         $a0, 0x48($sp)
/* 02C850 0042C850 00107100 */  sll         $t6, $s0, 4
/* 02C854 0042C854 01C44021 */  addu        $t0, $t6, $a0
/* 02C858 0042C858 00801825 */  move        $v1, $a0
/* 02C85C 0042C85C 3C0700FF */  lui         $a3, (0xFF0000 >> 16)
/* 02C860 0042C860 27A60030 */  addiu       $a2, $sp, 0x30
/* 02C864 0042C864 3C0500FF */  lui         $a1, (0xFF0000 >> 16)
/* 02C868 0042C868 8C780000 */  lw          $t8, 0x0($v1)
.L0042C86C:
/* 02C86C 0042C86C ACD80000 */  sw          $t8, 0x0($a2)
/* 02C870 0042C870 8C6F0004 */  lw          $t7, 0x4($v1)
/* 02C874 0042C874 ACCF0004 */  sw          $t7, 0x4($a2)
/* 02C878 0042C878 8C780008 */  lw          $t8, 0x8($v1)
/* 02C87C 0042C87C ACD80008 */  sw          $t8, 0x8($a2)
/* 02C880 0042C880 8C6F000C */  lw          $t7, 0xC($v1)
/* 02C884 0042C884 ACCF000C */  sw          $t7, 0xC($a2)
/* 02C888 0042C888 8FB90034 */  lw          $t9, 0x34($sp)
/* 02C88C 0042C88C 00195200 */  sll         $t2, $t9, 8
/* 02C890 0042C890 01475824 */  and         $t3, $t2, $a3
/* 02C894 0042C894 00194E00 */  sll         $t1, $t9, 24
/* 02C898 0042C898 012B6025 */  or          $t4, $t1, $t3
/* 02C89C 0042C89C 8FAB0038 */  lw          $t3, 0x38($sp)
/* 02C8A0 0042C8A0 00196A03 */  sra         $t5, $t9, 8
/* 02C8A4 0042C8A4 31AEFF00 */  andi        $t6, $t5, 0xFF00
/* 02C8A8 0042C8A8 018E7825 */  or          $t7, $t4, $t6
/* 02C8AC 0042C8AC 00195602 */  srl         $t2, $t9, 24
/* 02C8B0 0042C8B0 000B6A00 */  sll         $t5, $t3, 8
/* 02C8B4 0042C8B4 01EA4825 */  or          $t1, $t7, $t2
/* 02C8B8 0042C8B8 01A76024 */  and         $t4, $t5, $a3
/* 02C8BC 0042C8BC 000BCE00 */  sll         $t9, $t3, 24
/* 02C8C0 0042C8C0 000BC203 */  sra         $t8, $t3, 8
/* 02C8C4 0042C8C4 330FFF00 */  andi        $t7, $t8, 0xFF00
/* 02C8C8 0042C8C8 032C7025 */  or          $t6, $t9, $t4
/* 02C8CC 0042C8CC 01CF5025 */  or          $t2, $t6, $t7
/* 02C8D0 0042C8D0 000B6E02 */  srl         $t5, $t3, 24
/* 02C8D4 0042C8D4 014DC825 */  or          $t9, $t2, $t5
/* 02C8D8 0042C8D8 AFA90034 */  sw          $t1, 0x34($sp)
/* 02C8DC 0042C8DC 1622005E */  bne         $s1, $v0, .L0042CA58
/* 02C8E0 0042C8E0 AFB90038 */   sw         $t9, 0x38($sp)
/* 02C8E4 0042C8E4 8CCB0000 */  lw          $t3, 0x0($a2)
/* 02C8E8 0042C8E8 AC6B0000 */  sw          $t3, 0x0($v1)
/* 02C8EC 0042C8EC 8CCC0004 */  lw          $t4, 0x4($a2)
/* 02C8F0 0042C8F0 AC6C0004 */  sw          $t4, 0x4($v1)
/* 02C8F4 0042C8F4 8CCB0008 */  lw          $t3, 0x8($a2)
/* 02C8F8 0042C8F8 AC6B0008 */  sw          $t3, 0x8($v1)
/* 02C8FC 0042C8FC 8CCC000C */  lw          $t4, 0xC($a2)
/* 02C900 0042C900 AC6C000C */  sw          $t4, 0xC($v1)
/* 02C904 0042C904 8FB8003C */  lw          $t8, 0x3C($sp)
/* 02C908 0042C908 00187A00 */  sll         $t7, $t8, 8
/* 02C90C 0042C90C 01E54824 */  and         $t1, $t7, $a1
/* 02C910 0042C910 00187600 */  sll         $t6, $t8, 24
/* 02C914 0042C914 00186A02 */  srl         $t5, $t8, 8
/* 02C918 0042C918 31B9FF00 */  andi        $t9, $t5, 0xFF00
/* 02C91C 0042C91C 01C95025 */  or          $t2, $t6, $t1
/* 02C920 0042C920 01596025 */  or          $t4, $t2, $t9
/* 02C924 0042C924 00185E02 */  srl         $t3, $t8, 24
/* 02C928 0042C928 018B7025 */  or          $t6, $t4, $t3
/* 02C92C 0042C92C AFAE003C */  sw          $t6, 0x3C($sp)
/* 02C930 0042C930 906A000C */  lbu         $t2, 0xC($v1)
/* 02C934 0042C934 000E6880 */  sll         $t5, $t6, 2
/* 02C938 0042C938 3159FF03 */  andi        $t9, $t2, 0xFF03
/* 02C93C 0042C93C 01B9C025 */  or          $t8, $t5, $t9
/* 02C940 0042C940 A078000C */  sb          $t8, 0xC($v1)
/* 02C944 0042C944 8FAC003C */  lw          $t4, 0x3C($sp)
/* 02C948 0042C948 946A000C */  lhu         $t2, 0xC($v1)
/* 02C94C 0042C94C 000C5D40 */  sll         $t3, $t4, 21
/* 02C950 0042C950 000B7EC2 */  srl         $t7, $t3, 27
/* 02C954 0042C954 000F7140 */  sll         $t6, $t7, 5
/* 02C958 0042C958 31C903E0 */  andi        $t1, $t6, 0x3E0
/* 02C95C 0042C95C 314DFC1F */  andi        $t5, $t2, 0xFC1F
/* 02C960 0042C960 012DC825 */  or          $t9, $t1, $t5
/* 02C964 0042C964 A479000C */  sh          $t9, 0xC($v1)
/* 02C968 0042C968 8FB8003C */  lw          $t8, 0x3C($sp)
/* 02C96C 0042C96C 906A000D */  lbu         $t2, 0xD($v1)
/* 02C970 0042C970 00186500 */  sll         $t4, $t8, 20
/* 02C974 0042C974 000C5FC2 */  srl         $t3, $t4, 31
/* 02C978 0042C978 000B7900 */  sll         $t7, $t3, 4
/* 02C97C 0042C97C 31EE0010 */  andi        $t6, $t7, 0x10
/* 02C980 0042C980 3149FFEF */  andi        $t1, $t2, 0xFFEF
/* 02C984 0042C984 01C96825 */  or          $t5, $t6, $t1
/* 02C988 0042C988 A06D000D */  sb          $t5, 0xD($v1)
/* 02C98C 0042C98C 8FB9003C */  lw          $t9, 0x3C($sp)
/* 02C990 0042C990 8C64000C */  lw          $a0, 0xC($v1)
/* 02C994 0042C994 0019C302 */  srl         $t8, $t9, 12
/* 02C998 0042C998 03046026 */  xor         $t4, $t8, $a0
/* 02C99C 0042C99C 000C5B00 */  sll         $t3, $t4, 12
/* 02C9A0 0042C9A0 000B7B02 */  srl         $t7, $t3, 12
/* 02C9A4 0042C9A4 01E45026 */  xor         $t2, $t7, $a0
/* 02C9A8 0042C9A8 AC6A000C */  sw          $t2, 0xC($v1)
/* 02C9AC 0042C9AC 8FAE0030 */  lw          $t6, 0x30($sp)
/* 02C9B0 0042C9B0 000E6A00 */  sll         $t5, $t6, 8
/* 02C9B4 0042C9B4 01A5C824 */  and         $t9, $t5, $a1
/* 02C9B8 0042C9B8 000E4E00 */  sll         $t1, $t6, 24
/* 02C9BC 0042C9BC 000E6202 */  srl         $t4, $t6, 8
/* 02C9C0 0042C9C0 318BFF00 */  andi        $t3, $t4, 0xFF00
/* 02C9C4 0042C9C4 0139C025 */  or          $t8, $t1, $t9
/* 02C9C8 0042C9C8 030B7825 */  or          $t7, $t8, $t3
/* 02C9CC 0042C9CC 000E5602 */  srl         $t2, $t6, 24
/* 02C9D0 0042C9D0 01EA6825 */  or          $t5, $t7, $t2
/* 02C9D4 0042C9D4 AFAD0030 */  sw          $t5, 0x30($sp)
/* 02C9D8 0042C9D8 87A90030 */  lh          $t1, 0x30($sp)
/* 02C9DC 0042C9DC 946E0000 */  lhu         $t6, 0x0($v1)
/* 02C9E0 0042C9E0 A4690002 */  sh          $t1, 0x2($v1)
/* 02C9E4 0042C9E4 97B90032 */  lhu         $t9, 0x32($sp)
/* 02C9E8 0042C9E8 31CFF800 */  andi        $t7, $t6, 0xF800
/* 02C9EC 0042C9EC 0019C0C2 */  srl         $t8, $t9, 3
/* 02C9F0 0042C9F0 330B07FF */  andi        $t3, $t8, 0x7FF
/* 02C9F4 0042C9F4 016F5025 */  or          $t2, $t3, $t7
/* 02C9F8 0042C9F8 A46A0000 */  sh          $t2, 0x0($v1)
/* 02C9FC 0042C9FC 90780000 */  lbu         $t8, 0x0($v1)
/* 02CA00 0042CA00 8FA90030 */  lw          $t1, 0x30($sp)
/* 02CA04 0042CA04 330EFF7F */  andi        $t6, $t8, 0xFF7F
/* 02CA08 0042CA08 000961C0 */  sll         $t4, $t1, 7
/* 02CA0C 0042CA0C 018EC025 */  or          $t8, $t4, $t6
/* 02CA10 0042CA10 A0780000 */  sb          $t8, 0x0($v1)
/* 02CA14 0042CA14 8FAF0030 */  lw          $t7, 0x30($sp)
/* 02CA18 0042CA18 330C00BF */  andi        $t4, $t8, 0xBF
/* 02CA1C 0042CA1C 000F5780 */  sll         $t2, $t7, 30
/* 02CA20 0042CA20 000A6FC2 */  srl         $t5, $t2, 31
/* 02CA24 0042CA24 000D4980 */  sll         $t1, $t5, 6
/* 02CA28 0042CA28 31390040 */  andi        $t9, $t1, 0x40
/* 02CA2C 0042CA2C 032CC025 */  or          $t8, $t9, $t4
/* 02CA30 0042CA30 A0780000 */  sb          $t8, 0x0($v1)
/* 02CA34 0042CA34 8FAB0030 */  lw          $t3, 0x30($sp)
/* 02CA38 0042CA38 331900DF */  andi        $t9, $t8, 0xDF
/* 02CA3C 0042CA3C 000B7F40 */  sll         $t7, $t3, 29
/* 02CA40 0042CA40 000F57C2 */  srl         $t2, $t7, 31
/* 02CA44 0042CA44 000A6940 */  sll         $t5, $t2, 5
/* 02CA48 0042CA48 31A90020 */  andi        $t1, $t5, 0x20
/* 02CA4C 0042CA4C 01396025 */  or          $t4, $t1, $t9
/* 02CA50 0042CA50 10000061 */  b           .L0042CBD8
/* 02CA54 0042CA54 A06C0000 */   sb         $t4, 0x0($v1)
.L0042CA58:
/* 02CA58 0042CA58 8C6E000C */  lw          $t6, 0xC($v1)
/* 02CA5C 0042CA5C 93AA003F */  lbu         $t2, 0x3F($sp)
/* 02CA60 0042CA60 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 02CA64 0042CA64 000E5E82 */  srl         $t3, $t6, 26
/* 02CA68 0042CA68 316F003F */  andi        $t7, $t3, 0x3F
/* 02CA6C 0042CA6C 314DFFC0 */  andi        $t5, $t2, 0xFFC0
/* 02CA70 0042CA70 01EDC025 */  or          $t8, $t7, $t5
/* 02CA74 0042CA74 A3B8003F */  sb          $t8, 0x3F($sp)
/* 02CA78 0042CA78 8C69000C */  lw          $t1, 0xC($v1)
/* 02CA7C 0042CA7C 97AA003E */  lhu         $t2, 0x3E($sp)
/* 02CA80 0042CA80 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 02CA84 0042CA84 0009C980 */  sll         $t9, $t1, 6
/* 02CA88 0042CA88 001966C2 */  srl         $t4, $t9, 27
/* 02CA8C 0042CA8C 000C7180 */  sll         $t6, $t4, 6
/* 02CA90 0042CA90 31CB07C0 */  andi        $t3, $t6, 0x7C0
/* 02CA94 0042CA94 314FF83F */  andi        $t7, $t2, 0xF83F
/* 02CA98 0042CA98 016F6825 */  or          $t5, $t3, $t7
/* 02CA9C 0042CA9C A7AD003E */  sh          $t5, 0x3E($sp)
/* 02CAA0 0042CAA0 8C78000C */  lw          $t8, 0xC($v1)
/* 02CAA4 0042CAA4 93AA003E */  lbu         $t2, 0x3E($sp)
/* 02CAA8 0042CAA8 00184AC0 */  sll         $t1, $t8, 11
/* 02CAAC 0042CAAC 0009CFC2 */  srl         $t9, $t1, 31
/* 02CAB0 0042CAB0 001960C0 */  sll         $t4, $t9, 3
/* 02CAB4 0042CAB4 318E0008 */  andi        $t6, $t4, 0x8
/* 02CAB8 0042CAB8 314BFFF7 */  andi        $t3, $t2, 0xFFF7
/* 02CABC 0042CABC 01CB7825 */  or          $t7, $t6, $t3
/* 02CAC0 0042CAC0 A3AF003E */  sb          $t7, 0x3E($sp)
/* 02CAC4 0042CAC4 8C6D000C */  lw          $t5, 0xC($v1)
/* 02CAC8 0042CAC8 8FA9003C */  lw          $t1, 0x3C($sp)
/* 02CACC 0042CACC 01A1C024 */  and         $t8, $t5, $at
/* 02CAD0 0042CAD0 0009CB02 */  srl         $t9, $t1, 12
/* 02CAD4 0042CAD4 03196026 */  xor         $t4, $t8, $t9
/* 02CAD8 0042CAD8 000C5300 */  sll         $t2, $t4, 12
/* 02CADC 0042CADC 01497026 */  xor         $t6, $t2, $t1
/* 02CAE0 0042CAE0 000E7A00 */  sll         $t7, $t6, 8
/* 02CAE4 0042CAE4 01E56824 */  and         $t5, $t7, $a1
/* 02CAE8 0042CAE8 000E5E00 */  sll         $t3, $t6, 24
/* 02CAEC 0042CAEC 000ECA02 */  srl         $t9, $t6, 8
/* 02CAF0 0042CAF0 332CFF00 */  andi        $t4, $t9, 0xFF00
/* 02CAF4 0042CAF4 016DC025 */  or          $t8, $t3, $t5
/* 02CAF8 0042CAF8 030C5025 */  or          $t2, $t8, $t4
/* 02CAFC 0042CAFC 000E4E02 */  srl         $t1, $t6, 24
/* 02CB00 0042CB00 AFAE003C */  sw          $t6, 0x3C($sp)
/* 02CB04 0042CB04 01497825 */  or          $t7, $t2, $t1
/* 02CB08 0042CB08 AFAF003C */  sw          $t7, 0x3C($sp)
/* 02CB0C 0042CB0C 946B0002 */  lhu         $t3, 0x2($v1)
/* 02CB10 0042CB10 97AE0032 */  lhu         $t6, 0x32($sp)
/* 02CB14 0042CB14 A7AB0030 */  sh          $t3, 0x30($sp)
/* 02CB18 0042CB18 946D0000 */  lhu         $t5, 0x0($v1)
/* 02CB1C 0042CB1C 31CA0007 */  andi        $t2, $t6, 0x7
/* 02CB20 0042CB20 31B907FF */  andi        $t9, $t5, 0x7FF
/* 02CB24 0042CB24 001960C0 */  sll         $t4, $t9, 3
/* 02CB28 0042CB28 018A4825 */  or          $t1, $t4, $t2
/* 02CB2C 0042CB2C A7A90032 */  sh          $t1, 0x32($sp)
/* 02CB30 0042CB30 8C6F0000 */  lw          $t7, 0x0($v1)
/* 02CB34 0042CB34 93AE0033 */  lbu         $t6, 0x33($sp)
/* 02CB38 0042CB38 000F5880 */  sll         $t3, $t7, 2
/* 02CB3C 0042CB3C 000B6FC2 */  srl         $t5, $t3, 31
/* 02CB40 0042CB40 000DC880 */  sll         $t9, $t5, 2
/* 02CB44 0042CB44 33380004 */  andi        $t8, $t9, 0x4
/* 02CB48 0042CB48 31CCFFFB */  andi        $t4, $t6, 0xFFFB
/* 02CB4C 0042CB4C 030C7025 */  or          $t6, $t8, $t4
/* 02CB50 0042CB50 A3AE0033 */  sb          $t6, 0x33($sp)
/* 02CB54 0042CB54 8C690000 */  lw          $t1, 0x0($v1)
/* 02CB58 0042CB58 31D800FD */  andi        $t8, $t6, 0xFD
/* 02CB5C 0042CB5C 00097840 */  sll         $t7, $t1, 1
/* 02CB60 0042CB60 000F5FC2 */  srl         $t3, $t7, 31
/* 02CB64 0042CB64 000B6840 */  sll         $t5, $t3, 1
/* 02CB68 0042CB68 31B90002 */  andi        $t9, $t5, 0x2
/* 02CB6C 0042CB6C 03386825 */  or          $t5, $t9, $t8
/* 02CB70 0042CB70 A3AD0033 */  sb          $t5, 0x33($sp)
/* 02CB74 0042CB74 8C690000 */  lw          $t1, 0x0($v1)
/* 02CB78 0042CB78 31AA00FE */  andi        $t2, $t5, 0xFE
/* 02CB7C 0042CB7C 00097FC2 */  srl         $t7, $t1, 31
/* 02CB80 0042CB80 31EB0001 */  andi        $t3, $t7, 0x1
/* 02CB84 0042CB84 016A7025 */  or          $t6, $t3, $t2
/* 02CB88 0042CB88 A3AE0033 */  sb          $t6, 0x33($sp)
/* 02CB8C 0042CB8C 8FB90030 */  lw          $t9, 0x30($sp)
/* 02CB90 0042CB90 00194A00 */  sll         $t1, $t9, 8
/* 02CB94 0042CB94 01257824 */  and         $t7, $t1, $a1
/* 02CB98 0042CB98 0019C600 */  sll         $t8, $t9, 24
/* 02CB9C 0042CB9C 00196A02 */  srl         $t5, $t9, 8
/* 02CBA0 0042CBA0 31ABFF00 */  andi        $t3, $t5, 0xFF00
/* 02CBA4 0042CBA4 030F6025 */  or          $t4, $t8, $t7
/* 02CBA8 0042CBA8 018B5025 */  or          $t2, $t4, $t3
/* 02CBAC 0042CBAC 00197602 */  srl         $t6, $t9, 24
/* 02CBB0 0042CBB0 014E4825 */  or          $t1, $t2, $t6
/* 02CBB4 0042CBB4 AFA90030 */  sw          $t1, 0x30($sp)
/* 02CBB8 0042CBB8 8CCF0000 */  lw          $t7, 0x0($a2)
/* 02CBBC 0042CBBC AC6F0000 */  sw          $t7, 0x0($v1)
/* 02CBC0 0042CBC0 8CD80004 */  lw          $t8, 0x4($a2)
/* 02CBC4 0042CBC4 AC780004 */  sw          $t8, 0x4($v1)
/* 02CBC8 0042CBC8 8CCF0008 */  lw          $t7, 0x8($a2)
/* 02CBCC 0042CBCC AC6F0008 */  sw          $t7, 0x8($v1)
/* 02CBD0 0042CBD0 8CD8000C */  lw          $t8, 0xC($a2)
/* 02CBD4 0042CBD4 AC78000C */  sw          $t8, 0xC($v1)
.L0042CBD8:
/* 02CBD8 0042CBD8 24630010 */  addiu       $v1, $v1, 0x10
/* 02CBDC 0042CBDC 5468FF23 */  bnel        $v1, $t0, .L0042C86C
/* 02CBE0 0042CBE0 8C780000 */   lw         $t8, 0x0($v1)
.L0042CBE4:
/* 02CBE4 0042CBE4 8FBF0024 */  lw          $ra, 0x24($sp)
/* 02CBE8 0042CBE8 8FB00018 */  lw          $s0, 0x18($sp)
/* 02CBEC 0042CBEC 8FB1001C */  lw          $s1, 0x1C($sp)
/* 02CBF0 0042CBF0 03E00008 */  jr          $ra
/* 02CBF4 0042CBF4 27BD0048 */   addiu      $sp, $sp, 0x48
