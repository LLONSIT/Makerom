.section .rodata
glabel STR_1001341C
/* 04341C 1001341C */ .asciz "!obj_shared(obj) || ((obj_text_size(obj) + incr) <= MAXTSZ)"
                      .balign 4

glabel STR_10013458
/* 043458 10013458 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_10013468
/* 043468 10013468 */ .asciz "ptmp_aohdr->text_start"
                      .balign 4

glabel STR_10013480
/* 043480 10013480 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_10013490
/* 043490 10013490 */ .asciz "ptmp_phdr[i].p_paddr"
                      .balign 4

glabel STR_100134A8
/* 0434A8 100134A8 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_100134B8
/* 0434B8 100134B8 */ .asciz "0"
                      .balign 4

glabel STR_100134BC
/* 0434BC 100134BC */ .asciz "obj_rewrite.c"
                      .balign 4


.section .text
glabel obj_extend_text_segment # 582
# _gp_disp: 0xFBE8FD4
.set noreorder; .cpload $t9; # .set reorder
/* 034D78 00434D78 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 034D7C 00434D7C 8F9982B4 */  lw          $t9, %call16(obj_paouthdr)($gp)
/* 034D80 00434D80 AFBF002C */  sw          $ra, 0x2C($sp)
/* 034D84 00434D84 AFB40024 */  sw          $s4, 0x24($sp)
/* 034D88 00434D88 AFB30020 */  sw          $s3, 0x20($sp)
/* 034D8C 00434D8C 00809825 */  move        $s3, $a0
/* 034D90 00434D90 00A0A025 */  move        $s4, $a1
/* 034D94 00434D94 AFBC0028 */  sw          $gp, 0x28($sp)
/* 034D98 00434D98 AFB2001C */  sw          $s2, 0x1C($sp)
/* 034D9C 00434D9C AFB10018 */  sw          $s1, 0x18($sp)
/* 034DA0 00434DA0 0320F809 */  jalr        $t9
/* 034DA4 00434DA4 AFB00014 */   sw         $s0, 0x14($sp)
/* 034DA8 00434DA8 8FBC0028 */  lw          $gp, 0x28($sp)
/* 034DAC 00434DAC 00408025 */  move        $s0, $v0
/* 034DB0 00434DB0 02602025 */  move        $a0, $s3
/* 034DB4 00434DB4 8F998428 */  lw          $t9, %call16(obj_pelfhdr)($gp)
/* 034DB8 00434DB8 0320F809 */  jalr        $t9
/* 034DBC 00434DBC 00000000 */   nop
/* 034DC0 00434DC0 8FBC0028 */  lw          $gp, 0x28($sp)
/* 034DC4 00434DC4 AFA20034 */  sw          $v0, 0x34($sp)
/* 034DC8 00434DC8 02602025 */  move        $a0, $s3
/* 034DCC 00434DCC 8F998288 */  lw          $t9, %call16(obj_shared)($gp)
/* 034DD0 00434DD0 0320F809 */  jalr        $t9
/* 034DD4 00434DD4 00000000 */   nop
/* 034DD8 00434DD8 10400013 */  beqz        $v0, .L00434E28
/* 034DDC 00434DDC 8FBC0028 */   lw         $gp, 0x28($sp)
/* 034DE0 00434DE0 8F998390 */  lw          $t9, %call16(obj_text_size)($gp)
/* 034DE4 00434DE4 02602025 */  move        $a0, $s3
/* 034DE8 00434DE8 0320F809 */  jalr        $t9
/* 034DEC 00434DEC 00000000 */   nop
/* 034DF0 00434DF0 3C010040 */  lui         $at, (0x400001 >> 16)
/* 034DF4 00434DF4 34210001 */  ori         $at, $at, (0x400001 & 0xFFFF)
/* 034DF8 00434DF8 00547021 */  addu        $t6, $v0, $s4
/* 034DFC 00434DFC 01C1082B */  sltu        $at, $t6, $at
/* 034E00 00434E00 14200009 */  bnez        $at, .L00434E28
/* 034E04 00434E04 8FBC0028 */   lw         $gp, 0x28($sp)
/* 034E08 00434E08 8F998144 */  lw          $t9, %call16(__assert)($gp)
/* 034E0C 00434E0C 8F84802C */  lw          $a0, %got(STR_1001341C)($gp)
/* 034E10 00434E10 8F85802C */  lw          $a1, %got(STR_10013458)($gp)
/* 034E14 00434E14 24060298 */  addiu       $a2, $zero, 0x298
/* 034E18 00434E18 2484341C */  addiu       $a0, $a0, %lo(STR_1001341C)
/* 034E1C 00434E1C 0320F809 */  jalr        $t9
/* 034E20 00434E20 24A53458 */   addiu      $a1, $a1, %lo(STR_10013458)
/* 034E24 00434E24 8FBC0028 */  lw          $gp, 0x28($sp)
.L00434E28:
/* 034E28 00434E28 8F998390 */  lw          $t9, %call16(obj_text_size)($gp)
/* 034E2C 00434E2C 02602025 */  move        $a0, $s3
/* 034E30 00434E30 0320F809 */  jalr        $t9
/* 034E34 00434E34 00000000 */   nop
/* 034E38 00434E38 8FBC0028 */  lw          $gp, 0x28($sp)
/* 034E3C 00434E3C 02602025 */  move        $a0, $s3
/* 034E40 00434E40 00542821 */  addu        $a1, $v0, $s4
/* 034E44 00434E44 8F998394 */  lw          $t9, %call16(obj_set_text_size)($gp)
/* 034E48 00434E48 0320F809 */  jalr        $t9
/* 034E4C 00434E4C 00000000 */   nop
/* 034E50 00434E50 8FBC0028 */  lw          $gp, 0x28($sp)
/* 034E54 00434E54 02602025 */  move        $a0, $s3
/* 034E58 00434E58 8F9982AC */  lw          $t9, %call16(obj_otype)($gp)
/* 034E5C 00434E5C 0320F809 */  jalr        $t9
/* 034E60 00434E60 00000000 */   nop
/* 034E64 00434E64 24010002 */  addiu       $at, $zero, 0x2
/* 034E68 00434E68 1441002B */  bne         $v0, $at, .L00434F18
/* 034E6C 00434E6C 8FBC0028 */   lw         $gp, 0x28($sp)
/* 034E70 00434E70 8F998390 */  lw          $t9, %call16(obj_text_size)($gp)
/* 034E74 00434E74 02602025 */  move        $a0, $s3
/* 034E78 00434E78 0320F809 */  jalr        $t9
/* 034E7C 00434E7C 00000000 */   nop
/* 034E80 00434E80 8FBC0028 */  lw          $gp, 0x28($sp)
/* 034E84 00434E84 8E040014 */  lw          $a0, 0x14($s0)
/* 034E88 00434E88 00402825 */  move        $a1, $v0
/* 034E8C 00434E8C 8F99810C */  lw          $t9, %call16(realloc)($gp)
/* 034E90 00434E90 0320F809 */  jalr        $t9
/* 034E94 00434E94 00000000 */   nop
/* 034E98 00434E98 8FBC0028 */  lw          $gp, 0x28($sp)
/* 034E9C 00434E9C 14400009 */  bnez        $v0, .L00434EC4
/* 034EA0 00434EA0 AE020014 */   sw         $v0, 0x14($s0)
/* 034EA4 00434EA4 8F998144 */  lw          $t9, %call16(__assert)($gp)
/* 034EA8 00434EA8 8F84802C */  lw          $a0, %got(STR_10013468)($gp)
/* 034EAC 00434EAC 8F85802C */  lw          $a1, %got(STR_10013480)($gp)
/* 034EB0 00434EB0 2406029D */  addiu       $a2, $zero, 0x29D
/* 034EB4 00434EB4 24843468 */  addiu       $a0, $a0, %lo(STR_10013468)
/* 034EB8 00434EB8 0320F809 */  jalr        $t9
/* 034EBC 00434EBC 24A53480 */   addiu      $a1, $a1, %lo(STR_10013480)
/* 034EC0 00434EC0 8FBC0028 */  lw          $gp, 0x28($sp)
.L00434EC4:
/* 034EC4 00434EC4 8F998390 */  lw          $t9, %call16(obj_text_size)($gp)
/* 034EC8 00434EC8 02602025 */  move        $a0, $s3
/* 034ECC 00434ECC 0320F809 */  jalr        $t9
/* 034ED0 00434ED0 00000000 */   nop
/* 034ED4 00434ED4 8FBC0028 */  lw          $gp, 0x28($sp)
/* 034ED8 00434ED8 1A800068 */  blez        $s4, .L0043507C
/* 034EDC 00434EDC AE020004 */   sw         $v0, 0x4($s0)
/* 034EE0 00434EE0 8F998390 */  lw          $t9, %call16(obj_text_size)($gp)
/* 034EE4 00434EE4 02602025 */  move        $a0, $s3
/* 034EE8 00434EE8 0320F809 */  jalr        $t9
/* 034EEC 00434EEC 00000000 */   nop
/* 034EF0 00434EF0 8FBC0028 */  lw          $gp, 0x28($sp)
/* 034EF4 00434EF4 8E0F0014 */  lw          $t7, 0x14($s0)
/* 034EF8 00434EF8 00002825 */  move        $a1, $zero
/* 034EFC 00434EFC 8F998138 */  lw          $t9, %call16(memset)($gp)
/* 034F00 00434F00 004FC021 */  addu        $t8, $v0, $t7
/* 034F04 00434F04 03142023 */  subu        $a0, $t8, $s4
/* 034F08 00434F08 0320F809 */  jalr        $t9
/* 034F0C 00434F0C 02803025 */   move       $a2, $s4
/* 034F10 00434F10 1000005A */  b           .L0043507C
/* 034F14 00434F14 8FBC0028 */   lw         $gp, 0x28($sp)
.L00434F18:
/* 034F18 00434F18 8F9982AC */  lw          $t9, %call16(obj_otype)($gp)
/* 034F1C 00434F1C 02602025 */  move        $a0, $s3
/* 034F20 00434F20 0320F809 */  jalr        $t9
/* 034F24 00434F24 00000000 */   nop
/* 034F28 00434F28 24010003 */  addiu       $at, $zero, 0x3
/* 034F2C 00434F2C 1441004B */  bne         $v0, $at, .L0043505C
/* 034F30 00434F30 8FBC0028 */   lw         $gp, 0x28($sp)
/* 034F34 00434F34 8FB90034 */  lw          $t9, 0x34($sp)
/* 034F38 00434F38 00009025 */  move        $s2, $zero
/* 034F3C 00434F3C 00008825 */  move        $s1, $zero
/* 034F40 00434F40 9728002C */  lhu         $t0, 0x2C($t9)
/* 034F44 00434F44 5100004E */  beql        $t0, $zero, .L00435080
/* 034F48 00434F48 8FBF002C */   lw         $ra, 0x2C($sp)
.L00434F4C:
/* 034F4C 00434F4C 8F99842C */  lw          $t9, %call16(obj_pproghdr)($gp)
/* 034F50 00434F50 02602025 */  move        $a0, $s3
/* 034F54 00434F54 0320F809 */  jalr        $t9
/* 034F58 00434F58 00000000 */   nop
/* 034F5C 00434F5C 00511821 */  addu        $v1, $v0, $s1
/* 034F60 00434F60 8C690000 */  lw          $t1, 0x0($v1)
/* 034F64 00434F64 24010001 */  addiu       $at, $zero, 0x1
/* 034F68 00434F68 8FBC0028 */  lw          $gp, 0x28($sp)
/* 034F6C 00434F6C 55210033 */  bnel        $t1, $at, .L0043503C
/* 034F70 00434F70 8FAE0034 */   lw         $t6, 0x34($sp)
/* 034F74 00434F74 8C6A0018 */  lw          $t2, 0x18($v1)
/* 034F78 00434F78 24010004 */  addiu       $at, $zero, 0x4
/* 034F7C 00434F7C 314B0006 */  andi        $t3, $t2, 0x6
/* 034F80 00434F80 5561002E */  bnel        $t3, $at, .L0043503C
/* 034F84 00434F84 8FAE0034 */   lw         $t6, 0x34($sp)
/* 034F88 00434F88 8F998390 */  lw          $t9, %call16(obj_text_size)($gp)
/* 034F8C 00434F8C 02602025 */  move        $a0, $s3
/* 034F90 00434F90 AFA20030 */  sw          $v0, 0x30($sp)
/* 034F94 00434F94 0320F809 */  jalr        $t9
/* 034F98 00434F98 00000000 */   nop
/* 034F9C 00434F9C 8FBC0028 */  lw          $gp, 0x28($sp)
/* 034FA0 00434FA0 8FA60030 */  lw          $a2, 0x30($sp)
/* 034FA4 00434FA4 00402825 */  move        $a1, $v0
/* 034FA8 00434FA8 8F99810C */  lw          $t9, %call16(realloc)($gp)
/* 034FAC 00434FAC 00D18021 */  addu        $s0, $a2, $s1
/* 034FB0 00434FB0 8E04000C */  lw          $a0, 0xC($s0)
/* 034FB4 00434FB4 0320F809 */  jalr        $t9
/* 034FB8 00434FB8 00000000 */   nop
/* 034FBC 00434FBC 8FBC0028 */  lw          $gp, 0x28($sp)
/* 034FC0 00434FC0 14400009 */  bnez        $v0, .L00434FE8
/* 034FC4 00434FC4 AE02000C */   sw         $v0, 0xC($s0)
/* 034FC8 00434FC8 8F998144 */  lw          $t9, %call16(__assert)($gp)
/* 034FCC 00434FCC 8F84802C */  lw          $a0, %got(STR_10013490)($gp)
/* 034FD0 00434FD0 8F85802C */  lw          $a1, %got(STR_100134A8)($gp)
/* 034FD4 00434FD4 240602AC */  addiu       $a2, $zero, 0x2AC
/* 034FD8 00434FD8 24843490 */  addiu       $a0, $a0, %lo(STR_10013490)
/* 034FDC 00434FDC 0320F809 */  jalr        $t9
/* 034FE0 00434FE0 24A534A8 */   addiu      $a1, $a1, %lo(STR_100134A8)
/* 034FE4 00434FE4 8FBC0028 */  lw          $gp, 0x28($sp)
.L00434FE8:
/* 034FE8 00434FE8 8F998390 */  lw          $t9, %call16(obj_text_size)($gp)
/* 034FEC 00434FEC 02602025 */  move        $a0, $s3
/* 034FF0 00434FF0 0320F809 */  jalr        $t9
/* 034FF4 00434FF4 00000000 */   nop
/* 034FF8 00434FF8 8FBC0028 */  lw          $gp, 0x28($sp)
/* 034FFC 00434FFC 1A80000E */  blez        $s4, .L00435038
/* 035000 00435000 AE020010 */   sw         $v0, 0x10($s0)
/* 035004 00435004 8F998390 */  lw          $t9, %call16(obj_text_size)($gp)
/* 035008 00435008 02602025 */  move        $a0, $s3
/* 03500C 0043500C 0320F809 */  jalr        $t9
/* 035010 00435010 00000000 */   nop
/* 035014 00435014 8FBC0028 */  lw          $gp, 0x28($sp)
/* 035018 00435018 8E0C000C */  lw          $t4, 0xC($s0)
/* 03501C 0043501C 00002825 */  move        $a1, $zero
/* 035020 00435020 8F998138 */  lw          $t9, %call16(memset)($gp)
/* 035024 00435024 004C6821 */  addu        $t5, $v0, $t4
/* 035028 00435028 01B42023 */  subu        $a0, $t5, $s4
/* 03502C 0043502C 0320F809 */  jalr        $t9
/* 035030 00435030 02803025 */   move       $a2, $s4
/* 035034 00435034 8FBC0028 */  lw          $gp, 0x28($sp)
.L00435038:
/* 035038 00435038 8FAE0034 */  lw          $t6, 0x34($sp)
.L0043503C:
/* 03503C 0043503C 26520001 */  addiu       $s2, $s2, 0x1
/* 035040 00435040 26310020 */  addiu       $s1, $s1, 0x20
/* 035044 00435044 95CF002C */  lhu         $t7, 0x2C($t6)
/* 035048 00435048 024F082B */  sltu        $at, $s2, $t7
/* 03504C 0043504C 1420FFBF */  bnez        $at, .L00434F4C
/* 035050 00435050 00000000 */   nop
/* 035054 00435054 1000000A */  b           .L00435080
/* 035058 00435058 8FBF002C */   lw         $ra, 0x2C($sp)
.L0043505C:
/* 03505C 0043505C 8F998144 */  lw          $t9, %call16(__assert)($gp)
/* 035060 00435060 8F84802C */  lw          $a0, %got(STR_100134B8)($gp)
/* 035064 00435064 8F85802C */  lw          $a1, %got(STR_100134BC)($gp)
/* 035068 00435068 240602B6 */  addiu       $a2, $zero, 0x2B6
/* 03506C 0043506C 248434B8 */  addiu       $a0, $a0, %lo(STR_100134B8)
/* 035070 00435070 0320F809 */  jalr        $t9
/* 035074 00435074 24A534BC */   addiu      $a1, $a1, %lo(STR_100134BC)
/* 035078 00435078 8FBC0028 */  lw          $gp, 0x28($sp)
.L0043507C:
/* 03507C 0043507C 8FBF002C */  lw          $ra, 0x2C($sp)
.L00435080:
/* 035080 00435080 8FB00014 */  lw          $s0, 0x14($sp)
/* 035084 00435084 8FB10018 */  lw          $s1, 0x18($sp)
/* 035088 00435088 8FB2001C */  lw          $s2, 0x1C($sp)
/* 03508C 0043508C 8FB30020 */  lw          $s3, 0x20($sp)
/* 035090 00435090 8FB40024 */  lw          $s4, 0x24($sp)
/* 035094 00435094 03E00008 */  jr          $ra
/* 035098 00435098 27BD0040 */   addiu      $sp, $sp, 0x40
