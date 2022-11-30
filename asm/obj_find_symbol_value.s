glabel obj_find_symbol_value # 282
# _gp_disp: 0xFBF41CC
.set noreorder; .cpload $t9; # .set reorder
/* 029B80 00429B80 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 029B84 00429B84 8F998284 */  lw          $t9, %call16(elfhash)($gp)
/* 029B88 00429B88 AFB00014 */  sw          $s0, 0x14($sp)
/* 029B8C 00429B8C 00808025 */  move        $s0, $a0
/* 029B90 00429B90 AFBF001C */  sw          $ra, 0x1C($sp)
/* 029B94 00429B94 AFBC0018 */  sw          $gp, 0x18($sp)
/* 029B98 00429B98 AFA5002C */  sw          $a1, 0x2C($sp)
/* 029B9C 00429B9C AFA60030 */  sw          $a2, 0x30($sp)
/* 029BA0 00429BA0 0320F809 */  jalr        $t9
/* 029BA4 00429BA4 00A02025 */   move       $a0, $a1
/* 029BA8 00429BA8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 029BAC 00429BAC 02002025 */  move        $a0, $s0
/* 029BB0 00429BB0 8FA5002C */  lw          $a1, 0x2C($sp)
/* 029BB4 00429BB4 8F99829C */  lw          $t9, %call16(search_symbol_using_hash)($gp)
/* 029BB8 00429BB8 00403025 */  move        $a2, $v0
/* 029BBC 00429BBC 0320F809 */  jalr        $t9
/* 029BC0 00429BC0 00000000 */   nop
/* 029BC4 00429BC4 2401FFFF */  addiu       $at, $zero, -0x1
/* 029BC8 00429BC8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 029BCC 00429BCC 14410003 */  bne         $v0, $at, .L00429BDC
/* 029BD0 00429BD0 00402825 */   move       $a1, $v0
/* 029BD4 00429BD4 10000027 */  b           .L00429C74
/* 029BD8 00429BD8 00001025 */   move       $v0, $zero
.L00429BDC:
/* 029BDC 00429BDC 8F9983EC */  lw          $t9, %call16(obj_sym_shndx)($gp)
/* 029BE0 00429BE0 02002025 */  move        $a0, $s0
/* 029BE4 00429BE4 AFA50024 */  sw          $a1, 0x24($sp)
/* 029BE8 00429BE8 0320F809 */  jalr        $t9
/* 029BEC 00429BEC 00000000 */   nop
/* 029BF0 00429BF0 3401FFF1 */  ori         $at, $zero, 0xFFF1
/* 029BF4 00429BF4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 029BF8 00429BF8 14410007 */  bne         $v0, $at, .L00429C18
/* 029BFC 00429BFC 8FA50024 */   lw         $a1, 0x24($sp)
/* 029C00 00429C00 8F9983E8 */  lw          $t9, %call16(obj_dynsym_value)($gp)
/* 029C04 00429C04 02002025 */  move        $a0, $s0
/* 029C08 00429C08 0320F809 */  jalr        $t9
/* 029C0C 00429C0C 00000000 */   nop
/* 029C10 00429C10 10000018 */  b           .L00429C74
/* 029C14 00429C14 8FBC0018 */   lw         $gp, 0x18($sp)
.L00429C18:
/* 029C18 00429C18 8F998318 */  lw          $t9, %call16(obj_gotsym)($gp)
/* 029C1C 00429C1C 02002025 */  move        $a0, $s0
/* 029C20 00429C20 AFA50024 */  sw          $a1, 0x24($sp)
/* 029C24 00429C24 0320F809 */  jalr        $t9
/* 029C28 00429C28 00000000 */   nop
/* 029C2C 00429C2C 8FA50024 */  lw          $a1, 0x24($sp)
/* 029C30 00429C30 8FBC0018 */  lw          $gp, 0x18($sp)
/* 029C34 00429C34 00A2082B */  sltu        $at, $a1, $v0
/* 029C38 00429C38 10200009 */  beqz        $at, .L00429C60
/* 029C3C 00429C3C 00000000 */   nop
/* 029C40 00429C40 8F9983E8 */  lw          $t9, %call16(obj_dynsym_value)($gp)
/* 029C44 00429C44 02002025 */  move        $a0, $s0
/* 029C48 00429C48 0320F809 */  jalr        $t9
/* 029C4C 00429C4C 00000000 */   nop
/* 029C50 00429C50 8FAE0030 */  lw          $t6, 0x30($sp)
/* 029C54 00429C54 8FBC0018 */  lw          $gp, 0x18($sp)
/* 029C58 00429C58 10000006 */  b           .L00429C74
/* 029C5C 00429C5C 004E1023 */   subu       $v0, $v0, $t6
.L00429C60:
/* 029C60 00429C60 8F998408 */  lw          $t9, %call16(obj_dynsym_got)($gp)
/* 029C64 00429C64 02002025 */  move        $a0, $s0
/* 029C68 00429C68 0320F809 */  jalr        $t9
/* 029C6C 00429C6C 00000000 */   nop
/* 029C70 00429C70 8FBC0018 */  lw          $gp, 0x18($sp)
.L00429C74:
/* 029C74 00429C74 8FBF001C */  lw          $ra, 0x1C($sp)
/* 029C78 00429C78 8FB00014 */  lw          $s0, 0x14($sp)
/* 029C7C 00429C7C 27BD0028 */  addiu       $sp, $sp, 0x28
/* 029C80 00429C80 03E00008 */  jr          $ra
/* 029C84 00429C84 00000000 */   nop
