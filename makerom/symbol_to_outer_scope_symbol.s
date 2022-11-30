glabel symbol_to_outer_scope_symbol # 605
# _gp_disp: 0xFBE7234
.set noreorder; .cpload $t9; # .set reorder
/* 036B18 00436B18 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 036B1C 00436B1C AFBF003C */  sw          $ra, 0x3C($sp)
/* 036B20 00436B20 AFBC0038 */  sw          $gp, 0x38($sp)
/* 036B24 00436B24 AFB70034 */  sw          $s7, 0x34($sp)
/* 036B28 00436B28 AFB60030 */  sw          $s6, 0x30($sp)
/* 036B2C 00436B2C AFB5002C */  sw          $s5, 0x2C($sp)
/* 036B30 00436B30 AFB40028 */  sw          $s4, 0x28($sp)
/* 036B34 00436B34 AFB30024 */  sw          $s3, 0x24($sp)
/* 036B38 00436B38 AFB20020 */  sw          $s2, 0x20($sp)
/* 036B3C 00436B3C AFB1001C */  sw          $s1, 0x1C($sp)
/* 036B40 00436B40 AFB00018 */  sw          $s0, 0x18($sp)
/* 036B44 00436B44 8C8E00D8 */  lw          $t6, 0xD8($a0)
/* 036B48 00436B48 00A08025 */  move        $s0, $a1
/* 036B4C 00436B4C 00808825 */  move        $s1, $a0
/* 036B50 00436B50 00AE082B */  sltu        $at, $a1, $t6
/* 036B54 00436B54 14200003 */  bnez        $at, .L00436B64
/* 036B58 00436B58 00000000 */   nop
/* 036B5C 00436B5C 1000005D */  b           .L00436CD4
/* 036B60 00436B60 2402FFFF */   addiu      $v0, $zero, -0x1
.L00436B64:
/* 036B64 00436B64 8F9984EC */  lw          $t9, %call16(symbol_to_file)($gp)
/* 036B68 00436B68 02202025 */  move        $a0, $s1
/* 036B6C 00436B6C 02002825 */  move        $a1, $s0
/* 036B70 00436B70 0320F809 */  jalr        $t9
/* 036B74 00436B74 00000000 */   nop
/* 036B78 00436B78 8FBC0038 */  lw          $gp, 0x38($sp)
/* 036B7C 00436B7C 02202025 */  move        $a0, $s1
/* 036B80 00436B80 00402825 */  move        $a1, $v0
/* 036B84 00436B84 8F9984F8 */  lw          $t9, %call16(file_symbol)($gp)
/* 036B88 00436B88 0320F809 */  jalr        $t9
/* 036B8C 00436B8C 00000000 */   nop
/* 036B90 00436B90 2610FFFF */  addiu       $s0, $s0, -0x1
/* 036B94 00436B94 0050082B */  sltu        $at, $v0, $s0
/* 036B98 00436B98 8FBC0038 */  lw          $gp, 0x38($sp)
/* 036B9C 00436B9C 10200024 */  beqz        $at, .L00436C30
/* 036BA0 00436BA0 00409825 */   move       $s3, $v0
/* 036BA4 00436BA4 2416000E */  addiu       $s6, $zero, 0xE
/* 036BA8 00436BA8 24150007 */  addiu       $s5, $zero, 0x7
/* 036BAC 00436BAC 24140006 */  addiu       $s4, $zero, 0x6
/* 036BB0 00436BB0 24120008 */  addiu       $s2, $zero, 0x8
.L00436BB4:
/* 036BB4 00436BB4 8F998560 */  lw          $t9, %call16(symbol_type)($gp)
/* 036BB8 00436BB8 02202025 */  move        $a0, $s1
/* 036BBC 00436BBC 02002825 */  move        $a1, $s0
/* 036BC0 00436BC0 0320F809 */  jalr        $t9
/* 036BC4 00436BC4 00000000 */   nop
/* 036BC8 00436BC8 8FBC0038 */  lw          $gp, 0x38($sp)
/* 036BCC 00436BCC 10540003 */  beq         $v0, $s4, .L00436BDC
/* 036BD0 00436BD0 0040B825 */   move       $s7, $v0
/* 036BD4 00436BD4 14560003 */  bne         $v0, $s6, .L00436BE4
/* 036BD8 00436BD8 00000000 */   nop
.L00436BDC:
/* 036BDC 00436BDC 1000003D */  b           .L00436CD4
/* 036BE0 00436BE0 02001025 */   move       $v0, $s0
.L00436BE4:
/* 036BE4 00436BE4 14520009 */  bne         $v0, $s2, .L00436C0C
/* 036BE8 00436BE8 00000000 */   nop
/* 036BEC 00436BEC 8F998570 */  lw          $t9, %call16(symbol_isym)($gp)
/* 036BF0 00436BF0 02202025 */  move        $a0, $s1
/* 036BF4 00436BF4 02002825 */  move        $a1, $s0
/* 036BF8 00436BF8 0320F809 */  jalr        $t9
/* 036BFC 00436BFC 00000000 */   nop
/* 036C00 00436C00 8FBC0038 */  lw          $gp, 0x38($sp)
/* 036C04 00436C04 10000005 */  b           .L00436C1C
/* 036C08 00436C08 00408025 */   move       $s0, $v0
.L00436C0C:
/* 036C0C 00436C0C 54550004 */  bnel        $v0, $s5, .L00436C20
/* 036C10 00436C10 2610FFFF */   addiu      $s0, $s0, -0x1
/* 036C14 00436C14 10000006 */  b           .L00436C30
/* 036C18 00436C18 AFB70040 */   sw         $s7, 0x40($sp)
.L00436C1C:
/* 036C1C 00436C1C 2610FFFF */  addiu       $s0, $s0, -0x1
.L00436C20:
/* 036C20 00436C20 0270082B */  sltu        $at, $s3, $s0
/* 036C24 00436C24 1420FFE3 */  bnez        $at, .L00436BB4
/* 036C28 00436C28 00000000 */   nop
/* 036C2C 00436C2C AFB70040 */  sw          $s7, 0x40($sp)
.L00436C30:
/* 036C30 00436C30 0213082B */  sltu        $at, $s0, $s3
/* 036C34 00436C34 24140006 */  addiu       $s4, $zero, 0x6
/* 036C38 00436C38 24150007 */  addiu       $s5, $zero, 0x7
/* 036C3C 00436C3C 2416000E */  addiu       $s6, $zero, 0xE
/* 036C40 00436C40 10200003 */  beqz        $at, .L00436C50
/* 036C44 00436C44 8FB70040 */   lw         $s7, 0x40($sp)
/* 036C48 00436C48 10000022 */  b           .L00436CD4
/* 036C4C 00436C4C 2402FFFF */   addiu      $v0, $zero, -0x1
.L00436C50:
/* 036C50 00436C50 8F8F8030 */  lw          $t7, %got(B_1001A5D0)($gp)
/* 036C54 00436C54 24180001 */  addiu       $t8, $zero, 0x1
/* 036C58 00436C58 02202025 */  move        $a0, $s1
/* 036C5C 00436C5C 81EFA5D0 */  lb          $t7, %lo(B_1001A5D0)($t7)
/* 036C60 00436C60 11E00003 */  beqz        $t7, .L00436C70
/* 036C64 00436C64 00000000 */   nop
/* 036C68 00436C68 1000001A */  b           .L00436CD4
/* 036C6C 00436C6C 02001025 */   move       $v0, $s0
.L00436C70:
/* 036C70 00436C70 8F998588 */  lw          $t9, %call16(symbol_to_outer_scope_symbol)($gp)
/* 036C74 00436C74 8F818030 */  lw          $at, %got(B_1001A5D0)($gp)
/* 036C78 00436C78 02002825 */  move        $a1, $s0
/* 036C7C 00436C7C 0320F809 */  jalr        $t9
/* 036C80 00436C80 A038A5D0 */   sb         $t8, %lo(B_1001A5D0)($at)
/* 036C84 00436C84 8FBC0038 */  lw          $gp, 0x38($sp)
/* 036C88 00436C88 00409025 */  move        $s2, $v0
/* 036C8C 00436C8C 02202025 */  move        $a0, $s1
/* 036C90 00436C90 8F998560 */  lw          $t9, %call16(symbol_type)($gp)
/* 036C94 00436C94 8F818030 */  lw          $at, %got(B_1001A5D0)($gp)
/* 036C98 00436C98 00402825 */  move        $a1, $v0
/* 036C9C 00436C9C 0320F809 */  jalr        $t9
/* 036CA0 00436CA0 A020A5D0 */   sb         $zero, %lo(B_1001A5D0)($at)
/* 036CA4 00436CA4 2401FFFF */  addiu       $at, $zero, -0x1
/* 036CA8 00436CA8 12410007 */  beq         $s2, $at, .L00436CC8
/* 036CAC 00436CAC 8FBC0038 */   lw         $gp, 0x38($sp)
/* 036CB0 00436CB0 16F50005 */  bne         $s7, $s5, .L00436CC8
/* 036CB4 00436CB4 00000000 */   nop
/* 036CB8 00436CB8 50540006 */  beql        $v0, $s4, .L00436CD4
/* 036CBC 00436CBC 02401025 */   move       $v0, $s2
/* 036CC0 00436CC0 50560004 */  beql        $v0, $s6, .L00436CD4
/* 036CC4 00436CC4 02401025 */   move       $v0, $s2
.L00436CC8:
/* 036CC8 00436CC8 10000002 */  b           .L00436CD4
/* 036CCC 00436CCC 02001025 */   move       $v0, $s0
/* 036CD0 00436CD0 02401025 */  move        $v0, $s2
.L00436CD4:
/* 036CD4 00436CD4 8FBF003C */  lw          $ra, 0x3C($sp)
/* 036CD8 00436CD8 8FB00018 */  lw          $s0, 0x18($sp)
/* 036CDC 00436CDC 8FB1001C */  lw          $s1, 0x1C($sp)
/* 036CE0 00436CE0 8FB20020 */  lw          $s2, 0x20($sp)
/* 036CE4 00436CE4 8FB30024 */  lw          $s3, 0x24($sp)
/* 036CE8 00436CE8 8FB40028 */  lw          $s4, 0x28($sp)
/* 036CEC 00436CEC 8FB5002C */  lw          $s5, 0x2C($sp)
/* 036CF0 00436CF0 8FB60030 */  lw          $s6, 0x30($sp)
/* 036CF4 00436CF4 8FB70034 */  lw          $s7, 0x34($sp)
/* 036CF8 00436CF8 03E00008 */  jr          $ra
/* 036CFC 00436CFC 27BD0050 */   addiu      $sp, $sp, 0x50
