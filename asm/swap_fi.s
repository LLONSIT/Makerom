glabel swap_fi # 499
/* 02C458 0042C458 AFA60008 */  sw          $a2, 0x8($sp)
/* 02C45C 0042C45C 18A00049 */  blez        $a1, .L0042C584
/* 02C460 0042C460 00001025 */   move       $v0, $zero
/* 02C464 0042C464 30A60003 */  andi        $a2, $a1, 0x3
/* 02C468 0042C468 10C00013 */  beqz        $a2, .L0042C4B8
/* 02C46C 0042C46C 00C03825 */   move       $a3, $a2
/* 02C470 0042C470 00007080 */  sll         $t6, $zero, 2
/* 02C474 0042C474 008E1821 */  addu        $v1, $a0, $t6
/* 02C478 0042C478 3C0900FF */  lui         $t1, (0xFF0000 >> 16)
.L0042C47C:
/* 02C47C 0042C47C 8C660000 */  lw          $a2, 0x0($v1)
/* 02C480 0042C480 24420001 */  addiu       $v0, $v0, 0x1
/* 02C484 0042C484 24630004 */  addiu       $v1, $v1, 0x4
/* 02C488 0042C488 0006C200 */  sll         $t8, $a2, 8
/* 02C48C 0042C48C 0309C824 */  and         $t9, $t8, $t1
/* 02C490 0042C490 00067E00 */  sll         $t7, $a2, 24
/* 02C494 0042C494 00065A03 */  sra         $t3, $a2, 8
/* 02C498 0042C498 316CFF00 */  andi        $t4, $t3, 0xFF00
/* 02C49C 0042C49C 01F95025 */  or          $t2, $t7, $t9
/* 02C4A0 0042C4A0 014C6825 */  or          $t5, $t2, $t4
/* 02C4A4 0042C4A4 00067602 */  srl         $t6, $a2, 24
/* 02C4A8 0042C4A8 01CDC025 */  or          $t8, $t6, $t5
/* 02C4AC 0042C4AC 14E2FFF3 */  bne         $a3, $v0, .L0042C47C
/* 02C4B0 0042C4B0 AC78FFFC */   sw         $t8, -0x4($v1)
/* 02C4B4 0042C4B4 10450033 */  beq         $v0, $a1, .L0042C584
.L0042C4B8:
/* 02C4B8 0042C4B8 00027880 */   sll        $t7, $v0, 2
/* 02C4BC 0042C4BC 0005C880 */  sll         $t9, $a1, 2
/* 02C4C0 0042C4C0 03244021 */  addu        $t0, $t9, $a0
/* 02C4C4 0042C4C4 008F1821 */  addu        $v1, $a0, $t7
/* 02C4C8 0042C4C8 3C0900FF */  lui         $t1, (0xFF0000 >> 16)
.L0042C4CC:
/* 02C4CC 0042C4CC 8C660000 */  lw          $a2, 0x0($v1)
/* 02C4D0 0042C4D0 8C620004 */  lw          $v0, 0x4($v1)
/* 02C4D4 0042C4D4 8C640008 */  lw          $a0, 0x8($v1)
/* 02C4D8 0042C4D8 00065200 */  sll         $t2, $a2, 8
/* 02C4DC 0042C4DC 01496024 */  and         $t4, $t2, $t1
/* 02C4E0 0042C4E0 00065E00 */  sll         $t3, $a2, 24
/* 02C4E4 0042C4E4 00066A03 */  sra         $t5, $a2, 8
/* 02C4E8 0042C4E8 31B8FF00 */  andi        $t8, $t5, 0xFF00
/* 02C4EC 0042C4EC 016C7025 */  or          $t6, $t3, $t4
/* 02C4F0 0042C4F0 01D87825 */  or          $t7, $t6, $t8
/* 02C4F4 0042C4F4 0006CE02 */  srl         $t9, $a2, 24
/* 02C4F8 0042C4F8 032F5025 */  or          $t2, $t9, $t7
/* 02C4FC 0042C4FC 00026200 */  sll         $t4, $v0, 8
/* 02C500 0042C500 01896824 */  and         $t5, $t4, $t1
/* 02C504 0042C504 0002C203 */  sra         $t8, $v0, 8
/* 02C508 0042C508 00025E00 */  sll         $t3, $v0, 24
/* 02C50C 0042C50C 016D7025 */  or          $t6, $t3, $t5
/* 02C510 0042C510 3319FF00 */  andi        $t9, $t8, 0xFF00
/* 02C514 0042C514 AC6A0000 */  sw          $t2, 0x0($v1)
/* 02C518 0042C518 01D97825 */  or          $t7, $t6, $t9
/* 02C51C 0042C51C 00025602 */  srl         $t2, $v0, 24
/* 02C520 0042C520 014F6025 */  or          $t4, $t2, $t7
/* 02C524 0042C524 00046A00 */  sll         $t5, $a0, 8
/* 02C528 0042C528 8C67000C */  lw          $a3, 0xC($v1)
/* 02C52C 0042C52C 01A9C024 */  and         $t8, $t5, $t1
/* 02C530 0042C530 0004CA03 */  sra         $t9, $a0, 8
/* 02C534 0042C534 00045E00 */  sll         $t3, $a0, 24
/* 02C538 0042C538 01787025 */  or          $t6, $t3, $t8
/* 02C53C 0042C53C 332AFF00 */  andi        $t2, $t9, 0xFF00
/* 02C540 0042C540 AC6C0004 */  sw          $t4, 0x4($v1)
/* 02C544 0042C544 01CA7825 */  or          $t7, $t6, $t2
/* 02C548 0042C548 00046602 */  srl         $t4, $a0, 24
/* 02C54C 0042C54C 018F6825 */  or          $t5, $t4, $t7
/* 02C550 0042C550 0007C200 */  sll         $t8, $a3, 8
/* 02C554 0042C554 0309C824 */  and         $t9, $t8, $t1
/* 02C558 0042C558 00075203 */  sra         $t2, $a3, 8
/* 02C55C 0042C55C 00075E00 */  sll         $t3, $a3, 24
/* 02C560 0042C560 01797025 */  or          $t6, $t3, $t9
/* 02C564 0042C564 314CFF00 */  andi        $t4, $t2, 0xFF00
/* 02C568 0042C568 AC6D0008 */  sw          $t5, 0x8($v1)
/* 02C56C 0042C56C 01CC7825 */  or          $t7, $t6, $t4
/* 02C570 0042C570 00076E02 */  srl         $t5, $a3, 24
/* 02C574 0042C574 01AFC025 */  or          $t8, $t5, $t7
/* 02C578 0042C578 24630010 */  addiu       $v1, $v1, 0x10
/* 02C57C 0042C57C 1468FFD3 */  bne         $v1, $t0, .L0042C4CC
/* 02C580 0042C580 AC78FFFC */   sw         $t8, -0x4($v1)
.L0042C584:
/* 02C584 0042C584 03E00008 */  jr          $ra
/* 02C588 0042C588 00000000 */   nop
