.section .rodata
glabel STR_10011C20
/* 041C20 10011C20 */ .asciz "__________E"
                      .balign 4

glabel STR_10011C2C
/* 041C2C 10011C2C */ .asciz "LPOBJ(ldptr)->o_praw = realloc(LPOBJ(ldptr)->o_praw,LPOBJ(ldptr)->o_statb.st_size)"
                      .balign 4

glabel STR_10011C80
/* 041C80 10011C80 */ .asciz "ldfcn.c"
                      .balign 4
/* 041C88 10011C88 */ .asciz ""
                      .balign 4
/* 041C8C 10011C8C */ .asciz ""
                      .balign 4


.section .text
glabel ldarsymread # 236
# _gp_disp: 0xFBF825C
.set noreorder; .cpload $t9; # .set reorder
/* 025AF0 00425AF0 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 025AF4 00425AF4 AFBF0034 */  sw          $ra, 0x34($sp)
/* 025AF8 00425AF8 AFBC0030 */  sw          $gp, 0x30($sp)
/* 025AFC 00425AFC AFB5002C */  sw          $s5, 0x2C($sp)
/* 025B00 00425B00 AFB40028 */  sw          $s4, 0x28($sp)
/* 025B04 00425B04 AFB30024 */  sw          $s3, 0x24($sp)
/* 025B08 00425B08 AFB20020 */  sw          $s2, 0x20($sp)
/* 025B0C 00425B0C AFB1001C */  sw          $s1, 0x1C($sp)
/* 025B10 00425B10 AFB00018 */  sw          $s0, 0x18($sp)
/* 025B14 00425B14 948E0028 */  lhu         $t6, 0x28($a0)
/* 025B18 00425B18 3401FF65 */  ori         $at, $zero, 0xFF65
/* 025B1C 00425B1C 00A08025 */  move        $s0, $a1
/* 025B20 00425B20 11C10003 */  beq         $t6, $at, .L00425B30
/* 025B24 00425B24 00809025 */   move       $s2, $a0
/* 025B28 00425B28 10000075 */  b           .L00425D00
/* 025B2C 00425B2C 00001025 */   move       $v0, $zero
.L00425B30:
/* 025B30 00425B30 8F9980D8 */  lw          $t9, %call16(lseek)($gp)
/* 025B34 00425B34 8E440030 */  lw          $a0, 0x30($s2)
/* 025B38 00425B38 24050008 */  addiu       $a1, $zero, 0x8
/* 025B3C 00425B3C 0320F809 */  jalr        $t9
/* 025B40 00425B40 00003025 */   move       $a2, $zero
/* 025B44 00425B44 8FBC0030 */  lw          $gp, 0x30($sp)
/* 025B48 00425B48 00009825 */  move        $s3, $zero
/* 025B4C 00425B4C 2414003C */  addiu       $s4, $zero, 0x3C
/* 025B50 00425B50 8F95802C */  lw          $s5, %got(STR_10011C20)($gp)
/* 025B54 00425B54 26B51C20 */  addiu       $s5, $s5, %lo(STR_10011C20)
.L00425B58:
/* 025B58 00425B58 8F9980C4 */  lw          $t9, %call16(read)($gp)
/* 025B5C 00425B5C 8E440030 */  lw          $a0, 0x30($s2)
/* 025B60 00425B60 02002825 */  move        $a1, $s0
/* 025B64 00425B64 0320F809 */  jalr        $t9
/* 025B68 00425B68 02803025 */   move       $a2, $s4
/* 025B6C 00425B6C 10540003 */  beq         $v0, $s4, .L00425B7C
/* 025B70 00425B70 8FBC0030 */   lw         $gp, 0x30($sp)
/* 025B74 00425B74 1000005F */  b           .L00425CF4
/* 025B78 00425B78 24130001 */   addiu      $s3, $zero, 0x1
.L00425B7C:
/* 025B7C 00425B7C 8F998148 */  lw          $t9, %call16(strncmp)($gp)
/* 025B80 00425B80 02002025 */  move        $a0, $s0
/* 025B84 00425B84 02A02825 */  move        $a1, $s5
/* 025B88 00425B88 2406000B */  addiu       $a2, $zero, 0xB
/* 025B8C 00425B8C 0320F809 */  jalr        $t9
/* 025B90 00425B90 26110030 */   addiu      $s1, $s0, 0x30
/* 025B94 00425B94 1440004B */  bnez        $v0, .L00425CC4
/* 025B98 00425B98 8FBC0030 */   lw         $gp, 0x30($sp)
/* 025B9C 00425B9C 8F99814C */  lw          $t9, %call16(getpagesize)($gp)
/* 025BA0 00425BA0 0320F809 */  jalr        $t9
/* 025BA4 00425BA4 00000000 */   nop
/* 025BA8 00425BA8 8E43002C */  lw          $v1, 0x2C($s2)
/* 025BAC 00425BAC 244FFFFF */  addiu       $t7, $v0, -0x1
/* 025BB0 00425BB0 01E0C027 */  not         $t8, $t7
/* 025BB4 00425BB4 8C6600C4 */  lw          $a2, 0xC4($v1)
/* 025BB8 00425BB8 8C790034 */  lw          $t9, 0x34($v1)
/* 025BBC 00425BBC 8FBC0030 */  lw          $gp, 0x30($sp)
/* 025BC0 00425BC0 03062024 */  and         $a0, $t8, $a2
/* 025BC4 00425BC4 00C44023 */  subu        $t0, $a2, $a0
/* 025BC8 00425BC8 03282821 */  addu        $a1, $t9, $t0
/* 025BCC 00425BCC 8F99813C */  lw          $t9, %call16(munmap)($gp)
/* 025BD0 00425BD0 0320F809 */  jalr        $t9
/* 025BD4 00425BD4 00000000 */   nop
/* 025BD8 00425BD8 14400003 */  bnez        $v0, .L00425BE8
/* 025BDC 00425BDC 8FBC0030 */   lw         $gp, 0x30($sp)
/* 025BE0 00425BE0 8E49002C */  lw          $t1, 0x2C($s2)
/* 025BE4 00425BE4 AD2000C4 */  sw          $zero, 0xC4($t1)
.L00425BE8:
/* 025BE8 00425BE8 8F998150 */  lw          $t9, %call16(atol)($gp)
/* 025BEC 00425BEC 02202025 */  move        $a0, $s1
/* 025BF0 00425BF0 0320F809 */  jalr        $t9
/* 025BF4 00425BF4 00000000 */   nop
/* 025BF8 00425BF8 8E4A002C */  lw          $t2, 0x2C($s2)
/* 025BFC 00425BFC 8FBC0030 */  lw          $gp, 0x30($sp)
/* 025C00 00425C00 AD420034 */  sw          $v0, 0x34($t2)
/* 025C04 00425C04 8E43002C */  lw          $v1, 0x2C($s2)
/* 025C08 00425C08 8F99810C */  lw          $t9, %call16(realloc)($gp)
/* 025C0C 00425C0C 8C6400C4 */  lw          $a0, 0xC4($v1)
/* 025C10 00425C10 0320F809 */  jalr        $t9
/* 025C14 00425C14 8C650034 */   lw         $a1, 0x34($v1)
/* 025C18 00425C18 8E4B002C */  lw          $t3, 0x2C($s2)
/* 025C1C 00425C1C 8FBC0030 */  lw          $gp, 0x30($sp)
/* 025C20 00425C20 14400009 */  bnez        $v0, .L00425C48
/* 025C24 00425C24 AD6200C4 */   sw         $v0, 0xC4($t3)
/* 025C28 00425C28 8F998144 */  lw          $t9, %call16(__assert)($gp)
/* 025C2C 00425C2C 8F84802C */  lw          $a0, %got(STR_10011C2C)($gp)
/* 025C30 00425C30 8F85802C */  lw          $a1, %got(STR_10011C80)($gp)
/* 025C34 00425C34 240602EF */  addiu       $a2, $zero, 0x2EF
/* 025C38 00425C38 24841C2C */  addiu       $a0, $a0, %lo(STR_10011C2C)
/* 025C3C 00425C3C 0320F809 */  jalr        $t9
/* 025C40 00425C40 24A51C80 */   addiu      $a1, $a1, %lo(STR_10011C80)
/* 025C44 00425C44 8FBC0030 */  lw          $gp, 0x30($sp)
.L00425C48:
/* 025C48 00425C48 8E4C002C */  lw          $t4, 0x2C($s2)
/* 025C4C 00425C4C 8E4E0004 */  lw          $t6, 0x4($s2)
/* 025C50 00425C50 24080001 */  addiu       $t0, $zero, 0x1
/* 025C54 00425C54 8D8D0034 */  lw          $t5, 0x34($t4)
/* 025C58 00425C58 240A00FF */  addiu       $t2, $zero, 0xFF
/* 025C5C 00425C5C ADCD0000 */  sw          $t5, 0x0($t6)
/* 025C60 00425C60 8E4F002C */  lw          $t7, 0x2C($s2)
/* 025C64 00425C64 8E580004 */  lw          $t8, 0x4($s2)
/* 025C68 00425C68 8DE200C4 */  lw          $v0, 0xC4($t7)
/* 025C6C 00425C6C AF020004 */  sw          $v0, 0x4($t8)
/* 025C70 00425C70 8E590004 */  lw          $t9, 0x4($s2)
/* 025C74 00425C74 AF220008 */  sw          $v0, 0x8($t9)
/* 025C78 00425C78 8E490004 */  lw          $t1, 0x4($s2)
/* 025C7C 00425C7C A128000C */  sb          $t0, 0xC($t1)
/* 025C80 00425C80 8E4B0004 */  lw          $t3, 0x4($s2)
/* 025C84 00425C84 A16A000D */  sb          $t2, 0xD($t3)
/* 025C88 00425C88 8F9980C4 */  lw          $t9, %call16(read)($gp)
/* 025C8C 00425C8C 8E43002C */  lw          $v1, 0x2C($s2)
/* 025C90 00425C90 8E440030 */  lw          $a0, 0x30($s2)
/* 025C94 00425C94 8C6500C4 */  lw          $a1, 0xC4($v1)
/* 025C98 00425C98 0320F809 */  jalr        $t9
/* 025C9C 00425C9C 8C660034 */   lw         $a2, 0x34($v1)
/* 025CA0 00425CA0 8E4C002C */  lw          $t4, 0x2C($s2)
/* 025CA4 00425CA4 8FBC0030 */  lw          $gp, 0x30($sp)
/* 025CA8 00425CA8 8D8D0034 */  lw          $t5, 0x34($t4)
/* 025CAC 00425CAC 104D0003 */  beq         $v0, $t5, .L00425CBC
/* 025CB0 00425CB0 00000000 */   nop
/* 025CB4 00425CB4 10000012 */  b           .L00425D00
/* 025CB8 00425CB8 00001025 */   move       $v0, $zero
.L00425CBC:
/* 025CBC 00425CBC 10000010 */  b           .L00425D00
/* 025CC0 00425CC0 24020001 */   addiu      $v0, $zero, 0x1
.L00425CC4:
/* 025CC4 00425CC4 8F998150 */  lw          $t9, %call16(atol)($gp)
/* 025CC8 00425CC8 02202025 */  move        $a0, $s1
/* 025CCC 00425CCC 0320F809 */  jalr        $t9
/* 025CD0 00425CD0 00000000 */   nop
/* 025CD4 00425CD4 8FBC0030 */  lw          $gp, 0x30($sp)
/* 025CD8 00425CD8 8E440030 */  lw          $a0, 0x30($s2)
/* 025CDC 00425CDC 00402825 */  move        $a1, $v0
/* 025CE0 00425CE0 8F9980D8 */  lw          $t9, %call16(lseek)($gp)
/* 025CE4 00425CE4 24060001 */  addiu       $a2, $zero, 0x1
/* 025CE8 00425CE8 0320F809 */  jalr        $t9
/* 025CEC 00425CEC 00000000 */   nop
/* 025CF0 00425CF0 8FBC0030 */  lw          $gp, 0x30($sp)
.L00425CF4:
/* 025CF4 00425CF4 1260FF98 */  beqz        $s3, .L00425B58
/* 025CF8 00425CF8 00000000 */   nop
/* 025CFC 00425CFC 00001025 */  move        $v0, $zero
.L00425D00:
/* 025D00 00425D00 8FBF0034 */  lw          $ra, 0x34($sp)
/* 025D04 00425D04 8FB00018 */  lw          $s0, 0x18($sp)
/* 025D08 00425D08 8FB1001C */  lw          $s1, 0x1C($sp)
/* 025D0C 00425D0C 8FB20020 */  lw          $s2, 0x20($sp)
/* 025D10 00425D10 8FB30024 */  lw          $s3, 0x24($sp)
/* 025D14 00425D14 8FB40028 */  lw          $s4, 0x28($sp)
/* 025D18 00425D18 8FB5002C */  lw          $s5, 0x2C($sp)
/* 025D1C 00425D1C 03E00008 */  jr          $ra
/* 025D20 00425D20 27BD0038 */   addiu      $sp, $sp, 0x38
