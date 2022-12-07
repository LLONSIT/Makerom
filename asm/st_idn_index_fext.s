.section .rodata
glabel STR_1001403C
/* 04403C 1001403C */ .asciz "st_idn_index_fext: you didn't initialize with cuinit or readst\n"
                      .balign 4


.section .text
glabel st_idn_index_fext # 682
# _gp_disp: 0xFBE1BC0
.set noreorder; .cpload $t9; # .set reorder
/* 03C18C 0043C18C 8F8387C4 */  lw          $v1, %got(st_pchdr)($gp)
/* 03C190 0043C190 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 03C194 0043C194 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03C198 0043C198 8C630000 */  lw          $v1, 0x0($v1)
/* 03C19C 0043C19C AFBC0018 */  sw          $gp, 0x18($sp)
/* 03C1A0 0043C1A0 AFA40038 */  sw          $a0, 0x38($sp)
/* 03C1A4 0043C1A4 14600008 */  bnez        $v1, .L0043C1C8
/* 03C1A8 0043C1A8 AFA5003C */   sw         $a1, 0x3C($sp)
/* 03C1AC 0043C1AC 8F998614 */  lw          $t9, %call16(_md_st_internal)($gp)
/* 03C1B0 0043C1B0 8F84802C */  lw          $a0, %got(STR_1001403C)($gp)
/* 03C1B4 0043C1B4 0320F809 */  jalr        $t9
/* 03C1B8 0043C1B8 2484403C */   addiu      $a0, $a0, %lo(STR_1001403C)
/* 03C1BC 0043C1BC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03C1C0 0043C1C0 8F8387C4 */  lw          $v1, %got(st_pchdr)($gp)
/* 03C1C4 0043C1C4 8C630000 */  lw          $v1, 0x0($v1)
.L0043C1C8:
/* 03C1C8 0043C1C8 8C620040 */  lw          $v0, 0x40($v1)
/* 03C1CC 0043C1CC 8C6E003C */  lw          $t6, 0x3C($v1)
/* 03C1D0 0043C1D0 24650040 */  addiu       $a1, $v1, 0x40
/* 03C1D4 0043C1D4 24060008 */  addiu       $a2, $zero, 0x8
/* 03C1D8 0043C1D8 01C2082A */  slt         $at, $t6, $v0
/* 03C1DC 0043C1DC 1420000B */  bnez        $at, .L0043C20C
/* 03C1E0 0043C1E0 00404025 */   move       $t0, $v0
/* 03C1E4 0043C1E4 8F998624 */  lw          $t9, %call16(_md_st_malloc)($gp)
/* 03C1E8 0043C1E8 8C640038 */  lw          $a0, 0x38($v1)
/* 03C1EC 0043C1EC AFA2002C */  sw          $v0, 0x2C($sp)
/* 03C1F0 0043C1F0 0320F809 */  jalr        $t9
/* 03C1F4 0043C1F4 24070080 */   addiu      $a3, $zero, 0x80
/* 03C1F8 0043C1F8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03C1FC 0043C1FC 8FA8002C */  lw          $t0, 0x2C($sp)
/* 03C200 0043C200 8F8F87C4 */  lw          $t7, %got(st_pchdr)($gp)
/* 03C204 0043C204 8DEF0000 */  lw          $t7, 0x0($t7)
/* 03C208 0043C208 ADE20038 */  sw          $v0, 0x38($t7)
.L0043C20C:
/* 03C20C 0043C20C 55000009 */  bnel        $t0, $zero, .L0043C234
/* 03C210 0043C210 8FA9003C */   lw         $t1, 0x3C($sp)
/* 03C214 0043C214 8F9887C4 */  lw          $t8, %got(st_pchdr)($gp)
/* 03C218 0043C218 8F998170 */  lw          $t9, %call16(bzero)($gp)
/* 03C21C 0043C21C 24050010 */  addiu       $a1, $zero, 0x10
/* 03C220 0043C220 8F180000 */  lw          $t8, 0x0($t8)
/* 03C224 0043C224 0320F809 */  jalr        $t9
/* 03C228 0043C228 8F040038 */   lw         $a0, 0x38($t8)
/* 03C22C 0043C22C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03C230 0043C230 8FA9003C */  lw          $t1, 0x3C($sp)
.L0043C234:
/* 03C234 0043C234 8FB90038 */  lw          $t9, 0x38($sp)
/* 03C238 0043C238 3C0A7FFF */  lui         $t2, (0x7FFFFFFF >> 16)
/* 03C23C 0043C23C 11200006 */  beqz        $t1, .L0043C258
/* 03C240 0043C240 AFB90034 */   sw         $t9, 0x34($sp)
/* 03C244 0043C244 8F8387C4 */  lw          $v1, %got(st_pchdr)($gp)
/* 03C248 0043C248 354AFFFF */  ori         $t2, $t2, (0x7FFFFFFF & 0xFFFF)
/* 03C24C 0043C24C AFAA0030 */  sw          $t2, 0x30($sp)
/* 03C250 0043C250 10000008 */  b           .L0043C274
/* 03C254 0043C254 8C630000 */   lw         $v1, 0x0($v1)
.L0043C258:
/* 03C258 0043C258 8F998620 */  lw          $t9, %call16(_md_st_currentifd)($gp)
/* 03C25C 0043C25C 0320F809 */  jalr        $t9
/* 03C260 0043C260 00000000 */   nop
/* 03C264 0043C264 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03C268 0043C268 AFA20030 */  sw          $v0, 0x30($sp)
/* 03C26C 0043C26C 8F8387C4 */  lw          $v1, %got(st_pchdr)($gp)
/* 03C270 0043C270 8C630000 */  lw          $v1, 0x0($v1)
.L0043C274:
/* 03C274 0043C274 8C6C003C */  lw          $t4, 0x3C($v1)
/* 03C278 0043C278 8C6B0038 */  lw          $t3, 0x38($v1)
/* 03C27C 0043C27C 27AF0030 */  addiu       $t7, $sp, 0x30
/* 03C280 0043C280 8DF90000 */  lw          $t9, 0x0($t7)
/* 03C284 0043C284 000C68C0 */  sll         $t5, $t4, 3
/* 03C288 0043C288 016D7021 */  addu        $t6, $t3, $t5
/* 03C28C 0043C28C ADD90000 */  sw          $t9, 0x0($t6)
/* 03C290 0043C290 8DF80004 */  lw          $t8, 0x4($t7)
/* 03C294 0043C294 8F8387C4 */  lw          $v1, %got(st_pchdr)($gp)
/* 03C298 0043C298 ADD80004 */  sw          $t8, 0x4($t6)
/* 03C29C 0043C29C 8C630000 */  lw          $v1, 0x0($v1)
/* 03C2A0 0043C2A0 8C62003C */  lw          $v0, 0x3C($v1)
/* 03C2A4 0043C2A4 24490001 */  addiu       $t1, $v0, 0x1
/* 03C2A8 0043C2A8 AC69003C */  sw          $t1, 0x3C($v1)
/* 03C2AC 0043C2AC 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03C2B0 0043C2B0 27BD0038 */  addiu       $sp, $sp, 0x38
/* 03C2B4 0043C2B4 03E00008 */  jr          $ra
/* 03C2B8 0043C2B8 00000000 */   nop
