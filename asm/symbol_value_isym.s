glabel symbol_value_isym # 597
# _gp_disp: 0xFBE780C
.set noreorder; .cpload $t9; # .set reorder
/* 036540 00436540 8F998564 */  lw          $t9, %call16(symbol_value)($gp)
/* 036544 00436544 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 036548 00436548 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03654C 0043654C AFBC0018 */  sw          $gp, 0x18($sp)
/* 036550 00436550 AFA40028 */  sw          $a0, 0x28($sp)
/* 036554 00436554 0320F809 */  jalr        $t9
/* 036558 00436558 AFA5002C */   sw         $a1, 0x2C($sp)
/* 03655C 0043655C 8FA40028 */  lw          $a0, 0x28($sp)
/* 036560 00436560 8FA5002C */  lw          $a1, 0x2C($sp)
/* 036564 00436564 8FBC0018 */  lw          $gp, 0x18($sp)
/* 036568 00436568 8C8300D8 */  lw          $v1, 0xD8($a0)
/* 03656C 0043656C 00403825 */  move        $a3, $v0
/* 036570 00436570 00057900 */  sll         $t7, $a1, 4
/* 036574 00436574 00A3082B */  sltu        $at, $a1, $v1
/* 036578 00436578 14200009 */  bnez        $at, .L004365A0
/* 03657C 0043657C 0003C900 */   sll        $t9, $v1, 4
/* 036580 00436580 8C8E00AC */  lw          $t6, 0xAC($a0)
/* 036584 00436584 00194023 */  negu        $t0, $t9
/* 036588 00436588 8C8B00D0 */  lw          $t3, 0xD0($a0)
/* 03658C 0043658C 01CFC021 */  addu        $t8, $t6, $t7
/* 036590 00436590 03084821 */  addu        $t1, $t8, $t0
/* 036594 00436594 952A0002 */  lhu         $t2, 0x2($t1)
/* 036598 00436598 1000000A */  b           .L004365C4
/* 03659C 0043659C 014B3021 */   addu       $a2, $t2, $t3
.L004365A0:
/* 0365A0 004365A0 8F9984EC */  lw          $t9, %call16(symbol_to_file)($gp)
/* 0365A4 004365A4 AFA40028 */  sw          $a0, 0x28($sp)
/* 0365A8 004365A8 AFA70020 */  sw          $a3, 0x20($sp)
/* 0365AC 004365AC 0320F809 */  jalr        $t9
/* 0365B0 004365B0 00000000 */   nop
/* 0365B4 004365B4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0365B8 004365B8 8FA40028 */  lw          $a0, 0x28($sp)
/* 0365BC 004365BC 8FA70020 */  lw          $a3, 0x20($sp)
/* 0365C0 004365C0 00403025 */  move        $a2, $v0
.L004365C4:
/* 0365C4 004365C4 8F9984F8 */  lw          $t9, %call16(file_symbol)($gp)
/* 0365C8 004365C8 00C02825 */  move        $a1, $a2
/* 0365CC 004365CC AFA70020 */  sw          $a3, 0x20($sp)
/* 0365D0 004365D0 0320F809 */  jalr        $t9
/* 0365D4 004365D4 00000000 */   nop
/* 0365D8 004365D8 8FA70020 */  lw          $a3, 0x20($sp)
/* 0365DC 004365DC 8FBF001C */  lw          $ra, 0x1C($sp)
/* 0365E0 004365E0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0365E4 004365E4 00E23821 */  addu        $a3, $a3, $v0
/* 0365E8 004365E8 00E01025 */  move        $v0, $a3
/* 0365EC 004365EC 03E00008 */  jr          $ra
/* 0365F0 004365F0 27BD0028 */   addiu      $sp, $sp, 0x28
