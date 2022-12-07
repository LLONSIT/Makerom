.section .rodata
glabel STR_10013AE0
/* 043AE0 10013AE0 */ .asciz "st_setidn: idnsrc (%d) or idndest (%d) out of range\n"
                      .balign 4


.section .text
glabel st_setidn # 645
# _gp_disp: 0xFBE3DA4
.set noreorder; .cpload $t9; # .set reorder
/* 039FA8 00439FA8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 039FAC 00439FAC AFBF001C */  sw          $ra, 0x1C($sp)
/* 039FB0 00439FB0 AFBC0018 */  sw          $gp, 0x18($sp)
/* 039FB4 00439FB4 0480000B */  bltz        $a0, .L00439FE4
/* 039FB8 00439FB8 00803025 */   move       $a2, $a0
/* 039FBC 00439FBC 04A00009 */  bltz        $a1, .L00439FE4
/* 039FC0 00439FC0 00000000 */   nop
/* 039FC4 00439FC4 8F8387C4 */  lw          $v1, %got(st_pchdr)($gp)
/* 039FC8 00439FC8 8C630000 */  lw          $v1, 0x0($v1)
/* 039FCC 00439FCC 8C62003C */  lw          $v0, 0x3C($v1)
/* 039FD0 00439FD0 0082082A */  slt         $at, $a0, $v0
/* 039FD4 00439FD4 10200003 */  beqz        $at, .L00439FE4
/* 039FD8 00439FD8 00A2082A */   slt        $at, $a1, $v0
/* 039FDC 00439FDC 5420000D */  bnel        $at, $zero, .L0043A014
/* 039FE0 00439FE0 8C620038 */   lw         $v0, 0x38($v1)
.L00439FE4:
/* 039FE4 00439FE4 8F998638 */  lw          $t9, %call16(st_internal)($gp)
/* 039FE8 00439FE8 8F84802C */  lw          $a0, %got(STR_10013AE0)($gp)
/* 039FEC 00439FEC AFA50024 */  sw          $a1, 0x24($sp)
/* 039FF0 00439FF0 AFA60020 */  sw          $a2, 0x20($sp)
/* 039FF4 00439FF4 0320F809 */  jalr        $t9
/* 039FF8 00439FF8 24843AE0 */   addiu      $a0, $a0, %lo(STR_10013AE0)
/* 039FFC 00439FFC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03A000 0043A000 8FA50024 */  lw          $a1, 0x24($sp)
/* 03A004 0043A004 8FA60020 */  lw          $a2, 0x20($sp)
/* 03A008 0043A008 8F8387C4 */  lw          $v1, %got(st_pchdr)($gp)
/* 03A00C 0043A00C 8C630000 */  lw          $v1, 0x0($v1)
/* 03A010 0043A010 8C620038 */  lw          $v0, 0x38($v1)
.L0043A014:
/* 03A014 0043A014 0005C0C0 */  sll         $t8, $a1, 3
/* 03A018 0043A018 000670C0 */  sll         $t6, $a2, 3
/* 03A01C 0043A01C 0058C821 */  addu        $t9, $v0, $t8
/* 03A020 0043A020 8F290000 */  lw          $t1, 0x0($t9)
/* 03A024 0043A024 004E7821 */  addu        $t7, $v0, $t6
/* 03A028 0043A028 ADE90000 */  sw          $t1, 0x0($t7)
/* 03A02C 0043A02C 8F280004 */  lw          $t0, 0x4($t9)
/* 03A030 0043A030 ADE80004 */  sw          $t0, 0x4($t7)
/* 03A034 0043A034 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03A038 0043A038 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03A03C 0043A03C 03E00008 */  jr          $ra
/* 03A040 0043A040 00000000 */   nop
