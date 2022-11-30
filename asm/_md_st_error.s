.section .rodata
glabel STR_10013ED4
/* 043ED4 10013ED4 */ .asciz "%s: Error: "
                      .balign 4

glabel STR_10013EE0
/* 043EE0 10013EE0 */ .asciz "\n"
                      .balign 4


.section .text
glabel _md_st_error # 671
# _gp_disp: 0xFBE2284
.set noreorder; .cpload $t9; # .set reorder
/* 03BAC8 0043BAC8 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03BACC 0043BACC 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 03BAD0 0043BAD0 AFA40028 */  sw          $a0, 0x28($sp)
/* 03BAD4 0043BAD4 AFA5002C */  sw          $a1, 0x2C($sp)
/* 03BAD8 0043BAD8 AFA60030 */  sw          $a2, 0x30($sp)
/* 03BADC 0043BADC 8F868700 */  lw          $a2, %got(st_errname)($gp)
/* 03BAE0 0043BAE0 8F85802C */  lw          $a1, %got(STR_10013ED4)($gp)
/* 03BAE4 0043BAE4 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 03BAE8 0043BAE8 AFBF0024 */  sw          $ra, 0x24($sp)
/* 03BAEC 0043BAEC AFBC0020 */  sw          $gp, 0x20($sp)
/* 03BAF0 0043BAF0 AFA70034 */  sw          $a3, 0x34($sp)
/* 03BAF4 0043BAF4 8CC60000 */  lw          $a2, 0x0($a2)
/* 03BAF8 0043BAF8 24A53ED4 */  addiu       $a1, $a1, %lo(STR_10013ED4)
/* 03BAFC 0043BAFC 0320F809 */  jalr        $t9
/* 03BB00 0043BB00 24840020 */   addiu      $a0, $a0, 0x20
/* 03BB04 0043BB04 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03BB08 0043BB08 8FAE0034 */  lw          $t6, 0x34($sp)
/* 03BB0C 0043BB0C 8FAF0038 */  lw          $t7, 0x38($sp)
/* 03BB10 0043BB10 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 03BB14 0043BB14 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 03BB18 0043BB18 8FA50028 */  lw          $a1, 0x28($sp)
/* 03BB1C 0043BB1C 8FA6002C */  lw          $a2, 0x2C($sp)
/* 03BB20 0043BB20 8FA70030 */  lw          $a3, 0x30($sp)
/* 03BB24 0043BB24 AFAE0010 */  sw          $t6, 0x10($sp)
/* 03BB28 0043BB28 AFAF0014 */  sw          $t7, 0x14($sp)
/* 03BB2C 0043BB2C 0320F809 */  jalr        $t9
/* 03BB30 0043BB30 24840020 */   addiu      $a0, $a0, 0x20
/* 03BB34 0043BB34 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03BB38 0043BB38 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 03BB3C 0043BB3C 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 03BB40 0043BB40 8F85802C */  lw          $a1, %got(STR_10013EE0)($gp)
/* 03BB44 0043BB44 24840020 */  addiu       $a0, $a0, 0x20
/* 03BB48 0043BB48 0320F809 */  jalr        $t9
/* 03BB4C 0043BB4C 24A53EE0 */   addiu      $a1, $a1, %lo(STR_10013EE0)
/* 03BB50 0043BB50 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03BB54 0043BB54 24040001 */  addiu       $a0, $zero, 0x1
/* 03BB58 0043BB58 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 03BB5C 0043BB5C 0320F809 */  jalr        $t9
/* 03BB60 0043BB60 00000000 */   nop
/* 03BB64 0043BB64 8FBF0024 */  lw          $ra, 0x24($sp)
/* 03BB68 0043BB68 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03BB6C 0043BB6C 27BD0028 */  addiu       $sp, $sp, 0x28
/* 03BB70 0043BB70 03E00008 */  jr          $ra
/* 03BB74 0043BB74 00000000 */   nop
