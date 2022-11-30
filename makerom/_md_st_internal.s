.section .rodata
glabel STR_10013EC0
/* 043EC0 10013EC0 */ .asciz "%s: Internal: "
                      .balign 4

glabel STR_10013ED0
/* 043ED0 10013ED0 */ .asciz "\n"
                      .balign 4


.section .text
glabel _md_st_internal # 670
# _gp_disp: 0xFBE2340
.set noreorder; .cpload $t9; # .set reorder
/* 03BA0C 0043BA0C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03BA10 0043BA10 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 03BA14 0043BA14 AFA40028 */  sw          $a0, 0x28($sp)
/* 03BA18 0043BA18 AFA5002C */  sw          $a1, 0x2C($sp)
/* 03BA1C 0043BA1C AFA60030 */  sw          $a2, 0x30($sp)
/* 03BA20 0043BA20 8F868700 */  lw          $a2, %got(st_errname)($gp)
/* 03BA24 0043BA24 8F85802C */  lw          $a1, %got(STR_10013EC0)($gp)
/* 03BA28 0043BA28 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 03BA2C 0043BA2C AFBF0024 */  sw          $ra, 0x24($sp)
/* 03BA30 0043BA30 AFBC0020 */  sw          $gp, 0x20($sp)
/* 03BA34 0043BA34 AFA70034 */  sw          $a3, 0x34($sp)
/* 03BA38 0043BA38 8CC60000 */  lw          $a2, 0x0($a2)
/* 03BA3C 0043BA3C 24A53EC0 */  addiu       $a1, $a1, %lo(STR_10013EC0)
/* 03BA40 0043BA40 0320F809 */  jalr        $t9
/* 03BA44 0043BA44 24840020 */   addiu      $a0, $a0, 0x20
/* 03BA48 0043BA48 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03BA4C 0043BA4C 8FAE0034 */  lw          $t6, 0x34($sp)
/* 03BA50 0043BA50 8FAF0038 */  lw          $t7, 0x38($sp)
/* 03BA54 0043BA54 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 03BA58 0043BA58 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 03BA5C 0043BA5C 8FA50028 */  lw          $a1, 0x28($sp)
/* 03BA60 0043BA60 8FA6002C */  lw          $a2, 0x2C($sp)
/* 03BA64 0043BA64 8FA70030 */  lw          $a3, 0x30($sp)
/* 03BA68 0043BA68 AFAE0010 */  sw          $t6, 0x10($sp)
/* 03BA6C 0043BA6C AFAF0014 */  sw          $t7, 0x14($sp)
/* 03BA70 0043BA70 0320F809 */  jalr        $t9
/* 03BA74 0043BA74 24840020 */   addiu      $a0, $a0, 0x20
/* 03BA78 0043BA78 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03BA7C 0043BA7C 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 03BA80 0043BA80 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 03BA84 0043BA84 8F85802C */  lw          $a1, %got(STR_10013ED0)($gp)
/* 03BA88 0043BA88 24840020 */  addiu       $a0, $a0, 0x20
/* 03BA8C 0043BA8C 0320F809 */  jalr        $t9
/* 03BA90 0043BA90 24A53ED0 */   addiu      $a1, $a1, %lo(STR_10013ED0)
/* 03BA94 0043BA94 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03BA98 0043BA98 24040001 */  addiu       $a0, $zero, 0x1
/* 03BA9C 0043BA9C 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 03BAA0 0043BAA0 0320F809 */  jalr        $t9
/* 03BAA4 0043BAA4 00000000 */   nop
/* 03BAA8 0043BAA8 8FBF0024 */  lw          $ra, 0x24($sp)
/* 03BAAC 0043BAAC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03BAB0 0043BAB0 27BD0028 */  addiu       $sp, $sp, 0x28
/* 03BAB4 0043BAB4 03E00008 */  jr          $ra
/* 03BAB8 0043BAB8 00000000 */   nop
