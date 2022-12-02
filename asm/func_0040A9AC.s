.section .rodata
glabel STR_1000F534
/* 03F534 1000F534 */ .asciz "%s/usr/sbin/u64check"
                      .balign 4

glabel STR_1000F54C
/* 03F54C 1000F54C */ .asciz "/usr/sbin/showprods -D 1 dev"
                      .balign 4

glabel STR_1000F56C
/* 03F56C 1000F56C */ .asciz "r"
                      .balign 4

glabel STR_1000F570
/* 03F570 1000F570 */ .asciz "7.0"
                      .balign 4

glabel STR_1000F574
/* 03F574 1000F574 */ .asciz "makerom: IDO v7.0 does not work with the Nintendo64\n"
                      .balign 4

glabel STR_1000F5AC
/* 03F5AC 1000F5AC */ .asciz "         development environment.  Please upgrade to\n"
                      .balign 4

glabel STR_1000F5E4
/* 03F5E4 1000F5E4 */ .asciz "         IDO v7.1.\n"
                      .balign 4


.section .text
glabel Checking_IDO_Version # 5
# _gp_disp: 0xFC13394
.set noreorder; .cpload $t9; # .set reorder
/* 00A9B8 0040A9B8 27BDFD48 */  addiu       $sp, $sp, -0x2B8
/* 00A9BC 0040A9BC AFBF001C */  sw          $ra, 0x1C($sp)
/* 00A9C0 0040A9C0 AFBC0018 */  sw          $gp, 0x18($sp)
/* 00A9C4 0040A9C4 AFA402B8 */  sw          $a0, 0x2B8($sp)
/* 00A9C8 0040A9C8 8F998068 */  lw          $t9, %call16(sprintf)($gp)
/* 00A9CC 0040A9CC 8F85802C */  lw          $a1, %got(STR_1000F534)($gp)
/* 00A9D0 0040A9D0 27A400B0 */  addiu       $a0, $sp, 0xB0
/* 00A9D4 0040A9D4 8FA602B8 */  lw          $a2, 0x2B8($sp)
/* 00A9D8 0040A9D8 0320F809 */  jalr        $t9
/* 00A9DC 0040A9DC 24A5F534 */   addiu      $a1, $a1, %lo(STR_1000F534)
/* 00A9E0 0040A9E0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00A9E4 0040A9E4 8F9980AC */  lw          $t9, %call16(stat)($gp)
/* 00A9E8 0040A9E8 27A400B0 */  addiu       $a0, $sp, 0xB0
/* 00A9EC 0040A9EC 27A50028 */  addiu       $a1, $sp, 0x28
/* 00A9F0 0040A9F0 0320F809 */  jalr        $t9
/* 00A9F4 0040A9F4 00000000 */   nop
/* 00A9F8 0040A9F8 10400003 */  beqz        $v0, .L0040AA08
/* 00A9FC 0040A9FC 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00AA00 0040AA00 10000003 */  b           .L0040AA10
/* 00AA04 0040AA04 AFA002B4 */   sw         $zero, 0x2B4($sp)
.L0040AA08:
/* 00AA08 0040AA08 240E0001 */  addiu       $t6, $zero, 0x1
/* 00AA0C 0040AA0C AFAE02B4 */  sw          $t6, 0x2B4($sp)
.L0040AA10:
/* 00AA10 0040AA10 8F998068 */  lw          $t9, %call16(sprintf)($gp)
/* 00AA14 0040AA14 8F85802C */  lw          $a1, %got(STR_1000F54C)($gp)
/* 00AA18 0040AA18 27A401B0 */  addiu       $a0, $sp, 0x1B0
/* 00AA1C 0040AA1C 0320F809 */  jalr        $t9
/* 00AA20 0040AA20 24A5F54C */   addiu      $a1, $a1, %lo(STR_1000F54C)
/* 00AA24 0040AA24 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00AA28 0040AA28 8F998084 */  lw          $t9, %call16(popen)($gp)
/* 00AA2C 0040AA2C 8F85802C */  lw          $a1, %got(STR_1000F56C)($gp)
/* 00AA30 0040AA30 27A401B0 */  addiu       $a0, $sp, 0x1B0
/* 00AA34 0040AA34 0320F809 */  jalr        $t9
/* 00AA38 0040AA38 24A5F56C */   addiu      $a1, $a1, %lo(STR_1000F56C)
/* 00AA3C 0040AA3C AFA20024 */  sw          $v0, 0x24($sp)
/* 00AA40 0040AA40 8FAF0024 */  lw          $t7, 0x24($sp)
/* 00AA44 0040AA44 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00AA48 0040AA48 11E00029 */  beqz        $t7, .L0040AAF0
/* 00AA4C 0040AA4C 00000000 */   nop
/* 00AA50 0040AA50 8F9980A4 */  lw          $t9, %call16(fgets)($gp)
/* 00AA54 0040AA54 27A400B0 */  addiu       $a0, $sp, 0xB0
/* 00AA58 0040AA58 240500FF */  addiu       $a1, $zero, 0xFF
/* 00AA5C 0040AA5C 0320F809 */  jalr        $t9
/* 00AA60 0040AA60 8FA60024 */   lw         $a2, 0x24($sp)
/* 00AA64 0040AA64 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00AA68 0040AA68 8F9980A4 */  lw          $t9, %call16(fgets)($gp)
/* 00AA6C 0040AA6C 27A400B0 */  addiu       $a0, $sp, 0xB0
/* 00AA70 0040AA70 240500FF */  addiu       $a1, $zero, 0xFF
/* 00AA74 0040AA74 0320F809 */  jalr        $t9
/* 00AA78 0040AA78 8FA60024 */   lw         $a2, 0x24($sp)
/* 00AA7C 0040AA7C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00AA80 0040AA80 8F9980A4 */  lw          $t9, %call16(fgets)($gp)
/* 00AA84 0040AA84 27A400B0 */  addiu       $a0, $sp, 0xB0
/* 00AA88 0040AA88 240500FF */  addiu       $a1, $zero, 0xFF
/* 00AA8C 0040AA8C 0320F809 */  jalr        $t9
/* 00AA90 0040AA90 8FA60024 */   lw         $a2, 0x24($sp)
/* 00AA94 0040AA94 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00AA98 0040AA98 8F9980A4 */  lw          $t9, %call16(fgets)($gp)
/* 00AA9C 0040AA9C 27A400B0 */  addiu       $a0, $sp, 0xB0
/* 00AAA0 0040AAA0 240500FF */  addiu       $a1, $zero, 0xFF
/* 00AAA4 0040AAA4 0320F809 */  jalr        $t9
/* 00AAA8 0040AAA8 8FA60024 */   lw         $a2, 0x24($sp)
/* 00AAAC 0040AAAC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00AAB0 0040AAB0 8F998088 */  lw          $t9, %call16(pclose)($gp)
/* 00AAB4 0040AAB4 8FA40024 */  lw          $a0, 0x24($sp)
/* 00AAB8 0040AAB8 0320F809 */  jalr        $t9
/* 00AABC 0040AABC 00000000 */   nop
/* 00AAC0 0040AAC0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00AAC4 0040AAC4 8F9980B0 */  lw          $t9, %call16(strstr)($gp)
/* 00AAC8 0040AAC8 8F85802C */  lw          $a1, %got(STR_1000F570)($gp)
/* 00AACC 0040AACC 27A400B0 */  addiu       $a0, $sp, 0xB0
/* 00AAD0 0040AAD0 0320F809 */  jalr        $t9
/* 00AAD4 0040AAD4 24A5F570 */   addiu      $a1, $a1, %lo(STR_1000F570)
/* 00AAD8 0040AAD8 10400004 */  beqz        $v0, .L0040AAEC
/* 00AADC 0040AADC 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00AAE0 0040AAE0 24180001 */  addiu       $t8, $zero, 0x1
/* 00AAE4 0040AAE4 10000002 */  b           .L0040AAF0
/* 00AAE8 0040AAE8 AFB802B0 */   sw         $t8, 0x2B0($sp)
.L0040AAEC:
/* 00AAEC 0040AAEC AFA002B0 */  sw          $zero, 0x2B0($sp)
.L0040AAF0:
/* 00AAF0 0040AAF0 8FB902B0 */  lw          $t9, 0x2B0($sp)
/* 00AAF4 0040AAF4 1320001B */  beqz        $t9, .L0040AB64
/* 00AAF8 0040AAF8 00000000 */   nop
/* 00AAFC 0040AAFC 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00AB00 0040AB00 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00AB04 0040AB04 8F85802C */  lw          $a1, %got(STR_1000F574)($gp)
/* 00AB08 0040AB08 24840020 */  addiu       $a0, $a0, 0x20
/* 00AB0C 0040AB0C 0320F809 */  jalr        $t9
/* 00AB10 0040AB10 24A5F574 */   addiu      $a1, $a1, %lo(STR_1000F574)
/* 00AB14 0040AB14 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00AB18 0040AB18 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00AB1C 0040AB1C 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00AB20 0040AB20 8F85802C */  lw          $a1, %got(STR_1000F5AC)($gp)
/* 00AB24 0040AB24 24840020 */  addiu       $a0, $a0, 0x20
/* 00AB28 0040AB28 0320F809 */  jalr        $t9
/* 00AB2C 0040AB2C 24A5F5AC */   addiu      $a1, $a1, %lo(STR_1000F5AC)
/* 00AB30 0040AB30 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00AB34 0040AB34 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00AB38 0040AB38 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00AB3C 0040AB3C 8F85802C */  lw          $a1, %got(STR_1000F5E4)($gp)
/* 00AB40 0040AB40 24840020 */  addiu       $a0, $a0, 0x20
/* 00AB44 0040AB44 0320F809 */  jalr        $t9
/* 00AB48 0040AB48 24A5F5E4 */   addiu      $a1, $a1, %lo(STR_1000F5E4)
/* 00AB4C 0040AB4C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00AB50 0040AB50 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 00AB54 0040AB54 24040001 */  addiu       $a0, $zero, 0x1
/* 00AB58 0040AB58 0320F809 */  jalr        $t9
/* 00AB5C 0040AB5C 00000000 */   nop
/* 00AB60 0040AB60 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040AB64:
/* 00AB64 0040AB64 8FA802B4 */  lw          $t0, 0x2B4($sp)
/* 00AB68 0040AB68 11000005 */  beqz        $t0, .L0040AB80
/* 00AB6C 0040AB6C 00000000 */   nop
/* 00AB70 0040AB70 10000007 */  b           .L0040AB90
/* 00AB74 0040AB74 24020002 */   addiu      $v0, $zero, 0x2
/* 00AB78 0040AB78 10000003 */  b           .L0040AB88
/* 00AB7C 0040AB7C 00000000 */   nop
.L0040AB80:
/* 00AB80 0040AB80 10000003 */  b           .L0040AB90
/* 00AB84 0040AB84 00001025 */   move       $v0, $zero
.L0040AB88:
/* 00AB88 0040AB88 10000001 */  b           .L0040AB90
/* 00AB8C 0040AB8C 00000000 */   nop
.L0040AB90:
/* 00AB90 0040AB90 8FBF001C */  lw          $ra, 0x1C($sp)
/* 00AB94 0040AB94 27BD02B8 */  addiu       $sp, $sp, 0x2B8
/* 00AB98 0040AB98 03E00008 */  jr          $ra
/* 00AB9C 0040AB9C 00000000 */   nop
