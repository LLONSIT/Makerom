.section .rodata
glabel STR_10012CD0
/* 042CD0 10012CD0 */ .asciz "Warning: "
                      .balign 4
/* 042CDC 10012CDC */ .asciz ""
                      .balign 4


.section .text
glabel warning # 492
# _gp_disp: 0xFBF29B0
.set noreorder; .cpload $t9; # .set reorder
/* 02B39C 0042B39C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 02B3A0 0042B3A0 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 02B3A4 0042B3A4 AFA40028 */  sw          $a0, 0x28($sp)
/* 02B3A8 0042B3A8 AFA5002C */  sw          $a1, 0x2C($sp)
/* 02B3AC 0042B3AC 8F85802C */  lw          $a1, %got(STR_10012CD0)($gp)
/* 02B3B0 0042B3B0 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 02B3B4 0042B3B4 AFBF0024 */  sw          $ra, 0x24($sp)
/* 02B3B8 0042B3B8 AFBC0020 */  sw          $gp, 0x20($sp)
/* 02B3BC 0042B3BC AFA60030 */  sw          $a2, 0x30($sp)
/* 02B3C0 0042B3C0 AFA70034 */  sw          $a3, 0x34($sp)
/* 02B3C4 0042B3C4 24A52CD0 */  addiu       $a1, $a1, %lo(STR_10012CD0)
/* 02B3C8 0042B3C8 0320F809 */  jalr        $t9
/* 02B3CC 0042B3CC 24840020 */   addiu      $a0, $a0, 0x20
/* 02B3D0 0042B3D0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 02B3D4 0042B3D4 8FAE0034 */  lw          $t6, 0x34($sp)
/* 02B3D8 0042B3D8 8FA50028 */  lw          $a1, 0x28($sp)
/* 02B3DC 0042B3DC 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 02B3E0 0042B3E0 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 02B3E4 0042B3E4 8FA6002C */  lw          $a2, 0x2C($sp)
/* 02B3E8 0042B3E8 8FA70030 */  lw          $a3, 0x30($sp)
/* 02B3EC 0042B3EC AFAE0010 */  sw          $t6, 0x10($sp)
/* 02B3F0 0042B3F0 0320F809 */  jalr        $t9
/* 02B3F4 0042B3F4 24840020 */   addiu      $a0, $a0, 0x20
/* 02B3F8 0042B3F8 8FBF0024 */  lw          $ra, 0x24($sp)
/* 02B3FC 0042B3FC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 02B400 0042B400 27BD0028 */  addiu       $sp, $sp, 0x28
/* 02B404 0042B404 03E00008 */  jr          $ra
/* 02B408 0042B408 00000000 */   nop
/* 02B40C 0042B40C 00000000 */  nop
