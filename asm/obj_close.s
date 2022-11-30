.section .rodata
glabel STR_10011F48
/* 041F48 10011F48 */ .asciz "obj_write failed"
                      .balign 4


.section .text
glabel obj_close # 262
# _gp_disp: 0xFBF5FE8
.set noreorder; .cpload $t9; # .set reorder
/* 027D64 00427D64 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 027D68 00427D68 AFBF001C */  sw          $ra, 0x1C($sp)
/* 027D6C 00427D6C AFBC0018 */  sw          $gp, 0x18($sp)
/* 027D70 00427D70 AFB00014 */  sw          $s0, 0x14($sp)
/* 027D74 00427D74 8C820180 */  lw          $v0, 0x180($a0)
/* 027D78 00427D78 24010001 */  addiu       $at, $zero, 0x1
/* 027D7C 00427D7C 00808025 */  move        $s0, $a0
/* 027D80 00427D80 54410034 */  bnel        $v0, $at, .L00427E54
/* 027D84 00427D84 24010003 */   addiu      $at, $zero, 0x3
/* 027D88 00427D88 8F99814C */  lw          $t9, %call16(getpagesize)($gp)
/* 027D8C 00427D8C 0320F809 */  jalr        $t9
/* 027D90 00427D90 00000000 */   nop
/* 027D94 00427D94 8FBC0018 */  lw          $gp, 0x18($sp)
/* 027D98 00427D98 8E0600C4 */  lw          $a2, 0xC4($s0)
/* 027D9C 00427D9C 244EFFFF */  addiu       $t6, $v0, -0x1
/* 027DA0 00427DA0 8F98802C */  lw          $t8, %got(D_10015B20)($gp)
/* 027DA4 00427DA4 01C07827 */  not         $t7, $t6
/* 027DA8 00427DA8 01E62024 */  and         $a0, $t7, $a2
/* 027DAC 00427DAC 8F185B20 */  lw          $t8, %lo(D_10015B20)($t8)
/* 027DB0 00427DB0 57000008 */  bnel        $t8, $zero, .L00427DD4
/* 027DB4 00427DB4 8E190034 */   lw         $t9, 0x34($s0)
/* 027DB8 00427DB8 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 027DBC 00427DBC 00C02025 */  move        $a0, $a2
/* 027DC0 00427DC0 0320F809 */  jalr        $t9
/* 027DC4 00427DC4 00000000 */   nop
/* 027DC8 00427DC8 1000000F */  b           .L00427E08
/* 027DCC 00427DCC 8FBC0018 */   lw         $gp, 0x18($sp)
/* 027DD0 00427DD0 8E190034 */  lw          $t9, 0x34($s0)
.L00427DD4:
/* 027DD4 00427DD4 00C44023 */  subu        $t0, $a2, $a0
/* 027DD8 00427DD8 03282821 */  addu        $a1, $t9, $t0
/* 027DDC 00427DDC 8F99813C */  lw          $t9, %call16(munmap)($gp)
/* 027DE0 00427DE0 0320F809 */  jalr        $t9
/* 027DE4 00427DE4 00000000 */   nop
/* 027DE8 00427DE8 2401FFFF */  addiu       $at, $zero, -0x1
/* 027DEC 00427DEC 14410006 */  bne         $v0, $at, .L00427E08
/* 027DF0 00427DF0 8FBC0018 */   lw         $gp, 0x18($sp)
/* 027DF4 00427DF4 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 027DF8 00427DF8 8E0400C4 */  lw          $a0, 0xC4($s0)
/* 027DFC 00427DFC 0320F809 */  jalr        $t9
/* 027E00 00427E00 00000000 */   nop
/* 027E04 00427E04 8FBC0018 */  lw          $gp, 0x18($sp)
.L00427E08:
/* 027E08 00427E08 8E0400DC */  lw          $a0, 0xDC($s0)
/* 027E0C 00427E0C AE0000C4 */  sw          $zero, 0xC4($s0)
/* 027E10 00427E10 50800006 */  beql        $a0, $zero, .L00427E2C
/* 027E14 00427E14 8E040198 */   lw         $a0, 0x198($s0)
/* 027E18 00427E18 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 027E1C 00427E1C 0320F809 */  jalr        $t9
/* 027E20 00427E20 00000000 */   nop
/* 027E24 00427E24 8FBC0018 */  lw          $gp, 0x18($sp)
/* 027E28 00427E28 8E040198 */  lw          $a0, 0x198($s0)
.L00427E2C:
/* 027E2C 00427E2C AE0000DC */  sw          $zero, 0xDC($s0)
/* 027E30 00427E30 10800016 */  beqz        $a0, .L00427E8C
/* 027E34 00427E34 00000000 */   nop
/* 027E38 00427E38 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 027E3C 00427E3C 0320F809 */  jalr        $t9
/* 027E40 00427E40 00000000 */   nop
/* 027E44 00427E44 8FBC0018 */  lw          $gp, 0x18($sp)
/* 027E48 00427E48 10000010 */  b           .L00427E8C
/* 027E4C 00427E4C AE000198 */   sw         $zero, 0x198($s0)
/* 027E50 00427E50 24010003 */  addiu       $at, $zero, 0x3
.L00427E54:
/* 027E54 00427E54 1441000D */  bne         $v0, $at, .L00427E8C
/* 027E58 00427E58 00000000 */   nop
/* 027E5C 00427E5C 8F998554 */  lw          $t9, %call16(obj_write)($gp)
/* 027E60 00427E60 02002025 */  move        $a0, $s0
/* 027E64 00427E64 0320F809 */  jalr        $t9
/* 027E68 00427E68 00000000 */   nop
/* 027E6C 00427E6C 14400007 */  bnez        $v0, .L00427E8C
/* 027E70 00427E70 8FBC0018 */   lw         $gp, 0x18($sp)
/* 027E74 00427E74 8F998538 */  lw          $t9, %call16(st_error)($gp)
/* 027E78 00427E78 8F84802C */  lw          $a0, %got(STR_10011F48)($gp)
/* 027E7C 00427E7C 0320F809 */  jalr        $t9
/* 027E80 00427E80 24841F48 */   addiu      $a0, $a0, %lo(STR_10011F48)
/* 027E84 00427E84 10000012 */  b           .L00427ED0
/* 027E88 00427E88 8FBC0018 */   lw         $gp, 0x18($sp)
.L00427E8C:
/* 027E8C 00427E8C 8F8987D4 */  lw          $t1, %lo(D_1001D858)($gp)
/* 027E90 00427E90 25290001 */  addiu       $t1, $t1, 0x1
/* 027E94 00427E94 0209082B */  sltu        $at, $s0, $t1
/* 027E98 00427E98 5420000E */  bnel        $at, $zero, .L00427ED4
/* 027E9C 00427E9C 8FBF001C */   lw         $ra, 0x1C($sp)
/* 027EA0 00427EA0 8F998158 */  lw          $t9, %call16(sbrk)($gp)
/* 027EA4 00427EA4 00002025 */  move        $a0, $zero
/* 027EA8 00427EA8 0320F809 */  jalr        $t9
/* 027EAC 00427EAC 00000000 */   nop
/* 027EB0 00427EB0 0202082B */  sltu        $at, $s0, $v0
/* 027EB4 00427EB4 10200006 */  beqz        $at, .L00427ED0
/* 027EB8 00427EB8 8FBC0018 */   lw         $gp, 0x18($sp)
/* 027EBC 00427EBC 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 027EC0 00427EC0 02002025 */  move        $a0, $s0
/* 027EC4 00427EC4 0320F809 */  jalr        $t9
/* 027EC8 00427EC8 00000000 */   nop
/* 027ECC 00427ECC 8FBC0018 */  lw          $gp, 0x18($sp)
.L00427ED0:
/* 027ED0 00427ED0 8FBF001C */  lw          $ra, 0x1C($sp)
.L00427ED4:
/* 027ED4 00427ED4 8FB00014 */  lw          $s0, 0x14($sp)
/* 027ED8 00427ED8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 027EDC 00427EDC 03E00008 */  jr          $ra
/* 027EE0 00427EE0 00000000 */   nop
