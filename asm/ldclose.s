glabel ldclose # 209
# _gp_disp: 0xFBF90E4
.set noreorder; .cpload $t9; # .set reorder
/* 024C68 00424C68 8F998248 */  lw          $t9, %call16(vldldptr)($gp)
/* 024C6C 00424C6C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 024C70 00424C70 AFBF001C */  sw          $ra, 0x1C($sp)
/* 024C74 00424C74 AFB00014 */  sw          $s0, 0x14($sp)
/* 024C78 00424C78 00808025 */  move        $s0, $a0
/* 024C7C 00424C7C 0320F809 */  jalr        $t9
/* 024C80 00424C80 AFBC0018 */   sw         $gp, 0x18($sp)
/* 024C84 00424C84 14400003 */  bnez        $v0, .L00424C94
/* 024C88 00424C88 8FBC0018 */   lw         $gp, 0x18($sp)
/* 024C8C 00424C8C 10000020 */  b           .L00424D10
/* 024C90 00424C90 24020001 */   addiu      $v0, $zero, 0x1
.L00424C94:
/* 024C94 00424C94 960E0028 */  lhu         $t6, 0x28($s0)
/* 024C98 00424C98 3401FF65 */  ori         $at, $zero, 0xFF65
/* 024C9C 00424C9C 15C1000A */  bne         $t6, $at, .L00424CC8
/* 024CA0 00424CA0 00000000 */   nop
/* 024CA4 00424CA4 8F99801C */  lw          $t9, %got(func_00424404)($gp)
/* 024CA8 00424CA8 02002025 */  move        $a0, $s0
/* 024CAC 00424CAC 27394404 */  addiu       $t9, $t9, %lo(func_00424404)
/* 024CB0 00424CB0 0320F809 */  jalr        $t9
/* 024CB4 00424CB4 00000000 */   nop
/* 024CB8 00424CB8 10400003 */  beqz        $v0, .L00424CC8
/* 024CBC 00424CBC 8FBC0018 */   lw         $gp, 0x18($sp)
/* 024CC0 00424CC0 10000013 */  b           .L00424D10
/* 024CC4 00424CC4 00001025 */   move       $v0, $zero
.L00424CC8:
/* 024CC8 00424CC8 8F9980C0 */  lw          $t9, %call16(close)($gp)
/* 024CCC 00424CCC 8E040030 */  lw          $a0, 0x30($s0)
/* 024CD0 00424CD0 0320F809 */  jalr        $t9
/* 024CD4 00424CD4 00000000 */   nop
/* 024CD8 00424CD8 8E0F002C */  lw          $t7, 0x2C($s0)
/* 024CDC 00424CDC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 024CE0 00424CE0 24030001 */  addiu       $v1, $zero, 0x1
/* 024CE4 00424CE4 15E00003 */  bnez        $t7, .L00424CF4
/* 024CE8 00424CE8 00000000 */   nop
/* 024CEC 00424CEC 10000001 */  b           .L00424CF4
/* 024CF0 00424CF0 00001825 */   move       $v1, $zero
.L00424CF4:
/* 024CF4 00424CF4 8F99824C */  lw          $t9, %call16(freeldptr)($gp)
/* 024CF8 00424CF8 02002025 */  move        $a0, $s0
/* 024CFC 00424CFC AFA30024 */  sw          $v1, 0x24($sp)
/* 024D00 00424D00 0320F809 */  jalr        $t9
/* 024D04 00424D04 00000000 */   nop
/* 024D08 00424D08 8FBC0018 */  lw          $gp, 0x18($sp)
/* 024D0C 00424D0C 8FA20024 */  lw          $v0, 0x24($sp)
.L00424D10:
/* 024D10 00424D10 8FBF001C */  lw          $ra, 0x1C($sp)
/* 024D14 00424D14 8FB00014 */  lw          $s0, 0x14($sp)
/* 024D18 00424D18 27BD0028 */  addiu       $sp, $sp, 0x28
/* 024D1C 00424D1C 03E00008 */  jr          $ra
/* 024D20 00424D20 00000000 */   nop
