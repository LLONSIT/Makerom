.section .rodata
glabel STR_10013B18
/* 043B18 10013B18 */ .asciz "st_pext_dn: rfd field (%d) isn't equal to ST_EXTIFD(%d)\n"
                      .balign 4

glabel STR_10013B54
/* 043B54 10013B54 */ .asciz "st_pext_dn: index out of range (%d)\n"
                      .balign 4


.section .text
glabel st_pext_dn # 646
# _gp_disp: 0xFBE3CFC
.set noreorder; .cpload $t9; # .set reorder
/* 03A050 0043A050 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03A054 0043A054 3C017FFF */  lui         $at, (0x7FFFFFFF >> 16)
/* 03A058 0043A058 AFA50024 */  sw          $a1, 0x24($sp)
/* 03A05C 0043A05C 3421FFFF */  ori         $at, $at, (0x7FFFFFFF & 0xFFFF)
/* 03A060 0043A060 00802825 */  move        $a1, $a0
/* 03A064 0043A064 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03A068 0043A068 AFBC0018 */  sw          $gp, 0x18($sp)
/* 03A06C 0043A06C 10810008 */  beq         $a0, $at, .L0043A090
/* 03A070 0043A070 AFA40020 */   sw         $a0, 0x20($sp)
/* 03A074 0043A074 8F998638 */  lw          $t9, %call16(st_internal)($gp)
/* 03A078 0043A078 8F84802C */  lw          $a0, %got(STR_10013B18)($gp)
/* 03A07C 0043A07C 3C067FFF */  lui         $a2, (0x7FFFFFFF >> 16)
/* 03A080 0043A080 34C6FFFF */  ori         $a2, $a2, (0x7FFFFFFF & 0xFFFF)
/* 03A084 0043A084 0320F809 */  jalr        $t9
/* 03A088 0043A088 24843B18 */   addiu      $a0, $a0, %lo(STR_10013B18)
/* 03A08C 0043A08C 8FBC0018 */  lw          $gp, 0x18($sp)
.L0043A090:
/* 03A090 0043A090 8FA50024 */  lw          $a1, 0x24($sp)
/* 03A094 0043A094 04A00007 */  bltz        $a1, .L0043A0B4
/* 03A098 0043A098 00000000 */   nop
/* 03A09C 0043A09C 8F8387C4 */  lw          $v1, %got(st_pchdr)($gp)
/* 03A0A0 0043A0A0 8C630000 */  lw          $v1, 0x0($v1)
/* 03A0A4 0043A0A4 8C6E001C */  lw          $t6, 0x1C($v1)
/* 03A0A8 0043A0A8 01C5082A */  slt         $at, $t6, $a1
/* 03A0AC 0043A0AC 5020000A */  beql        $at, $zero, .L0043A0D8
/* 03A0B0 0043A0B0 8FBF001C */   lw         $ra, 0x1C($sp)
.L0043A0B4:
/* 03A0B4 0043A0B4 8F998638 */  lw          $t9, %call16(st_internal)($gp)
/* 03A0B8 0043A0B8 8F84802C */  lw          $a0, %got(STR_10013B54)($gp)
/* 03A0BC 0043A0BC 0320F809 */  jalr        $t9
/* 03A0C0 0043A0C0 24843B54 */   addiu      $a0, $a0, %lo(STR_10013B54)
/* 03A0C4 0043A0C4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03A0C8 0043A0C8 8FA50024 */  lw          $a1, 0x24($sp)
/* 03A0CC 0043A0CC 8F8387C4 */  lw          $v1, %got(st_pchdr)($gp)
/* 03A0D0 0043A0D0 8C630000 */  lw          $v1, 0x0($v1)
/* 03A0D4 0043A0D4 8FBF001C */  lw          $ra, 0x1C($sp)
.L0043A0D8:
/* 03A0D8 0043A0D8 8C6F0018 */  lw          $t7, 0x18($v1)
/* 03A0DC 0043A0DC 0005C100 */  sll         $t8, $a1, 4
/* 03A0E0 0043A0E0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03A0E4 0043A0E4 03E00008 */  jr          $ra
/* 03A0E8 0043A0E8 01F81021 */   addu       $v0, $t7, $t8
