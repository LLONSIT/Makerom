.section .rodata
glabel STR_10013E30
/* 043E30 10013E30 */ .asciz "st_pcfd_ifd: ifd (%d) out of range\n"
                      .balign 4


.section .text
glabel st_pcfd_ifd # 665
# _gp_disp: 0xFBE277C
.set noreorder; .cpload $t9; # .set reorder
/* 03B5D0 0043B5D0 8F8E87C4 */  lw          $t6, %got(st_pchdr)($gp)
/* 03B5D4 0043B5D4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03B5D8 0043B5D8 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03B5DC 0043B5DC 8DCE0000 */  lw          $t6, 0x0($t6)
/* 03B5E0 0043B5E0 AFBC0018 */  sw          $gp, 0x18($sp)
/* 03B5E4 0043B5E4 00802825 */  move        $a1, $a0
/* 03B5E8 0043B5E8 8DCF0004 */  lw          $t7, 0x4($t6)
/* 03B5EC 0043B5EC 15E00008 */  bnez        $t7, .L0043B610
/* 03B5F0 0043B5F0 00000000 */   nop
/* 03B5F4 0043B5F4 8F998614 */  lw          $t9, %call16(_md_st_internal)($gp)
/* 03B5F8 0043B5F8 8F84802C */  lw          $a0, %got(D_10015C20)($gp)
/* 03B5FC 0043B5FC AFA50020 */  sw          $a1, 0x20($sp)
/* 03B600 0043B600 0320F809 */  jalr        $t9
/* 03B604 0043B604 24845C20 */   addiu      $a0, $a0, %lo(D_10015C20)
/* 03B608 0043B608 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03B60C 0043B60C 8FA50020 */  lw          $a1, 0x20($sp)
.L0043B610:
/* 03B610 0043B610 04A00007 */  bltz        $a1, .L0043B630
/* 03B614 0043B614 00000000 */   nop
/* 03B618 0043B618 8F8387C4 */  lw          $v1, %got(st_pchdr)($gp)
/* 03B61C 0043B61C 8C630000 */  lw          $v1, 0x0($v1)
/* 03B620 0043B620 8C78000C */  lw          $t8, 0xC($v1)
/* 03B624 0043B624 00B8082A */  slt         $at, $a1, $t8
/* 03B628 0043B628 5420000B */  bnel        $at, $zero, .L0043B658
/* 03B62C 0043B62C 8FBF001C */   lw         $ra, 0x1C($sp)
.L0043B630:
/* 03B630 0043B630 8F998614 */  lw          $t9, %call16(_md_st_internal)($gp)
/* 03B634 0043B634 8F84802C */  lw          $a0, %got(STR_10013E30)($gp)
/* 03B638 0043B638 AFA50020 */  sw          $a1, 0x20($sp)
/* 03B63C 0043B63C 0320F809 */  jalr        $t9
/* 03B640 0043B640 24843E30 */   addiu      $a0, $a0, %lo(STR_10013E30)
/* 03B644 0043B644 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03B648 0043B648 8FA50020 */  lw          $a1, 0x20($sp)
/* 03B64C 0043B64C 8F8387C4 */  lw          $v1, %got(st_pchdr)($gp)
/* 03B650 0043B650 8C630000 */  lw          $v1, 0x0($v1)
/* 03B654 0043B654 8FBF001C */  lw          $ra, 0x1C($sp)
.L0043B658:
/* 03B658 0043B658 8C790004 */  lw          $t9, 0x4($v1)
/* 03B65C 0043B65C 00054180 */  sll         $t0, $a1, 6
/* 03B660 0043B660 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03B664 0043B664 03E00008 */  jr          $ra
/* 03B668 0043B668 03281021 */   addu       $v0, $t9, $t0
