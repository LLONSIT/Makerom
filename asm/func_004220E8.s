glabel func_004220E8 # 183
# _gp_disp: 0xFBFBC58
.set noreorder; .cpload $t9; # .set reorder
/* 0220F4 004220F4 27BDFF98 */  addiu       $sp, $sp, -0x68
/* 0220F8 004220F8 AFBF001C */  sw          $ra, 0x1C($sp)
/* 0220FC 004220FC AFBC0018 */  sw          $gp, 0x18($sp)
/* 022100 00422100 AFB00014 */  sw          $s0, 0x14($sp)
/* 022104 00422104 AFA5006C */  sw          $a1, 0x6C($sp)
/* 022108 00422108 8C870050 */  lw          $a3, 0x50($a0)
/* 02210C 0042210C 00808025 */  move        $s0, $a0
/* 022110 00422110 24040006 */  addiu       $a0, $zero, 0x6
/* 022114 00422114 94EE002C */  lhu         $t6, 0x2C($a3)
/* 022118 00422118 15C00003 */  bnez        $t6, .L00422128
/* 02211C 0042211C 00000000 */   nop
/* 022120 00422120 1000007F */  b           .L00422320
/* 022124 00422124 00001025 */   move       $v0, $zero
.L00422128:
/* 022128 00422128 8F9981F0 */  lw          $t9, %call16(_elf32_fsize)($gp)
/* 02212C 0042212C 8E060044 */  lw          $a2, 0x44($s0)
/* 022130 00422130 AFA7002C */  sw          $a3, 0x2C($sp)
/* 022134 00422134 0320F809 */  jalr        $t9
/* 022138 00422138 24050001 */   addiu      $a1, $zero, 0x1
/* 02213C 0042213C 8FA7002C */  lw          $a3, 0x2C($sp)
/* 022140 00422140 8FBC0018 */  lw          $gp, 0x18($sp)
/* 022144 00422144 00403025 */  move        $a2, $v0
/* 022148 00422148 94EF002A */  lhu         $t7, 0x2A($a3)
/* 02214C 0042214C 2418020D */  addiu       $t8, $zero, 0x20D
/* 022150 00422150 504F0006 */  beql        $v0, $t7, .L0042216C
/* 022154 00422154 94F9002C */   lhu        $t9, 0x2C($a3)
/* 022158 00422158 8F8186E8 */  lw          $at, %got(_elf_err)($gp)
/* 02215C 0042215C 2402FFFF */  addiu       $v0, $zero, -0x1
/* 022160 00422160 1000006F */  b           .L00422320
/* 022164 00422164 AC380000 */   sw         $t8, 0x0($at)
/* 022168 00422168 94F9002C */  lhu         $t9, 0x2C($a3)
.L0042216C:
/* 02216C 0042216C 8F8586F0 */  lw          $a1, %got(_elf_work)($gp)
/* 022170 00422170 AFA7002C */  sw          $a3, 0x2C($sp)
/* 022174 00422174 00D90019 */  multu       $a2, $t9
/* 022178 00422178 8F9981F4 */  lw          $t9, %call16(_elf32_msize)($gp)
/* 02217C 0042217C 24040006 */  addiu       $a0, $zero, 0x6
/* 022180 00422180 8CA50000 */  lw          $a1, 0x0($a1)
/* 022184 00422184 00003012 */  mflo        $a2
/* 022188 00422188 AFA60064 */  sw          $a2, 0x64($sp)
/* 02218C 0042218C 0320F809 */  jalr        $t9
/* 022190 00422190 00000000 */   nop
/* 022194 00422194 8FA7002C */  lw          $a3, 0x2C($sp)
/* 022198 00422198 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02219C 0042219C 8FA60064 */  lw          $a2, 0x64($sp)
/* 0221A0 004221A0 94E8002C */  lhu         $t0, 0x2C($a3)
/* 0221A4 004221A4 240B020E */  addiu       $t3, $zero, 0x20E
/* 0221A8 004221A8 00480019 */  multu       $v0, $t0
/* 0221AC 004221AC 00004812 */  mflo        $t1
/* 0221B0 004221B0 AFA90060 */  sw          $t1, 0x60($sp)
/* 0221B4 004221B4 8CE3001C */  lw          $v1, 0x1C($a3)
/* 0221B8 004221B8 10600008 */  beqz        $v1, .L004221DC
/* 0221BC 004221BC 00000000 */   nop
/* 0221C0 004221C0 8E020034 */  lw          $v0, 0x34($s0)
/* 0221C4 004221C4 0062082B */  sltu        $at, $v1, $v0
/* 0221C8 004221C8 10200004 */  beqz        $at, .L004221DC
/* 0221CC 004221CC 00435023 */   subu       $t2, $v0, $v1
/* 0221D0 004221D0 0146082B */  sltu        $at, $t2, $a2
/* 0221D4 004221D4 10200005 */  beqz        $at, .L004221EC
/* 0221D8 004221D8 8FAC006C */   lw         $t4, 0x6C($sp)
.L004221DC:
/* 0221DC 004221DC 8F8186E8 */  lw          $at, %got(_elf_err)($gp)
/* 0221E0 004221E0 2402FFFF */  addiu       $v0, $zero, -0x1
/* 0221E4 004221E4 1000004E */  b           .L00422320
/* 0221E8 004221E8 AC2B0000 */   sw         $t3, 0x0($at)
.L004221EC:
/* 0221EC 004221EC 1180000C */  beqz        $t4, .L00422220
/* 0221F0 004221F0 8FAD0060 */   lw         $t5, 0x60($sp)
/* 0221F4 004221F4 00CD082B */  sltu        $at, $a2, $t5
/* 0221F8 004221F8 14200009 */  bnez        $at, .L00422220
/* 0221FC 004221FC 306E0003 */   andi       $t6, $v1, 0x3
/* 022200 00422200 15C00007 */  bnez        $t6, .L00422220
/* 022204 00422204 00000000 */   nop
/* 022208 00422208 8E020028 */  lw          $v0, 0x28($s0)
/* 02220C 0042220C 24180001 */  addiu       $t8, $zero, 0x1
/* 022210 00422210 AE18000C */  sw          $t8, 0xC($s0)
/* 022214 00422214 00437821 */  addu        $t7, $v0, $v1
/* 022218 00422218 10000014 */  b           .L0042226C
/* 02221C 0042221C AE0F0054 */   sw         $t7, 0x54($s0)
.L00422220:
/* 022220 00422220 8F998064 */  lw          $t9, %call16(malloc)($gp)
/* 022224 00422224 8FA40060 */  lw          $a0, 0x60($sp)
/* 022228 00422228 AFA60064 */  sw          $a2, 0x64($sp)
/* 02222C 0042222C 0320F809 */  jalr        $t9
/* 022230 00422230 AFA7002C */   sw         $a3, 0x2C($sp)
/* 022234 00422234 8FBC0018 */  lw          $gp, 0x18($sp)
/* 022238 00422238 8FA60064 */  lw          $a2, 0x64($sp)
/* 02223C 0042223C 8FA7002C */  lw          $a3, 0x2C($sp)
/* 022240 00422240 14400006 */  bnez        $v0, .L0042225C
/* 022244 00422244 AE020054 */   sw         $v0, 0x54($s0)
/* 022248 00422248 8F8186E8 */  lw          $at, %got(_elf_err)($gp)
/* 02224C 0042224C 2419040F */  addiu       $t9, $zero, 0x40F
/* 022250 00422250 2402FFFF */  addiu       $v0, $zero, -0x1
/* 022254 00422254 10000032 */  b           .L00422320
/* 022258 00422258 AC390000 */   sw         $t9, 0x0($at)
.L0042225C:
/* 02225C 0042225C 8E080088 */  lw          $t0, 0x88($s0)
/* 022260 00422260 8E020028 */  lw          $v0, 0x28($s0)
/* 022264 00422264 35090004 */  ori         $t1, $t0, 0x4
/* 022268 00422268 AE090088 */  sw          $t1, 0x88($s0)
.L0042226C:
/* 02226C 0042226C 8CEA001C */  lw          $t2, 0x1C($a3)
/* 022270 00422270 240C0006 */  addiu       $t4, $zero, 0x6
/* 022274 00422274 AFAC0034 */  sw          $t4, 0x34($sp)
/* 022278 00422278 004A5821 */  addu        $t3, $v0, $t2
/* 02227C 0042227C AFAB0030 */  sw          $t3, 0x30($sp)
/* 022280 00422280 AFA60038 */  sw          $a2, 0x38($sp)
/* 022284 00422284 8E0D0044 */  lw          $t5, 0x44($s0)
/* 022288 00422288 8F9886F0 */  lw          $t8, %got(_elf_work)($gp)
/* 02228C 0042228C 8FAF0060 */  lw          $t7, 0x60($sp)
/* 022290 00422290 AFAD0044 */  sw          $t5, 0x44($sp)
/* 022294 00422294 8E0E0054 */  lw          $t6, 0x54($s0)
/* 022298 00422298 8F180000 */  lw          $t8, 0x0($t8)
/* 02229C 0042229C 8F998214 */  lw          $t9, %call16(_elf_vm)($gp)
/* 0222A0 004222A0 AFAF0050 */  sw          $t7, 0x50($sp)
/* 0222A4 004222A4 AFAE0048 */  sw          $t6, 0x48($sp)
/* 0222A8 004222A8 AFB8005C */  sw          $t8, 0x5C($sp)
/* 0222AC 004222AC 8CE5001C */  lw          $a1, 0x1C($a3)
/* 0222B0 004222B0 0320F809 */  jalr        $t9
/* 0222B4 004222B4 02002025 */   move       $a0, $s0
/* 0222B8 004222B8 14400008 */  bnez        $v0, .L004222DC
/* 0222BC 004222BC 8FBC0018 */   lw         $gp, 0x18($sp)
/* 0222C0 004222C0 8F9981FC */  lw          $t9, %call16(_elf32_xlatetom)($gp)
/* 0222C4 004222C4 27A40048 */  addiu       $a0, $sp, 0x48
/* 0222C8 004222C8 27A50030 */  addiu       $a1, $sp, 0x30
/* 0222CC 004222CC 0320F809 */  jalr        $t9
/* 0222D0 004222D0 8E060040 */   lw         $a2, 0x40($s0)
/* 0222D4 004222D4 1440000F */  bnez        $v0, .L00422314
/* 0222D8 004222D8 8FBC0018 */   lw         $gp, 0x18($sp)
.L004222DC:
/* 0222DC 004222DC 8E020088 */  lw          $v0, 0x88($s0)
/* 0222E0 004222E0 2401FFFB */  addiu       $at, $zero, -0x5
/* 0222E4 004222E4 30590004 */  andi        $t9, $v0, 0x4
/* 0222E8 004222E8 13200007 */  beqz        $t9, .L00422308
/* 0222EC 004222EC 00414024 */   and        $t0, $v0, $at
/* 0222F0 004222F0 AE080088 */  sw          $t0, 0x88($s0)
/* 0222F4 004222F4 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 0222F8 004222F8 8E040054 */  lw          $a0, 0x54($s0)
/* 0222FC 004222FC 0320F809 */  jalr        $t9
/* 022300 00422300 00000000 */   nop
/* 022304 00422304 8FBC0018 */  lw          $gp, 0x18($sp)
.L00422308:
/* 022308 00422308 AE000054 */  sw          $zero, 0x54($s0)
/* 02230C 0042230C 10000004 */  b           .L00422320
/* 022310 00422310 2402FFFF */   addiu      $v0, $zero, -0x1
.L00422314:
/* 022314 00422314 8FA90060 */  lw          $t1, 0x60($sp)
/* 022318 00422318 00001025 */  move        $v0, $zero
/* 02231C 0042231C AE090058 */  sw          $t1, 0x58($s0)
.L00422320:
/* 022320 00422320 8FBF001C */  lw          $ra, 0x1C($sp)
/* 022324 00422324 8FB00014 */  lw          $s0, 0x14($sp)
/* 022328 00422328 27BD0068 */  addiu       $sp, $sp, 0x68
/* 02232C 0042232C 03E00008 */  jr          $ra
/* 022330 00422330 00000000 */   nop
