.late_rodata
glabel D_80337BB0
    .word 0x3FFFFFD6, 0x0E94EE39
glabel D_80337BB8
    .word 0x3FFFFEB0, 0 
glabel D_80337BC0
    .word 0x400FFFDB, 0x4CC25072
glabel D_80337BC8
    .word 0x407FFEDA, 0

.text
glabel synthesis_process_notes
/* 0CF480 80314480 27BDFE88 */  addiu $sp, $sp, -0x178
/* 0CF484 80314484 3C0E8022 */  lui   $t6, %hi(gMaxSimultaneousNotes) # $t6, 0x8022
/* 0CF488 80314488 8DCE6D70 */  lw    $t6, %lo(gMaxSimultaneousNotes)($t6)
/* 0CF48C 8031448C AFB40030 */  sw    $s4, 0x30($sp)
/* 0CF490 80314490 00C0A025 */  move  $s4, $a2
/* 0CF494 80314494 AFBF0044 */  sw    $ra, 0x44($sp)
/* 0CF498 80314498 AFBE0040 */  sw    $fp, 0x40($sp)
/* 0CF49C 8031449C AFB7003C */  sw    $s7, 0x3c($sp)
/* 0CF4A0 803144A0 AFB60038 */  sw    $s6, 0x38($sp)
/* 0CF4A4 803144A4 AFB50034 */  sw    $s5, 0x34($sp)
/* 0CF4A8 803144A8 AFB3002C */  sw    $s3, 0x2c($sp)
/* 0CF4AC 803144AC AFB20028 */  sw    $s2, 0x28($sp)
/* 0CF4B0 803144B0 AFB10024 */  sw    $s1, 0x24($sp)
/* 0CF4B4 803144B4 AFB00020 */  sw    $s0, 0x20($sp)
/* 0CF4B8 803144B8 AFA40178 */  sw    $a0, 0x178($sp)
/* 0CF4BC 803144BC AFA5017C */  sw    $a1, 0x17c($sp)
/* 0CF4C0 803144C0 AFA00174 */  sw    $zero, 0x174($sp)
/* 0CF4C4 803144C4 19C00267 */  blez  $t6, .L80314E64
/* 0CF4C8 803144C8 AFA0015C */   sw    $zero, 0x15c($sp)
/* 0CF4CC 803144CC AFA0006C */  sw    $zero, 0x6c($sp)
/* 0CF4D0 803144D0 3C1F8000 */  lui   $ra, 0x8000
.L803144D4:
/* 0CF4D4 803144D4 3C188022 */  lui   $t8, %hi(gNotes) # $t8, 0x8022
/* 0CF4D8 803144D8 8F182A10 */  lw    $t8, %lo(gNotes)($t8)
/* 0CF4DC 803144DC 8FAF006C */  lw    $t7, 0x6c($sp)
/* 0CF4E0 803144E0 3C198022 */  lui   $t9, %hi(gBankLoadStatus)
/* 0CF4E4 803144E4 3C010100 */  lui   $at, 0x100
/* 0CF4E8 803144E8 01F8B821 */  addu  $s7, $t7, $t8
/* 0CF4EC 803144EC 92E20007 */  lbu   $v0, 7($s7)
/* 0CF4F0 803144F0 8FB80174 */  lw    $t8, 0x174($sp)
/* 0CF4F4 803144F4 0322C821 */  addu  $t9, $t9, $v0
/* 0CF4F8 803144F8 933918D0 */  lbu   $t9, %lo(gBankLoadStatus)($t9)
/* 0CF4FC 803144FC 2B2E0002 */  slti  $t6, $t9, 2
/* 0CF500 80314500 11C00006 */  beqz  $t6, .L8031451C
/* 0CF504 80314504 00027A00 */   sll   $t7, $v0, 8
/* 0CF508 80314508 01F8C821 */  addu  $t9, $t7, $t8
/* 0CF50C 8031450C 03217021 */  addu  $t6, $t9, $at
/* 0CF510 80314510 3C018033 */  lui    $at, %hi(gAudioErrorFlags)
/* 0CF514 80314514 10000249 */  b     .L80314E3C
/* 0CF518 80314518 AC2E1D40 */   sw    $t6, %lo(gAudioErrorFlags)($at)
.L8031451C:
/* 0CF51C 8031451C 8EEF0000 */  lw    $t7, ($s7)
/* 0CF520 80314520 000FC7C2 */  srl   $t8, $t7, 0x1f
/* 0CF524 80314524 53000246 */  beql  $t8, $zero, .L80314E40
/* 0CF528 80314528 8FAE0174 */   lw    $t6, 0x174($sp)
/* 0CF52C 8031452C 8FB9017C */  lw    $t9, 0x17c($sp)
/* 0CF530 80314530 AFA00148 */  sw    $zero, 0x148($sp)
/* 0CF534 80314534 24010001 */  li    $at, 1
/* 0CF538 80314538 00197040 */  sll   $t6, $t9, 1
/* 0CF53C 8031453C AFAE0048 */  sw    $t6, 0x48($sp)
/* 0CF540 80314540 8EEF0000 */  lw    $t7, ($s7)
/* 0CF544 80314544 44802000 */  mtc1  $zero, $f4
/* 0CF548 80314548 240E0001 */  li    $t6, 1
/* 0CF54C 8031454C 000FC040 */  sll   $t8, $t7, 1
/* 0CF550 80314550 0018CFC2 */  srl   $t9, $t8, 0x1f
/* 0CF554 80314554 17210004 */  bne   $t9, $at, .L80314568
/* 0CF558 80314558 02802025 */   move  $a0, $s4
/* 0CF55C 8031455C AFAE0148 */  sw    $t6, 0x148($sp)
/* 0CF560 80314560 AEE00014 */  sw    $zero, 0x14($s7)
/* 0CF564 80314564 A6E00020 */  sh    $zero, 0x20($s7)
.L80314568:
/* 0CF568 80314568 C6E20038 */  lwc1  $f2, 0x38($s7)
/* 0CF56C 8031456C 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 0CF570 80314570 44812800 */  mtc1  $at, $f5
/* 0CF574 80314574 46001021 */  cvt.d.s $f0, $f2
/* 0CF578 80314578 3C018033 */  lui   $at, %hi(D_80337BC0)
/* 0CF57C 8031457C 4624003C */  c.lt.d $f0, $f4
/* 0CF580 80314580 02E02825 */  move  $a1, $s7
/* 0CF584 80314584 4500000E */  bc1f  .L803145C0
/* 0CF588 80314588 00000000 */   nop   
/* 0CF58C 8031458C 3C018033 */  lui   $at, %hi(D_80337BB0)
/* 0CF590 80314590 D4267BB0 */  ldc1  $f6, %lo(D_80337BB0)($at)
/* 0CF594 80314594 240F0001 */  li    $t7, 1
/* 0CF598 80314598 AFAF00E8 */  sw    $t7, 0xe8($sp)
/* 0CF59C 8031459C 4620303C */  c.lt.d $f6, $f0
/* 0CF5A0 803145A0 3C018033 */  lui    $at, %hi(D_80337BB8)
/* 0CF5A4 803145A4 45000004 */  bc1f  .L803145B8
/* 0CF5A8 803145A8 00000000 */   nop   
/* 0CF5AC 803145AC C4287BB8 */  lwc1  $f8, %lo(D_80337BB8)($at)
/* 0CF5B0 803145B0 E6E80038 */  swc1  $f8, 0x38($s7)
/* 0CF5B4 803145B4 C6E20038 */  lwc1  $f2, 0x38($s7)
.L803145B8:
/* 0CF5B8 803145B8 10000012 */  b     .L80314604
/* 0CF5BC 803145BC 46001306 */   mov.s $f12, $f2
.L803145C0:
/* 0CF5C0 803145C0 D42A7BC0 */  ldc1  $f10, %lo(D_80337BC0)($at)
/* 0CF5C4 803145C4 24180002 */  li    $t8, 2
/* 0CF5C8 803145C8 44802000 */  mtc1  $zero, $f4
/* 0CF5CC 803145CC 4620503E */  c.le.d $f10, $f0
/* 0CF5D0 803145D0 AFB800E8 */  sw    $t8, 0xe8($sp)
/* 0CF5D4 803145D4 3C018033 */  lui   $at, %hi(D_80337BC8)
/* 0CF5D8 803145D8 45020006 */  bc1fl .L803145F4
/* 0CF5DC 803145DC 3C013FE0 */   lui   $at, 0x3fe0
/* 0CF5E0 803145E0 C4307BC8 */  lwc1  $f16, %lo(D_80337BC8)($at)
/* 0CF5E4 803145E4 E6F00038 */  swc1  $f16, 0x38($s7)
/* 0CF5E8 803145E8 C6F20038 */  lwc1  $f18, 0x38($s7)
/* 0CF5EC 803145EC 46009021 */  cvt.d.s $f0, $f18
/* 0CF5F0 803145F0 3C013FE0 */  li    $at, 0x3FE00000 # 1.750000
.L803145F4:
/* 0CF5F4 803145F4 44812800 */  mtc1  $at, $f5
/* 0CF5F8 803145F8 00000000 */  nop   
/* 0CF5FC 803145FC 46240182 */  mul.d $f6, $f0, $f4
/* 0CF600 80314600 46203320 */  cvt.s.d $f12, $f6
.L80314604:
/* 0CF604 80314604 3C014700 */  li    $at, 0x47000000 # 32768.000000
/* 0CF608 80314608 44814000 */  mtc1  $at, $f8
/* 0CF60C 8031460C 8FB8017C */  lw    $t8, 0x17c($sp)
/* 0CF610 80314610 46086282 */  mul.s $f10, $f12, $f8
/* 0CF614 80314614 4600540D */  trunc.w.s $f16, $f10
/* 0CF618 80314618 440E8000 */  mfc1  $t6, $f16
/* 0CF61C 8031461C 00000000 */  nop   
/* 0CF620 80314620 31CFFFFF */  andi  $t7, $t6, 0xffff
/* 0CF624 80314624 01F80019 */  multu $t7, $t8
/* 0CF628 80314628 AFAF005C */  sw    $t7, 0x5c($sp)
/* 0CF62C 8031462C 96EF0020 */  lhu   $t7, 0x20($s7)
/* 0CF630 80314630 8EE20024 */  lw    $v0, 0x24($s7)
/* 0CF634 80314634 0000C812 */  mflo  $t9
/* 0CF638 80314638 00197040 */  sll   $t6, $t9, 1
/* 0CF63C 8031463C 01EE1821 */  addu  $v1, $t7, $t6
/* 0CF640 80314640 1440000E */  bnez  $v0, .L8031467C
/* 0CF644 80314644 A6E30020 */   sh    $v1, 0x20($s7)
/* 0CF648 80314648 00038402 */  srl   $s0, $v1, 0x10
/* 0CF64C 8031464C 02003025 */  move  $a2, $s0
/* 0CF650 80314650 0C0C53C2 */  jal   load_wave_samples
/* 0CF654 80314654 AFA00148 */   sw    $zero, 0x148($sp)
/* 0CF658 80314658 8EE90014 */  lw    $t1, 0x14($s7)
/* 0CF65C 8031465C 0040A025 */  move  $s4, $v0
/* 0CF660 80314660 0009C840 */  sll   $t9, $t1, 1
/* 0CF664 80314664 272F0180 */  addiu $t7, $t9, 0x180
/* 0CF668 80314668 A7AF00D6 */  sh    $t7, 0xd6($sp)
/* 0CF66C 8031466C 01307021 */  addu  $t6, $t1, $s0
/* 0CF670 80314670 AEEE0014 */  sw    $t6, 0x14($s7)
/* 0CF674 80314674 100001B9 */  b     .L80314D5C
/* 0CF678 80314678 8EE50000 */   lw    $a1, ($s7)
.L8031467C:
/* 0CF67C 8031467C 8C460000 */  lw    $a2, ($v0)
/* 0CF680 80314680 00031402 */  srl   $v0, $v1, 0x10
/* 0CF684 80314684 8CD80008 */  lw    $t8, 8($a2)
/* 0CF688 80314688 AFB80160 */  sw    $t8, 0x160($sp)
/* 0CF68C 8031468C 8F0F0004 */  lw    $t7, 4($t8)
/* 0CF690 80314690 8FB800E8 */  lw    $t8, 0xe8($sp)
/* 0CF694 80314694 AFAF0110 */  sw    $t7, 0x110($sp)
/* 0CF698 80314698 8CCE0004 */  lw    $t6, 4($a2)
/* 0CF69C 8031469C AFA000D8 */  sw    $zero, 0xd8($sp)
/* 0CF6A0 803146A0 AFA000E4 */  sw    $zero, 0xe4($sp)
/* 0CF6A4 803146A4 1B0001AB */  blez  $t8, .L80314D54
/* 0CF6A8 803146A8 AFAE0120 */   sw    $t6, 0x120($sp)
/* 0CF6AC 803146AC 3B190001 */  xori  $t9, $t8, 1
/* 0CF6B0 803146B0 2F390001 */  sltiu $t9, $t9, 1
/* 0CF6B4 803146B4 AFB90054 */  sw    $t9, 0x54($sp)
/* 0CF6B8 803146B8 AFA20058 */  sw    $v0, 0x58($sp)
/* 0CF6BC 803146BC AFA60164 */  sw    $a2, 0x164($sp)
/* 0CF6C0 803146C0 8FA60164 */  lw    $a2, 0x164($sp)
.L803146C4:
/* 0CF6C4 803146C4 8FAF0054 */  lw    $t7, 0x54($sp)
/* 0CF6C8 803146C8 8FA20058 */  lw    $v0, 0x58($sp)
/* 0CF6CC 803146CC 8CC4000C */  lw    $a0, 0xc($a2)
/* 0CF6D0 803146D0 0000F025 */  move  $fp, $zero
/* 0CF6D4 803146D4 0000A825 */  move  $s5, $zero
/* 0CF6D8 803146D8 11E00003 */  beqz  $t7, .L803146E8
/* 0CF6DC 803146DC 24850008 */   addiu $a1, $a0, 8
/* 0CF6E0 803146E0 1000000B */  b     .L80314710
/* 0CF6E4 803146E4 00406825 */   move  $t5, $v0
.L803146E8:
/* 0CF6E8 803146E8 304E0001 */  andi  $t6, $v0, 1
/* 0CF6EC 803146EC 11C00007 */  beqz  $t6, .L8031470C
/* 0CF6F0 803146F0 AFA60164 */   sw    $a2, 0x164($sp)
/* 0CF6F4 803146F4 8FB900E4 */  lw    $t9, 0xe4($sp)
/* 0CF6F8 803146F8 2401FFFE */  li    $at, -2
/* 0CF6FC 803146FC 0041C024 */  and   $t8, $v0, $at
/* 0CF700 80314700 00197840 */  sll   $t7, $t9, 1
/* 0CF704 80314704 10000002 */  b     .L80314710
/* 0CF708 80314708 030F6821 */   addu  $t5, $t8, $t7
.L8031470C:
/* 0CF70C 8031470C 00406825 */  move  $t5, $v0
.L80314710:
/* 0CF710 80314710 8FAE015C */  lw    $t6, 0x15c($sp)
/* 0CF714 80314714 AFA20058 */  sw    $v0, 0x58($sp)
/* 0CF718 80314718 11C50012 */  beq   $t6, $a1, .L80314764
/* 0CF71C 8031471C 00000000 */   nop   
/* 0CF720 80314720 AFA5015C */  sw    $a1, 0x15c($sp)
/* 0CF724 80314724 8C980000 */  lw    $t8, ($a0)
/* 0CF728 80314728 8C990004 */  lw    $t9, 4($a0)
/* 0CF72C 8031472C 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 0CF730 80314730 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 0CF734 80314734 03380019 */  multu $t9, $t8
/* 0CF738 80314738 02801025 */  move  $v0, $s4
/* 0CF73C 8031473C 26940008 */  addiu $s4, $s4, 8
/* 0CF740 80314740 00001812 */  mflo  $v1
/* 0CF744 80314744 00037900 */  sll   $t7, $v1, 4
/* 0CF748 80314748 01E17024 */  and   $t6, $t7, $at
/* 0CF74C 8031474C 3C010B00 */  lui   $at, 0xb00
/* 0CF750 80314750 01C1C825 */  or    $t9, $t6, $at
/* 0CF754 80314754 AC590000 */  sw    $t9, ($v0)
/* 0CF758 80314758 8FB8015C */  lw    $t8, 0x15c($sp)
/* 0CF75C 8031475C 031F7821 */  addu  $t7, $t8, $ra
/* 0CF760 80314760 AC4F0004 */  sw    $t7, 4($v0)
.L80314764:
/* 0CF764 80314764 11A00101 */  beqz  $t5, .L80314B6C
/* 0CF768 80314768 8FA20058 */   lw    $v0, 0x58($sp)
/* 0CF76C 8031476C AFA20058 */  sw    $v0, 0x58($sp)
/* 0CF770 80314770 8EE90014 */  lw    $t1, 0x14($s7)
.L80314774:
/* 0CF774 80314774 8FAE0110 */  lw    $t6, 0x110($sp)
/* 0CF778 80314778 01BE2023 */  subu  $a0, $t5, $fp
/* 0CF77C 8031477C 3132000F */  andi  $s2, $t1, 0xf
/* 0CF780 80314780 00005025 */  move  $t2, $zero
/* 0CF784 80314784 00005825 */  move  $t3, $zero
/* 0CF788 80314788 00806025 */  move  $t4, $a0
/* 0CF78C 8031478C 16400006 */  bnez  $s2, .L803147A8
/* 0CF790 80314790 01C91823 */   subu  $v1, $t6, $t1
/* 0CF794 80314794 8EF90000 */  lw    $t9, ($s7)
/* 0CF798 80314798 00197880 */  sll   $t7, $t9, 2
/* 0CF79C 8031479C 05E20003 */  bltzl $t7, .L803147AC
/* 0CF7A0 803147A0 240E0010 */   li    $t6, 16
/* 0CF7A4 803147A4 24120010 */  li    $s2, 16
.L803147A8:
/* 0CF7A8 803147A8 240E0010 */  li    $t6, 16
.L803147AC:
/* 0CF7AC 803147AC 01D22823 */  subu  $a1, $t6, $s2
/* 0CF7B0 803147B0 0083082A */  slt   $at, $a0, $v1
/* 0CF7B4 803147B4 1020000C */  beqz  $at, .L803147E8
/* 0CF7B8 803147B8 00A0B025 */   move  $s6, $a1
/* 0CF7BC 803147BC 00851023 */  subu  $v0, $a0, $a1
/* 0CF7C0 803147C0 2442000F */  addiu $v0, $v0, 0xf
/* 0CF7C4 803147C4 04410003 */  bgez  $v0, .L803147D4
/* 0CF7C8 803147C8 0002C903 */   sra   $t9, $v0, 4
/* 0CF7CC 803147CC 2441000F */  addiu $at, $v0, 0xf
/* 0CF7D0 803147D0 0001C903 */  sra   $t9, $at, 4
.L803147D4:
/* 0CF7D4 803147D4 00198100 */  sll   $s0, $t9, 4
/* 0CF7D8 803147D8 00B0C021 */  addu  $t8, $a1, $s0
/* 0CF7DC 803147DC 03204025 */  move  $t0, $t9
/* 0CF7E0 803147E0 10000014 */  b     .L80314834
/* 0CF7E4 803147E4 03049823 */   subu  $s3, $t8, $a0
.L803147E8:
/* 0CF7E8 803147E8 00721021 */  addu  $v0, $v1, $s2
/* 0CF7EC 803147EC 2450FFF0 */  addiu $s0, $v0, -0x10
/* 0CF7F0 803147F0 1E000003 */  bgtz  $s0, .L80314800
/* 0CF7F4 803147F4 00009825 */   move  $s3, $zero
/* 0CF7F8 803147F8 00008025 */  move  $s0, $zero
/* 0CF7FC 803147FC 0060B025 */  move  $s6, $v1
.L80314800:
/* 0CF800 80314800 8FAE0160 */  lw    $t6, 0x160($sp)
/* 0CF804 80314804 2608000F */  addiu $t0, $s0, 0xf
/* 0CF808 80314808 05010003 */  bgez  $t0, .L80314818
/* 0CF80C 8031480C 00087903 */   sra   $t7, $t0, 4
/* 0CF810 80314810 2501000F */  addiu $at, $t0, 0xf
/* 0CF814 80314814 00017903 */  sra   $t7, $at, 4
.L80314818:
/* 0CF818 80314818 8DD90008 */  lw    $t9, 8($t6)
/* 0CF81C 8031481C 01E04025 */  move  $t0, $t7
/* 0CF820 80314820 53200004 */  beql  $t9, $zero, .L80314834
/* 0CF824 80314824 240A0001 */   li    $t2, 1
/* 0CF828 80314828 10000002 */  b     .L80314834
/* 0CF82C 8031482C 240B0001 */   li    $t3, 1
/* 0CF830 80314830 240A0001 */  li    $t2, 1
.L80314834:
/* 0CF834 80314834 11000030 */  beqz  $t0, .L803148F8
/* 0CF838 80314838 24030009 */   li    $v1, 9
/* 0CF83C 8031483C 01321023 */  subu  $v0, $t1, $s2
/* 0CF840 80314840 24420010 */  addiu $v0, $v0, 0x10
/* 0CF844 80314844 04410003 */  bgez  $v0, .L80314854
/* 0CF848 80314848 0002C103 */   sra   $t8, $v0, 4
/* 0CF84C 8031484C 2441000F */  addiu $at, $v0, 0xf
/* 0CF850 80314850 0001C103 */  sra   $t8, $at, 4
.L80314854:
/* 0CF854 80314854 03030019 */  multu $t8, $v1
/* 0CF858 80314858 8FAE0120 */  lw    $t6, 0x120($sp)
/* 0CF85C 8031485C 8FA60148 */  lw    $a2, 0x148($sp)
/* 0CF860 80314860 26E70003 */  addiu $a3, $s7, 3
/* 0CF864 80314864 AFAA0150 */  sw    $t2, 0x150($sp)
/* 0CF868 80314868 AFAB014C */  sw    $t3, 0x14c($sp)
/* 0CF86C 8031486C AFAC010C */  sw    $t4, 0x10c($sp)
/* 0CF870 80314870 AFAD0118 */  sw    $t5, 0x118($sp)
/* 0CF874 80314874 00007812 */  mflo  $t7
/* 0CF878 80314878 01EE2021 */  addu  $a0, $t7, $t6
/* 0CF87C 8031487C 00000000 */  nop   
/* 0CF880 80314880 01030019 */  multu $t0, $v1
/* 0CF884 80314884 00008812 */  mflo  $s1
/* 0CF888 80314888 02202825 */  move  $a1, $s1
/* 0CF88C 8031488C 0C0C5C9C */  jal   dma_sample_data
/* 0CF890 80314890 00000000 */   nop   
/* 0CF894 80314894 3047000F */  andi  $a3, $v0, 0xf
/* 0CF898 80314898 02802025 */  move  $a0, $s4
/* 0CF89C 8031489C 3C190800 */  lui   $t9, (0x080003F0 >> 16) # lui $t9, 0x800
/* 0CF8A0 803148A0 8FAA0150 */  lw    $t2, 0x150($sp)
/* 0CF8A4 803148A4 8FAB014C */  lw    $t3, 0x14c($sp)
/* 0CF8A8 803148A8 8FAC010C */  lw    $t4, 0x10c($sp)
/* 0CF8AC 803148AC 8FAD0118 */  lw    $t5, 0x118($sp)
/* 0CF8B0 803148B0 373903F0 */  ori   $t9, (0x080003F0 & 0xFFFF) # ori $t9, $t9, 0x3f0
/* 0CF8B4 803148B4 0227C021 */  addu  $t8, $s1, $a3
/* 0CF8B8 803148B8 330FFFFF */  andi  $t7, $t8, 0xffff
/* 0CF8BC 803148BC AC990000 */  sw    $t9, ($a0)
/* 0CF8C0 803148C0 26940008 */  addiu $s4, $s4, 8
/* 0CF8C4 803148C4 3C1F8000 */  lui   $ra, 0x8000
/* 0CF8C8 803148C8 AC8F0004 */  sw    $t7, 4($a0)
/* 0CF8CC 803148CC 02802825 */  move  $a1, $s4
/* 0CF8D0 803148D0 0047C823 */  subu  $t9, $v0, $a3
/* 0CF8D4 803148D4 033FC021 */  addu  $t8, $t9, $ra
/* 0CF8D8 803148D8 3C0E0400 */  lui   $t6, 0x400
/* 0CF8DC 803148DC ACAE0000 */  sw    $t6, ($a1)
/* 0CF8E0 803148E0 ACB80004 */  sw    $t8, 4($a1)
/* 0CF8E4 803148E4 8EE60000 */  lw    $a2, ($s7)
/* 0CF8E8 803148E8 26940008 */  addiu $s4, $s4, 8
/* 0CF8EC 803148EC 00067880 */  sll   $t7, $a2, 2
/* 0CF8F0 803148F0 10000006 */  b     .L8031490C
/* 0CF8F4 803148F4 000F37C2 */   srl   $a2, $t7, 0x1f
.L803148F8:
/* 0CF8F8 803148F8 8EE60000 */  lw    $a2, ($s7)
/* 0CF8FC 803148FC 00008025 */  move  $s0, $zero
/* 0CF900 80314900 00003825 */  move  $a3, $zero
/* 0CF904 80314904 0006C880 */  sll   $t9, $a2, 2
/* 0CF908 80314908 001937C2 */  srl   $a2, $t9, 0x1f
.L8031490C:
/* 0CF90C 8031490C 10C0000F */  beqz  $a2, .L8031494C
/* 0CF910 80314910 02801025 */   move  $v0, $s4
/* 0CF914 80314914 3C0F0F00 */  lui   $t7, 0xf00
/* 0CF918 80314918 AC4F0000 */  sw    $t7, ($v0)
/* 0CF91C 8031491C 8FAE0164 */  lw    $t6, 0x164($sp)
/* 0CF920 80314920 3C018000 */  lui   $at, (0x80000010 >> 16) # lui $at, 0x8000
/* 0CF924 80314924 34210010 */  ori   $at, (0x80000010 & 0xFFFF) # ori $at, $at, 0x10
/* 0CF928 80314928 8DD90008 */  lw    $t9, 8($t6)
/* 0CF92C 8031492C 240F0002 */  li    $t7, 2
/* 0CF930 80314930 26940008 */  addiu $s4, $s4, 8
/* 0CF934 80314934 0321C021 */  addu  $t8, $t9, $at
/* 0CF938 80314938 AC580004 */  sw    $t8, 4($v0)
/* 0CF93C 8031493C AFAF0148 */  sw    $t7, 0x148($sp)
/* 0CF940 80314940 92EE0000 */  lbu   $t6, ($s7)
/* 0CF944 80314944 31D9FFDF */  andi  $t9, $t6, 0xffdf
/* 0CF948 80314948 A2F90000 */  sb    $t9, ($s7)
.L8031494C:
/* 0CF94C 8031494C 17C0001B */  bnez  $fp, .L803149BC
/* 0CF950 80314950 02801025 */   move  $v0, $s4
/* 0CF954 80314954 24F803F0 */  addiu $t8, $a3, 0x3f0
/* 0CF958 80314958 330FFFFF */  andi  $t7, $t8, 0xffff
/* 0CF95C 8031495C 3C010800 */  lui   $at, 0x800
/* 0CF960 80314960 01E17025 */  or    $t6, $t7, $at
/* 0CF964 80314964 00103040 */  sll   $a2, $s0, 1
/* 0CF968 80314968 30D9FFFF */  andi  $t9, $a2, 0xffff
/* 0CF96C 8031496C 3C010180 */  lui   $at, 0x180
/* 0CF970 80314970 02801025 */  move  $v0, $s4
/* 0CF974 80314974 0321C025 */  or    $t8, $t9, $at
/* 0CF978 80314978 AC580004 */  sw    $t8, 4($v0)
/* 0CF97C 8031497C AC4E0000 */  sw    $t6, ($v0)
/* 0CF980 80314980 8FAF0148 */  lw    $t7, 0x148($sp)
/* 0CF984 80314984 26940008 */  addiu $s4, $s4, 8
/* 0CF988 80314988 3C010100 */  lui   $at, 0x100
/* 0CF98C 8031498C 31EE00FF */  andi  $t6, $t7, 0xff
/* 0CF990 80314990 000ECC00 */  sll   $t9, $t6, 0x10
/* 0CF994 80314994 0321C025 */  or    $t8, $t9, $at
/* 0CF998 80314998 02801825 */  move  $v1, $s4
/* 0CF99C 8031499C AC780000 */  sw    $t8, ($v1)
/* 0CF9A0 803149A0 8EEF0034 */  lw    $t7, 0x34($s7)
/* 0CF9A4 803149A4 0012C840 */  sll   $t9, $s2, 1
/* 0CF9A8 803149A8 26940008 */  addiu $s4, $s4, 8
/* 0CF9AC 803149AC 01FF7021 */  addu  $t6, $t7, $ra
/* 0CF9B0 803149B0 AC6E0004 */  sw    $t6, 4($v1)
/* 0CF9B4 803149B4 1000002F */  b     .L80314A74
/* 0CF9B8 803149B8 AFB90130 */   sw    $t9, 0x130($sp)
.L803149BC:
/* 0CF9BC 803149BC 24F803F0 */  addiu $t8, $a3, 0x3f0
/* 0CF9C0 803149C0 330FFFFF */  andi  $t7, $t8, 0xffff
/* 0CF9C4 803149C4 3C010800 */  lui   $at, 0x800
/* 0CF9C8 803149C8 01E17025 */  or    $t6, $t7, $at
/* 0CF9CC 803149CC 2401FFE0 */  li    $at, -32
/* 0CF9D0 803149D0 26A3001F */  addiu $v1, $s5, 0x1f
/* 0CF9D4 803149D4 0061C824 */  and   $t9, $v1, $at
/* 0CF9D8 803149D8 272F0180 */  addiu $t7, $t9, 0x180
/* 0CF9DC 803149DC 03201825 */  move  $v1, $t9
/* 0CF9E0 803149E0 AC4E0000 */  sw    $t6, ($v0)
/* 0CF9E4 803149E4 00103040 */  sll   $a2, $s0, 1
/* 0CF9E8 803149E8 30D9FFFF */  andi  $t9, $a2, 0xffff
/* 0CF9EC 803149EC 000F7400 */  sll   $t6, $t7, 0x10
/* 0CF9F0 803149F0 01D9C025 */  or    $t8, $t6, $t9
/* 0CF9F4 803149F4 AC580004 */  sw    $t8, 4($v0)
/* 0CF9F8 803149F8 8FAF0148 */  lw    $t7, 0x148($sp)
/* 0CF9FC 803149FC 26940008 */  addiu $s4, $s4, 8
/* 0CFA00 80314A00 3C010100 */  lui   $at, 0x100
/* 0CFA04 80314A04 31EE00FF */  andi  $t6, $t7, 0xff
/* 0CFA08 80314A08 000ECC00 */  sll   $t9, $t6, 0x10
/* 0CFA0C 80314A0C 0321C025 */  or    $t8, $t9, $at
/* 0CFA10 80314A10 02802025 */  move  $a0, $s4
/* 0CFA14 80314A14 AC980000 */  sw    $t8, ($a0)
/* 0CFA18 80314A18 8EEF0034 */  lw    $t7, 0x34($s7)
/* 0CFA1C 80314A1C 0012C840 */  sll   $t9, $s2, 1
/* 0CFA20 80314A20 0079C021 */  addu  $t8, $v1, $t9
/* 0CFA24 80314A24 01FF7021 */  addu  $t6, $t7, $ra
/* 0CFA28 80314A28 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 0CFA2C 80314A2C AC8E0004 */  sw    $t6, 4($a0)
/* 0CFA30 80314A30 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 0CFA34 80314A34 270F0180 */  addiu $t7, $t8, 0x180
/* 0CFA38 80314A38 01E17024 */  and   $t6, $t7, $at
/* 0CFA3C 80314A3C 26940008 */  addiu $s4, $s4, 8
/* 0CFA40 80314A40 3C010A00 */  lui   $at, 0xa00
/* 0CFA44 80314A44 01C1C825 */  or    $t9, $t6, $at
/* 0CFA48 80314A48 02802825 */  move  $a1, $s4
/* 0CFA4C 80314A4C ACB90000 */  sw    $t9, ($a1)
/* 0CFA50 80314A50 0216C821 */  addu  $t9, $s0, $s6
/* 0CFA54 80314A54 26AF0180 */  addiu $t7, $s5, 0x180
/* 0CFA58 80314A58 000F7400 */  sll   $t6, $t7, 0x10
/* 0CFA5C 80314A5C 0333C023 */  subu  $t8, $t9, $s3
/* 0CFA60 80314A60 00187840 */  sll   $t7, $t8, 1
/* 0CFA64 80314A64 31F9FFFF */  andi  $t9, $t7, 0xffff
/* 0CFA68 80314A68 01D9C025 */  or    $t8, $t6, $t9
/* 0CFA6C 80314A6C ACB80004 */  sw    $t8, 4($a1)
/* 0CFA70 80314A70 26940008 */  addiu $s4, $s4, 8
.L80314A74:
/* 0CFA74 80314A74 8FB90148 */  lw    $t9, 0x148($sp)
/* 0CFA78 80314A78 03D07821 */  addu  $t7, $fp, $s0
/* 0CFA7C 80314A7C 01F67021 */  addu  $t6, $t7, $s6
/* 0CFA80 80314A80 24010001 */  li    $at, 1
/* 0CFA84 80314A84 13210008 */  beq   $t9, $at, .L80314AA8
/* 0CFA88 80314A88 01D3F023 */   subu  $fp, $t6, $s3
/* 0CFA8C 80314A8C 3B220002 */  xori  $v0, $t9, 2
/* 0CFA90 80314A90 0216C021 */  addu  $t8, $s0, $s6
/* 0CFA94 80314A94 03131823 */  subu  $v1, $t8, $s3
/* 0CFA98 80314A98 10400007 */  beqz  $v0, .L80314AB8
/* 0CFA9C 80314A9C AFA00148 */   sw    $zero, 0x148($sp)
/* 0CFAA0 80314AA0 10000008 */  b     .L80314AC4
/* 0CFAA4 80314AA4 00037040 */   sll   $t6, $v1, 1
.L80314AA8:
/* 0CFAA8 80314AA8 AFA00130 */  sw    $zero, 0x130($sp)
/* 0CFAAC 80314AAC 02A6A821 */  addu  $s5, $s5, $a2
/* 0CFAB0 80314AB0 1000000B */  b     .L80314AE0
/* 0CFAB4 80314AB4 AFA00148 */   sw    $zero, 0x148($sp)
.L80314AB8:
/* 0CFAB8 80314AB8 00037840 */  sll   $t7, $v1, 1
/* 0CFABC 80314ABC 10000008 */  b     .L80314AE0
/* 0CFAC0 80314AC0 02AFA821 */   addu  $s5, $s5, $t7
.L80314AC4:
/* 0CFAC4 80314AC4 52A00004 */  beql  $s5, $zero, .L80314AD8
/* 0CFAC8 80314AC8 0072A821 */   addu  $s5, $v1, $s2
/* 0CFACC 80314ACC 10000004 */  b     .L80314AE0
/* 0CFAD0 80314AD0 02AEA821 */   addu  $s5, $s5, $t6
/* 0CFAD4 80314AD4 0072A821 */  addu  $s5, $v1, $s2
.L80314AD8:
/* 0CFAD8 80314AD8 0015C840 */  sll   $t9, $s5, 1
/* 0CFADC 80314ADC 0320A825 */  move  $s5, $t9
.L80314AE0:
/* 0CFAE0 80314AE0 11400014 */  beqz  $t2, .L80314B34
/* 0CFAE4 80314AE4 3C0100FF */   lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 0CFAE8 80314AE8 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 0CFAEC 80314AEC 26B80180 */  addiu $t8, $s5, 0x180
/* 0CFAF0 80314AF0 03017824 */  and   $t7, $t8, $at
/* 0CFAF4 80314AF4 3C010200 */  lui   $at, 0x200
/* 0CFAF8 80314AF8 02801025 */  move  $v0, $s4
/* 0CFAFC 80314AFC 01BEC823 */  subu  $t9, $t5, $fp
/* 0CFB00 80314B00 0019C040 */  sll   $t8, $t9, 1
/* 0CFB04 80314B04 01E17025 */  or    $t6, $t7, $at
/* 0CFB08 80314B08 AC4E0000 */  sw    $t6, ($v0)
/* 0CFB0C 80314B0C AC580004 */  sw    $t8, 4($v0)
/* 0CFB10 80314B10 92EE0000 */  lbu   $t6, ($s7)
/* 0CFB14 80314B14 26940008 */  addiu $s4, $s4, 8
/* 0CFB18 80314B18 AEE00014 */  sw    $zero, 0x14($s7)
/* 0CFB1C 80314B1C 35D90010 */  ori   $t9, $t6, 0x10
/* 0CFB20 80314B20 A2F90000 */  sb    $t9, ($s7)
/* 0CFB24 80314B24 92F80000 */  lbu   $t8, ($s7)
/* 0CFB28 80314B28 330FFF7F */  andi  $t7, $t8, 0xff7f
/* 0CFB2C 80314B2C 1000000F */  b     .L80314B6C
/* 0CFB30 80314B30 A2EF0000 */   sb    $t7, ($s7)
.L80314B34:
/* 0CFB34 80314B34 51600009 */  beql  $t3, $zero, .L80314B5C
/* 0CFB38 80314B38 8EF90014 */   lw    $t9, 0x14($s7)
/* 0CFB3C 80314B3C 92F90000 */  lbu   $t9, ($s7)
/* 0CFB40 80314B40 37380020 */  ori   $t8, $t9, 0x20
/* 0CFB44 80314B44 A2F80000 */  sb    $t8, ($s7)
/* 0CFB48 80314B48 8FAF0160 */  lw    $t7, 0x160($sp)
/* 0CFB4C 80314B4C 8DEE0000 */  lw    $t6, ($t7)
/* 0CFB50 80314B50 10000004 */  b     .L80314B64
/* 0CFB54 80314B54 AEEE0014 */   sw    $t6, 0x14($s7)
/* 0CFB58 80314B58 8EF90014 */  lw    $t9, 0x14($s7)
.L80314B5C:
/* 0CFB5C 80314B5C 032CC021 */  addu  $t8, $t9, $t4
/* 0CFB60 80314B60 AEF80014 */  sw    $t8, 0x14($s7)
.L80314B64:
/* 0CFB64 80314B64 57CDFF03 */  bnel  $fp, $t5, .L80314774
/* 0CFB68 80314B68 8EE90014 */   lw    $t1, 0x14($s7)
.L80314B6C:
/* 0CFB6C 80314B6C 8FAF0054 */  lw    $t7, 0x54($sp)
/* 0CFB70 80314B70 8FAE00E8 */  lw    $t6, 0xe8($sp)
/* 0CFB74 80314B74 24010002 */  li    $at, 2
/* 0CFB78 80314B78 15E00008 */  bnez  $t7, .L80314B9C
/* 0CFB7C 80314B7C 8FB80130 */   lw    $t8, 0x130($sp)
/* 0CFB80 80314B80 11C1000D */  beq   $t6, $at, .L80314BB8
/* 0CFB84 80314B84 8FB900E4 */   lw    $t9, 0xe4($sp)
/* 0CFB88 80314B88 8EE50000 */  lw    $a1, ($s7)
/* 0CFB8C 80314B8C 000530C0 */  sll   $a2, $a1, 3
/* 0CFB90 80314B90 0006CFC2 */  srl   $t9, $a2, 0x1f
/* 0CFB94 80314B94 10000066 */  b     .L80314D30
/* 0CFB98 80314B98 03203025 */   move  $a2, $t9
.L80314B9C:
/* 0CFB9C 80314B9C 270F0180 */  addiu $t7, $t8, 0x180
/* 0CFBA0 80314BA0 A7AF00D6 */  sh    $t7, 0xd6($sp)
/* 0CFBA4 80314BA4 8EE50000 */  lw    $a1, ($s7)
/* 0CFBA8 80314BA8 000530C0 */  sll   $a2, $a1, 3
/* 0CFBAC 80314BAC 000677C2 */  srl   $t6, $a2, 0x1f
/* 0CFBB0 80314BB0 1000005F */  b     .L80314D30
/* 0CFBB4 80314BB4 01C03025 */   move  $a2, $t6
.L80314BB8:
/* 0CFBB8 80314BB8 13200009 */  beqz  $t9, .L80314BE0
/* 0CFBBC 80314BBC 02801025 */   move  $v0, $s4
/* 0CFBC0 80314BC0 24010001 */  li    $at, 1
/* 0CFBC4 80314BC4 13210034 */  beq   $t9, $at, .L80314C98
/* 0CFBC8 80314BC8 02801025 */   move  $v0, $s4
/* 0CFBCC 80314BCC 8EE50000 */  lw    $a1, ($s7)
/* 0CFBD0 80314BD0 000530C0 */  sll   $a2, $a1, 3
/* 0CFBD4 80314BD4 0006C7C2 */  srl   $t8, $a2, 0x1f
/* 0CFBD8 80314BD8 10000055 */  b     .L80314D30
/* 0CFBDC 80314BDC 03003025 */   move  $a2, $t8
.L80314BE0:
/* 0CFBE0 80314BE0 8FAF0130 */  lw    $t7, 0x130($sp)
/* 0CFBE4 80314BE4 3C010800 */  lui   $at, 0x800
/* 0CFBE8 80314BE8 25A30004 */  addiu $v1, $t5, 4
/* 0CFBEC 80314BEC 25EE0180 */  addiu $t6, $t7, 0x180
/* 0CFBF0 80314BF0 31D9FFFF */  andi  $t9, $t6, 0xffff
/* 0CFBF4 80314BF4 0321C025 */  or    $t8, $t9, $at
/* 0CFBF8 80314BF8 3C010020 */  lui   $at, 0x20
/* 0CFBFC 80314BFC 306FFFFF */  andi  $t7, $v1, 0xffff
/* 0CFC00 80314C00 01E17025 */  or    $t6, $t7, $at
/* 0CFC04 80314C04 26940008 */  addiu $s4, $s4, 8
/* 0CFC08 80314C08 3C190501 */  lui   $t9, (0x0501FF60 >> 16) # lui $t9, 0x501
/* 0CFC0C 80314C0C AC4E0004 */  sw    $t6, 4($v0)
/* 0CFC10 80314C10 AC580000 */  sw    $t8, ($v0)
/* 0CFC14 80314C14 3739FF60 */  ori   $t9, (0x0501FF60 & 0xFFFF) # ori $t9, $t9, 0xff60
/* 0CFC18 80314C18 02802025 */  move  $a0, $s4
/* 0CFC1C 80314C1C AC990000 */  sw    $t9, ($a0)
/* 0CFC20 80314C20 8EF80034 */  lw    $t8, 0x34($s7)
/* 0CFC24 80314C24 3C018000 */  lui   $at, (0x800000F0 >> 16) # lui $at, 0x8000
/* 0CFC28 80314C28 342100F0 */  ori   $at, (0x800000F0 & 0xFFFF) # ori $at, $at, 0xf0
/* 0CFC2C 80314C2C 03017821 */  addu  $t7, $t8, $at
/* 0CFC30 80314C30 AC8F0004 */  sw    $t7, 4($a0)
/* 0CFC34 80314C34 240E0024 */  li    $t6, 36
/* 0CFC38 80314C38 AFA300D8 */  sw    $v1, 0xd8($sp)
/* 0CFC3C 80314C3C A7AE00D6 */  sh    $t6, 0xd6($sp)
/* 0CFC40 80314C40 8EE50000 */  lw    $a1, ($s7)
/* 0CFC44 80314C44 26940008 */  addiu $s4, $s4, 8
/* 0CFC48 80314C48 02801025 */  move  $v0, $s4
/* 0CFC4C 80314C4C 000530C0 */  sll   $a2, $a1, 3
/* 0CFC50 80314C50 0006CFC2 */  srl   $t9, $a2, 0x1f
/* 0CFC54 80314C54 13200036 */  beqz  $t9, .L80314D30
/* 0CFC58 80314C58 03203025 */   move  $a2, $t9
/* 0CFC5C 80314C5C 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 0CFC60 80314C60 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 0CFC64 80314C64 25B80024 */  addiu $t8, $t5, 0x24
/* 0CFC68 80314C68 03017824 */  and   $t7, $t8, $at
/* 0CFC6C 80314C6C 3C010200 */  lui   $at, 0x200
/* 0CFC70 80314C70 01E17025 */  or    $t6, $t7, $at
/* 0CFC74 80314C74 25B90010 */  addiu $t9, $t5, 0x10
/* 0CFC78 80314C78 AC590004 */  sw    $t9, 4($v0)
/* 0CFC7C 80314C7C AC4E0000 */  sw    $t6, ($v0)
/* 0CFC80 80314C80 8EE50000 */  lw    $a1, ($s7)
/* 0CFC84 80314C84 26940008 */  addiu $s4, $s4, 8
/* 0CFC88 80314C88 000530C0 */  sll   $a2, $a1, 3
/* 0CFC8C 80314C8C 0006C7C2 */  srl   $t8, $a2, 0x1f
/* 0CFC90 80314C90 10000027 */  b     .L80314D30
/* 0CFC94 80314C94 03003025 */   move  $a2, $t8
.L80314C98:
/* 0CFC98 80314C98 8FAF0130 */  lw    $t7, 0x130($sp)
/* 0CFC9C 80314C9C 3C010800 */  lui   $at, 0x800
/* 0CFCA0 80314CA0 26940008 */  addiu $s4, $s4, 8
/* 0CFCA4 80314CA4 25EE0180 */  addiu $t6, $t7, 0x180
/* 0CFCA8 80314CA8 31D9FFFF */  andi  $t9, $t6, 0xffff
/* 0CFCAC 80314CAC 0321C025 */  or    $t8, $t9, $at
/* 0CFCB0 80314CB0 25AF0008 */  addiu $t7, $t5, 8
/* 0CFCB4 80314CB4 31EEFFFF */  andi  $t6, $t7, 0xffff
/* 0CFCB8 80314CB8 AC580000 */  sw    $t8, ($v0)
/* 0CFCBC 80314CBC 3C010160 */  lui   $at, 0x160
/* 0CFCC0 80314CC0 01C1C825 */  or    $t9, $t6, $at
/* 0CFCC4 80314CC4 3C180501 */  lui   $t8, (0x0501FF60 >> 16) # lui $t8, 0x501
/* 0CFCC8 80314CC8 AC590004 */  sw    $t9, 4($v0)
/* 0CFCCC 80314CCC 3718FF60 */  ori   $t8, (0x0501FF60 & 0xFFFF) # ori $t8, $t8, 0xff60
/* 0CFCD0 80314CD0 02801825 */  move  $v1, $s4
/* 0CFCD4 80314CD4 AC780000 */  sw    $t8, ($v1)
/* 0CFCD8 80314CD8 8EEF0034 */  lw    $t7, 0x34($s7)
/* 0CFCDC 80314CDC 3C018000 */  lui   $at, (0x800000F0 >> 16) # lui $at, 0x8000
/* 0CFCE0 80314CE0 342100F0 */  ori   $at, (0x800000F0 & 0xFFFF) # ori $at, $at, 0xf0
/* 0CFCE4 80314CE4 26940008 */  addiu $s4, $s4, 8
/* 0CFCE8 80314CE8 3C190A00 */  lui   $t9, (0x0A000164 >> 16) # lui $t9, 0xa00
/* 0CFCEC 80314CEC 01E17021 */  addu  $t6, $t7, $at
/* 0CFCF0 80314CF0 AC6E0004 */  sw    $t6, 4($v1)
/* 0CFCF4 80314CF4 37390164 */  ori   $t9, (0x0A000164 & 0xFFFF) # ori $t9, $t9, 0x164
/* 0CFCF8 80314CF8 02802025 */  move  $a0, $s4
/* 0CFCFC 80314CFC AC990000 */  sw    $t9, ($a0)
/* 0CFD00 80314D00 8FB800D8 */  lw    $t8, 0xd8($sp)
/* 0CFD04 80314D04 26940008 */  addiu $s4, $s4, 8
/* 0CFD08 80314D08 270E0020 */  addiu $t6, $t8, 0x20
/* 0CFD0C 80314D0C 25B80004 */  addiu $t8, $t5, 4
/* 0CFD10 80314D10 330FFFFF */  andi  $t7, $t8, 0xffff
/* 0CFD14 80314D14 000ECC00 */  sll   $t9, $t6, 0x10
/* 0CFD18 80314D18 032F7025 */  or    $t6, $t9, $t7
/* 0CFD1C 80314D1C AC8E0004 */  sw    $t6, 4($a0)
/* 0CFD20 80314D20 8EE50000 */  lw    $a1, ($s7)
/* 0CFD24 80314D24 000530C0 */  sll   $a2, $a1, 3
/* 0CFD28 80314D28 0006C7C2 */  srl   $t8, $a2, 0x1f
/* 0CFD2C 80314D2C 03003025 */  move  $a2, $t8
.L80314D30:
/* 0CFD30 80314D30 10C00003 */  beqz  $a2, .L80314D40
/* 0CFD34 80314D34 8FA200E4 */   lw    $v0, 0xe4($sp)
/* 0CFD38 80314D38 10000008 */  b     .L80314D5C
/* 0CFD3C 80314D3C AFA00148 */   sw    $zero, 0x148($sp)
.L80314D40:
/* 0CFD40 80314D40 8FB900E8 */  lw    $t9, 0xe8($sp)
/* 0CFD44 80314D44 24420001 */  addiu $v0, $v0, 1
/* 0CFD48 80314D48 AFA200E4 */  sw    $v0, 0xe4($sp)
/* 0CFD4C 80314D4C 5459FE5D */  bnel  $v0, $t9, .L803146C4
/* 0CFD50 80314D50 8FA60164 */   lw    $a2, 0x164($sp)
.L80314D54:
/* 0CFD54 80314D54 AFA00148 */  sw    $zero, 0x148($sp)
/* 0CFD58 80314D58 8EE50000 */  lw    $a1, ($s7)
.L80314D5C:
/* 0CFD5C 80314D5C 00057840 */  sll   $t7, $a1, 1
/* 0CFD60 80314D60 000F77C2 */  srl   $t6, $t7, 0x1f
/* 0CFD64 80314D64 24010001 */  li    $at, 1
/* 0CFD68 80314D68 15C10006 */  bne   $t6, $at, .L80314D84
/* 0CFD6C 80314D6C 02802025 */   move  $a0, $s4
/* 0CFD70 80314D70 24180001 */  li    $t8, 1
/* 0CFD74 80314D74 AFB80148 */  sw    $t8, 0x148($sp)
/* 0CFD78 80314D78 92F90000 */  lbu   $t9, ($s7)
/* 0CFD7C 80314D7C 332FFFBF */  andi  $t7, $t9, 0xffbf
/* 0CFD80 80314D80 A2EF0000 */  sb    $t7, ($s7)
.L80314D84:
/* 0CFD84 80314D84 8FB10048 */  lw    $s1, 0x48($sp)
/* 0CFD88 80314D88 97AE00D6 */  lhu   $t6, 0xd6($sp)
/* 0CFD8C 80314D8C 8FB80148 */  lw    $t8, 0x148($sp)
/* 0CFD90 80314D90 02E02825 */  move  $a1, $s7
/* 0CFD94 80314D94 97A7005E */  lhu   $a3, 0x5e($sp)
/* 0CFD98 80314D98 02203025 */  move  $a2, $s1
/* 0CFD9C 80314D9C AFAE0010 */  sw    $t6, 0x10($sp)
/* 0CFDA0 80314DA0 0C0C53F5 */  jal   final_resample
/* 0CFDA4 80314DA4 AFB80014 */   sw    $t8, 0x14($sp)
/* 0CFDA8 80314DA8 96F9000C */  lhu   $t9, 0xc($s7)
/* 0CFDAC 80314DAC 0040A025 */  move  $s4, $v0
/* 0CFDB0 80314DB0 02802025 */  move  $a0, $s4
/* 0CFDB4 80314DB4 17200004 */  bnez  $t9, .L80314DC8
/* 0CFDB8 80314DB8 02E02825 */   move  $a1, $s7
/* 0CFDBC 80314DBC 96EF0010 */  lhu   $t7, 0x10($s7)
/* 0CFDC0 80314DC0 51E00004 */  beql  $t7, $zero, .L80314DD4
/* 0CFDC4 80314DC4 96EE000E */   lhu   $t6, 0xe($s7)
.L80314DC8:
/* 0CFDC8 80314DC8 1000000A */  b     .L80314DF4
/* 0CFDCC 80314DCC 24100001 */   li    $s0, 1
/* 0CFDD0 80314DD0 96EE000E */  lhu   $t6, 0xe($s7)
.L80314DD4:
/* 0CFDD4 80314DD4 15C00005 */  bnez  $t6, .L80314DEC
/* 0CFDD8 80314DD8 00000000 */   nop   
/* 0CFDDC 80314DDC 96F80012 */  lhu   $t8, 0x12($s7)
/* 0CFDE0 80314DE0 00008025 */  move  $s0, $zero
/* 0CFDE4 80314DE4 13000003 */  beqz  $t8, .L80314DF4
/* 0CFDE8 80314DE8 00000000 */   nop   
.L80314DEC:
/* 0CFDEC 80314DEC 10000001 */  b     .L80314DF4
/* 0CFDF0 80314DF0 24100002 */   li    $s0, 2
.L80314DF4:
/* 0CFDF4 80314DF4 8FB90148 */  lw    $t9, 0x148($sp)
/* 0CFDF8 80314DF8 8FA6017C */  lw    $a2, 0x17c($sp)
/* 0CFDFC 80314DFC 00003825 */  move  $a3, $zero
/* 0CFE00 80314E00 AFB00010 */  sw    $s0, 0x10($sp)
/* 0CFE04 80314E04 0C0C540C */  jal   process_envelope
/* 0CFE08 80314E08 AFB90014 */   sw    $t9, 0x14($sp)
/* 0CFE0C 80314E0C 92EF0001 */  lbu   $t7, 1($s7)
/* 0CFE10 80314E10 3C1F8000 */  lui   $ra, 0x8000
/* 0CFE14 80314E14 0040A025 */  move  $s4, $v0
/* 0CFE18 80314E18 11E00008 */  beqz  $t7, .L80314E3C
/* 0CFE1C 80314E1C 00402025 */   move  $a0, $v0
/* 0CFE20 80314E20 02E02825 */  move  $a1, $s7
/* 0CFE24 80314E24 02203025 */  move  $a2, $s1
/* 0CFE28 80314E28 8FA70148 */  lw    $a3, 0x148($sp)
/* 0CFE2C 80314E2C 0C0C557D */  jal   note_apply_headset_pan_effects
/* 0CFE30 80314E30 AFB00010 */   sw    $s0, 0x10($sp)
/* 0CFE34 80314E34 3C1F8000 */  lui   $ra, 0x8000
/* 0CFE38 80314E38 0040A025 */  move  $s4, $v0
.L80314E3C:
/* 0CFE3C 80314E3C 8FAE0174 */  lw    $t6, 0x174($sp)
.L80314E40:
/* 0CFE40 80314E40 8FB9006C */  lw    $t9, 0x6c($sp)
/* 0CFE44 80314E44 25D80001 */  addiu $t8, $t6, 1
/* 0CFE48 80314E48 3C0E8022 */  lui   $t6, %hi(gMaxSimultaneousNotes) # $t6, 0x8022
/* 0CFE4C 80314E4C 8DCE6D70 */  lw    $t6, %lo(gMaxSimultaneousNotes)($t6)
/* 0CFE50 80314E50 272F00C0 */  addiu $t7, $t9, 0xc0
/* 0CFE54 80314E54 AFAF006C */  sw    $t7, 0x6c($sp)
/* 0CFE58 80314E58 030E082A */  slt   $at, $t8, $t6
/* 0CFE5C 80314E5C 1420FD9D */  bnez  $at, .L803144D4
/* 0CFE60 80314E60 AFB80174 */   sw    $t8, 0x174($sp)
.L80314E64:
/* 0CFE64 80314E64 3C080800 */  lui   $t0, 0x800
/* 0CFE68 80314E68 02802025 */  move  $a0, $s4
/* 0CFE6C 80314E6C AC880000 */  sw    $t0, ($a0)
/* 0CFE70 80314E70 8FA3017C */  lw    $v1, 0x17c($sp)
/* 0CFE74 80314E74 26940008 */  addiu $s4, $s4, 8
/* 0CFE78 80314E78 02802825 */  move  $a1, $s4
/* 0CFE7C 80314E7C 0003C840 */  sll   $t9, $v1, 1
/* 0CFE80 80314E80 332FFFFF */  andi  $t7, $t9, 0xffff
/* 0CFE84 80314E84 AC8F0004 */  sw    $t7, 4($a0)
/* 0CFE88 80314E88 26940008 */  addiu $s4, $s4, 8
/* 0CFE8C 80314E8C 3C180D00 */  lui   $t8, 0xd00
/* 0CFE90 80314E90 3C0E04C0 */  lui   $t6, (0x04C00600 >> 16) # lui $t6, 0x4c0
/* 0CFE94 80314E94 35CE0600 */  ori   $t6, (0x04C00600 & 0xFFFF) # ori $t6, $t6, 0x600
/* 0CFE98 80314E98 ACB80000 */  sw    $t8, ($a1)
/* 0CFE9C 80314E9C 02803025 */  move  $a2, $s4
/* 0CFEA0 80314EA0 ACAE0004 */  sw    $t6, 4($a1)
/* 0CFEA4 80314EA4 0019C840 */  sll   $t9, $t9, 1
/* 0CFEA8 80314EA8 332FFFFF */  andi  $t7, $t9, 0xffff
/* 0CFEAC 80314EAC 26940008 */  addiu $s4, $s4, 8
/* 0CFEB0 80314EB0 ACCF0004 */  sw    $t7, 4($a2)
/* 0CFEB4 80314EB4 ACC80000 */  sw    $t0, ($a2)
/* 0CFEB8 80314EB8 02803825 */  move  $a3, $s4
/* 0CFEBC 80314EBC 3C180600 */  lui   $t8, 0x600
/* 0CFEC0 80314EC0 ACF80000 */  sw    $t8, ($a3)
/* 0CFEC4 80314EC4 8FAE0178 */  lw    $t6, 0x178($sp)
/* 0CFEC8 80314EC8 3C1F8000 */  lui   $ra, 0x8000
/* 0CFECC 80314ECC 26820008 */  addiu $v0, $s4, 8
/* 0CFED0 80314ED0 01DFC821 */  addu  $t9, $t6, $ra
/* 0CFED4 80314ED4 ACF90004 */  sw    $t9, 4($a3)
/* 0CFED8 80314ED8 8FBF0044 */  lw    $ra, 0x44($sp)
/* 0CFEDC 80314EDC 8FBE0040 */  lw    $fp, 0x40($sp)
/* 0CFEE0 80314EE0 8FB7003C */  lw    $s7, 0x3c($sp)
/* 0CFEE4 80314EE4 8FB60038 */  lw    $s6, 0x38($sp)
/* 0CFEE8 80314EE8 8FB50034 */  lw    $s5, 0x34($sp)
/* 0CFEEC 80314EEC 8FB40030 */  lw    $s4, 0x30($sp)
/* 0CFEF0 80314EF0 8FB3002C */  lw    $s3, 0x2c($sp)
/* 0CFEF4 80314EF4 8FB20028 */  lw    $s2, 0x28($sp)
/* 0CFEF8 80314EF8 8FB10024 */  lw    $s1, 0x24($sp)
/* 0CFEFC 80314EFC 8FB00020 */  lw    $s0, 0x20($sp)
/* 0CFF00 80314F00 03E00008 */  jr    $ra
/* 0CFF04 80314F04 27BD0178 */   addiu $sp, $sp, 0x178
