
screen.elf:     file format elf32-bigmips


Disassembly of section .text:

00400000 <start>:
  400000:	3c1d7fff 	lui	sp,0x7fff
  400004:	37bdfffc 	ori	sp,sp,0xfffc
  400008:	0c100004 	jal	400010 <main>
  40000c:	08100003 	j	40000c <start+0xc>

00400010 <main>:
  400010:	27bdffe8 	addiu	sp,sp,-24
  400014:	afbf0014 	sw	ra,20(sp)
  400018:	0c100103 	jal	40040c <startGame>
  40001c:	8fbf0014 	lw	ra,20(sp)
  400020:	00001025 	move	v0,zero
  400024:	27bd0018 	addiu	sp,sp,24
  400028:	03e00008 	jr	ra

0040002c <drawNave>:
  40002c:	27bdffe0 	addiu	sp,sp,-32
  400030:	24050005 	li	a1,5
  400034:	24040005 	li	a0,5
  400038:	afb10018 	sw	s1,24(sp)
  40003c:	afb00014 	sw	s0,20(sp)
  400040:	3c111001 	lui	s1,0x1001
  400044:	3c101001 	lui	s0,0x1001
  400048:	afbf001c 	sw	ra,28(sp)
  40004c:	0c100179 	jal	4005e4 <set_color>
  400050:	92250025 	lbu	a1,37(s1)
  400054:	9204001f 	lbu	a0,31(s0)
  400058:	0c100187 	jal	40061c <set_cursor>
  40005c:	00002025 	move	a0,zero
  400060:	0c100190 	jal	400640 <put_char>
  400064:	92250025 	lbu	a1,37(s1)
  400068:	9204001f 	lbu	a0,31(s0)
  40006c:	24a5ffff 	addiu	a1,a1,-1
  400070:	2484ffff 	addiu	a0,a0,-1
  400074:	30a500ff 	andi	a1,a1,0xff
  400078:	308400ff 	andi	a0,a0,0xff
  40007c:	0c100187 	jal	40061c <set_cursor>
  400080:	00002025 	move	a0,zero
  400084:	0c100190 	jal	400640 <put_char>
  400088:	92250025 	lbu	a1,37(s1)
  40008c:	9204001f 	lbu	a0,31(s0)
  400090:	24a5ffff 	addiu	a1,a1,-1
  400094:	30a500ff 	andi	a1,a1,0xff
  400098:	0c100187 	jal	40061c <set_cursor>
  40009c:	00002025 	move	a0,zero
  4000a0:	0c100190 	jal	400640 <put_char>
  4000a4:	92250025 	lbu	a1,37(s1)
  4000a8:	9204001f 	lbu	a0,31(s0)
  4000ac:	24a5ffff 	addiu	a1,a1,-1
  4000b0:	24840001 	addiu	a0,a0,1
  4000b4:	30a500ff 	andi	a1,a1,0xff
  4000b8:	308400ff 	andi	a0,a0,0xff
  4000bc:	0c100187 	jal	40061c <set_cursor>
  4000c0:	00002025 	move	a0,zero
  4000c4:	0c100190 	jal	400640 <put_char>
  4000c8:	9204001f 	lbu	a0,31(s0)
  4000cc:	92250025 	lbu	a1,37(s1)
  4000d0:	24840001 	addiu	a0,a0,1
  4000d4:	308400ff 	andi	a0,a0,0xff
  4000d8:	0c100187 	jal	40061c <set_cursor>
  4000dc:	00002025 	move	a0,zero
  4000e0:	0c100190 	jal	400640 <put_char>
  4000e4:	92250025 	lbu	a1,37(s1)
  4000e8:	9204001f 	lbu	a0,31(s0)
  4000ec:	24a50001 	addiu	a1,a1,1
  4000f0:	24840001 	addiu	a0,a0,1
  4000f4:	30a500ff 	andi	a1,a1,0xff
  4000f8:	308400ff 	andi	a0,a0,0xff
  4000fc:	0c100187 	jal	40061c <set_cursor>
  400100:	00002025 	move	a0,zero
  400104:	0c100190 	jal	400640 <put_char>
  400108:	92250025 	lbu	a1,37(s1)
  40010c:	9204001f 	lbu	a0,31(s0)
  400110:	24a50002 	addiu	a1,a1,2
  400114:	24840001 	addiu	a0,a0,1
  400118:	30a500ff 	andi	a1,a1,0xff
  40011c:	308400ff 	andi	a0,a0,0xff
  400120:	0c100187 	jal	40061c <set_cursor>
  400124:	00002025 	move	a0,zero
  400128:	0c100190 	jal	400640 <put_char>
  40012c:	92250025 	lbu	a1,37(s1)
  400130:	9204001f 	lbu	a0,31(s0)
  400134:	24a5fffe 	addiu	a1,a1,-2
  400138:	24840001 	addiu	a0,a0,1
  40013c:	308400ff 	andi	a0,a0,0xff
  400140:	30a500ff 	andi	a1,a1,0xff
  400144:	0c100187 	jal	40061c <set_cursor>
  400148:	8fbf001c 	lw	ra,28(sp)
  40014c:	8fb10018 	lw	s1,24(sp)
  400150:	8fb00014 	lw	s0,20(sp)
  400154:	00002025 	move	a0,zero
  400158:	27bd0020 	addiu	sp,sp,32
  40015c:	08100190 	j	400640 <put_char>

00400160 <move>:
  400160:	27bdffe8 	addiu	sp,sp,-24
  400164:	afbf0014 	sw	ra,20(sp)
  400168:	0c10014e 	jal	400538 <keypad_getkey>
  40016c:	2442ffff 	addiu	v0,v0,-1
  400170:	304200ff 	andi	v0,v0,0xff
  400174:	2c430006 	sltiu	v1,v0,6
  400178:	1060000c 	beqz	v1,4001ac <move+0x4c>
  40017c:	3c031001 	lui	v1,0x1001
  400180:	00021080 	sll	v0,v0,0x2
  400184:	24630000 	addiu	v1,v1,0
  400188:	00621021 	addu	v0,v1,v0
  40018c:	8c420000 	lw	v0,0(v0)
  400190:	00400008 	jr	v0
  400194:	3c031001 	lui	v1,0x1001
  400198:	90620025 	lbu	v0,37(v1)
  40019c:	2c440003 	sltiu	a0,v0,3
  4001a0:	10800009 	beqz	a0,4001c8 <move+0x68>
  4001a4:	24420001 	addiu	v0,v0,1
  4001a8:	a0620025 	sb	v0,37(v1)
  4001ac:	8fbf0014 	lw	ra,20(sp)
  4001b0:	27bd0018 	addiu	sp,sp,24
  4001b4:	03e00008 	jr	ra
  4001b8:	3c031001 	lui	v1,0x1001
  4001bc:	90620025 	lbu	v0,37(v1)
  4001c0:	2c44004d 	sltiu	a0,v0,77
  4001c4:	1000fff6 	b	4001a0 <move+0x40>
  4001c8:	2442ffff 	addiu	v0,v0,-1
  4001cc:	1000fff6 	b	4001a8 <move+0x48>
  4001d0:	3c031001 	lui	v1,0x1001
  4001d4:	9062001f 	lbu	v0,31(v1)
  4001d8:	2c44001c 	sltiu	a0,v0,28
  4001dc:	14800007 	bnez	a0,4001fc <move+0x9c>
  4001e0:	2442ffff 	addiu	v0,v0,-1
  4001e4:	a062001f 	sb	v0,31(v1)
  4001e8:	1000fff0 	b	4001ac <move+0x4c>
  4001ec:	3c031001 	lui	v1,0x1001
  4001f0:	9062001f 	lbu	v0,31(v1)
  4001f4:	2c440003 	sltiu	a0,v0,3
  4001f8:	1000fff8 	b	4001dc <move+0x7c>
  4001fc:	24420001 	addiu	v0,v0,1
  400200:	1000fff8 	b	4001e4 <move+0x84>
  400204:	3c031001 	lui	v1,0x1001
  400208:	90640024 	lbu	a0,36(v1)
  40020c:	24020064 	li	v0,100
  400210:	1482000a 	bne	a0,v0,40023c <move+0xdc>
  400214:	3c021001 	lui	v0,0x1001
  400218:	90420025 	lbu	v0,37(v0)
  40021c:	3c041001 	lui	a0,0x1001
  400220:	24420003 	addiu	v0,v0,3
  400224:	a0820023 	sb	v0,35(a0)
  400228:	3c021001 	lui	v0,0x1001
  40022c:	9042001f 	lbu	v0,31(v0)
  400230:	24420001 	addiu	v0,v0,1
  400234:	a0620024 	sb	v0,36(v1)
  400238:	1000ffdc 	b	4001ac <move+0x4c>
  40023c:	3c031001 	lui	v1,0x1001
  400240:	90640021 	lbu	a0,33(v1)
  400244:	1482000a 	bne	a0,v0,400270 <move+0x110>
  400248:	3c021001 	lui	v0,0x1001
  40024c:	90420025 	lbu	v0,37(v0)
  400250:	3c041001 	lui	a0,0x1001
  400254:	24420003 	addiu	v0,v0,3
  400258:	a0820020 	sb	v0,32(a0)
  40025c:	3c021001 	lui	v0,0x1001
  400260:	9042001f 	lbu	v0,31(v0)
  400264:	24420001 	addiu	v0,v0,1
  400268:	a0620021 	sb	v0,33(v1)
  40026c:	1000ffcf 	b	4001ac <move+0x4c>
  400270:	3c031001 	lui	v1,0x1001
  400274:	9064001c 	lbu	a0,28(v1)
  400278:	1482000a 	bne	a0,v0,4002a4 <move+0x144>
  40027c:	3c021001 	lui	v0,0x1001
  400280:	90420025 	lbu	v0,37(v0)
  400284:	3c041001 	lui	a0,0x1001
  400288:	24420003 	addiu	v0,v0,3
  40028c:	a082001e 	sb	v0,30(a0)
  400290:	3c021001 	lui	v0,0x1001
  400294:	9042001f 	lbu	v0,31(v0)
  400298:	24420001 	addiu	v0,v0,1
  40029c:	a062001c 	sb	v0,28(v1)
  4002a0:	1000ffc2 	b	4001ac <move+0x4c>
  4002a4:	3c031001 	lui	v1,0x1001
  4002a8:	9064001d 	lbu	a0,29(v1)
  4002ac:	1482ffbf 	bne	a0,v0,4001ac <move+0x4c>
  4002b0:	3c021001 	lui	v0,0x1001
  4002b4:	90420025 	lbu	v0,37(v0)
  4002b8:	3c041001 	lui	a0,0x1001
  4002bc:	24420003 	addiu	v0,v0,3
  4002c0:	a0820022 	sb	v0,34(a0)
  4002c4:	3c021001 	lui	v0,0x1001
  4002c8:	9042001f 	lbu	v0,31(v0)
  4002cc:	24420001 	addiu	v0,v0,1
  4002d0:	a062001d 	sb	v0,29(v1)
  4002d4:	1000ffb5 	b	4001ac <move+0x4c>

004002d8 <drawDisparo>:
  4002d8:	27bdffe0 	addiu	sp,sp,-32
  4002dc:	afb10018 	sw	s1,24(sp)
  4002e0:	afb00014 	sw	s0,20(sp)
  4002e4:	00808825 	move	s1,a0
  4002e8:	00a08025 	move	s0,a1
  4002ec:	24040004 	li	a0,4
  4002f0:	2405000a 	li	a1,10
  4002f4:	afbf001c 	sw	ra,28(sp)
  4002f8:	0c100179 	jal	4005e4 <set_color>
  4002fc:	02002825 	move	a1,s0
  400300:	02202025 	move	a0,s1
  400304:	0c100187 	jal	40061c <set_cursor>
  400308:	00002025 	move	a0,zero
  40030c:	0c100190 	jal	400640 <put_char>
  400310:	26050001 	addiu	a1,s0,1
  400314:	30a500ff 	andi	a1,a1,0xff
  400318:	02202025 	move	a0,s1
  40031c:	0c100187 	jal	40061c <set_cursor>
  400320:	00002025 	move	a0,zero
  400324:	0c100190 	jal	400640 <put_char>
  400328:	26050002 	addiu	a1,s0,2
  40032c:	30a500ff 	andi	a1,a1,0xff
  400330:	02202025 	move	a0,s1
  400334:	0c100187 	jal	40061c <set_cursor>
  400338:	00002025 	move	a0,zero
  40033c:	0c100190 	jal	400640 <put_char>
  400340:	26050003 	addiu	a1,s0,3
  400344:	02202025 	move	a0,s1
  400348:	30a500ff 	andi	a1,a1,0xff
  40034c:	0c100187 	jal	40061c <set_cursor>
  400350:	8fbf001c 	lw	ra,28(sp)
  400354:	8fb10018 	lw	s1,24(sp)
  400358:	8fb00014 	lw	s0,20(sp)
  40035c:	00002025 	move	a0,zero
  400360:	27bd0020 	addiu	sp,sp,32
  400364:	08100190 	j	400640 <put_char>

00400368 <movimientoDisparo>:
  400368:	3c031001 	lui	v1,0x1001
  40036c:	90620023 	lbu	v0,35(v1)
  400370:	24420001 	addiu	v0,v0,1
  400374:	304200ff 	andi	v0,v0,0xff
  400378:	a0620023 	sb	v0,35(v1)
  40037c:	2403004c 	li	v1,76
  400380:	14430003 	bne	v0,v1,400390 <movimientoDisparo+0x28>
  400384:	3c021001 	lui	v0,0x1001
  400388:	24030064 	li	v1,100
  40038c:	a0430024 	sb	v1,36(v0)
  400390:	3c031001 	lui	v1,0x1001
  400394:	90620020 	lbu	v0,32(v1)
  400398:	24420001 	addiu	v0,v0,1
  40039c:	304200ff 	andi	v0,v0,0xff
  4003a0:	a0620020 	sb	v0,32(v1)
  4003a4:	2403004c 	li	v1,76
  4003a8:	14430003 	bne	v0,v1,4003b8 <movimientoDisparo+0x50>
  4003ac:	3c021001 	lui	v0,0x1001
  4003b0:	24030064 	li	v1,100
  4003b4:	a0430021 	sb	v1,33(v0)
  4003b8:	3c031001 	lui	v1,0x1001
  4003bc:	9062001e 	lbu	v0,30(v1)
  4003c0:	24420001 	addiu	v0,v0,1
  4003c4:	304200ff 	andi	v0,v0,0xff
  4003c8:	a062001e 	sb	v0,30(v1)
  4003cc:	2403004c 	li	v1,76
  4003d0:	14430003 	bne	v0,v1,4003e0 <movimientoDisparo+0x78>
  4003d4:	3c021001 	lui	v0,0x1001
  4003d8:	24030064 	li	v1,100
  4003dc:	a043001c 	sb	v1,28(v0)
  4003e0:	3c031001 	lui	v1,0x1001
  4003e4:	90620022 	lbu	v0,34(v1)
  4003e8:	24420001 	addiu	v0,v0,1
  4003ec:	304200ff 	andi	v0,v0,0xff
  4003f0:	a0620022 	sb	v0,34(v1)
  4003f4:	2403004c 	li	v1,76
  4003f8:	14430003 	bne	v0,v1,400408 <movimientoDisparo+0xa0>
  4003fc:	3c021001 	lui	v0,0x1001
  400400:	24030064 	li	v1,100
  400404:	a043001d 	sb	v1,29(v0)
  400408:	03e00008 	jr	ra

0040040c <startGame>:
  40040c:	2402000a 	li	v0,10
  400410:	3c031001 	lui	v1,0x1001
  400414:	27bdffc8 	addiu	sp,sp,-56
  400418:	a062001f 	sb	v0,31(v1)
  40041c:	3c031001 	lui	v1,0x1001
  400420:	a0620025 	sb	v0,37(v1)
  400424:	afb40020 	sw	s4,32(sp)
  400428:	24020064 	li	v0,100
  40042c:	afb3001c 	sw	s3,28(sp)
  400430:	afb20018 	sw	s2,24(sp)
  400434:	afb10014 	sw	s1,20(sp)
  400438:	3c121001 	lui	s2,0x1001
  40043c:	3c111001 	lui	s1,0x1001
  400440:	3c131001 	lui	s3,0x1001
  400444:	3c141001 	lui	s4,0x1001
  400448:	afbe0030 	sw	s8,48(sp)
  40044c:	afb7002c 	sw	s7,44(sp)
  400450:	afb60028 	sw	s6,40(sp)
  400454:	afb50024 	sw	s5,36(sp)
  400458:	afb00010 	sw	s0,16(sp)
  40045c:	afbf0034 	sw	ra,52(sp)
  400460:	a2220024 	sb	v0,36(s1)
  400464:	a2420021 	sb	v0,33(s2)
  400468:	a262001c 	sb	v0,28(s3)
  40046c:	a282001d 	sb	v0,29(s4)
  400470:	24100064 	li	s0,100
  400474:	0c10014a 	jal	400528 <keypad_init>
  400478:	3c151001 	lui	s5,0x1001
  40047c:	3c161001 	lui	s6,0x1001
  400480:	3c171001 	lui	s7,0x1001
  400484:	3c1e1001 	lui	s8,0x1001
  400488:	00002025 	move	a0,zero
  40048c:	00002825 	move	a1,zero
  400490:	0c100179 	jal	4005e4 <set_color>
  400494:	0c1001bf 	jal	4006fc <clear_screen>
  400498:	0c10000b 	jal	40002c <drawNave>
  40049c:	92240024 	lbu	a0,36(s1)
  4004a0:	10900003 	beq	a0,s0,4004b0 <startGame+0xa4>
  4004a4:	92a50023 	lbu	a1,35(s5)
  4004a8:	0c1000b6 	jal	4002d8 <drawDisparo>
  4004ac:	0c1000da 	jal	400368 <movimientoDisparo>
  4004b0:	92440021 	lbu	a0,33(s2)
  4004b4:	10900003 	beq	a0,s0,4004c4 <startGame+0xb8>
  4004b8:	92c50020 	lbu	a1,32(s6)
  4004bc:	0c1000b6 	jal	4002d8 <drawDisparo>
  4004c0:	0c1000da 	jal	400368 <movimientoDisparo>
  4004c4:	9264001c 	lbu	a0,28(s3)
  4004c8:	10900003 	beq	a0,s0,4004d8 <startGame+0xcc>
  4004cc:	92e5001e 	lbu	a1,30(s7)
  4004d0:	0c1000b6 	jal	4002d8 <drawDisparo>
  4004d4:	0c1000da 	jal	400368 <movimientoDisparo>
  4004d8:	9284001d 	lbu	a0,29(s4)
  4004dc:	10900003 	beq	a0,s0,4004ec <startGame+0xe0>
  4004e0:	93c50022 	lbu	a1,34(s8)
  4004e4:	0c1000b6 	jal	4002d8 <drawDisparo>
  4004e8:	0c1000da 	jal	400368 <movimientoDisparo>
  4004ec:	0c100058 	jal	400160 <move>
  4004f0:	24040064 	li	a0,100
  4004f4:	0c10013f 	jal	4004fc <delay_ms>
  4004f8:	1000ffe3 	b	400488 <startGame+0x7c>

004004fc <delay_ms>:
  4004fc:	3c08ffff 	lui	t0,0xffff
  400500:	8d090008 	lw	t1,8(t0)
  400504:	00000000 	nop
  400508:	01244820 	add	t1,t1,a0

0040050c <.dm_loop>:
  40050c:	8d0a0008 	lw	t2,8(t0)
  400510:	00000000 	nop
  400514:	0149582b 	sltu	t3,t2,t1
  400518:	1560fffc 	bnez	t3,40050c <.dm_loop>
  40051c:	00000000 	nop
  400520:	03e00008 	jr	ra
  400524:	00000000 	nop

00400528 <keypad_init>:
  400528:	3c081001 	lui	t0,0x1001
  40052c:	ad000018 	sw	zero,24(t0)
  400530:	03e00008 	jr	ra
  400534:	00000000 	nop

00400538 <keypad_getkey>:
  400538:	3c08ffff 	lui	t0,0xffff
  40053c:	81080004 	lb	t0,4(t0)
  400540:	24090008 	li	t1,8
  400544:	240b0001 	li	t3,1
  400548:	00005025 	move	t2,zero

0040054c <.gk_loop>:
  40054c:	11490018 	beq	t2,t1,4005b0 <.gk_end_loop>
  400550:	00000000 	nop
  400554:	010b6024 	and	t4,t0,t3
  400558:	000b5840 	sll	t3,t3,0x1
  40055c:	11800011 	beqz	t4,4005a4 <.gk_inc_loop>
  400560:	00000000 	nop
  400564:	3c081001 	lui	t0,0x1001
  400568:	8d080018 	lw	t0,24(t0)
  40056c:	3c09ffff 	lui	t1,0xffff
  400570:	8d290008 	lw	t1,8(t1)
  400574:	00000000 	nop
  400578:	0128582b 	sltu	t3,t1,t0
  40057c:	11600002 	beqz	t3,400588 <.set_key>
  400580:	00000000 	nop
  400584:	00001025 	move	v0,zero

00400588 <.set_key>:
  400588:	252900c8 	addiu	t1,t1,200
  40058c:	3c081001 	lui	t0,0x1001
  400590:	ad090018 	sw	t1,24(t0)
  400594:	01401025 	move	v0,t2
  400598:	24420001 	addiu	v0,v0,1
  40059c:	03e00008 	jr	ra
  4005a0:	00000000 	nop

004005a4 <.gk_inc_loop>:
  4005a4:	254a0001 	addiu	t2,t2,1
  4005a8:	08100153 	j	40054c <.gk_loop>
  4005ac:	00000000 	nop

004005b0 <.gk_end_loop>:
  4005b0:	00001025 	move	v0,zero
  4005b4:	03e00008 	jr	ra
  4005b8:	00000000 	nop

004005bc <divide>:
  4005bc:	acc00000 	sw	zero,0(a2)
  4005c0:	0085102b 	sltu	v0,a0,a1
  4005c4:	10400002 	beqz	v0,4005d0 <divide+0x14>
  4005c8:	ace40000 	sw	a0,0(a3)
  4005cc:	03e00008 	jr	ra
  4005d0:	8cc20000 	lw	v0,0(a2)
  4005d4:	00852023 	subu	a0,a0,a1
  4005d8:	24420001 	addiu	v0,v0,1
  4005dc:	acc20000 	sw	v0,0(a2)
  4005e0:	1000fff7 	b	4005c0 <divide+0x4>

004005e4 <set_color>:
  4005e4:	00052900 	sll	a1,a1,0x4
  4005e8:	3084000f 	andi	a0,a0,0xf
  4005ec:	00a42825 	or	a1,a1,a0
  4005f0:	3c021001 	lui	v0,0x1001
  4005f4:	a0450028 	sb	a1,40(v0)
  4005f8:	03e00008 	jr	ra

004005fc <get_color>:
  4005fc:	3c031001 	lui	v1,0x1001
  400600:	90620028 	lbu	v0,40(v1)
  400604:	3042000f 	andi	v0,v0,0xf
  400608:	a0820000 	sb	v0,0(a0)
  40060c:	90620028 	lbu	v0,40(v1)
  400610:	00021102 	srl	v0,v0,0x4
  400614:	a0a20000 	sb	v0,0(a1)
  400618:	03e00008 	jr	ra

0040061c <set_cursor>:
  40061c:	2c820028 	sltiu	v0,a0,40
  400620:	10400006 	beqz	v0,40063c <set_cursor+0x20>
  400624:	2ca20050 	sltiu	v0,a1,80
  400628:	10400004 	beqz	v0,40063c <set_cursor+0x20>
  40062c:	3c021001 	lui	v0,0x1001
  400630:	a0440027 	sb	a0,39(v0)
  400634:	3c021001 	lui	v0,0x1001
  400638:	a0450026 	sb	a1,38(v0)
  40063c:	03e00008 	jr	ra

00400640 <put_char>:
  400640:	3c071001 	lui	a3,0x1001
  400644:	2403000a 	li	v1,10
  400648:	90e20027 	lbu	v0,39(a3)
  40064c:	3c061001 	lui	a2,0x1001
  400650:	14830006 	bne	a0,v1,40066c <put_char+0x2c>
  400654:	2c430027 	sltiu	v1,v0,39
  400658:	10600002 	beqz	v1,400664 <put_char+0x24>
  40065c:	24420001 	addiu	v0,v0,1
  400660:	a0e20027 	sb	v0,39(a3)
  400664:	a0c00026 	sb	zero,38(a2)
  400668:	03e00008 	jr	ra
  40066c:	3c031001 	lui	v1,0x1001
  400670:	90630028 	lbu	v1,40(v1)
  400674:	90c50026 	lbu	a1,38(a2)
  400678:	00031a00 	sll	v1,v1,0x8
  40067c:	00642025 	or	a0,v1,a0
  400680:	00021880 	sll	v1,v0,0x2
  400684:	00621821 	addu	v1,v1,v0
  400688:	00031900 	sll	v1,v1,0x4
  40068c:	00651821 	addu	v1,v1,a1
  400690:	00031840 	sll	v1,v1,0x1
  400694:	3408b800 	li	t0,0xb800
  400698:	01031821 	addu	v1,t0,v1
  40069c:	a4640000 	sh	a0,0(v1)
  4006a0:	2ca3004f 	sltiu	v1,a1,79
  4006a4:	10600003 	beqz	v1,4006b4 <put_char+0x74>
  4006a8:	24a50001 	addiu	a1,a1,1
  4006ac:	a0c50026 	sb	a1,38(a2)
  4006b0:	03e00008 	jr	ra
  4006b4:	24420001 	addiu	v0,v0,1
  4006b8:	a0c00026 	sb	zero,38(a2)
  4006bc:	a0e20027 	sb	v0,39(a3)
  4006c0:	03e00008 	jr	ra

004006c4 <puts>:
  4006c4:	00804825 	move	t1,a0
  4006c8:	80840000 	lb	a0,0(a0)
  4006cc:	14800001 	bnez	a0,4006d4 <puts+0x10>
  4006d0:	03e00008 	jr	ra
  4006d4:	27bdffe8 	addiu	sp,sp,-24
  4006d8:	afbf0014 	sw	ra,20(sp)
  4006dc:	308400ff 	andi	a0,a0,0xff
  4006e0:	25290001 	addiu	t1,t1,1
  4006e4:	0c100190 	jal	400640 <put_char>
  4006e8:	81240000 	lb	a0,0(t1)
  4006ec:	1480fffb 	bnez	a0,4006dc <puts+0x18>
  4006f0:	8fbf0014 	lw	ra,20(sp)
  4006f4:	27bd0018 	addiu	sp,sp,24
  4006f8:	03e00008 	jr	ra

004006fc <clear_screen>:
  4006fc:	3c021001 	lui	v0,0x1001
  400700:	90420028 	lbu	v0,40(v0)
  400704:	3403b800 	li	v1,0xb800
  400708:	00021200 	sll	v0,v0,0x8
  40070c:	34420020 	ori	v0,v0,0x20
  400710:	3404cac0 	li	a0,0xcac0
  400714:	a4620000 	sh	v0,0(v1)
  400718:	24630002 	addiu	v1,v1,2
  40071c:	1464fffd 	bne	v1,a0,400714 <clear_screen+0x18>
  400720:	3c021001 	lui	v0,0x1001
  400724:	a0400027 	sb	zero,39(v0)
  400728:	3c021001 	lui	v0,0x1001
  40072c:	a0400026 	sb	zero,38(v0)
  400730:	03e00008 	jr	ra

Disassembly of section .data:

10010000 <next_key_time-0x18>:
10010000:	00400194 	0x400194
10010004:	004001b8 	0x4001b8
10010008:	004001d0 	0x4001d0
1001000c:	004001ec 	0x4001ec
10010010:	004001ac 	0x4001ac
10010014:	00400204 	0x400204

10010018 <next_key_time>:
10010018:	00000000 	nop

Disassembly of section .gnu.attributes:

00000000 <.gnu.attributes>:
   0:	41000000 	bc0f	4 <_gp+0x4>
   4:	0f676e75 	jal	d9db9d4 <clear_screen+0xd5db2d8>
   8:	00010000 	sll	zero,at,0x0
   c:	00070401 	0x70401

Disassembly of section .bss:

1001001c <disparoFila2>:
	...

1001001d <disparoFila3>:
	...

1001001e <disparoColu2>:
	...

1001001f <fila>:
	...

10010020 <disparoColu1>:
	...

10010021 <disparoFila1>:
	...

10010022 <disparoColu3>:
	...

10010023 <disparoColu>:
	...

10010024 <disparoFila>:
	...

10010025 <colu>:
	...

10010026 <cursor_col>:
	...

10010027 <cursor_row>:
	...

10010028 <chr_attr>:
	...
