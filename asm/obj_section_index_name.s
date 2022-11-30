.section .rodata
glabel STR_10012CC0
/* 042CC0 10012CC0 */ .asciz "N/A"
                      .balign 4
/* 042CC4 10012CC4 */ .asciz ""
                      .balign 4
/* 042CC8 10012CC8 */ .asciz ""
                      .balign 4
/* 042CCC 10012CCC */ .asciz ""
                      .balign 4


.section .text
glabel obj_section_index_name # 451
# _gp_disp: 0xFBF2DE0
.set noreorder; .cpload $t9; # .set reorder
/* 02AF6C 0042AF6C 8F998438 */  lw          $t9, %call16(obj_shstrndx)($gp)
/* 02AF70 0042AF70 27BDFF88 */  addiu       $sp, $sp, -0x78
/* 02AF74 0042AF74 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02AF78 0042AF78 AFB00014 */  sw          $s0, 0x14($sp)
/* 02AF7C 0042AF7C 00808025 */  move        $s0, $a0
/* 02AF80 0042AF80 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02AF84 0042AF84 0320F809 */  jalr        $t9
/* 02AF88 0042AF88 AFA5007C */   sw         $a1, 0x7C($sp)
/* 02AF8C 0042AF8C 1040001A */  beqz        $v0, .L0042AFF8
/* 02AF90 0042AF90 8FBC0018 */   lw         $gp, 0x18($sp)
/* 02AF94 0042AF94 8F998438 */  lw          $t9, %call16(obj_shstrndx)($gp)
/* 02AF98 0042AF98 02002025 */  move        $a0, $s0
/* 02AF9C 0042AF9C 0320F809 */  jalr        $t9
/* 02AFA0 0042AFA0 00000000 */   nop
/* 02AFA4 0042AFA4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02AFA8 0042AFA8 27A40024 */  addiu       $a0, $sp, 0x24
/* 02AFAC 0042AFAC 02002825 */  move        $a1, $s0
/* 02AFB0 0042AFB0 8F998434 */  lw          $t9, %call16(obj_section)($gp)
/* 02AFB4 0042AFB4 00403025 */  move        $a2, $v0
/* 02AFB8 0042AFB8 0320F809 */  jalr        $t9
/* 02AFBC 0042AFBC 00000000 */   nop
/* 02AFC0 0042AFC0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02AFC4 0042AFC4 27A4004C */  addiu       $a0, $sp, 0x4C
/* 02AFC8 0042AFC8 02002825 */  move        $a1, $s0
/* 02AFCC 0042AFCC 8F998434 */  lw          $t9, %call16(obj_section)($gp)
/* 02AFD0 0042AFD0 8FA6007C */  lw          $a2, 0x7C($sp)
/* 02AFD4 0042AFD4 0320F809 */  jalr        $t9
/* 02AFD8 0042AFD8 00000000 */   nop
/* 02AFDC 0042AFDC 8FAE004C */  lw          $t6, 0x4C($sp)
/* 02AFE0 0042AFE0 8E0F00C4 */  lw          $t7, 0xC4($s0)
/* 02AFE4 0042AFE4 8FB90034 */  lw          $t9, 0x34($sp)
/* 02AFE8 0042AFE8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02AFEC 0042AFEC 01CFC021 */  addu        $t8, $t6, $t7
/* 02AFF0 0042AFF0 10000003 */  b           .L0042B000
/* 02AFF4 0042AFF4 03191821 */   addu       $v1, $t8, $t9
.L0042AFF8:
/* 02AFF8 0042AFF8 8F83802C */  lw          $v1, %got(STR_10012CC0)($gp)
/* 02AFFC 0042AFFC 24632CC0 */  addiu       $v1, $v1, %lo(STR_10012CC0)
.L0042B000:
/* 02B000 0042B000 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02B004 0042B004 8FB00014 */  lw          $s0, 0x14($sp)
/* 02B008 0042B008 27BD0078 */  addiu       $sp, $sp, 0x78
/* 02B00C 0042B00C 03E00008 */  jr          $ra
/* 02B010 0042B010 00601025 */   move       $v0, $v1
