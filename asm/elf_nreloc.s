.section .rodata
glabel STR_10012F30
/* 042F30 10012F30 */ .asciz ".rel.text"
                      .balign 4

glabel STR_10012F3C
/* 042F3C 10012F3C */ .asciz ".rel.data"
                      .balign 4

glabel STR_10012F48
/* 042F48 10012F48 */ .asciz ".rel.rodata"
                      .balign 4

glabel STR_10012F54
/* 042F54 10012F54 */ .asciz ".rel.sdata"
                      .balign 4

glabel STR_10012F60
/* 042F60 10012F60 */ .asciz ".rel.init"
                      .balign 4

glabel STR_10012F6C
/* 042F6C 10012F6C */ .asciz ".rel.fini"
                      .balign 4

glabel STR_10012F78
/* 042F78 10012F78 */ .asciz "0"
                      .balign 4

glabel STR_10012F7C
/* 042F7C 10012F7C */ .asciz "obj_elf.c"
                      .balign 4


.section .text
glabel elf_nreloc # 568
# _gp_disp: 0xFBEBEF4
.set noreorder; .cpload $t9; # .set reorder
/* 031E58 00431E58 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 031E5C 00431E5C 28A10101 */  slti        $at, $a1, 0x101
/* 031E60 00431E60 AFBF001C */  sw          $ra, 0x1C($sp)
/* 031E64 00431E64 AFBC0018 */  sw          $gp, 0x18($sp)
/* 031E68 00431E68 1420000E */  bnez        $at, .L00431EA4
/* 031E6C 00431E6C AFA40030 */   sw         $a0, 0x30($sp)
/* 031E70 00431E70 24010200 */  addiu       $at, $zero, 0x200
/* 031E74 00431E74 10A10028 */  beq         $a1, $at, .L00431F18
/* 031E78 00431E78 24010400 */   addiu      $at, $zero, 0x400
/* 031E7C 00431E7C 10A10032 */  beq         $a1, $at, .L00431F48
/* 031E80 00431E80 3C010100 */   lui        $at, (0x1000000 >> 16)
/* 031E84 00431E84 10A1002C */  beq         $a1, $at, .L00431F38
/* 031E88 00431E88 3C010800 */   lui        $at, (0x8000000 >> 16)
/* 031E8C 00431E8C 10A1002E */  beq         $a1, $at, .L00431F48
/* 031E90 00431E90 3C011000 */   lui        $at, (0x10000000 >> 16)
/* 031E94 00431E94 10A1002C */  beq         $a1, $at, .L00431F48
/* 031E98 00431E98 00000000 */   nop
/* 031E9C 00431E9C 1000002C */  b           .L00431F50
/* 031EA0 00431EA0 00000000 */   nop
.L00431EA4:
/* 031EA4 00431EA4 3C018000 */  lui         $at, (0x80000000 >> 16)
/* 031EA8 00431EA8 10A1001F */  beq         $a1, $at, .L00431F28
/* 031EAC 00431EAC 00000000 */   nop
/* 031EB0 00431EB0 10A0000B */  beqz        $a1, .L00431EE0
/* 031EB4 00431EB4 24010020 */   addiu      $at, $zero, 0x20
/* 031EB8 00431EB8 10A1000B */  beq         $a1, $at, .L00431EE8
/* 031EBC 00431EBC 24010040 */   addiu      $at, $zero, 0x40
/* 031EC0 00431EC0 10A1000D */  beq         $a1, $at, .L00431EF8
/* 031EC4 00431EC4 24010080 */   addiu      $at, $zero, 0x80
/* 031EC8 00431EC8 10A1001F */  beq         $a1, $at, .L00431F48
/* 031ECC 00431ECC 24010100 */   addiu      $at, $zero, 0x100
/* 031ED0 00431ED0 10A1000D */  beq         $a1, $at, .L00431F08
/* 031ED4 00431ED4 00000000 */   nop
/* 031ED8 00431ED8 1000001D */  b           .L00431F50
/* 031EDC 00431EDC 00000000 */   nop
.L00431EE0:
/* 031EE0 00431EE0 10000035 */  b           .L00431FB8
/* 031EE4 00431EE4 00001025 */   move       $v0, $zero
.L00431EE8:
/* 031EE8 00431EE8 8F8E802C */  lw          $t6, %got(STR_10012F30)($gp)
/* 031EEC 00431EEC 25CE2F30 */  addiu       $t6, $t6, %lo(STR_10012F30)
/* 031EF0 00431EF0 1000001F */  b           .L00431F70
/* 031EF4 00431EF4 AFAE0024 */   sw         $t6, 0x24($sp)
.L00431EF8:
/* 031EF8 00431EF8 8F8F802C */  lw          $t7, %got(STR_10012F3C)($gp)
/* 031EFC 00431EFC 25EF2F3C */  addiu       $t7, $t7, %lo(STR_10012F3C)
/* 031F00 00431F00 1000001B */  b           .L00431F70
/* 031F04 00431F04 AFAF0024 */   sw         $t7, 0x24($sp)
.L00431F08:
/* 031F08 00431F08 8F98802C */  lw          $t8, %got(STR_10012F48)($gp)
/* 031F0C 00431F0C 27182F48 */  addiu       $t8, $t8, %lo(STR_10012F48)
/* 031F10 00431F10 10000017 */  b           .L00431F70
/* 031F14 00431F14 AFB80024 */   sw         $t8, 0x24($sp)
.L00431F18:
/* 031F18 00431F18 8F99802C */  lw          $t9, %got(STR_10012F54)($gp)
/* 031F1C 00431F1C 27392F54 */  addiu       $t9, $t9, %lo(STR_10012F54)
/* 031F20 00431F20 10000013 */  b           .L00431F70
/* 031F24 00431F24 AFB90024 */   sw         $t9, 0x24($sp)
.L00431F28:
/* 031F28 00431F28 8F88802C */  lw          $t0, %got(STR_10012F60)($gp)
/* 031F2C 00431F2C 25082F60 */  addiu       $t0, $t0, %lo(STR_10012F60)
/* 031F30 00431F30 1000000F */  b           .L00431F70
/* 031F34 00431F34 AFA80024 */   sw         $t0, 0x24($sp)
.L00431F38:
/* 031F38 00431F38 8F89802C */  lw          $t1, %got(STR_10012F6C)($gp)
/* 031F3C 00431F3C 25292F6C */  addiu       $t1, $t1, %lo(STR_10012F6C)
/* 031F40 00431F40 1000000B */  b           .L00431F70
/* 031F44 00431F44 AFA90024 */   sw         $t1, 0x24($sp)
.L00431F48:
/* 031F48 00431F48 1000001B */  b           .L00431FB8
/* 031F4C 00431F4C 00001025 */   move       $v0, $zero
.L00431F50:
/* 031F50 00431F50 8F998144 */  lw          $t9, %call16(__assert)($gp)
/* 031F54 00431F54 8F84802C */  lw          $a0, %got(STR_10012F78)($gp)
/* 031F58 00431F58 8F85802C */  lw          $a1, %got(STR_10012F7C)($gp)
/* 031F5C 00431F5C 24060122 */  addiu       $a2, $zero, 0x122
/* 031F60 00431F60 24842F78 */  addiu       $a0, $a0, %lo(STR_10012F78)
/* 031F64 00431F64 0320F809 */  jalr        $t9
/* 031F68 00431F68 24A52F7C */   addiu      $a1, $a1, %lo(STR_10012F7C)
/* 031F6C 00431F6C 8FBC0018 */  lw          $gp, 0x18($sp)
.L00431F70:
/* 031F70 00431F70 8F998520 */  lw          $t9, %call16(foreach_section)($gp)
/* 031F74 00431F74 8FA40030 */  lw          $a0, 0x30($sp)
/* 031F78 00431F78 8F858530 */  lw          $a1, %got(find_section_byname)($gp)
/* 031F7C 00431F7C 0320F809 */  jalr        $t9
/* 031F80 00431F80 8FA60024 */   lw         $a2, 0x24($sp)
/* 031F84 00431F84 2401FFFF */  addiu       $at, $zero, -0x1
/* 031F88 00431F88 8FBC0018 */  lw          $gp, 0x18($sp)
/* 031F8C 00431F8C 14410003 */  bne         $v0, $at, .L00431F9C
/* 031F90 00431F90 00401825 */   move       $v1, $v0
/* 031F94 00431F94 10000008 */  b           .L00431FB8
/* 031F98 00431F98 00001025 */   move       $v0, $zero
.L00431F9C:
/* 031F9C 00431F9C 8C6A0014 */  lw          $t2, 0x14($v1)
/* 031FA0 00431FA0 8C6B0024 */  lw          $t3, 0x24($v1)
/* 031FA4 00431FA4 014B001B */  divu        $zero, $t2, $t3
/* 031FA8 00431FA8 00001012 */  mflo        $v0
/* 031FAC 00431FAC 15600002 */  bnez        $t3, .L00431FB8
/* 031FB0 00431FB0 00000000 */   nop
/* 031FB4 00431FB4 0007000D */  break       7
.L00431FB8:
/* 031FB8 00431FB8 8FBF001C */  lw          $ra, 0x1C($sp)
/* 031FBC 00431FBC 27BD0030 */  addiu       $sp, $sp, 0x30
/* 031FC0 00431FC0 03E00008 */  jr          $ra
/* 031FC4 00431FC4 00000000 */   nop
