.section .rodata
glabel STR_100140D0
/* 0440D0 100140D0 */ .asciz "%s: Internal: "
                      .balign 4

glabel STR_100140E0
/* 0440E0 100140E0 */ .asciz "\n"
                      .balign 4
/* 0440E4 100140E4 */ .asciz ""
                      .balign 4
/* 0440E8 100140E8 */ .asciz ""
                      .balign 4
/* 0440EC 100140EC */ .asciz ""
                      .balign 4


.section .text
glabel st_internal # 685
# _gp_disp: 0xFBE1970
.set noreorder; .cpload $t9; # .set reorder
/* 03C3DC 0043C3DC 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03C3E0 0043C3E0 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 03C3E4 0043C3E4 AFA40028 */  sw          $a0, 0x28($sp)
/* 03C3E8 0043C3E8 AFA5002C */  sw          $a1, 0x2C($sp)
/* 03C3EC 0043C3EC AFA60030 */  sw          $a2, 0x30($sp)
/* 03C3F0 0043C3F0 8F868700 */  lw          $a2, %got(st_errname)($gp)
/* 03C3F4 0043C3F4 8F85802C */  lw          $a1, %got(STR_100140D0)($gp)
/* 03C3F8 0043C3F8 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 03C3FC 0043C3FC AFBF0024 */  sw          $ra, 0x24($sp)
/* 03C400 0043C400 AFBC0020 */  sw          $gp, 0x20($sp)
/* 03C404 0043C404 AFA70034 */  sw          $a3, 0x34($sp)
/* 03C408 0043C408 8CC60000 */  lw          $a2, 0x0($a2)
/* 03C40C 0043C40C 24A540D0 */  addiu       $a1, $a1, %lo(STR_100140D0)
/* 03C410 0043C410 0320F809 */  jalr        $t9
/* 03C414 0043C414 24840020 */   addiu      $a0, $a0, 0x20
/* 03C418 0043C418 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03C41C 0043C41C 8FAE0034 */  lw          $t6, 0x34($sp)
/* 03C420 0043C420 8FAF0038 */  lw          $t7, 0x38($sp)
/* 03C424 0043C424 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 03C428 0043C428 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 03C42C 0043C42C 8FA50028 */  lw          $a1, 0x28($sp)
/* 03C430 0043C430 8FA6002C */  lw          $a2, 0x2C($sp)
/* 03C434 0043C434 8FA70030 */  lw          $a3, 0x30($sp)
/* 03C438 0043C438 AFAE0010 */  sw          $t6, 0x10($sp)
/* 03C43C 0043C43C AFAF0014 */  sw          $t7, 0x14($sp)
/* 03C440 0043C440 0320F809 */  jalr        $t9
/* 03C444 0043C444 24840020 */   addiu      $a0, $a0, 0x20
/* 03C448 0043C448 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03C44C 0043C44C 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 03C450 0043C450 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 03C454 0043C454 8F85802C */  lw          $a1, %got(STR_100140E0)($gp)
/* 03C458 0043C458 24840020 */  addiu       $a0, $a0, 0x20
/* 03C45C 0043C45C 0320F809 */  jalr        $t9
/* 03C460 0043C460 24A540E0 */   addiu      $a1, $a1, %lo(STR_100140E0)
/* 03C464 0043C464 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03C468 0043C468 24040001 */  addiu       $a0, $zero, 0x1
/* 03C46C 0043C46C 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 03C470 0043C470 0320F809 */  jalr        $t9
/* 03C474 0043C474 00000000 */   nop
/* 03C478 0043C478 8FBF0024 */  lw          $ra, 0x24($sp)
/* 03C47C 0043C47C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03C480 0043C480 27BD0028 */  addiu       $sp, $sp, 0x28
/* 03C484 0043C484 03E00008 */  jr          $ra
/* 03C488 0043C488 00000000 */   nop
/* 03C48C 0043C48C 00000000 */  nop
