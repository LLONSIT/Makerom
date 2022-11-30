.section .rodata
glabel STR_10012D50
/* 042D50 10012D50 */ .asciz ".text"
                      .balign 4

glabel STR_10012D58
/* 042D58 10012D58 */ .asciz ".data"
                      .balign 4

glabel STR_10012D60
/* 042D60 10012D60 */ .asciz ".bss"
                      .balign 4

glabel STR_10012D68
/* 042D68 10012D68 */ .asciz ".rodata"
                      .balign 4

glabel STR_10012D70
/* 042D70 10012D70 */ .asciz ".sdata"
                      .balign 4

glabel STR_10012D78
/* 042D78 10012D78 */ .asciz ".sbss"
                      .balign 4

glabel STR_10012D80
/* 042D80 10012D80 */ .asciz ".lit8"
                      .balign 4

glabel STR_10012D88
/* 042D88 10012D88 */ .asciz ".lit4"
                      .balign 4

glabel STR_10012D90
/* 042D90 10012D90 */ .asciz ".init"
                      .balign 4


.section .text
glabel section_type # 557
# _gp_disp: 0xFBEDF04
.set noreorder; .cpload $t9; # .set reorder
/* 02FE48 0042FE48 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 02FE4C 0042FE4C AFBF001C */  sw          $ra, 0x1C($sp)
/* 02FE50 0042FE50 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02FE54 0042FE54 8C82008C */  lw          $v0, 0x8C($a0)
/* 02FE58 0042FE58 24010002 */  addiu       $at, $zero, 0x2
/* 02FE5C 0042FE5C 5441002F */  bnel        $v0, $at, .L0042FF1C
/* 02FE60 0042FE60 24010003 */   addiu      $at, $zero, 0x3
/* 02FE64 0042FE64 8CA20024 */  lw          $v0, 0x24($a1)
/* 02FE68 0042FE68 28410101 */  slti        $at, $v0, 0x101
/* 02FE6C 0042FE6C 1420000B */  bnez        $at, .L0042FE9C
/* 02FE70 0042FE70 24010200 */   addiu      $at, $zero, 0x200
/* 02FE74 0042FE74 1041001E */  beq         $v0, $at, .L0042FEF0
/* 02FE78 0042FE78 24010400 */   addiu      $at, $zero, 0x400
/* 02FE7C 0042FE7C 1041001E */  beq         $v0, $at, .L0042FEF8
/* 02FE80 0042FE80 3C010800 */   lui        $at, (0x8000000 >> 16)
/* 02FE84 0042FE84 1041001E */  beq         $v0, $at, .L0042FF00
/* 02FE88 0042FE88 3C011000 */   lui        $at, (0x10000000 >> 16)
/* 02FE8C 0042FE8C 1041001E */  beq         $v0, $at, .L0042FF08
/* 02FE90 0042FE90 00000000 */   nop
/* 02FE94 0042FE94 10000085 */  b           .L004300AC
/* 02FE98 0042FE98 00001025 */   move       $v0, $zero
.L0042FE9C:
/* 02FE9C 0042FE9C 3C018000 */  lui         $at, (0x80000000 >> 16)
/* 02FEA0 0042FEA0 1041001B */  beq         $v0, $at, .L0042FF10
/* 02FEA4 0042FEA4 24010020 */   addiu      $at, $zero, 0x20
/* 02FEA8 0042FEA8 10410009 */  beq         $v0, $at, .L0042FED0
/* 02FEAC 0042FEAC 24010040 */   addiu      $at, $zero, 0x40
/* 02FEB0 0042FEB0 10410009 */  beq         $v0, $at, .L0042FED8
/* 02FEB4 0042FEB4 24010080 */   addiu      $at, $zero, 0x80
/* 02FEB8 0042FEB8 10410009 */  beq         $v0, $at, .L0042FEE0
/* 02FEBC 0042FEBC 24010100 */   addiu      $at, $zero, 0x100
/* 02FEC0 0042FEC0 10410009 */  beq         $v0, $at, .L0042FEE8
/* 02FEC4 0042FEC4 00000000 */   nop
/* 02FEC8 0042FEC8 10000078 */  b           .L004300AC
/* 02FECC 0042FECC 00001025 */   move       $v0, $zero
.L0042FED0:
/* 02FED0 0042FED0 10000076 */  b           .L004300AC
/* 02FED4 0042FED4 24020001 */   addiu      $v0, $zero, 0x1
.L0042FED8:
/* 02FED8 0042FED8 10000074 */  b           .L004300AC
/* 02FEDC 0042FEDC 24020003 */   addiu      $v0, $zero, 0x3
.L0042FEE0:
/* 02FEE0 0042FEE0 10000072 */  b           .L004300AC
/* 02FEE4 0042FEE4 24020006 */   addiu      $v0, $zero, 0x6
.L0042FEE8:
/* 02FEE8 0042FEE8 10000070 */  b           .L004300AC
/* 02FEEC 0042FEEC 24020002 */   addiu      $v0, $zero, 0x2
.L0042FEF0:
/* 02FEF0 0042FEF0 1000006E */  b           .L004300AC
/* 02FEF4 0042FEF4 24020004 */   addiu      $v0, $zero, 0x4
.L0042FEF8:
/* 02FEF8 0042FEF8 1000006C */  b           .L004300AC
/* 02FEFC 0042FEFC 24020005 */   addiu      $v0, $zero, 0x5
.L0042FF00:
/* 02FF00 0042FF00 1000006A */  b           .L004300AC
/* 02FF04 0042FF04 24020008 */   addiu      $v0, $zero, 0x8
.L0042FF08:
/* 02FF08 0042FF08 10000068 */  b           .L004300AC
/* 02FF0C 0042FF0C 24020009 */   addiu      $v0, $zero, 0x9
.L0042FF10:
/* 02FF10 0042FF10 10000066 */  b           .L004300AC
/* 02FF14 0042FF14 24020007 */   addiu      $v0, $zero, 0x7
/* 02FF18 0042FF18 24010003 */  addiu       $at, $zero, 0x3
.L0042FF1C:
/* 02FF1C 0042FF1C 54410063 */  bnel        $v0, $at, .L004300AC
/* 02FF20 0042FF20 00001025 */   move       $v0, $zero
/* 02FF24 0042FF24 8F998428 */  lw          $t9, %call16(obj_pelfhdr)($gp)
/* 02FF28 0042FF28 AFA40028 */  sw          $a0, 0x28($sp)
/* 02FF2C 0042FF2C AFA5002C */  sw          $a1, 0x2C($sp)
/* 02FF30 0042FF30 0320F809 */  jalr        $t9
/* 02FF34 0042FF34 00000000 */   nop
/* 02FF38 0042FF38 8C4E0020 */  lw          $t6, 0x20($v0)
/* 02FF3C 0042FF3C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02FF40 0042FF40 8FA40028 */  lw          $a0, 0x28($sp)
/* 02FF44 0042FF44 11C00058 */  beqz        $t6, .L004300A8
/* 02FF48 0042FF48 8FA5002C */   lw         $a1, 0x2C($sp)
/* 02FF4C 0042FF4C 8F99844C */  lw          $t9, %call16(obj_section_name)($gp)
/* 02FF50 0042FF50 0320F809 */  jalr        $t9
/* 02FF54 0042FF54 00000000 */   nop
/* 02FF58 0042FF58 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02FF5C 0042FF5C 10400052 */  beqz        $v0, .L004300A8
/* 02FF60 0042FF60 00402025 */   move       $a0, $v0
/* 02FF64 0042FF64 8F9980A8 */  lw          $t9, %call16(strcmp)($gp)
/* 02FF68 0042FF68 8F85802C */  lw          $a1, %got(STR_10012D50)($gp)
/* 02FF6C 0042FF6C AFA20020 */  sw          $v0, 0x20($sp)
/* 02FF70 0042FF70 0320F809 */  jalr        $t9
/* 02FF74 0042FF74 24A52D50 */   addiu      $a1, $a1, %lo(STR_10012D50)
/* 02FF78 0042FF78 14400003 */  bnez        $v0, .L0042FF88
/* 02FF7C 0042FF7C 8FBC0018 */   lw         $gp, 0x18($sp)
/* 02FF80 0042FF80 1000004A */  b           .L004300AC
/* 02FF84 0042FF84 24020001 */   addiu      $v0, $zero, 0x1
.L0042FF88:
/* 02FF88 0042FF88 8F9980A8 */  lw          $t9, %call16(strcmp)($gp)
/* 02FF8C 0042FF8C 8F85802C */  lw          $a1, %got(STR_10012D58)($gp)
/* 02FF90 0042FF90 8FA40020 */  lw          $a0, 0x20($sp)
/* 02FF94 0042FF94 0320F809 */  jalr        $t9
/* 02FF98 0042FF98 24A52D58 */   addiu      $a1, $a1, %lo(STR_10012D58)
/* 02FF9C 0042FF9C 14400003 */  bnez        $v0, .L0042FFAC
/* 02FFA0 0042FFA0 8FBC0018 */   lw         $gp, 0x18($sp)
/* 02FFA4 0042FFA4 10000041 */  b           .L004300AC
/* 02FFA8 0042FFA8 24020003 */   addiu      $v0, $zero, 0x3
.L0042FFAC:
/* 02FFAC 0042FFAC 8F9980A8 */  lw          $t9, %call16(strcmp)($gp)
/* 02FFB0 0042FFB0 8F85802C */  lw          $a1, %got(STR_10012D60)($gp)
/* 02FFB4 0042FFB4 8FA40020 */  lw          $a0, 0x20($sp)
/* 02FFB8 0042FFB8 0320F809 */  jalr        $t9
/* 02FFBC 0042FFBC 24A52D60 */   addiu      $a1, $a1, %lo(STR_10012D60)
/* 02FFC0 0042FFC0 14400003 */  bnez        $v0, .L0042FFD0
/* 02FFC4 0042FFC4 8FBC0018 */   lw         $gp, 0x18($sp)
/* 02FFC8 0042FFC8 10000038 */  b           .L004300AC
/* 02FFCC 0042FFCC 24020006 */   addiu      $v0, $zero, 0x6
.L0042FFD0:
/* 02FFD0 0042FFD0 8F9980A8 */  lw          $t9, %call16(strcmp)($gp)
/* 02FFD4 0042FFD4 8F85802C */  lw          $a1, %got(STR_10012D68)($gp)
/* 02FFD8 0042FFD8 8FA40020 */  lw          $a0, 0x20($sp)
/* 02FFDC 0042FFDC 0320F809 */  jalr        $t9
/* 02FFE0 0042FFE0 24A52D68 */   addiu      $a1, $a1, %lo(STR_10012D68)
/* 02FFE4 0042FFE4 14400003 */  bnez        $v0, .L0042FFF4
/* 02FFE8 0042FFE8 8FBC0018 */   lw         $gp, 0x18($sp)
/* 02FFEC 0042FFEC 1000002F */  b           .L004300AC
/* 02FFF0 0042FFF0 24020002 */   addiu      $v0, $zero, 0x2
.L0042FFF4:
/* 02FFF4 0042FFF4 8F9980A8 */  lw          $t9, %call16(strcmp)($gp)
/* 02FFF8 0042FFF8 8F85802C */  lw          $a1, %got(STR_10012D70)($gp)
/* 02FFFC 0042FFFC 8FA40020 */  lw          $a0, 0x20($sp)
/* 030000 00430000 0320F809 */  jalr        $t9
/* 030004 00430004 24A52D70 */   addiu      $a1, $a1, %lo(STR_10012D70)
/* 030008 00430008 14400003 */  bnez        $v0, .L00430018
/* 03000C 0043000C 8FBC0018 */   lw         $gp, 0x18($sp)
/* 030010 00430010 10000026 */  b           .L004300AC
/* 030014 00430014 24020004 */   addiu      $v0, $zero, 0x4
.L00430018:
/* 030018 00430018 8F9980A8 */  lw          $t9, %call16(strcmp)($gp)
/* 03001C 0043001C 8F85802C */  lw          $a1, %got(STR_10012D78)($gp)
/* 030020 00430020 8FA40020 */  lw          $a0, 0x20($sp)
/* 030024 00430024 0320F809 */  jalr        $t9
/* 030028 00430028 24A52D78 */   addiu      $a1, $a1, %lo(STR_10012D78)
/* 03002C 0043002C 14400003 */  bnez        $v0, .L0043003C
/* 030030 00430030 8FBC0018 */   lw         $gp, 0x18($sp)
/* 030034 00430034 1000001D */  b           .L004300AC
/* 030038 00430038 24020005 */   addiu      $v0, $zero, 0x5
.L0043003C:
/* 03003C 0043003C 8F9980A8 */  lw          $t9, %call16(strcmp)($gp)
/* 030040 00430040 8F85802C */  lw          $a1, %got(STR_10012D80)($gp)
/* 030044 00430044 8FA40020 */  lw          $a0, 0x20($sp)
/* 030048 00430048 0320F809 */  jalr        $t9
/* 03004C 0043004C 24A52D80 */   addiu      $a1, $a1, %lo(STR_10012D80)
/* 030050 00430050 14400003 */  bnez        $v0, .L00430060
/* 030054 00430054 8FBC0018 */   lw         $gp, 0x18($sp)
/* 030058 00430058 10000014 */  b           .L004300AC
/* 03005C 0043005C 24020008 */   addiu      $v0, $zero, 0x8
.L00430060:
/* 030060 00430060 8F9980A8 */  lw          $t9, %call16(strcmp)($gp)
/* 030064 00430064 8F85802C */  lw          $a1, %got(STR_10012D88)($gp)
/* 030068 00430068 8FA40020 */  lw          $a0, 0x20($sp)
/* 03006C 0043006C 0320F809 */  jalr        $t9
/* 030070 00430070 24A52D88 */   addiu      $a1, $a1, %lo(STR_10012D88)
/* 030074 00430074 14400003 */  bnez        $v0, .L00430084
/* 030078 00430078 8FBC0018 */   lw         $gp, 0x18($sp)
/* 03007C 0043007C 1000000B */  b           .L004300AC
/* 030080 00430080 24020009 */   addiu      $v0, $zero, 0x9
.L00430084:
/* 030084 00430084 8F9980A8 */  lw          $t9, %call16(strcmp)($gp)
/* 030088 00430088 8F85802C */  lw          $a1, %got(STR_10012D90)($gp)
/* 03008C 0043008C 8FA40020 */  lw          $a0, 0x20($sp)
/* 030090 00430090 0320F809 */  jalr        $t9
/* 030094 00430094 24A52D90 */   addiu      $a1, $a1, %lo(STR_10012D90)
/* 030098 00430098 14400003 */  bnez        $v0, .L004300A8
/* 03009C 0043009C 8FBC0018 */   lw         $gp, 0x18($sp)
/* 0300A0 004300A0 10000002 */  b           .L004300AC
/* 0300A4 004300A4 24020007 */   addiu      $v0, $zero, 0x7
.L004300A8:
/* 0300A8 004300A8 00001025 */  move        $v0, $zero
.L004300AC:
/* 0300AC 004300AC 8FBF001C */  lw          $ra, 0x1C($sp)
/* 0300B0 004300B0 27BD0028 */  addiu       $sp, $sp, 0x28
/* 0300B4 004300B4 03E00008 */  jr          $ra
/* 0300B8 004300B8 00000000 */   nop
