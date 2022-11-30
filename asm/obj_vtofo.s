.section .rodata
glabel STR_1001311C
/* 04311C 1001311C */ .asciz "0"
                      .balign 4

glabel STR_10013120
/* 043120 10013120 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_10013130
/* 043130 10013130 */ .asciz "0"
                      .balign 4

glabel STR_10013134
/* 043134 10013134 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_10013144
/* 043144 10013144 */ .asciz "0"
                      .balign 4

glabel STR_10013148
/* 043148 10013148 */ .asciz "obj_rewrite.c"
                      .balign 4


.section .text
glabel obj_vtofo # 575
# _gp_disp: 0xFBEB264
.set noreorder; .cpload $t9; # .set reorder
/* 032AE8 00432AE8 8F9982AC */  lw          $t9, %call16(obj_otype)($gp)
/* 032AEC 00432AEC 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 032AF0 00432AF0 AFBF001C */  sw          $ra, 0x1C($sp)
/* 032AF4 00432AF4 AFB00014 */  sw          $s0, 0x14($sp)
/* 032AF8 00432AF8 00808025 */  move        $s0, $a0
/* 032AFC 00432AFC AFBC0018 */  sw          $gp, 0x18($sp)
/* 032B00 00432B00 0320F809 */  jalr        $t9
/* 032B04 00432B04 AFA5002C */   sw         $a1, 0x2C($sp)
/* 032B08 00432B08 24010002 */  addiu       $at, $zero, 0x2
/* 032B0C 00432B0C 10410008 */  beq         $v0, $at, .L00432B30
/* 032B10 00432B10 8FBC0018 */   lw         $gp, 0x18($sp)
/* 032B14 00432B14 8F9982AC */  lw          $t9, %call16(obj_otype)($gp)
/* 032B18 00432B18 02002025 */  move        $a0, $s0
/* 032B1C 00432B1C 0320F809 */  jalr        $t9
/* 032B20 00432B20 00000000 */   nop
/* 032B24 00432B24 24010003 */  addiu       $at, $zero, 0x3
/* 032B28 00432B28 14410067 */  bne         $v0, $at, .L00432CC8
/* 032B2C 00432B2C 8FBC0018 */   lw         $gp, 0x18($sp)
.L00432B30:
/* 032B30 00432B30 8F99838C */  lw          $t9, %call16(obj_text_start)($gp)
/* 032B34 00432B34 02002025 */  move        $a0, $s0
/* 032B38 00432B38 0320F809 */  jalr        $t9
/* 032B3C 00432B3C 00000000 */   nop
/* 032B40 00432B40 8FAE002C */  lw          $t6, 0x2C($sp)
/* 032B44 00432B44 8FBC0018 */  lw          $gp, 0x18($sp)
/* 032B48 00432B48 01C2082B */  sltu        $at, $t6, $v0
/* 032B4C 00432B4C 14200056 */  bnez        $at, .L00432CA8
/* 032B50 00432B50 00000000 */   nop
/* 032B54 00432B54 8F99838C */  lw          $t9, %call16(obj_text_start)($gp)
/* 032B58 00432B58 02002025 */  move        $a0, $s0
/* 032B5C 00432B5C 0320F809 */  jalr        $t9
/* 032B60 00432B60 00000000 */   nop
/* 032B64 00432B64 8FBC0018 */  lw          $gp, 0x18($sp)
/* 032B68 00432B68 AFA20024 */  sw          $v0, 0x24($sp)
/* 032B6C 00432B6C 02002025 */  move        $a0, $s0
/* 032B70 00432B70 8F998390 */  lw          $t9, %call16(obj_text_size)($gp)
/* 032B74 00432B74 0320F809 */  jalr        $t9
/* 032B78 00432B78 00000000 */   nop
/* 032B7C 00432B7C 8FB80024 */  lw          $t8, 0x24($sp)
/* 032B80 00432B80 8FAF002C */  lw          $t7, 0x2C($sp)
/* 032B84 00432B84 8FBC0018 */  lw          $gp, 0x18($sp)
/* 032B88 00432B88 0058C821 */  addu        $t9, $v0, $t8
/* 032B8C 00432B8C 01F9082B */  sltu        $at, $t7, $t9
/* 032B90 00432B90 10200009 */  beqz        $at, .L00432BB8
/* 032B94 00432B94 00000000 */   nop
/* 032B98 00432B98 8F99838C */  lw          $t9, %call16(obj_text_start)($gp)
/* 032B9C 00432B9C 02002025 */  move        $a0, $s0
/* 032BA0 00432BA0 0320F809 */  jalr        $t9
/* 032BA4 00432BA4 00000000 */   nop
/* 032BA8 00432BA8 8FA8002C */  lw          $t0, 0x2C($sp)
/* 032BAC 00432BAC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 032BB0 00432BB0 10000045 */  b           .L00432CC8
/* 032BB4 00432BB4 01021023 */   subu       $v0, $t0, $v0
.L00432BB8:
/* 032BB8 00432BB8 8F998398 */  lw          $t9, %call16(obj_data_start)($gp)
/* 032BBC 00432BBC 02002025 */  move        $a0, $s0
/* 032BC0 00432BC0 0320F809 */  jalr        $t9
/* 032BC4 00432BC4 00000000 */   nop
/* 032BC8 00432BC8 8FA9002C */  lw          $t1, 0x2C($sp)
/* 032BCC 00432BCC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 032BD0 00432BD0 0122082B */  sltu        $at, $t1, $v0
/* 032BD4 00432BD4 1420002B */  bnez        $at, .L00432C84
/* 032BD8 00432BD8 00000000 */   nop
/* 032BDC 00432BDC 8F99839C */  lw          $t9, %call16(obj_bss_start)($gp)
/* 032BE0 00432BE0 02002025 */  move        $a0, $s0
/* 032BE4 00432BE4 0320F809 */  jalr        $t9
/* 032BE8 00432BE8 00000000 */   nop
/* 032BEC 00432BEC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 032BF0 00432BF0 AFA20024 */  sw          $v0, 0x24($sp)
/* 032BF4 00432BF4 02002025 */  move        $a0, $s0
/* 032BF8 00432BF8 8F9983A4 */  lw          $t9, %call16(obj_bss_size)($gp)
/* 032BFC 00432BFC 0320F809 */  jalr        $t9
/* 032C00 00432C00 00000000 */   nop
/* 032C04 00432C04 8FAB0024 */  lw          $t3, 0x24($sp)
/* 032C08 00432C08 8FAA002C */  lw          $t2, 0x2C($sp)
/* 032C0C 00432C0C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 032C10 00432C10 004B6021 */  addu        $t4, $v0, $t3
/* 032C14 00432C14 014C082B */  sltu        $at, $t2, $t4
/* 032C18 00432C18 10200011 */  beqz        $at, .L00432C60
/* 032C1C 00432C1C 00000000 */   nop
/* 032C20 00432C20 8F998390 */  lw          $t9, %call16(obj_text_size)($gp)
/* 032C24 00432C24 02002025 */  move        $a0, $s0
/* 032C28 00432C28 0320F809 */  jalr        $t9
/* 032C2C 00432C2C 00000000 */   nop
/* 032C30 00432C30 8FBC0018 */  lw          $gp, 0x18($sp)
/* 032C34 00432C34 AFA20024 */  sw          $v0, 0x24($sp)
/* 032C38 00432C38 02002025 */  move        $a0, $s0
/* 032C3C 00432C3C 8F998398 */  lw          $t9, %call16(obj_data_start)($gp)
/* 032C40 00432C40 0320F809 */  jalr        $t9
/* 032C44 00432C44 00000000 */   nop
/* 032C48 00432C48 8FAD0024 */  lw          $t5, 0x24($sp)
/* 032C4C 00432C4C 8FAE002C */  lw          $t6, 0x2C($sp)
/* 032C50 00432C50 8FBC0018 */  lw          $gp, 0x18($sp)
/* 032C54 00432C54 01AEC021 */  addu        $t8, $t5, $t6
/* 032C58 00432C58 1000001B */  b           .L00432CC8
/* 032C5C 00432C5C 03021023 */   subu       $v0, $t8, $v0
.L00432C60:
/* 032C60 00432C60 8F998144 */  lw          $t9, %call16(__assert)($gp)
/* 032C64 00432C64 8F84802C */  lw          $a0, %got(STR_1001311C)($gp)
/* 032C68 00432C68 8F85802C */  lw          $a1, %got(STR_10013120)($gp)
/* 032C6C 00432C6C 240600BB */  addiu       $a2, $zero, 0xBB
/* 032C70 00432C70 2484311C */  addiu       $a0, $a0, %lo(STR_1001311C)
/* 032C74 00432C74 0320F809 */  jalr        $t9
/* 032C78 00432C78 24A53120 */   addiu      $a1, $a1, %lo(STR_10013120)
/* 032C7C 00432C7C 10000012 */  b           .L00432CC8
/* 032C80 00432C80 8FBC0018 */   lw         $gp, 0x18($sp)
.L00432C84:
/* 032C84 00432C84 8F998144 */  lw          $t9, %call16(__assert)($gp)
/* 032C88 00432C88 8F84802C */  lw          $a0, %got(STR_10013130)($gp)
/* 032C8C 00432C8C 8F85802C */  lw          $a1, %got(STR_10013134)($gp)
/* 032C90 00432C90 240600BD */  addiu       $a2, $zero, 0xBD
/* 032C94 00432C94 24843130 */  addiu       $a0, $a0, %lo(STR_10013130)
/* 032C98 00432C98 0320F809 */  jalr        $t9
/* 032C9C 00432C9C 24A53134 */   addiu      $a1, $a1, %lo(STR_10013134)
/* 032CA0 00432CA0 10000009 */  b           .L00432CC8
/* 032CA4 00432CA4 8FBC0018 */   lw         $gp, 0x18($sp)
.L00432CA8:
/* 032CA8 00432CA8 8F998144 */  lw          $t9, %call16(__assert)($gp)
/* 032CAC 00432CAC 8F84802C */  lw          $a0, %got(STR_10013144)($gp)
/* 032CB0 00432CB0 8F85802C */  lw          $a1, %got(STR_10013148)($gp)
/* 032CB4 00432CB4 240600C0 */  addiu       $a2, $zero, 0xC0
/* 032CB8 00432CB8 24843144 */  addiu       $a0, $a0, %lo(STR_10013144)
/* 032CBC 00432CBC 0320F809 */  jalr        $t9
/* 032CC0 00432CC0 24A53148 */   addiu      $a1, $a1, %lo(STR_10013148)
/* 032CC4 00432CC4 8FBC0018 */  lw          $gp, 0x18($sp)
.L00432CC8:
/* 032CC8 00432CC8 8FBF001C */  lw          $ra, 0x1C($sp)
/* 032CCC 00432CCC 8FB00014 */  lw          $s0, 0x14($sp)
/* 032CD0 00432CD0 27BD0028 */  addiu       $sp, $sp, 0x28
/* 032CD4 00432CD4 03E00008 */  jr          $ra
/* 032CD8 00432CD8 00000000 */   nop
