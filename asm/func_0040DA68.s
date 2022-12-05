.section .rodata
glabel STR_10010188
/* 040188 10010188 */ .asciz "makerom: %s: %s\n"
                      .balign 4

glabel STR_1001019C
/* 04019C 1001019C */ .asciz "makerom: lstat failed: %s\n"
                      .balign 4

.section .late_rodata
glabel jtbl_10010E58
/* 040E58 10010E58 F03EFFE0 */ .gpword .L0040DD20
/* 040E5C 10010E5C F03EFF28 */ .gpword .L0040DC68
/* 040E60 10010E60 F03EFF84 */ .gpword .L0040DCC4
/* 040E64 10010E64 F03F0008 */ .gpword .L0040DD48
/* 040E68 10010E68 F03F001C */ .gpword .L0040DD5C
/* 040E6C 10010E6C 00000000 */ .word 0x00000000


.section .text
glabel func_0040DA68 # 21
# _gp_disp: 0xFC102D8
.set noreorder; .cpload $t9; # .set reorder
/* 00DA74 0040DA74 27BDFF40 */  addiu       $sp, $sp, -0xC0
/* 00DA78 0040DA78 AFBF001C */  sw          $ra, 0x1C($sp)
/* 00DA7C 0040DA7C AFBC0018 */  sw          $gp, 0x18($sp)
/* 00DA80 0040DA80 AFA400C0 */  sw          $a0, 0xC0($sp)
/* 00DA84 0040DA84 AFB00014 */  sw          $s0, 0x14($sp)
/* 00DA88 0040DA88 8FAF00C0 */  lw          $t7, 0xC0($sp)
/* 00DA8C 0040DA8C 240E0010 */  addiu       $t6, $zero, 0x10
/* 00DA90 0040DA90 ADEE0050 */  sw          $t6, 0x50($t7)
/* 00DA94 0040DA94 8FB900C0 */  lw          $t9, 0xC0($sp)
/* 00DA98 0040DA98 24180002 */  addiu       $t8, $zero, 0x2
/* 00DA9C 0040DA9C AF380060 */  sw          $t8, 0x60($t9)
/* 00DAA0 0040DAA0 8FA800C0 */  lw          $t0, 0xC0($sp)
/* 00DAA4 0040DAA4 8D090008 */  lw          $t1, 0x8($t0)
/* 00DAA8 0040DAA8 1120005A */  beqz        $t1, .L0040DC14
/* 00DAAC 0040DAAC AFA900AC */   sw         $t1, 0xAC($sp)
.L0040DAB0:
/* 00DAB0 0040DAB0 8FAA00AC */  lw          $t2, 0xAC($sp)
/* 00DAB4 0040DAB4 AD400008 */  sw          $zero, 0x8($t2)
/* 00DAB8 0040DAB8 8FAB00AC */  lw          $t3, 0xAC($sp)
/* 00DABC 0040DABC AD60000C */  sw          $zero, 0xC($t3)
/* 00DAC0 0040DAC0 8FAC00AC */  lw          $t4, 0xAC($sp)
/* 00DAC4 0040DAC4 AD800010 */  sw          $zero, 0x10($t4)
/* 00DAC8 0040DAC8 8FAD00AC */  lw          $t5, 0xAC($sp)
/* 00DACC 0040DACC ADA00014 */  sw          $zero, 0x14($t5)
/* 00DAD0 0040DAD0 8FAE00AC */  lw          $t6, 0xAC($sp)
/* 00DAD4 0040DAD4 ADC00018 */  sw          $zero, 0x18($t6)
/* 00DAD8 0040DAD8 8FAF00AC */  lw          $t7, 0xAC($sp)
/* 00DADC 0040DADC ADE0001C */  sw          $zero, 0x1C($t7)
/* 00DAE0 0040DAE0 8FB900AC */  lw          $t9, 0xAC($sp)
/* 00DAE4 0040DAE4 24180010 */  addiu       $t8, $zero, 0x10
/* 00DAE8 0040DAE8 AF380020 */  sw          $t8, 0x20($t9)
/* 00DAEC 0040DAEC 8FA800AC */  lw          $t0, 0xAC($sp)
/* 00DAF0 0040DAF0 AD000024 */  sw          $zero, 0x24($t0)
/* 00DAF4 0040DAF4 8FA900AC */  lw          $t1, 0xAC($sp)
/* 00DAF8 0040DAF8 AD200028 */  sw          $zero, 0x28($t1)
/* 00DAFC 0040DAFC 8FAA00AC */  lw          $t2, 0xAC($sp)
/* 00DB00 0040DB00 AD40002C */  sw          $zero, 0x2C($t2)
/* 00DB04 0040DB04 8FAC00AC */  lw          $t4, 0xAC($sp)
/* 00DB08 0040DB08 240B0002 */  addiu       $t3, $zero, 0x2
/* 00DB0C 0040DB0C AD8B0044 */  sw          $t3, 0x44($t4)
/* 00DB10 0040DB10 8F9980B4 */  lw          $t9, %call16(open)($gp)
/* 00DB14 0040DB14 8FAD00AC */  lw          $t5, 0xAC($sp)
/* 00DB18 0040DB18 00002825 */  move        $a1, $zero
/* 00DB1C 0040DB1C 0320F809 */  jalr        $t9
/* 00DB20 0040DB20 8DA40004 */   lw         $a0, 0x4($t5)
/* 00DB24 0040DB24 AFA200B0 */  sw          $v0, 0xB0($sp)
/* 00DB28 0040DB28 8FAE00B0 */  lw          $t6, 0xB0($sp)
/* 00DB2C 0040DB2C 2401FFFF */  addiu       $at, $zero, -0x1
/* 00DB30 0040DB30 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00DB34 0040DB34 15C10012 */  bne         $t6, $at, .L0040DB80
/* 00DB38 0040DB38 00000000 */   nop
/* 00DB3C 0040DB3C 8F98804C */  lw          $t8, %got(errno)($gp)
/* 00DB40 0040DB40 8F888050 */  lw          $t0, %got(sys_errlist)($gp)
/* 00DB44 0040DB44 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00DB48 0040DB48 8F180000 */  lw          $t8, 0x0($t8)
/* 00DB4C 0040DB4C 8F85802C */  lw          $a1, %got(STR_10010188)($gp)
/* 00DB50 0040DB50 8FAF00AC */  lw          $t7, 0xAC($sp)
/* 00DB54 0040DB54 0018C880 */  sll         $t9, $t8, 2
/* 00DB58 0040DB58 03284821 */  addu        $t1, $t9, $t0
/* 00DB5C 0040DB5C 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00DB60 0040DB60 8D270000 */  lw          $a3, 0x0($t1)
/* 00DB64 0040DB64 24840020 */  addiu       $a0, $a0, 0x20
/* 00DB68 0040DB68 24A50188 */  addiu       $a1, $a1, %lo(STR_10010188)
/* 00DB6C 0040DB6C 0320F809 */  jalr        $t9
/* 00DB70 0040DB70 8DE60004 */   lw         $a2, 0x4($t7)
/* 00DB74 0040DB74 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00DB78 0040DB78 10000094 */  b           .L0040DDCC
/* 00DB7C 0040DB7C 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040DB80:
/* 00DB80 0040DB80 8F9980BC */  lw          $t9, %call16(fstat)($gp)
/* 00DB84 0040DB84 8FA400B0 */  lw          $a0, 0xB0($sp)
/* 00DB88 0040DB88 27A50024 */  addiu       $a1, $sp, 0x24
/* 00DB8C 0040DB8C 0320F809 */  jalr        $t9
/* 00DB90 0040DB90 00000000 */   nop
/* 00DB94 0040DB94 2401FFFF */  addiu       $at, $zero, -0x1
/* 00DB98 0040DB98 14410010 */  bne         $v0, $at, .L0040DBDC
/* 00DB9C 0040DB9C 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00DBA0 0040DBA0 8F8A804C */  lw          $t2, %got(errno)($gp)
/* 00DBA4 0040DBA4 8F8C8050 */  lw          $t4, %got(sys_errlist)($gp)
/* 00DBA8 0040DBA8 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00DBAC 0040DBAC 8D4A0000 */  lw          $t2, 0x0($t2)
/* 00DBB0 0040DBB0 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00DBB4 0040DBB4 8F85802C */  lw          $a1, %got(STR_1001019C)($gp)
/* 00DBB8 0040DBB8 000A5880 */  sll         $t3, $t2, 2
/* 00DBBC 0040DBBC 016C6821 */  addu        $t5, $t3, $t4
/* 00DBC0 0040DBC0 8DA60000 */  lw          $a2, 0x0($t5)
/* 00DBC4 0040DBC4 24840020 */  addiu       $a0, $a0, 0x20
/* 00DBC8 0040DBC8 0320F809 */  jalr        $t9
/* 00DBCC 0040DBCC 24A5019C */   addiu      $a1, $a1, %lo(STR_1001019C)
/* 00DBD0 0040DBD0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00DBD4 0040DBD4 1000007D */  b           .L0040DDCC
/* 00DBD8 0040DBD8 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040DBDC:
/* 00DBDC 0040DBDC 8FAE00C0 */  lw          $t6, 0xC0($sp)
/* 00DBE0 0040DBE0 8FB80054 */  lw          $t8, 0x54($sp)
/* 00DBE4 0040DBE4 8DCF0030 */  lw          $t7, 0x30($t6)
/* 00DBE8 0040DBE8 01F8C821 */  addu        $t9, $t7, $t8
/* 00DBEC 0040DBEC ADD90030 */  sw          $t9, 0x30($t6)
/* 00DBF0 0040DBF0 8F9980C0 */  lw          $t9, %call16(close)($gp)
/* 00DBF4 0040DBF4 8FA400B0 */  lw          $a0, 0xB0($sp)
/* 00DBF8 0040DBF8 0320F809 */  jalr        $t9
/* 00DBFC 0040DBFC 00000000 */   nop
/* 00DC00 0040DC00 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00DC04 0040DC04 8FA800AC */  lw          $t0, 0xAC($sp)
/* 00DC08 0040DC08 8D090000 */  lw          $t1, 0x0($t0)
/* 00DC0C 0040DC0C 1520FFA8 */  bnez        $t1, .L0040DAB0
/* 00DC10 0040DC10 AFA900AC */   sw         $t1, 0xAC($sp)
.L0040DC14:
/* 00DC14 0040DC14 8FAA00C0 */  lw          $t2, 0xC0($sp)
/* 00DC18 0040DC18 8D500030 */  lw          $s0, 0x30($t2)
/* 00DC1C 0040DC1C 2610000F */  addiu       $s0, $s0, 0xF
/* 00DC20 0040DC20 00108102 */  srl         $s0, $s0, 4
/* 00DC24 0040DC24 00108100 */  sll         $s0, $s0, 4
/* 00DC28 0040DC28 AD500030 */  sw          $s0, 0x30($t2)
/* 00DC2C 0040DC2C 8FAB00C0 */  lw          $t3, 0xC0($sp)
/* 00DC30 0040DC30 AD700040 */  sw          $s0, 0x40($t3)
/* 00DC34 0040DC34 8FAC00C0 */  lw          $t4, 0xC0($sp)
/* 00DC38 0040DC38 8D8D0014 */  lw          $t5, 0x14($t4)
/* 00DC3C 0040DC3C 25AFFFFF */  addiu       $t7, $t5, -0x1
/* 00DC40 0040DC40 2DE10005 */  sltiu       $at, $t7, 0x5
/* 00DC44 0040DC44 1020004A */  beqz        $at, .L0040DD70
/* 00DC48 0040DC48 00000000 */   nop
/* 00DC4C 0040DC4C 8F81802C */  lw          $at, %got(jtbl_10010E58)($gp)
/* 00DC50 0040DC50 000F7880 */  sll         $t7, $t7, 2
/* 00DC54 0040DC54 002F0821 */  addu        $at, $at, $t7
/* 00DC58 0040DC58 8C2F0E58 */  lw          $t7, %lo(jtbl_10010E58)($at)
/* 00DC5C 0040DC5C 01FC7821 */  addu        $t7, $t7, $gp
/* 00DC60 0040DC60 01E00008 */  jr          $t7
/* 00DC64 0040DC64 00000000 */   nop
.L0040DC68:
/* 00DC68 0040DC68 8FB800C0 */  lw          $t8, 0xC0($sp)
/* 00DC6C 0040DC6C 8F190018 */  lw          $t9, 0x18($t8)
/* 00DC70 0040DC70 8F2E0010 */  lw          $t6, 0x10($t9)
/* 00DC74 0040DC74 8F280040 */  lw          $t0, 0x40($t9)
/* 00DC78 0040DC78 01C84821 */  addu        $t1, $t6, $t0
/* 00DC7C 0040DC7C AFA900BC */  sw          $t1, 0xBC($sp)
/* 00DC80 0040DC80 8FAA00C0 */  lw          $t2, 0xC0($sp)
/* 00DC84 0040DC84 8D4B001C */  lw          $t3, 0x1C($t2)
/* 00DC88 0040DC88 8D6C0010 */  lw          $t4, 0x10($t3)
/* 00DC8C 0040DC8C 8D6D0040 */  lw          $t5, 0x40($t3)
/* 00DC90 0040DC90 018D7821 */  addu        $t7, $t4, $t5
/* 00DC94 0040DC94 AFAF00B8 */  sw          $t7, 0xB8($sp)
/* 00DC98 0040DC98 8FB800BC */  lw          $t8, 0xBC($sp)
/* 00DC9C 0040DC9C 8FB900B8 */  lw          $t9, 0xB8($sp)
/* 00DCA0 0040DCA0 0338082B */  sltu        $at, $t9, $t8
/* 00DCA4 0040DCA4 10200003 */  beqz        $at, .L0040DCB4
/* 00DCA8 0040DCA8 00000000 */   nop
/* 00DCAC 0040DCAC 10000003 */  b           .L0040DCBC
/* 00DCB0 0040DCB0 AFB800B4 */   sw         $t8, 0xB4($sp)
.L0040DCB4:
/* 00DCB4 0040DCB4 8FAE00B8 */  lw          $t6, 0xB8($sp)
/* 00DCB8 0040DCB8 AFAE00B4 */  sw          $t6, 0xB4($sp)
.L0040DCBC:
/* 00DCBC 0040DCBC 1000002E */  b           .L0040DD78
/* 00DCC0 0040DCC0 00000000 */   nop
.L0040DCC4:
/* 00DCC4 0040DCC4 8FA800C0 */  lw          $t0, 0xC0($sp)
/* 00DCC8 0040DCC8 8D090018 */  lw          $t1, 0x18($t0)
/* 00DCCC 0040DCCC 8D2A0010 */  lw          $t2, 0x10($t1)
/* 00DCD0 0040DCD0 8D2B0040 */  lw          $t3, 0x40($t1)
/* 00DCD4 0040DCD4 014B6021 */  addu        $t4, $t2, $t3
/* 00DCD8 0040DCD8 AFAC00BC */  sw          $t4, 0xBC($sp)
/* 00DCDC 0040DCDC 8FAD00C0 */  lw          $t5, 0xC0($sp)
/* 00DCE0 0040DCE0 8DAF001C */  lw          $t7, 0x1C($t5)
/* 00DCE4 0040DCE4 8DF90010 */  lw          $t9, 0x10($t7)
/* 00DCE8 0040DCE8 8DF80040 */  lw          $t8, 0x40($t7)
/* 00DCEC 0040DCEC 03387021 */  addu        $t6, $t9, $t8
/* 00DCF0 0040DCF0 AFAE00B8 */  sw          $t6, 0xB8($sp)
/* 00DCF4 0040DCF4 8FA800BC */  lw          $t0, 0xBC($sp)
/* 00DCF8 0040DCF8 8FA900B8 */  lw          $t1, 0xB8($sp)
/* 00DCFC 0040DCFC 0109082B */  sltu        $at, $t0, $t1
/* 00DD00 0040DD00 10200003 */  beqz        $at, .L0040DD10
/* 00DD04 0040DD04 00000000 */   nop
/* 00DD08 0040DD08 10000003 */  b           .L0040DD18
/* 00DD0C 0040DD0C AFA800B4 */   sw         $t0, 0xB4($sp)
.L0040DD10:
/* 00DD10 0040DD10 8FAA00B8 */  lw          $t2, 0xB8($sp)
/* 00DD14 0040DD14 AFAA00B4 */  sw          $t2, 0xB4($sp)
.L0040DD18:
/* 00DD18 0040DD18 10000017 */  b           .L0040DD78
/* 00DD1C 0040DD1C 00000000 */   nop
.L0040DD20:
/* 00DD20 0040DD20 8FAB00C0 */  lw          $t3, 0xC0($sp)
/* 00DD24 0040DD24 8D6C0018 */  lw          $t4, 0x18($t3)
/* 00DD28 0040DD28 8D8D0010 */  lw          $t5, 0x10($t4)
/* 00DD2C 0040DD2C 8D8F0040 */  lw          $t7, 0x40($t4)
/* 00DD30 0040DD30 01AFC821 */  addu        $t9, $t5, $t7
/* 00DD34 0040DD34 AFB900BC */  sw          $t9, 0xBC($sp)
/* 00DD38 0040DD38 8FB800BC */  lw          $t8, 0xBC($sp)
/* 00DD3C 0040DD3C AFB800B4 */  sw          $t8, 0xB4($sp)
/* 00DD40 0040DD40 1000000D */  b           .L0040DD78
/* 00DD44 0040DD44 00000000 */   nop
.L0040DD48:
/* 00DD48 0040DD48 8FAE00C0 */  lw          $t6, 0xC0($sp)
/* 00DD4C 0040DD4C 8DC90010 */  lw          $t1, 0x10($t6)
/* 00DD50 0040DD50 AFA900B4 */  sw          $t1, 0xB4($sp)
/* 00DD54 0040DD54 10000008 */  b           .L0040DD78
/* 00DD58 0040DD58 00000000 */   nop
.L0040DD5C:
/* 00DD5C 0040DD5C 8FA800C0 */  lw          $t0, 0xC0($sp)
/* 00DD60 0040DD60 8D0A0010 */  lw          $t2, 0x10($t0)
/* 00DD64 0040DD64 AFAA00B4 */  sw          $t2, 0xB4($sp)
/* 00DD68 0040DD68 10000003 */  b           .L0040DD78
/* 00DD6C 0040DD6C 00000000 */   nop
.L0040DD70:
/* 00DD70 0040DD70 10000001 */  b           .L0040DD78
/* 00DD74 0040DD74 00000000 */   nop
.L0040DD78:
/* 00DD78 0040DD78 8F9981AC */  lw          $t9, %call16(ALIGNn)($gp)
/* 00DD7C 0040DD7C 8FAB00C0 */  lw          $t3, 0xC0($sp)
/* 00DD80 0040DD80 8FA500B4 */  lw          $a1, 0xB4($sp)
/* 00DD84 0040DD84 0320F809 */  jalr        $t9
/* 00DD88 0040DD88 8D640020 */   lw         $a0, 0x20($t3)
/* 00DD8C 0040DD8C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00DD90 0040DD90 AFA200B4 */  sw          $v0, 0xB4($sp)
/* 00DD94 0040DD94 8F9981AC */  lw          $t9, %call16(ALIGNn)($gp)
/* 00DD98 0040DD98 8FAC00C0 */  lw          $t4, 0xC0($sp)
/* 00DD9C 0040DD9C 8FA500B4 */  lw          $a1, 0xB4($sp)
/* 00DDA0 0040DDA0 0320F809 */  jalr        $t9
/* 00DDA4 0040DDA4 8D840050 */   lw         $a0, 0x50($t4)
/* 00DDA8 0040DDA8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00DDAC 0040DDAC AFA200B4 */  sw          $v0, 0xB4($sp)
/* 00DDB0 0040DDB0 8FAD00B4 */  lw          $t5, 0xB4($sp)
/* 00DDB4 0040DDB4 8FAF00C0 */  lw          $t7, 0xC0($sp)
/* 00DDB8 0040DDB8 ADED0010 */  sw          $t5, 0x10($t7)
/* 00DDBC 0040DDBC 10000003 */  b           .L0040DDCC
/* 00DDC0 0040DDC0 00001025 */   move       $v0, $zero
/* 00DDC4 0040DDC4 10000001 */  b           .L0040DDCC
/* 00DDC8 0040DDC8 00000000 */   nop
.L0040DDCC:
/* 00DDCC 0040DDCC 8FBF001C */  lw          $ra, 0x1C($sp)
/* 00DDD0 0040DDD0 8FB00014 */  lw          $s0, 0x14($sp)
/* 00DDD4 0040DDD4 27BD00C0 */  addiu       $sp, $sp, 0xC0
/* 00DDD8 0040DDD8 03E00008 */  jr          $ra
/* 00DDDC 0040DDDC 00000000 */   nop
