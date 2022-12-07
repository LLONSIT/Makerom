glabel address_to_procedure # 528
# _gp_disp: 0xFBEF460
.set noreorder; .cpload $t9; # .set reorder
/* 02E8EC 0042E8EC 27BDFF88 */  addiu       $sp, $sp, -0x78
/* 02E8F0 0042E8F0 8F998524 */  lw          $t9, %call16(address_to_section)($gp)
/* 02E8F4 0042E8F4 AFBF003C */  sw          $ra, 0x3C($sp)
/* 02E8F8 0042E8F8 AFB70034 */  sw          $s7, 0x34($sp)
/* 02E8FC 0042E8FC AFB60030 */  sw          $s6, 0x30($sp)
/* 02E900 0042E900 00A0B025 */  move        $s6, $a1
/* 02E904 0042E904 0080B825 */  move        $s7, $a0
/* 02E908 0042E908 AFBC0038 */  sw          $gp, 0x38($sp)
/* 02E90C 0042E90C AFB5002C */  sw          $s5, 0x2C($sp)
/* 02E910 0042E910 AFB40028 */  sw          $s4, 0x28($sp)
/* 02E914 0042E914 AFB30024 */  sw          $s3, 0x24($sp)
/* 02E918 0042E918 AFB20020 */  sw          $s2, 0x20($sp)
/* 02E91C 0042E91C AFB1001C */  sw          $s1, 0x1C($sp)
/* 02E920 0042E920 0320F809 */  jalr        $t9
/* 02E924 0042E924 AFB00018 */   sw         $s0, 0x18($sp)
/* 02E928 0042E928 14400003 */  bnez        $v0, .L0042E938
/* 02E92C 0042E92C 8FBC0038 */   lw         $gp, 0x38($sp)
/* 02E930 0042E930 10000092 */  b           .L0042EB7C
/* 02E934 0042E934 2402FFFF */   addiu      $v0, $zero, -0x1
.L0042E938:
/* 02E938 0042E938 8EE2009C */  lw          $v0, 0x9C($s7)
/* 02E93C 0042E93C 8EE700D4 */  lw          $a3, 0xD4($s7)
/* 02E940 0042E940 14400003 */  bnez        $v0, .L0042E950
/* 02E944 0042E944 00E09025 */   move       $s2, $a3
/* 02E948 0042E948 1000008C */  b           .L0042EB7C
/* 02E94C 0042E94C 2402FFFF */   addiu      $v0, $zero, -0x1
.L0042E950:
/* 02E950 0042E950 8EE60198 */  lw          $a2, 0x198($s7)
/* 02E954 0042E954 8C430018 */  lw          $v1, 0x18($v0)
/* 02E958 0042E958 02409825 */  move        $s3, $s2
/* 02E95C 0042E95C 10C0003A */  beqz        $a2, .L0042EA48
/* 02E960 0042E960 00722021 */   addu       $a0, $v1, $s2
/* 02E964 0042E964 2464FFFF */  addiu       $a0, $v1, -0x1
/* 02E968 0042E968 00C02825 */  move        $a1, $a2
/* 02E96C 0042E96C 00009025 */  move        $s2, $zero
/* 02E970 0042E970 00009825 */  move        $s3, $zero
/* 02E974 0042E974 1880001F */  blez        $a0, .L0042E9F4
/* 02E978 0042E978 00808825 */   move       $s1, $a0
/* 02E97C 0042E97C 02518021 */  addu        $s0, $s2, $s1
.L0042E980:
/* 02E980 0042E980 06010002 */  bgez        $s0, .L0042E98C
/* 02E984 0042E984 02000821 */   addu       $at, $s0, $zero
/* 02E988 0042E988 26010001 */  addiu       $at, $s0, 0x1
.L0042E98C:
/* 02E98C 0042E98C 00018043 */  sra         $s0, $at, 1
/* 02E990 0042E990 001070C0 */  sll         $t6, $s0, 3
/* 02E994 0042E994 00AE1821 */  addu        $v1, $a1, $t6
/* 02E998 0042E998 8C620004 */  lw          $v0, 0x4($v1)
/* 02E99C 0042E99C 02009825 */  move        $s3, $s0
/* 02E9A0 0042E9A0 0240A025 */  move        $s4, $s2
/* 02E9A4 0042E9A4 02C2082B */  sltu        $at, $s6, $v0
/* 02E9A8 0042E9A8 10200003 */  beqz        $at, .L0042E9B8
/* 02E9AC 0042E9AC 0220A825 */   move       $s5, $s1
/* 02E9B0 0042E9B0 1000000A */  b           .L0042E9DC
/* 02E9B4 0042E9B4 02608825 */   move       $s1, $s3
.L0042E9B8:
/* 02E9B8 0042E9B8 02C2082B */  sltu        $at, $s6, $v0
/* 02E9BC 0042E9BC 14200007 */  bnez        $at, .L0042E9DC
/* 02E9C0 0042E9C0 00000000 */   nop
/* 02E9C4 0042E9C4 1211000B */  beq         $s0, $s1, .L0042E9F4
/* 02E9C8 0042E9C8 02609025 */   move       $s2, $s3
/* 02E9CC 0042E9CC 8C6F000C */  lw          $t7, 0xC($v1)
/* 02E9D0 0042E9D0 02CF082B */  sltu        $at, $s6, $t7
/* 02E9D4 0042E9D4 54200008 */  bnel        $at, $zero, .L0042E9F8
/* 02E9D8 0042E9D8 0264082A */   slt        $at, $s3, $a0
.L0042E9DC:
/* 02E9DC 0042E9DC 16540003 */  bne         $s2, $s4, .L0042E9EC
/* 02E9E0 0042E9E0 0251082A */   slt        $at, $s2, $s1
/* 02E9E4 0042E9E4 52350004 */  beql        $s1, $s5, .L0042E9F8
/* 02E9E8 0042E9E8 0264082A */   slt        $at, $s3, $a0
.L0042E9EC:
/* 02E9EC 0042E9EC 5420FFE4 */  bnel        $at, $zero, .L0042E980
/* 02E9F0 0042E9F0 02518021 */   addu       $s0, $s2, $s1
.L0042E9F4:
/* 02E9F4 0042E9F4 0264082A */  slt         $at, $s3, $a0
.L0042E9F8:
/* 02E9F8 0042E9F8 1020000E */  beqz        $at, .L0042EA34
/* 02E9FC 0042E9FC 0013C0C0 */   sll        $t8, $s3, 3
/* 02EA00 0042EA00 00B81021 */  addu        $v0, $a1, $t8
/* 02EA04 0042EA04 8C59000C */  lw          $t9, 0xC($v0)
/* 02EA08 0042EA08 02D9082B */  sltu        $at, $s6, $t9
/* 02EA0C 0042EA0C 5420000A */  bnel        $at, $zero, .L0042EA38
/* 02EA10 0042EA10 001348C0 */   sll        $t1, $s3, 3
/* 02EA14 0042EA14 26730001 */  addiu       $s3, $s3, 0x1
.L0042EA18:
/* 02EA18 0042EA18 0264082A */  slt         $at, $s3, $a0
/* 02EA1C 0042EA1C 10200005 */  beqz        $at, .L0042EA34
/* 02EA20 0042EA20 24420008 */   addiu      $v0, $v0, 0x8
/* 02EA24 0042EA24 8C48000C */  lw          $t0, 0xC($v0)
/* 02EA28 0042EA28 02C8082B */  sltu        $at, $s6, $t0
/* 02EA2C 0042EA2C 5020FFFA */  beql        $at, $zero, .L0042EA18
/* 02EA30 0042EA30 26730001 */   addiu      $s3, $s3, 0x1
.L0042EA34:
/* 02EA34 0042EA34 001348C0 */  sll         $t1, $s3, 3
.L0042EA38:
/* 02EA38 0042EA38 00A95021 */  addu        $t2, $a1, $t1
/* 02EA3C 0042EA3C 8D530000 */  lw          $s3, 0x0($t2)
/* 02EA40 0042EA40 10000043 */  b           .L0042EB50
/* 02EA44 0042EA44 02679821 */   addu       $s3, $s3, $a3
.L0042EA48:
/* 02EA48 0042EA48 2491FFFF */  addiu       $s1, $a0, -0x1
/* 02EA4C 0042EA4C 0251082A */  slt         $at, $s2, $s1
/* 02EA50 0042EA50 10200026 */  beqz        $at, .L0042EAEC
/* 02EA54 0042EA54 AFB10044 */   sw         $s1, 0x44($sp)
.L0042EA58:
/* 02EA58 0042EA58 8F9984E4 */  lw          $t9, %call16(procedure_address)($gp)
/* 02EA5C 0042EA5C 02518021 */  addu        $s0, $s2, $s1
/* 02EA60 0042EA60 06010002 */  bgez        $s0, .L0042EA6C
/* 02EA64 0042EA64 02000821 */   addu       $at, $s0, $zero
/* 02EA68 0042EA68 26010001 */  addiu       $at, $s0, 0x1
.L0042EA6C:
/* 02EA6C 0042EA6C 00018043 */  sra         $s0, $at, 1
/* 02EA70 0042EA70 02009825 */  move        $s3, $s0
/* 02EA74 0042EA74 0240A025 */  move        $s4, $s2
/* 02EA78 0042EA78 0220A825 */  move        $s5, $s1
/* 02EA7C 0042EA7C 02002825 */  move        $a1, $s0
/* 02EA80 0042EA80 0320F809 */  jalr        $t9
/* 02EA84 0042EA84 02E02025 */   move       $a0, $s7
/* 02EA88 0042EA88 02C2082B */  sltu        $at, $s6, $v0
/* 02EA8C 0042EA8C 10200003 */  beqz        $at, .L0042EA9C
/* 02EA90 0042EA90 8FBC0038 */   lw         $gp, 0x38($sp)
/* 02EA94 0042EA94 1000000F */  b           .L0042EAD4
/* 02EA98 0042EA98 02608825 */   move       $s1, $s3
.L0042EA9C:
/* 02EA9C 0042EA9C 02C2082B */  sltu        $at, $s6, $v0
/* 02EAA0 0042EAA0 1420000C */  bnez        $at, .L0042EAD4
/* 02EAA4 0042EAA4 00000000 */   nop
/* 02EAA8 0042EAA8 52110011 */  beql        $s0, $s1, .L0042EAF0
/* 02EAAC 0042EAAC 8FAD0044 */   lw         $t5, 0x44($sp)
/* 02EAB0 0042EAB0 8F9984E4 */  lw          $t9, %call16(procedure_address)($gp)
/* 02EAB4 0042EAB4 02E02025 */  move        $a0, $s7
/* 02EAB8 0042EAB8 26050001 */  addiu       $a1, $s0, 0x1
/* 02EABC 0042EABC 0320F809 */  jalr        $t9
/* 02EAC0 0042EAC0 00000000 */   nop
/* 02EAC4 0042EAC4 02C2082B */  sltu        $at, $s6, $v0
/* 02EAC8 0042EAC8 14200008 */  bnez        $at, .L0042EAEC
/* 02EACC 0042EACC 8FBC0038 */   lw         $gp, 0x38($sp)
/* 02EAD0 0042EAD0 02609025 */  move        $s2, $s3
.L0042EAD4:
/* 02EAD4 0042EAD4 16540003 */  bne         $s2, $s4, .L0042EAE4
/* 02EAD8 0042EAD8 0251082A */   slt        $at, $s2, $s1
/* 02EADC 0042EADC 52350004 */  beql        $s1, $s5, .L0042EAF0
/* 02EAE0 0042EAE0 8FAD0044 */   lw         $t5, 0x44($sp)
.L0042EAE4:
/* 02EAE4 0042EAE4 1420FFDC */  bnez        $at, .L0042EA58
/* 02EAE8 0042EAE8 00000000 */   nop
.L0042EAEC:
/* 02EAEC 0042EAEC 8FAD0044 */  lw          $t5, 0x44($sp)
.L0042EAF0:
/* 02EAF0 0042EAF0 026D082A */  slt         $at, $s3, $t5
/* 02EAF4 0042EAF4 10200016 */  beqz        $at, .L0042EB50
/* 02EAF8 0042EAF8 00000000 */   nop
/* 02EAFC 0042EAFC 8F9984E4 */  lw          $t9, %call16(procedure_address)($gp)
/* 02EB00 0042EB00 26700001 */  addiu       $s0, $s3, 0x1
/* 02EB04 0042EB04 02002825 */  move        $a1, $s0
/* 02EB08 0042EB08 0320F809 */  jalr        $t9
/* 02EB0C 0042EB0C 02E02025 */   move       $a0, $s7
/* 02EB10 0042EB10 02C2082B */  sltu        $at, $s6, $v0
/* 02EB14 0042EB14 1420000E */  bnez        $at, .L0042EB50
/* 02EB18 0042EB18 8FBC0038 */   lw         $gp, 0x38($sp)
.L0042EB1C:
/* 02EB1C 0042EB1C 8FAE0044 */  lw          $t6, 0x44($sp)
/* 02EB20 0042EB20 02009825 */  move        $s3, $s0
/* 02EB24 0042EB24 020E082A */  slt         $at, $s0, $t6
/* 02EB28 0042EB28 10200009 */  beqz        $at, .L0042EB50
/* 02EB2C 0042EB2C 00000000 */   nop
/* 02EB30 0042EB30 8F9984E4 */  lw          $t9, %call16(procedure_address)($gp)
/* 02EB34 0042EB34 26100001 */  addiu       $s0, $s0, 0x1
/* 02EB38 0042EB38 02002825 */  move        $a1, $s0
/* 02EB3C 0042EB3C 0320F809 */  jalr        $t9
/* 02EB40 0042EB40 02E02025 */   move       $a0, $s7
/* 02EB44 0042EB44 02C2082B */  sltu        $at, $s6, $v0
/* 02EB48 0042EB48 1020FFF4 */  beqz        $at, .L0042EB1C
/* 02EB4C 0042EB4C 8FBC0038 */   lw         $gp, 0x38($sp)
.L0042EB50:
/* 02EB50 0042EB50 8F9984E4 */  lw          $t9, %call16(procedure_address)($gp)
/* 02EB54 0042EB54 02E02025 */  move        $a0, $s7
/* 02EB58 0042EB58 02602825 */  move        $a1, $s3
/* 02EB5C 0042EB5C 0320F809 */  jalr        $t9
/* 02EB60 0042EB60 00000000 */   nop
/* 02EB64 0042EB64 02C2082B */  sltu        $at, $s6, $v0
/* 02EB68 0042EB68 10200003 */  beqz        $at, .L0042EB78
/* 02EB6C 0042EB6C 8FBC0038 */   lw         $gp, 0x38($sp)
/* 02EB70 0042EB70 10000002 */  b           .L0042EB7C
/* 02EB74 0042EB74 2402FFFF */   addiu      $v0, $zero, -0x1
.L0042EB78:
/* 02EB78 0042EB78 02601025 */  move        $v0, $s3
.L0042EB7C:
/* 02EB7C 0042EB7C 8FBF003C */  lw          $ra, 0x3C($sp)
/* 02EB80 0042EB80 8FB00018 */  lw          $s0, 0x18($sp)
/* 02EB84 0042EB84 8FB1001C */  lw          $s1, 0x1C($sp)
/* 02EB88 0042EB88 8FB20020 */  lw          $s2, 0x20($sp)
/* 02EB8C 0042EB8C 8FB30024 */  lw          $s3, 0x24($sp)
/* 02EB90 0042EB90 8FB40028 */  lw          $s4, 0x28($sp)
/* 02EB94 0042EB94 8FB5002C */  lw          $s5, 0x2C($sp)
/* 02EB98 0042EB98 8FB60030 */  lw          $s6, 0x30($sp)
/* 02EB9C 0042EB9C 8FB70034 */  lw          $s7, 0x34($sp)
/* 02EBA0 0042EBA0 03E00008 */  jr          $ra
/* 02EBA4 0042EBA4 27BD0078 */   addiu      $sp, $sp, 0x78
