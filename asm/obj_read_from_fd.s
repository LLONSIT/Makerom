glabel obj_read_from_fd # 261
# _gp_disp: 0xFBF6298
.set noreorder; .cpload $t9; # .set reorder
/* 027AB4 00427AB4 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 027AB8 00427AB8 AFB0001C */  sw          $s0, 0x1C($sp)
/* 027ABC 00427ABC 00808025 */  move        $s0, $a0
/* 027AC0 00427AC0 AFBF0024 */  sw          $ra, 0x24($sp)
/* 027AC4 00427AC4 AFBC0020 */  sw          $gp, 0x20($sp)
/* 027AC8 00427AC8 AFA50044 */  sw          $a1, 0x44($sp)
/* 027ACC 00427ACC AFA60048 */  sw          $a2, 0x48($sp)
/* 027AD0 00427AD0 14800008 */  bnez        $a0, .L00427AF4
/* 027AD4 00427AD4 AFA7004C */   sw         $a3, 0x4C($sp)
/* 027AD8 00427AD8 8F9980D4 */  lw          $t9, %call16(calloc)($gp)
/* 027ADC 00427ADC 24040001 */  addiu       $a0, $zero, 0x1
/* 027AE0 00427AE0 240501DC */  addiu       $a1, $zero, 0x1DC
/* 027AE4 00427AE4 0320F809 */  jalr        $t9
/* 027AE8 00427AE8 00000000 */   nop
/* 027AEC 00427AEC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 027AF0 00427AF0 00408025 */  move        $s0, $v0
.L00427AF4:
/* 027AF4 00427AF4 16000003 */  bnez        $s0, .L00427B04
/* 027AF8 00427AF8 00000000 */   nop
/* 027AFC 00427AFC 10000091 */  b           .L00427D44
/* 027B00 00427B00 00001025 */   move       $v0, $zero
.L00427B04:
/* 027B04 00427B04 8F99814C */  lw          $t9, %call16(getpagesize)($gp)
/* 027B08 00427B08 0320F809 */  jalr        $t9
/* 027B0C 00427B0C 00000000 */   nop
/* 027B10 00427B10 8E0600C4 */  lw          $a2, 0xC4($s0)
/* 027B14 00427B14 8FBC0020 */  lw          $gp, 0x20($sp)
/* 027B18 00427B18 00404025 */  move        $t0, $v0
/* 027B1C 00427B1C 10C0003A */  beqz        $a2, .L00427C08
/* 027B20 00427B20 8FAD004C */   lw         $t5, 0x4C($sp)
/* 027B24 00427B24 8FB80048 */  lw          $t8, 0x48($sp)
/* 027B28 00427B28 244EFFFF */  addiu       $t6, $v0, -0x1
/* 027B2C 00427B2C 01C07827 */  not         $t7, $t6
/* 027B30 00427B30 33190003 */  andi        $t9, $t8, 0x3
/* 027B34 00427B34 17200056 */  bnez        $t9, .L00427C90
/* 027B38 00427B38 00CF2024 */   and        $a0, $a2, $t7
/* 027B3C 00427B3C 8F99813C */  lw          $t9, %call16(munmap)($gp)
/* 027B40 00427B40 8E090034 */  lw          $t1, 0x34($s0)
/* 027B44 00427B44 00C45023 */  subu        $t2, $a2, $a0
/* 027B48 00427B48 AFA2003C */  sw          $v0, 0x3C($sp)
/* 027B4C 00427B4C 0320F809 */  jalr        $t9
/* 027B50 00427B50 012A2821 */   addu       $a1, $t1, $t2
/* 027B54 00427B54 2401FFFF */  addiu       $at, $zero, -0x1
/* 027B58 00427B58 8FBC0020 */  lw          $gp, 0x20($sp)
/* 027B5C 00427B5C 14410003 */  bne         $v0, $at, .L00427B6C
/* 027B60 00427B60 8FA8003C */   lw         $t0, 0x3C($sp)
/* 027B64 00427B64 1000004A */  b           .L00427C90
/* 027B68 00427B68 8E0600C4 */   lw         $a2, 0xC4($s0)
.L00427B6C:
/* 027B6C 00427B6C 8FAB004C */  lw          $t3, 0x4C($sp)
/* 027B70 00427B70 8FA20048 */  lw          $v0, 0x48($sp)
/* 027B74 00427B74 250CFFFF */  addiu       $t4, $t0, -0x1
/* 027B78 00427B78 AE0B0034 */  sw          $t3, 0x34($s0)
/* 027B7C 00427B7C 8F998134 */  lw          $t9, %call16(mmap)($gp)
/* 027B80 00427B80 01806827 */  not         $t5, $t4
/* 027B84 00427B84 8FB80044 */  lw          $t8, 0x44($sp)
/* 027B88 00427B88 8FAF004C */  lw          $t7, 0x4C($sp)
/* 027B8C 00427B8C 004D1824 */  and         $v1, $v0, $t5
/* 027B90 00427B90 00437023 */  subu        $t6, $v0, $v1
/* 027B94 00427B94 AFA30014 */  sw          $v1, 0x14($sp)
/* 027B98 00427B98 AFA30028 */  sw          $v1, 0x28($sp)
/* 027B9C 00427B9C 00002025 */  move        $a0, $zero
/* 027BA0 00427BA0 24060002 */  addiu       $a2, $zero, 0x2
/* 027BA4 00427BA4 24070002 */  addiu       $a3, $zero, 0x2
/* 027BA8 00427BA8 AFB80010 */  sw          $t8, 0x10($sp)
/* 027BAC 00427BAC 0320F809 */  jalr        $t9
/* 027BB0 00427BB0 01CF2821 */   addu       $a1, $t6, $t7
/* 027BB4 00427BB4 2401FFFF */  addiu       $at, $zero, -0x1
/* 027BB8 00427BB8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 027BBC 00427BBC 1441000A */  bne         $v0, $at, .L00427BE8
/* 027BC0 00427BC0 8FA30028 */   lw         $v1, 0x28($sp)
/* 027BC4 00427BC4 8F99804C */  lw          $t9, %got(errno)($gp)
/* 027BC8 00427BC8 24010013 */  addiu       $at, $zero, 0x13
/* 027BCC 00427BCC 8F390000 */  lw          $t9, 0x0($t9)
/* 027BD0 00427BD0 17210003 */  bne         $t9, $at, .L00427BE0
/* 027BD4 00427BD4 00000000 */   nop
/* 027BD8 00427BD8 1000005A */  b           .L00427D44
/* 027BDC 00427BDC 00001025 */   move       $v0, $zero
.L00427BE0:
/* 027BE0 00427BE0 1000002B */  b           .L00427C90
/* 027BE4 00427BE4 8E0600C4 */   lw         $a2, 0xC4($s0)
.L00427BE8:
/* 027BE8 00427BE8 8FA90048 */  lw          $t1, 0x48($sp)
/* 027BEC 00427BEC 8F81802C */  lw          $at, %got(D_10015B20)($gp)
/* 027BF0 00427BF0 240C0001 */  addiu       $t4, $zero, 0x1
/* 027BF4 00427BF4 00495021 */  addu        $t2, $v0, $t1
/* 027BF8 00427BF8 01435823 */  subu        $t3, $t2, $v1
/* 027BFC 00427BFC AE0B00C4 */  sw          $t3, 0xC4($s0)
/* 027C00 00427C00 1000004A */  b           .L00427D2C
/* 027C04 00427C04 AC2C5B20 */   sw         $t4, %lo(D_10015B20)($at)
.L00427C08:
/* 027C08 00427C08 AE0D0034 */  sw          $t5, 0x34($s0)
/* 027C0C 00427C0C 8FAE0048 */  lw          $t6, 0x48($sp)
/* 027C10 00427C10 2518FFFF */  addiu       $t8, $t0, -0x1
/* 027C14 00427C14 0300C827 */  not         $t9, $t8
/* 027C18 00427C18 31CF0003 */  andi        $t7, $t6, 0x3
/* 027C1C 00427C1C 15E0001A */  bnez        $t7, .L00427C88
/* 027C20 00427C20 00002025 */   move       $a0, $zero
/* 027C24 00427C24 01D91824 */  and         $v1, $t6, $t9
/* 027C28 00427C28 8F998134 */  lw          $t9, %call16(mmap)($gp)
/* 027C2C 00427C2C 8FAA004C */  lw          $t2, 0x4C($sp)
/* 027C30 00427C30 8FAB0044 */  lw          $t3, 0x44($sp)
/* 027C34 00427C34 01C34823 */  subu        $t1, $t6, $v1
/* 027C38 00427C38 AFA30014 */  sw          $v1, 0x14($sp)
/* 027C3C 00427C3C AFA30028 */  sw          $v1, 0x28($sp)
/* 027C40 00427C40 24060002 */  addiu       $a2, $zero, 0x2
/* 027C44 00427C44 24070002 */  addiu       $a3, $zero, 0x2
/* 027C48 00427C48 012A2821 */  addu        $a1, $t1, $t2
/* 027C4C 00427C4C 0320F809 */  jalr        $t9
/* 027C50 00427C50 AFAB0010 */   sw         $t3, 0x10($sp)
/* 027C54 00427C54 8FBC0020 */  lw          $gp, 0x20($sp)
/* 027C58 00427C58 8FA30028 */  lw          $v1, 0x28($sp)
/* 027C5C 00427C5C 2401FFFF */  addiu       $at, $zero, -0x1
/* 027C60 00427C60 10410009 */  beq         $v0, $at, .L00427C88
/* 027C64 00427C64 AE0200C4 */   sw         $v0, 0xC4($s0)
/* 027C68 00427C68 8FAD0048 */  lw          $t5, 0x48($sp)
/* 027C6C 00427C6C 8F81802C */  lw          $at, %got(D_10015B20)($gp)
/* 027C70 00427C70 24190001 */  addiu       $t9, $zero, 0x1
/* 027C74 00427C74 004D7821 */  addu        $t7, $v0, $t5
/* 027C78 00427C78 01E3C023 */  subu        $t8, $t7, $v1
/* 027C7C 00427C7C AE1800C4 */  sw          $t8, 0xC4($s0)
/* 027C80 00427C80 1000002A */  b           .L00427D2C
/* 027C84 00427C84 AC395B20 */   sw         $t9, %lo(D_10015B20)($at)
.L00427C88:
/* 027C88 00427C88 AE0000C4 */  sw          $zero, 0xC4($s0)
/* 027C8C 00427C8C 00003025 */  move        $a2, $zero
.L00427C90:
/* 027C90 00427C90 8FA5004C */  lw          $a1, 0x4C($sp)
/* 027C94 00427C94 10C00008 */  beqz        $a2, .L00427CB8
/* 027C98 00427C98 AE050034 */   sw         $a1, 0x34($s0)
/* 027C9C 00427C9C 8F99810C */  lw          $t9, %call16(realloc)($gp)
/* 027CA0 00427CA0 00C02025 */  move        $a0, $a2
/* 027CA4 00427CA4 0320F809 */  jalr        $t9
/* 027CA8 00427CA8 00000000 */   nop
/* 027CAC 00427CAC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 027CB0 00427CB0 10000007 */  b           .L00427CD0
/* 027CB4 00427CB4 AE0200C4 */   sw         $v0, 0xC4($s0)
.L00427CB8:
/* 027CB8 00427CB8 8F998064 */  lw          $t9, %call16(malloc)($gp)
/* 027CBC 00427CBC 00A02025 */  move        $a0, $a1
/* 027CC0 00427CC0 0320F809 */  jalr        $t9
/* 027CC4 00427CC4 00000000 */   nop
/* 027CC8 00427CC8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 027CCC 00427CCC AE0200C4 */  sw          $v0, 0xC4($s0)
.L00427CD0:
/* 027CD0 00427CD0 8E0E00C4 */  lw          $t6, 0xC4($s0)
/* 027CD4 00427CD4 15C00003 */  bnez        $t6, .L00427CE4
/* 027CD8 00427CD8 00000000 */   nop
/* 027CDC 00427CDC 10000019 */  b           .L00427D44
/* 027CE0 00427CE0 00001025 */   move       $v0, $zero
.L00427CE4:
/* 027CE4 00427CE4 8F9980D8 */  lw          $t9, %call16(lseek)($gp)
/* 027CE8 00427CE8 8FA40044 */  lw          $a0, 0x44($sp)
/* 027CEC 00427CEC 8FA50048 */  lw          $a1, 0x48($sp)
/* 027CF0 00427CF0 0320F809 */  jalr        $t9
/* 027CF4 00427CF4 00003025 */   move       $a2, $zero
/* 027CF8 00427CF8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 027CFC 00427CFC 8FA40044 */  lw          $a0, 0x44($sp)
/* 027D00 00427D00 8E0500C4 */  lw          $a1, 0xC4($s0)
/* 027D04 00427D04 8F9980C4 */  lw          $t9, %call16(read)($gp)
/* 027D08 00427D08 8FA6004C */  lw          $a2, 0x4C($sp)
/* 027D0C 00427D0C 0320F809 */  jalr        $t9
/* 027D10 00427D10 00000000 */   nop
/* 027D14 00427D14 8FA9004C */  lw          $t1, 0x4C($sp)
/* 027D18 00427D18 8FBC0020 */  lw          $gp, 0x20($sp)
/* 027D1C 00427D1C 10490003 */  beq         $v0, $t1, .L00427D2C
/* 027D20 00427D20 00000000 */   nop
/* 027D24 00427D24 10000007 */  b           .L00427D44
/* 027D28 00427D28 00001025 */   move       $v0, $zero
.L00427D2C:
/* 027D2C 00427D2C 8F998274 */  lw          $t9, %call16(obj_init)($gp)
/* 027D30 00427D30 02002025 */  move        $a0, $s0
/* 027D34 00427D34 24050001 */  addiu       $a1, $zero, 0x1
/* 027D38 00427D38 0320F809 */  jalr        $t9
/* 027D3C 00427D3C 00000000 */   nop
/* 027D40 00427D40 8FBC0020 */  lw          $gp, 0x20($sp)
.L00427D44:
/* 027D44 00427D44 8FBF0024 */  lw          $ra, 0x24($sp)
/* 027D48 00427D48 8FB0001C */  lw          $s0, 0x1C($sp)
/* 027D4C 00427D4C 27BD0040 */  addiu       $sp, $sp, 0x40
/* 027D50 00427D50 03E00008 */  jr          $ra
/* 027D54 00427D54 00000000 */   nop
