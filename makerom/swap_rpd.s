glabel swap_rpd # 504
/* 02CFC0 0042CFC0 18A0006D */  blez        $a1, .L0042D178
/* 02CFC4 0042CFC4 AFA60008 */   sw         $a2, 0x8($sp)
/* 02CFC8 0042CFC8 00057080 */  sll         $t6, $a1, 2
/* 02CFCC 0042CFCC 01C57021 */  addu        $t6, $t6, $a1
/* 02CFD0 0042CFD0 000E70C0 */  sll         $t6, $t6, 3
/* 02CFD4 0042CFD4 01C43021 */  addu        $a2, $t6, $a0
/* 02CFD8 0042CFD8 00801025 */  move        $v0, $a0
/* 02CFDC 0042CFDC 3C0800FF */  lui         $t0, (0xFF0000 >> 16)
/* 02CFE0 0042CFE0 3C0700FF */  lui         $a3, (0xFF0000 >> 16)
.L0042CFE4:
/* 02CFE4 0042CFE4 8C430000 */  lw          $v1, 0x0($v0)
/* 02CFE8 0042CFE8 8C440004 */  lw          $a0, 0x4($v0)
/* 02CFEC 0042CFEC 24420028 */  addiu       $v0, $v0, 0x28
/* 02CFF0 0042CFF0 00037E02 */  srl         $t7, $v1, 24
/* 02CFF4 0042CFF4 0003C600 */  sll         $t8, $v1, 24
/* 02CFF8 0042CFF8 00034A00 */  sll         $t1, $v1, 8
/* 02CFFC 0042CFFC 01275024 */  and         $t2, $t1, $a3
/* 02D000 0042D000 01F8C825 */  or          $t9, $t7, $t8
/* 02D004 0042D004 032A5825 */  or          $t3, $t9, $t2
/* 02D008 0042D008 00036202 */  srl         $t4, $v1, 8
/* 02D00C 0042D00C 0004C200 */  sll         $t8, $a0, 8
/* 02D010 0042D010 8C43FFE0 */  lw          $v1, -0x20($v0)
/* 02D014 0042D014 318DFF00 */  andi        $t5, $t4, 0xFF00
/* 02D018 0042D018 03084824 */  and         $t1, $t8, $t0
/* 02D01C 0042D01C 00047E00 */  sll         $t7, $a0, 24
/* 02D020 0042D020 016D7025 */  or          $t6, $t3, $t5
/* 02D024 0042D024 01E9C825 */  or          $t9, $t7, $t1
/* 02D028 0042D028 00045203 */  sra         $t2, $a0, 8
/* 02D02C 0042D02C 314CFF00 */  andi        $t4, $t2, 0xFF00
/* 02D030 0042D030 032C5825 */  or          $t3, $t9, $t4
/* 02D034 0042D034 00046E02 */  srl         $t5, $a0, 24
/* 02D038 0042D038 00037A00 */  sll         $t7, $v1, 8
/* 02D03C 0042D03C 8C44FFE4 */  lw          $a0, -0x1C($v0)
/* 02D040 0042D040 AC4EFFD8 */  sw          $t6, -0x28($v0)
/* 02D044 0042D044 01E84824 */  and         $t1, $t7, $t0
/* 02D048 0042D048 0003C600 */  sll         $t8, $v1, 24
/* 02D04C 0042D04C 01AB7025 */  or          $t6, $t5, $t3
/* 02D050 0042D050 03095025 */  or          $t2, $t8, $t1
/* 02D054 0042D054 0003CA03 */  sra         $t9, $v1, 8
/* 02D058 0042D058 332CFF00 */  andi        $t4, $t9, 0xFF00
/* 02D05C 0042D05C 014C6825 */  or          $t5, $t2, $t4
/* 02D060 0042D060 00035E02 */  srl         $t3, $v1, 24
/* 02D064 0042D064 0004C200 */  sll         $t8, $a0, 8
/* 02D068 0042D068 8C43FFE8 */  lw          $v1, -0x18($v0)
/* 02D06C 0042D06C AC4EFFDC */  sw          $t6, -0x24($v0)
/* 02D070 0042D070 03084824 */  and         $t1, $t8, $t0
/* 02D074 0042D074 00047E00 */  sll         $t7, $a0, 24
/* 02D078 0042D078 016D7025 */  or          $t6, $t3, $t5
/* 02D07C 0042D07C 01E9C825 */  or          $t9, $t7, $t1
/* 02D080 0042D080 00045203 */  sra         $t2, $a0, 8
/* 02D084 0042D084 314CFF00 */  andi        $t4, $t2, 0xFF00
/* 02D088 0042D088 032C5825 */  or          $t3, $t9, $t4
/* 02D08C 0042D08C 00046E02 */  srl         $t5, $a0, 24
/* 02D090 0042D090 00037A00 */  sll         $t7, $v1, 8
/* 02D094 0042D094 8C44FFEC */  lw          $a0, -0x14($v0)
/* 02D098 0042D098 AC4EFFE0 */  sw          $t6, -0x20($v0)
/* 02D09C 0042D09C 01E84824 */  and         $t1, $t7, $t0
/* 02D0A0 0042D0A0 0003C600 */  sll         $t8, $v1, 24
/* 02D0A4 0042D0A4 01AB7025 */  or          $t6, $t5, $t3
/* 02D0A8 0042D0A8 03095025 */  or          $t2, $t8, $t1
/* 02D0AC 0042D0AC 0003CA03 */  sra         $t9, $v1, 8
/* 02D0B0 0042D0B0 332CFF00 */  andi        $t4, $t9, 0xFF00
/* 02D0B4 0042D0B4 014C6825 */  or          $t5, $t2, $t4
/* 02D0B8 0042D0B8 00035E02 */  srl         $t3, $v1, 24
/* 02D0BC 0042D0BC AC4EFFE4 */  sw          $t6, -0x1C($v0)
/* 02D0C0 0042D0C0 0004C200 */  sll         $t8, $a0, 8
/* 02D0C4 0042D0C4 8443FFF0 */  lh          $v1, -0x10($v0)
/* 02D0C8 0042D0C8 016D7025 */  or          $t6, $t3, $t5
/* 02D0CC 0042D0CC 03084824 */  and         $t1, $t8, $t0
/* 02D0D0 0042D0D0 00045203 */  sra         $t2, $a0, 8
/* 02D0D4 0042D0D4 00047E00 */  sll         $t7, $a0, 24
/* 02D0D8 0042D0D8 01E9C825 */  or          $t9, $t7, $t1
/* 02D0DC 0042D0DC 314CFF00 */  andi        $t4, $t2, 0xFF00
/* 02D0E0 0042D0E0 032C5825 */  or          $t3, $t9, $t4
/* 02D0E4 0042D0E4 00046E02 */  srl         $t5, $a0, 24
/* 02D0E8 0042D0E8 AC4EFFE8 */  sw          $t6, -0x18($v0)
/* 02D0EC 0042D0EC 00037A00 */  sll         $t7, $v1, 8
/* 02D0F0 0042D0F0 8C44FFF4 */  lw          $a0, -0xC($v0)
/* 02D0F4 0042D0F4 01AB7025 */  or          $t6, $t5, $t3
/* 02D0F8 0042D0F8 01E84824 */  and         $t1, $t7, $t0
/* 02D0FC 0042D0FC 0003C600 */  sll         $t8, $v1, 24
/* 02D100 0042D100 03095025 */  or          $t2, $t8, $t1
/* 02D104 0042D104 0003CA03 */  sra         $t9, $v1, 8
/* 02D108 0042D108 332CFF00 */  andi        $t4, $t9, 0xFF00
/* 02D10C 0042D10C 00035E02 */  srl         $t3, $v1, 24
/* 02D110 0042D110 AC4EFFEC */  sw          $t6, -0x14($v0)
/* 02D114 0042D114 014C6825 */  or          $t5, $t2, $t4
/* 02D118 0042D118 0004C200 */  sll         $t8, $a0, 8
/* 02D11C 0042D11C 8C43FFFC */  lw          $v1, -0x4($v0)
/* 02D120 0042D120 016D7025 */  or          $t6, $t3, $t5
/* 02D124 0042D124 03084824 */  and         $t1, $t8, $t0
/* 02D128 0042D128 00047E00 */  sll         $t7, $a0, 24
/* 02D12C 0042D12C 01E9C825 */  or          $t9, $t7, $t1
/* 02D130 0042D130 00045203 */  sra         $t2, $a0, 8
/* 02D134 0042D134 314CFF00 */  andi        $t4, $t2, 0xFF00
/* 02D138 0042D138 A44EFFF0 */  sh          $t6, -0x10($v0)
/* 02D13C 0042D13C 032C5825 */  or          $t3, $t9, $t4
/* 02D140 0042D140 00046E02 */  srl         $t5, $a0, 24
/* 02D144 0042D144 01AB7025 */  or          $t6, $t5, $t3
/* 02D148 0042D148 00037A00 */  sll         $t7, $v1, 8
/* 02D14C 0042D14C 01E84824 */  and         $t1, $t7, $t0
/* 02D150 0042D150 0003CA03 */  sra         $t9, $v1, 8
/* 02D154 0042D154 0003C600 */  sll         $t8, $v1, 24
/* 02D158 0042D158 03095025 */  or          $t2, $t8, $t1
/* 02D15C 0042D15C 332CFF00 */  andi        $t4, $t9, 0xFF00
/* 02D160 0042D160 AC4EFFF4 */  sw          $t6, -0xC($v0)
/* 02D164 0042D164 014C6825 */  or          $t5, $t2, $t4
/* 02D168 0042D168 00035E02 */  srl         $t3, $v1, 24
/* 02D16C 0042D16C 016D7025 */  or          $t6, $t3, $t5
/* 02D170 0042D170 1446FF9C */  bne         $v0, $a2, .L0042CFE4
/* 02D174 0042D174 AC4EFFFC */   sw         $t6, -0x4($v0)
.L0042D178:
/* 02D178 0042D178 03E00008 */  jr          $ra
/* 02D17C 0042D17C 00000000 */   nop
