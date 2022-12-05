.section .rodata
glabel STR_1000F8E8
/* 03F8E8 1000F8E8 */ .asciz "TMPDIR"
                      .balign 4

glabel STR_1000F8F0
/* 03F8F0 1000F8F0 */ .asciz "/tmp"
                      .balign 4

glabel STR_1000F8F8
/* 03F8F8 1000F8F8 */ .asciz "%s/%sElspecXXXXXX"
                      .balign 4

glabel STR_1000F90C
/* 03F90C 1000F90C */ .asciz "%s/segmentXXXXXX"
                      .balign 4

glabel STR_1000F920
/* 03F920 1000F920 */ .asciz ".s"
                      .balign 4

glabel STR_1000F924
/* 03F924 1000F924 */ .asciz ".o"
                      .balign 4

glabel STR_1000F928
/* 03F928 1000F928 */ .asciz "%s/entryXXXXXX"
                      .balign 4

glabel STR_1000F938
/* 03F938 1000F938 */ .asciz ".s"
                      .balign 4

glabel STR_1000F93C
/* 03F93C 1000F93C */ .asciz ".o"
                      .balign 4

glabel STR_1000F940
/* 03F940 1000F940 */ .asciz "%s/objListXXXXXX"
                      .balign 4


.section .text
glabel func_0040BA54 # 13
# _gp_disp: 0xFC122EC
.set noreorder; .cpload $t9; # .set reorder
/* 00BA60 0040BA60 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00BA64 0040BA64 AFBF001C */  sw          $ra, 0x1C($sp)
/* 00BA68 0040BA68 AFBC0018 */  sw          $gp, 0x18($sp)
/* 00BA6C 0040BA6C 8F998094 */  lw          $t9, %call16(getenv)($gp)
/* 00BA70 0040BA70 8F84802C */  lw          $a0, %got(STR_1000F8E8)($gp)
/* 00BA74 0040BA74 0320F809 */  jalr        $t9
/* 00BA78 0040BA78 2484F8E8 */   addiu      $a0, $a0, %lo(STR_1000F8E8)
/* 00BA7C 0040BA7C AFA20020 */  sw          $v0, 0x20($sp)
/* 00BA80 0040BA80 8FAE0020 */  lw          $t6, 0x20($sp)
/* 00BA84 0040BA84 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00BA88 0040BA88 15C00004 */  bnez        $t6, .L0040BA9C
/* 00BA8C 0040BA8C 00000000 */   nop
/* 00BA90 0040BA90 8F8F802C */  lw          $t7, %got(STR_1000F8F0)($gp)
/* 00BA94 0040BA94 25EFF8F0 */  addiu       $t7, $t7, %lo(STR_1000F8F0)
/* 00BA98 0040BA98 AFAF0020 */  sw          $t7, 0x20($sp)
.L0040BA9C:
/* 00BA9C 0040BA9C 8F988658 */  lw          $t8, %got(waveList)($gp)
/* 00BAA0 0040BAA0 8F180000 */  lw          $t8, 0x0($t8)
/* 00BAA4 0040BAA4 13000014 */  beqz        $t8, .L0040BAF8
/* 00BAA8 0040BAA8 AFB80024 */   sw         $t8, 0x24($sp)
.L0040BAAC:
/* 00BAAC 0040BAAC 8FB90024 */  lw          $t9, 0x24($sp)
/* 00BAB0 0040BAB0 8F85802C */  lw          $a1, %got(STR_1000F8F8)($gp)
/* 00BAB4 0040BAB4 8FA60020 */  lw          $a2, 0x20($sp)
/* 00BAB8 0040BAB8 27240014 */  addiu       $a0, $t9, 0x14
/* 00BABC 0040BABC 8F270004 */  lw          $a3, 0x4($t9)
/* 00BAC0 0040BAC0 8F998068 */  lw          $t9, %call16(sprintf)($gp)
/* 00BAC4 0040BAC4 24A5F8F8 */  addiu       $a1, $a1, %lo(STR_1000F8F8)
/* 00BAC8 0040BAC8 0320F809 */  jalr        $t9
/* 00BACC 0040BACC 00000000 */   nop
/* 00BAD0 0040BAD0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00BAD4 0040BAD4 8F9980CC */  lw          $t9, %call16(mktemp)($gp)
/* 00BAD8 0040BAD8 8FA40024 */  lw          $a0, 0x24($sp)
/* 00BADC 0040BADC 0320F809 */  jalr        $t9
/* 00BAE0 0040BAE0 24840014 */   addiu      $a0, $a0, 0x14
/* 00BAE4 0040BAE4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00BAE8 0040BAE8 8FA80024 */  lw          $t0, 0x24($sp)
/* 00BAEC 0040BAEC 8D090000 */  lw          $t1, 0x0($t0)
/* 00BAF0 0040BAF0 1520FFEE */  bnez        $t1, .L0040BAAC
/* 00BAF4 0040BAF4 AFA90024 */   sw         $t1, 0x24($sp)
.L0040BAF8:
/* 00BAF8 0040BAF8 8F998068 */  lw          $t9, %call16(sprintf)($gp)
/* 00BAFC 0040BAFC 8F84802C */  lw          $a0, %got(B_10016520)($gp)
/* 00BB00 0040BB00 8F85802C */  lw          $a1, %got(STR_1000F90C)($gp)
/* 00BB04 0040BB04 8FA60020 */  lw          $a2, 0x20($sp)
/* 00BB08 0040BB08 24846520 */  addiu       $a0, $a0, %lo(B_10016520)
/* 00BB0C 0040BB0C 0320F809 */  jalr        $t9
/* 00BB10 0040BB10 24A5F90C */   addiu      $a1, $a1, %lo(STR_1000F90C)
/* 00BB14 0040BB14 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00BB18 0040BB18 8F9980CC */  lw          $t9, %call16(mktemp)($gp)
/* 00BB1C 0040BB1C 8F84802C */  lw          $a0, %got(B_10016520)($gp)
/* 00BB20 0040BB20 0320F809 */  jalr        $t9
/* 00BB24 0040BB24 24846520 */   addiu      $a0, $a0, %lo(B_10016520)
/* 00BB28 0040BB28 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00BB2C 0040BB2C 8F99809C */  lw          $t9, %call16(strcpy)($gp)
/* 00BB30 0040BB30 8F84802C */  lw          $a0, %got(B_10016620)($gp)
/* 00BB34 0040BB34 8F85802C */  lw          $a1, %got(B_10016520)($gp)
/* 00BB38 0040BB38 24846620 */  addiu       $a0, $a0, %lo(B_10016620)
/* 00BB3C 0040BB3C 0320F809 */  jalr        $t9
/* 00BB40 0040BB40 24A56520 */   addiu      $a1, $a1, %lo(B_10016520)
/* 00BB44 0040BB44 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00BB48 0040BB48 8F998098 */  lw          $t9, %call16(strcat)($gp)
/* 00BB4C 0040BB4C 8F84802C */  lw          $a0, %got(B_10016520)($gp)
/* 00BB50 0040BB50 8F85802C */  lw          $a1, %got(STR_1000F920)($gp)
/* 00BB54 0040BB54 24846520 */  addiu       $a0, $a0, %lo(B_10016520)
/* 00BB58 0040BB58 0320F809 */  jalr        $t9
/* 00BB5C 0040BB5C 24A5F920 */   addiu      $a1, $a1, %lo(STR_1000F920)
/* 00BB60 0040BB60 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00BB64 0040BB64 8F998098 */  lw          $t9, %call16(strcat)($gp)
/* 00BB68 0040BB68 8F84802C */  lw          $a0, %got(B_10016620)($gp)
/* 00BB6C 0040BB6C 8F85802C */  lw          $a1, %got(STR_1000F924)($gp)
/* 00BB70 0040BB70 24846620 */  addiu       $a0, $a0, %lo(B_10016620)
/* 00BB74 0040BB74 0320F809 */  jalr        $t9
/* 00BB78 0040BB78 24A5F924 */   addiu      $a1, $a1, %lo(STR_1000F924)
/* 00BB7C 0040BB7C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00BB80 0040BB80 8F998068 */  lw          $t9, %call16(sprintf)($gp)
/* 00BB84 0040BB84 8F84802C */  lw          $a0, %got(B_10016720)($gp)
/* 00BB88 0040BB88 8F85802C */  lw          $a1, %got(STR_1000F928)($gp)
/* 00BB8C 0040BB8C 8FA60020 */  lw          $a2, 0x20($sp)
/* 00BB90 0040BB90 24846720 */  addiu       $a0, $a0, %lo(B_10016720)
/* 00BB94 0040BB94 0320F809 */  jalr        $t9
/* 00BB98 0040BB98 24A5F928 */   addiu      $a1, $a1, %lo(STR_1000F928)
/* 00BB9C 0040BB9C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00BBA0 0040BBA0 8F9980CC */  lw          $t9, %call16(mktemp)($gp)
/* 00BBA4 0040BBA4 8F84802C */  lw          $a0, %got(B_10016720)($gp)
/* 00BBA8 0040BBA8 0320F809 */  jalr        $t9
/* 00BBAC 0040BBAC 24846720 */   addiu      $a0, $a0, %lo(B_10016720)
/* 00BBB0 0040BBB0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00BBB4 0040BBB4 8F99809C */  lw          $t9, %call16(strcpy)($gp)
/* 00BBB8 0040BBB8 8F84802C */  lw          $a0, %got(B_10016820)($gp)
/* 00BBBC 0040BBBC 8F85802C */  lw          $a1, %got(B_10016720)($gp)
/* 00BBC0 0040BBC0 24846820 */  addiu       $a0, $a0, %lo(B_10016820)
/* 00BBC4 0040BBC4 0320F809 */  jalr        $t9
/* 00BBC8 0040BBC8 24A56720 */   addiu      $a1, $a1, %lo(B_10016720)
/* 00BBCC 0040BBCC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00BBD0 0040BBD0 8F998098 */  lw          $t9, %call16(strcat)($gp)
/* 00BBD4 0040BBD4 8F84802C */  lw          $a0, %got(B_10016720)($gp)
/* 00BBD8 0040BBD8 8F85802C */  lw          $a1, %got(STR_1000F938)($gp)
/* 00BBDC 0040BBDC 24846720 */  addiu       $a0, $a0, %lo(B_10016720)
/* 00BBE0 0040BBE0 0320F809 */  jalr        $t9
/* 00BBE4 0040BBE4 24A5F938 */   addiu      $a1, $a1, %lo(STR_1000F938)
/* 00BBE8 0040BBE8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00BBEC 0040BBEC 8F998098 */  lw          $t9, %call16(strcat)($gp)
/* 00BBF0 0040BBF0 8F84802C */  lw          $a0, %got(B_10016820)($gp)
/* 00BBF4 0040BBF4 8F85802C */  lw          $a1, %got(STR_1000F93C)($gp)
/* 00BBF8 0040BBF8 24846820 */  addiu       $a0, $a0, %lo(B_10016820)
/* 00BBFC 0040BBFC 0320F809 */  jalr        $t9
/* 00BC00 0040BC00 24A5F93C */   addiu      $a1, $a1, %lo(STR_1000F93C)
/* 00BC04 0040BC04 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00BC08 0040BC08 8F998068 */  lw          $t9, %call16(sprintf)($gp)
/* 00BC0C 0040BC0C 8F84802C */  lw          $a0, %got(B_10016920)($gp)
/* 00BC10 0040BC10 8F85802C */  lw          $a1, %got(STR_1000F940)($gp)
/* 00BC14 0040BC14 8FA60020 */  lw          $a2, 0x20($sp)
/* 00BC18 0040BC18 24846920 */  addiu       $a0, $a0, %lo(B_10016920)
/* 00BC1C 0040BC1C 0320F809 */  jalr        $t9
/* 00BC20 0040BC20 24A5F940 */   addiu      $a1, $a1, %lo(STR_1000F940)
/* 00BC24 0040BC24 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00BC28 0040BC28 8F9980CC */  lw          $t9, %call16(mktemp)($gp)
/* 00BC2C 0040BC2C 8F84802C */  lw          $a0, %got(B_10016920)($gp)
/* 00BC30 0040BC30 0320F809 */  jalr        $t9
/* 00BC34 0040BC34 24846920 */   addiu      $a0, $a0, %lo(B_10016920)
/* 00BC38 0040BC38 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00BC3C 0040BC3C 10000001 */  b           .L0040BC44
/* 00BC40 0040BC40 00000000 */   nop
.L0040BC44:
/* 00BC44 0040BC44 8FBF001C */  lw          $ra, 0x1C($sp)
/* 00BC48 0040BC48 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00BC4C 0040BC4C 03E00008 */  jr          $ra
/* 00BC50 0040BC50 00000000 */   nop
