.section .rodata
glabel STR_10013D70
/* 043D70 10013D70 */ .asciz "st_malloc: cannot allocate item of 1 byte with malloc(3)\n"
                      .balign 4

glabel STR_10013DAC
/* 043DAC 10013DAC */ .asciz "st_malloc: cannot allocate item of %ld bytes with malloc(3)\n"
                      .balign 4

glabel STR_10013DEC
/* 043DEC 10013DEC */ .asciz "st_malloc: cannot grow item to %ld bytes with realloc(3)\n"
                      .balign 4
/* 043E28 10013E28 */ .asciz ""
                      .balign 4
/* 043E2C 10013E2C */ .asciz ""
                      .balign 4


.section .text
glabel st_malloc # 662
# _gp_disp: 0xFBE2BF0
.set noreorder; .cpload $t9; # .set reorder
/* 03B15C 0043B15C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03B160 0043B160 AFBF0024 */  sw          $ra, 0x24($sp)
/* 03B164 0043B164 AFBC0020 */  sw          $gp, 0x20($sp)
/* 03B168 0043B168 AFB1001C */  sw          $s1, 0x1C($sp)
/* 03B16C 0043B16C AFB00018 */  sw          $s0, 0x18($sp)
/* 03B170 0043B170 AFA60030 */  sw          $a2, 0x30($sp)
/* 03B174 0043B174 8CA20000 */  lw          $v0, 0x0($a1)
/* 03B178 0043B178 00A08025 */  move        $s0, $a1
/* 03B17C 0043B17C 00808825 */  move        $s1, $a0
/* 03B180 0043B180 10400005 */  beqz        $v0, .L0043B198
/* 03B184 0043B184 00000000 */   nop
/* 03B188 0043B188 10800003 */  beqz        $a0, .L0043B198
/* 03B18C 0043B18C 2401FFFF */   addiu      $at, $zero, -0x1
/* 03B190 0043B190 14810027 */  bne         $a0, $at, .L0043B230
/* 03B194 0043B194 00024040 */   sll        $t0, $v0, 1
.L0043B198:
/* 03B198 0043B198 14E0000F */  bnez        $a3, .L0043B1D8
/* 03B19C 0043B19C AE070000 */   sw         $a3, 0x0($s0)
/* 03B1A0 0043B1A0 8F998064 */  lw          $t9, %call16(malloc)($gp)
/* 03B1A4 0043B1A4 24040001 */  addiu       $a0, $zero, 0x1
/* 03B1A8 0043B1A8 0320F809 */  jalr        $t9
/* 03B1AC 0043B1AC 00000000 */   nop
/* 03B1B0 0043B1B0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03B1B4 0043B1B4 14400006 */  bnez        $v0, .L0043B1D0
/* 03B1B8 0043B1B8 00408825 */   move       $s1, $v0
/* 03B1BC 0043B1BC 8F998538 */  lw          $t9, %call16(st_error)($gp)
/* 03B1C0 0043B1C0 8F84802C */  lw          $a0, %got(STR_10013D70)($gp)
/* 03B1C4 0043B1C4 0320F809 */  jalr        $t9
/* 03B1C8 0043B1C8 24843D70 */   addiu      $a0, $a0, %lo(STR_10013D70)
/* 03B1CC 0043B1CC 8FBC0020 */  lw          $gp, 0x20($sp)
.L0043B1D0:
/* 03B1D0 0043B1D0 1000002D */  b           .L0043B288
/* 03B1D4 0043B1D4 02201025 */   move       $v0, $s1
.L0043B1D8:
/* 03B1D8 0043B1D8 8E0E0000 */  lw          $t6, 0x0($s0)
/* 03B1DC 0043B1DC 8FAF0030 */  lw          $t7, 0x30($sp)
/* 03B1E0 0043B1E0 8F998064 */  lw          $t9, %call16(malloc)($gp)
/* 03B1E4 0043B1E4 01CF0019 */  multu       $t6, $t7
/* 03B1E8 0043B1E8 00002012 */  mflo        $a0
/* 03B1EC 0043B1EC 0320F809 */  jalr        $t9
/* 03B1F0 0043B1F0 00000000 */   nop
/* 03B1F4 0043B1F4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03B1F8 0043B1F8 14400022 */  bnez        $v0, .L0043B284
/* 03B1FC 0043B1FC 00408825 */   move       $s1, $v0
/* 03B200 0043B200 8E180000 */  lw          $t8, 0x0($s0)
/* 03B204 0043B204 8FB90030 */  lw          $t9, 0x30($sp)
/* 03B208 0043B208 03190019 */  multu       $t8, $t9
/* 03B20C 0043B20C 00002812 */  mflo        $a1
/* 03B210 0043B210 50A0001D */  beql        $a1, $zero, .L0043B288
/* 03B214 0043B214 02201025 */   move       $v0, $s1
/* 03B218 0043B218 8F998538 */  lw          $t9, %call16(st_error)($gp)
/* 03B21C 0043B21C 8F84802C */  lw          $a0, %got(STR_10013DAC)($gp)
/* 03B220 0043B220 0320F809 */  jalr        $t9
/* 03B224 0043B224 24843DAC */   addiu      $a0, $a0, %lo(STR_10013DAC)
/* 03B228 0043B228 10000016 */  b           .L0043B284
/* 03B22C 0043B22C 8FBC0020 */   lw         $gp, 0x20($sp)
.L0043B230:
/* 03B230 0043B230 AE080000 */  sw          $t0, 0x0($s0)
/* 03B234 0043B234 8FAA0030 */  lw          $t2, 0x30($sp)
/* 03B238 0043B238 8F99810C */  lw          $t9, %call16(realloc)($gp)
/* 03B23C 0043B23C 02202025 */  move        $a0, $s1
/* 03B240 0043B240 010A0019 */  multu       $t0, $t2
/* 03B244 0043B244 00002812 */  mflo        $a1
/* 03B248 0043B248 0320F809 */  jalr        $t9
/* 03B24C 0043B24C 00000000 */   nop
/* 03B250 0043B250 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03B254 0043B254 1440000B */  bnez        $v0, .L0043B284
/* 03B258 0043B258 00408825 */   move       $s1, $v0
/* 03B25C 0043B25C 8E0B0000 */  lw          $t3, 0x0($s0)
/* 03B260 0043B260 8FAC0030 */  lw          $t4, 0x30($sp)
/* 03B264 0043B264 8F998538 */  lw          $t9, %call16(st_error)($gp)
/* 03B268 0043B268 8F84802C */  lw          $a0, %got(STR_10013DEC)($gp)
/* 03B26C 0043B26C 016C0019 */  multu       $t3, $t4
/* 03B270 0043B270 24843DEC */  addiu       $a0, $a0, %lo(STR_10013DEC)
/* 03B274 0043B274 00002812 */  mflo        $a1
/* 03B278 0043B278 0320F809 */  jalr        $t9
/* 03B27C 0043B27C 00000000 */   nop
/* 03B280 0043B280 8FBC0020 */  lw          $gp, 0x20($sp)
.L0043B284:
/* 03B284 0043B284 02201025 */  move        $v0, $s1
.L0043B288:
/* 03B288 0043B288 8FBF0024 */  lw          $ra, 0x24($sp)
/* 03B28C 0043B28C 8FB00018 */  lw          $s0, 0x18($sp)
/* 03B290 0043B290 8FB1001C */  lw          $s1, 0x1C($sp)
/* 03B294 0043B294 03E00008 */  jr          $ra
/* 03B298 0043B298 27BD0028 */   addiu      $sp, $sp, 0x28
/* 03B29C 0043B29C 00000000 */  nop
