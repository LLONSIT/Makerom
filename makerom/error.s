.section .rodata
glabel STR_100136D0
/* 0436D0 100136D0 */ .asciz "Error: "
                      .balign 4
/* 0436D8 100136D8 */ .asciz ""
                      .balign 4
/* 0436DC 100136DC */ .asciz ""
                      .balign 4


.section .text
glabel error # 589
# _gp_disp: 0xFBE80D0
.set noreorder; .cpload $t9; # .set reorder
/* 035C7C 00435C7C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 035C80 00435C80 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 035C84 00435C84 AFA40028 */  sw          $a0, 0x28($sp)
/* 035C88 00435C88 AFA5002C */  sw          $a1, 0x2C($sp)
/* 035C8C 00435C8C 8F85802C */  lw          $a1, %got(STR_100136D0)($gp)
/* 035C90 00435C90 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 035C94 00435C94 AFBF0024 */  sw          $ra, 0x24($sp)
/* 035C98 00435C98 AFBC0020 */  sw          $gp, 0x20($sp)
/* 035C9C 00435C9C AFA60030 */  sw          $a2, 0x30($sp)
/* 035CA0 00435CA0 AFA70034 */  sw          $a3, 0x34($sp)
/* 035CA4 00435CA4 24A536D0 */  addiu       $a1, $a1, %lo(STR_100136D0)
/* 035CA8 00435CA8 0320F809 */  jalr        $t9
/* 035CAC 00435CAC 24840020 */   addiu      $a0, $a0, 0x20
/* 035CB0 00435CB0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 035CB4 00435CB4 8FAE0034 */  lw          $t6, 0x34($sp)
/* 035CB8 00435CB8 8FAF0038 */  lw          $t7, 0x38($sp)
/* 035CBC 00435CBC 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 035CC0 00435CC0 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 035CC4 00435CC4 8FA50028 */  lw          $a1, 0x28($sp)
/* 035CC8 00435CC8 8FA6002C */  lw          $a2, 0x2C($sp)
/* 035CCC 00435CCC 8FA70030 */  lw          $a3, 0x30($sp)
/* 035CD0 00435CD0 AFAE0010 */  sw          $t6, 0x10($sp)
/* 035CD4 00435CD4 AFAF0014 */  sw          $t7, 0x14($sp)
/* 035CD8 00435CD8 0320F809 */  jalr        $t9
/* 035CDC 00435CDC 24840020 */   addiu      $a0, $a0, 0x20
/* 035CE0 00435CE0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 035CE4 00435CE4 24040001 */  addiu       $a0, $zero, 0x1
/* 035CE8 00435CE8 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 035CEC 00435CEC 0320F809 */  jalr        $t9
/* 035CF0 00435CF0 00000000 */   nop
/* 035CF4 00435CF4 8FBF0024 */  lw          $ra, 0x24($sp)
/* 035CF8 00435CF8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 035CFC 00435CFC 27BD0028 */  addiu       $sp, $sp, 0x28
/* 035D00 00435D00 03E00008 */  jr          $ra
/* 035D04 00435D04 00000000 */   nop
/* 035D08 00435D08 00000000 */  nop
/* 035D0C 00435D0C 00000000 */  nop
