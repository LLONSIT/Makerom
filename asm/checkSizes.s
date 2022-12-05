.section .rodata
glabel STR_100101B8
/* 0401B8 100101B8 */ .asciz "makerom: segment \"%s\" (text+data) size "
                      .balign 4

glabel STR_100101E0
/* 0401E0 100101E0 */ .asciz "(%d+%d) = %d (0x%x)\n         "
                      .balign 4

glabel STR_10010200
/* 040200 10010200 */ .asciz "exceeds maximum BOOT segment size %d (0x%x)\n"
                      .balign 4

glabel STR_10010230
/* 040230 10010230 */ .asciz "makerom: segment \"%s\" (text+data+bss) size "
                      .balign 4

glabel STR_1001025C
/* 04025C 1001025C */ .asciz "(%d+%d+%d) = %d (0x%x)\n         "
                      .balign 4

glabel STR_10010280
/* 040280 10010280 */ .asciz "exceeds given maximum segment size %d (0x%x)\n"
                      .balign 4


.section .text
glabel checkSizes # 22
# _gp_disp: 0xFC0FF60
.set noreorder; .cpload $t9; # .set reorder
/* 00DDEC 0040DDEC 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 00DDF0 0040DDF0 AFBF002C */  sw          $ra, 0x2C($sp)
/* 00DDF4 0040DDF4 AFBC0028 */  sw          $gp, 0x28($sp)
/* 00DDF8 0040DDF8 AFA00030 */  sw          $zero, 0x30($sp)
/* 00DDFC 0040DDFC 8F8E8654 */  lw          $t6, %got(segmentList)($gp)
/* 00DE00 0040DE00 8DCE0000 */  lw          $t6, 0x0($t6)
/* 00DE04 0040DE04 11C00069 */  beqz        $t6, .L0040DFAC
/* 00DE08 0040DE08 AFAE0034 */   sw         $t6, 0x34($sp)
.L0040DE0C:
/* 00DE0C 0040DE0C 8FAF0034 */  lw          $t7, 0x34($sp)
/* 00DE10 0040DE10 8DF80028 */  lw          $t8, 0x28($t7)
/* 00DE14 0040DE14 33190001 */  andi        $t9, $t8, 0x1
/* 00DE18 0040DE18 13200030 */  beqz        $t9, .L0040DEDC
/* 00DE1C 0040DE1C 00000000 */   nop
/* 00DE20 0040DE20 8DE8002C */  lw          $t0, 0x2C($t7)
/* 00DE24 0040DE24 8DE90030 */  lw          $t1, 0x30($t7)
/* 00DE28 0040DE28 8DEB0034 */  lw          $t3, 0x34($t7)
/* 00DE2C 0040DE2C 3C010010 */  lui         $at, (0x100001 >> 16)
/* 00DE30 0040DE30 01095021 */  addu        $t2, $t0, $t1
/* 00DE34 0040DE34 34210001 */  ori         $at, $at, (0x100001 & 0xFFFF)
/* 00DE38 0040DE38 014B6021 */  addu        $t4, $t2, $t3
/* 00DE3C 0040DE3C 0181082B */  sltu        $at, $t4, $at
/* 00DE40 0040DE40 14200026 */  bnez        $at, .L0040DEDC
/* 00DE44 0040DE44 00000000 */   nop
/* 00DE48 0040DE48 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00DE4C 0040DE4C 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00DE50 0040DE50 8F85802C */  lw          $a1, %got(STR_100101B8)($gp)
/* 00DE54 0040DE54 8FAD0034 */  lw          $t5, 0x34($sp)
/* 00DE58 0040DE58 24840020 */  addiu       $a0, $a0, 0x20
/* 00DE5C 0040DE5C 24A501B8 */  addiu       $a1, $a1, %lo(STR_100101B8)
/* 00DE60 0040DE60 0320F809 */  jalr        $t9
/* 00DE64 0040DE64 8DA60004 */   lw         $a2, 0x4($t5)
/* 00DE68 0040DE68 8FBC0028 */  lw          $gp, 0x28($sp)
/* 00DE6C 0040DE6C 8FAE0034 */  lw          $t6, 0x34($sp)
/* 00DE70 0040DE70 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00DE74 0040DE74 8F85802C */  lw          $a1, %got(STR_100101E0)($gp)
/* 00DE78 0040DE78 8DD90030 */  lw          $t9, 0x30($t6)
/* 00DE7C 0040DE7C 8DD8002C */  lw          $t8, 0x2C($t6)
/* 00DE80 0040DE80 8DC80034 */  lw          $t0, 0x34($t6)
/* 00DE84 0040DE84 24840020 */  addiu       $a0, $a0, 0x20
/* 00DE88 0040DE88 03194821 */  addu        $t1, $t8, $t9
/* 00DE8C 0040DE8C 03283821 */  addu        $a3, $t9, $t0
/* 00DE90 0040DE90 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00DE94 0040DE94 01287821 */  addu        $t7, $t1, $t0
/* 00DE98 0040DE98 AFAF0010 */  sw          $t7, 0x10($sp)
/* 00DE9C 0040DE9C AFAF0014 */  sw          $t7, 0x14($sp)
/* 00DEA0 0040DEA0 24A501E0 */  addiu       $a1, $a1, %lo(STR_100101E0)
/* 00DEA4 0040DEA4 0320F809 */  jalr        $t9
/* 00DEA8 0040DEA8 03003025 */   move       $a2, $t8
/* 00DEAC 0040DEAC 8FBC0028 */  lw          $gp, 0x28($sp)
/* 00DEB0 0040DEB0 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00DEB4 0040DEB4 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00DEB8 0040DEB8 8F85802C */  lw          $a1, %got(STR_10010200)($gp)
/* 00DEBC 0040DEBC 3C060010 */  lui         $a2, (0x100000 >> 16)
/* 00DEC0 0040DEC0 3C070010 */  lui         $a3, (0x100000 >> 16)
/* 00DEC4 0040DEC4 24840020 */  addiu       $a0, $a0, 0x20
/* 00DEC8 0040DEC8 0320F809 */  jalr        $t9
/* 00DECC 0040DECC 24A50200 */   addiu      $a1, $a1, %lo(STR_10010200)
/* 00DED0 0040DED0 8FBC0028 */  lw          $gp, 0x28($sp)
/* 00DED4 0040DED4 240A0001 */  addiu       $t2, $zero, 0x1
/* 00DED8 0040DED8 AFAA0030 */  sw          $t2, 0x30($sp)
.L0040DEDC:
/* 00DEDC 0040DEDC 8FAB0034 */  lw          $t3, 0x34($sp)
/* 00DEE0 0040DEE0 8D6C0040 */  lw          $t4, 0x40($t3)
/* 00DEE4 0040DEE4 8D6D0044 */  lw          $t5, 0x44($t3)
/* 00DEE8 0040DEE8 01AC082B */  sltu        $at, $t5, $t4
/* 00DEEC 0040DEEC 1020002B */  beqz        $at, .L0040DF9C
/* 00DEF0 0040DEF0 00000000 */   nop
/* 00DEF4 0040DEF4 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00DEF8 0040DEF8 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00DEFC 0040DEFC 8F85802C */  lw          $a1, %got(STR_10010230)($gp)
/* 00DF00 0040DF00 8FAE0034 */  lw          $t6, 0x34($sp)
/* 00DF04 0040DF04 24840020 */  addiu       $a0, $a0, 0x20
/* 00DF08 0040DF08 24A50230 */  addiu       $a1, $a1, %lo(STR_10010230)
/* 00DF0C 0040DF0C 0320F809 */  jalr        $t9
/* 00DF10 0040DF10 8DC60004 */   lw         $a2, 0x4($t6)
/* 00DF14 0040DF14 8FBC0028 */  lw          $gp, 0x28($sp)
/* 00DF18 0040DF18 8FB80034 */  lw          $t8, 0x34($sp)
/* 00DF1C 0040DF1C 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00DF20 0040DF20 8F85802C */  lw          $a1, %got(STR_1001025C)($gp)
/* 00DF24 0040DF24 8F08003C */  lw          $t0, 0x3C($t8)
/* 00DF28 0040DF28 8F0F0038 */  lw          $t7, 0x38($t8)
/* 00DF2C 0040DF2C 8F190030 */  lw          $t9, 0x30($t8)
/* 00DF30 0040DF30 8F090034 */  lw          $t1, 0x34($t8)
/* 00DF34 0040DF34 8F06002C */  lw          $a2, 0x2C($t8)
/* 00DF38 0040DF38 010F5021 */  addu        $t2, $t0, $t7
/* 00DF3C 0040DF3C AFAA0010 */  sw          $t2, 0x10($sp)
/* 00DF40 0040DF40 8F0B0040 */  lw          $t3, 0x40($t8)
/* 00DF44 0040DF44 03293821 */  addu        $a3, $t9, $t1
/* 00DF48 0040DF48 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00DF4C 0040DF4C AFAB0014 */  sw          $t3, 0x14($sp)
/* 00DF50 0040DF50 8F0C0040 */  lw          $t4, 0x40($t8)
/* 00DF54 0040DF54 24840020 */  addiu       $a0, $a0, 0x20
/* 00DF58 0040DF58 24A5025C */  addiu       $a1, $a1, %lo(STR_1001025C)
/* 00DF5C 0040DF5C 0320F809 */  jalr        $t9
/* 00DF60 0040DF60 AFAC0018 */   sw         $t4, 0x18($sp)
/* 00DF64 0040DF64 8FBC0028 */  lw          $gp, 0x28($sp)
/* 00DF68 0040DF68 8FAD0034 */  lw          $t5, 0x34($sp)
/* 00DF6C 0040DF6C 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00DF70 0040DF70 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00DF74 0040DF74 8DAE0044 */  lw          $t6, 0x44($t5)
/* 00DF78 0040DF78 8F85802C */  lw          $a1, %got(STR_10010280)($gp)
/* 00DF7C 0040DF7C 24840020 */  addiu       $a0, $a0, 0x20
/* 00DF80 0040DF80 01C03025 */  move        $a2, $t6
/* 00DF84 0040DF84 01C03825 */  move        $a3, $t6
/* 00DF88 0040DF88 0320F809 */  jalr        $t9
/* 00DF8C 0040DF8C 24A50280 */   addiu      $a1, $a1, %lo(STR_10010280)
/* 00DF90 0040DF90 8FBC0028 */  lw          $gp, 0x28($sp)
/* 00DF94 0040DF94 24190001 */  addiu       $t9, $zero, 0x1
/* 00DF98 0040DF98 AFB90030 */  sw          $t9, 0x30($sp)
.L0040DF9C:
/* 00DF9C 0040DF9C 8FA90034 */  lw          $t1, 0x34($sp)
/* 00DFA0 0040DFA0 8D280000 */  lw          $t0, 0x0($t1)
/* 00DFA4 0040DFA4 1500FF99 */  bnez        $t0, .L0040DE0C
/* 00DFA8 0040DFA8 AFA80034 */   sw         $t0, 0x34($sp)
.L0040DFAC:
/* 00DFAC 0040DFAC 8FAF0030 */  lw          $t7, 0x30($sp)
/* 00DFB0 0040DFB0 11E00005 */  beqz        $t7, .L0040DFC8
/* 00DFB4 0040DFB4 00000000 */   nop
/* 00DFB8 0040DFB8 10000007 */  b           .L0040DFD8
/* 00DFBC 0040DFBC 2402FFFF */   addiu      $v0, $zero, -0x1
/* 00DFC0 0040DFC0 10000003 */  b           .L0040DFD0
/* 00DFC4 0040DFC4 00000000 */   nop
.L0040DFC8:
/* 00DFC8 0040DFC8 10000003 */  b           .L0040DFD8
/* 00DFCC 0040DFCC 00001025 */   move       $v0, $zero
.L0040DFD0:
/* 00DFD0 0040DFD0 10000001 */  b           .L0040DFD8
/* 00DFD4 0040DFD4 00000000 */   nop
.L0040DFD8:
/* 00DFD8 0040DFD8 8FBF002C */  lw          $ra, 0x2C($sp)
/* 00DFDC 0040DFDC 27BD0038 */  addiu       $sp, $sp, 0x38
/* 00DFE0 0040DFE0 03E00008 */  jr          $ra
/* 00DFE4 0040DFE4 00000000 */   nop
