.section .rodata
glabel STR_10012F88
/* 042F88 10012F88 */ .asciz "0"
                      .balign 4

glabel STR_10012F8C
/* 042F8C 10012F8C */ .asciz "obj_elf.c"
                      .balign 4


.section .text
glabel obj_raw_bits # 569
# _gp_disp: 0xFBEBD78
.set noreorder; .cpload $t9; # .set reorder
/* 031FD4 00431FD4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 031FD8 00431FD8 AFBF001C */  sw          $ra, 0x1C($sp)
/* 031FDC 00431FDC AFBC0018 */  sw          $gp, 0x18($sp)
/* 031FE0 00431FE0 8C8E008C */  lw          $t6, 0x8C($a0)
/* 031FE4 00431FE4 24010003 */  addiu       $at, $zero, 0x3
/* 031FE8 00431FE8 00A03025 */  move        $a2, $a1
/* 031FEC 00431FEC 15C10012 */  bne         $t6, $at, .L00432038
/* 031FF0 00431FF0 00000000 */   nop
/* 031FF4 00431FF4 8F998520 */  lw          $t9, %call16(foreach_section)($gp)
/* 031FF8 00431FF8 8F858530 */  lw          $a1, %got(find_section_byname)($gp)
/* 031FFC 00431FFC AFA40020 */  sw          $a0, 0x20($sp)
/* 032000 00432000 0320F809 */  jalr        $t9
/* 032004 00432004 00000000 */   nop
/* 032008 00432008 2401FFFF */  addiu       $at, $zero, -0x1
/* 03200C 0043200C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 032010 00432010 8FA40020 */  lw          $a0, 0x20($sp)
/* 032014 00432014 14410003 */  bne         $v0, $at, .L00432024
/* 032018 00432018 00402825 */   move       $a1, $v0
/* 03201C 0043201C 1000000F */  b           .L0043205C
/* 032020 00432020 00001025 */   move       $v0, $zero
.L00432024:
/* 032024 00432024 8F998440 */  lw          $t9, %call16(obj_section_bits)($gp)
/* 032028 00432028 0320F809 */  jalr        $t9
/* 03202C 0043202C 00000000 */   nop
/* 032030 00432030 1000000A */  b           .L0043205C
/* 032034 00432034 8FBC0018 */   lw         $gp, 0x18($sp)
.L00432038:
/* 032038 00432038 8F998144 */  lw          $t9, %call16(__assert)($gp)
/* 03203C 0043203C 8F84802C */  lw          $a0, %got(STR_10012F88)($gp)
/* 032040 00432040 8F85802C */  lw          $a1, %got(STR_10012F8C)($gp)
/* 032044 00432044 2406013B */  addiu       $a2, $zero, 0x13B
/* 032048 00432048 24842F88 */  addiu       $a0, $a0, %lo(STR_10012F88)
/* 03204C 0043204C 0320F809 */  jalr        $t9
/* 032050 00432050 24A52F8C */   addiu      $a1, $a1, %lo(STR_10012F8C)
/* 032054 00432054 8FBC0018 */  lw          $gp, 0x18($sp)
/* 032058 00432058 00001025 */  move        $v0, $zero
.L0043205C:
/* 03205C 0043205C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 032060 00432060 27BD0020 */  addiu       $sp, $sp, 0x20
/* 032064 00432064 03E00008 */  jr          $ra
/* 032068 00432068 00000000 */   nop
