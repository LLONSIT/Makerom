.section .rodata
glabel STR_10013D38
/* 043D38 10013D38 */ .asciz "st_paux_ifd_iaux: ifd (%d) or iline (%d) out of range\n"
                      .balign 4


.section .text
glabel st_pline_ifd_iline # 660
# _gp_disp: 0xFBE2D90
.set noreorder; .cpload $t9; # .set reorder
/* 03AFBC 0043AFBC 8F8E87C4 */  lw          $t6, %got(st_pchdr)($gp)
/* 03AFC0 0043AFC0 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03AFC4 0043AFC4 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03AFC8 0043AFC8 8DCE0000 */  lw          $t6, 0x0($t6)
/* 03AFCC 0043AFCC AFBC0018 */  sw          $gp, 0x18($sp)
/* 03AFD0 0043AFD0 00803825 */  move        $a3, $a0
/* 03AFD4 0043AFD4 8DCF0004 */  lw          $t7, 0x4($t6)
/* 03AFD8 0043AFD8 00A03025 */  move        $a2, $a1
/* 03AFDC 0043AFDC 15E0000A */  bnez        $t7, .L0043B008
/* 03AFE0 0043AFE0 00000000 */   nop
/* 03AFE4 0043AFE4 8F998638 */  lw          $t9, %call16(st_internal)($gp)
/* 03AFE8 0043AFE8 8F84802C */  lw          $a0, %got(D_10015B60)($gp)
/* 03AFEC 0043AFEC AFA5002C */  sw          $a1, 0x2C($sp)
/* 03AFF0 0043AFF0 AFA70028 */  sw          $a3, 0x28($sp)
/* 03AFF4 0043AFF4 0320F809 */  jalr        $t9
/* 03AFF8 0043AFF8 24845B60 */   addiu      $a0, $a0, %lo(D_10015B60)
/* 03AFFC 0043AFFC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03B000 0043B000 8FA6002C */  lw          $a2, 0x2C($sp)
/* 03B004 0043B004 8FA70028 */  lw          $a3, 0x28($sp)
.L0043B008:
/* 03B008 0043B008 04E00011 */  bltz        $a3, .L0043B050
/* 03B00C 0043B00C 00E02825 */   move       $a1, $a3
/* 03B010 0043B010 04C0000F */  bltz        $a2, .L0043B050
/* 03B014 0043B014 00000000 */   nop
/* 03B018 0043B018 8F8287C4 */  lw          $v0, %got(st_pchdr)($gp)
/* 03B01C 0043B01C 8C420000 */  lw          $v0, 0x0($v0)
/* 03B020 0043B020 8C58000C */  lw          $t8, 0xC($v0)
/* 03B024 0043B024 00F8082A */  slt         $at, $a3, $t8
/* 03B028 0043B028 10200009 */  beqz        $at, .L0043B050
/* 03B02C 0043B02C 00000000 */   nop
/* 03B030 0043B030 8C590004 */  lw          $t9, 0x4($v0)
/* 03B034 0043B034 00074180 */  sll         $t0, $a3, 6
/* 03B038 0043B038 03281821 */  addu        $v1, $t9, $t0
/* 03B03C 0043B03C 8C690000 */  lw          $t1, 0x0($v1)
/* 03B040 0043B040 8D2A001C */  lw          $t2, 0x1C($t1)
/* 03B044 0043B044 00CA082A */  slt         $at, $a2, $t2
/* 03B048 0043B048 54200010 */  bnel        $at, $zero, .L0043B08C
/* 03B04C 0043B04C 8FBF001C */   lw         $ra, 0x1C($sp)
.L0043B050:
/* 03B050 0043B050 8F998638 */  lw          $t9, %call16(st_internal)($gp)
/* 03B054 0043B054 8F84802C */  lw          $a0, %got(STR_10013D38)($gp)
/* 03B058 0043B058 00075980 */  sll         $t3, $a3, 6
/* 03B05C 0043B05C AFAB0024 */  sw          $t3, 0x24($sp)
/* 03B060 0043B060 AFA6002C */  sw          $a2, 0x2C($sp)
/* 03B064 0043B064 0320F809 */  jalr        $t9
/* 03B068 0043B068 24843D38 */   addiu      $a0, $a0, %lo(STR_10013D38)
/* 03B06C 0043B06C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03B070 0043B070 8FAE0024 */  lw          $t6, 0x24($sp)
/* 03B074 0043B074 8FA6002C */  lw          $a2, 0x2C($sp)
/* 03B078 0043B078 8F8C87C4 */  lw          $t4, %got(st_pchdr)($gp)
/* 03B07C 0043B07C 8D8C0000 */  lw          $t4, 0x0($t4)
/* 03B080 0043B080 8D8D0004 */  lw          $t5, 0x4($t4)
/* 03B084 0043B084 01AE1821 */  addu        $v1, $t5, $t6
/* 03B088 0043B088 8FBF001C */  lw          $ra, 0x1C($sp)
.L0043B08C:
/* 03B08C 0043B08C 8C6F0024 */  lw          $t7, 0x24($v1)
/* 03B090 0043B090 0006C080 */  sll         $t8, $a2, 2
/* 03B094 0043B094 27BD0028 */  addiu       $sp, $sp, 0x28
/* 03B098 0043B098 03E00008 */  jr          $ra
/* 03B09C 0043B09C 01F81021 */   addu       $v0, $t7, $t8
