.section .rodata
glabel STR_1000FA90
/* 03FA90 1000FA90 */ .asciz "w"
                      .balign 4

glabel STR_1000FA94
/* 03FA94 1000FA94 */ .asciz "makerom: %s: cannot create\n"
                      .balign 4

glabel STR_1000FAB0
/* 03FAB0 1000FAB0 */ .asciz "$ignoreoverlaps = true\n\n"
                      .balign 4

glabel STR_1000FACC
/* 03FACC 1000FACC */ .asciz "beginseg\n"
                      .balign 4

glabel STR_1000FAD8
/* 03FAD8 1000FAD8 */ .asciz "\tsegtype LOAD\n"
                      .balign 4

glabel STR_1000FAE8
/* 03FAE8 1000FAE8 */ .asciz "\tsegflags R X\n"
                      .balign 4

glabel STR_1000FAF8
/* 03FAF8 1000FAF8 */ .asciz "\tvaddr 0x%x\n"
                      .balign 4

glabel STR_1000FB08
/* 03FB08 1000FB08 */ .asciz "\tcontents\n"
                      .balign 4

glabel STR_1000FB14
/* 03FB14 1000FB14 */ .asciz "\tbeginscn .%s.text\n"
                      .balign 4

glabel STR_1000FB28
/* 03FB28 1000FB28 */ .asciz "\t\tscntype PROGBITS\n"
                      .balign 4

glabel STR_1000FB3C
/* 03FB3C 1000FB3C */ .asciz "\t\tscnalign %d\n"
                      .balign 4

glabel STR_1000FB4C
/* 03FB4C 1000FB4C */ .asciz "\t\tscnflags ALLOC EXECINSTR\n"
                      .balign 4

glabel STR_1000FB68
/* 03FB68 1000FB68 */ .asciz "\t\tsection .text in object %s\n"
                      .balign 4

glabel STR_1000FB88
/* 03FB88 1000FB88 */ .asciz "\tendscn\n"
                      .balign 4

glabel STR_1000FB94
/* 03FB94 1000FB94 */ .asciz "\tbeginscn .%s.data\n"
                      .balign 4

glabel STR_1000FBA8
/* 03FBA8 1000FBA8 */ .asciz "\t\tscntype PROGBITS\n"
                      .balign 4

glabel STR_1000FBBC
/* 03FBBC 1000FBBC */ .asciz "\t\tscnalign %d\n"
                      .balign 4

glabel STR_1000FBCC
/* 03FBCC 1000FBCC */ .asciz "\t\tscnflags ALLOC WRITE\n"
                      .balign 4

glabel STR_1000FBE4
/* 03FBE4 1000FBE4 */ .asciz "\t\tsection .data in object %s\n"
                      .balign 4

glabel STR_1000FC04
/* 03FC04 1000FC04 */ .asciz "\t\tsection .rodata in object %s\n"
                      .balign 4

glabel STR_1000FC24
/* 03FC24 1000FC24 */ .asciz "\tendscn\n"
                      .balign 4

glabel STR_1000FC30
/* 03FC30 1000FC30 */ .asciz "\tbeginscn .%s.sdata\n"
                      .balign 4

glabel STR_1000FC48
/* 03FC48 1000FC48 */ .asciz "\t\tscntype PROGBITS\n"
                      .balign 4

glabel STR_1000FC5C
/* 03FC5C 1000FC5C */ .asciz "\t\tscnalign %d\n"
                      .balign 4

glabel STR_1000FC6C
/* 03FC6C 1000FC6C */ .asciz "\t\tscnflags GPREL ALLOC WRITE\n"
                      .balign 4

glabel STR_1000FC8C
/* 03FC8C 1000FC8C */ .asciz "\t\tsection .sdata in object %s\n"
                      .balign 4

glabel STR_1000FCAC
/* 03FCAC 1000FCAC */ .asciz "\tendscn\n"
                      .balign 4

glabel STR_1000FCB8
/* 03FCB8 1000FCB8 */ .asciz "\tbeginscn .%s.sbss\n"
                      .balign 4

glabel STR_1000FCCC
/* 03FCCC 1000FCCC */ .asciz "\t\tscntype NOBITS\n"
                      .balign 4

glabel STR_1000FCE0
/* 03FCE0 1000FCE0 */ .asciz "\t\tscnalign %d\n"
                      .balign 4

glabel STR_1000FCF0
/* 03FCF0 1000FCF0 */ .asciz "\t\tscnflags GPREL ALLOC WRITE\n"
                      .balign 4

glabel STR_1000FD10
/* 03FD10 1000FD10 */ .asciz "\t\tsection .sbss in object %s\n"
                      .balign 4

glabel STR_1000FD30
/* 03FD30 1000FD30 */ .asciz "\tendscn\n"
                      .balign 4

glabel STR_1000FD3C
/* 03FD3C 1000FD3C */ .asciz "\tbeginscn .%s.bss\n"
                      .balign 4

glabel STR_1000FD50
/* 03FD50 1000FD50 */ .asciz "\t\tscntype NOBITS\n"
                      .balign 4

glabel STR_1000FD64
/* 03FD64 1000FD64 */ .asciz "\t\tscnalign %d\n"
                      .balign 4

glabel STR_1000FD74
/* 03FD74 1000FD74 */ .asciz "\t\tscnflags ALLOC WRITE\n"
                      .balign 4

glabel STR_1000FD8C
/* 03FD8C 1000FD8C */ .asciz "\t\tsection .bss in object %s\n"
                      .balign 4

glabel STR_1000FDAC
/* 03FDAC 1000FDAC */ .asciz "\tendscn\n"
                      .balign 4

glabel STR_1000FDB8
/* 03FDB8 1000FDB8 */ .asciz "endseg\n"
                      .balign 4

glabel STR_1000FDC0
/* 03FDC0 1000FDC0 */ .asciz "beginseg\n"
                      .balign 4

glabel STR_1000FDCC
/* 03FDCC 1000FDCC */ .asciz "\tsegtype noload\n"
                      .balign 4

glabel STR_1000FDE0
/* 03FDE0 1000FDE0 */ .asciz "\tcontents\n"
                      .balign 4

glabel STR_1000FDEC
/* 03FDEC 1000FDEC */ .asciz "\tdefault\n"
                      .balign 4

glabel STR_1000FDF8
/* 03FDF8 1000FDF8 */ .asciz "\tbeginscn .MIPS.options\n"
                      .balign 4

glabel STR_1000FE14
/* 03FE14 1000FE14 */ .asciz "\t\tscntype 0x7000000d\n"
                      .balign 4

glabel STR_1000FE2C
/* 03FE2C 1000FE2C */ .asciz "\t\tsection .MIPS.options in ldobj\n"
                      .balign 4

glabel STR_1000FE50
/* 03FE50 1000FE50 */ .asciz "\tendscn\n"
                      .balign 4

glabel STR_1000FE5C
/* 03FE5C 1000FE5C */ .asciz "\tbeginscn .reginfo\n"
                      .balign 4

glabel STR_1000FE70
/* 03FE70 1000FE70 */ .asciz "\t\tscntype 0x70000006\n"
                      .balign 4

glabel STR_1000FE88
/* 03FE88 1000FE88 */ .asciz "\t\tsection .reginfo in ldobj\n"
                      .balign 4

glabel STR_1000FEA8
/* 03FEA8 1000FEA8 */ .asciz "\tendscn\n"
                      .balign 4

glabel STR_1000FEB4
/* 03FEB4 1000FEB4 */ .asciz "endseg\n"
                      .balign 4


.section .text
glabel createElspec # 17
# _gp_disp: 0xFC11E30
.set noreorder; .cpload $t9; # .set reorder
/* 00BF1C 0040BF1C 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 00BF20 0040BF20 AFBF001C */  sw          $ra, 0x1C($sp)
/* 00BF24 0040BF24 AFBC0018 */  sw          $gp, 0x18($sp)
/* 00BF28 0040BF28 AFA40030 */  sw          $a0, 0x30($sp)
/* 00BF2C 0040BF2C 8F99807C */  lw          $t9, %call16(fopen)($gp)
/* 00BF30 0040BF30 8FA40030 */  lw          $a0, 0x30($sp)
/* 00BF34 0040BF34 8F85802C */  lw          $a1, %got(STR_1000FA90)($gp)
/* 00BF38 0040BF38 24840014 */  addiu       $a0, $a0, 0x14
/* 00BF3C 0040BF3C 0320F809 */  jalr        $t9
/* 00BF40 0040BF40 24A5FA90 */   addiu      $a1, $a1, %lo(STR_1000FA90)
/* 00BF44 0040BF44 AFA2002C */  sw          $v0, 0x2C($sp)
/* 00BF48 0040BF48 8FAE002C */  lw          $t6, 0x2C($sp)
/* 00BF4C 0040BF4C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00BF50 0040BF50 15C0000C */  bnez        $t6, .L0040BF84
/* 00BF54 0040BF54 00000000 */   nop
/* 00BF58 0040BF58 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00BF5C 0040BF5C 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00BF60 0040BF60 8F85802C */  lw          $a1, %got(STR_1000FA94)($gp)
/* 00BF64 0040BF64 8FA60030 */  lw          $a2, 0x30($sp)
/* 00BF68 0040BF68 24840020 */  addiu       $a0, $a0, 0x20
/* 00BF6C 0040BF6C 24A5FA94 */  addiu       $a1, $a1, %lo(STR_1000FA94)
/* 00BF70 0040BF70 0320F809 */  jalr        $t9
/* 00BF74 0040BF74 24C60014 */   addiu      $a2, $a2, 0x14
/* 00BF78 0040BF78 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00BF7C 0040BF7C 100001AD */  b           .L0040C634
/* 00BF80 0040BF80 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040BF84:
/* 00BF84 0040BF84 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00BF88 0040BF88 8F85802C */  lw          $a1, %got(STR_1000FAB0)($gp)
/* 00BF8C 0040BF8C 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00BF90 0040BF90 0320F809 */  jalr        $t9
/* 00BF94 0040BF94 24A5FAB0 */   addiu      $a1, $a1, %lo(STR_1000FAB0)
/* 00BF98 0040BF98 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00BF9C 0040BF9C 8FAF0030 */  lw          $t7, 0x30($sp)
/* 00BFA0 0040BFA0 8DF80008 */  lw          $t8, 0x8($t7)
/* 00BFA4 0040BFA4 1300014C */  beqz        $t8, .L0040C4D8
/* 00BFA8 0040BFA8 AFB80028 */   sw         $t8, 0x28($sp)
.L0040BFAC:
/* 00BFAC 0040BFAC 8FB90028 */  lw          $t9, 0x28($sp)
/* 00BFB0 0040BFB0 8F280004 */  lw          $t0, 0x4($t9)
/* 00BFB4 0040BFB4 AFA80024 */  sw          $t0, 0x24($sp)
/* 00BFB8 0040BFB8 8FA90024 */  lw          $t1, 0x24($sp)
/* 00BFBC 0040BFBC 8D2A0028 */  lw          $t2, 0x28($t1)
/* 00BFC0 0040BFC0 314B0002 */  andi        $t3, $t2, 0x2
/* 00BFC4 0040BFC4 15600003 */  bnez        $t3, .L0040BFD4
/* 00BFC8 0040BFC8 00000000 */   nop
/* 00BFCC 0040BFCC 1000013E */  b           .L0040C4C8
/* 00BFD0 0040BFD0 00000000 */   nop
.L0040BFD4:
/* 00BFD4 0040BFD4 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00BFD8 0040BFD8 8F85802C */  lw          $a1, %got(STR_1000FACC)($gp)
/* 00BFDC 0040BFDC 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00BFE0 0040BFE0 0320F809 */  jalr        $t9
/* 00BFE4 0040BFE4 24A5FACC */   addiu      $a1, $a1, %lo(STR_1000FACC)
/* 00BFE8 0040BFE8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00BFEC 0040BFEC 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00BFF0 0040BFF0 8F85802C */  lw          $a1, %got(STR_1000FAD8)($gp)
/* 00BFF4 0040BFF4 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00BFF8 0040BFF8 0320F809 */  jalr        $t9
/* 00BFFC 0040BFFC 24A5FAD8 */   addiu      $a1, $a1, %lo(STR_1000FAD8)
/* 00C000 0040C000 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C004 0040C004 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C008 0040C008 8F85802C */  lw          $a1, %got(STR_1000FAE8)($gp)
/* 00C00C 0040C00C 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C010 0040C010 0320F809 */  jalr        $t9
/* 00C014 0040C014 24A5FAE8 */   addiu      $a1, $a1, %lo(STR_1000FAE8)
/* 00C018 0040C018 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C01C 0040C01C 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C020 0040C020 8F85802C */  lw          $a1, %got(STR_1000FAF8)($gp)
/* 00C024 0040C024 8FAC0024 */  lw          $t4, 0x24($sp)
/* 00C028 0040C028 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C02C 0040C02C 24A5FAF8 */  addiu       $a1, $a1, %lo(STR_1000FAF8)
/* 00C030 0040C030 0320F809 */  jalr        $t9
/* 00C034 0040C034 8D860010 */   lw         $a2, 0x10($t4)
/* 00C038 0040C038 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C03C 0040C03C 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C040 0040C040 8F85802C */  lw          $a1, %got(STR_1000FB08)($gp)
/* 00C044 0040C044 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C048 0040C048 0320F809 */  jalr        $t9
/* 00C04C 0040C04C 24A5FB08 */   addiu      $a1, $a1, %lo(STR_1000FB08)
/* 00C050 0040C050 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C054 0040C054 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C058 0040C058 8F85802C */  lw          $a1, %got(STR_1000FB14)($gp)
/* 00C05C 0040C05C 8FAD0024 */  lw          $t5, 0x24($sp)
/* 00C060 0040C060 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C064 0040C064 24A5FB14 */  addiu       $a1, $a1, %lo(STR_1000FB14)
/* 00C068 0040C068 0320F809 */  jalr        $t9
/* 00C06C 0040C06C 8DA60004 */   lw         $a2, 0x4($t5)
/* 00C070 0040C070 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C074 0040C074 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C078 0040C078 8F85802C */  lw          $a1, %got(STR_1000FB28)($gp)
/* 00C07C 0040C07C 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C080 0040C080 0320F809 */  jalr        $t9
/* 00C084 0040C084 24A5FB28 */   addiu      $a1, $a1, %lo(STR_1000FB28)
/* 00C088 0040C088 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C08C 0040C08C 8FAE0024 */  lw          $t6, 0x24($sp)
/* 00C090 0040C090 8DCF004C */  lw          $t7, 0x4C($t6)
/* 00C094 0040C094 11E00009 */  beqz        $t7, .L0040C0BC
/* 00C098 0040C098 00000000 */   nop
/* 00C09C 0040C09C 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C0A0 0040C0A0 8F85802C */  lw          $a1, %got(STR_1000FB3C)($gp)
/* 00C0A4 0040C0A4 8FB80024 */  lw          $t8, 0x24($sp)
/* 00C0A8 0040C0A8 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C0AC 0040C0AC 24A5FB3C */  addiu       $a1, $a1, %lo(STR_1000FB3C)
/* 00C0B0 0040C0B0 0320F809 */  jalr        $t9
/* 00C0B4 0040C0B4 8F06004C */   lw         $a2, 0x4C($t8)
/* 00C0B8 0040C0B8 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040C0BC:
/* 00C0BC 0040C0BC 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C0C0 0040C0C0 8F85802C */  lw          $a1, %got(STR_1000FB4C)($gp)
/* 00C0C4 0040C0C4 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C0C8 0040C0C8 0320F809 */  jalr        $t9
/* 00C0CC 0040C0CC 24A5FB4C */   addiu      $a1, $a1, %lo(STR_1000FB4C)
/* 00C0D0 0040C0D0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C0D4 0040C0D4 8FB90024 */  lw          $t9, 0x24($sp)
/* 00C0D8 0040C0D8 8F280008 */  lw          $t0, 0x8($t9)
/* 00C0DC 0040C0DC 1100000D */  beqz        $t0, .L0040C114
/* 00C0E0 0040C0E0 AFA80020 */   sw         $t0, 0x20($sp)
.L0040C0E4:
/* 00C0E4 0040C0E4 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C0E8 0040C0E8 8F85802C */  lw          $a1, %got(STR_1000FB68)($gp)
/* 00C0EC 0040C0EC 8FA90020 */  lw          $t1, 0x20($sp)
/* 00C0F0 0040C0F0 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C0F4 0040C0F4 24A5FB68 */  addiu       $a1, $a1, %lo(STR_1000FB68)
/* 00C0F8 0040C0F8 0320F809 */  jalr        $t9
/* 00C0FC 0040C0FC 8D260004 */   lw         $a2, 0x4($t1)
/* 00C100 0040C100 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C104 0040C104 8FAA0020 */  lw          $t2, 0x20($sp)
/* 00C108 0040C108 8D4B0000 */  lw          $t3, 0x0($t2)
/* 00C10C 0040C10C 1560FFF5 */  bnez        $t3, .L0040C0E4
/* 00C110 0040C110 AFAB0020 */   sw         $t3, 0x20($sp)
.L0040C114:
/* 00C114 0040C114 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C118 0040C118 8F85802C */  lw          $a1, %got(STR_1000FB88)($gp)
/* 00C11C 0040C11C 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C120 0040C120 0320F809 */  jalr        $t9
/* 00C124 0040C124 24A5FB88 */   addiu      $a1, $a1, %lo(STR_1000FB88)
/* 00C128 0040C128 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C12C 0040C12C 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C130 0040C130 8F85802C */  lw          $a1, %got(STR_1000FB94)($gp)
/* 00C134 0040C134 8FAC0024 */  lw          $t4, 0x24($sp)
/* 00C138 0040C138 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C13C 0040C13C 24A5FB94 */  addiu       $a1, $a1, %lo(STR_1000FB94)
/* 00C140 0040C140 0320F809 */  jalr        $t9
/* 00C144 0040C144 8D860004 */   lw         $a2, 0x4($t4)
/* 00C148 0040C148 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C14C 0040C14C 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C150 0040C150 8F85802C */  lw          $a1, %got(STR_1000FBA8)($gp)
/* 00C154 0040C154 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C158 0040C158 0320F809 */  jalr        $t9
/* 00C15C 0040C15C 24A5FBA8 */   addiu      $a1, $a1, %lo(STR_1000FBA8)
/* 00C160 0040C160 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C164 0040C164 8FAD0024 */  lw          $t5, 0x24($sp)
/* 00C168 0040C168 8DAE0050 */  lw          $t6, 0x50($t5)
/* 00C16C 0040C16C 11C00009 */  beqz        $t6, .L0040C194
/* 00C170 0040C170 00000000 */   nop
/* 00C174 0040C174 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C178 0040C178 8F85802C */  lw          $a1, %got(STR_1000FBBC)($gp)
/* 00C17C 0040C17C 8FAF0024 */  lw          $t7, 0x24($sp)
/* 00C180 0040C180 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C184 0040C184 24A5FBBC */  addiu       $a1, $a1, %lo(STR_1000FBBC)
/* 00C188 0040C188 0320F809 */  jalr        $t9
/* 00C18C 0040C18C 8DE60050 */   lw         $a2, 0x50($t7)
/* 00C190 0040C190 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040C194:
/* 00C194 0040C194 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C198 0040C198 8F85802C */  lw          $a1, %got(STR_1000FBCC)($gp)
/* 00C19C 0040C19C 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C1A0 0040C1A0 0320F809 */  jalr        $t9
/* 00C1A4 0040C1A4 24A5FBCC */   addiu      $a1, $a1, %lo(STR_1000FBCC)
/* 00C1A8 0040C1A8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C1AC 0040C1AC 8FB80024 */  lw          $t8, 0x24($sp)
/* 00C1B0 0040C1B0 8F190008 */  lw          $t9, 0x8($t8)
/* 00C1B4 0040C1B4 13200015 */  beqz        $t9, .L0040C20C
/* 00C1B8 0040C1B8 AFB90020 */   sw         $t9, 0x20($sp)
.L0040C1BC:
/* 00C1BC 0040C1BC 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C1C0 0040C1C0 8F85802C */  lw          $a1, %got(STR_1000FBE4)($gp)
/* 00C1C4 0040C1C4 8FA80020 */  lw          $t0, 0x20($sp)
/* 00C1C8 0040C1C8 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C1CC 0040C1CC 24A5FBE4 */  addiu       $a1, $a1, %lo(STR_1000FBE4)
/* 00C1D0 0040C1D0 0320F809 */  jalr        $t9
/* 00C1D4 0040C1D4 8D060004 */   lw         $a2, 0x4($t0)
/* 00C1D8 0040C1D8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C1DC 0040C1DC 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C1E0 0040C1E0 8F85802C */  lw          $a1, %got(STR_1000FC04)($gp)
/* 00C1E4 0040C1E4 8FA90020 */  lw          $t1, 0x20($sp)
/* 00C1E8 0040C1E8 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C1EC 0040C1EC 24A5FC04 */  addiu       $a1, $a1, %lo(STR_1000FC04)
/* 00C1F0 0040C1F0 0320F809 */  jalr        $t9
/* 00C1F4 0040C1F4 8D260004 */   lw         $a2, 0x4($t1)
/* 00C1F8 0040C1F8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C1FC 0040C1FC 8FAA0020 */  lw          $t2, 0x20($sp)
/* 00C200 0040C200 8D4B0000 */  lw          $t3, 0x0($t2)
/* 00C204 0040C204 1560FFED */  bnez        $t3, .L0040C1BC
/* 00C208 0040C208 AFAB0020 */   sw         $t3, 0x20($sp)
.L0040C20C:
/* 00C20C 0040C20C 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C210 0040C210 8F85802C */  lw          $a1, %got(STR_1000FC24)($gp)
/* 00C214 0040C214 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C218 0040C218 0320F809 */  jalr        $t9
/* 00C21C 0040C21C 24A5FC24 */   addiu      $a1, $a1, %lo(STR_1000FC24)
/* 00C220 0040C220 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C224 0040C224 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C228 0040C228 8F85802C */  lw          $a1, %got(STR_1000FC30)($gp)
/* 00C22C 0040C22C 8FAC0024 */  lw          $t4, 0x24($sp)
/* 00C230 0040C230 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C234 0040C234 24A5FC30 */  addiu       $a1, $a1, %lo(STR_1000FC30)
/* 00C238 0040C238 0320F809 */  jalr        $t9
/* 00C23C 0040C23C 8D860004 */   lw         $a2, 0x4($t4)
/* 00C240 0040C240 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C244 0040C244 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C248 0040C248 8F85802C */  lw          $a1, %got(STR_1000FC48)($gp)
/* 00C24C 0040C24C 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C250 0040C250 0320F809 */  jalr        $t9
/* 00C254 0040C254 24A5FC48 */   addiu      $a1, $a1, %lo(STR_1000FC48)
/* 00C258 0040C258 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C25C 0040C25C 8FAD0024 */  lw          $t5, 0x24($sp)
/* 00C260 0040C260 8DAE0054 */  lw          $t6, 0x54($t5)
/* 00C264 0040C264 11C00009 */  beqz        $t6, .L0040C28C
/* 00C268 0040C268 00000000 */   nop
/* 00C26C 0040C26C 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C270 0040C270 8F85802C */  lw          $a1, %got(STR_1000FC5C)($gp)
/* 00C274 0040C274 8FAF0024 */  lw          $t7, 0x24($sp)
/* 00C278 0040C278 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C27C 0040C27C 24A5FC5C */  addiu       $a1, $a1, %lo(STR_1000FC5C)
/* 00C280 0040C280 0320F809 */  jalr        $t9
/* 00C284 0040C284 8DE60054 */   lw         $a2, 0x54($t7)
/* 00C288 0040C288 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040C28C:
/* 00C28C 0040C28C 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C290 0040C290 8F85802C */  lw          $a1, %got(STR_1000FC6C)($gp)
/* 00C294 0040C294 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C298 0040C298 0320F809 */  jalr        $t9
/* 00C29C 0040C29C 24A5FC6C */   addiu      $a1, $a1, %lo(STR_1000FC6C)
/* 00C2A0 0040C2A0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C2A4 0040C2A4 8FB80024 */  lw          $t8, 0x24($sp)
/* 00C2A8 0040C2A8 8F190008 */  lw          $t9, 0x8($t8)
/* 00C2AC 0040C2AC 1320000D */  beqz        $t9, .L0040C2E4
/* 00C2B0 0040C2B0 AFB90020 */   sw         $t9, 0x20($sp)
.L0040C2B4:
/* 00C2B4 0040C2B4 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C2B8 0040C2B8 8F85802C */  lw          $a1, %got(STR_1000FC8C)($gp)
/* 00C2BC 0040C2BC 8FA80020 */  lw          $t0, 0x20($sp)
/* 00C2C0 0040C2C0 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C2C4 0040C2C4 24A5FC8C */  addiu       $a1, $a1, %lo(STR_1000FC8C)
/* 00C2C8 0040C2C8 0320F809 */  jalr        $t9
/* 00C2CC 0040C2CC 8D060004 */   lw         $a2, 0x4($t0)
/* 00C2D0 0040C2D0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C2D4 0040C2D4 8FA90020 */  lw          $t1, 0x20($sp)
/* 00C2D8 0040C2D8 8D2A0000 */  lw          $t2, 0x0($t1)
/* 00C2DC 0040C2DC 1540FFF5 */  bnez        $t2, .L0040C2B4
/* 00C2E0 0040C2E0 AFAA0020 */   sw         $t2, 0x20($sp)
.L0040C2E4:
/* 00C2E4 0040C2E4 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C2E8 0040C2E8 8F85802C */  lw          $a1, %got(STR_1000FCAC)($gp)
/* 00C2EC 0040C2EC 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C2F0 0040C2F0 0320F809 */  jalr        $t9
/* 00C2F4 0040C2F4 24A5FCAC */   addiu      $a1, $a1, %lo(STR_1000FCAC)
/* 00C2F8 0040C2F8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C2FC 0040C2FC 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C300 0040C300 8F85802C */  lw          $a1, %got(STR_1000FCB8)($gp)
/* 00C304 0040C304 8FAB0024 */  lw          $t3, 0x24($sp)
/* 00C308 0040C308 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C30C 0040C30C 24A5FCB8 */  addiu       $a1, $a1, %lo(STR_1000FCB8)
/* 00C310 0040C310 0320F809 */  jalr        $t9
/* 00C314 0040C314 8D660004 */   lw         $a2, 0x4($t3)
/* 00C318 0040C318 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C31C 0040C31C 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C320 0040C320 8F85802C */  lw          $a1, %got(STR_1000FCCC)($gp)
/* 00C324 0040C324 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C328 0040C328 0320F809 */  jalr        $t9
/* 00C32C 0040C32C 24A5FCCC */   addiu      $a1, $a1, %lo(STR_1000FCCC)
/* 00C330 0040C330 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C334 0040C334 8FAC0024 */  lw          $t4, 0x24($sp)
/* 00C338 0040C338 8D8D0058 */  lw          $t5, 0x58($t4)
/* 00C33C 0040C33C 11A00009 */  beqz        $t5, .L0040C364
/* 00C340 0040C340 00000000 */   nop
/* 00C344 0040C344 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C348 0040C348 8F85802C */  lw          $a1, %got(STR_1000FCE0)($gp)
/* 00C34C 0040C34C 8FAE0024 */  lw          $t6, 0x24($sp)
/* 00C350 0040C350 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C354 0040C354 24A5FCE0 */  addiu       $a1, $a1, %lo(STR_1000FCE0)
/* 00C358 0040C358 0320F809 */  jalr        $t9
/* 00C35C 0040C35C 8DC60058 */   lw         $a2, 0x58($t6)
/* 00C360 0040C360 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040C364:
/* 00C364 0040C364 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C368 0040C368 8F85802C */  lw          $a1, %got(STR_1000FCF0)($gp)
/* 00C36C 0040C36C 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C370 0040C370 0320F809 */  jalr        $t9
/* 00C374 0040C374 24A5FCF0 */   addiu      $a1, $a1, %lo(STR_1000FCF0)
/* 00C378 0040C378 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C37C 0040C37C 8FAF0024 */  lw          $t7, 0x24($sp)
/* 00C380 0040C380 8DF80008 */  lw          $t8, 0x8($t7)
/* 00C384 0040C384 1300000E */  beqz        $t8, .L0040C3C0
/* 00C388 0040C388 AFB80020 */   sw         $t8, 0x20($sp)
.L0040C38C:
/* 00C38C 0040C38C 8FB90020 */  lw          $t9, 0x20($sp)
/* 00C390 0040C390 8F85802C */  lw          $a1, %got(STR_1000FD10)($gp)
/* 00C394 0040C394 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C398 0040C398 8F260004 */  lw          $a2, 0x4($t9)
/* 00C39C 0040C39C 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C3A0 0040C3A0 24A5FD10 */  addiu       $a1, $a1, %lo(STR_1000FD10)
/* 00C3A4 0040C3A4 0320F809 */  jalr        $t9
/* 00C3A8 0040C3A8 00000000 */   nop
/* 00C3AC 0040C3AC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C3B0 0040C3B0 8FA80020 */  lw          $t0, 0x20($sp)
/* 00C3B4 0040C3B4 8D090000 */  lw          $t1, 0x0($t0)
/* 00C3B8 0040C3B8 1520FFF4 */  bnez        $t1, .L0040C38C
/* 00C3BC 0040C3BC AFA90020 */   sw         $t1, 0x20($sp)
.L0040C3C0:
/* 00C3C0 0040C3C0 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C3C4 0040C3C4 8F85802C */  lw          $a1, %got(STR_1000FD30)($gp)
/* 00C3C8 0040C3C8 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C3CC 0040C3CC 0320F809 */  jalr        $t9
/* 00C3D0 0040C3D0 24A5FD30 */   addiu      $a1, $a1, %lo(STR_1000FD30)
/* 00C3D4 0040C3D4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C3D8 0040C3D8 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C3DC 0040C3DC 8F85802C */  lw          $a1, %got(STR_1000FD3C)($gp)
/* 00C3E0 0040C3E0 8FAA0024 */  lw          $t2, 0x24($sp)
/* 00C3E4 0040C3E4 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C3E8 0040C3E8 24A5FD3C */  addiu       $a1, $a1, %lo(STR_1000FD3C)
/* 00C3EC 0040C3EC 0320F809 */  jalr        $t9
/* 00C3F0 0040C3F0 8D460004 */   lw         $a2, 0x4($t2)
/* 00C3F4 0040C3F4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C3F8 0040C3F8 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C3FC 0040C3FC 8F85802C */  lw          $a1, %got(STR_1000FD50)($gp)
/* 00C400 0040C400 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C404 0040C404 0320F809 */  jalr        $t9
/* 00C408 0040C408 24A5FD50 */   addiu      $a1, $a1, %lo(STR_1000FD50)
/* 00C40C 0040C40C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C410 0040C410 8FAB0024 */  lw          $t3, 0x24($sp)
/* 00C414 0040C414 8D6C005C */  lw          $t4, 0x5C($t3)
/* 00C418 0040C418 11800009 */  beqz        $t4, .L0040C440
/* 00C41C 0040C41C 00000000 */   nop
/* 00C420 0040C420 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C424 0040C424 8F85802C */  lw          $a1, %got(STR_1000FD64)($gp)
/* 00C428 0040C428 8FAD0024 */  lw          $t5, 0x24($sp)
/* 00C42C 0040C42C 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C430 0040C430 24A5FD64 */  addiu       $a1, $a1, %lo(STR_1000FD64)
/* 00C434 0040C434 0320F809 */  jalr        $t9
/* 00C438 0040C438 8DA6005C */   lw         $a2, 0x5C($t5)
/* 00C43C 0040C43C 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040C440:
/* 00C440 0040C440 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C444 0040C444 8F85802C */  lw          $a1, %got(STR_1000FD74)($gp)
/* 00C448 0040C448 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C44C 0040C44C 0320F809 */  jalr        $t9
/* 00C450 0040C450 24A5FD74 */   addiu      $a1, $a1, %lo(STR_1000FD74)
/* 00C454 0040C454 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C458 0040C458 8FAE0024 */  lw          $t6, 0x24($sp)
/* 00C45C 0040C45C 8DCF0008 */  lw          $t7, 0x8($t6)
/* 00C460 0040C460 11E0000D */  beqz        $t7, .L0040C498
/* 00C464 0040C464 AFAF0020 */   sw         $t7, 0x20($sp)
.L0040C468:
/* 00C468 0040C468 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C46C 0040C46C 8F85802C */  lw          $a1, %got(STR_1000FD8C)($gp)
/* 00C470 0040C470 8FB80020 */  lw          $t8, 0x20($sp)
/* 00C474 0040C474 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C478 0040C478 24A5FD8C */  addiu       $a1, $a1, %lo(STR_1000FD8C)
/* 00C47C 0040C47C 0320F809 */  jalr        $t9
/* 00C480 0040C480 8F060004 */   lw         $a2, 0x4($t8)
/* 00C484 0040C484 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C488 0040C488 8FB90020 */  lw          $t9, 0x20($sp)
/* 00C48C 0040C48C 8F280000 */  lw          $t0, 0x0($t9)
/* 00C490 0040C490 1500FFF5 */  bnez        $t0, .L0040C468
/* 00C494 0040C494 AFA80020 */   sw         $t0, 0x20($sp)
.L0040C498:
/* 00C498 0040C498 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C49C 0040C49C 8F85802C */  lw          $a1, %got(STR_1000FDAC)($gp)
/* 00C4A0 0040C4A0 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C4A4 0040C4A4 0320F809 */  jalr        $t9
/* 00C4A8 0040C4A8 24A5FDAC */   addiu      $a1, $a1, %lo(STR_1000FDAC)
/* 00C4AC 0040C4AC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C4B0 0040C4B0 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C4B4 0040C4B4 8F85802C */  lw          $a1, %got(STR_1000FDB8)($gp)
/* 00C4B8 0040C4B8 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C4BC 0040C4BC 0320F809 */  jalr        $t9
/* 00C4C0 0040C4C0 24A5FDB8 */   addiu      $a1, $a1, %lo(STR_1000FDB8)
/* 00C4C4 0040C4C4 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040C4C8:
/* 00C4C8 0040C4C8 8FA90028 */  lw          $t1, 0x28($sp)
/* 00C4CC 0040C4CC 8D2A0000 */  lw          $t2, 0x0($t1)
/* 00C4D0 0040C4D0 1540FEB6 */  bnez        $t2, .L0040BFAC
/* 00C4D4 0040C4D4 AFAA0028 */   sw         $t2, 0x28($sp)
.L0040C4D8:
/* 00C4D8 0040C4D8 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C4DC 0040C4DC 8F85802C */  lw          $a1, %got(STR_1000FDC0)($gp)
/* 00C4E0 0040C4E0 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C4E4 0040C4E4 0320F809 */  jalr        $t9
/* 00C4E8 0040C4E8 24A5FDC0 */   addiu      $a1, $a1, %lo(STR_1000FDC0)
/* 00C4EC 0040C4EC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C4F0 0040C4F0 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C4F4 0040C4F4 8F85802C */  lw          $a1, %got(STR_1000FDCC)($gp)
/* 00C4F8 0040C4F8 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C4FC 0040C4FC 0320F809 */  jalr        $t9
/* 00C500 0040C500 24A5FDCC */   addiu      $a1, $a1, %lo(STR_1000FDCC)
/* 00C504 0040C504 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C508 0040C508 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C50C 0040C50C 8F85802C */  lw          $a1, %got(STR_1000FDE0)($gp)
/* 00C510 0040C510 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C514 0040C514 0320F809 */  jalr        $t9
/* 00C518 0040C518 24A5FDE0 */   addiu      $a1, $a1, %lo(STR_1000FDE0)
/* 00C51C 0040C51C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C520 0040C520 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C524 0040C524 8F85802C */  lw          $a1, %got(STR_1000FDEC)($gp)
/* 00C528 0040C528 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C52C 0040C52C 0320F809 */  jalr        $t9
/* 00C530 0040C530 24A5FDEC */   addiu      $a1, $a1, %lo(STR_1000FDEC)
/* 00C534 0040C534 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C538 0040C538 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C53C 0040C53C 8F85802C */  lw          $a1, %got(STR_1000FDF8)($gp)
/* 00C540 0040C540 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C544 0040C544 0320F809 */  jalr        $t9
/* 00C548 0040C548 24A5FDF8 */   addiu      $a1, $a1, %lo(STR_1000FDF8)
/* 00C54C 0040C54C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C550 0040C550 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C554 0040C554 8F85802C */  lw          $a1, %got(STR_1000FE14)($gp)
/* 00C558 0040C558 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C55C 0040C55C 0320F809 */  jalr        $t9
/* 00C560 0040C560 24A5FE14 */   addiu      $a1, $a1, %lo(STR_1000FE14)
/* 00C564 0040C564 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C568 0040C568 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C56C 0040C56C 8F85802C */  lw          $a1, %got(STR_1000FE2C)($gp)
/* 00C570 0040C570 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C574 0040C574 0320F809 */  jalr        $t9
/* 00C578 0040C578 24A5FE2C */   addiu      $a1, $a1, %lo(STR_1000FE2C)
/* 00C57C 0040C57C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C580 0040C580 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C584 0040C584 8F85802C */  lw          $a1, %got(STR_1000FE50)($gp)
/* 00C588 0040C588 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C58C 0040C58C 0320F809 */  jalr        $t9
/* 00C590 0040C590 24A5FE50 */   addiu      $a1, $a1, %lo(STR_1000FE50)
/* 00C594 0040C594 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C598 0040C598 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C59C 0040C59C 8F85802C */  lw          $a1, %got(STR_1000FE5C)($gp)
/* 00C5A0 0040C5A0 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C5A4 0040C5A4 0320F809 */  jalr        $t9
/* 00C5A8 0040C5A8 24A5FE5C */   addiu      $a1, $a1, %lo(STR_1000FE5C)
/* 00C5AC 0040C5AC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C5B0 0040C5B0 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C5B4 0040C5B4 8F85802C */  lw          $a1, %got(STR_1000FE70)($gp)
/* 00C5B8 0040C5B8 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C5BC 0040C5BC 0320F809 */  jalr        $t9
/* 00C5C0 0040C5C0 24A5FE70 */   addiu      $a1, $a1, %lo(STR_1000FE70)
/* 00C5C4 0040C5C4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C5C8 0040C5C8 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C5CC 0040C5CC 8F85802C */  lw          $a1, %got(STR_1000FE88)($gp)
/* 00C5D0 0040C5D0 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C5D4 0040C5D4 0320F809 */  jalr        $t9
/* 00C5D8 0040C5D8 24A5FE88 */   addiu      $a1, $a1, %lo(STR_1000FE88)
/* 00C5DC 0040C5DC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C5E0 0040C5E0 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C5E4 0040C5E4 8F85802C */  lw          $a1, %got(STR_1000FEA8)($gp)
/* 00C5E8 0040C5E8 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C5EC 0040C5EC 0320F809 */  jalr        $t9
/* 00C5F0 0040C5F0 24A5FEA8 */   addiu      $a1, $a1, %lo(STR_1000FEA8)
/* 00C5F4 0040C5F4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C5F8 0040C5F8 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C5FC 0040C5FC 8F85802C */  lw          $a1, %got(STR_1000FEB4)($gp)
/* 00C600 0040C600 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C604 0040C604 0320F809 */  jalr        $t9
/* 00C608 0040C608 24A5FEB4 */   addiu      $a1, $a1, %lo(STR_1000FEB4)
/* 00C60C 0040C60C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C610 0040C610 8F998080 */  lw          $t9, %call16(fclose)($gp)
/* 00C614 0040C614 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00C618 0040C618 0320F809 */  jalr        $t9
/* 00C61C 0040C61C 00000000 */   nop
/* 00C620 0040C620 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C624 0040C624 10000003 */  b           .L0040C634
/* 00C628 0040C628 00001025 */   move       $v0, $zero
/* 00C62C 0040C62C 10000001 */  b           .L0040C634
/* 00C630 0040C630 00000000 */   nop
.L0040C634:
/* 00C634 0040C634 8FBF001C */  lw          $ra, 0x1C($sp)
/* 00C638 0040C638 27BD0030 */  addiu       $sp, $sp, 0x30
/* 00C63C 0040C63C 03E00008 */  jr          $ra
/* 00C640 0040C640 00000000 */   nop
