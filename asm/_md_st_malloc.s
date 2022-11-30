.section .rodata
glabel STR_10013EE4
/* 043EE4 10013EE4 */ .asciz "_md_st_malloc: cannot allocate item of 1 byte with malloc(3)\n"
                      .balign 4

glabel STR_10013F24
/* 043F24 10013F24 */ .asciz "_md_st_malloc: cannot allocate item of %ld bytes with malloc(3)\n"
                      .balign 4

glabel STR_10013F68
/* 043F68 10013F68 */ .asciz "_md_st_malloc: cannot grow item to %ld bytes with realloc(3)\n"
                      .balign 4
/* 043FA8 10013FA8 */ .asciz ""
                      .balign 4
/* 043FAC 10013FAC */ .asciz ""
                      .balign 4


.section .text
glabel _md_st_malloc # 676
# _gp_disp: 0xFBE206C
.set noreorder; .cpload $t9; # .set reorder
/* 03BCE0 0043BCE0 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03BCE4 0043BCE4 AFBF0024 */  sw          $ra, 0x24($sp)
/* 03BCE8 0043BCE8 AFBC0020 */  sw          $gp, 0x20($sp)
/* 03BCEC 0043BCEC AFB1001C */  sw          $s1, 0x1C($sp)
/* 03BCF0 0043BCF0 AFB00018 */  sw          $s0, 0x18($sp)
/* 03BCF4 0043BCF4 AFA60030 */  sw          $a2, 0x30($sp)
/* 03BCF8 0043BCF8 8CA20000 */  lw          $v0, 0x0($a1)
/* 03BCFC 0043BCFC 00A08025 */  move        $s0, $a1
/* 03BD00 0043BD00 00808825 */  move        $s1, $a0
/* 03BD04 0043BD04 10400005 */  beqz        $v0, .L0043BD1C
/* 03BD08 0043BD08 00000000 */   nop
/* 03BD0C 0043BD0C 10800003 */  beqz        $a0, .L0043BD1C
/* 03BD10 0043BD10 2401FFFF */   addiu      $at, $zero, -0x1
/* 03BD14 0043BD14 14810027 */  bne         $a0, $at, .L0043BDB4
/* 03BD18 0043BD18 00024040 */   sll        $t0, $v0, 1
.L0043BD1C:
/* 03BD1C 0043BD1C 14E0000F */  bnez        $a3, .L0043BD5C
/* 03BD20 0043BD20 AE070000 */   sw         $a3, 0x0($s0)
/* 03BD24 0043BD24 8F998064 */  lw          $t9, %call16(malloc)($gp)
/* 03BD28 0043BD28 24040001 */  addiu       $a0, $zero, 0x1
/* 03BD2C 0043BD2C 0320F809 */  jalr        $t9
/* 03BD30 0043BD30 00000000 */   nop
/* 03BD34 0043BD34 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03BD38 0043BD38 14400006 */  bnez        $v0, .L0043BD54
/* 03BD3C 0043BD3C 00408825 */   move       $s1, $v0
/* 03BD40 0043BD40 8F998618 */  lw          $t9, %call16(_md_st_error)($gp)
/* 03BD44 0043BD44 8F84802C */  lw          $a0, %got(STR_10013EE4)($gp)
/* 03BD48 0043BD48 0320F809 */  jalr        $t9
/* 03BD4C 0043BD4C 24843EE4 */   addiu      $a0, $a0, %lo(STR_10013EE4)
/* 03BD50 0043BD50 8FBC0020 */  lw          $gp, 0x20($sp)
.L0043BD54:
/* 03BD54 0043BD54 1000002D */  b           .L0043BE0C
/* 03BD58 0043BD58 02201025 */   move       $v0, $s1
.L0043BD5C:
/* 03BD5C 0043BD5C 8E0E0000 */  lw          $t6, 0x0($s0)
/* 03BD60 0043BD60 8FAF0030 */  lw          $t7, 0x30($sp)
/* 03BD64 0043BD64 8F998064 */  lw          $t9, %call16(malloc)($gp)
/* 03BD68 0043BD68 01CF0019 */  multu       $t6, $t7
/* 03BD6C 0043BD6C 00002012 */  mflo        $a0
/* 03BD70 0043BD70 0320F809 */  jalr        $t9
/* 03BD74 0043BD74 00000000 */   nop
/* 03BD78 0043BD78 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03BD7C 0043BD7C 14400022 */  bnez        $v0, .L0043BE08
/* 03BD80 0043BD80 00408825 */   move       $s1, $v0
/* 03BD84 0043BD84 8E180000 */  lw          $t8, 0x0($s0)
/* 03BD88 0043BD88 8FB90030 */  lw          $t9, 0x30($sp)
/* 03BD8C 0043BD8C 03190019 */  multu       $t8, $t9
/* 03BD90 0043BD90 00002812 */  mflo        $a1
/* 03BD94 0043BD94 50A0001D */  beql        $a1, $zero, .L0043BE0C
/* 03BD98 0043BD98 02201025 */   move       $v0, $s1
/* 03BD9C 0043BD9C 8F998618 */  lw          $t9, %call16(_md_st_error)($gp)
/* 03BDA0 0043BDA0 8F84802C */  lw          $a0, %got(STR_10013F24)($gp)
/* 03BDA4 0043BDA4 0320F809 */  jalr        $t9
/* 03BDA8 0043BDA8 24843F24 */   addiu      $a0, $a0, %lo(STR_10013F24)
/* 03BDAC 0043BDAC 10000016 */  b           .L0043BE08
/* 03BDB0 0043BDB0 8FBC0020 */   lw         $gp, 0x20($sp)
.L0043BDB4:
/* 03BDB4 0043BDB4 AE080000 */  sw          $t0, 0x0($s0)
/* 03BDB8 0043BDB8 8FAA0030 */  lw          $t2, 0x30($sp)
/* 03BDBC 0043BDBC 8F99810C */  lw          $t9, %call16(realloc)($gp)
/* 03BDC0 0043BDC0 02202025 */  move        $a0, $s1
/* 03BDC4 0043BDC4 010A0019 */  multu       $t0, $t2
/* 03BDC8 0043BDC8 00002812 */  mflo        $a1
/* 03BDCC 0043BDCC 0320F809 */  jalr        $t9
/* 03BDD0 0043BDD0 00000000 */   nop
/* 03BDD4 0043BDD4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03BDD8 0043BDD8 1440000B */  bnez        $v0, .L0043BE08
/* 03BDDC 0043BDDC 00408825 */   move       $s1, $v0
/* 03BDE0 0043BDE0 8E0B0000 */  lw          $t3, 0x0($s0)
/* 03BDE4 0043BDE4 8FAC0030 */  lw          $t4, 0x30($sp)
/* 03BDE8 0043BDE8 8F998618 */  lw          $t9, %call16(_md_st_error)($gp)
/* 03BDEC 0043BDEC 8F84802C */  lw          $a0, %got(STR_10013F68)($gp)
/* 03BDF0 0043BDF0 016C0019 */  multu       $t3, $t4
/* 03BDF4 0043BDF4 24843F68 */  addiu       $a0, $a0, %lo(STR_10013F68)
/* 03BDF8 0043BDF8 00002812 */  mflo        $a1
/* 03BDFC 0043BDFC 0320F809 */  jalr        $t9
/* 03BE00 0043BE00 00000000 */   nop
/* 03BE04 0043BE04 8FBC0020 */  lw          $gp, 0x20($sp)
.L0043BE08:
/* 03BE08 0043BE08 02201025 */  move        $v0, $s1
.L0043BE0C:
/* 03BE0C 0043BE0C 8FBF0024 */  lw          $ra, 0x24($sp)
/* 03BE10 0043BE10 8FB00018 */  lw          $s0, 0x18($sp)
/* 03BE14 0043BE14 8FB1001C */  lw          $s1, 0x1C($sp)
/* 03BE18 0043BE18 03E00008 */  jr          $ra
/* 03BE1C 0043BE1C 27BD0028 */   addiu      $sp, $sp, 0x28
