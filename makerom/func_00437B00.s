glabel func_00437B00 # 616
# _gp_disp: 0xFBE6240
.set noreorder; .cpload $t9; # .set reorder
/* 037B0C 00437B0C 27BDFF28 */  addiu       $sp, $sp, -0xD8
/* 037B10 00437B10 8F9984F8 */  lw          $t9, %call16(file_symbol)($gp)
/* 037B14 00437B14 AFB30028 */  sw          $s3, 0x28($sp)
/* 037B18 00437B18 00A09825 */  move        $s3, $a1
/* 037B1C 00437B1C AFBF0044 */  sw          $ra, 0x44($sp)
/* 037B20 00437B20 AFB70038 */  sw          $s7, 0x38($sp)
/* 037B24 00437B24 AFB20024 */  sw          $s2, 0x24($sp)
/* 037B28 00437B28 00809025 */  move        $s2, $a0
/* 037B2C 00437B2C 00C0B825 */  move        $s7, $a2
/* 037B30 00437B30 AFBE0040 */  sw          $fp, 0x40($sp)
/* 037B34 00437B34 AFBC003C */  sw          $gp, 0x3C($sp)
/* 037B38 00437B38 AFB60034 */  sw          $s6, 0x34($sp)
/* 037B3C 00437B3C AFB50030 */  sw          $s5, 0x30($sp)
/* 037B40 00437B40 AFB4002C */  sw          $s4, 0x2C($sp)
/* 037B44 00437B44 AFB10020 */  sw          $s1, 0x20($sp)
/* 037B48 00437B48 AFB0001C */  sw          $s0, 0x1C($sp)
/* 037B4C 00437B4C AFA700E4 */  sw          $a3, 0xE4($sp)
/* 037B50 00437B50 0320F809 */  jalr        $t9
/* 037B54 00437B54 00C02825 */   move       $a1, $a2
/* 037B58 00437B58 2401FFFF */  addiu       $at, $zero, -0x1
/* 037B5C 00437B5C 8FBC003C */  lw          $gp, 0x3C($sp)
/* 037B60 00437B60 14410003 */  bne         $v0, $at, .L00437B70
/* 037B64 00437B64 AFA200D4 */   sw         $v0, 0xD4($sp)
/* 037B68 00437B68 100000C9 */  b           .L00437E90
/* 037B6C 00437B6C 2402FFFF */   addiu      $v0, $zero, -0x1
.L00437B70:
/* 037B70 00437B70 8F998560 */  lw          $t9, %call16(symbol_type)($gp)
/* 037B74 00437B74 02402025 */  move        $a0, $s2
/* 037B78 00437B78 02602825 */  move        $a1, $s3
/* 037B7C 00437B7C 0320F809 */  jalr        $t9
/* 037B80 00437B80 00000000 */   nop
/* 037B84 00437B84 8FBC003C */  lw          $gp, 0x3C($sp)
/* 037B88 00437B88 0040B025 */  move        $s6, $v0
/* 037B8C 00437B8C 02402025 */  move        $a0, $s2
/* 037B90 00437B90 8F99857C */  lw          $t9, %call16(file_end_symbol)($gp)
/* 037B94 00437B94 02E02825 */  move        $a1, $s7
/* 037B98 00437B98 02603025 */  move        $a2, $s3
/* 037B9C 00437B9C 0320F809 */  jalr        $t9
/* 037BA0 00437BA0 00000000 */   nop
/* 037BA4 00437BA4 2401FFFF */  addiu       $at, $zero, -0x1
/* 037BA8 00437BA8 14410003 */  bne         $v0, $at, .L00437BB8
/* 037BAC 00437BAC 8FBC003C */   lw         $gp, 0x3C($sp)
/* 037BB0 00437BB0 100000B7 */  b           .L00437E90
/* 037BB4 00437BB4 2402FFFF */   addiu      $v0, $zero, -0x1
.L00437BB8:
/* 037BB8 00437BB8 8FAE00D4 */  lw          $t6, 0xD4($sp)
/* 037BBC 00437BBC 2453FFFF */  addiu       $s3, $v0, -0x1
/* 037BC0 00437BC0 241E0007 */  addiu       $fp, $zero, 0x7
/* 037BC4 00437BC4 01D3082B */  sltu        $at, $t6, $s3
/* 037BC8 00437BC8 102000B0 */  beqz        $at, .L00437E8C
/* 037BCC 00437BCC 2415000B */   addiu      $s5, $zero, 0xB
.L00437BD0:
/* 037BD0 00437BD0 8F998560 */  lw          $t9, %call16(symbol_type)($gp)
/* 037BD4 00437BD4 02402025 */  move        $a0, $s2
/* 037BD8 00437BD8 02602825 */  move        $a1, $s3
/* 037BDC 00437BDC 0320F809 */  jalr        $t9
/* 037BE0 00437BE0 00000000 */   nop
/* 037BE4 00437BE4 8FBC003C */  lw          $gp, 0x3C($sp)
/* 037BE8 00437BE8 0040A025 */  move        $s4, $v0
/* 037BEC 00437BEC 02402025 */  move        $a0, $s2
/* 037BF0 00437BF0 8F998020 */  lw          $t9, %got(func_004374C0)($gp)
/* 037BF4 00437BF4 02E02825 */  move        $a1, $s7
/* 037BF8 00437BF8 02603025 */  move        $a2, $s3
/* 037BFC 00437BFC 273974C0 */  addiu       $t9, $t9, %lo(func_004374C0)
/* 037C00 00437C00 0320F809 */  jalr        $t9
/* 037C04 00437C04 00000000 */   nop
/* 037C08 00437C08 8FBC003C */  lw          $gp, 0x3C($sp)
/* 037C0C 00437C0C 00402025 */  move        $a0, $v0
/* 037C10 00437C10 8FA500E4 */  lw          $a1, 0xE4($sp)
/* 037C14 00437C14 8F9985A8 */  lw          $t9, %call16(case_streq)($gp)
/* 037C18 00437C18 8FA600E8 */  lw          $a2, 0xE8($sp)
/* 037C1C 00437C1C 0320F809 */  jalr        $t9
/* 037C20 00437C20 00000000 */   nop
/* 037C24 00437C24 10400031 */  beqz        $v0, .L00437CEC
/* 037C28 00437C28 8FBC003C */   lw         $gp, 0x3C($sp)
/* 037C2C 00437C2C 56800009 */  bnel        $s4, $zero, .L00437C54
/* 037C30 00437C30 24010008 */   addiu      $at, $zero, 0x8
/* 037C34 00437C34 8F99855C */  lw          $t9, %call16(symbol_class)($gp)
/* 037C38 00437C38 02402025 */  move        $a0, $s2
/* 037C3C 00437C3C 02602825 */  move        $a1, $s3
/* 037C40 00437C40 0320F809 */  jalr        $t9
/* 037C44 00437C44 00000000 */   nop
/* 037C48 00437C48 1040008B */  beqz        $v0, .L00437E78
/* 037C4C 00437C4C 8FBC003C */   lw         $gp, 0x3C($sp)
/* 037C50 00437C50 24010008 */  addiu       $at, $zero, 0x8
.L00437C54:
/* 037C54 00437C54 16810009 */  bne         $s4, $at, .L00437C7C
/* 037C58 00437C58 02608825 */   move       $s1, $s3
/* 037C5C 00437C5C 8F998574 */  lw          $t9, %call16(file_symbol_isym)($gp)
/* 037C60 00437C60 02402025 */  move        $a0, $s2
/* 037C64 00437C64 02E02825 */  move        $a1, $s7
/* 037C68 00437C68 0320F809 */  jalr        $t9
/* 037C6C 00437C6C 02603025 */   move       $a2, $s3
/* 037C70 00437C70 8FBC003C */  lw          $gp, 0x3C($sp)
/* 037C74 00437C74 10000001 */  b           .L00437C7C
/* 037C78 00437C78 00408825 */   move       $s1, $v0
.L00437C7C:
/* 037C7C 00437C7C 8F998560 */  lw          $t9, %call16(symbol_type)($gp)
/* 037C80 00437C80 02402025 */  move        $a0, $s2
/* 037C84 00437C84 02202825 */  move        $a1, $s1
/* 037C88 00437C88 0320F809 */  jalr        $t9
/* 037C8C 00437C8C 00000000 */   nop
/* 037C90 00437C90 8FBC003C */  lw          $gp, 0x3C($sp)
/* 037C94 00437C94 00408025 */  move        $s0, $v0
/* 037C98 00437C98 02402025 */  move        $a0, $s2
/* 037C9C 00437C9C 8F99855C */  lw          $t9, %call16(symbol_class)($gp)
/* 037CA0 00437CA0 02202825 */  move        $a1, $s1
/* 037CA4 00437CA4 0320F809 */  jalr        $t9
/* 037CA8 00437CA8 00000000 */   nop
/* 037CAC 00437CAC 8FAF00EC */  lw          $t7, 0xEC($sp)
/* 037CB0 00437CB0 8FBC003C */  lw          $gp, 0x3C($sp)
/* 037CB4 00437CB4 11E00007 */  beqz        $t7, .L00437CD4
/* 037CB8 00437CB8 00000000 */   nop
/* 037CBC 00437CBC 561E000C */  bnel        $s0, $fp, .L00437CF0
/* 037CC0 00437CC0 24010008 */   addiu      $at, $zero, 0x8
/* 037CC4 00437CC4 5455000A */  bnel        $v0, $s5, .L00437CF0
/* 037CC8 00437CC8 24010008 */   addiu      $at, $zero, 0x8
/* 037CCC 00437CCC 10000070 */  b           .L00437E90
/* 037CD0 00437CD0 02201025 */   move       $v0, $s1
.L00437CD4:
/* 037CD4 00437CD4 161E0003 */  bne         $s0, $fp, .L00437CE4
/* 037CD8 00437CD8 00000000 */   nop
/* 037CDC 00437CDC 50550004 */  beql        $v0, $s5, .L00437CF0
/* 037CE0 00437CE0 24010008 */   addiu      $at, $zero, 0x8
.L00437CE4:
/* 037CE4 00437CE4 1000006A */  b           .L00437E90
/* 037CE8 00437CE8 02201025 */   move       $v0, $s1
.L00437CEC:
/* 037CEC 00437CEC 24010008 */  addiu       $at, $zero, 0x8
.L00437CF0:
/* 037CF0 00437CF0 5681003A */  bnel        $s4, $at, .L00437DDC
/* 037CF4 00437CF4 24010002 */   addiu      $at, $zero, 0x2
/* 037CF8 00437CF8 8F998574 */  lw          $t9, %call16(file_symbol_isym)($gp)
/* 037CFC 00437CFC 02402025 */  move        $a0, $s2
/* 037D00 00437D00 02E02825 */  move        $a1, $s7
/* 037D04 00437D04 0320F809 */  jalr        $t9
/* 037D08 00437D08 02603025 */   move       $a2, $s3
/* 037D0C 00437D0C 8FBC003C */  lw          $gp, 0x3C($sp)
/* 037D10 00437D10 00408025 */  move        $s0, $v0
/* 037D14 00437D14 02402025 */  move        $a0, $s2
/* 037D18 00437D18 8F998560 */  lw          $t9, %call16(symbol_type)($gp)
/* 037D1C 00437D1C 00402825 */  move        $a1, $v0
/* 037D20 00437D20 0320F809 */  jalr        $t9
/* 037D24 00437D24 00000000 */   nop
/* 037D28 00437D28 145E001A */  bne         $v0, $fp, .L00437D94
/* 037D2C 00437D2C 8FBC003C */   lw         $gp, 0x3C($sp)
/* 037D30 00437D30 8F99855C */  lw          $t9, %call16(symbol_class)($gp)
/* 037D34 00437D34 02402025 */  move        $a0, $s2
/* 037D38 00437D38 02002825 */  move        $a1, $s0
/* 037D3C 00437D3C 0320F809 */  jalr        $t9
/* 037D40 00437D40 00000000 */   nop
/* 037D44 00437D44 14550013 */  bne         $v0, $s5, .L00437D94
/* 037D48 00437D48 8FBC003C */   lw         $gp, 0x3C($sp)
/* 037D4C 00437D4C 8F998560 */  lw          $t9, %call16(symbol_type)($gp)
/* 037D50 00437D50 26110001 */  addiu       $s1, $s0, 0x1
/* 037D54 00437D54 02202825 */  move        $a1, $s1
/* 037D58 00437D58 0320F809 */  jalr        $t9
/* 037D5C 00437D5C 02402025 */   move       $a0, $s2
/* 037D60 00437D60 24010009 */  addiu       $at, $zero, 0x9
/* 037D64 00437D64 1441000B */  bne         $v0, $at, .L00437D94
/* 037D68 00437D68 8FBC003C */   lw         $gp, 0x3C($sp)
/* 037D6C 00437D6C 8F998020 */  lw          $t9, %got(func_00437628)($gp)
/* 037D70 00437D70 02402025 */  move        $a0, $s2
/* 037D74 00437D74 02E02825 */  move        $a1, $s7
/* 037D78 00437D78 27397628 */  addiu       $t9, $t9, %lo(func_00437628)
/* 037D7C 00437D7C 0320F809 */  jalr        $t9
/* 037D80 00437D80 02003025 */   move       $a2, $s0
/* 037D84 00437D84 1440003C */  bnez        $v0, .L00437E78
/* 037D88 00437D88 8FBC003C */   lw         $gp, 0x3C($sp)
/* 037D8C 00437D8C 1000003A */  b           .L00437E78
/* 037D90 00437D90 02209825 */   move       $s3, $s1
.L00437D94:
/* 037D94 00437D94 24010006 */  addiu       $at, $zero, 0x6
/* 037D98 00437D98 12C10007 */  beq         $s6, $at, .L00437DB8
/* 037D9C 00437D9C 2401000E */   addiu      $at, $zero, 0xE
/* 037DA0 00437DA0 12C10005 */  beq         $s6, $at, .L00437DB8
/* 037DA4 00437DA4 00000000 */   nop
/* 037DA8 00437DA8 12D50003 */  beq         $s6, $s5, .L00437DB8
/* 037DAC 00437DAC 00000000 */   nop
/* 037DB0 00437DB0 10000031 */  b           .L00437E78
/* 037DB4 00437DB4 02009825 */   move       $s3, $s0
.L00437DB8:
/* 037DB8 00437DB8 8F998560 */  lw          $t9, %call16(symbol_type)($gp)
/* 037DBC 00437DBC 02402025 */  move        $a0, $s2
/* 037DC0 00437DC0 02002825 */  move        $a1, $s0
/* 037DC4 00437DC4 0320F809 */  jalr        $t9
/* 037DC8 00437DC8 00000000 */   nop
/* 037DCC 00437DCC 8FBC003C */  lw          $gp, 0x3C($sp)
/* 037DD0 00437DD0 10000029 */  b           .L00437E78
/* 037DD4 00437DD4 0040B025 */   move       $s6, $v0
/* 037DD8 00437DD8 24010002 */  addiu       $at, $zero, 0x2
.L00437DDC:
/* 037DDC 00437DDC 56810027 */  bnel        $s4, $at, .L00437E7C
/* 037DE0 00437DE0 8FB900D4 */   lw         $t9, 0xD4($sp)
/* 037DE4 00437DE4 8F99855C */  lw          $t9, %call16(symbol_class)($gp)
/* 037DE8 00437DE8 02402025 */  move        $a0, $s2
/* 037DEC 00437DEC 02602825 */  move        $a1, $s3
/* 037DF0 00437DF0 0320F809 */  jalr        $t9
/* 037DF4 00437DF4 00000000 */   nop
/* 037DF8 00437DF8 24010011 */  addiu       $at, $zero, 0x11
/* 037DFC 00437DFC 1441001E */  bne         $v0, $at, .L00437E78
/* 037E00 00437E00 8FBC003C */   lw         $gp, 0x3C($sp)
/* 037E04 00437E04 8F998568 */  lw          $t9, %call16(symbol_iaux)($gp)
/* 037E08 00437E08 02402025 */  move        $a0, $s2
/* 037E0C 00437E0C 02602825 */  move        $a1, $s3
/* 037E10 00437E10 0320F809 */  jalr        $t9
/* 037E14 00437E14 00000000 */   nop
/* 037E18 00437E18 8FBC003C */  lw          $gp, 0x3C($sp)
/* 037E1C 00437E1C AFA20060 */  sw          $v0, 0x60($sp)
/* 037E20 00437E20 AFA0005C */  sw          $zero, 0x5C($sp)
/* 037E24 00437E24 8F9985BC */  lw          $t9, %call16(type_deref)($gp)
/* 037E28 00437E28 02402025 */  move        $a0, $s2
/* 037E2C 00437E2C 27A50058 */  addiu       $a1, $sp, 0x58
/* 037E30 00437E30 0320F809 */  jalr        $t9
/* 037E34 00437E34 00000000 */   nop
/* 037E38 00437E38 8FA5006C */  lw          $a1, 0x6C($sp)
/* 037E3C 00437E3C 2401FFFF */  addiu       $at, $zero, -0x1
/* 037E40 00437E40 8FBC003C */  lw          $gp, 0x3C($sp)
/* 037E44 00437E44 10A1000C */  beq         $a1, $at, .L00437E78
/* 037E48 00437E48 02402025 */   move       $a0, $s2
/* 037E4C 00437E4C 8F99859C */  lw          $t9, %call16(scope_name_search)($gp)
/* 037E50 00437E50 8FB800EC */  lw          $t8, 0xEC($sp)
/* 037E54 00437E54 8FA600E4 */  lw          $a2, 0xE4($sp)
/* 037E58 00437E58 8FA700E8 */  lw          $a3, 0xE8($sp)
/* 037E5C 00437E5C 0320F809 */  jalr        $t9
/* 037E60 00437E60 AFB80010 */   sw         $t8, 0x10($sp)
/* 037E64 00437E64 2401FFFF */  addiu       $at, $zero, -0x1
/* 037E68 00437E68 10410003 */  beq         $v0, $at, .L00437E78
/* 037E6C 00437E6C 8FBC003C */   lw         $gp, 0x3C($sp)
/* 037E70 00437E70 10000008 */  b           .L00437E94
/* 037E74 00437E74 8FBF0044 */   lw         $ra, 0x44($sp)
.L00437E78:
/* 037E78 00437E78 8FB900D4 */  lw          $t9, 0xD4($sp)
.L00437E7C:
/* 037E7C 00437E7C 2673FFFF */  addiu       $s3, $s3, -0x1
/* 037E80 00437E80 0333082B */  sltu        $at, $t9, $s3
/* 037E84 00437E84 1420FF52 */  bnez        $at, .L00437BD0
/* 037E88 00437E88 00000000 */   nop
.L00437E8C:
/* 037E8C 00437E8C 2402FFFF */  addiu       $v0, $zero, -0x1
.L00437E90:
/* 037E90 00437E90 8FBF0044 */  lw          $ra, 0x44($sp)
.L00437E94:
/* 037E94 00437E94 8FB0001C */  lw          $s0, 0x1C($sp)
/* 037E98 00437E98 8FB10020 */  lw          $s1, 0x20($sp)
/* 037E9C 00437E9C 8FB20024 */  lw          $s2, 0x24($sp)
/* 037EA0 00437EA0 8FB30028 */  lw          $s3, 0x28($sp)
/* 037EA4 00437EA4 8FB4002C */  lw          $s4, 0x2C($sp)
/* 037EA8 00437EA8 8FB50030 */  lw          $s5, 0x30($sp)
/* 037EAC 00437EAC 8FB60034 */  lw          $s6, 0x34($sp)
/* 037EB0 00437EB0 8FB70038 */  lw          $s7, 0x38($sp)
/* 037EB4 00437EB4 8FBE0040 */  lw          $fp, 0x40($sp)
/* 037EB8 00437EB8 03E00008 */  jr          $ra
/* 037EBC 00437EBC 27BD00D8 */   addiu      $sp, $sp, 0xD8
