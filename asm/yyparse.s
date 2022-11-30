.section .rodata
glabel STR_10011040
/* 041040 10011040 */ .asciz "uxlibc:80"
                      .balign 4

glabel STR_1001104C
/* 04104C 1001104C */ .asciz "Yacc stack overflow"
                      .balign 4

glabel STR_10011060
/* 041060 10011060 */ .asciz "uxlibc:81"
                      .balign 4

glabel STR_1001106C
/* 04106C 1001106C */ .asciz "Syntax error"
                      .balign 4

glabel STR_1001107C
/* 04107C 1001107C */ .asciz "no segment name specified"
                      .balign 4

glabel STR_10011098
/* 041098 10011098 */ .asciz "no files included for segment"
                      .balign 4

glabel STR_100110B8
/* 0410B8 100110B8 */ .asciz "first segment must be BOOT segment"
                      .balign 4

glabel STR_100110DC
/* 0410DC 100110DC */ .asciz "entry point specified on non-BOOT segment \"%s\""
                      .balign 4

glabel STR_1001110C
/* 04110C 1001110C */ .asciz "stack specified on non-BOOT segment \"%s\""
                      .balign 4

glabel STR_10011138
/* 041138 10011138 */ .asciz "no address specified for OBJECT segment \"%s\""
                      .balign 4

glabel STR_10011168
/* 041168 10011168 */ .asciz "address specified for RAW segment \"%s\""
                      .balign 4

glabel STR_10011190
/* 041190 10011190 */ .asciz "\"align\" keyword is only valid with \"after\" keyword\n         for segment \"%s\""
                      .balign 4

glabel STR_100111E0
/* 0411E0 100111E0 */ .asciz "makerom: malloc failed\n"
                      .balign 4

glabel STR_100111F8
/* 0411F8 100111F8 */ .asciz "address (0x%x) not a multiple of 16"
                      .balign 4

glabel STR_1001121C
/* 04121C 1001121C */ .asciz "address (0x%x) must be at least\n         0x%x (or 0x%x)"
                      .balign 4

glabel STR_10011254
/* 041254 10011254 */ .asciz "multiple address/number/after statement"
                      .balign 4

glabel STR_1001127C
/* 04127C 1001127C */ .asciz "segment number (%d) not in range [0-15]"
                      .balign 4

glabel STR_100112A4
/* 0412A4 100112A4 */ .asciz "multiple address/number/after statement"
                      .balign 4

glabel STR_100112CC
/* 0412CC 100112CC */ .asciz "multiple address/number/after statement"
                      .balign 4

glabel STR_100112F4
/* 0412F4 100112F4 */ .asciz "rom alignment (%d or 0x%x) must be at least 16"
                      .balign 4

glabel STR_10011324
/* 041324 10011324 */ .asciz "rom alignment (%d or 0x%x) must be a power of 2"
                      .balign 4

glabel STR_10011354
/* 041354 10011354 */ .asciz "alignment (%d or 0x%x) must be at least 16"
                      .balign 4

glabel STR_10011380
/* 041380 10011380 */ .asciz "alignment (%d or 0x%x) must be a power of 2"
                      .balign 4

glabel STR_100113AC
/* 0413AC 100113AC */ .asciz "multiple segment name"
                      .balign 4

glabel STR_100113C4
/* 0413C4 100113C4 */ .asciz "makerom: malloc failed\n"
                      .balign 4

glabel STR_100113DC
/* 0413DC 100113DC */ .asciz "multiple entry point"
                      .balign 4

glabel STR_100113F4
/* 0413F4 100113F4 */ .asciz "multiple flags value specified"
                      .balign 4

glabel STR_10011414
/* 041414 10011414 */ .asciz "RAW segment cannot be a BOOT segment"
                      .balign 4

glabel STR_1001143C
/* 04143C 1001143C */ .asciz "RAW and OBJECT are mutually exclusive"
                      .balign 4

glabel STR_10011464
/* 041464 10011464 */ .asciz "makerom: malloc failed\n"
                      .balign 4

glabel STR_1001147C
/* 04147C 1001147C */ .asciz "multiple maximum segment size value"
                      .balign 4

glabel STR_100114A0
/* 0414A0 100114A0 */ .asciz "makerom: maxsize constant (%d) not a multiple of 16\n"
                      .balign 4

glabel STR_100114D8
/* 0414D8 100114D8 */ .asciz "multiple stack"
                      .balign 4

glabel STR_100114E8
/* 0414E8 100114E8 */ .asciz "segment \"%s\" not (yet) defined"
                      .balign 4

glabel STR_10011508
/* 041508 10011508 */ .asciz "segment \"%s\" not (yet) defined"
                      .balign 4

glabel STR_10011528
/* 041528 10011528 */ .asciz "segment \"%s\" not (yet) defined"
                      .balign 4

glabel STR_10011548
/* 041548 10011548 */ .asciz "makerom: malloc failed\n"
                      .balign 4

glabel STR_10011560
/* 041560 10011560 */ .asciz "makerom: malloc failed\n"
                      .balign 4

glabel STR_10011578
/* 041578 10011578 */ .asciz "unknown segment \"%s\""
                      .balign 4

glabel STR_10011590
/* 041590 10011590 */ .asciz "makerom: malloc failed\n"
                      .balign 4

.section .late_rodata
glabel jtbl_100115A8
/* 0415A8 100115A8 F03F5548 */ .gpword .L00413288
/* 0415AC 100115AC F03F5890 */ .gpword .L004135D0
/* 0415B0 100115B0 F03F65DC */ .gpword .L0041431C
/* 0415B4 100115B4 F03F65DC */ .gpword .L0041431C
/* 0415B8 100115B8 F03F5A3C */ .gpword .L0041377C
/* 0415BC 100115BC F03F5B48 */ .gpword .L00413888
/* 0415C0 100115C0 F03F5BEC */ .gpword .L0041392C
/* 0415C4 100115C4 F03F5C3C */ .gpword .L0041397C
/* 0415C8 100115C8 F03F5CCC */ .gpword .L00413A0C
/* 0415CC 100115CC F03F5D5C */ .gpword .L00413A9C
/* 0415D0 100115D0 F03F5DF0 */ .gpword .L00413B30
/* 0415D4 100115D4 F03F5E40 */ .gpword .L00413B80
/* 0415D8 100115D8 F03F5EF8 */ .gpword .L00413C38
/* 0415DC 100115DC F03F5FE8 */ .gpword .L00413D28
/* 0415E0 100115E0 F03F6070 */ .gpword .L00413DB0
/* 0415E4 100115E4 F03F60B4 */ .gpword .L00413DF4
/* 0415E8 100115E8 F03F6160 */ .gpword .L00413EA0
/* 0415EC 100115EC F03F6270 */ .gpword .L00413FB0
/* 0415F0 100115F0 F03F6288 */ .gpword .L00413FC8
/* 0415F4 100115F4 F03F62A0 */ .gpword .L00413FE0
/* 0415F8 100115F8 F03F62B4 */ .gpword .L00413FF4
/* 0415FC 100115FC F03F62D0 */ .gpword .L00414010
/* 041600 10011600 F03F62E4 */ .gpword .L00414024
/* 041604 10011604 F03F62F8 */ .gpword .L00414038
/* 041608 10011608 F03F630C */ .gpword .L0041404C
/* 04160C 1001160C F03F6328 */ .gpword .L00414068
/* 041610 10011610 F03F6344 */ .gpword .L00414084
/* 041614 10011614 F03F65DC */ .gpword .L0041431C
/* 041618 10011618 F03F65DC */ .gpword .L0041431C
/* 04161C 1001161C F03F6364 */ .gpword .L004140A4
/* 041620 10011620 F03F637C */ .gpword .L004140BC
/* 041624 10011624 F03F65DC */ .gpword .L0041431C
/* 041628 10011628 F03F65DC */ .gpword .L0041431C
/* 04162C 1001162C F03F643C */ .gpword .L0041417C
/* 041630 10011630 F03F649C */ .gpword .L004141DC
/* 041634 10011634 00000000 */ .word 0x00000000
/* 041638 10011638 00000000 */ .word 0x00000000
/* 04163C 1001163C 00000000 */ .word 0x00000000


.section .text
glabel yyparse # 46
# _gp_disp: 0xFC0B38C
.set noreorder; .cpload $t9; # .set reorder
/* 0129C0 004129C0 27BDFE58 */  addiu       $sp, $sp, -0x1A8
/* 0129C4 004129C4 AFBF003C */  sw          $ra, 0x3C($sp)
/* 0129C8 004129C8 AFBC0038 */  sw          $gp, 0x38($sp)
/* 0129CC 004129CC AFB70034 */  sw          $s7, 0x34($sp)
/* 0129D0 004129D0 AFB60030 */  sw          $s6, 0x30($sp)
/* 0129D4 004129D4 AFB5002C */  sw          $s5, 0x2C($sp)
/* 0129D8 004129D8 AFB40028 */  sw          $s4, 0x28($sp)
/* 0129DC 004129DC AFB30024 */  sw          $s3, 0x24($sp)
/* 0129E0 004129E0 AFB20020 */  sw          $s2, 0x20($sp)
/* 0129E4 004129E4 AFB1001C */  sw          $s1, 0x1C($sp)
/* 0129E8 004129E8 AFB00018 */  sw          $s0, 0x18($sp)
/* 0129EC 004129EC 8F8E86C0 */  lw          $t6, %got(yyv)($gp)
/* 0129F0 004129F0 8F8187A0 */  lw          $at, %got(yypv)($gp)
/* 0129F4 004129F4 8DCE0000 */  lw          $t6, 0x0($t6)
/* 0129F8 004129F8 25CFFFFC */  addiu       $t7, $t6, -0x4
/* 0129FC 004129FC AC2F0000 */  sw          $t7, 0x0($at)
/* 012A00 00412A00 8F9886BC */  lw          $t8, %got(yys)($gp)
/* 012A04 00412A04 8F8187A4 */  lw          $at, %got(yyps)($gp)
/* 012A08 00412A08 8F180000 */  lw          $t8, 0x0($t8)
/* 012A0C 00412A0C 2719FFFC */  addiu       $t9, $t8, -0x4
/* 012A10 00412A10 AC390000 */  sw          $t9, 0x0($at)
/* 012A14 00412A14 8F8187A8 */  lw          $at, %got(yystate)($gp)
/* 012A18 00412A18 AC200000 */  sw          $zero, 0x0($at)
/* 012A1C 00412A1C 8F8187AC */  lw          $at, %got(yytmp)($gp)
/* 012A20 00412A20 AC200000 */  sw          $zero, 0x0($at)
/* 012A24 00412A24 8F8187B0 */  lw          $at, %got(yynerrs)($gp)
/* 012A28 00412A28 AC200000 */  sw          $zero, 0x0($at)
/* 012A2C 00412A2C 8F818794 */  lw          $at, %got(yyerrflag)($gp)
/* 012A30 00412A30 AC200000 */  sw          $zero, 0x0($at)
/* 012A34 00412A34 8F818790 */  lw          $at, %got(yychar)($gp)
/* 012A38 00412A38 2408FFFF */  addiu       $t0, $zero, -0x1
/* 012A3C 00412A3C AC280000 */  sw          $t0, 0x0($at)
/* 012A40 00412A40 10000009 */  b           .L00412A68
/* 012A44 00412A44 00000000 */   nop
/* 012A48 00412A48 8F9187A0 */  lw          $s1, %got(yypv)($gp)
/* 012A4C 00412A4C 8E310000 */  lw          $s1, 0x0($s1)
/* 012A50 00412A50 8F9287A4 */  lw          $s2, %got(yyps)($gp)
/* 012A54 00412A54 8E520000 */  lw          $s2, 0x0($s2)
/* 012A58 00412A58 8F9387A8 */  lw          $s3, %got(yystate)($gp)
/* 012A5C 00412A5C 8E730000 */  lw          $s3, 0x0($s3)
/* 012A60 00412A60 100000B1 */  b           .L00412D28
/* 012A64 00412A64 00000000 */   nop
.L00412A68:
/* 012A68 00412A68 8F9187A0 */  lw          $s1, %got(yypv)($gp)
/* 012A6C 00412A6C 8E310000 */  lw          $s1, 0x0($s1)
/* 012A70 00412A70 8F9287A4 */  lw          $s2, %got(yyps)($gp)
/* 012A74 00412A74 8E520000 */  lw          $s2, 0x0($s2)
/* 012A78 00412A78 8F9387A8 */  lw          $s3, %got(yystate)($gp)
/* 012A7C 00412A7C 8E730000 */  lw          $s3, 0x0($s3)
.L00412A80:
/* 012A80 00412A80 8F8A802C */  lw          $t2, %got(D_10015190)($gp)
/* 012A84 00412A84 8F8986BC */  lw          $t1, %got(yys)($gp)
/* 012A88 00412A88 26520004 */  addiu       $s2, $s2, 0x4
/* 012A8C 00412A8C 8D4A5190 */  lw          $t2, %lo(D_10015190)($t2)
/* 012A90 00412A90 8D290000 */  lw          $t1, 0x0($t1)
/* 012A94 00412A94 000A5880 */  sll         $t3, $t2, 2
/* 012A98 00412A98 012B6021 */  addu        $t4, $t1, $t3
/* 012A9C 00412A9C 024C082B */  sltu        $at, $s2, $t4
/* 012AA0 00412AA0 1420009C */  bnez        $at, .L00412D14
/* 012AA4 00412AA4 00000000 */   nop
/* 012AA8 00412AA8 8F8D86C0 */  lw          $t5, %got(yyv)($gp)
/* 012AAC 00412AAC 8DAD0000 */  lw          $t5, 0x0($t5)
/* 012AB0 00412AB0 020D7023 */  subu        $t6, $s0, $t5
/* 012AB4 00412AB4 000E7883 */  sra         $t7, $t6, 2
/* 012AB8 00412AB8 AFAF0188 */  sw          $t7, 0x188($sp)
/* 012ABC 00412ABC 8F9886C0 */  lw          $t8, %got(yyv)($gp)
/* 012AC0 00412AC0 8F180000 */  lw          $t8, 0x0($t8)
/* 012AC4 00412AC4 0238C823 */  subu        $t9, $s1, $t8
/* 012AC8 00412AC8 00194083 */  sra         $t0, $t9, 2
/* 012ACC 00412ACC AFA80184 */  sw          $t0, 0x184($sp)
/* 012AD0 00412AD0 8F8A87A0 */  lw          $t2, %got(yypv)($gp)
/* 012AD4 00412AD4 8F8986C0 */  lw          $t1, %got(yyv)($gp)
/* 012AD8 00412AD8 8D4A0000 */  lw          $t2, 0x0($t2)
/* 012ADC 00412ADC 8D290000 */  lw          $t1, 0x0($t1)
/* 012AE0 00412AE0 01495823 */  subu        $t3, $t2, $t1
/* 012AE4 00412AE4 000B6083 */  sra         $t4, $t3, 2
/* 012AE8 00412AE8 AFAC0180 */  sw          $t4, 0x180($sp)
/* 012AEC 00412AEC 8F8D86BC */  lw          $t5, %got(yys)($gp)
/* 012AF0 00412AF0 8DAD0000 */  lw          $t5, 0x0($t5)
/* 012AF4 00412AF4 AFAD017C */  sw          $t5, 0x17C($sp)
/* 012AF8 00412AF8 8F8E802C */  lw          $t6, %got(D_10015190)($gp)
/* 012AFC 00412AFC 8DCE5190 */  lw          $t6, %lo(D_10015190)($t6)
/* 012B00 00412B00 000E7840 */  sll         $t7, $t6, 1
/* 012B04 00412B04 AFAF0190 */  sw          $t7, 0x190($sp)
/* 012B08 00412B08 8F98802C */  lw          $t8, %got(D_10015190)($gp)
/* 012B0C 00412B0C 24010096 */  addiu       $at, $zero, 0x96
/* 012B10 00412B10 8F185190 */  lw          $t8, %lo(D_10015190)($t8)
/* 012B14 00412B14 1701002B */  bne         $t8, $at, .L00412BC4
/* 012B18 00412B18 00000000 */   nop
/* 012B1C 00412B1C 8F998064 */  lw          $t9, %call16(malloc)($gp)
/* 012B20 00412B20 8FA40190 */  lw          $a0, 0x190($sp)
/* 012B24 00412B24 0320F809 */  jalr        $t9
/* 012B28 00412B28 00042080 */   sll        $a0, $a0, 2
/* 012B2C 00412B2C 8FBC0038 */  lw          $gp, 0x38($sp)
/* 012B30 00412B30 AFA20178 */  sw          $v0, 0x178($sp)
/* 012B34 00412B34 8F998064 */  lw          $t9, %call16(malloc)($gp)
/* 012B38 00412B38 8FA40190 */  lw          $a0, 0x190($sp)
/* 012B3C 00412B3C 0320F809 */  jalr        $t9
/* 012B40 00412B40 00042080 */   sll        $a0, $a0, 2
/* 012B44 00412B44 8FBC0038 */  lw          $gp, 0x38($sp)
/* 012B48 00412B48 AFA20174 */  sw          $v0, 0x174($sp)
/* 012B4C 00412B4C 8FB90178 */  lw          $t9, 0x178($sp)
/* 012B50 00412B50 13200019 */  beqz        $t9, .L00412BB8
/* 012B54 00412B54 00000000 */   nop
/* 012B58 00412B58 8FA80174 */  lw          $t0, 0x174($sp)
/* 012B5C 00412B5C 11000016 */  beqz        $t0, .L00412BB8
/* 012B60 00412B60 00000000 */   nop
/* 012B64 00412B64 8F998108 */  lw          $t9, %call16(memcpy)($gp)
/* 012B68 00412B68 8F8586BC */  lw          $a1, %got(yys)($gp)
/* 012B6C 00412B6C 8FA60190 */  lw          $a2, 0x190($sp)
/* 012B70 00412B70 8FA40178 */  lw          $a0, 0x178($sp)
/* 012B74 00412B74 8CA50000 */  lw          $a1, 0x0($a1)
/* 012B78 00412B78 0320F809 */  jalr        $t9
/* 012B7C 00412B7C 00063080 */   sll        $a2, $a2, 2
/* 012B80 00412B80 8FBC0038 */  lw          $gp, 0x38($sp)
/* 012B84 00412B84 8F8186BC */  lw          $at, %got(yys)($gp)
/* 012B88 00412B88 AC220000 */  sw          $v0, 0x0($at)
/* 012B8C 00412B8C 8F998108 */  lw          $t9, %call16(memcpy)($gp)
/* 012B90 00412B90 8F8586C0 */  lw          $a1, %got(yyv)($gp)
/* 012B94 00412B94 8FA60190 */  lw          $a2, 0x190($sp)
/* 012B98 00412B98 8FA40174 */  lw          $a0, 0x174($sp)
/* 012B9C 00412B9C 8CA50000 */  lw          $a1, 0x0($a1)
/* 012BA0 00412BA0 0320F809 */  jalr        $t9
/* 012BA4 00412BA4 00063080 */   sll        $a2, $a2, 2
/* 012BA8 00412BA8 8FBC0038 */  lw          $gp, 0x38($sp)
/* 012BAC 00412BAC 8F8186C0 */  lw          $at, %got(yyv)($gp)
/* 012BB0 00412BB0 10000002 */  b           .L00412BBC
/* 012BB4 00412BB4 AC220000 */   sw         $v0, 0x0($at)
.L00412BB8:
/* 012BB8 00412BB8 AFA00190 */  sw          $zero, 0x190($sp)
.L00412BBC:
/* 012BBC 00412BBC 1000001C */  b           .L00412C30
/* 012BC0 00412BC0 00000000 */   nop
.L00412BC4:
/* 012BC4 00412BC4 8F99810C */  lw          $t9, %call16(realloc)($gp)
/* 012BC8 00412BC8 8F8486BC */  lw          $a0, %got(yys)($gp)
/* 012BCC 00412BCC 8FA50190 */  lw          $a1, 0x190($sp)
/* 012BD0 00412BD0 8C840000 */  lw          $a0, 0x0($a0)
/* 012BD4 00412BD4 0320F809 */  jalr        $t9
/* 012BD8 00412BD8 00052880 */   sll        $a1, $a1, 2
/* 012BDC 00412BDC 8FBC0038 */  lw          $gp, 0x38($sp)
/* 012BE0 00412BE0 8F8186BC */  lw          $at, %got(yys)($gp)
/* 012BE4 00412BE4 AC220000 */  sw          $v0, 0x0($at)
/* 012BE8 00412BE8 8F99810C */  lw          $t9, %call16(realloc)($gp)
/* 012BEC 00412BEC 8F8486C0 */  lw          $a0, %got(yyv)($gp)
/* 012BF0 00412BF0 8FA50190 */  lw          $a1, 0x190($sp)
/* 012BF4 00412BF4 8C840000 */  lw          $a0, 0x0($a0)
/* 012BF8 00412BF8 0320F809 */  jalr        $t9
/* 012BFC 00412BFC 00052880 */   sll        $a1, $a1, 2
/* 012C00 00412C00 8FBC0038 */  lw          $gp, 0x38($sp)
/* 012C04 00412C04 8F8186C0 */  lw          $at, %got(yyv)($gp)
/* 012C08 00412C08 AC220000 */  sw          $v0, 0x0($at)
/* 012C0C 00412C0C 8F8A86BC */  lw          $t2, %got(yys)($gp)
/* 012C10 00412C10 8D4A0000 */  lw          $t2, 0x0($t2)
/* 012C14 00412C14 11400005 */  beqz        $t2, .L00412C2C
/* 012C18 00412C18 00000000 */   nop
/* 012C1C 00412C1C 8F8986C0 */  lw          $t1, %got(yyv)($gp)
/* 012C20 00412C20 8D290000 */  lw          $t1, 0x0($t1)
/* 012C24 00412C24 15200002 */  bnez        $t1, .L00412C30
/* 012C28 00412C28 00000000 */   nop
.L00412C2C:
/* 012C2C 00412C2C AFA00190 */  sw          $zero, 0x190($sp)
.L00412C30:
/* 012C30 00412C30 8F8C802C */  lw          $t4, %got(D_10015190)($gp)
/* 012C34 00412C34 8FAB0190 */  lw          $t3, 0x190($sp)
/* 012C38 00412C38 8D8C5190 */  lw          $t4, %lo(D_10015190)($t4)
/* 012C3C 00412C3C 018B082A */  slt         $at, $t4, $t3
/* 012C40 00412C40 14200010 */  bnez        $at, .L00412C84
/* 012C44 00412C44 00000000 */   nop
/* 012C48 00412C48 8F998110 */  lw          $t9, %call16(gettxt)($gp)
/* 012C4C 00412C4C 8F84802C */  lw          $a0, %got(STR_10011040)($gp)
/* 012C50 00412C50 8F85802C */  lw          $a1, %got(STR_1001104C)($gp)
/* 012C54 00412C54 24841040 */  addiu       $a0, $a0, %lo(STR_10011040)
/* 012C58 00412C58 0320F809 */  jalr        $t9
/* 012C5C 00412C5C 24A5104C */   addiu      $a1, $a1, %lo(STR_1001104C)
/* 012C60 00412C60 8FBC0038 */  lw          $gp, 0x38($sp)
/* 012C64 00412C64 0040B825 */  move        $s7, $v0
/* 012C68 00412C68 02E02025 */  move        $a0, $s7
/* 012C6C 00412C6C 8F9981C0 */  lw          $t9, %call16(yyerror)($gp)
/* 012C70 00412C70 0320F809 */  jalr        $t9
/* 012C74 00412C74 00000000 */   nop
/* 012C78 00412C78 8FBC0038 */  lw          $gp, 0x38($sp)
/* 012C7C 00412C7C 100005AB */  b           .L0041432C
/* 012C80 00412C80 24020001 */   addiu      $v0, $zero, 0x1
.L00412C84:
/* 012C84 00412C84 8FAD0190 */  lw          $t5, 0x190($sp)
/* 012C88 00412C88 8F81802C */  lw          $at, %got(D_10015190)($gp)
/* 012C8C 00412C8C AC2D5190 */  sw          $t5, %lo(D_10015190)($at)
/* 012C90 00412C90 8F8E86BC */  lw          $t6, %got(yys)($gp)
/* 012C94 00412C94 8FAF017C */  lw          $t7, 0x17C($sp)
/* 012C98 00412C98 8DCE0000 */  lw          $t6, 0x0($t6)
/* 012C9C 00412C9C 01CFC023 */  subu        $t8, $t6, $t7
/* 012CA0 00412CA0 0018C883 */  sra         $t9, $t8, 2
/* 012CA4 00412CA4 AFB9018C */  sw          $t9, 0x18C($sp)
/* 012CA8 00412CA8 8FA8018C */  lw          $t0, 0x18C($sp)
/* 012CAC 00412CAC 00085080 */  sll         $t2, $t0, 2
/* 012CB0 00412CB0 01529021 */  addu        $s2, $t2, $s2
/* 012CB4 00412CB4 8F8C87A4 */  lw          $t4, %got(yyps)($gp)
/* 012CB8 00412CB8 8FA9018C */  lw          $t1, 0x18C($sp)
/* 012CBC 00412CBC 8F8187A4 */  lw          $at, %got(yyps)($gp)
/* 012CC0 00412CC0 8D8C0000 */  lw          $t4, 0x0($t4)
/* 012CC4 00412CC4 00095880 */  sll         $t3, $t1, 2
/* 012CC8 00412CC8 016C6821 */  addu        $t5, $t3, $t4
/* 012CCC 00412CCC AC2D0000 */  sw          $t5, 0x0($at)
/* 012CD0 00412CD0 8F9886C0 */  lw          $t8, %got(yyv)($gp)
/* 012CD4 00412CD4 8FAE0188 */  lw          $t6, 0x188($sp)
/* 012CD8 00412CD8 8F180000 */  lw          $t8, 0x0($t8)
/* 012CDC 00412CDC 000E7880 */  sll         $t7, $t6, 2
/* 012CE0 00412CE0 01F88021 */  addu        $s0, $t7, $t8
/* 012CE4 00412CE4 8F8A86C0 */  lw          $t2, %got(yyv)($gp)
/* 012CE8 00412CE8 8FB90184 */  lw          $t9, 0x184($sp)
/* 012CEC 00412CEC 8D4A0000 */  lw          $t2, 0x0($t2)
/* 012CF0 00412CF0 00194080 */  sll         $t0, $t9, 2
/* 012CF4 00412CF4 010A8821 */  addu        $s1, $t0, $t2
/* 012CF8 00412CF8 8F8C86C0 */  lw          $t4, %got(yyv)($gp)
/* 012CFC 00412CFC 8FA90180 */  lw          $t1, 0x180($sp)
/* 012D00 00412D00 8F8187A0 */  lw          $at, %got(yypv)($gp)
/* 012D04 00412D04 8D8C0000 */  lw          $t4, 0x0($t4)
/* 012D08 00412D08 00095880 */  sll         $t3, $t1, 2
/* 012D0C 00412D0C 016C6821 */  addu        $t5, $t3, $t4
/* 012D10 00412D10 AC2D0000 */  sw          $t5, 0x0($at)
.L00412D14:
/* 012D14 00412D14 AE530000 */  sw          $s3, 0x0($s2)
/* 012D18 00412D18 8F8E879C */  lw          $t6, %got(yyval)($gp)
/* 012D1C 00412D1C 26310004 */  addiu       $s1, $s1, 0x4
/* 012D20 00412D20 8DD80000 */  lw          $t8, 0x0($t6)
/* 012D24 00412D24 AE380000 */  sw          $t8, 0x0($s1)
.L00412D28:
/* 012D28 00412D28 8F8886CC */  lw          $t0, %got(yypact)($gp)
/* 012D2C 00412D2C 0013C880 */  sll         $t9, $s3, 2
/* 012D30 00412D30 3C01FF67 */  lui         $at, (0xFF676981 >> 16)
/* 012D34 00412D34 03285021 */  addu        $t2, $t9, $t0
/* 012D38 00412D38 8D540000 */  lw          $s4, 0x0($t2)
/* 012D3C 00412D3C 34216981 */  ori         $at, $at, (0xFF676981 & 0xFFFF)
/* 012D40 00412D40 0281082A */  slt         $at, $s4, $at
/* 012D44 00412D44 10200003 */  beqz        $at, .L00412D54
/* 012D48 00412D48 00000000 */   nop
/* 012D4C 00412D4C 1000003A */  b           .L00412E38
/* 012D50 00412D50 00000000 */   nop
.L00412D54:
/* 012D54 00412D54 8F898790 */  lw          $t1, %got(yychar)($gp)
/* 012D58 00412D58 8D290000 */  lw          $t1, 0x0($t1)
/* 012D5C 00412D5C 0521000D */  bgez        $t1, .L00412D94
/* 012D60 00412D60 00000000 */   nop
/* 012D64 00412D64 8F9981B4 */  lw          $t9, %call16(yylex)($gp)
/* 012D68 00412D68 0320F809 */  jalr        $t9
/* 012D6C 00412D6C 00000000 */   nop
/* 012D70 00412D70 8FBC0038 */  lw          $gp, 0x38($sp)
/* 012D74 00412D74 8F818790 */  lw          $at, %got(yychar)($gp)
/* 012D78 00412D78 8F8B8790 */  lw          $t3, %got(yychar)($gp)
/* 012D7C 00412D7C AC220000 */  sw          $v0, 0x0($at)
/* 012D80 00412D80 8D6B0000 */  lw          $t3, 0x0($t3)
/* 012D84 00412D84 05610003 */  bgez        $t3, .L00412D94
/* 012D88 00412D88 00000000 */   nop
/* 012D8C 00412D8C 8F818790 */  lw          $at, %got(yychar)($gp)
/* 012D90 00412D90 AC200000 */  sw          $zero, 0x0($at)
.L00412D94:
/* 012D94 00412D94 8F8C8790 */  lw          $t4, %got(yychar)($gp)
/* 012D98 00412D98 8D8C0000 */  lw          $t4, 0x0($t4)
/* 012D9C 00412D9C 028CA021 */  addu        $s4, $s4, $t4
/* 012DA0 00412DA0 06800004 */  bltz        $s4, .L00412DB4
/* 012DA4 00412DA4 00000000 */   nop
/* 012DA8 00412DA8 2A810065 */  slti        $at, $s4, 0x65
/* 012DAC 00412DAC 14200003 */  bnez        $at, .L00412DBC
/* 012DB0 00412DB0 00000000 */   nop
.L00412DB4:
/* 012DB4 00412DB4 10000020 */  b           .L00412E38
/* 012DB8 00412DB8 00000000 */   nop
.L00412DBC:
/* 012DBC 00412DBC 8F8E86C8 */  lw          $t6, %got(yyact)($gp)
/* 012DC0 00412DC0 00146880 */  sll         $t5, $s4, 2
/* 012DC4 00412DC4 8F9986DC */  lw          $t9, %got(yychk)($gp)
/* 012DC8 00412DC8 01AE7821 */  addu        $t7, $t5, $t6
/* 012DCC 00412DCC 8DF40000 */  lw          $s4, 0x0($t7)
/* 012DD0 00412DD0 8F898790 */  lw          $t1, %got(yychar)($gp)
/* 012DD4 00412DD4 0014C080 */  sll         $t8, $s4, 2
/* 012DD8 00412DD8 03194021 */  addu        $t0, $t8, $t9
/* 012DDC 00412DDC 8D0A0000 */  lw          $t2, 0x0($t0)
/* 012DE0 00412DE0 8D290000 */  lw          $t1, 0x0($t1)
/* 012DE4 00412DE4 15490014 */  bne         $t2, $t1, .L00412E38
/* 012DE8 00412DE8 00000000 */   nop
/* 012DEC 00412DEC 8F818790 */  lw          $at, %got(yychar)($gp)
/* 012DF0 00412DF0 240BFFFF */  addiu       $t3, $zero, -0x1
/* 012DF4 00412DF4 AC2B0000 */  sw          $t3, 0x0($at)
/* 012DF8 00412DF8 8F8C8798 */  lw          $t4, %got(yylval)($gp)
/* 012DFC 00412DFC 8F81879C */  lw          $at, %got(yyval)($gp)
/* 012E00 00412E00 8D8C0000 */  lw          $t4, 0x0($t4)
/* 012E04 00412E04 AC2C0000 */  sw          $t4, 0x0($at)
/* 012E08 00412E08 02809825 */  move        $s3, $s4
/* 012E0C 00412E0C 8F8D8794 */  lw          $t5, %got(yyerrflag)($gp)
/* 012E10 00412E10 8DAD0000 */  lw          $t5, 0x0($t5)
/* 012E14 00412E14 19A00006 */  blez        $t5, .L00412E30
/* 012E18 00412E18 00000000 */   nop
/* 012E1C 00412E1C 8F8E8794 */  lw          $t6, %got(yyerrflag)($gp)
/* 012E20 00412E20 8F818794 */  lw          $at, %got(yyerrflag)($gp)
/* 012E24 00412E24 8DCE0000 */  lw          $t6, 0x0($t6)
/* 012E28 00412E28 25CFFFFF */  addiu       $t7, $t6, -0x1
/* 012E2C 00412E2C AC2F0000 */  sw          $t7, 0x0($at)
.L00412E30:
/* 012E30 00412E30 1000FF13 */  b           .L00412A80
/* 012E34 00412E34 00000000 */   nop
.L00412E38:
/* 012E38 00412E38 8F9986E0 */  lw          $t9, %got(yydef)($gp)
/* 012E3C 00412E3C 0013C080 */  sll         $t8, $s3, 2
/* 012E40 00412E40 2401FFFE */  addiu       $at, $zero, -0x2
/* 012E44 00412E44 03194021 */  addu        $t0, $t8, $t9
/* 012E48 00412E48 8D140000 */  lw          $s4, 0x0($t0)
/* 012E4C 00412E4C 16810038 */  bne         $s4, $at, .L00412F30
/* 012E50 00412E50 00000000 */   nop
/* 012E54 00412E54 8F8A8790 */  lw          $t2, %got(yychar)($gp)
/* 012E58 00412E58 8D4A0000 */  lw          $t2, 0x0($t2)
/* 012E5C 00412E5C 0541000D */  bgez        $t2, .L00412E94
/* 012E60 00412E60 00000000 */   nop
/* 012E64 00412E64 8F9981B4 */  lw          $t9, %call16(yylex)($gp)
/* 012E68 00412E68 0320F809 */  jalr        $t9
/* 012E6C 00412E6C 00000000 */   nop
/* 012E70 00412E70 8FBC0038 */  lw          $gp, 0x38($sp)
/* 012E74 00412E74 8F818790 */  lw          $at, %got(yychar)($gp)
/* 012E78 00412E78 8F898790 */  lw          $t1, %got(yychar)($gp)
/* 012E7C 00412E7C AC220000 */  sw          $v0, 0x0($at)
/* 012E80 00412E80 8D290000 */  lw          $t1, 0x0($t1)
/* 012E84 00412E84 05210003 */  bgez        $t1, .L00412E94
/* 012E88 00412E88 00000000 */   nop
/* 012E8C 00412E8C 8F818790 */  lw          $at, %got(yychar)($gp)
/* 012E90 00412E90 AC200000 */  sw          $zero, 0x0($at)
.L00412E94:
/* 012E94 00412E94 8F9586C4 */  lw          $s5, %got(yyexca)($gp)
/* 012E98 00412E98 8EAB0000 */  lw          $t3, 0x0($s5)
/* 012E9C 00412E9C 2401FFFF */  addiu       $at, $zero, -0x1
/* 012EA0 00412EA0 15610004 */  bne         $t3, $at, .L00412EB4
/* 012EA4 00412EA4 00000000 */   nop
/* 012EA8 00412EA8 8EAC0004 */  lw          $t4, 0x4($s5)
/* 012EAC 00412EAC 11930009 */  beq         $t4, $s3, .L00412ED4
/* 012EB0 00412EB0 00000000 */   nop
.L00412EB4:
/* 012EB4 00412EB4 26B50008 */  addiu       $s5, $s5, 0x8
/* 012EB8 00412EB8 8EAD0000 */  lw          $t5, 0x0($s5)
/* 012EBC 00412EBC 2401FFFF */  addiu       $at, $zero, -0x1
/* 012EC0 00412EC0 15A1FFFC */  bne         $t5, $at, .L00412EB4
/* 012EC4 00412EC4 00000000 */   nop
/* 012EC8 00412EC8 8EAE0004 */  lw          $t6, 0x4($s5)
/* 012ECC 00412ECC 15D3FFF9 */  bne         $t6, $s3, .L00412EB4
/* 012ED0 00412ED0 00000000 */   nop
.L00412ED4:
/* 012ED4 00412ED4 8EAF0008 */  lw          $t7, 0x8($s5)
/* 012ED8 00412ED8 26B50008 */  addiu       $s5, $s5, 0x8
/* 012EDC 00412EDC 05E0000F */  bltz        $t7, .L00412F1C
/* 012EE0 00412EE0 00000000 */   nop
/* 012EE4 00412EE4 8F998790 */  lw          $t9, %got(yychar)($gp)
/* 012EE8 00412EE8 8EB80000 */  lw          $t8, 0x0($s5)
/* 012EEC 00412EEC 8F390000 */  lw          $t9, 0x0($t9)
/* 012EF0 00412EF0 1319000A */  beq         $t8, $t9, .L00412F1C
/* 012EF4 00412EF4 00000000 */   nop
.L00412EF8:
/* 012EF8 00412EF8 8EA80008 */  lw          $t0, 0x8($s5)
/* 012EFC 00412EFC 26B50008 */  addiu       $s5, $s5, 0x8
/* 012F00 00412F00 05000006 */  bltz        $t0, .L00412F1C
/* 012F04 00412F04 00000000 */   nop
/* 012F08 00412F08 8F898790 */  lw          $t1, %got(yychar)($gp)
/* 012F0C 00412F0C 8EAA0000 */  lw          $t2, 0x0($s5)
/* 012F10 00412F10 8D290000 */  lw          $t1, 0x0($t1)
/* 012F14 00412F14 1549FFF8 */  bne         $t2, $t1, .L00412EF8
/* 012F18 00412F18 00000000 */   nop
.L00412F1C:
/* 012F1C 00412F1C 8EB40004 */  lw          $s4, 0x4($s5)
/* 012F20 00412F20 06810003 */  bgez        $s4, .L00412F30
/* 012F24 00412F24 00000000 */   nop
/* 012F28 00412F28 10000500 */  b           .L0041432C
/* 012F2C 00412F2C 00001025 */   move       $v0, $zero
.L00412F30:
/* 012F30 00412F30 16800062 */  bnez        $s4, .L004130BC
/* 012F34 00412F34 00000000 */   nop
/* 012F38 00412F38 8F978794 */  lw          $s7, %got(yyerrflag)($gp)
/* 012F3C 00412F3C 8EF70000 */  lw          $s7, 0x0($s7)
/* 012F40 00412F40 12E0000C */  beqz        $s7, .L00412F74
/* 012F44 00412F44 00000000 */   nop
/* 012F48 00412F48 24010001 */  addiu       $at, $zero, 0x1
/* 012F4C 00412F4C 12E10023 */  beq         $s7, $at, .L00412FDC
/* 012F50 00412F50 00000000 */   nop
/* 012F54 00412F54 24010002 */  addiu       $at, $zero, 0x2
/* 012F58 00412F58 12E10020 */  beq         $s7, $at, .L00412FDC
/* 012F5C 00412F5C 00000000 */   nop
/* 012F60 00412F60 24010003 */  addiu       $at, $zero, 0x3
/* 012F64 00412F64 12E1004A */  beq         $s7, $at, .L00413090
/* 012F68 00412F68 00000000 */   nop
/* 012F6C 00412F6C 10000053 */  b           .L004130BC
/* 012F70 00412F70 00000000 */   nop
.L00412F74:
/* 012F74 00412F74 8F998110 */  lw          $t9, %call16(gettxt)($gp)
/* 012F78 00412F78 8F84802C */  lw          $a0, %got(STR_10011060)($gp)
/* 012F7C 00412F7C 8F85802C */  lw          $a1, %got(STR_1001106C)($gp)
/* 012F80 00412F80 24841060 */  addiu       $a0, $a0, %lo(STR_10011060)
/* 012F84 00412F84 0320F809 */  jalr        $t9
/* 012F88 00412F88 24A5106C */   addiu      $a1, $a1, %lo(STR_1001106C)
/* 012F8C 00412F8C 8FBC0038 */  lw          $gp, 0x38($sp)
/* 012F90 00412F90 AFA20044 */  sw          $v0, 0x44($sp)
/* 012F94 00412F94 8FA40044 */  lw          $a0, 0x44($sp)
/* 012F98 00412F98 8F9981C0 */  lw          $t9, %call16(yyerror)($gp)
/* 012F9C 00412F9C 0320F809 */  jalr        $t9
/* 012FA0 00412FA0 00000000 */   nop
/* 012FA4 00412FA4 8FBC0038 */  lw          $gp, 0x38($sp)
/* 012FA8 00412FA8 1000000C */  b           .L00412FDC
/* 012FAC 00412FAC 00000000 */   nop
/* 012FB0 00412FB0 8F9187A0 */  lw          $s1, %got(yypv)($gp)
/* 012FB4 00412FB4 8E310000 */  lw          $s1, 0x0($s1)
/* 012FB8 00412FB8 8F9287A4 */  lw          $s2, %got(yyps)($gp)
/* 012FBC 00412FBC 8E520000 */  lw          $s2, 0x0($s2)
/* 012FC0 00412FC0 8F9387A8 */  lw          $s3, %got(yystate)($gp)
/* 012FC4 00412FC4 8E730000 */  lw          $s3, 0x0($s3)
/* 012FC8 00412FC8 8F8B87B0 */  lw          $t3, %got(yynerrs)($gp)
/* 012FCC 00412FCC 8F8187B0 */  lw          $at, %got(yynerrs)($gp)
/* 012FD0 00412FD0 8D6B0000 */  lw          $t3, 0x0($t3)
/* 012FD4 00412FD4 256C0001 */  addiu       $t4, $t3, 0x1
/* 012FD8 00412FD8 AC2C0000 */  sw          $t4, 0x0($at)
.L00412FDC:
/* 012FDC 00412FDC 8F818794 */  lw          $at, %got(yyerrflag)($gp)
/* 012FE0 00412FE0 240D0003 */  addiu       $t5, $zero, 0x3
/* 012FE4 00412FE4 AC2D0000 */  sw          $t5, 0x0($at)
/* 012FE8 00412FE8 8F8E86BC */  lw          $t6, %got(yys)($gp)
/* 012FEC 00412FEC 8DCE0000 */  lw          $t6, 0x0($t6)
/* 012FF0 00412FF0 024E082B */  sltu        $at, $s2, $t6
/* 012FF4 00412FF4 14200024 */  bnez        $at, .L00413088
/* 012FF8 00412FF8 00000000 */   nop
.L00412FFC:
/* 012FFC 00412FFC 8E4F0000 */  lw          $t7, 0x0($s2)
/* 013000 00413000 8F9986CC */  lw          $t9, %got(yypact)($gp)
/* 013004 00413004 000FC080 */  sll         $t8, $t7, 2
/* 013008 00413008 03194021 */  addu        $t0, $t8, $t9
/* 01300C 0041300C 8D140000 */  lw          $s4, 0x0($t0)
/* 013010 00413010 26940100 */  addiu       $s4, $s4, 0x100
/* 013014 00413014 06800015 */  bltz        $s4, .L0041306C
/* 013018 00413018 00000000 */   nop
/* 01301C 0041301C 2A810065 */  slti        $at, $s4, 0x65
/* 013020 00413020 10200012 */  beqz        $at, .L0041306C
/* 013024 00413024 00000000 */   nop
/* 013028 00413028 8F8986C8 */  lw          $t1, %got(yyact)($gp)
/* 01302C 0041302C 00145080 */  sll         $t2, $s4, 2
/* 013030 00413030 8F8E86DC */  lw          $t6, %got(yychk)($gp)
/* 013034 00413034 01495821 */  addu        $t3, $t2, $t1
/* 013038 00413038 8D6C0000 */  lw          $t4, 0x0($t3)
/* 01303C 0041303C 24010100 */  addiu       $at, $zero, 0x100
/* 013040 00413040 000C6880 */  sll         $t5, $t4, 2
/* 013044 00413044 01AE7821 */  addu        $t7, $t5, $t6
/* 013048 00413048 8DF80000 */  lw          $t8, 0x0($t7)
/* 01304C 0041304C 17010007 */  bne         $t8, $at, .L0041306C
/* 013050 00413050 00000000 */   nop
/* 013054 00413054 8F8886C8 */  lw          $t0, %got(yyact)($gp)
/* 013058 00413058 0014C880 */  sll         $t9, $s4, 2
/* 01305C 0041305C 03285021 */  addu        $t2, $t9, $t0
/* 013060 00413060 8D530000 */  lw          $s3, 0x0($t2)
/* 013064 00413064 1000FE86 */  b           .L00412A80
/* 013068 00413068 00000000 */   nop
.L0041306C:
/* 01306C 0041306C 2652FFFC */  addiu       $s2, $s2, -0x4
/* 013070 00413070 2631FFFC */  addiu       $s1, $s1, -0x4
/* 013074 00413074 8F8986BC */  lw          $t1, %got(yys)($gp)
/* 013078 00413078 8D290000 */  lw          $t1, 0x0($t1)
/* 01307C 0041307C 0249082B */  sltu        $at, $s2, $t1
/* 013080 00413080 1020FFDE */  beqz        $at, .L00412FFC
/* 013084 00413084 00000000 */   nop
.L00413088:
/* 013088 00413088 100004A8 */  b           .L0041432C
/* 01308C 0041308C 24020001 */   addiu      $v0, $zero, 0x1
.L00413090:
/* 013090 00413090 8F8B8790 */  lw          $t3, %got(yychar)($gp)
/* 013094 00413094 8D6B0000 */  lw          $t3, 0x0($t3)
/* 013098 00413098 15600003 */  bnez        $t3, .L004130A8
/* 01309C 0041309C 00000000 */   nop
/* 0130A0 004130A0 100004A2 */  b           .L0041432C
/* 0130A4 004130A4 24020001 */   addiu      $v0, $zero, 0x1
.L004130A8:
/* 0130A8 004130A8 8F818790 */  lw          $at, %got(yychar)($gp)
/* 0130AC 004130AC 240CFFFF */  addiu       $t4, $zero, -0x1
/* 0130B0 004130B0 AC2C0000 */  sw          $t4, 0x0($at)
/* 0130B4 004130B4 1000FF1C */  b           .L00412D28
/* 0130B8 004130B8 00000000 */   nop
.L004130BC:
/* 0130BC 004130BC 8F8187AC */  lw          $at, %got(yytmp)($gp)
/* 0130C0 004130C0 AC340000 */  sw          $s4, 0x0($at)
/* 0130C4 004130C4 02208025 */  move        $s0, $s1
/* 0130C8 004130C8 8F8E86D8 */  lw          $t6, %got(yyr2)($gp)
/* 0130CC 004130CC 00146880 */  sll         $t5, $s4, 2
/* 0130D0 004130D0 01AE7821 */  addu        $t7, $t5, $t6
/* 0130D4 004130D4 8DF60000 */  lw          $s6, 0x0($t7)
/* 0130D8 004130D8 32D80001 */  andi        $t8, $s6, 0x1
/* 0130DC 004130DC 1700002D */  bnez        $t8, .L00413194
/* 0130E0 004130E0 00000000 */   nop
/* 0130E4 004130E4 0016B043 */  sra         $s6, $s6, 1
/* 0130E8 004130E8 0016C880 */  sll         $t9, $s6, 2
/* 0130EC 004130EC 02398823 */  subu        $s1, $s1, $t9
/* 0130F0 004130F0 8E290004 */  lw          $t1, 0x4($s1)
/* 0130F4 004130F4 8F88879C */  lw          $t0, %got(yyval)($gp)
/* 0130F8 004130F8 AD090000 */  sw          $t1, 0x0($t0)
/* 0130FC 004130FC 8F8C86D4 */  lw          $t4, %got(yyr1)($gp)
/* 013100 00413100 00145880 */  sll         $t3, $s4, 2
/* 013104 00413104 8F9986D0 */  lw          $t9, %got(yypgo)($gp)
/* 013108 00413108 016C6821 */  addu        $t5, $t3, $t4
/* 01310C 0041310C 8DB70000 */  lw          $s7, 0x0($t5)
/* 013110 00413110 00167080 */  sll         $t6, $s6, 2
/* 013114 00413114 024E9023 */  subu        $s2, $s2, $t6
/* 013118 00413118 0017C080 */  sll         $t8, $s7, 2
/* 01311C 0041311C 03194021 */  addu        $t0, $t8, $t9
/* 013120 00413120 8D0A0000 */  lw          $t2, 0x0($t0)
/* 013124 00413124 8E4F0000 */  lw          $t7, 0x0($s2)
/* 013128 00413128 02E0A025 */  move        $s4, $s7
/* 01312C 0041312C 01EA9821 */  addu        $s3, $t7, $t2
/* 013130 00413130 26730001 */  addiu       $s3, $s3, 0x1
/* 013134 00413134 2A610065 */  slti        $at, $s3, 0x65
/* 013138 00413138 1020000C */  beqz        $at, .L0041316C
/* 01313C 0041313C 00000000 */   nop
/* 013140 00413140 8F8B86C8 */  lw          $t3, %got(yyact)($gp)
/* 013144 00413144 00134880 */  sll         $t1, $s3, 2
/* 013148 00413148 8F8E86DC */  lw          $t6, %got(yychk)($gp)
/* 01314C 0041314C 012B6021 */  addu        $t4, $t1, $t3
/* 013150 00413150 8D930000 */  lw          $s3, 0x0($t4)
/* 013154 00413154 00144023 */  negu        $t0, $s4
/* 013158 00413158 00136880 */  sll         $t5, $s3, 2
/* 01315C 0041315C 01AEC021 */  addu        $t8, $t5, $t6
/* 013160 00413160 8F190000 */  lw          $t9, 0x0($t8)
/* 013164 00413164 13280009 */  beq         $t9, $t0, .L0041318C
/* 013168 00413168 00000000 */   nop
.L0041316C:
/* 01316C 0041316C 8F8A86D0 */  lw          $t2, %got(yypgo)($gp)
/* 013170 00413170 00147880 */  sll         $t7, $s4, 2
/* 013174 00413174 8F8D86C8 */  lw          $t5, %got(yyact)($gp)
/* 013178 00413178 01EA4821 */  addu        $t1, $t7, $t2
/* 01317C 0041317C 8D2B0000 */  lw          $t3, 0x0($t1)
/* 013180 00413180 000B6080 */  sll         $t4, $t3, 2
/* 013184 00413184 018D7021 */  addu        $t6, $t4, $t5
/* 013188 00413188 8DD30000 */  lw          $s3, 0x0($t6)
.L0041318C:
/* 01318C 0041318C 1000FE3C */  b           .L00412A80
/* 013190 00413190 00000000 */   nop
.L00413194:
/* 013194 00413194 0016B043 */  sra         $s6, $s6, 1
/* 013198 00413198 0016C080 */  sll         $t8, $s6, 2
/* 01319C 0041319C 02388823 */  subu        $s1, $s1, $t8
/* 0131A0 004131A0 8E2F0004 */  lw          $t7, 0x4($s1)
/* 0131A4 004131A4 8F99879C */  lw          $t9, %got(yyval)($gp)
/* 0131A8 004131A8 AF2F0000 */  sw          $t7, 0x0($t9)
/* 0131AC 004131AC 8F8986D4 */  lw          $t1, %got(yyr1)($gp)
/* 0131B0 004131B0 00145080 */  sll         $t2, $s4, 2
/* 0131B4 004131B4 8F9886D0 */  lw          $t8, %got(yypgo)($gp)
/* 0131B8 004131B8 01495821 */  addu        $t3, $t2, $t1
/* 0131BC 004131BC 8D770000 */  lw          $s7, 0x0($t3)
/* 0131C0 004131C0 00166080 */  sll         $t4, $s6, 2
/* 0131C4 004131C4 024C9023 */  subu        $s2, $s2, $t4
/* 0131C8 004131C8 00177080 */  sll         $t6, $s7, 2
/* 0131CC 004131CC 01D8C821 */  addu        $t9, $t6, $t8
/* 0131D0 004131D0 8F280000 */  lw          $t0, 0x0($t9)
/* 0131D4 004131D4 8E4D0000 */  lw          $t5, 0x0($s2)
/* 0131D8 004131D8 02E0A025 */  move        $s4, $s7
/* 0131DC 004131DC 01A89821 */  addu        $s3, $t5, $t0
/* 0131E0 004131E0 26730001 */  addiu       $s3, $s3, 0x1
/* 0131E4 004131E4 2A610065 */  slti        $at, $s3, 0x65
/* 0131E8 004131E8 1020000C */  beqz        $at, .L0041321C
/* 0131EC 004131EC 00000000 */   nop
/* 0131F0 004131F0 8F8A86C8 */  lw          $t2, %got(yyact)($gp)
/* 0131F4 004131F4 00137880 */  sll         $t7, $s3, 2
/* 0131F8 004131F8 8F8C86DC */  lw          $t4, %got(yychk)($gp)
/* 0131FC 004131FC 01EA4821 */  addu        $t1, $t7, $t2
/* 013200 00413200 8D330000 */  lw          $s3, 0x0($t1)
/* 013204 00413204 0014C823 */  negu        $t9, $s4
/* 013208 00413208 00135880 */  sll         $t3, $s3, 2
/* 01320C 0041320C 016C7021 */  addu        $t6, $t3, $t4
/* 013210 00413210 8DD80000 */  lw          $t8, 0x0($t6)
/* 013214 00413214 13190009 */  beq         $t8, $t9, .L0041323C
/* 013218 00413218 00000000 */   nop
.L0041321C:
/* 01321C 0041321C 8F8886D0 */  lw          $t0, %got(yypgo)($gp)
/* 013220 00413220 00146880 */  sll         $t5, $s4, 2
/* 013224 00413224 8F8B86C8 */  lw          $t3, %got(yyact)($gp)
/* 013228 00413228 01A87821 */  addu        $t7, $t5, $t0
/* 01322C 0041322C 8DEA0000 */  lw          $t2, 0x0($t7)
/* 013230 00413230 000A4880 */  sll         $t1, $t2, 2
/* 013234 00413234 012B6021 */  addu        $t4, $t1, $t3
/* 013238 00413238 8D930000 */  lw          $s3, 0x0($t4)
.L0041323C:
/* 01323C 0041323C 8F8187A8 */  lw          $at, %got(yystate)($gp)
/* 013240 00413240 AC330000 */  sw          $s3, 0x0($at)
/* 013244 00413244 8F8187A4 */  lw          $at, %got(yyps)($gp)
/* 013248 00413248 AC320000 */  sw          $s2, 0x0($at)
/* 01324C 0041324C 8F8187A0 */  lw          $at, %got(yypv)($gp)
/* 013250 00413250 AC310000 */  sw          $s1, 0x0($at)
/* 013254 00413254 8F8E87AC */  lw          $t6, %got(yytmp)($gp)
/* 013258 00413258 8DCE0000 */  lw          $t6, 0x0($t6)
/* 01325C 0041325C 25D8FFFC */  addiu       $t8, $t6, -0x4
/* 013260 00413260 2F010023 */  sltiu       $at, $t8, 0x23
/* 013264 00413264 1020042D */  beqz        $at, .L0041431C
/* 013268 00413268 00000000 */   nop
/* 01326C 0041326C 8F81802C */  lw          $at, %got(jtbl_100115A8)($gp)
/* 013270 00413270 0018C080 */  sll         $t8, $t8, 2
/* 013274 00413274 00380821 */  addu        $at, $at, $t8
/* 013278 00413278 8C3815A8 */  lw          $t8, %lo(jtbl_100115A8)($at)
/* 01327C 0041327C 031CC021 */  addu        $t8, $t8, $gp
/* 013280 00413280 03000008 */  jr          $t8
/* 013284 00413284 00000000 */   nop
.L00413288:
/* 013288 00413288 8F998030 */  lw          $t9, %got(B_10019FD0)($gp)
/* 01328C 0041328C 8F399FD0 */  lw          $t9, %lo(B_10019FD0)($t9)
/* 013290 00413290 8F2D0004 */  lw          $t5, 0x4($t9)
/* 013294 00413294 15A00009 */  bnez        $t5, .L004132BC
/* 013298 00413298 00000000 */   nop
/* 01329C 0041329C 8F998018 */  lw          $t9, %got(func_004127B4)($gp)
/* 0132A0 004132A0 8F84802C */  lw          $a0, %got(STR_1001107C)($gp)
/* 0132A4 004132A4 273927B4 */  addiu       $t9, $t9, %lo(func_004127B4)
/* 0132A8 004132A8 0320F809 */  jalr        $t9
/* 0132AC 004132AC 2484107C */   addiu      $a0, $a0, %lo(STR_1001107C)
/* 0132B0 004132B0 8FBC0038 */  lw          $gp, 0x38($sp)
/* 0132B4 004132B4 1000041D */  b           .L0041432C
/* 0132B8 004132B8 24020001 */   addiu      $v0, $zero, 0x1
.L004132BC:
/* 0132BC 004132BC 8F888030 */  lw          $t0, %got(B_10019FD0)($gp)
/* 0132C0 004132C0 8D089FD0 */  lw          $t0, %lo(B_10019FD0)($t0)
/* 0132C4 004132C4 8D0F0008 */  lw          $t7, 0x8($t0)
/* 0132C8 004132C8 15E00009 */  bnez        $t7, .L004132F0
/* 0132CC 004132CC 00000000 */   nop
/* 0132D0 004132D0 8F998018 */  lw          $t9, %got(func_004127B4)($gp)
/* 0132D4 004132D4 8F84802C */  lw          $a0, %got(STR_10011098)($gp)
/* 0132D8 004132D8 273927B4 */  addiu       $t9, $t9, %lo(func_004127B4)
/* 0132DC 004132DC 0320F809 */  jalr        $t9
/* 0132E0 004132E0 24841098 */   addiu      $a0, $a0, %lo(STR_10011098)
/* 0132E4 004132E4 8FBC0038 */  lw          $gp, 0x38($sp)
/* 0132E8 004132E8 10000410 */  b           .L0041432C
/* 0132EC 004132EC 24020001 */   addiu      $v0, $zero, 0x1
.L004132F0:
/* 0132F0 004132F0 8F8A8030 */  lw          $t2, %got(B_10019FD0)($gp)
/* 0132F4 004132F4 2401FFFF */  addiu       $at, $zero, -0x1
/* 0132F8 004132F8 8D4A9FD0 */  lw          $t2, %lo(B_10019FD0)($t2)
/* 0132FC 004132FC 8D490028 */  lw          $t1, 0x28($t2)
/* 013300 00413300 15210005 */  bne         $t1, $at, .L00413318
/* 013304 00413304 00000000 */   nop
/* 013308 00413308 8F8C8030 */  lw          $t4, %got(B_10019FD0)($gp)
/* 01330C 0041330C 240B0002 */  addiu       $t3, $zero, 0x2
/* 013310 00413310 8D8C9FD0 */  lw          $t4, %lo(B_10019FD0)($t4)
/* 013314 00413314 AD8B0028 */  sw          $t3, 0x28($t4)
.L00413318:
/* 013318 00413318 8F8E8030 */  lw          $t6, %got(B_10019FD0)($gp)
/* 01331C 0041331C 8DCE9FD0 */  lw          $t6, %lo(B_10019FD0)($t6)
/* 013320 00413320 8DD80028 */  lw          $t8, 0x28($t6)
/* 013324 00413324 33190001 */  andi        $t9, $t8, 0x1
/* 013328 00413328 1320002D */  beqz        $t9, .L004133E0
/* 01332C 0041332C 00000000 */   nop
/* 013330 00413330 8F8D8660 */  lw          $t5, %got(cosim)($gp)
/* 013334 00413334 8DAD0000 */  lw          $t5, 0x0($t5)
/* 013338 00413338 11A00005 */  beqz        $t5, .L00413350
/* 01333C 0041333C 00000000 */   nop
/* 013340 00413340 3C088000 */  lui         $t0, (0x80002000 >> 16)
/* 013344 00413344 35082000 */  ori         $t0, $t0, (0x80002000 & 0xFFFF)
/* 013348 00413348 1000000B */  b           .L00413378
/* 01334C 0041334C AFA80168 */   sw         $t0, 0x168($sp)
.L00413350:
/* 013350 00413350 8F8F8664 */  lw          $t7, %got(emulator)($gp)
/* 013354 00413354 8DEF0000 */  lw          $t7, 0x0($t7)
/* 013358 00413358 11E00004 */  beqz        $t7, .L0041336C
/* 01335C 0041335C 00000000 */   nop
/* 013360 00413360 3C0A2001 */  lui         $t2, (0x20010000 >> 16)
/* 013364 00413364 10000004 */  b           .L00413378
/* 013368 00413368 AFAA0168 */   sw         $t2, 0x168($sp)
.L0041336C:
/* 01336C 0041336C 3C098000 */  lui         $t1, (0x80000400 >> 16)
/* 013370 00413370 35290400 */  ori         $t1, $t1, (0x80000400 & 0xFFFF)
/* 013374 00413374 AFA90168 */  sw          $t1, 0x168($sp)
.L00413378:
/* 013378 00413378 8F8B8030 */  lw          $t3, %got(B_10019FD0)($gp)
/* 01337C 0041337C 2401FFFF */  addiu       $at, $zero, -0x1
/* 013380 00413380 8D6B9FD0 */  lw          $t3, %lo(B_10019FD0)($t3)
/* 013384 00413384 8D6C0010 */  lw          $t4, 0x10($t3)
/* 013388 00413388 15810009 */  bne         $t4, $at, .L004133B0
/* 01338C 0041338C 00000000 */   nop
/* 013390 00413390 8F988030 */  lw          $t8, %got(B_10019FD0)($gp)
/* 013394 00413394 8FAE0168 */  lw          $t6, 0x168($sp)
/* 013398 00413398 8F189FD0 */  lw          $t8, %lo(B_10019FD0)($t8)
/* 01339C 0041339C AF0E0010 */  sw          $t6, 0x10($t8)
/* 0133A0 004133A0 8F8D8030 */  lw          $t5, %got(B_10019FD0)($gp)
/* 0133A4 004133A4 24190004 */  addiu       $t9, $zero, 0x4
/* 0133A8 004133A8 8DAD9FD0 */  lw          $t5, %lo(B_10019FD0)($t5)
/* 0133AC 004133AC ADB90014 */  sw          $t9, 0x14($t5)
.L004133B0:
/* 0133B0 004133B0 8F888030 */  lw          $t0, %got(B_10019FD0)($gp)
/* 0133B4 004133B4 8F8187B4 */  lw          $at, %got(bootAddress)($gp)
/* 0133B8 004133B8 8D089FD0 */  lw          $t0, %lo(B_10019FD0)($t0)
/* 0133BC 004133BC 8D0F0010 */  lw          $t7, 0x10($t0)
/* 0133C0 004133C0 AC2F0000 */  sw          $t7, 0x0($at)
/* 0133C4 004133C4 8F8A8030 */  lw          $t2, %got(B_10019FD0)($gp)
/* 0133C8 004133C8 8D4A9FD0 */  lw          $t2, %lo(B_10019FD0)($t2)
/* 0133CC 004133CC 8D490010 */  lw          $t1, 0x10($t2)
/* 0133D0 004133D0 252B0050 */  addiu       $t3, $t1, 0x50
/* 0133D4 004133D4 AD4B0010 */  sw          $t3, 0x10($t2)
/* 0133D8 004133D8 10000046 */  b           .L004134F4
/* 0133DC 004133DC 00000000 */   nop
.L004133E0:
/* 0133E0 004133E0 8F8C8654 */  lw          $t4, %got(segmentList)($gp)
/* 0133E4 004133E4 8F8E8030 */  lw          $t6, %got(B_10019FD0)($gp)
/* 0133E8 004133E8 8D8C0000 */  lw          $t4, 0x0($t4)
/* 0133EC 004133EC 8DCE9FD0 */  lw          $t6, %lo(B_10019FD0)($t6)
/* 0133F0 004133F0 158E0009 */  bne         $t4, $t6, .L00413418
/* 0133F4 004133F4 00000000 */   nop
/* 0133F8 004133F8 8F998018 */  lw          $t9, %got(func_004127B4)($gp)
/* 0133FC 004133FC 8F84802C */  lw          $a0, %got(STR_100110B8)($gp)
/* 013400 00413400 273927B4 */  addiu       $t9, $t9, %lo(func_004127B4)
/* 013404 00413404 0320F809 */  jalr        $t9
/* 013408 00413408 248410B8 */   addiu      $a0, $a0, %lo(STR_100110B8)
/* 01340C 0041340C 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013410 00413410 100003C6 */  b           .L0041432C
/* 013414 00413414 24020001 */   addiu      $v0, $zero, 0x1
.L00413418:
/* 013418 00413418 8F98802C */  lw          $t8, %got(D_10015180)($gp)
/* 01341C 0041341C 8F185180 */  lw          $t8, %lo(D_10015180)($t8)
/* 013420 00413420 1300000D */  beqz        $t8, .L00413458
/* 013424 00413424 00000000 */   nop
/* 013428 00413428 8F998030 */  lw          $t9, %got(B_10019FD0)($gp)
/* 01342C 0041342C 8F84802C */  lw          $a0, %got(STR_100110DC)($gp)
/* 013430 00413430 8F399FD0 */  lw          $t9, %lo(B_10019FD0)($t9)
/* 013434 00413434 248410DC */  addiu       $a0, $a0, %lo(STR_100110DC)
/* 013438 00413438 8F250004 */  lw          $a1, 0x4($t9)
/* 01343C 0041343C 8F998018 */  lw          $t9, %got(func_004127B4)($gp)
/* 013440 00413440 273927B4 */  addiu       $t9, $t9, %lo(func_004127B4)
/* 013444 00413444 0320F809 */  jalr        $t9
/* 013448 00413448 00000000 */   nop
/* 01344C 0041344C 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013450 00413450 100003B6 */  b           .L0041432C
/* 013454 00413454 24020001 */   addiu      $v0, $zero, 0x1
.L00413458:
/* 013458 00413458 8F8D802C */  lw          $t5, %got(D_10015184)($gp)
/* 01345C 0041345C 8DAD5184 */  lw          $t5, %lo(D_10015184)($t5)
/* 013460 00413460 11A0000C */  beqz        $t5, .L00413494
/* 013464 00413464 00000000 */   nop
/* 013468 00413468 8F888030 */  lw          $t0, %got(B_10019FD0)($gp)
/* 01346C 0041346C 8F998018 */  lw          $t9, %got(func_004127B4)($gp)
/* 013470 00413470 8F84802C */  lw          $a0, %got(STR_1001110C)($gp)
/* 013474 00413474 8D089FD0 */  lw          $t0, %lo(B_10019FD0)($t0)
/* 013478 00413478 273927B4 */  addiu       $t9, $t9, %lo(func_004127B4)
/* 01347C 0041347C 2484110C */  addiu       $a0, $a0, %lo(STR_1001110C)
/* 013480 00413480 0320F809 */  jalr        $t9
/* 013484 00413484 8D050004 */   lw         $a1, 0x4($t0)
/* 013488 00413488 8FBC0038 */  lw          $gp, 0x38($sp)
/* 01348C 0041348C 100003A7 */  b           .L0041432C
/* 013490 00413490 24020001 */   addiu      $v0, $zero, 0x1
.L00413494:
/* 013494 00413494 8F8F8030 */  lw          $t7, %got(B_10019FD0)($gp)
/* 013498 00413498 8DEF9FD0 */  lw          $t7, %lo(B_10019FD0)($t7)
/* 01349C 0041349C 8DE90028 */  lw          $t1, 0x28($t7)
/* 0134A0 004134A0 312B0002 */  andi        $t3, $t1, 0x2
/* 0134A4 004134A4 11600013 */  beqz        $t3, .L004134F4
/* 0134A8 004134A8 00000000 */   nop
/* 0134AC 004134AC 8DEA0010 */  lw          $t2, 0x10($t7)
/* 0134B0 004134B0 2401FFFF */  addiu       $at, $zero, -0x1
/* 0134B4 004134B4 1541000F */  bne         $t2, $at, .L004134F4
/* 0134B8 004134B8 00000000 */   nop
/* 0134BC 004134BC 8DEC0014 */  lw          $t4, 0x14($t7)
/* 0134C0 004134C0 1580000C */  bnez        $t4, .L004134F4
/* 0134C4 004134C4 00000000 */   nop
/* 0134C8 004134C8 8F8E8030 */  lw          $t6, %got(B_10019FD0)($gp)
/* 0134CC 004134CC 8F998018 */  lw          $t9, %got(func_004127B4)($gp)
/* 0134D0 004134D0 8F84802C */  lw          $a0, %got(STR_10011138)($gp)
/* 0134D4 004134D4 8DCE9FD0 */  lw          $t6, %lo(B_10019FD0)($t6)
/* 0134D8 004134D8 273927B4 */  addiu       $t9, $t9, %lo(func_004127B4)
/* 0134DC 004134DC 24841138 */  addiu       $a0, $a0, %lo(STR_10011138)
/* 0134E0 004134E0 0320F809 */  jalr        $t9
/* 0134E4 004134E4 8DC50004 */   lw         $a1, 0x4($t6)
/* 0134E8 004134E8 8FBC0038 */  lw          $gp, 0x38($sp)
/* 0134EC 004134EC 1000038F */  b           .L0041432C
/* 0134F0 004134F0 24020001 */   addiu      $v0, $zero, 0x1
.L004134F4:
/* 0134F4 004134F4 8F988030 */  lw          $t8, %got(B_10019FD0)($gp)
/* 0134F8 004134F8 8F189FD0 */  lw          $t8, %lo(B_10019FD0)($t8)
/* 0134FC 004134FC 8F190028 */  lw          $t9, 0x28($t8)
/* 013500 00413500 332D0004 */  andi        $t5, $t9, 0x4
/* 013504 00413504 11A00010 */  beqz        $t5, .L00413548
/* 013508 00413508 00000000 */   nop
/* 01350C 0041350C 8F080010 */  lw          $t0, 0x10($t8)
/* 013510 00413510 2401FFFF */  addiu       $at, $zero, -0x1
/* 013514 00413514 1101000C */  beq         $t0, $at, .L00413548
/* 013518 00413518 00000000 */   nop
/* 01351C 0041351C 8F898030 */  lw          $t1, %got(B_10019FD0)($gp)
/* 013520 00413520 8F998018 */  lw          $t9, %got(func_004127B4)($gp)
/* 013524 00413524 8F84802C */  lw          $a0, %got(STR_10011168)($gp)
/* 013528 00413528 8D299FD0 */  lw          $t1, %lo(B_10019FD0)($t1)
/* 01352C 0041352C 273927B4 */  addiu       $t9, $t9, %lo(func_004127B4)
/* 013530 00413530 24841168 */  addiu       $a0, $a0, %lo(STR_10011168)
/* 013534 00413534 0320F809 */  jalr        $t9
/* 013538 00413538 8D250004 */   lw         $a1, 0x4($t1)
/* 01353C 0041353C 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013540 00413540 1000037A */  b           .L0041432C
/* 013544 00413544 24020001 */   addiu      $v0, $zero, 0x1
.L00413548:
/* 013548 00413548 8F8B8030 */  lw          $t3, %got(B_10019FD0)($gp)
/* 01354C 0041354C 8D6B9FD0 */  lw          $t3, %lo(B_10019FD0)($t3)
/* 013550 00413550 8D6A0020 */  lw          $t2, 0x20($t3)
/* 013554 00413554 1140000F */  beqz        $t2, .L00413594
/* 013558 00413558 00000000 */   nop
/* 01355C 0041355C 8D6F0014 */  lw          $t7, 0x14($t3)
/* 013560 00413560 15E0000C */  bnez        $t7, .L00413594
/* 013564 00413564 00000000 */   nop
/* 013568 00413568 8F8C8030 */  lw          $t4, %got(B_10019FD0)($gp)
/* 01356C 0041356C 8F998018 */  lw          $t9, %got(func_004127B4)($gp)
/* 013570 00413570 8F84802C */  lw          $a0, %got(STR_10011190)($gp)
/* 013574 00413574 8D8C9FD0 */  lw          $t4, %lo(B_10019FD0)($t4)
/* 013578 00413578 273927B4 */  addiu       $t9, $t9, %lo(func_004127B4)
/* 01357C 0041357C 24841190 */  addiu       $a0, $a0, %lo(STR_10011190)
/* 013580 00413580 0320F809 */  jalr        $t9
/* 013584 00413584 8D850004 */   lw         $a1, 0x4($t4)
/* 013588 00413588 8FBC0038 */  lw          $gp, 0x38($sp)
/* 01358C 0041358C 10000367 */  b           .L0041432C
/* 013590 00413590 24020001 */   addiu      $v0, $zero, 0x1
.L00413594:
/* 013594 00413594 8F8E8030 */  lw          $t6, %got(B_10019FD0)($gp)
/* 013598 00413598 8DCE9FD0 */  lw          $t6, %lo(B_10019FD0)($t6)
/* 01359C 0041359C 8DD90020 */  lw          $t9, 0x20($t6)
/* 0135A0 004135A0 17200005 */  bnez        $t9, .L004135B8
/* 0135A4 004135A4 00000000 */   nop
/* 0135A8 004135A8 8F988030 */  lw          $t8, %got(B_10019FD0)($gp)
/* 0135AC 004135AC 240D0010 */  addiu       $t5, $zero, 0x10
/* 0135B0 004135B0 8F189FD0 */  lw          $t8, %lo(B_10019FD0)($t8)
/* 0135B4 004135B4 AF0D0020 */  sw          $t5, 0x20($t8)
.L004135B8:
/* 0135B8 004135B8 8F888030 */  lw          $t0, %got(B_10019FD0)($gp)
/* 0135BC 004135BC 8F818030 */  lw          $at, %got(B_10019FCC)($gp)
/* 0135C0 004135C0 8D089FD0 */  lw          $t0, %lo(B_10019FD0)($t0)
/* 0135C4 004135C4 AC289FCC */  sw          $t0, %lo(B_10019FCC)($at)
/* 0135C8 004135C8 10000354 */  b           .L0041431C
/* 0135CC 004135CC 00000000 */   nop
.L004135D0:
/* 0135D0 004135D0 8F998064 */  lw          $t9, %call16(malloc)($gp)
/* 0135D4 004135D4 24040078 */  addiu       $a0, $zero, 0x78
/* 0135D8 004135D8 0320F809 */  jalr        $t9
/* 0135DC 004135DC 00000000 */   nop
/* 0135E0 004135E0 8FBC0038 */  lw          $gp, 0x38($sp)
/* 0135E4 004135E4 8F818030 */  lw          $at, %got(B_10019FD0)($gp)
/* 0135E8 004135E8 8F898030 */  lw          $t1, %got(B_10019FD0)($gp)
/* 0135EC 004135EC AC229FD0 */  sw          $v0, %lo(B_10019FD0)($at)
/* 0135F0 004135F0 8D299FD0 */  lw          $t1, %lo(B_10019FD0)($t1)
/* 0135F4 004135F4 1520000A */  bnez        $t1, .L00413620
/* 0135F8 004135F8 00000000 */   nop
/* 0135FC 004135FC 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 013600 00413600 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 013604 00413604 8F85802C */  lw          $a1, %got(STR_100111E0)($gp)
/* 013608 00413608 24840020 */  addiu       $a0, $a0, 0x20
/* 01360C 0041360C 0320F809 */  jalr        $t9
/* 013610 00413610 24A511E0 */   addiu      $a1, $a1, %lo(STR_100111E0)
/* 013614 00413614 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013618 00413618 10000344 */  b           .L0041432C
/* 01361C 0041361C 24020001 */   addiu      $v0, $zero, 0x1
.L00413620:
/* 013620 00413620 8F8A8030 */  lw          $t2, %got(B_10019FD0)($gp)
/* 013624 00413624 8D4A9FD0 */  lw          $t2, %lo(B_10019FD0)($t2)
/* 013628 00413628 AD400000 */  sw          $zero, 0x0($t2)
/* 01362C 0041362C 8F8B8030 */  lw          $t3, %got(B_10019FD0)($gp)
/* 013630 00413630 8D6B9FD0 */  lw          $t3, %lo(B_10019FD0)($t3)
/* 013634 00413634 AD600004 */  sw          $zero, 0x4($t3)
/* 013638 00413638 8F8F8030 */  lw          $t7, %got(B_10019FD0)($gp)
/* 01363C 0041363C 8DEF9FD0 */  lw          $t7, %lo(B_10019FD0)($t7)
/* 013640 00413640 ADE00008 */  sw          $zero, 0x8($t7)
/* 013644 00413644 8F8C8030 */  lw          $t4, %got(B_10019FD0)($gp)
/* 013648 00413648 8D8C9FD0 */  lw          $t4, %lo(B_10019FD0)($t4)
/* 01364C 0041364C AD80000C */  sw          $zero, 0xC($t4)
/* 013650 00413650 8F998030 */  lw          $t9, %got(B_10019FD0)($gp)
/* 013654 00413654 240EFFFF */  addiu       $t6, $zero, -0x1
/* 013658 00413658 8F399FD0 */  lw          $t9, %lo(B_10019FD0)($t9)
/* 01365C 0041365C AF2E0010 */  sw          $t6, 0x10($t9)
/* 013660 00413660 8F8D8030 */  lw          $t5, %got(B_10019FD0)($gp)
/* 013664 00413664 8DAD9FD0 */  lw          $t5, %lo(B_10019FD0)($t5)
/* 013668 00413668 ADA00014 */  sw          $zero, 0x14($t5)
/* 01366C 0041366C 8F988030 */  lw          $t8, %got(B_10019FD0)($gp)
/* 013670 00413670 8F189FD0 */  lw          $t8, %lo(B_10019FD0)($t8)
/* 013674 00413674 AF000048 */  sw          $zero, 0x48($t8)
/* 013678 00413678 8F888030 */  lw          $t0, %got(B_10019FD0)($gp)
/* 01367C 0041367C 8D089FD0 */  lw          $t0, %lo(B_10019FD0)($t0)
/* 013680 00413680 AD000020 */  sw          $zero, 0x20($t0)
/* 013684 00413684 8F8A8030 */  lw          $t2, %got(B_10019FD0)($gp)
/* 013688 00413688 2409FFFF */  addiu       $t1, $zero, -0x1
/* 01368C 0041368C 8D4A9FD0 */  lw          $t2, %lo(B_10019FD0)($t2)
/* 013690 00413690 AD490028 */  sw          $t1, 0x28($t2)
/* 013694 00413694 8F8B8030 */  lw          $t3, %got(B_10019FD0)($gp)
/* 013698 00413698 8D6B9FD0 */  lw          $t3, %lo(B_10019FD0)($t3)
/* 01369C 0041369C AD60002C */  sw          $zero, 0x2C($t3)
/* 0136A0 004136A0 8F8F8030 */  lw          $t7, %got(B_10019FD0)($gp)
/* 0136A4 004136A4 8DEF9FD0 */  lw          $t7, %lo(B_10019FD0)($t7)
/* 0136A8 004136A8 ADE00030 */  sw          $zero, 0x30($t7)
/* 0136AC 004136AC 8F8C8030 */  lw          $t4, %got(B_10019FD0)($gp)
/* 0136B0 004136B0 8D8C9FD0 */  lw          $t4, %lo(B_10019FD0)($t4)
/* 0136B4 004136B4 AD800034 */  sw          $zero, 0x34($t4)
/* 0136B8 004136B8 8F8E8030 */  lw          $t6, %got(B_10019FD0)($gp)
/* 0136BC 004136BC 8DCE9FD0 */  lw          $t6, %lo(B_10019FD0)($t6)
/* 0136C0 004136C0 ADC00038 */  sw          $zero, 0x38($t6)
/* 0136C4 004136C4 8F998030 */  lw          $t9, %got(B_10019FD0)($gp)
/* 0136C8 004136C8 8F399FD0 */  lw          $t9, %lo(B_10019FD0)($t9)
/* 0136CC 004136CC AF20003C */  sw          $zero, 0x3C($t9)
/* 0136D0 004136D0 8F988030 */  lw          $t8, %got(B_10019FD0)($gp)
/* 0136D4 004136D4 3C0D7FFF */  lui         $t5, (0x7FFFFFFF >> 16)
/* 0136D8 004136D8 35ADFFFF */  ori         $t5, $t5, (0x7FFFFFFF & 0xFFFF)
/* 0136DC 004136DC 8F189FD0 */  lw          $t8, %lo(B_10019FD0)($t8)
/* 0136E0 004136E0 AF0D0044 */  sw          $t5, 0x44($t8)
/* 0136E4 004136E4 8F888030 */  lw          $t0, %got(B_10019FD0)($gp)
/* 0136E8 004136E8 8D089FD0 */  lw          $t0, %lo(B_10019FD0)($t0)
/* 0136EC 004136EC AD00004C */  sw          $zero, 0x4C($t0)
/* 0136F0 004136F0 8F898030 */  lw          $t1, %got(B_10019FD0)($gp)
/* 0136F4 004136F4 8D299FD0 */  lw          $t1, %lo(B_10019FD0)($t1)
/* 0136F8 004136F8 AD200050 */  sw          $zero, 0x50($t1)
/* 0136FC 004136FC 8F8A8030 */  lw          $t2, %got(B_10019FD0)($gp)
/* 013700 00413700 8D4A9FD0 */  lw          $t2, %lo(B_10019FD0)($t2)
/* 013704 00413704 AD400054 */  sw          $zero, 0x54($t2)
/* 013708 00413708 8F8B8030 */  lw          $t3, %got(B_10019FD0)($gp)
/* 01370C 0041370C 8D6B9FD0 */  lw          $t3, %lo(B_10019FD0)($t3)
/* 013710 00413710 AD600058 */  sw          $zero, 0x58($t3)
/* 013714 00413714 8F8F8030 */  lw          $t7, %got(B_10019FD0)($gp)
/* 013718 00413718 8DEF9FD0 */  lw          $t7, %lo(B_10019FD0)($t7)
/* 01371C 0041371C ADE0005C */  sw          $zero, 0x5C($t7)
/* 013720 00413720 8F8C8030 */  lw          $t4, %got(B_10019FD0)($gp)
/* 013724 00413724 8D8C9FD0 */  lw          $t4, %lo(B_10019FD0)($t4)
/* 013728 00413728 AD800060 */  sw          $zero, 0x60($t4)
/* 01372C 0041372C 8F8E8654 */  lw          $t6, %got(segmentList)($gp)
/* 013730 00413730 8DCE0000 */  lw          $t6, 0x0($t6)
/* 013734 00413734 15C00006 */  bnez        $t6, .L00413750
/* 013738 00413738 00000000 */   nop
/* 01373C 0041373C 8F998030 */  lw          $t9, %got(B_10019FD0)($gp)
/* 013740 00413740 8F818654 */  lw          $at, %got(segmentList)($gp)
/* 013744 00413744 8F399FD0 */  lw          $t9, %lo(B_10019FD0)($t9)
/* 013748 00413748 10000006 */  b           .L00413764
/* 01374C 0041374C AC390000 */   sw         $t9, 0x0($at)
.L00413750:
/* 013750 00413750 8F8D8030 */  lw          $t5, %got(B_10019FD0)($gp)
/* 013754 00413754 8F988030 */  lw          $t8, %got(B_10019FCC)($gp)
/* 013758 00413758 8DAD9FD0 */  lw          $t5, %lo(B_10019FD0)($t5)
/* 01375C 0041375C 8F189FCC */  lw          $t8, %lo(B_10019FCC)($t8)
/* 013760 00413760 AF0D0000 */  sw          $t5, 0x0($t8)
.L00413764:
/* 013764 00413764 8F81802C */  lw          $at, %got(D_10015180)($gp)
/* 013768 00413768 AC205180 */  sw          $zero, %lo(D_10015180)($at)
/* 01376C 0041376C 8F81802C */  lw          $at, %got(D_10015184)($gp)
/* 013770 00413770 AC205184 */  sw          $zero, %lo(D_10015184)($at)
/* 013774 00413774 100002E9 */  b           .L0041431C
/* 013778 00413778 00000000 */   nop
.L0041377C:
/* 01377C 0041377C 8E080000 */  lw          $t0, 0x0($s0)
/* 013780 00413780 3109000F */  andi        $t1, $t0, 0xF
/* 013784 00413784 1120000A */  beqz        $t1, .L004137B0
/* 013788 00413788 00000000 */   nop
/* 01378C 0041378C 8F998018 */  lw          $t9, %got(func_004127B4)($gp)
/* 013790 00413790 8F84802C */  lw          $a0, %got(STR_100111F8)($gp)
/* 013794 00413794 8E050000 */  lw          $a1, 0x0($s0)
/* 013798 00413798 273927B4 */  addiu       $t9, $t9, %lo(func_004127B4)
/* 01379C 0041379C 0320F809 */  jalr        $t9
/* 0137A0 004137A0 248411F8 */   addiu      $a0, $a0, %lo(STR_100111F8)
/* 0137A4 004137A4 8FBC0038 */  lw          $gp, 0x38($sp)
/* 0137A8 004137A8 100002E0 */  b           .L0041432C
/* 0137AC 004137AC 24020001 */   addiu      $v0, $zero, 0x1
.L004137B0:
/* 0137B0 004137B0 8E0A0000 */  lw          $t2, 0x0($s0)
/* 0137B4 004137B4 3C018000 */  lui         $at, (0x80000000 >> 16)
/* 0137B8 004137B8 0141082B */  sltu        $at, $t2, $at
/* 0137BC 004137BC 1420001A */  bnez        $at, .L00413828
/* 0137C0 004137C0 00000000 */   nop
/* 0137C4 004137C4 8E0B0000 */  lw          $t3, 0x0($s0)
/* 0137C8 004137C8 3C01C000 */  lui         $at, (0xC0000000 >> 16)
/* 0137CC 004137CC 0161082B */  sltu        $at, $t3, $at
/* 0137D0 004137D0 10200015 */  beqz        $at, .L00413828
/* 0137D4 004137D4 00000000 */   nop
/* 0137D8 004137D8 8E0F0000 */  lw          $t7, 0x0($s0)
/* 0137DC 004137DC 3C011FFF */  lui         $at, (0x1FFFFFFF >> 16)
/* 0137E0 004137E0 3421FFFF */  ori         $at, $at, (0x1FFFFFFF & 0xFFFF)
/* 0137E4 004137E4 01E16024 */  and         $t4, $t7, $at
/* 0137E8 004137E8 2D810400 */  sltiu       $at, $t4, 0x400
/* 0137EC 004137EC 1020000E */  beqz        $at, .L00413828
/* 0137F0 004137F0 00000000 */   nop
/* 0137F4 004137F4 8F998018 */  lw          $t9, %got(func_004127B4)($gp)
/* 0137F8 004137F8 8F84802C */  lw          $a0, %got(STR_1001121C)($gp)
/* 0137FC 004137FC 3C068000 */  lui         $a2, (0x80000400 >> 16)
/* 013800 00413800 3C07A000 */  lui         $a3, (0xA0000400 >> 16)
/* 013804 00413804 273927B4 */  addiu       $t9, $t9, %lo(func_004127B4)
/* 013808 00413808 34E70400 */  ori         $a3, $a3, (0xA0000400 & 0xFFFF)
/* 01380C 0041380C 34C60400 */  ori         $a2, $a2, (0x80000400 & 0xFFFF)
/* 013810 00413810 8E050000 */  lw          $a1, 0x0($s0)
/* 013814 00413814 0320F809 */  jalr        $t9
/* 013818 00413818 2484121C */   addiu      $a0, $a0, %lo(STR_1001121C)
/* 01381C 0041381C 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013820 00413820 100002C2 */  b           .L0041432C
/* 013824 00413824 24020001 */   addiu      $v0, $zero, 0x1
.L00413828:
/* 013828 00413828 8F8E8030 */  lw          $t6, %got(B_10019FD0)($gp)
/* 01382C 0041382C 2401FFFF */  addiu       $at, $zero, -0x1
/* 013830 00413830 8DCE9FD0 */  lw          $t6, %lo(B_10019FD0)($t6)
/* 013834 00413834 8DD90010 */  lw          $t9, 0x10($t6)
/* 013838 00413838 13210009 */  beq         $t9, $at, .L00413860
/* 01383C 0041383C 00000000 */   nop
/* 013840 00413840 8F998018 */  lw          $t9, %got(func_004127B4)($gp)
/* 013844 00413844 8F84802C */  lw          $a0, %got(STR_10011254)($gp)
/* 013848 00413848 273927B4 */  addiu       $t9, $t9, %lo(func_004127B4)
/* 01384C 0041384C 0320F809 */  jalr        $t9
/* 013850 00413850 24841254 */   addiu      $a0, $a0, %lo(STR_10011254)
/* 013854 00413854 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013858 00413858 100002B4 */  b           .L0041432C
/* 01385C 0041385C 24020001 */   addiu      $v0, $zero, 0x1
.L00413860:
/* 013860 00413860 8F988030 */  lw          $t8, %got(B_10019FD0)($gp)
/* 013864 00413864 240D0004 */  addiu       $t5, $zero, 0x4
/* 013868 00413868 8F189FD0 */  lw          $t8, %lo(B_10019FD0)($t8)
/* 01386C 0041386C AF0D0014 */  sw          $t5, 0x14($t8)
/* 013870 00413870 8F898030 */  lw          $t1, %got(B_10019FD0)($gp)
/* 013874 00413874 8E080000 */  lw          $t0, 0x0($s0)
/* 013878 00413878 8D299FD0 */  lw          $t1, %lo(B_10019FD0)($t1)
/* 01387C 0041387C AD280010 */  sw          $t0, 0x10($t1)
/* 013880 00413880 100002A6 */  b           .L0041431C
/* 013884 00413884 00000000 */   nop
.L00413888:
/* 013888 00413888 8E0A0000 */  lw          $t2, 0x0($s0)
/* 01388C 0041388C 05400005 */  bltz        $t2, .L004138A4
/* 013890 00413890 00000000 */   nop
/* 013894 00413894 8E0B0000 */  lw          $t3, 0x0($s0)
/* 013898 00413898 29610010 */  slti        $at, $t3, 0x10
/* 01389C 0041389C 1420000A */  bnez        $at, .L004138C8
/* 0138A0 004138A0 00000000 */   nop
.L004138A4:
/* 0138A4 004138A4 8F998018 */  lw          $t9, %got(func_004127B4)($gp)
/* 0138A8 004138A8 8F84802C */  lw          $a0, %got(STR_1001127C)($gp)
/* 0138AC 004138AC 8E050000 */  lw          $a1, 0x0($s0)
/* 0138B0 004138B0 273927B4 */  addiu       $t9, $t9, %lo(func_004127B4)
/* 0138B4 004138B4 0320F809 */  jalr        $t9
/* 0138B8 004138B8 2484127C */   addiu      $a0, $a0, %lo(STR_1001127C)
/* 0138BC 004138BC 8FBC0038 */  lw          $gp, 0x38($sp)
/* 0138C0 004138C0 1000029A */  b           .L0041432C
/* 0138C4 004138C4 24020001 */   addiu      $v0, $zero, 0x1
.L004138C8:
/* 0138C8 004138C8 8F8F8030 */  lw          $t7, %got(B_10019FD0)($gp)
/* 0138CC 004138CC 2401FFFF */  addiu       $at, $zero, -0x1
/* 0138D0 004138D0 8DEF9FD0 */  lw          $t7, %lo(B_10019FD0)($t7)
/* 0138D4 004138D4 8DEC0010 */  lw          $t4, 0x10($t7)
/* 0138D8 004138D8 11810009 */  beq         $t4, $at, .L00413900
/* 0138DC 004138DC 00000000 */   nop
/* 0138E0 004138E0 8F998018 */  lw          $t9, %got(func_004127B4)($gp)
/* 0138E4 004138E4 8F84802C */  lw          $a0, %got(STR_100112A4)($gp)
/* 0138E8 004138E8 273927B4 */  addiu       $t9, $t9, %lo(func_004127B4)
/* 0138EC 004138EC 0320F809 */  jalr        $t9
/* 0138F0 004138F0 248412A4 */   addiu      $a0, $a0, %lo(STR_100112A4)
/* 0138F4 004138F4 8FBC0038 */  lw          $gp, 0x38($sp)
/* 0138F8 004138F8 1000028C */  b           .L0041432C
/* 0138FC 004138FC 24020001 */   addiu      $v0, $zero, 0x1
.L00413900:
/* 013900 00413900 8F998030 */  lw          $t9, %got(B_10019FD0)($gp)
/* 013904 00413904 240E0005 */  addiu       $t6, $zero, 0x5
/* 013908 00413908 8F399FD0 */  lw          $t9, %lo(B_10019FD0)($t9)
/* 01390C 0041390C AF2E0014 */  sw          $t6, 0x14($t9)
/* 013910 00413910 8F888030 */  lw          $t0, %got(B_10019FD0)($gp)
/* 013914 00413914 8E0D0000 */  lw          $t5, 0x0($s0)
/* 013918 00413918 8D089FD0 */  lw          $t0, %lo(B_10019FD0)($t0)
/* 01391C 0041391C 000DC600 */  sll         $t8, $t5, 24
/* 013920 00413920 AD180010 */  sw          $t8, 0x10($t0)
/* 013924 00413924 1000027D */  b           .L0041431C
/* 013928 00413928 00000000 */   nop
.L0041392C:
/* 01392C 0041392C 8F898030 */  lw          $t1, %got(B_10019FD0)($gp)
/* 013930 00413930 2401FFFF */  addiu       $at, $zero, -0x1
/* 013934 00413934 8D299FD0 */  lw          $t1, %lo(B_10019FD0)($t1)
/* 013938 00413938 8D2A0010 */  lw          $t2, 0x10($t1)
/* 01393C 0041393C 11410009 */  beq         $t2, $at, .L00413964
/* 013940 00413940 00000000 */   nop
/* 013944 00413944 8F998018 */  lw          $t9, %got(func_004127B4)($gp)
/* 013948 00413948 8F84802C */  lw          $a0, %got(STR_100112CC)($gp)
/* 01394C 0041394C 273927B4 */  addiu       $t9, $t9, %lo(func_004127B4)
/* 013950 00413950 0320F809 */  jalr        $t9
/* 013954 00413954 248412CC */   addiu      $a0, $a0, %lo(STR_100112CC)
/* 013958 00413958 8FBC0038 */  lw          $gp, 0x38($sp)
/* 01395C 0041395C 10000273 */  b           .L0041432C
/* 013960 00413960 24020001 */   addiu      $v0, $zero, 0x1
.L00413964:
/* 013964 00413964 8F8F8030 */  lw          $t7, %got(B_10019FD0)($gp)
/* 013968 00413968 240BFFFF */  addiu       $t3, $zero, -0x1
/* 01396C 0041396C 8DEF9FD0 */  lw          $t7, %lo(B_10019FD0)($t7)
/* 013970 00413970 ADEB0010 */  sw          $t3, 0x10($t7)
/* 013974 00413974 10000269 */  b           .L0041431C
/* 013978 00413978 00000000 */   nop
.L0041397C:
/* 01397C 0041397C 8E0C0000 */  lw          $t4, 0x0($s0)
/* 013980 00413980 29810010 */  slti        $at, $t4, 0x10
/* 013984 00413984 1020000B */  beqz        $at, .L004139B4
/* 013988 00413988 00000000 */   nop
/* 01398C 0041398C 8F998018 */  lw          $t9, %got(func_004127B4)($gp)
/* 013990 00413990 8F84802C */  lw          $a0, %got(STR_100112F4)($gp)
/* 013994 00413994 8E050000 */  lw          $a1, 0x0($s0)
/* 013998 00413998 273927B4 */  addiu       $t9, $t9, %lo(func_004127B4)
/* 01399C 0041399C 8E060000 */  lw          $a2, 0x0($s0)
/* 0139A0 004139A0 0320F809 */  jalr        $t9
/* 0139A4 004139A4 248412F4 */   addiu      $a0, $a0, %lo(STR_100112F4)
/* 0139A8 004139A8 8FBC0038 */  lw          $gp, 0x38($sp)
/* 0139AC 004139AC 1000025F */  b           .L0041432C
/* 0139B0 004139B0 24020001 */   addiu      $v0, $zero, 0x1
.L004139B4:
/* 0139B4 004139B4 8E0E0000 */  lw          $t6, 0x0($s0)
/* 0139B8 004139B8 8E0D0000 */  lw          $t5, 0x0($s0)
/* 0139BC 004139BC 25D9FFFF */  addiu       $t9, $t6, -0x1
/* 0139C0 004139C0 032DC024 */  and         $t8, $t9, $t5
/* 0139C4 004139C4 1300000B */  beqz        $t8, .L004139F4
/* 0139C8 004139C8 00000000 */   nop
/* 0139CC 004139CC 8F998018 */  lw          $t9, %got(func_004127B4)($gp)
/* 0139D0 004139D0 8F84802C */  lw          $a0, %got(STR_10011324)($gp)
/* 0139D4 004139D4 8E050000 */  lw          $a1, 0x0($s0)
/* 0139D8 004139D8 273927B4 */  addiu       $t9, $t9, %lo(func_004127B4)
/* 0139DC 004139DC 8E060000 */  lw          $a2, 0x0($s0)
/* 0139E0 004139E0 0320F809 */  jalr        $t9
/* 0139E4 004139E4 24841324 */   addiu      $a0, $a0, %lo(STR_10011324)
/* 0139E8 004139E8 8FBC0038 */  lw          $gp, 0x38($sp)
/* 0139EC 004139EC 1000024F */  b           .L0041432C
/* 0139F0 004139F0 24020001 */   addiu      $v0, $zero, 0x1
.L004139F4:
/* 0139F4 004139F4 8F898030 */  lw          $t1, %got(B_10019FD0)($gp)
/* 0139F8 004139F8 8E080000 */  lw          $t0, 0x0($s0)
/* 0139FC 004139FC 8D299FD0 */  lw          $t1, %lo(B_10019FD0)($t1)
/* 013A00 00413A00 AD280048 */  sw          $t0, 0x48($t1)
/* 013A04 00413A04 10000245 */  b           .L0041431C
/* 013A08 00413A08 00000000 */   nop
.L00413A0C:
/* 013A0C 00413A0C 8E0A0000 */  lw          $t2, 0x0($s0)
/* 013A10 00413A10 29410010 */  slti        $at, $t2, 0x10
/* 013A14 00413A14 1020000B */  beqz        $at, .L00413A44
/* 013A18 00413A18 00000000 */   nop
/* 013A1C 00413A1C 8F998018 */  lw          $t9, %got(func_004127B4)($gp)
/* 013A20 00413A20 8F84802C */  lw          $a0, %got(STR_10011354)($gp)
/* 013A24 00413A24 8E050000 */  lw          $a1, 0x0($s0)
/* 013A28 00413A28 273927B4 */  addiu       $t9, $t9, %lo(func_004127B4)
/* 013A2C 00413A2C 8E060000 */  lw          $a2, 0x0($s0)
/* 013A30 00413A30 0320F809 */  jalr        $t9
/* 013A34 00413A34 24841354 */   addiu      $a0, $a0, %lo(STR_10011354)
/* 013A38 00413A38 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013A3C 00413A3C 1000023B */  b           .L0041432C
/* 013A40 00413A40 24020001 */   addiu      $v0, $zero, 0x1
.L00413A44:
/* 013A44 00413A44 8E0B0000 */  lw          $t3, 0x0($s0)
/* 013A48 00413A48 8E0C0000 */  lw          $t4, 0x0($s0)
/* 013A4C 00413A4C 256FFFFF */  addiu       $t7, $t3, -0x1
/* 013A50 00413A50 01EC7024 */  and         $t6, $t7, $t4
/* 013A54 00413A54 11C0000B */  beqz        $t6, .L00413A84
/* 013A58 00413A58 00000000 */   nop
/* 013A5C 00413A5C 8F998018 */  lw          $t9, %got(func_004127B4)($gp)
/* 013A60 00413A60 8F84802C */  lw          $a0, %got(STR_10011380)($gp)
/* 013A64 00413A64 8E050000 */  lw          $a1, 0x0($s0)
/* 013A68 00413A68 273927B4 */  addiu       $t9, $t9, %lo(func_004127B4)
/* 013A6C 00413A6C 8E060000 */  lw          $a2, 0x0($s0)
/* 013A70 00413A70 0320F809 */  jalr        $t9
/* 013A74 00413A74 24841380 */   addiu      $a0, $a0, %lo(STR_10011380)
/* 013A78 00413A78 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013A7C 00413A7C 1000022B */  b           .L0041432C
/* 013A80 00413A80 24020001 */   addiu      $v0, $zero, 0x1
.L00413A84:
/* 013A84 00413A84 8F8D8030 */  lw          $t5, %got(B_10019FD0)($gp)
/* 013A88 00413A88 8E190000 */  lw          $t9, 0x0($s0)
/* 013A8C 00413A8C 8DAD9FD0 */  lw          $t5, %lo(B_10019FD0)($t5)
/* 013A90 00413A90 ADB90020 */  sw          $t9, 0x20($t5)
/* 013A94 00413A94 10000221 */  b           .L0041431C
/* 013A98 00413A98 00000000 */   nop
.L00413A9C:
/* 013A9C 00413A9C 8F988030 */  lw          $t8, %got(B_10019FD0)($gp)
/* 013AA0 00413AA0 8F189FD0 */  lw          $t8, %lo(B_10019FD0)($t8)
/* 013AA4 00413AA4 8F080004 */  lw          $t0, 0x4($t8)
/* 013AA8 00413AA8 11000009 */  beqz        $t0, .L00413AD0
/* 013AAC 00413AAC 00000000 */   nop
/* 013AB0 00413AB0 8F998018 */  lw          $t9, %got(func_004127B4)($gp)
/* 013AB4 00413AB4 8F84802C */  lw          $a0, %got(STR_100113AC)($gp)
/* 013AB8 00413AB8 273927B4 */  addiu       $t9, $t9, %lo(func_004127B4)
/* 013ABC 00413ABC 0320F809 */  jalr        $t9
/* 013AC0 00413AC0 248413AC */   addiu      $a0, $a0, %lo(STR_100113AC)
/* 013AC4 00413AC4 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013AC8 00413AC8 10000218 */  b           .L0041432C
/* 013ACC 00413ACC 24020001 */   addiu      $v0, $zero, 0x1
.L00413AD0:
/* 013AD0 00413AD0 8F998114 */  lw          $t9, %call16(strdup)($gp)
/* 013AD4 00413AD4 8E040000 */  lw          $a0, 0x0($s0)
/* 013AD8 00413AD8 0320F809 */  jalr        $t9
/* 013ADC 00413ADC 00000000 */   nop
/* 013AE0 00413AE0 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013AE4 00413AE4 0040B825 */  move        $s7, $v0
/* 013AE8 00413AE8 8F898030 */  lw          $t1, %got(B_10019FD0)($gp)
/* 013AEC 00413AEC 8D299FD0 */  lw          $t1, %lo(B_10019FD0)($t1)
/* 013AF0 00413AF0 16E0000D */  bnez        $s7, .L00413B28
/* 013AF4 00413AF4 AD370004 */   sw         $s7, 0x4($t1)
/* 013AF8 00413AF8 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 013AFC 00413AFC 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 013B00 00413B00 8F85802C */  lw          $a1, %got(STR_100113C4)($gp)
/* 013B04 00413B04 24840020 */  addiu       $a0, $a0, 0x20
/* 013B08 00413B08 0320F809 */  jalr        $t9
/* 013B0C 00413B0C 24A513C4 */   addiu      $a1, $a1, %lo(STR_100113C4)
/* 013B10 00413B10 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013B14 00413B14 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 013B18 00413B18 24040001 */  addiu       $a0, $zero, 0x1
/* 013B1C 00413B1C 0320F809 */  jalr        $t9
/* 013B20 00413B20 00000000 */   nop
/* 013B24 00413B24 8FBC0038 */  lw          $gp, 0x38($sp)
.L00413B28:
/* 013B28 00413B28 100001FC */  b           .L0041431C
/* 013B2C 00413B2C 00000000 */   nop
.L00413B30:
/* 013B30 00413B30 8F8A802C */  lw          $t2, %got(D_10015180)($gp)
/* 013B34 00413B34 8D4A5180 */  lw          $t2, %lo(D_10015180)($t2)
/* 013B38 00413B38 11400009 */  beqz        $t2, .L00413B60
/* 013B3C 00413B3C 00000000 */   nop
/* 013B40 00413B40 8F998018 */  lw          $t9, %got(func_004127B4)($gp)
/* 013B44 00413B44 8F84802C */  lw          $a0, %got(STR_100113DC)($gp)
/* 013B48 00413B48 273927B4 */  addiu       $t9, $t9, %lo(func_004127B4)
/* 013B4C 00413B4C 0320F809 */  jalr        $t9
/* 013B50 00413B50 248413DC */   addiu      $a0, $a0, %lo(STR_100113DC)
/* 013B54 00413B54 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013B58 00413B58 100001F4 */  b           .L0041432C
/* 013B5C 00413B5C 24020001 */   addiu      $v0, $zero, 0x1
.L00413B60:
/* 013B60 00413B60 8F81802C */  lw          $at, %got(D_10015180)($gp)
/* 013B64 00413B64 240B0001 */  addiu       $t3, $zero, 0x1
/* 013B68 00413B68 AC2B5180 */  sw          $t3, %lo(D_10015180)($at)
/* 013B6C 00413B6C 8E0F0000 */  lw          $t7, 0x0($s0)
/* 013B70 00413B70 8F81870C */  lw          $at, %got(bootEntryName)($gp)
/* 013B74 00413B74 AC2F0000 */  sw          $t7, 0x0($at)
/* 013B78 00413B78 100001E8 */  b           .L0041431C
/* 013B7C 00413B7C 00000000 */   nop
.L00413B80:
/* 013B80 00413B80 8F8C8030 */  lw          $t4, %got(B_10019FD0)($gp)
/* 013B84 00413B84 2401FFFF */  addiu       $at, $zero, -0x1
/* 013B88 00413B88 8D8C9FD0 */  lw          $t4, %lo(B_10019FD0)($t4)
/* 013B8C 00413B8C 8D8E0028 */  lw          $t6, 0x28($t4)
/* 013B90 00413B90 11C10009 */  beq         $t6, $at, .L00413BB8
/* 013B94 00413B94 00000000 */   nop
/* 013B98 00413B98 8F998018 */  lw          $t9, %got(func_004127B4)($gp)
/* 013B9C 00413B9C 8F84802C */  lw          $a0, %got(STR_100113F4)($gp)
/* 013BA0 00413BA0 273927B4 */  addiu       $t9, $t9, %lo(func_004127B4)
/* 013BA4 00413BA4 0320F809 */  jalr        $t9
/* 013BA8 00413BA8 248413F4 */   addiu      $a0, $a0, %lo(STR_100113F4)
/* 013BAC 00413BAC 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013BB0 00413BB0 100001DE */  b           .L0041432C
/* 013BB4 00413BB4 24020001 */   addiu      $v0, $zero, 0x1
.L00413BB8:
/* 013BB8 00413BB8 8E190000 */  lw          $t9, 0x0($s0)
/* 013BBC 00413BBC 24010005 */  addiu       $at, $zero, 0x5
/* 013BC0 00413BC0 332D0005 */  andi        $t5, $t9, 0x5
/* 013BC4 00413BC4 15A10009 */  bne         $t5, $at, .L00413BEC
/* 013BC8 00413BC8 00000000 */   nop
/* 013BCC 00413BCC 8F998018 */  lw          $t9, %got(func_004127B4)($gp)
/* 013BD0 00413BD0 8F84802C */  lw          $a0, %got(STR_10011414)($gp)
/* 013BD4 00413BD4 273927B4 */  addiu       $t9, $t9, %lo(func_004127B4)
/* 013BD8 00413BD8 0320F809 */  jalr        $t9
/* 013BDC 00413BDC 24841414 */   addiu      $a0, $a0, %lo(STR_10011414)
/* 013BE0 00413BE0 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013BE4 00413BE4 100001D1 */  b           .L0041432C
/* 013BE8 00413BE8 24020001 */   addiu      $v0, $zero, 0x1
.L00413BEC:
/* 013BEC 00413BEC 8E180000 */  lw          $t8, 0x0($s0)
/* 013BF0 00413BF0 24010006 */  addiu       $at, $zero, 0x6
/* 013BF4 00413BF4 33080006 */  andi        $t0, $t8, 0x6
/* 013BF8 00413BF8 15010009 */  bne         $t0, $at, .L00413C20
/* 013BFC 00413BFC 00000000 */   nop
/* 013C00 00413C00 8F998018 */  lw          $t9, %got(func_004127B4)($gp)
/* 013C04 00413C04 8F84802C */  lw          $a0, %got(STR_1001143C)($gp)
/* 013C08 00413C08 273927B4 */  addiu       $t9, $t9, %lo(func_004127B4)
/* 013C0C 00413C0C 0320F809 */  jalr        $t9
/* 013C10 00413C10 2484143C */   addiu      $a0, $a0, %lo(STR_1001143C)
/* 013C14 00413C14 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013C18 00413C18 100001C4 */  b           .L0041432C
/* 013C1C 00413C1C 24020001 */   addiu      $v0, $zero, 0x1
.L00413C20:
/* 013C20 00413C20 8F8A8030 */  lw          $t2, %got(B_10019FD0)($gp)
/* 013C24 00413C24 8E090000 */  lw          $t1, 0x0($s0)
/* 013C28 00413C28 8D4A9FD0 */  lw          $t2, %lo(B_10019FD0)($t2)
/* 013C2C 00413C2C AD490028 */  sw          $t1, 0x28($t2)
/* 013C30 00413C30 100001BA */  b           .L0041431C
/* 013C34 00413C34 00000000 */   nop
.L00413C38:
/* 013C38 00413C38 8F998018 */  lw          $t9, %got(func_0041285C)($gp)
/* 013C3C 00413C3C 8E040000 */  lw          $a0, 0x0($s0)
/* 013C40 00413C40 27A50064 */  addiu       $a1, $sp, 0x64
/* 013C44 00413C44 2739285C */  addiu       $t9, $t9, %lo(func_0041285C)
/* 013C48 00413C48 0320F809 */  jalr        $t9
/* 013C4C 00413C4C 00000000 */   nop
/* 013C50 00413C50 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013C54 00413C54 8F998064 */  lw          $t9, %call16(malloc)($gp)
/* 013C58 00413C58 24040048 */  addiu       $a0, $zero, 0x48
/* 013C5C 00413C5C 0320F809 */  jalr        $t9
/* 013C60 00413C60 00000000 */   nop
/* 013C64 00413C64 AFA20164 */  sw          $v0, 0x164($sp)
/* 013C68 00413C68 8FAB0164 */  lw          $t3, 0x164($sp)
/* 013C6C 00413C6C 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013C70 00413C70 1160000A */  beqz        $t3, .L00413C9C
/* 013C74 00413C74 00000000 */   nop
/* 013C78 00413C78 8F998114 */  lw          $t9, %call16(strdup)($gp)
/* 013C7C 00413C7C 27A40064 */  addiu       $a0, $sp, 0x64
/* 013C80 00413C80 0320F809 */  jalr        $t9
/* 013C84 00413C84 00000000 */   nop
/* 013C88 00413C88 8FAF0164 */  lw          $t7, 0x164($sp)
/* 013C8C 00413C8C 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013C90 00413C90 0040B825 */  move        $s7, $v0
/* 013C94 00413C94 16E0000D */  bnez        $s7, .L00413CCC
/* 013C98 00413C98 ADF70004 */   sw         $s7, 0x4($t7)
.L00413C9C:
/* 013C9C 00413C9C 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 013CA0 00413CA0 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 013CA4 00413CA4 8F85802C */  lw          $a1, %got(STR_10011464)($gp)
/* 013CA8 00413CA8 24840020 */  addiu       $a0, $a0, 0x20
/* 013CAC 00413CAC 0320F809 */  jalr        $t9
/* 013CB0 00413CB0 24A51464 */   addiu      $a1, $a1, %lo(STR_10011464)
/* 013CB4 00413CB4 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013CB8 00413CB8 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 013CBC 00413CBC 24040001 */  addiu       $a0, $zero, 0x1
/* 013CC0 00413CC0 0320F809 */  jalr        $t9
/* 013CC4 00413CC4 00000000 */   nop
/* 013CC8 00413CC8 8FBC0038 */  lw          $gp, 0x38($sp)
.L00413CCC:
/* 013CCC 00413CCC 8FAC0164 */  lw          $t4, 0x164($sp)
/* 013CD0 00413CD0 AD800000 */  sw          $zero, 0x0($t4)
/* 013CD4 00413CD4 8FAE0164 */  lw          $t6, 0x164($sp)
/* 013CD8 00413CD8 ADC00044 */  sw          $zero, 0x44($t6)
/* 013CDC 00413CDC 8F998030 */  lw          $t9, %got(B_10019FD0)($gp)
/* 013CE0 00413CE0 8F399FD0 */  lw          $t9, %lo(B_10019FD0)($t9)
/* 013CE4 00413CE4 8F2D0008 */  lw          $t5, 0x8($t9)
/* 013CE8 00413CE8 15A00006 */  bnez        $t5, .L00413D04
/* 013CEC 00413CEC 00000000 */   nop
/* 013CF0 00413CF0 8F888030 */  lw          $t0, %got(B_10019FD0)($gp)
/* 013CF4 00413CF4 8FB80164 */  lw          $t8, 0x164($sp)
/* 013CF8 00413CF8 8D089FD0 */  lw          $t0, %lo(B_10019FD0)($t0)
/* 013CFC 00413CFC 10000005 */  b           .L00413D14
/* 013D00 00413D00 AD180008 */   sw         $t8, 0x8($t0)
.L00413D04:
/* 013D04 00413D04 8F8A8030 */  lw          $t2, %got(B_10019FE0)($gp)
/* 013D08 00413D08 8FA90164 */  lw          $t1, 0x164($sp)
/* 013D0C 00413D0C 8D4A9FE0 */  lw          $t2, %lo(B_10019FE0)($t2)
/* 013D10 00413D10 AD490000 */  sw          $t1, 0x0($t2)
.L00413D14:
/* 013D14 00413D14 8FAB0164 */  lw          $t3, 0x164($sp)
/* 013D18 00413D18 8F818030 */  lw          $at, %got(B_10019FE0)($gp)
/* 013D1C 00413D1C AC2B9FE0 */  sw          $t3, %lo(B_10019FE0)($at)
/* 013D20 00413D20 1000017E */  b           .L0041431C
/* 013D24 00413D24 00000000 */   nop
.L00413D28:
/* 013D28 00413D28 8F8F8030 */  lw          $t7, %got(B_10019FD0)($gp)
/* 013D2C 00413D2C 3C017FFF */  lui         $at, (0x7FFFFFFF >> 16)
/* 013D30 00413D30 3421FFFF */  ori         $at, $at, (0x7FFFFFFF & 0xFFFF)
/* 013D34 00413D34 8DEF9FD0 */  lw          $t7, %lo(B_10019FD0)($t7)
/* 013D38 00413D38 8DEC0044 */  lw          $t4, 0x44($t7)
/* 013D3C 00413D3C 11810009 */  beq         $t4, $at, .L00413D64
/* 013D40 00413D40 00000000 */   nop
/* 013D44 00413D44 8F998018 */  lw          $t9, %got(func_004127B4)($gp)
/* 013D48 00413D48 8F84802C */  lw          $a0, %got(STR_1001147C)($gp)
/* 013D4C 00413D4C 273927B4 */  addiu       $t9, $t9, %lo(func_004127B4)
/* 013D50 00413D50 0320F809 */  jalr        $t9
/* 013D54 00413D54 2484147C */   addiu      $a0, $a0, %lo(STR_1001147C)
/* 013D58 00413D58 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013D5C 00413D5C 10000173 */  b           .L0041432C
/* 013D60 00413D60 24020001 */   addiu      $v0, $zero, 0x1
.L00413D64:
/* 013D64 00413D64 8E0E0000 */  lw          $t6, 0x0($s0)
/* 013D68 00413D68 31D9000F */  andi        $t9, $t6, 0xF
/* 013D6C 00413D6C 1320000A */  beqz        $t9, .L00413D98
/* 013D70 00413D70 00000000 */   nop
/* 013D74 00413D74 8F998018 */  lw          $t9, %got(func_004127B4)($gp)
/* 013D78 00413D78 8F84802C */  lw          $a0, %got(STR_100114A0)($gp)
/* 013D7C 00413D7C 8E050000 */  lw          $a1, 0x0($s0)
/* 013D80 00413D80 273927B4 */  addiu       $t9, $t9, %lo(func_004127B4)
/* 013D84 00413D84 0320F809 */  jalr        $t9
/* 013D88 00413D88 248414A0 */   addiu      $a0, $a0, %lo(STR_100114A0)
/* 013D8C 00413D8C 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013D90 00413D90 10000166 */  b           .L0041432C
/* 013D94 00413D94 24020001 */   addiu      $v0, $zero, 0x1
.L00413D98:
/* 013D98 00413D98 8F988030 */  lw          $t8, %got(B_10019FD0)($gp)
/* 013D9C 00413D9C 8E0D0000 */  lw          $t5, 0x0($s0)
/* 013DA0 00413DA0 8F189FD0 */  lw          $t8, %lo(B_10019FD0)($t8)
/* 013DA4 00413DA4 AF0D0044 */  sw          $t5, 0x44($t8)
/* 013DA8 00413DA8 1000015C */  b           .L0041431C
/* 013DAC 00413DAC 00000000 */   nop
.L00413DB0:
/* 013DB0 00413DB0 8F88802C */  lw          $t0, %got(D_10015184)($gp)
/* 013DB4 00413DB4 8D085184 */  lw          $t0, %lo(D_10015184)($t0)
/* 013DB8 00413DB8 11000009 */  beqz        $t0, .L00413DE0
/* 013DBC 00413DBC 00000000 */   nop
/* 013DC0 00413DC0 8F998018 */  lw          $t9, %got(func_004127B4)($gp)
/* 013DC4 00413DC4 8F84802C */  lw          $a0, %got(STR_100114D8)($gp)
/* 013DC8 00413DC8 273927B4 */  addiu       $t9, $t9, %lo(func_004127B4)
/* 013DCC 00413DCC 0320F809 */  jalr        $t9
/* 013DD0 00413DD0 248414D8 */   addiu      $a0, $a0, %lo(STR_100114D8)
/* 013DD4 00413DD4 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013DD8 00413DD8 10000154 */  b           .L0041432C
/* 013DDC 00413DDC 24020001 */   addiu      $v0, $zero, 0x1
.L00413DE0:
/* 013DE0 00413DE0 8F81802C */  lw          $at, %got(D_10015184)($gp)
/* 013DE4 00413DE4 24090001 */  addiu       $t1, $zero, 0x1
/* 013DE8 00413DE8 AC295184 */  sw          $t1, %lo(D_10015184)($at)
/* 013DEC 00413DEC 1000014B */  b           .L0041431C
/* 013DF0 00413DF0 00000000 */   nop
.L00413DF4:
/* 013DF4 00413DF4 8F8B8030 */  lw          $t3, %got(B_10019FD0)($gp)
/* 013DF8 00413DF8 240A0001 */  addiu       $t2, $zero, 0x1
/* 013DFC 00413DFC 8D6B9FD0 */  lw          $t3, %lo(B_10019FD0)($t3)
/* 013E00 00413E00 AD6A0014 */  sw          $t2, 0x14($t3)
/* 013E04 00413E04 8F8F8654 */  lw          $t7, %got(segmentList)($gp)
/* 013E08 00413E08 8DEF0000 */  lw          $t7, 0x0($t7)
/* 013E0C 00413E0C 11E0000E */  beqz        $t7, .L00413E48
/* 013E10 00413E10 AFAF0060 */   sw         $t7, 0x60($sp)
.L00413E14:
/* 013E14 00413E14 8F9980A8 */  lw          $t9, %call16(strcmp)($gp)
/* 013E18 00413E18 8FAC0060 */  lw          $t4, 0x60($sp)
/* 013E1C 00413E1C 8E050000 */  lw          $a1, 0x0($s0)
/* 013E20 00413E20 0320F809 */  jalr        $t9
/* 013E24 00413E24 8D840004 */   lw         $a0, 0x4($t4)
/* 013E28 00413E28 14400003 */  bnez        $v0, .L00413E38
/* 013E2C 00413E2C 8FBC0038 */   lw         $gp, 0x38($sp)
/* 013E30 00413E30 10000005 */  b           .L00413E48
/* 013E34 00413E34 00000000 */   nop
.L00413E38:
/* 013E38 00413E38 8FAE0060 */  lw          $t6, 0x60($sp)
/* 013E3C 00413E3C 8DD90000 */  lw          $t9, 0x0($t6)
/* 013E40 00413E40 1720FFF4 */  bnez        $t9, .L00413E14
/* 013E44 00413E44 AFB90060 */   sw         $t9, 0x60($sp)
.L00413E48:
/* 013E48 00413E48 8FAD0060 */  lw          $t5, 0x60($sp)
/* 013E4C 00413E4C 15A0000A */  bnez        $t5, .L00413E78
/* 013E50 00413E50 00000000 */   nop
/* 013E54 00413E54 8F998018 */  lw          $t9, %got(func_004127B4)($gp)
/* 013E58 00413E58 8F84802C */  lw          $a0, %got(STR_100114E8)($gp)
/* 013E5C 00413E5C 8E050000 */  lw          $a1, 0x0($s0)
/* 013E60 00413E60 273927B4 */  addiu       $t9, $t9, %lo(func_004127B4)
/* 013E64 00413E64 0320F809 */  jalr        $t9
/* 013E68 00413E68 248414E8 */   addiu      $a0, $a0, %lo(STR_100114E8)
/* 013E6C 00413E6C 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013E70 00413E70 1000012E */  b           .L0041432C
/* 013E74 00413E74 24020001 */   addiu      $v0, $zero, 0x1
.L00413E78:
/* 013E78 00413E78 8F888030 */  lw          $t0, %got(B_10019FD0)($gp)
/* 013E7C 00413E7C 8FB80060 */  lw          $t8, 0x60($sp)
/* 013E80 00413E80 8F898030 */  lw          $t1, %got(B_10019FD0)($gp)
/* 013E84 00413E84 8D089FD0 */  lw          $t0, %lo(B_10019FD0)($t0)
/* 013E88 00413E88 AD18001C */  sw          $t8, 0x1C($t0)
/* 013E8C 00413E8C 8D299FD0 */  lw          $t1, %lo(B_10019FD0)($t1)
/* 013E90 00413E90 8D2A001C */  lw          $t2, 0x1C($t1)
/* 013E94 00413E94 AD2A0018 */  sw          $t2, 0x18($t1)
/* 013E98 00413E98 10000120 */  b           .L0041431C
/* 013E9C 00413E9C 00000000 */   nop
.L00413EA0:
/* 013EA0 00413EA0 8F8B8654 */  lw          $t3, %got(segmentList)($gp)
/* 013EA4 00413EA4 8D6B0000 */  lw          $t3, 0x0($t3)
/* 013EA8 00413EA8 1160000E */  beqz        $t3, .L00413EE4
/* 013EAC 00413EAC AFAB0058 */   sw         $t3, 0x58($sp)
.L00413EB0:
/* 013EB0 00413EB0 8F9980A8 */  lw          $t9, %call16(strcmp)($gp)
/* 013EB4 00413EB4 8FAF0058 */  lw          $t7, 0x58($sp)
/* 013EB8 00413EB8 8E05FFF4 */  lw          $a1, -0xC($s0)
/* 013EBC 00413EBC 0320F809 */  jalr        $t9
/* 013EC0 00413EC0 8DE40004 */   lw         $a0, 0x4($t7)
/* 013EC4 00413EC4 14400003 */  bnez        $v0, .L00413ED4
/* 013EC8 00413EC8 8FBC0038 */   lw         $gp, 0x38($sp)
/* 013ECC 00413ECC 10000005 */  b           .L00413EE4
/* 013ED0 00413ED0 00000000 */   nop
.L00413ED4:
/* 013ED4 00413ED4 8FAC0058 */  lw          $t4, 0x58($sp)
/* 013ED8 00413ED8 8D8E0000 */  lw          $t6, 0x0($t4)
/* 013EDC 00413EDC 15C0FFF4 */  bnez        $t6, .L00413EB0
/* 013EE0 00413EE0 AFAE0058 */   sw         $t6, 0x58($sp)
.L00413EE4:
/* 013EE4 00413EE4 8FB90058 */  lw          $t9, 0x58($sp)
/* 013EE8 00413EE8 1720000A */  bnez        $t9, .L00413F14
/* 013EEC 00413EEC 00000000 */   nop
/* 013EF0 00413EF0 8F998018 */  lw          $t9, %got(func_004127B4)($gp)
/* 013EF4 00413EF4 8F84802C */  lw          $a0, %got(STR_10011508)($gp)
/* 013EF8 00413EF8 8E05FFF4 */  lw          $a1, -0xC($s0)
/* 013EFC 00413EFC 273927B4 */  addiu       $t9, $t9, %lo(func_004127B4)
/* 013F00 00413F00 0320F809 */  jalr        $t9
/* 013F04 00413F04 24841508 */   addiu      $a0, $a0, %lo(STR_10011508)
/* 013F08 00413F08 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013F0C 00413F0C 10000107 */  b           .L0041432C
/* 013F10 00413F10 24020001 */   addiu      $v0, $zero, 0x1
.L00413F14:
/* 013F14 00413F14 8F988030 */  lw          $t8, %got(B_10019FD0)($gp)
/* 013F18 00413F18 8FAD0058 */  lw          $t5, 0x58($sp)
/* 013F1C 00413F1C 8F189FD0 */  lw          $t8, %lo(B_10019FD0)($t8)
/* 013F20 00413F20 AF0D0018 */  sw          $t5, 0x18($t8)
/* 013F24 00413F24 8F888654 */  lw          $t0, %got(segmentList)($gp)
/* 013F28 00413F28 8D080000 */  lw          $t0, 0x0($t0)
/* 013F2C 00413F2C 1100000E */  beqz        $t0, .L00413F68
/* 013F30 00413F30 AFA80058 */   sw         $t0, 0x58($sp)
.L00413F34:
/* 013F34 00413F34 8F9980A8 */  lw          $t9, %call16(strcmp)($gp)
/* 013F38 00413F38 8FAA0058 */  lw          $t2, 0x58($sp)
/* 013F3C 00413F3C 8E05FFFC */  lw          $a1, -0x4($s0)
/* 013F40 00413F40 0320F809 */  jalr        $t9
/* 013F44 00413F44 8D440004 */   lw         $a0, 0x4($t2)
/* 013F48 00413F48 14400003 */  bnez        $v0, .L00413F58
/* 013F4C 00413F4C 8FBC0038 */   lw         $gp, 0x38($sp)
/* 013F50 00413F50 10000005 */  b           .L00413F68
/* 013F54 00413F54 00000000 */   nop
.L00413F58:
/* 013F58 00413F58 8FA90058 */  lw          $t1, 0x58($sp)
/* 013F5C 00413F5C 8D2B0000 */  lw          $t3, 0x0($t1)
/* 013F60 00413F60 1560FFF4 */  bnez        $t3, .L00413F34
/* 013F64 00413F64 AFAB0058 */   sw         $t3, 0x58($sp)
.L00413F68:
/* 013F68 00413F68 8FAF0058 */  lw          $t7, 0x58($sp)
/* 013F6C 00413F6C 15E0000A */  bnez        $t7, .L00413F98
/* 013F70 00413F70 00000000 */   nop
/* 013F74 00413F74 8F998018 */  lw          $t9, %got(func_004127B4)($gp)
/* 013F78 00413F78 8F84802C */  lw          $a0, %got(STR_10011528)($gp)
/* 013F7C 00413F7C 8E05FFFC */  lw          $a1, -0x4($s0)
/* 013F80 00413F80 273927B4 */  addiu       $t9, $t9, %lo(func_004127B4)
/* 013F84 00413F84 0320F809 */  jalr        $t9
/* 013F88 00413F88 24841528 */   addiu      $a0, $a0, %lo(STR_10011528)
/* 013F8C 00413F8C 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013F90 00413F90 100000E6 */  b           .L0041432C
/* 013F94 00413F94 24020001 */   addiu      $v0, $zero, 0x1
.L00413F98:
/* 013F98 00413F98 8F8E8030 */  lw          $t6, %got(B_10019FD0)($gp)
/* 013F9C 00413F9C 8FAC0058 */  lw          $t4, 0x58($sp)
/* 013FA0 00413FA0 8DCE9FD0 */  lw          $t6, %lo(B_10019FD0)($t6)
/* 013FA4 00413FA4 ADCC001C */  sw          $t4, 0x1C($t6)
/* 013FA8 00413FA8 100000DC */  b           .L0041431C
/* 013FAC 00413FAC 00000000 */   nop
.L00413FB0:
/* 013FB0 00413FB0 8F8D8030 */  lw          $t5, %got(B_10019FD0)($gp)
/* 013FB4 00413FB4 24190002 */  addiu       $t9, $zero, 0x2
/* 013FB8 00413FB8 8DAD9FD0 */  lw          $t5, %lo(B_10019FD0)($t5)
/* 013FBC 00413FBC ADB90014 */  sw          $t9, 0x14($t5)
/* 013FC0 00413FC0 100000D6 */  b           .L0041431C
/* 013FC4 00413FC4 00000000 */   nop
.L00413FC8:
/* 013FC8 00413FC8 8F888030 */  lw          $t0, %got(B_10019FD0)($gp)
/* 013FCC 00413FCC 24180003 */  addiu       $t8, $zero, 0x3
/* 013FD0 00413FD0 8D089FD0 */  lw          $t0, %lo(B_10019FD0)($t0)
/* 013FD4 00413FD4 AD180014 */  sw          $t8, 0x14($t0)
/* 013FD8 00413FD8 100000D0 */  b           .L0041431C
/* 013FDC 00413FDC 00000000 */   nop
.L00413FE0:
/* 013FE0 00413FE0 8E0A0000 */  lw          $t2, 0x0($s0)
/* 013FE4 00413FE4 8F81879C */  lw          $at, %got(yyval)($gp)
/* 013FE8 00413FE8 AC2A0000 */  sw          $t2, 0x0($at)
/* 013FEC 00413FEC 100000CB */  b           .L0041431C
/* 013FF0 00413FF0 00000000 */   nop
.L00413FF4:
/* 013FF4 00413FF4 8E090000 */  lw          $t1, 0x0($s0)
/* 013FF8 00413FF8 8E0BFFFC */  lw          $t3, -0x4($s0)
/* 013FFC 00413FFC 8F81879C */  lw          $at, %got(yyval)($gp)
/* 014000 00414000 012B7825 */  or          $t7, $t1, $t3
/* 014004 00414004 AC2F0000 */  sw          $t7, 0x0($at)
/* 014008 00414008 100000C4 */  b           .L0041431C
/* 01400C 0041400C 00000000 */   nop
.L00414010:
/* 014010 00414010 8F81879C */  lw          $at, %got(yyval)($gp)
/* 014014 00414014 240C0001 */  addiu       $t4, $zero, 0x1
/* 014018 00414018 AC2C0000 */  sw          $t4, 0x0($at)
/* 01401C 0041401C 100000BF */  b           .L0041431C
/* 014020 00414020 00000000 */   nop
.L00414024:
/* 014024 00414024 8F81879C */  lw          $at, %got(yyval)($gp)
/* 014028 00414028 240E0002 */  addiu       $t6, $zero, 0x2
/* 01402C 0041402C AC2E0000 */  sw          $t6, 0x0($at)
/* 014030 00414030 100000BA */  b           .L0041431C
/* 014034 00414034 00000000 */   nop
.L00414038:
/* 014038 00414038 8F81879C */  lw          $at, %got(yyval)($gp)
/* 01403C 0041403C 24190004 */  addiu       $t9, $zero, 0x4
/* 014040 00414040 AC390000 */  sw          $t9, 0x0($at)
/* 014044 00414044 100000B5 */  b           .L0041431C
/* 014048 00414048 00000000 */   nop
.L0041404C:
/* 01404C 0041404C 8F818710 */  lw          $at, %got(bootStackName)($gp)
/* 014050 00414050 AC200000 */  sw          $zero, 0x0($at)
/* 014054 00414054 8E0D0000 */  lw          $t5, 0x0($s0)
/* 014058 00414058 8F818714 */  lw          $at, %got(bootStackOffset)($gp)
/* 01405C 0041405C AC2D0000 */  sw          $t5, 0x0($at)
/* 014060 00414060 100000AE */  b           .L0041431C
/* 014064 00414064 00000000 */   nop
.L00414068:
/* 014068 00414068 8E180000 */  lw          $t8, 0x0($s0)
/* 01406C 0041406C 8F818710 */  lw          $at, %got(bootStackName)($gp)
/* 014070 00414070 AC380000 */  sw          $t8, 0x0($at)
/* 014074 00414074 8F818714 */  lw          $at, %got(bootStackOffset)($gp)
/* 014078 00414078 AC200000 */  sw          $zero, 0x0($at)
/* 01407C 0041407C 100000A7 */  b           .L0041431C
/* 014080 00414080 00000000 */   nop
.L00414084:
/* 014084 00414084 8E08FFF8 */  lw          $t0, -0x8($s0)
/* 014088 00414088 8F818710 */  lw          $at, %got(bootStackName)($gp)
/* 01408C 0041408C AC280000 */  sw          $t0, 0x0($at)
/* 014090 00414090 8E0A0000 */  lw          $t2, 0x0($s0)
/* 014094 00414094 8F818714 */  lw          $at, %got(bootStackOffset)($gp)
/* 014098 00414098 AC2A0000 */  sw          $t2, 0x0($at)
/* 01409C 0041409C 1000009F */  b           .L0041431C
/* 0140A0 004140A0 00000000 */   nop
.L004140A4:
/* 0140A4 004140A4 8F898030 */  lw          $t1, %got(B_10019FD8)($gp)
/* 0140A8 004140A8 8F818030 */  lw          $at, %got(B_10019FD4)($gp)
/* 0140AC 004140AC 8D299FD8 */  lw          $t1, %lo(B_10019FD8)($t1)
/* 0140B0 004140B0 AC299FD4 */  sw          $t1, %lo(B_10019FD4)($at)
/* 0140B4 004140B4 10000099 */  b           .L0041431C
/* 0140B8 004140B8 00000000 */   nop
.L004140BC:
/* 0140BC 004140BC 8F998064 */  lw          $t9, %call16(malloc)($gp)
/* 0140C0 004140C0 24040118 */  addiu       $a0, $zero, 0x118
/* 0140C4 004140C4 0320F809 */  jalr        $t9
/* 0140C8 004140C8 00000000 */   nop
/* 0140CC 004140CC 8FBC0038 */  lw          $gp, 0x38($sp)
/* 0140D0 004140D0 8F818030 */  lw          $at, %got(B_10019FD8)($gp)
/* 0140D4 004140D4 8F8B8030 */  lw          $t3, %got(B_10019FD8)($gp)
/* 0140D8 004140D8 AC229FD8 */  sw          $v0, %lo(B_10019FD8)($at)
/* 0140DC 004140DC 8D6B9FD8 */  lw          $t3, %lo(B_10019FD8)($t3)
/* 0140E0 004140E0 1560000D */  bnez        $t3, .L00414118
/* 0140E4 004140E4 00000000 */   nop
/* 0140E8 004140E8 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 0140EC 004140EC 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 0140F0 004140F0 8F85802C */  lw          $a1, %got(STR_10011548)($gp)
/* 0140F4 004140F4 24840020 */  addiu       $a0, $a0, 0x20
/* 0140F8 004140F8 0320F809 */  jalr        $t9
/* 0140FC 004140FC 24A51548 */   addiu      $a1, $a1, %lo(STR_10011548)
/* 014100 00414100 8FBC0038 */  lw          $gp, 0x38($sp)
/* 014104 00414104 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 014108 00414108 24040001 */  addiu       $a0, $zero, 0x1
/* 01410C 0041410C 0320F809 */  jalr        $t9
/* 014110 00414110 00000000 */   nop
/* 014114 00414114 8FBC0038 */  lw          $gp, 0x38($sp)
.L00414118:
/* 014118 00414118 8F8F8030 */  lw          $t7, %got(B_10019FD8)($gp)
/* 01411C 0041411C 8DEF9FD8 */  lw          $t7, %lo(B_10019FD8)($t7)
/* 014120 00414120 ADE00000 */  sw          $zero, 0x0($t7)
/* 014124 00414124 8F8C8030 */  lw          $t4, %got(B_10019FD8)($gp)
/* 014128 00414128 8D8C9FD8 */  lw          $t4, %lo(B_10019FD8)($t4)
/* 01412C 0041412C AD800008 */  sw          $zero, 0x8($t4)
/* 014130 00414130 8F8E8030 */  lw          $t6, %got(B_10019FD8)($gp)
/* 014134 00414134 8DCE9FD8 */  lw          $t6, %lo(B_10019FD8)($t6)
/* 014138 00414138 ADC0000C */  sw          $zero, 0xC($t6)
/* 01413C 0041413C 8F998658 */  lw          $t9, %got(waveList)($gp)
/* 014140 00414140 8F390000 */  lw          $t9, 0x0($t9)
/* 014144 00414144 17200006 */  bnez        $t9, .L00414160
/* 014148 00414148 00000000 */   nop
/* 01414C 0041414C 8F8D8030 */  lw          $t5, %got(B_10019FD8)($gp)
/* 014150 00414150 8F818658 */  lw          $at, %got(waveList)($gp)
/* 014154 00414154 8DAD9FD8 */  lw          $t5, %lo(B_10019FD8)($t5)
/* 014158 00414158 10000006 */  b           .L00414174
/* 01415C 0041415C AC2D0000 */   sw         $t5, 0x0($at)
.L00414160:
/* 014160 00414160 8F988030 */  lw          $t8, %got(B_10019FD8)($gp)
/* 014164 00414164 8F888030 */  lw          $t0, %got(B_10019FD4)($gp)
/* 014168 00414168 8F189FD8 */  lw          $t8, %lo(B_10019FD8)($t8)
/* 01416C 0041416C 8D089FD4 */  lw          $t0, %lo(B_10019FD4)($t0)
/* 014170 00414170 AD180000 */  sw          $t8, 0x0($t0)
.L00414174:
/* 014174 00414174 10000069 */  b           .L0041431C
/* 014178 00414178 00000000 */   nop
.L0041417C:
/* 01417C 0041417C 8F998114 */  lw          $t9, %call16(strdup)($gp)
/* 014180 00414180 8E040000 */  lw          $a0, 0x0($s0)
/* 014184 00414184 0320F809 */  jalr        $t9
/* 014188 00414188 00000000 */   nop
/* 01418C 0041418C 8FBC0038 */  lw          $gp, 0x38($sp)
/* 014190 00414190 0040B825 */  move        $s7, $v0
/* 014194 00414194 8F8A8030 */  lw          $t2, %got(B_10019FD8)($gp)
/* 014198 00414198 8D4A9FD8 */  lw          $t2, %lo(B_10019FD8)($t2)
/* 01419C 0041419C 16E0000D */  bnez        $s7, .L004141D4
/* 0141A0 004141A0 AD570004 */   sw         $s7, 0x4($t2)
/* 0141A4 004141A4 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 0141A8 004141A8 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 0141AC 004141AC 8F85802C */  lw          $a1, %got(STR_10011560)($gp)
/* 0141B0 004141B0 24840020 */  addiu       $a0, $a0, 0x20
/* 0141B4 004141B4 0320F809 */  jalr        $t9
/* 0141B8 004141B8 24A51560 */   addiu      $a1, $a1, %lo(STR_10011560)
/* 0141BC 004141BC 8FBC0038 */  lw          $gp, 0x38($sp)
/* 0141C0 004141C0 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 0141C4 004141C4 24040001 */  addiu       $a0, $zero, 0x1
/* 0141C8 004141C8 0320F809 */  jalr        $t9
/* 0141CC 004141CC 00000000 */   nop
/* 0141D0 004141D0 8FBC0038 */  lw          $gp, 0x38($sp)
.L004141D4:
/* 0141D4 004141D4 10000051 */  b           .L0041431C
/* 0141D8 004141D8 00000000 */   nop
.L004141DC:
/* 0141DC 004141DC 8F898654 */  lw          $t1, %got(segmentList)($gp)
/* 0141E0 004141E0 8D290000 */  lw          $t1, 0x0($t1)
/* 0141E4 004141E4 1120000E */  beqz        $t1, .L00414220
/* 0141E8 004141E8 AFA90050 */   sw         $t1, 0x50($sp)
.L004141EC:
/* 0141EC 004141EC 8F9980A8 */  lw          $t9, %call16(strcmp)($gp)
/* 0141F0 004141F0 8FAB0050 */  lw          $t3, 0x50($sp)
/* 0141F4 004141F4 8E050000 */  lw          $a1, 0x0($s0)
/* 0141F8 004141F8 0320F809 */  jalr        $t9
/* 0141FC 004141FC 8D640004 */   lw         $a0, 0x4($t3)
/* 014200 00414200 14400003 */  bnez        $v0, .L00414210
/* 014204 00414204 8FBC0038 */   lw         $gp, 0x38($sp)
/* 014208 00414208 10000005 */  b           .L00414220
/* 01420C 0041420C 00000000 */   nop
.L00414210:
/* 014210 00414210 8FAF0050 */  lw          $t7, 0x50($sp)
/* 014214 00414214 8DEC0000 */  lw          $t4, 0x0($t7)
/* 014218 00414218 1580FFF4 */  bnez        $t4, .L004141EC
/* 01421C 0041421C AFAC0050 */   sw         $t4, 0x50($sp)
.L00414220:
/* 014220 00414220 8FAE0050 */  lw          $t6, 0x50($sp)
/* 014224 00414224 15C0000C */  bnez        $t6, .L00414258
/* 014228 00414228 00000000 */   nop
/* 01422C 0041422C 8F998018 */  lw          $t9, %got(func_004127B4)($gp)
/* 014230 00414230 8F84802C */  lw          $a0, %got(STR_10011578)($gp)
/* 014234 00414234 8E050000 */  lw          $a1, 0x0($s0)
/* 014238 00414238 273927B4 */  addiu       $t9, $t9, %lo(func_004127B4)
/* 01423C 0041423C 0320F809 */  jalr        $t9
/* 014240 00414240 24841578 */   addiu      $a0, $a0, %lo(STR_10011578)
/* 014244 00414244 8FBC0038 */  lw          $gp, 0x38($sp)
/* 014248 00414248 10000038 */  b           .L0041432C
/* 01424C 0041424C 24020001 */   addiu      $v0, $zero, 0x1
/* 014250 00414250 10000030 */  b           .L00414314
/* 014254 00414254 00000000 */   nop
.L00414258:
/* 014258 00414258 8F998064 */  lw          $t9, %call16(malloc)($gp)
/* 01425C 0041425C 24040008 */  addiu       $a0, $zero, 0x8
/* 014260 00414260 0320F809 */  jalr        $t9
/* 014264 00414264 00000000 */   nop
/* 014268 00414268 AFA2004C */  sw          $v0, 0x4C($sp)
/* 01426C 0041426C 8FB9004C */  lw          $t9, 0x4C($sp)
/* 014270 00414270 8FBC0038 */  lw          $gp, 0x38($sp)
/* 014274 00414274 1720000D */  bnez        $t9, .L004142AC
/* 014278 00414278 00000000 */   nop
/* 01427C 0041427C 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 014280 00414280 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 014284 00414284 8F85802C */  lw          $a1, %got(STR_10011590)($gp)
/* 014288 00414288 24840020 */  addiu       $a0, $a0, 0x20
/* 01428C 0041428C 0320F809 */  jalr        $t9
/* 014290 00414290 24A51590 */   addiu      $a1, $a1, %lo(STR_10011590)
/* 014294 00414294 8FBC0038 */  lw          $gp, 0x38($sp)
/* 014298 00414298 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 01429C 0041429C 24040001 */  addiu       $a0, $zero, 0x1
/* 0142A0 004142A0 0320F809 */  jalr        $t9
/* 0142A4 004142A4 00000000 */   nop
/* 0142A8 004142A8 8FBC0038 */  lw          $gp, 0x38($sp)
.L004142AC:
/* 0142AC 004142AC 8F8D8030 */  lw          $t5, %got(B_10019FD8)($gp)
/* 0142B0 004142B0 8FB80050 */  lw          $t8, 0x50($sp)
/* 0142B4 004142B4 8DAD9FD8 */  lw          $t5, %lo(B_10019FD8)($t5)
/* 0142B8 004142B8 AF0D000C */  sw          $t5, 0xC($t8)
/* 0142BC 004142BC 8FA80050 */  lw          $t0, 0x50($sp)
/* 0142C0 004142C0 8FAA004C */  lw          $t2, 0x4C($sp)
/* 0142C4 004142C4 AD480004 */  sw          $t0, 0x4($t2)
/* 0142C8 004142C8 8FA9004C */  lw          $t1, 0x4C($sp)
/* 0142CC 004142CC AD200000 */  sw          $zero, 0x0($t1)
/* 0142D0 004142D0 8F8B8030 */  lw          $t3, %got(B_10019FD8)($gp)
/* 0142D4 004142D4 8D6B9FD8 */  lw          $t3, %lo(B_10019FD8)($t3)
/* 0142D8 004142D8 8D6F0008 */  lw          $t7, 0x8($t3)
/* 0142DC 004142DC 15E00006 */  bnez        $t7, .L004142F8
/* 0142E0 004142E0 00000000 */   nop
/* 0142E4 004142E4 8F8E8030 */  lw          $t6, %got(B_10019FD8)($gp)
/* 0142E8 004142E8 8FAC004C */  lw          $t4, 0x4C($sp)
/* 0142EC 004142EC 8DCE9FD8 */  lw          $t6, %lo(B_10019FD8)($t6)
/* 0142F0 004142F0 10000005 */  b           .L00414308
/* 0142F4 004142F4 ADCC0008 */   sw         $t4, 0x8($t6)
.L004142F8:
/* 0142F8 004142F8 8F8D8030 */  lw          $t5, %got(B_10019FDC)($gp)
/* 0142FC 004142FC 8FB9004C */  lw          $t9, 0x4C($sp)
/* 014300 00414300 8DAD9FDC */  lw          $t5, %lo(B_10019FDC)($t5)
/* 014304 00414304 ADB90000 */  sw          $t9, 0x0($t5)
.L00414308:
/* 014308 00414308 8FB8004C */  lw          $t8, 0x4C($sp)
/* 01430C 0041430C 8F818030 */  lw          $at, %got(B_10019FDC)($gp)
/* 014310 00414310 AC389FDC */  sw          $t8, %lo(B_10019FDC)($at)
.L00414314:
/* 014314 00414314 10000001 */  b           .L0041431C
/* 014318 00414318 00000000 */   nop
.L0041431C:
/* 01431C 0041431C 1000F9D2 */  b           .L00412A68
/* 014320 00414320 00000000 */   nop
/* 014324 00414324 10000001 */  b           .L0041432C
/* 014328 00414328 00000000 */   nop
.L0041432C:
/* 01432C 0041432C 8FBF003C */  lw          $ra, 0x3C($sp)
/* 014330 00414330 8FB00018 */  lw          $s0, 0x18($sp)
/* 014334 00414334 8FB1001C */  lw          $s1, 0x1C($sp)
/* 014338 00414338 8FB20020 */  lw          $s2, 0x20($sp)
/* 01433C 0041433C 8FB30024 */  lw          $s3, 0x24($sp)
/* 014340 00414340 8FB40028 */  lw          $s4, 0x28($sp)
/* 014344 00414344 8FB5002C */  lw          $s5, 0x2C($sp)
/* 014348 00414348 8FB60030 */  lw          $s6, 0x30($sp)
/* 01434C 0041434C 8FB70034 */  lw          $s7, 0x34($sp)
/* 014350 00414350 03E00008 */  jr          $ra
/* 014354 00414354 27BD01A8 */   addiu      $sp, $sp, 0x1A8
/* 014358 00414358 00000000 */  nop
/* 01435C 0041435C 00000000 */  nop
/* 014360 00414360 00000000 */  nop
/* 014364 00414364 00000000 */  nop
/* 014368 00414368 00000000 */  nop
/* 01436C 0041436C 00000000 */  nop
