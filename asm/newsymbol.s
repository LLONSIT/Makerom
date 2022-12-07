.section .rodata
glabel STR_100136EC
/* 0436EC 100136EC */ .asciz "dbx running out of memory space"
                      .balign 4

glabel STR_1001370C
/* 04370C 1001370C */ .asciz "dbx running out of type table space"
                      .balign 4

glabel STR_10013730
/* 043730 10013730 */ .asciz "dbx running out of type table space"
                      .balign 4

glabel STR_10013754
/* 043754 10013754 */ .asciz "dbx running out of type table space"
                      .balign 4

glabel STR_10013778
/* 043778 10013778 */ .asciz "dbx running out of type table space"
                      .balign 4

glabel STR_1001379C
/* 04379C 1001379C */ .asciz "dbx running out of type table space"
                      .balign 4

glabel STR_100137C0
/* 0437C0 100137C0 */ .asciz "dbx running out of type table space"
                      .balign 4


.section .text
glabel newsymbol # 610
# _gp_disp: 0xFBE6E04
.set noreorder; .cpload $t9; # .set reorder
/* 036F48 00436F48 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 036F4C 00436F4C 8F998590 */  lw          $t9, %call16(user_symbol_alloc)($gp)
/* 036F50 00436F50 AFBF0024 */  sw          $ra, 0x24($sp)
/* 036F54 00436F54 AFBC0020 */  sw          $gp, 0x20($sp)
/* 036F58 00436F58 AFB1001C */  sw          $s1, 0x1C($sp)
/* 036F5C 00436F5C AFB00018 */  sw          $s0, 0x18($sp)
/* 036F60 00436F60 AFA40028 */  sw          $a0, 0x28($sp)
/* 036F64 00436F64 AFA5002C */  sw          $a1, 0x2C($sp)
/* 036F68 00436F68 AFA60030 */  sw          $a2, 0x30($sp)
/* 036F6C 00436F6C 0320F809 */  jalr        $t9
/* 036F70 00436F70 AFA70034 */   sw         $a3, 0x34($sp)
/* 036F74 00436F74 8FA40028 */  lw          $a0, 0x28($sp)
/* 036F78 00436F78 8FBC0020 */  lw          $gp, 0x20($sp)
/* 036F7C 00436F7C 00408825 */  move        $s1, $v0
/* 036F80 00436F80 10800018 */  beqz        $a0, .L00436FE4
/* 036F84 00436F84 00008025 */   move       $s0, $zero
/* 036F88 00436F88 8F99806C */  lw          $t9, %call16(strlen)($gp)
/* 036F8C 00436F8C 0320F809 */  jalr        $t9
/* 036F90 00436F90 00000000 */   nop
/* 036F94 00436F94 8FBC0020 */  lw          $gp, 0x20($sp)
/* 036F98 00436F98 24440001 */  addiu       $a0, $v0, 0x1
/* 036F9C 00436F9C 8F998064 */  lw          $t9, %call16(malloc)($gp)
/* 036FA0 00436FA0 0320F809 */  jalr        $t9
/* 036FA4 00436FA4 00000000 */   nop
/* 036FA8 00436FA8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 036FAC 00436FAC 14400006 */  bnez        $v0, .L00436FC8
/* 036FB0 00436FB0 00408025 */   move       $s0, $v0
/* 036FB4 00436FB4 8F9985C0 */  lw          $t9, %call16(panic)($gp)
/* 036FB8 00436FB8 8F84802C */  lw          $a0, %got(STR_100136EC)($gp)
/* 036FBC 00436FBC 0320F809 */  jalr        $t9
/* 036FC0 00436FC0 248436EC */   addiu      $a0, $a0, %lo(STR_100136EC)
/* 036FC4 00436FC4 8FBC0020 */  lw          $gp, 0x20($sp)
.L00436FC8:
/* 036FC8 00436FC8 8F99809C */  lw          $t9, %call16(strcpy)($gp)
/* 036FCC 00436FCC 02002025 */  move        $a0, $s0
/* 036FD0 00436FD0 8FA50028 */  lw          $a1, 0x28($sp)
/* 036FD4 00436FD4 0320F809 */  jalr        $t9
/* 036FD8 00436FD8 00000000 */   nop
/* 036FDC 00436FDC 10000001 */  b           .L00436FE4
/* 036FE0 00436FE0 8FBC0020 */   lw         $gp, 0x20($sp)
.L00436FE4:
/* 036FE4 00436FE4 AE300000 */  sw          $s0, 0x0($s1)
/* 036FE8 00436FE8 8FAF002C */  lw          $t7, 0x2C($sp)
/* 036FEC 00436FEC 92280008 */  lbu         $t0, 0x8($s1)
/* 036FF0 00436FF0 000FC880 */  sll         $t9, $t7, 2
/* 036FF4 00436FF4 3109FF03 */  andi        $t1, $t0, 0xFF03
/* 036FF8 00436FF8 03295025 */  or          $t2, $t9, $t1
/* 036FFC 00436FFC A22A0008 */  sb          $t2, 0x8($s1)
/* 037000 00437000 8FAC0030 */  lw          $t4, 0x30($sp)
/* 037004 00437004 962F0008 */  lhu         $t7, 0x8($s1)
/* 037008 00437008 000C6940 */  sll         $t5, $t4, 5
/* 03700C 0043700C 31AE03E0 */  andi        $t6, $t5, 0x3E0
/* 037010 00437010 31F8FC1F */  andi        $t8, $t7, 0xFC1F
/* 037014 00437014 01D84025 */  or          $t0, $t6, $t8
/* 037018 00437018 A6280008 */  sh          $t0, 0x8($s1)
/* 03701C 0043701C 8F998594 */  lw          $t9, %call16(user_type_alloc)($gp)
/* 037020 00437020 0320F809 */  jalr        $t9
/* 037024 00437024 00000000 */   nop
/* 037028 00437028 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03702C 0043702C 14400006 */  bnez        $v0, .L00437048
/* 037030 00437030 00408025 */   move       $s0, $v0
/* 037034 00437034 8F9985C0 */  lw          $t9, %call16(panic)($gp)
/* 037038 00437038 8F84802C */  lw          $a0, %got(STR_1001370C)($gp)
/* 03703C 0043703C 0320F809 */  jalr        $t9
/* 037040 00437040 2484370C */   addiu      $a0, $a0, %lo(STR_1001370C)
/* 037044 00437044 8FBC0020 */  lw          $gp, 0x20($sp)
.L00437048:
/* 037048 00437048 8FA30034 */  lw          $v1, 0x34($sp)
/* 03704C 0043704C 8F8A87CC */  lw          $t2, %got(usertype)($gp)
/* 037050 00437050 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 037054 00437054 8C69000C */  lw          $t1, 0xC($v1)
/* 037058 00437058 01505823 */  subu        $t3, $t2, $s0
/* 03705C 0043705C 000B6083 */  sra         $t4, $t3, 2
/* 037060 00437060 AE090000 */  sw          $t1, 0x0($s0)
/* 037064 00437064 8E220008 */  lw          $v0, 0x8($s1)
/* 037068 00437068 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03706C 0043706C 01816824 */  and         $t5, $t4, $at
/* 037070 00437070 01A27826 */  xor         $t7, $t5, $v0
/* 037074 00437074 000F7300 */  sll         $t6, $t7, 12
/* 037078 00437078 000EC302 */  srl         $t8, $t6, 12
/* 03707C 0043707C 03024026 */  xor         $t0, $t8, $v0
/* 037080 00437080 AE280008 */  sw          $t0, 0x8($s1)
/* 037084 00437084 8FB90038 */  lw          $t9, 0x38($sp)
/* 037088 00437088 24010003 */  addiu       $at, $zero, 0x3
/* 03708C 0043708C AE390004 */  sw          $t9, 0x4($s1)
/* 037090 00437090 8C690024 */  lw          $t1, 0x24($v1)
/* 037094 00437094 15210045 */  bne         $t1, $at, .L004371AC
/* 037098 00437098 00000000 */   nop
/* 03709C 0043709C 8F998594 */  lw          $t9, %call16(user_type_alloc)($gp)
/* 0370A0 004370A0 0320F809 */  jalr        $t9
/* 0370A4 004370A4 00000000 */   nop
/* 0370A8 004370A8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 0370AC 004370AC 14400006 */  bnez        $v0, .L004370C8
/* 0370B0 004370B0 00408025 */   move       $s0, $v0
/* 0370B4 004370B4 8F9985C0 */  lw          $t9, %call16(panic)($gp)
/* 0370B8 004370B8 8F84802C */  lw          $a0, %got(STR_10013730)($gp)
/* 0370BC 004370BC 0320F809 */  jalr        $t9
/* 0370C0 004370C0 24843730 */   addiu      $a0, $a0, %lo(STR_10013730)
/* 0370C4 004370C4 8FBC0020 */  lw          $gp, 0x20($sp)
.L004370C8:
/* 0370C8 004370C8 3C0AFFF0 */  lui         $t2, (0xFFF00004 >> 16)
/* 0370CC 004370CC 354A0004 */  ori         $t2, $t2, (0xFFF00004 & 0xFFFF)
/* 0370D0 004370D0 AE0A0000 */  sw          $t2, 0x0($s0)
/* 0370D4 004370D4 8F998594 */  lw          $t9, %call16(user_type_alloc)($gp)
/* 0370D8 004370D8 0320F809 */  jalr        $t9
/* 0370DC 004370DC 00000000 */   nop
/* 0370E0 004370E0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 0370E4 004370E4 14400006 */  bnez        $v0, .L00437100
/* 0370E8 004370E8 00408025 */   move       $s0, $v0
/* 0370EC 004370EC 8F9985C0 */  lw          $t9, %call16(panic)($gp)
/* 0370F0 004370F0 8F84802C */  lw          $a0, %got(STR_10013754)($gp)
/* 0370F4 004370F4 0320F809 */  jalr        $t9
/* 0370F8 004370F8 24843754 */   addiu      $a0, $a0, %lo(STR_10013754)
/* 0370FC 004370FC 8FBC0020 */  lw          $gp, 0x20($sp)
.L00437100:
/* 037100 00437100 AE000000 */  sw          $zero, 0x0($s0)
/* 037104 00437104 8F998594 */  lw          $t9, %call16(user_type_alloc)($gp)
/* 037108 00437108 0320F809 */  jalr        $t9
/* 03710C 0043710C 00000000 */   nop
/* 037110 00437110 8FBC0020 */  lw          $gp, 0x20($sp)
/* 037114 00437114 14400006 */  bnez        $v0, .L00437130
/* 037118 00437118 00408025 */   move       $s0, $v0
/* 03711C 0043711C 8F9985C0 */  lw          $t9, %call16(panic)($gp)
/* 037120 00437120 8F84802C */  lw          $a0, %got(STR_10013778)($gp)
/* 037124 00437124 0320F809 */  jalr        $t9
/* 037128 00437128 24843778 */   addiu      $a0, $a0, %lo(STR_10013778)
/* 03712C 0043712C 8FBC0020 */  lw          $gp, 0x20($sp)
.L00437130:
/* 037130 00437130 8FAB0034 */  lw          $t3, 0x34($sp)
/* 037134 00437134 8D6C0034 */  lw          $t4, 0x34($t3)
/* 037138 00437138 AE0C0000 */  sw          $t4, 0x0($s0)
/* 03713C 0043713C 8F998594 */  lw          $t9, %call16(user_type_alloc)($gp)
/* 037140 00437140 0320F809 */  jalr        $t9
/* 037144 00437144 00000000 */   nop
/* 037148 00437148 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03714C 0043714C 14400006 */  bnez        $v0, .L00437168
/* 037150 00437150 00408025 */   move       $s0, $v0
/* 037154 00437154 8F9985C0 */  lw          $t9, %call16(panic)($gp)
/* 037158 00437158 8F84802C */  lw          $a0, %got(STR_1001379C)($gp)
/* 03715C 0043715C 0320F809 */  jalr        $t9
/* 037160 00437160 2484379C */   addiu      $a0, $a0, %lo(STR_1001379C)
/* 037164 00437164 8FBC0020 */  lw          $gp, 0x20($sp)
.L00437168:
/* 037168 00437168 8FAD0034 */  lw          $t5, 0x34($sp)
/* 03716C 0043716C 8DAF0038 */  lw          $t7, 0x38($t5)
/* 037170 00437170 AE0F0000 */  sw          $t7, 0x0($s0)
/* 037174 00437174 8F998594 */  lw          $t9, %call16(user_type_alloc)($gp)
/* 037178 00437178 0320F809 */  jalr        $t9
/* 03717C 0043717C 00000000 */   nop
/* 037180 00437180 8FBC0020 */  lw          $gp, 0x20($sp)
/* 037184 00437184 14400006 */  bnez        $v0, .L004371A0
/* 037188 00437188 00408025 */   move       $s0, $v0
/* 03718C 0043718C 8F9985C0 */  lw          $t9, %call16(panic)($gp)
/* 037190 00437190 8F84802C */  lw          $a0, %got(STR_100137C0)($gp)
/* 037194 00437194 0320F809 */  jalr        $t9
/* 037198 00437198 248437C0 */   addiu      $a0, $a0, %lo(STR_100137C0)
/* 03719C 0043719C 8FBC0020 */  lw          $gp, 0x20($sp)
.L004371A0:
/* 0371A0 004371A0 8FAE0034 */  lw          $t6, 0x34($sp)
/* 0371A4 004371A4 8DD8003C */  lw          $t8, 0x3C($t6)
/* 0371A8 004371A8 AE180000 */  sw          $t8, 0x0($s0)
.L004371AC:
/* 0371AC 004371AC 8F8887D0 */  lw          $t0, %got(usersymbol)($gp)
/* 0371B0 004371B0 2401000C */  addiu       $at, $zero, 0xC
/* 0371B4 004371B4 8FBF0024 */  lw          $ra, 0x24($sp)
/* 0371B8 004371B8 01111023 */  subu        $v0, $t0, $s1
/* 0371BC 004371BC 0041001A */  div         $zero, $v0, $at
/* 0371C0 004371C0 00001012 */  mflo        $v0
/* 0371C4 004371C4 8FB1001C */  lw          $s1, 0x1C($sp)
/* 0371C8 004371C8 8FB00018 */  lw          $s0, 0x18($sp)
/* 0371CC 004371CC 03E00008 */  jr          $ra
/* 0371D0 004371D0 27BD0028 */   addiu      $sp, $sp, 0x28
