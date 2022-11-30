.section .rodata
glabel STR_10013FB0
/* 043FB0 10013FB0 */ .asciz "st_cuinit: cannot allocate current chdr\n"
                      .balign 4


.section .text
glabel st_cuinit # 679
# _gp_disp: 0xFBE1E90
.set noreorder; .cpload $t9; # .set reorder
/* 03BEBC 0043BEBC 8F9980D4 */  lw          $t9, %call16(calloc)($gp)
/* 03BEC0 0043BEC0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03BEC4 0043BEC4 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03BEC8 0043BEC8 AFBC0018 */  sw          $gp, 0x18($sp)
/* 03BECC 0043BECC 240400BC */  addiu       $a0, $zero, 0xBC
/* 03BED0 0043BED0 0320F809 */  jalr        $t9
/* 03BED4 0043BED4 24050001 */   addiu      $a1, $zero, 0x1
/* 03BED8 0043BED8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03BEDC 0043BEDC 00401825 */  move        $v1, $v0
/* 03BEE0 0043BEE0 8F8587C4 */  lw          $a1, %got(st_pchdr)($gp)
/* 03BEE4 0043BEE4 14400008 */  bnez        $v0, .L0043BF08
/* 03BEE8 0043BEE8 ACA20000 */   sw         $v0, 0x0($a1)
/* 03BEEC 0043BEEC 8F998618 */  lw          $t9, %call16(_md_st_error)($gp)
/* 03BEF0 0043BEF0 8F84802C */  lw          $a0, %got(STR_10013FB0)($gp)
/* 03BEF4 0043BEF4 0320F809 */  jalr        $t9
/* 03BEF8 0043BEF8 24843FB0 */   addiu      $a0, $a0, %lo(STR_10013FB0)
/* 03BEFC 0043BEFC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03BF00 0043BF00 8F8587C4 */  lw          $a1, %got(st_pchdr)($gp)
/* 03BF04 0043BF04 8CA30000 */  lw          $v1, 0x0($a1)
.L0043BF08:
/* 03BF08 0043BF08 240E0002 */  addiu       $t6, $zero, 0x2
/* 03BF0C 0043BF0C AC6E003C */  sw          $t6, 0x3C($v1)
/* 03BF10 0043BF10 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03BF14 0043BF14 8CA20000 */  lw          $v0, 0x0($a1)
/* 03BF18 0043BF18 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03BF1C 0043BF1C 03E00008 */  jr          $ra
/* 03BF20 0043BF20 00000000 */   nop
