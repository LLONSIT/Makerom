glabel elf_getdata # 112
# _gp_disp: 0xFC00270
.set noreorder; .cpload $t9; # .set reorder
/* 01DADC 0041DADC 27BDFF90 */  addiu       $sp, $sp, -0x70
/* 01DAE0 0041DAE0 AFBF001C */  sw          $ra, 0x1C($sp)
/* 01DAE4 0041DAE4 AFBC0018 */  sw          $gp, 0x18($sp)
/* 01DAE8 0041DAE8 14800003 */  bnez        $a0, .L0041DAF8
/* 01DAEC 0041DAEC 00803025 */   move       $a2, $a0
/* 01DAF0 0041DAF0 100000FC */  b           .L0041DEE4
/* 01DAF4 0041DAF4 00001025 */   move       $v0, $zero
.L0041DAF8:
/* 01DAF8 0041DAF8 54A00004 */  bnel        $a1, $zero, .L0041DB0C
/* 01DAFC 0041DAFC 8CA7001C */   lw         $a3, 0x1C($a1)
/* 01DB00 0041DB00 10000002 */  b           .L0041DB0C
/* 01DB04 0041DB04 8CC70008 */   lw         $a3, 0x8($a2)
/* 01DB08 0041DB08 8CA7001C */  lw          $a3, 0x1C($a1)
.L0041DB0C:
/* 01DB0C 0041DB0C 8CC30018 */  lw          $v1, 0x18($a2)
/* 01DB10 0041DB10 10600005 */  beqz        $v1, .L0041DB28
/* 01DB14 0041DB14 00000000 */   nop
/* 01DB18 0041DB18 8F8186E8 */  lw          $at, %got(_elf_err)($gp)
/* 01DB1C 0041DB1C 00001025 */  move        $v0, $zero
/* 01DB20 0041DB20 100000F0 */  b           .L0041DEE4
/* 01DB24 0041DB24 AC230000 */   sw         $v1, 0x0($at)
.L0041DB28:
/* 01DB28 0041DB28 54E00004 */  bnel        $a3, $zero, .L0041DB3C
/* 01DB2C 0041DB2C 8CEE0018 */   lw         $t6, 0x18($a3)
/* 01DB30 0041DB30 100000EC */  b           .L0041DEE4
/* 01DB34 0041DB34 00001025 */   move       $v0, $zero
/* 01DB38 0041DB38 8CEE0018 */  lw          $t6, 0x18($a3)
.L0041DB3C:
/* 01DB3C 0041DB3C 240F0509 */  addiu       $t7, $zero, 0x509
/* 01DB40 0041DB40 50CE0006 */  beql        $a2, $t6, .L0041DB5C
/* 01DB44 0041DB44 8CF8003C */   lw         $t8, 0x3C($a3)
/* 01DB48 0041DB48 8F8186E8 */  lw          $at, %got(_elf_err)($gp)
/* 01DB4C 0041DB4C 00001025 */  move        $v0, $zero
/* 01DB50 0041DB50 100000E4 */  b           .L0041DEE4
/* 01DB54 0041DB54 AC2F0000 */   sw         $t7, 0x0($at)
/* 01DB58 0041DB58 8CF8003C */  lw          $t8, 0x3C($a3)
.L0041DB5C:
/* 01DB5C 0041DB5C 33190002 */  andi        $t9, $t8, 0x2
/* 01DB60 0041DB60 53200004 */  beql        $t9, $zero, .L0041DB74
/* 01DB64 0041DB64 8CCA0004 */   lw         $t2, 0x4($a2)
/* 01DB68 0041DB68 100000DE */  b           .L0041DEE4
/* 01DB6C 0041DB6C 00E01025 */   move       $v0, $a3
/* 01DB70 0041DB70 8CCA0004 */  lw          $t2, 0x4($a2)
.L0041DB74:
/* 01DB74 0041DB74 8F8B86F0 */  lw          $t3, %got(_elf_work)($gp)
/* 01DB78 0041DB78 AFAA0068 */  sw          $t2, 0x68($sp)
/* 01DB7C 0041DB7C 8CEC0024 */  lw          $t4, 0x24($a3)
/* 01DB80 0041DB80 8D6B0000 */  lw          $t3, 0x0($t3)
/* 01DB84 0041DB84 11800005 */  beqz        $t4, .L0041DB9C
/* 01DB88 0041DB88 ACEB0014 */   sw         $t3, 0x14($a3)
/* 01DB8C 0041DB8C 8CED0028 */  lw          $t5, 0x28($a3)
/* 01DB90 0041DB90 8FB80068 */  lw          $t8, 0x68($sp)
/* 01DB94 0041DB94 55A00007 */  bnel        $t5, $zero, .L0041DBB4
/* 01DB98 0041DB98 8F020048 */   lw         $v0, 0x48($t8)
.L0041DB9C:
/* 01DB9C 0041DB9C 8CEE003C */  lw          $t6, 0x3C($a3)
/* 01DBA0 0041DBA0 00E01025 */  move        $v0, $a3
/* 01DBA4 0041DBA4 35CF0002 */  ori         $t7, $t6, 0x2
/* 01DBA8 0041DBA8 100000CE */  b           .L0041DEE4
/* 01DBAC 0041DBAC ACEF003C */   sw         $t7, 0x3C($a3)
/* 01DBB0 0041DBB0 8F020048 */  lw          $v0, 0x48($t8)
.L0041DBB4:
/* 01DBB4 0041DBB4 24010002 */  addiu       $at, $zero, 0x2
/* 01DBB8 0041DBB8 54410004 */  bnel        $v0, $at, .L0041DBCC
/* 01DBBC 0041DBBC 24010001 */   addiu      $at, $zero, 0x1
/* 01DBC0 0041DBC0 1000000B */  b           .L0041DBF0
/* 01DBC4 0041DBC4 24080001 */   addiu      $t0, $zero, 0x1
/* 01DBC8 0041DBC8 24010001 */  addiu       $at, $zero, 0x1
.L0041DBCC:
/* 01DBCC 0041DBCC 14410003 */  bne         $v0, $at, .L0041DBDC
/* 01DBD0 0041DBD0 00000000 */   nop
/* 01DBD4 0041DBD4 10000006 */  b           .L0041DBF0
/* 01DBD8 0041DBD8 00004025 */   move       $t0, $zero
.L0041DBDC:
/* 01DBDC 0041DBDC 8F8186E8 */  lw          $at, %got(_elf_err)($gp)
/* 01DBE0 0041DBE0 24190505 */  addiu       $t9, $zero, 0x505
/* 01DBE4 0041DBE4 00001025 */  move        $v0, $zero
/* 01DBE8 0041DBE8 100000BE */  b           .L0041DEE4
/* 01DBEC 0041DBEC AC390000 */   sw         $t9, 0x0($at)
.L0041DBF0:
/* 01DBF0 0041DBF0 5100001A */  beql        $t0, $zero, .L0041DC5C
/* 01DBF4 0041DBF4 8CE40004 */   lw         $a0, 0x4($a3)
/* 01DBF8 0041DBF8 8CE40004 */  lw          $a0, 0x4($a3)
/* 01DBFC 0041DBFC 8CC20010 */  lw          $v0, 0x10($a2)
/* 01DC00 0041DC00 1080002D */  beqz        $a0, .L0041DCB8
/* 01DC04 0041DC04 8C4B003C */   lw         $t3, 0x3C($v0)
/* 01DC08 0041DC08 2D610002 */  sltiu       $at, $t3, 0x2
/* 01DC0C 0041DC0C 1420002A */  bnez        $at, .L0041DCB8
/* 01DC10 0041DC10 8FAC0068 */   lw         $t4, 0x68($sp)
/* 01DC14 0041DC14 8F9981C8 */  lw          $t9, %call16(_elf64_fsize)($gp)
/* 01DC18 0041DC18 8D860044 */  lw          $a2, 0x44($t4)
/* 01DC1C 0041DC1C AFA8004C */  sw          $t0, 0x4C($sp)
/* 01DC20 0041DC20 AFA7006C */  sw          $a3, 0x6C($sp)
/* 01DC24 0041DC24 AFAB0044 */  sw          $t3, 0x44($sp)
/* 01DC28 0041DC28 0320F809 */  jalr        $t9
/* 01DC2C 0041DC2C 24050001 */   addiu      $a1, $zero, 0x1
/* 01DC30 0041DC30 8FA30044 */  lw          $v1, 0x44($sp)
/* 01DC34 0041DC34 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01DC38 0041DC38 8FA7006C */  lw          $a3, 0x6C($sp)
/* 01DC3C 0041DC3C 1043001E */  beq         $v0, $v1, .L0041DCB8
/* 01DC40 0041DC40 8FA8004C */   lw         $t0, 0x4C($sp)
/* 01DC44 0041DC44 8F8186E8 */  lw          $at, %got(_elf_err)($gp)
/* 01DC48 0041DC48 240D020C */  addiu       $t5, $zero, 0x20C
/* 01DC4C 0041DC4C 00001025 */  move        $v0, $zero
/* 01DC50 0041DC50 100000A4 */  b           .L0041DEE4
/* 01DC54 0041DC54 AC2D0000 */   sw         $t5, 0x0($at)
/* 01DC58 0041DC58 8CE40004 */  lw          $a0, 0x4($a3)
.L0041DC5C:
/* 01DC5C 0041DC5C 8CC20010 */  lw          $v0, 0x10($a2)
/* 01DC60 0041DC60 10800015 */  beqz        $a0, .L0041DCB8
/* 01DC64 0041DC64 8C430024 */   lw         $v1, 0x24($v0)
/* 01DC68 0041DC68 2C610002 */  sltiu       $at, $v1, 0x2
/* 01DC6C 0041DC6C 14200012 */  bnez        $at, .L0041DCB8
/* 01DC70 0041DC70 8FAE0068 */   lw         $t6, 0x68($sp)
/* 01DC74 0041DC74 8F9981F0 */  lw          $t9, %call16(_elf32_fsize)($gp)
/* 01DC78 0041DC78 8DC60044 */  lw          $a2, 0x44($t6)
/* 01DC7C 0041DC7C AFA8004C */  sw          $t0, 0x4C($sp)
/* 01DC80 0041DC80 AFA7006C */  sw          $a3, 0x6C($sp)
/* 01DC84 0041DC84 AFA30038 */  sw          $v1, 0x38($sp)
/* 01DC88 0041DC88 0320F809 */  jalr        $t9
/* 01DC8C 0041DC8C 24050001 */   addiu      $a1, $zero, 0x1
/* 01DC90 0041DC90 8FA30038 */  lw          $v1, 0x38($sp)
/* 01DC94 0041DC94 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01DC98 0041DC98 8FA7006C */  lw          $a3, 0x6C($sp)
/* 01DC9C 0041DC9C 10430006 */  beq         $v0, $v1, .L0041DCB8
/* 01DCA0 0041DCA0 8FA8004C */   lw         $t0, 0x4C($sp)
/* 01DCA4 0041DCA4 8F8186E8 */  lw          $at, %got(_elf_err)($gp)
/* 01DCA8 0041DCA8 240F020C */  addiu       $t7, $zero, 0x20C
/* 01DCAC 0041DCAC 00001025 */  move        $v0, $zero
/* 01DCB0 0041DCB0 1000008C */  b           .L0041DEE4
/* 01DCB4 0041DCB4 AC2F0000 */   sw         $t7, 0x0($at)
.L0041DCB8:
/* 01DCB8 0041DCB8 8CE30024 */  lw          $v1, 0x24($a3)
/* 01DCBC 0041DCBC 8FB80068 */  lw          $t8, 0x68($sp)
/* 01DCC0 0041DCC0 240B020A */  addiu       $t3, $zero, 0x20A
/* 01DCC4 0041DCC4 0460000B */  bltz        $v1, .L0041DCF4
/* 01DCC8 0041DCC8 00000000 */   nop
/* 01DCCC 0041DCCC 8F040034 */  lw          $a0, 0x34($t8)
/* 01DCD0 0041DCD0 0064082B */  sltu        $at, $v1, $a0
/* 01DCD4 0041DCD4 10200007 */  beqz        $at, .L0041DCF4
/* 01DCD8 0041DCD8 00000000 */   nop
/* 01DCDC 0041DCDC 8CEA0028 */  lw          $t2, 0x28($a3)
/* 01DCE0 0041DCE0 0083C823 */  subu        $t9, $a0, $v1
/* 01DCE4 0041DCE4 8FA40068 */  lw          $a0, 0x68($sp)
/* 01DCE8 0041DCE8 032A082B */  sltu        $at, $t9, $t2
/* 01DCEC 0041DCEC 50200006 */  beql        $at, $zero, .L0041DD08
/* 01DCF0 0041DCF0 8C8D0028 */   lw         $t5, 0x28($a0)
.L0041DCF4:
/* 01DCF4 0041DCF4 8F8186E8 */  lw          $at, %got(_elf_err)($gp)
/* 01DCF8 0041DCF8 00001025 */  move        $v0, $zero
/* 01DCFC 0041DCFC 10000079 */  b           .L0041DEE4
/* 01DD00 0041DD00 AC2B0000 */   sw         $t3, 0x0($at)
/* 01DD04 0041DD04 8C8D0028 */  lw          $t5, 0x28($a0)
.L0041DD08:
/* 01DD08 0041DD08 01A37021 */  addu        $t6, $t5, $v1
/* 01DD0C 0041DD0C AFAE0050 */  sw          $t6, 0x50($sp)
/* 01DD10 0041DD10 8CEF0028 */  lw          $t7, 0x28($a3)
/* 01DD14 0041DD14 AFAF0058 */  sw          $t7, 0x58($sp)
/* 01DD18 0041DD18 8CF80004 */  lw          $t8, 0x4($a3)
/* 01DD1C 0041DD1C AFB80054 */  sw          $t8, 0x54($sp)
/* 01DD20 0041DD20 8C990044 */  lw          $t9, 0x44($a0)
/* 01DD24 0041DD24 AFB90064 */  sw          $t9, 0x64($sp)
/* 01DD28 0041DD28 8F998214 */  lw          $t9, %call16(_elf_vm)($gp)
/* 01DD2C 0041DD2C 8CE60028 */  lw          $a2, 0x28($a3)
/* 01DD30 0041DD30 8CE50024 */  lw          $a1, 0x24($a3)
/* 01DD34 0041DD34 AFA8004C */  sw          $t0, 0x4C($sp)
/* 01DD38 0041DD38 0320F809 */  jalr        $t9
/* 01DD3C 0041DD3C AFA7006C */   sw         $a3, 0x6C($sp)
/* 01DD40 0041DD40 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01DD44 0041DD44 8FA7006C */  lw          $a3, 0x6C($sp)
/* 01DD48 0041DD48 10400003 */  beqz        $v0, .L0041DD58
/* 01DD4C 0041DD4C 8FA8004C */   lw         $t0, 0x4C($sp)
/* 01DD50 0041DD50 10000064 */  b           .L0041DEE4
/* 01DD54 0041DD54 00001025 */   move       $v0, $zero
.L0041DD58:
/* 01DD58 0041DD58 8FA90068 */  lw          $t1, 0x68($sp)
/* 01DD5C 0041DD5C 24030001 */  addiu       $v1, $zero, 0x1
/* 01DD60 0041DD60 24010002 */  addiu       $at, $zero, 0x2
/* 01DD64 0041DD64 8D22000C */  lw          $v0, 0xC($t1)
/* 01DD68 0041DD68 50430006 */  beql        $v0, $v1, .L0041DD84
/* 01DD6C 0041DD6C 8CE30004 */   lw         $v1, 0x4($a3)
/* 01DD70 0041DD70 1041002A */  beq         $v0, $at, .L0041DE1C
/* 01DD74 0041DD74 00000000 */   nop
/* 01DD78 0041DD78 1000003B */  b           .L0041DE68
/* 01DD7C 0041DD7C 00000000 */   nop
/* 01DD80 0041DD80 8CE30004 */  lw          $v1, 0x4($a3)
.L0041DD84:
/* 01DD84 0041DD84 00001025 */  move        $v0, $zero
/* 01DD88 0041DD88 8FAB0058 */  lw          $t3, 0x58($sp)
/* 01DD8C 0041DD8C 2C61000F */  sltiu       $at, $v1, 0xF
/* 01DD90 0041DD90 54200006 */  bnel        $at, $zero, .L0041DDAC
/* 01DD94 0041DD94 8CED0008 */   lw         $t5, 0x8($a3)
/* 01DD98 0041DD98 8F8186E8 */  lw          $at, %got(_elf_err)($gp)
/* 01DD9C 0041DD9C 240A0002 */  addiu       $t2, $zero, 0x2
/* 01DDA0 0041DDA0 10000050 */  b           .L0041DEE4
/* 01DDA4 0041DDA4 AC2A0000 */   sw         $t2, 0x0($at)
/* 01DDA8 0041DDA8 8CED0008 */  lw          $t5, 0x8($a3)
.L0041DDAC:
/* 01DDAC 0041DDAC 016D082B */  sltu        $at, $t3, $t5
/* 01DDB0 0041DDB0 1420001A */  bnez        $at, .L0041DE1C
/* 01DDB4 0041DDB4 00000000 */   nop
/* 01DDB8 0041DDB8 11000007 */  beqz        $t0, .L0041DDD8
/* 01DDBC 0041DDBC 00000000 */   nop
/* 01DDC0 0041DDC0 8F8F802C */  lw          $t7, %got(RO_1001172C)($gp)
/* 01DDC4 0041DDC4 00037080 */  sll         $t6, $v1, 2
/* 01DDC8 0041DDC8 25EF172C */  addiu       $t7, $t7, %lo(RO_1001172C)
/* 01DDCC 0041DDCC 01CFC021 */  addu        $t8, $t6, $t7
/* 01DDD0 0041DDD0 10000006 */  b           .L0041DDEC
/* 01DDD4 0041DDD4 8F020000 */   lw         $v0, 0x0($t8)
.L0041DDD8:
/* 01DDD8 0041DDD8 8F8C802C */  lw          $t4, %got(RO_100116F0)($gp)
/* 01DDDC 0041DDDC 0003C880 */  sll         $t9, $v1, 2
/* 01DDE0 0041DDE0 258C16F0 */  addiu       $t4, $t4, %lo(RO_100116F0)
/* 01DDE4 0041DDE4 032C5021 */  addu        $t2, $t9, $t4
/* 01DDE8 0041DDE8 8D420000 */  lw          $v0, 0x0($t2)
.L0041DDEC:
/* 01DDEC 0041DDEC 8CE30024 */  lw          $v1, 0x24($a3)
/* 01DDF0 0041DDF0 0062001B */  divu        $zero, $v1, $v0
/* 01DDF4 0041DDF4 00005810 */  mfhi        $t3
/* 01DDF8 0041DDF8 14400002 */  bnez        $v0, .L0041DE04
/* 01DDFC 0041DDFC 00000000 */   nop
/* 01DE00 0041DE00 0007000D */  break       7
.L0041DE04:
/* 01DE04 0041DE04 15600005 */  bnez        $t3, .L0041DE1C
/* 01DE08 0041DE08 00000000 */   nop
/* 01DE0C 0041DE0C 8D2D0028 */  lw          $t5, 0x28($t1)
/* 01DE10 0041DE10 01A37021 */  addu        $t6, $t5, $v1
/* 01DE14 0041DE14 10000018 */  b           .L0041DE78
/* 01DE18 0041DE18 ACEE0000 */   sw         $t6, 0x0($a3)
.L0041DE1C:
/* 01DE1C 0041DE1C 8F998064 */  lw          $t9, %call16(malloc)($gp)
/* 01DE20 0041DE20 8CE40008 */  lw          $a0, 0x8($a3)
/* 01DE24 0041DE24 AFA8004C */  sw          $t0, 0x4C($sp)
/* 01DE28 0041DE28 0320F809 */  jalr        $t9
/* 01DE2C 0041DE2C AFA7006C */   sw         $a3, 0x6C($sp)
/* 01DE30 0041DE30 8FA7006C */  lw          $a3, 0x6C($sp)
/* 01DE34 0041DE34 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01DE38 0041DE38 8FA8004C */  lw          $t0, 0x4C($sp)
/* 01DE3C 0041DE3C 14400006 */  bnez        $v0, .L0041DE58
/* 01DE40 0041DE40 ACE20034 */   sw         $v0, 0x34($a3)
/* 01DE44 0041DE44 8F8186E8 */  lw          $at, %got(_elf_err)($gp)
/* 01DE48 0041DE48 240F040A */  addiu       $t7, $zero, 0x40A
/* 01DE4C 0041DE4C 00001025 */  move        $v0, $zero
/* 01DE50 0041DE50 10000024 */  b           .L0041DEE4
/* 01DE54 0041DE54 AC2F0000 */   sw         $t7, 0x0($at)
.L0041DE58:
/* 01DE58 0041DE58 8CF80034 */  lw          $t8, 0x34($a3)
/* 01DE5C 0041DE5C ACF80000 */  sw          $t8, 0x0($a3)
/* 01DE60 0041DE60 10000005 */  b           .L0041DE78
/* 01DE64 0041DE64 8FA90068 */   lw         $t1, 0x68($sp)
.L0041DE68:
/* 01DE68 0041DE68 8F8186E8 */  lw          $at, %got(_elf_err)($gp)
/* 01DE6C 0041DE6C 00001025 */  move        $v0, $zero
/* 01DE70 0041DE70 1000001C */  b           .L0041DEE4
/* 01DE74 0041DE74 AC230000 */   sw         $v1, 0x0($at)
.L0041DE78:
/* 01DE78 0041DE78 1100000C */  beqz        $t0, .L0041DEAC
/* 01DE7C 0041DE7C 00E02025 */   move       $a0, $a3
/* 01DE80 0041DE80 8F9981D8 */  lw          $t9, %call16(_elf64_xlatetom)($gp)
/* 01DE84 0041DE84 8D260040 */  lw          $a2, 0x40($t1)
/* 01DE88 0041DE88 AFA7006C */  sw          $a3, 0x6C($sp)
/* 01DE8C 0041DE8C 00E02025 */  move        $a0, $a3
/* 01DE90 0041DE90 0320F809 */  jalr        $t9
/* 01DE94 0041DE94 27A50050 */   addiu      $a1, $sp, 0x50
/* 01DE98 0041DE98 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01DE9C 0041DE9C 1440000D */  bnez        $v0, .L0041DED4
/* 01DEA0 0041DEA0 8FA7006C */   lw         $a3, 0x6C($sp)
/* 01DEA4 0041DEA4 1000000F */  b           .L0041DEE4
/* 01DEA8 0041DEA8 00001025 */   move       $v0, $zero
.L0041DEAC:
/* 01DEAC 0041DEAC 8F9981FC */  lw          $t9, %call16(_elf32_xlatetom)($gp)
/* 01DEB0 0041DEB0 8D260040 */  lw          $a2, 0x40($t1)
/* 01DEB4 0041DEB4 AFA7006C */  sw          $a3, 0x6C($sp)
/* 01DEB8 0041DEB8 0320F809 */  jalr        $t9
/* 01DEBC 0041DEBC 27A50050 */   addiu      $a1, $sp, 0x50
/* 01DEC0 0041DEC0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01DEC4 0041DEC4 14400003 */  bnez        $v0, .L0041DED4
/* 01DEC8 0041DEC8 8FA7006C */   lw         $a3, 0x6C($sp)
/* 01DECC 0041DECC 10000005 */  b           .L0041DEE4
/* 01DED0 0041DED0 00001025 */   move       $v0, $zero
.L0041DED4:
/* 01DED4 0041DED4 8CF9003C */  lw          $t9, 0x3C($a3)
/* 01DED8 0041DED8 00E01025 */  move        $v0, $a3
/* 01DEDC 0041DEDC 372C0002 */  ori         $t4, $t9, 0x2
/* 01DEE0 0041DEE0 ACEC003C */  sw          $t4, 0x3C($a3)
.L0041DEE4:
/* 01DEE4 0041DEE4 8FBF001C */  lw          $ra, 0x1C($sp)
/* 01DEE8 0041DEE8 27BD0070 */  addiu       $sp, $sp, 0x70
/* 01DEEC 0041DEEC 03E00008 */  jr          $ra
/* 01DEF0 0041DEF0 00000000 */   nop
/* 01DEF4 0041DEF4 00000000 */  nop
/* 01DEF8 0041DEF8 00000000 */  nop
/* 01DEFC 0041DEFC 00000000 */  nop
/* 01DF00 0041DF00 00000000 */  nop
/* 01DF04 0041DF04 00000000 */  nop
/* 01DF08 0041DF08 00000000 */  nop
/* 01DF0C 0041DF0C 00000000 */  nop
