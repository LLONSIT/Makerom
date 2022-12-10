.section .rodata
glabel STR_10010EA0
/* 040EA0 10010EA0 */ .asciz "%x"
                      .balign 4

glabel STR_10010EA4
/* 040EA4 10010EA4 */ .asciz "Illegal character"
                      .balign 4

glabel STR_10010EB8
/* 040EB8 10010EB8 */ .asciz "bad switch yylook %d"
                      .balign 4

.section .late_rodata
glabel jtbl_10010F6C
/* 040F6C 10010F6C F03F32F0 */ .gpword .L00411030
/* 040F70 10010F70 F03F2E7C */ .gpword .L00410BBC
/* 040F74 10010F74 F03F2EA0 */ .gpword .L00410BE0
/* 040F78 10010F78 F03F2EBC */ .gpword .L00410BFC
/* 040F7C 10010F7C F03F2ED8 */ .gpword .L00410C18
/* 040F80 10010F80 F03F2EF4 */ .gpword .L00410C34
/* 040F84 10010F84 F03F2EFC */ .gpword .L00410C3C
/* 040F88 10010F88 F03F2F18 */ .gpword .L00410C58
/* 040F8C 10010F8C F03F2F34 */ .gpword .L00410C74
/* 040F90 10010F90 F03F2F50 */ .gpword .L00410C90
/* 040F94 10010F94 F03F2F6C */ .gpword .L00410CAC
/* 040F98 10010F98 F03F2F88 */ .gpword .L00410CC8
/* 040F9C 10010F9C F03F2FA4 */ .gpword .L00410CE4
/* 040FA0 10010FA0 F03F2FC0 */ .gpword .L00410D00
/* 040FA4 10010FA4 F03F2FDC */ .gpword .L00410D1C
/* 040FA8 10010FA8 F03F2FF8 */ .gpword .L00410D38
/* 040FAC 10010FAC F03F3014 */ .gpword .L00410D54
/* 040FB0 10010FB0 F03F3030 */ .gpword .L00410D70
/* 040FB4 10010FB4 F03F304C */ .gpword .L00410D8C
/* 040FB8 10010FB8 F03F3068 */ .gpword .L00410DA8
/* 040FBC 10010FBC F03F3084 */ .gpword .L00410DC4
/* 040FC0 10010FC0 F03F30A0 */ .gpword .L00410DE0
/* 040FC4 10010FC4 F03F30BC */ .gpword .L00410DFC
/* 040FC8 10010FC8 F03F30D8 */ .gpword .L00410E18
/* 040FCC 10010FCC F03F30F4 */ .gpword .L00410E34
/* 040FD0 10010FD0 F03F3110 */ .gpword .L00410E50
/* 040FD4 10010FD4 F03F312C */ .gpword .L00410E6C
/* 040FD8 10010FD8 F03F3148 */ .gpword .L00410E88
/* 040FDC 10010FDC F03F3164 */ .gpword .L00410EA4
/* 040FE0 10010FE0 F03F3180 */ .gpword .L00410EC0
/* 040FE4 10010FE4 F03F319C */ .gpword .L00410EDC
/* 040FE8 10010FE8 F03F31C8 */ .gpword .L00410F08
/* 040FEC 10010FEC F03F31F4 */ .gpword .L00410F34
/* 040FF0 10010FF0 F03F3250 */ .gpword .L00410F90
/* 040FF4 10010FF4 F03F32D4 */ .gpword .L00411014
/* 040FF8 10010FF8 00000000 */ .word 0x00000000
/* 040FFC 10010FFC 00000000 */ .word 0x00000000


.section .text
glabel yylex # 35
# _gp_disp: 0xFC0D1F0
.set noreorder; .cpload $t9; # .set reorder
/* 010B5C 00410B5C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 010B60 00410B60 AFBF001C */  sw          $ra, 0x1C($sp)
/* 010B64 00410B64 AFBC0018 */  sw          $gp, 0x18($sp)
/* 010B68 00410B68 AFB00014 */  sw          $s0, 0x14($sp)
/* 010B6C 00410B6C 8F9981B8 */  lw          $t9, %call16(yylook)($gp)
/* 010B70 00410B70 0320F809 */  jalr        $t9
/* 010B74 00410B74 00000000 */   nop
/* 010B78 00410B78 AFA20024 */  sw          $v0, 0x24($sp)
/* 010B7C 00410B7C 8FAE0024 */  lw          $t6, 0x24($sp)
/* 010B80 00410B80 8FBC0018 */  lw          $gp, 0x18($sp)
/* 010B84 00410B84 05C0013C */  bltz        $t6, .L00411078
/* 010B88 00410B88 00000000 */   nop
.L00410B8C:
/* 010B8C 00410B8C 8FAF0024 */  lw          $t7, 0x24($sp)
/* 010B90 00410B90 25F80001 */  addiu       $t8, $t7, 0x1
/* 010B94 00410B94 2F010023 */  sltiu       $at, $t8, 0x23
/* 010B98 00410B98 10200127 */  beqz        $at, .L00411038
/* 010B9C 00410B9C 00000000 */   nop
/* 010BA0 00410BA0 8F81802C */  lw          $at, %got(jtbl_10010F6C)($gp)
/* 010BA4 00410BA4 0018C080 */  sll         $t8, $t8, 2
/* 010BA8 00410BA8 00380821 */  addu        $at, $at, $t8
/* 010BAC 00410BAC 8C380F6C */  lw          $t8, %lo(jtbl_10010F6C)($at)
/* 010BB0 00410BB0 031CC021 */  addu        $t8, $t8, $gp
/* 010BB4 00410BB4 03000008 */  jr          $t8
/* 010BB8 00410BB8 00000000 */   nop
.L00410BBC:
/* 010BBC 00410BBC 8F998230 */  lw          $t9, %call16(yywrap)($gp)
/* 010BC0 00410BC0 0320F809 */  jalr        $t9
/* 010BC4 00410BC4 00000000 */   nop
/* 010BC8 00410BC8 10400003 */  beqz        $v0, .L00410BD8
/* 010BCC 00410BCC 8FBC0018 */   lw         $gp, 0x18($sp)
/* 010BD0 00410BD0 1000012D */  b           .L00411088
/* 010BD4 00410BD4 00001025 */   move       $v0, $zero
.L00410BD8:
/* 010BD8 00410BD8 1000011F */  b           .L00411058
/* 010BDC 00410BDC 00000000 */   nop
.L00410BE0:
/* 010BE0 00410BE0 8F998690 */  lw          $t9, %got(lineNumber)($gp)
/* 010BE4 00410BE4 8F818690 */  lw          $at, %got(lineNumber)($gp)
/* 010BE8 00410BE8 8F390000 */  lw          $t9, 0x0($t9)
/* 010BEC 00410BEC 27280001 */  addiu       $t0, $t9, 0x1
/* 010BF0 00410BF0 AC280000 */  sw          $t0, 0x0($at)
/* 010BF4 00410BF4 10000118 */  b           .L00411058
/* 010BF8 00410BF8 00000000 */   nop
.L00410BFC:
/* 010BFC 00410BFC 8F998018 */  lw          $t9, %got(func_0041109C)($gp)
/* 010C00 00410C00 2739109C */  addiu       $t9, $t9, %lo(func_0041109C)
/* 010C04 00410C04 0320F809 */  jalr        $t9
/* 010C08 00410C08 00000000 */   nop
/* 010C0C 00410C0C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 010C10 00410C10 10000111 */  b           .L00411058
/* 010C14 00410C14 00000000 */   nop
.L00410C18:
/* 010C18 00410C18 8F998018 */  lw          $t9, %got(func_004114EC)($gp)
/* 010C1C 00410C1C 273914EC */  addiu       $t9, $t9, %lo(func_004114EC)
/* 010C20 00410C20 0320F809 */  jalr        $t9
/* 010C24 00410C24 00000000 */   nop
/* 010C28 00410C28 8FBC0018 */  lw          $gp, 0x18($sp)
/* 010C2C 00410C2C 1000010A */  b           .L00411058
/* 010C30 00410C30 00000000 */   nop
.L00410C34:
/* 010C34 00410C34 10000108 */  b           .L00411058
/* 010C38 00410C38 00000000 */   nop
.L00410C3C:
/* 010C3C 00410C3C 8F818798 */  lw          $at, %got(yylval)($gp)
/* 010C40 00410C40 24090101 */  addiu       $t1, $zero, 0x101
/* 010C44 00410C44 AC290000 */  sw          $t1, 0x0($at)
/* 010C48 00410C48 1000010F */  b           .L00411088
/* 010C4C 00410C4C 24020101 */   addiu      $v0, $zero, 0x101
/* 010C50 00410C50 10000101 */  b           .L00411058
/* 010C54 00410C54 00000000 */   nop
.L00410C58:
/* 010C58 00410C58 8F818798 */  lw          $at, %got(yylval)($gp)
/* 010C5C 00410C5C 240A0102 */  addiu       $t2, $zero, 0x102
/* 010C60 00410C60 AC2A0000 */  sw          $t2, 0x0($at)
/* 010C64 00410C64 10000108 */  b           .L00411088
/* 010C68 00410C68 24020102 */   addiu      $v0, $zero, 0x102
/* 010C6C 00410C6C 100000FA */  b           .L00411058
/* 010C70 00410C70 00000000 */   nop
.L00410C74:
/* 010C74 00410C74 8F818798 */  lw          $at, %got(yylval)($gp)
/* 010C78 00410C78 240B0103 */  addiu       $t3, $zero, 0x103
/* 010C7C 00410C7C AC2B0000 */  sw          $t3, 0x0($at)
/* 010C80 00410C80 10000101 */  b           .L00411088
/* 010C84 00410C84 24020103 */   addiu      $v0, $zero, 0x103
/* 010C88 00410C88 100000F3 */  b           .L00411058
/* 010C8C 00410C8C 00000000 */   nop
.L00410C90:
/* 010C90 00410C90 8F818798 */  lw          $at, %got(yylval)($gp)
/* 010C94 00410C94 240C0104 */  addiu       $t4, $zero, 0x104
/* 010C98 00410C98 AC2C0000 */  sw          $t4, 0x0($at)
/* 010C9C 00410C9C 100000FA */  b           .L00411088
/* 010CA0 00410CA0 24020104 */   addiu      $v0, $zero, 0x104
/* 010CA4 00410CA4 100000EC */  b           .L00411058
/* 010CA8 00410CA8 00000000 */   nop
.L00410CAC:
/* 010CAC 00410CAC 8F818798 */  lw          $at, %got(yylval)($gp)
/* 010CB0 00410CB0 240D0105 */  addiu       $t5, $zero, 0x105
/* 010CB4 00410CB4 AC2D0000 */  sw          $t5, 0x0($at)
/* 010CB8 00410CB8 100000F3 */  b           .L00411088
/* 010CBC 00410CBC 24020105 */   addiu      $v0, $zero, 0x105
/* 010CC0 00410CC0 100000E5 */  b           .L00411058
/* 010CC4 00410CC4 00000000 */   nop
.L00410CC8:
/* 010CC8 00410CC8 8F818798 */  lw          $at, %got(yylval)($gp)
/* 010CCC 00410CCC 240E0106 */  addiu       $t6, $zero, 0x106
/* 010CD0 00410CD0 AC2E0000 */  sw          $t6, 0x0($at)
/* 010CD4 00410CD4 100000EC */  b           .L00411088
/* 010CD8 00410CD8 24020106 */   addiu      $v0, $zero, 0x106
/* 010CDC 00410CDC 100000DE */  b           .L00411058
/* 010CE0 00410CE0 00000000 */   nop
.L00410CE4:
/* 010CE4 00410CE4 8F818798 */  lw          $at, %got(yylval)($gp)
/* 010CE8 00410CE8 240F0107 */  addiu       $t7, $zero, 0x107
/* 010CEC 00410CEC AC2F0000 */  sw          $t7, 0x0($at)
/* 010CF0 00410CF0 100000E5 */  b           .L00411088
/* 010CF4 00410CF4 24020107 */   addiu      $v0, $zero, 0x107
/* 010CF8 00410CF8 100000D7 */  b           .L00411058
/* 010CFC 00410CFC 00000000 */   nop
.L00410D00:
/* 010D00 00410D00 8F818798 */  lw          $at, %got(yylval)($gp)
/* 010D04 00410D04 24180109 */  addiu       $t8, $zero, 0x109
/* 010D08 00410D08 AC380000 */  sw          $t8, 0x0($at)
/* 010D0C 00410D0C 100000DE */  b           .L00411088
/* 010D10 00410D10 24020109 */   addiu      $v0, $zero, 0x109
/* 010D14 00410D14 100000D0 */  b           .L00411058
/* 010D18 00410D18 00000000 */   nop
.L00410D1C:
/* 010D1C 00410D1C 8F818798 */  lw          $at, %got(yylval)($gp)
/* 010D20 00410D20 2419010A */  addiu       $t9, $zero, 0x10A
/* 010D24 00410D24 AC390000 */  sw          $t9, 0x0($at)
/* 010D28 00410D28 100000D7 */  b           .L00411088
/* 010D2C 00410D2C 2402010A */   addiu      $v0, $zero, 0x10A
/* 010D30 00410D30 100000C9 */  b           .L00411058
/* 010D34 00410D34 00000000 */   nop
.L00410D38:
/* 010D38 00410D38 8F818798 */  lw          $at, %got(yylval)($gp)
/* 010D3C 00410D3C 2408010B */  addiu       $t0, $zero, 0x10B
/* 010D40 00410D40 AC280000 */  sw          $t0, 0x0($at)
/* 010D44 00410D44 100000D0 */  b           .L00411088
/* 010D48 00410D48 2402010B */   addiu      $v0, $zero, 0x10B
/* 010D4C 00410D4C 100000C2 */  b           .L00411058
/* 010D50 00410D50 00000000 */   nop
.L00410D54:
/* 010D54 00410D54 8F818798 */  lw          $at, %got(yylval)($gp)
/* 010D58 00410D58 2409010C */  addiu       $t1, $zero, 0x10C
/* 010D5C 00410D5C AC290000 */  sw          $t1, 0x0($at)
/* 010D60 00410D60 100000C9 */  b           .L00411088
/* 010D64 00410D64 2402010C */   addiu      $v0, $zero, 0x10C
/* 010D68 00410D68 100000BB */  b           .L00411058
/* 010D6C 00410D6C 00000000 */   nop
.L00410D70:
/* 010D70 00410D70 8F818798 */  lw          $at, %got(yylval)($gp)
/* 010D74 00410D74 240A010D */  addiu       $t2, $zero, 0x10D
/* 010D78 00410D78 AC2A0000 */  sw          $t2, 0x0($at)
/* 010D7C 00410D7C 100000C2 */  b           .L00411088
/* 010D80 00410D80 2402010D */   addiu      $v0, $zero, 0x10D
/* 010D84 00410D84 100000B4 */  b           .L00411058
/* 010D88 00410D88 00000000 */   nop
.L00410D8C:
/* 010D8C 00410D8C 8F818798 */  lw          $at, %got(yylval)($gp)
/* 010D90 00410D90 240B010E */  addiu       $t3, $zero, 0x10E
/* 010D94 00410D94 AC2B0000 */  sw          $t3, 0x0($at)
/* 010D98 00410D98 100000BB */  b           .L00411088
/* 010D9C 00410D9C 2402010E */   addiu      $v0, $zero, 0x10E
/* 010DA0 00410DA0 100000AD */  b           .L00411058
/* 010DA4 00410DA4 00000000 */   nop
.L00410DA8:
/* 010DA8 00410DA8 8F818798 */  lw          $at, %got(yylval)($gp)
/* 010DAC 00410DAC 240C010F */  addiu       $t4, $zero, 0x10F
/* 010DB0 00410DB0 AC2C0000 */  sw          $t4, 0x0($at)
/* 010DB4 00410DB4 100000B4 */  b           .L00411088
/* 010DB8 00410DB8 2402010F */   addiu      $v0, $zero, 0x10F
/* 010DBC 00410DBC 100000A6 */  b           .L00411058
/* 010DC0 00410DC0 00000000 */   nop
.L00410DC4:
/* 010DC4 00410DC4 8F818798 */  lw          $at, %got(yylval)($gp)
/* 010DC8 00410DC8 240D0110 */  addiu       $t5, $zero, 0x110
/* 010DCC 00410DCC AC2D0000 */  sw          $t5, 0x0($at)
/* 010DD0 00410DD0 100000AD */  b           .L00411088
/* 010DD4 00410DD4 24020110 */   addiu      $v0, $zero, 0x110
/* 010DD8 00410DD8 1000009F */  b           .L00411058
/* 010DDC 00410DDC 00000000 */   nop
.L00410DE0:
/* 010DE0 00410DE0 8F818798 */  lw          $at, %got(yylval)($gp)
/* 010DE4 00410DE4 240E0111 */  addiu       $t6, $zero, 0x111
/* 010DE8 00410DE8 AC2E0000 */  sw          $t6, 0x0($at)
/* 010DEC 00410DEC 100000A6 */  b           .L00411088
/* 010DF0 00410DF0 24020111 */   addiu      $v0, $zero, 0x111
/* 010DF4 00410DF4 10000098 */  b           .L00411058
/* 010DF8 00410DF8 00000000 */   nop
.L00410DFC:
/* 010DFC 00410DFC 8F818798 */  lw          $at, %got(yylval)($gp)
/* 010E00 00410E00 240F0112 */  addiu       $t7, $zero, 0x112
/* 010E04 00410E04 AC2F0000 */  sw          $t7, 0x0($at)
/* 010E08 00410E08 1000009F */  b           .L00411088
/* 010E0C 00410E0C 24020112 */   addiu      $v0, $zero, 0x112
/* 010E10 00410E10 10000091 */  b           .L00411058
/* 010E14 00410E14 00000000 */   nop
.L00410E18:
/* 010E18 00410E18 8F818798 */  lw          $at, %got(yylval)($gp)
/* 010E1C 00410E1C 24180113 */  addiu       $t8, $zero, 0x113
/* 010E20 00410E20 AC380000 */  sw          $t8, 0x0($at)
/* 010E24 00410E24 10000098 */  b           .L00411088
/* 010E28 00410E28 24020113 */   addiu      $v0, $zero, 0x113
/* 010E2C 00410E2C 1000008A */  b           .L00411058
/* 010E30 00410E30 00000000 */   nop
.L00410E34:
/* 010E34 00410E34 8F818798 */  lw          $at, %got(yylval)($gp)
/* 010E38 00410E38 24190114 */  addiu       $t9, $zero, 0x114
/* 010E3C 00410E3C AC390000 */  sw          $t9, 0x0($at)
/* 010E40 00410E40 10000091 */  b           .L00411088
/* 010E44 00410E44 24020114 */   addiu      $v0, $zero, 0x114
/* 010E48 00410E48 10000083 */  b           .L00411058
/* 010E4C 00410E4C 00000000 */   nop
.L00410E50:
/* 010E50 00410E50 8F818798 */  lw          $at, %got(yylval)($gp)
/* 010E54 00410E54 24080115 */  addiu       $t0, $zero, 0x115
/* 010E58 00410E58 AC280000 */  sw          $t0, 0x0($at)
/* 010E5C 00410E5C 1000008A */  b           .L00411088
/* 010E60 00410E60 24020115 */   addiu      $v0, $zero, 0x115
/* 010E64 00410E64 1000007C */  b           .L00411058
/* 010E68 00410E68 00000000 */   nop
.L00410E6C:
/* 010E6C 00410E6C 8F818798 */  lw          $at, %got(yylval)($gp)
/* 010E70 00410E70 24090116 */  addiu       $t1, $zero, 0x116
/* 010E74 00410E74 AC290000 */  sw          $t1, 0x0($at)
/* 010E78 00410E78 10000083 */  b           .L00411088
/* 010E7C 00410E7C 24020116 */   addiu      $v0, $zero, 0x116
/* 010E80 00410E80 10000075 */  b           .L00411058
/* 010E84 00410E84 00000000 */   nop
.L00410E88:
/* 010E88 00410E88 8F818798 */  lw          $at, %got(yylval)($gp)
/* 010E8C 00410E8C 240A0117 */  addiu       $t2, $zero, 0x117
/* 010E90 00410E90 AC2A0000 */  sw          $t2, 0x0($at)
/* 010E94 00410E94 1000007C */  b           .L00411088
/* 010E98 00410E98 24020117 */   addiu      $v0, $zero, 0x117
/* 010E9C 00410E9C 1000006E */  b           .L00411058
/* 010EA0 00410EA0 00000000 */   nop
.L00410EA4:
/* 010EA4 00410EA4 8F818798 */  lw          $at, %got(yylval)($gp)
/* 010EA8 00410EA8 240B0118 */  addiu       $t3, $zero, 0x118
/* 010EAC 00410EAC AC2B0000 */  sw          $t3, 0x0($at)
/* 010EB0 00410EB0 10000075 */  b           .L00411088
/* 010EB4 00410EB4 24020118 */   addiu      $v0, $zero, 0x118
/* 010EB8 00410EB8 10000067 */  b           .L00411058
/* 010EBC 00410EBC 00000000 */   nop
.L00410EC0:
/* 010EC0 00410EC0 8F818798 */  lw          $at, %got(yylval)($gp)
/* 010EC4 00410EC4 240C0119 */  addiu       $t4, $zero, 0x119
/* 010EC8 00410EC8 AC2C0000 */  sw          $t4, 0x0($at)
/* 010ECC 00410ECC 1000006E */  b           .L00411088
/* 010ED0 00410ED0 24020119 */   addiu      $v0, $zero, 0x119
/* 010ED4 00410ED4 10000060 */  b           .L00411058
/* 010ED8 00410ED8 00000000 */   nop
.L00410EDC:
/* 010EDC 00410EDC 8F9980E8 */  lw          $t9, %call16(sscanf)($gp)
/* 010EE0 00410EE0 8F85802C */  lw          $a1, %got(STR_10010EA0)($gp)
/* 010EE4 00410EE4 8F848768 */  lw          $a0, %got(yytext)($gp)
/* 010EE8 00410EE8 8F868798 */  lw          $a2, %got(yylval)($gp)
/* 010EEC 00410EEC 0320F809 */  jalr        $t9
/* 010EF0 00410EF0 24A50EA0 */   addiu      $a1, $a1, %lo(STR_10010EA0)
/* 010EF4 00410EF4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 010EF8 00410EF8 10000063 */  b           .L00411088
/* 010EFC 00410EFC 24020108 */   addiu      $v0, $zero, 0x108
/* 010F00 00410F00 10000055 */  b           .L00411058
/* 010F04 00410F04 00000000 */   nop
.L00410F08:
/* 010F08 00410F08 8F9980EC */  lw          $t9, %call16(atoi)($gp)
/* 010F0C 00410F0C 8F848768 */  lw          $a0, %got(yytext)($gp)
/* 010F10 00410F10 0320F809 */  jalr        $t9
/* 010F14 00410F14 00000000 */   nop
/* 010F18 00410F18 8FBC0018 */  lw          $gp, 0x18($sp)
/* 010F1C 00410F1C 8F818798 */  lw          $at, %got(yylval)($gp)
/* 010F20 00410F20 AC220000 */  sw          $v0, 0x0($at)
/* 010F24 00410F24 10000058 */  b           .L00411088
/* 010F28 00410F28 24020108 */   addiu      $v0, $zero, 0x108
/* 010F2C 00410F2C 1000004A */  b           .L00411058
/* 010F30 00410F30 00000000 */   nop
.L00410F34:
/* 010F34 00410F34 8F99806C */  lw          $t9, %call16(strlen)($gp)
/* 010F38 00410F38 8F848768 */  lw          $a0, %got(yytext)($gp)
/* 010F3C 00410F3C 0320F809 */  jalr        $t9
/* 010F40 00410F40 00000000 */   nop
/* 010F44 00410F44 8FBC0018 */  lw          $gp, 0x18($sp)
/* 010F48 00410F48 00408025 */  move        $s0, $v0
/* 010F4C 00410F4C 26040001 */  addiu       $a0, $s0, 0x1
/* 010F50 00410F50 8F998064 */  lw          $t9, %call16(malloc)($gp)
/* 010F54 00410F54 0320F809 */  jalr        $t9
/* 010F58 00410F58 00000000 */   nop
/* 010F5C 00410F5C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 010F60 00410F60 8F818798 */  lw          $at, %got(yylval)($gp)
/* 010F64 00410F64 AC220000 */  sw          $v0, 0x0($at)
/* 010F68 00410F68 8F99809C */  lw          $t9, %call16(strcpy)($gp)
/* 010F6C 00410F6C 8F848798 */  lw          $a0, %got(yylval)($gp)
/* 010F70 00410F70 8F858768 */  lw          $a1, %got(yytext)($gp)
/* 010F74 00410F74 0320F809 */  jalr        $t9
/* 010F78 00410F78 8C840000 */   lw         $a0, 0x0($a0)
/* 010F7C 00410F7C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 010F80 00410F80 10000041 */  b           .L00411088
/* 010F84 00410F84 2402011A */   addiu      $v0, $zero, 0x11A
/* 010F88 00410F88 10000033 */  b           .L00411058
/* 010F8C 00410F8C 00000000 */   nop
.L00410F90:
/* 010F90 00410F90 8F99806C */  lw          $t9, %call16(strlen)($gp)
/* 010F94 00410F94 8F848768 */  lw          $a0, %got(yytext)($gp)
/* 010F98 00410F98 0320F809 */  jalr        $t9
/* 010F9C 00410F9C 00000000 */   nop
/* 010FA0 00410FA0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 010FA4 00410FA4 00408025 */  move        $s0, $v0
/* 010FA8 00410FA8 8F8D8768 */  lw          $t5, %got(yytext)($gp)
/* 010FAC 00410FAC 020D7021 */  addu        $t6, $s0, $t5
/* 010FB0 00410FB0 A1C0FFFF */  sb          $zero, -0x1($t6)
/* 010FB4 00410FB4 8F99806C */  lw          $t9, %call16(strlen)($gp)
/* 010FB8 00410FB8 8F848768 */  lw          $a0, %got(yytext)($gp)
/* 010FBC 00410FBC 0320F809 */  jalr        $t9
/* 010FC0 00410FC0 00000000 */   nop
/* 010FC4 00410FC4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 010FC8 00410FC8 00408025 */  move        $s0, $v0
/* 010FCC 00410FCC 2604FFFF */  addiu       $a0, $s0, -0x1
/* 010FD0 00410FD0 8F998064 */  lw          $t9, %call16(malloc)($gp)
/* 010FD4 00410FD4 0320F809 */  jalr        $t9
/* 010FD8 00410FD8 00000000 */   nop
/* 010FDC 00410FDC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 010FE0 00410FE0 8F818798 */  lw          $at, %got(yylval)($gp)
/* 010FE4 00410FE4 AC220000 */  sw          $v0, 0x0($at)
/* 010FE8 00410FE8 8F99809C */  lw          $t9, %call16(strcpy)($gp)
/* 010FEC 00410FEC 8F848798 */  lw          $a0, %got(yylval)($gp)
/* 010FF0 00410FF0 8F858768 */  lw          $a1, %got(yytext)($gp)
/* 010FF4 00410FF4 8C840000 */  lw          $a0, 0x0($a0)
/* 010FF8 00410FF8 0320F809 */  jalr        $t9
/* 010FFC 00410FFC 24A50001 */   addiu      $a1, $a1, 0x1
/* 011000 00411000 8FBC0018 */  lw          $gp, 0x18($sp)
/* 011004 00411004 10000020 */  b           .L00411088
/* 011008 00411008 2402011A */   addiu      $v0, $zero, 0x11A
/* 01100C 0041100C 10000012 */  b           .L00411058
/* 011010 00411010 00000000 */   nop
.L00411014:
/* 011014 00411014 8F9981C0 */  lw          $t9, %call16(yyerror)($gp)
/* 011018 00411018 8F84802C */  lw          $a0, %got(STR_10010EA4)($gp)
/* 01101C 0041101C 0320F809 */  jalr        $t9
/* 011020 00411020 24840EA4 */   addiu      $a0, $a0, %lo(STR_10010EA4)
/* 011024 00411024 8FBC0018 */  lw          $gp, 0x18($sp)
/* 011028 00411028 1000000B */  b           .L00411058
/* 01102C 0041102C 00000000 */   nop
.L00411030:
/* 011030 00411030 10000009 */  b           .L00411058
/* 011034 00411034 00000000 */   nop
.L00411038:
/* 011038 00411038 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 01103C 0041103C 8F84868C */  lw          $a0, %got(yyout)($gp)
/* 011040 00411040 8F85802C */  lw          $a1, %got(STR_10010EB8)($gp)
/* 011044 00411044 8FA60024 */  lw          $a2, 0x24($sp)
/* 011048 00411048 8C840000 */  lw          $a0, 0x0($a0)
/* 01104C 0041104C 0320F809 */  jalr        $t9
/* 011050 00411050 24A50EB8 */   addiu      $a1, $a1, %lo(STR_10010EB8)
/* 011054 00411054 8FBC0018 */  lw          $gp, 0x18($sp)
.L00411058:
/* 011058 00411058 8F9981B8 */  lw          $t9, %call16(yylook)($gp)
/* 01105C 0041105C 0320F809 */  jalr        $t9
/* 011060 00411060 00000000 */   nop
/* 011064 00411064 AFA20024 */  sw          $v0, 0x24($sp)
/* 011068 00411068 8FAF0024 */  lw          $t7, 0x24($sp)
/* 01106C 0041106C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 011070 00411070 05E1FEC6 */  bgez        $t7, .L00410B8C
/* 011074 00411074 00000000 */   nop
.L00411078:
/* 011078 00411078 10000003 */  b           .L00411088
/* 01107C 0041107C 00001025 */   move       $v0, $zero
/* 011080 00411080 10000001 */  b           .L00411088
/* 011084 00411084 00000000 */   nop
.L00411088:
/* 011088 00411088 8FBF001C */  lw          $ra, 0x1C($sp)
/* 01108C 0041108C 8FB00014 */  lw          $s0, 0x14($sp)
/* 011090 00411090 27BD0028 */  addiu       $sp, $sp, 0x28
/* 011094 00411094 03E00008 */  jr          $ra
/* 011098 00411098 00000000 */   nop