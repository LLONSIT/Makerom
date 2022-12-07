.section .rodata
glabel STR_10013D00
/* 043D00 10013D00 */ .asciz "st_paux_ifd_iaux: ifd (%d) or iaux (%d) out of range\n"
                      .balign 4


.section .text
glabel st_paux_ifd_iaux # 659
# _gp_disp: 0xFBE2E80
.set noreorder; .cpload $t9; # .set reorder
/* 03AECC 0043AECC 8F8E87C4 */  lw          $t6, %got(st_pchdr)($gp)
/* 03AED0 0043AED0 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03AED4 0043AED4 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03AED8 0043AED8 8DCE0000 */  lw          $t6, 0x0($t6)
/* 03AEDC 0043AEDC AFBC0018 */  sw          $gp, 0x18($sp)
/* 03AEE0 0043AEE0 00803825 */  move        $a3, $a0
/* 03AEE4 0043AEE4 8DCF0004 */  lw          $t7, 0x4($t6)
/* 03AEE8 0043AEE8 00A03025 */  move        $a2, $a1
/* 03AEEC 0043AEEC 15E0000A */  bnez        $t7, .L0043AF18
/* 03AEF0 0043AEF0 00000000 */   nop
/* 03AEF4 0043AEF4 8F998638 */  lw          $t9, %call16(st_internal)($gp)
/* 03AEF8 0043AEF8 8F84802C */  lw          $a0, %got(D_10015B60)($gp)
/* 03AEFC 0043AEFC AFA5002C */  sw          $a1, 0x2C($sp)
/* 03AF00 0043AF00 AFA70028 */  sw          $a3, 0x28($sp)
/* 03AF04 0043AF04 0320F809 */  jalr        $t9
/* 03AF08 0043AF08 24845B60 */   addiu      $a0, $a0, %lo(D_10015B60)
/* 03AF0C 0043AF0C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03AF10 0043AF10 8FA6002C */  lw          $a2, 0x2C($sp)
/* 03AF14 0043AF14 8FA70028 */  lw          $a3, 0x28($sp)
.L0043AF18:
/* 03AF18 0043AF18 04E00011 */  bltz        $a3, .L0043AF60
/* 03AF1C 0043AF1C 00E02825 */   move       $a1, $a3
/* 03AF20 0043AF20 04C0000F */  bltz        $a2, .L0043AF60
/* 03AF24 0043AF24 00000000 */   nop
/* 03AF28 0043AF28 8F8287C4 */  lw          $v0, %got(st_pchdr)($gp)
/* 03AF2C 0043AF2C 8C420000 */  lw          $v0, 0x0($v0)
/* 03AF30 0043AF30 8C58000C */  lw          $t8, 0xC($v0)
/* 03AF34 0043AF34 00F8082A */  slt         $at, $a3, $t8
/* 03AF38 0043AF38 10200009 */  beqz        $at, .L0043AF60
/* 03AF3C 0043AF3C 00000000 */   nop
/* 03AF40 0043AF40 8C590004 */  lw          $t9, 0x4($v0)
/* 03AF44 0043AF44 00074180 */  sll         $t0, $a3, 6
/* 03AF48 0043AF48 03281821 */  addu        $v1, $t9, $t0
/* 03AF4C 0043AF4C 8C690000 */  lw          $t1, 0x0($v1)
/* 03AF50 0043AF50 8D2A0030 */  lw          $t2, 0x30($t1)
/* 03AF54 0043AF54 00CA082A */  slt         $at, $a2, $t2
/* 03AF58 0043AF58 54200010 */  bnel        $at, $zero, .L0043AF9C
/* 03AF5C 0043AF5C 8FBF001C */   lw         $ra, 0x1C($sp)
.L0043AF60:
/* 03AF60 0043AF60 8F998638 */  lw          $t9, %call16(st_internal)($gp)
/* 03AF64 0043AF64 8F84802C */  lw          $a0, %got(STR_10013D00)($gp)
/* 03AF68 0043AF68 00075980 */  sll         $t3, $a3, 6
/* 03AF6C 0043AF6C AFAB0024 */  sw          $t3, 0x24($sp)
/* 03AF70 0043AF70 AFA6002C */  sw          $a2, 0x2C($sp)
/* 03AF74 0043AF74 0320F809 */  jalr        $t9
/* 03AF78 0043AF78 24843D00 */   addiu      $a0, $a0, %lo(STR_10013D00)
/* 03AF7C 0043AF7C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03AF80 0043AF80 8FAE0024 */  lw          $t6, 0x24($sp)
/* 03AF84 0043AF84 8FA6002C */  lw          $a2, 0x2C($sp)
/* 03AF88 0043AF88 8F8C87C4 */  lw          $t4, %got(st_pchdr)($gp)
/* 03AF8C 0043AF8C 8D8C0000 */  lw          $t4, 0x0($t4)
/* 03AF90 0043AF90 8D8D0004 */  lw          $t5, 0x4($t4)
/* 03AF94 0043AF94 01AE1821 */  addu        $v1, $t5, $t6
/* 03AF98 0043AF98 8FBF001C */  lw          $ra, 0x1C($sp)
.L0043AF9C:
/* 03AF9C 0043AF9C 8C6F000C */  lw          $t7, 0xC($v1)
/* 03AFA0 0043AFA0 0006C080 */  sll         $t8, $a2, 2
/* 03AFA4 0043AFA4 27BD0028 */  addiu       $sp, $sp, 0x28
/* 03AFA8 0043AFA8 03E00008 */  jr          $ra
/* 03AFAC 0043AFAC 01F81021 */   addu       $v0, $t7, $t8
