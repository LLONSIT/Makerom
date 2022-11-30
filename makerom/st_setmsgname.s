.section .rodata
glabel STR_10013B84
/* 043B84 10013B84 */ .asciz "libmld: Internal: cannot allocate to initialize component name for libmld errors\n"
                      .balign 4
/* 043BD8 10013BD8 */ .asciz ""
                      .balign 4
/* 043BDC 10013BDC */ .asciz ""
                      .balign 4


.section .text
glabel st_setmsgname # 648
# _gp_disp: 0xFBE3C38
.set noreorder; .cpload $t9; # .set reorder
/* 03A114 0043A114 8F99806C */  lw          $t9, %call16(strlen)($gp)
/* 03A118 0043A118 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03A11C 0043A11C AFBF001C */  sw          $ra, 0x1C($sp)
/* 03A120 0043A120 AFBC0018 */  sw          $gp, 0x18($sp)
/* 03A124 0043A124 0320F809 */  jalr        $t9
/* 03A128 0043A128 AFA40020 */   sw         $a0, 0x20($sp)
/* 03A12C 0043A12C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03A130 0043A130 24440001 */  addiu       $a0, $v0, 0x1
/* 03A134 0043A134 8F998064 */  lw          $t9, %call16(malloc)($gp)
/* 03A138 0043A138 0320F809 */  jalr        $t9
/* 03A13C 0043A13C 00000000 */   nop
/* 03A140 0043A140 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03A144 0043A144 00402025 */  move        $a0, $v0
/* 03A148 0043A148 8F838700 */  lw          $v1, %got(st_errname)($gp)
/* 03A14C 0043A14C 1440000F */  bnez        $v0, .L0043A18C
/* 03A150 0043A150 AC620000 */   sw         $v0, 0x0($v1)
/* 03A154 0043A154 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 03A158 0043A158 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 03A15C 0043A15C 8F85802C */  lw          $a1, %got(STR_10013B84)($gp)
/* 03A160 0043A160 24840020 */  addiu       $a0, $a0, 0x20
/* 03A164 0043A164 0320F809 */  jalr        $t9
/* 03A168 0043A168 24A53B84 */   addiu      $a1, $a1, %lo(STR_10013B84)
/* 03A16C 0043A16C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03A170 0043A170 24040001 */  addiu       $a0, $zero, 0x1
/* 03A174 0043A174 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 03A178 0043A178 0320F809 */  jalr        $t9
/* 03A17C 0043A17C 00000000 */   nop
/* 03A180 0043A180 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03A184 0043A184 8F848700 */  lw          $a0, %got(st_errname)($gp)
/* 03A188 0043A188 8C840000 */  lw          $a0, 0x0($a0)
.L0043A18C:
/* 03A18C 0043A18C 8F99809C */  lw          $t9, %call16(strcpy)($gp)
/* 03A190 0043A190 8FA50020 */  lw          $a1, 0x20($sp)
/* 03A194 0043A194 0320F809 */  jalr        $t9
/* 03A198 0043A198 00000000 */   nop
/* 03A19C 0043A19C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03A1A0 0043A1A0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03A1A4 0043A1A4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03A1A8 0043A1A8 03E00008 */  jr          $ra
/* 03A1AC 0043A1AC 00000000 */   nop
