.section .rodata
glabel STR_1001390C
/* 04390C 1001390C */ .asciz "obj_lookup: dbx running out of memory space"
                      .balign 4
/* 043938 10013938 */ .asciz ""
                      .balign 4
/* 04393C 1001393C */ .asciz ""
                      .balign 4


.section .text
glabel func_004385E4 # 624
# _gp_disp: 0xFBE575C
.set noreorder; .cpload $t9; # .set reorder
/* 0385F0 004385F0 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 0385F4 004385F4 AFB10018 */  sw          $s1, 0x18($sp)
/* 0385F8 004385F8 8F918030 */  lw          $s1, %got(B_1001B6AC)($gp)
/* 0385FC 004385FC AFB00014 */  sw          $s0, 0x14($sp)
/* 038600 00438600 AFB50028 */  sw          $s5, 0x28($sp)
/* 038604 00438604 2631B6AC */  addiu       $s1, $s1, %lo(B_1001B6AC)
/* 038608 00438608 8E300000 */  lw          $s0, 0x0($s1)
/* 03860C 0043860C 0080A825 */  move        $s5, $a0
/* 038610 00438610 AFBF003C */  sw          $ra, 0x3C($sp)
/* 038614 00438614 AFBE0038 */  sw          $fp, 0x38($sp)
/* 038618 00438618 AFBC0034 */  sw          $gp, 0x34($sp)
/* 03861C 0043861C AFB70030 */  sw          $s7, 0x30($sp)
/* 038620 00438620 AFB6002C */  sw          $s6, 0x2C($sp)
/* 038624 00438624 AFB40024 */  sw          $s4, 0x24($sp)
/* 038628 00438628 AFB30020 */  sw          $s3, 0x20($sp)
/* 03862C 0043862C 12000007 */  beqz        $s0, .L0043864C
/* 038630 00438630 AFB2001C */   sw         $s2, 0x1C($sp)
/* 038634 00438634 8E0E0000 */  lw          $t6, 0x0($s0)
.L00438638:
/* 038638 00438638 52AE0067 */  beql        $s5, $t6, .L004387D8
/* 03863C 0043863C 8FBF003C */   lw         $ra, 0x3C($sp)
/* 038640 00438640 8E100004 */  lw          $s0, 0x4($s0)
/* 038644 00438644 5600FFFC */  bnel        $s0, $zero, .L00438638
/* 038648 00438648 8E0E0000 */   lw         $t6, 0x0($s0)
.L0043864C:
/* 03864C 0043864C 8F998064 */  lw          $t9, %call16(malloc)($gp)
/* 038650 00438650 24040008 */  addiu       $a0, $zero, 0x8
/* 038654 00438654 0320F809 */  jalr        $t9
/* 038658 00438658 00000000 */   nop
/* 03865C 0043865C 8FBC0034 */  lw          $gp, 0x34($sp)
/* 038660 00438660 14400006 */  bnez        $v0, .L0043867C
/* 038664 00438664 00408025 */   move       $s0, $v0
/* 038668 00438668 8F9985C0 */  lw          $t9, %call16(panic)($gp)
/* 03866C 0043866C 8F84802C */  lw          $a0, %got(STR_1001390C)($gp)
/* 038670 00438670 0320F809 */  jalr        $t9
/* 038674 00438674 2484390C */   addiu      $a0, $a0, %lo(STR_1001390C)
/* 038678 00438678 8FBC0034 */  lw          $gp, 0x34($sp)
.L0043867C:
/* 03867C 0043867C AE150000 */  sw          $s5, 0x0($s0)
/* 038680 00438680 8E2F0000 */  lw          $t7, 0x0($s1)
/* 038684 00438684 3C163FFF */  lui         $s6, (0x3FFFFFFF >> 16)
/* 038688 00438688 36D6FFFF */  ori         $s6, $s6, (0x3FFFFFFF & 0xFFFF)
/* 03868C 0043868C AE0F0004 */  sw          $t7, 0x4($s0)
/* 038690 00438690 AE300000 */  sw          $s0, 0x0($s1)
/* 038694 00438694 8EB8009C */  lw          $t8, 0x9C($s5)
/* 038698 00438698 8EB400D8 */  lw          $s4, 0xD8($s5)
/* 03869C 0043869C 241703F1 */  addiu       $s7, $zero, 0x3F1
/* 0386A0 004386A0 8F190058 */  lw          $t9, 0x58($t8)
/* 0386A4 004386A4 02994021 */  addu        $t0, $s4, $t9
/* 0386A8 004386A8 0288082B */  sltu        $at, $s4, $t0
/* 0386AC 004386AC 5020004A */  beql        $at, $zero, .L004387D8
/* 0386B0 004386B0 8FBF003C */   lw         $ra, 0x3C($sp)
/* 0386B4 004386B4 8F9E8030 */  lw          $fp, %got(B_1001A6E8)($gp)
/* 0386B8 004386B8 24120265 */  addiu       $s2, $zero, 0x265
/* 0386BC 004386BC 8F918044 */  lw          $s1, %got(__ctype)($gp)
/* 0386C0 004386C0 27DEA6E8 */  addiu       $fp, $fp, %lo(B_1001A6E8)
.L004386C4:
/* 0386C4 004386C4 8F998064 */  lw          $t9, %call16(malloc)($gp)
/* 0386C8 004386C8 24040014 */  addiu       $a0, $zero, 0x14
/* 0386CC 004386CC 00008025 */  move        $s0, $zero
/* 0386D0 004386D0 0320F809 */  jalr        $t9
/* 0386D4 004386D4 00000000 */   nop
/* 0386D8 004386D8 8FBC0034 */  lw          $gp, 0x34($sp)
/* 0386DC 004386DC 00409825 */  move        $s3, $v0
/* 0386E0 004386E0 02A02025 */  move        $a0, $s5
/* 0386E4 004386E4 8F99858C */  lw          $t9, %call16(symbol_name)($gp)
/* 0386E8 004386E8 02802825 */  move        $a1, $s4
/* 0386EC 004386EC 0320F809 */  jalr        $t9
/* 0386F0 004386F0 00000000 */   nop
/* 0386F4 004386F4 8FBC0034 */  lw          $gp, 0x34($sp)
/* 0386F8 004386F8 AE620004 */  sw          $v0, 0x4($s3)
/* 0386FC 004386FC 02A02025 */  move        $a0, $s5
/* 038700 00438700 8F99855C */  lw          $t9, %call16(symbol_class)($gp)
/* 038704 00438704 02802825 */  move        $a1, $s4
/* 038708 00438708 0320F809 */  jalr        $t9
/* 03870C 0043870C 00000000 */   nop
/* 038710 00438710 8FBC0034 */  lw          $gp, 0x34($sp)
/* 038714 00438714 AE620008 */  sw          $v0, 0x8($s3)
/* 038718 00438718 AE74000C */  sw          $s4, 0xC($s3)
/* 03871C 0043871C AE750000 */  sw          $s5, 0x0($s3)
/* 038720 00438720 8F99806C */  lw          $t9, %call16(strlen)($gp)
/* 038724 00438724 8E640004 */  lw          $a0, 0x4($s3)
/* 038728 00438728 0320F809 */  jalr        $t9
/* 03872C 0043872C 00000000 */   nop
/* 038730 00438730 8FBC0034 */  lw          $gp, 0x34($sp)
/* 038734 00438734 00401825 */  move        $v1, $v0
/* 038738 00438738 1840000D */  blez        $v0, .L00438770
/* 03873C 0043873C 00402025 */   move       $a0, $v0
/* 038740 00438740 8E620004 */  lw          $v0, 0x4($s3)
.L00438744:
/* 038744 00438744 00720019 */  multu       $v1, $s2
/* 038748 00438748 80490000 */  lb          $t1, 0x0($v0)
/* 03874C 0043874C 26100001 */  addiu       $s0, $s0, 0x1
/* 038750 00438750 0204082A */  slt         $at, $s0, $a0
/* 038754 00438754 01315021 */  addu        $t2, $t1, $s1
/* 038758 00438758 914B0102 */  lbu         $t3, 0x102($t2)
/* 03875C 0043875C 24420001 */  addiu       $v0, $v0, 0x1
/* 038760 00438760 00006012 */  mflo        $t4
/* 038764 00438764 016C1821 */  addu        $v1, $t3, $t4
/* 038768 00438768 1420FFF6 */  bnez        $at, .L00438744
/* 03876C 0043876C 00000000 */   nop
.L00438770:
/* 038770 00438770 00761824 */  and         $v1, $v1, $s6
/* 038774 00438774 0077001A */  div         $zero, $v1, $s7
/* 038778 00438778 16E00002 */  bnez        $s7, .L00438784
/* 03877C 0043877C 00000000 */   nop
/* 038780 00438780 0007000D */  break       7
.L00438784:
/* 038784 00438784 2401FFFF */  addiu       $at, $zero, -0x1
/* 038788 00438788 16E10004 */  bne         $s7, $at, .L0043879C
/* 03878C 0043878C 3C018000 */   lui        $at, (0x80000000 >> 16)
/* 038790 00438790 14610002 */  bne         $v1, $at, .L0043879C
/* 038794 00438794 00000000 */   nop
/* 038798 00438798 0006000D */  break       6
.L0043879C:
/* 03879C 0043879C 00001810 */  mfhi        $v1
/* 0387A0 004387A0 00036880 */  sll         $t5, $v1, 2
/* 0387A4 004387A4 03CD1021 */  addu        $v0, $fp, $t5
/* 0387A8 004387A8 8C4E0000 */  lw          $t6, 0x0($v0)
/* 0387AC 004387AC 26940001 */  addiu       $s4, $s4, 0x1
/* 0387B0 004387B0 AE6E0010 */  sw          $t6, 0x10($s3)
/* 0387B4 004387B4 AC530000 */  sw          $s3, 0x0($v0)
/* 0387B8 004387B8 8EB8009C */  lw          $t8, 0x9C($s5)
/* 0387BC 004387BC 8EAF00D8 */  lw          $t7, 0xD8($s5)
/* 0387C0 004387C0 8F190058 */  lw          $t9, 0x58($t8)
/* 0387C4 004387C4 01F94021 */  addu        $t0, $t7, $t9
/* 0387C8 004387C8 0288082B */  sltu        $at, $s4, $t0
/* 0387CC 004387CC 1420FFBD */  bnez        $at, .L004386C4
/* 0387D0 004387D0 00000000 */   nop
/* 0387D4 004387D4 8FBF003C */  lw          $ra, 0x3C($sp)
.L004387D8:
/* 0387D8 004387D8 8FB00014 */  lw          $s0, 0x14($sp)
/* 0387DC 004387DC 8FB10018 */  lw          $s1, 0x18($sp)
/* 0387E0 004387E0 8FB2001C */  lw          $s2, 0x1C($sp)
/* 0387E4 004387E4 8FB30020 */  lw          $s3, 0x20($sp)
/* 0387E8 004387E8 8FB40024 */  lw          $s4, 0x24($sp)
/* 0387EC 004387EC 8FB50028 */  lw          $s5, 0x28($sp)
/* 0387F0 004387F0 8FB6002C */  lw          $s6, 0x2C($sp)
/* 0387F4 004387F4 8FB70030 */  lw          $s7, 0x30($sp)
/* 0387F8 004387F8 8FBE0038 */  lw          $fp, 0x38($sp)
/* 0387FC 004387FC 03E00008 */  jr          $ra
/* 038800 00438800 27BD0040 */   addiu      $sp, $sp, 0x40