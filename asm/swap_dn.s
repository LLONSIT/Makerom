glabel swap_dn # 503
/* 02CE74 0042CE74 AFA60008 */  sw          $a2, 0x8($sp)
/* 02CE78 0042CE78 18A0004F */  blez        $a1, .L0042CFB8
/* 02CE7C 0042CE7C 00001025 */   move       $v0, $zero
/* 02CE80 0042CE80 30A30001 */  andi        $v1, $a1, 0x1
/* 02CE84 0042CE84 10600019 */  beqz        $v1, .L0042CEEC
/* 02CE88 0042CE88 3C0900FF */   lui        $t1, (0xFF0000 >> 16)
/* 02CE8C 0042CE8C 8C860000 */  lw          $a2, 0x0($a0)
/* 02CE90 0042CE90 8C870004 */  lw          $a3, 0x4($a0)
/* 02CE94 0042CE94 24020001 */  addiu       $v0, $zero, 0x1
/* 02CE98 0042CE98 00067602 */  srl         $t6, $a2, 24
/* 02CE9C 0042CE9C 00067E00 */  sll         $t7, $a2, 24
/* 02CEA0 0042CEA0 0006CA00 */  sll         $t9, $a2, 8
/* 02CEA4 0042CEA4 03295024 */  and         $t2, $t9, $t1
/* 02CEA8 0042CEA8 01CFC025 */  or          $t8, $t6, $t7
/* 02CEAC 0042CEAC 00066202 */  srl         $t4, $a2, 8
/* 02CEB0 0042CEB0 318DFF00 */  andi        $t5, $t4, 0xFF00
/* 02CEB4 0042CEB4 030A5825 */  or          $t3, $t8, $t2
/* 02CEB8 0042CEB8 016D7025 */  or          $t6, $t3, $t5
/* 02CEBC 0042CEBC 00075200 */  sll         $t2, $a3, 8
/* 02CEC0 0042CEC0 00077E02 */  srl         $t7, $a3, 24
/* 02CEC4 0042CEC4 0007CE00 */  sll         $t9, $a3, 24
/* 02CEC8 0042CEC8 01F9C025 */  or          $t8, $t7, $t9
/* 02CECC 0042CECC 01496024 */  and         $t4, $t2, $t1
/* 02CED0 0042CED0 AC8E0000 */  sw          $t6, 0x0($a0)
/* 02CED4 0042CED4 00076A02 */  srl         $t5, $a3, 8
/* 02CED8 0042CED8 31AEFF00 */  andi        $t6, $t5, 0xFF00
/* 02CEDC 0042CEDC 030C5825 */  or          $t3, $t8, $t4
/* 02CEE0 0042CEE0 016E7825 */  or          $t7, $t3, $t6
/* 02CEE4 0042CEE4 10450034 */  beq         $v0, $a1, .L0042CFB8
/* 02CEE8 0042CEE8 AC8F0004 */   sw         $t7, 0x4($a0)
.L0042CEEC:
/* 02CEEC 0042CEEC 0002C8C0 */  sll         $t9, $v0, 3
/* 02CEF0 0042CEF0 000550C0 */  sll         $t2, $a1, 3
/* 02CEF4 0042CEF4 01444021 */  addu        $t0, $t2, $a0
/* 02CEF8 0042CEF8 00991821 */  addu        $v1, $a0, $t9
/* 02CEFC 0042CEFC 3C0900FF */  lui         $t1, (0xFF0000 >> 16)
.L0042CF00:
/* 02CF00 0042CF00 8C620000 */  lw          $v0, 0x0($v1)
/* 02CF04 0042CF04 8C640004 */  lw          $a0, 0x4($v1)
/* 02CF08 0042CF08 8C660008 */  lw          $a2, 0x8($v1)
/* 02CF0C 0042CF0C 0002C602 */  srl         $t8, $v0, 24
/* 02CF10 0042CF10 00026600 */  sll         $t4, $v0, 24
/* 02CF14 0042CF14 00025A00 */  sll         $t3, $v0, 8
/* 02CF18 0042CF18 01697024 */  and         $t6, $t3, $t1
/* 02CF1C 0042CF1C 030C6825 */  or          $t5, $t8, $t4
/* 02CF20 0042CF20 0002CA02 */  srl         $t9, $v0, 8
/* 02CF24 0042CF24 332AFF00 */  andi        $t2, $t9, 0xFF00
/* 02CF28 0042CF28 01AE7825 */  or          $t7, $t5, $t6
/* 02CF2C 0042CF2C 01EAC025 */  or          $t8, $t7, $t2
/* 02CF30 0042CF30 00047200 */  sll         $t6, $a0, 8
/* 02CF34 0042CF34 00046602 */  srl         $t4, $a0, 24
/* 02CF38 0042CF38 00045E00 */  sll         $t3, $a0, 24
/* 02CF3C 0042CF3C AC780000 */  sw          $t8, 0x0($v1)
/* 02CF40 0042CF40 018B6825 */  or          $t5, $t4, $t3
/* 02CF44 0042CF44 01C9C824 */  and         $t9, $t6, $t1
/* 02CF48 0042CF48 00045202 */  srl         $t2, $a0, 8
/* 02CF4C 0042CF4C 3158FF00 */  andi        $t8, $t2, 0xFF00
/* 02CF50 0042CF50 01B97825 */  or          $t7, $t5, $t9
/* 02CF54 0042CF54 01F86025 */  or          $t4, $t7, $t8
/* 02CF58 0042CF58 8C67000C */  lw          $a3, 0xC($v1)
/* 02CF5C 0042CF5C 0006CA00 */  sll         $t9, $a2, 8
/* 02CF60 0042CF60 00067600 */  sll         $t6, $a2, 24
/* 02CF64 0042CF64 00065E02 */  srl         $t3, $a2, 24
/* 02CF68 0042CF68 016E6825 */  or          $t5, $t3, $t6
/* 02CF6C 0042CF6C 03295024 */  and         $t2, $t9, $t1
/* 02CF70 0042CF70 AC6C0004 */  sw          $t4, 0x4($v1)
/* 02CF74 0042CF74 0006C202 */  srl         $t8, $a2, 8
/* 02CF78 0042CF78 330CFF00 */  andi        $t4, $t8, 0xFF00
/* 02CF7C 0042CF7C 01AA7825 */  or          $t7, $t5, $t2
/* 02CF80 0042CF80 01EC5825 */  or          $t3, $t7, $t4
/* 02CF84 0042CF84 00075200 */  sll         $t2, $a3, 8
/* 02CF88 0042CF88 0007CE00 */  sll         $t9, $a3, 24
/* 02CF8C 0042CF8C 00077602 */  srl         $t6, $a3, 24
/* 02CF90 0042CF90 01D96825 */  or          $t5, $t6, $t9
/* 02CF94 0042CF94 0149C024 */  and         $t8, $t2, $t1
/* 02CF98 0042CF98 AC6B0008 */  sw          $t3, 0x8($v1)
/* 02CF9C 0042CF9C 00076202 */  srl         $t4, $a3, 8
/* 02CFA0 0042CFA0 318BFF00 */  andi        $t3, $t4, 0xFF00
/* 02CFA4 0042CFA4 01B87825 */  or          $t7, $t5, $t8
/* 02CFA8 0042CFA8 01EB7025 */  or          $t6, $t7, $t3
/* 02CFAC 0042CFAC 24630010 */  addiu       $v1, $v1, 0x10
/* 02CFB0 0042CFB0 1468FFD3 */  bne         $v1, $t0, .L0042CF00
/* 02CFB4 0042CFB4 AC6EFFFC */   sw         $t6, -0x4($v1)
.L0042CFB8:
/* 02CFB8 0042CFB8 03E00008 */  jr          $ra
/* 02CFBC 0042CFBC 00000000 */   nop
