
main:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <register_fini>:
   100b0:	ffff0797          	auipc	a5,0xffff0
   100b4:	f5078793          	addi	a5,a5,-176 # 0 <register_fini-0x100b0>
   100b8:	cb89                	c.beqz	a5,100ca <register_fini+0x1a>
   100ba:	00003517          	auipc	a0,0x3
   100be:	a0450513          	addi	a0,a0,-1532 # 12abe <__libc_fini_array>
   100c2:	0000a317          	auipc	t1,0xa
   100c6:	1e430067          	jalr	zero,484(t1) # 1a2a6 <atexit>
   100ca:	8082                	c.jr	ra

00000000000100cc <_start>:
   100cc:	00010197          	auipc	gp,0x10
   100d0:	ab418193          	addi	gp,gp,-1356 # 1fb80 <__global_pointer$>
   100d4:	00010517          	auipc	a0,0x10
   100d8:	21450513          	addi	a0,a0,532 # 202e8 <_PathLocale>
   100dc:	00010617          	auipc	a2,0x10
   100e0:	2a460613          	addi	a2,a2,676 # 20380 <__BSS_END__>
   100e4:	8e09                	c.sub	a2,a0
   100e6:	4581                	c.li	a1,0
   100e8:	00000097          	auipc	ra,0x0
   100ec:	240080e7          	jalr	ra,576(ra) # 10328 <memset>
   100f0:	0000a517          	auipc	a0,0xa
   100f4:	1b650513          	addi	a0,a0,438 # 1a2a6 <atexit>
   100f8:	c909                	c.beqz	a0,1010a <_start+0x3e>
   100fa:	00003517          	auipc	a0,0x3
   100fe:	9c450513          	addi	a0,a0,-1596 # 12abe <__libc_fini_array>
   10102:	0000a097          	auipc	ra,0xa
   10106:	1a4080e7          	jalr	ra,420(ra) # 1a2a6 <atexit>
   1010a:	00000097          	auipc	ra,0x0
   1010e:	1b4080e7          	jalr	ra,436(ra) # 102be <__libc_init_array>
   10112:	4502                	c.lwsp	a0,0(sp)
   10114:	002c                	c.addi4spn	a1,sp,8
   10116:	4601                	c.li	a2,0
   10118:	00000097          	auipc	ra,0x0
   1011c:	070080e7          	jalr	ra,112(ra) # 10188 <main>
   10120:	00000317          	auipc	t1,0x0
   10124:	17430067          	jalr	zero,372(t1) # 10294 <exit>

0000000000010128 <__do_global_dtors_aux>:
   10128:	1141                	c.addi	sp,-16
   1012a:	e022                	c.sdsp	s0,0(sp)
   1012c:	00010417          	auipc	s0,0x10
   10130:	1ec40413          	addi	s0,s0,492 # 20318 <completed.1>
   10134:	00044783          	lbu	a5,0(s0)
   10138:	e406                	c.sdsp	ra,8(sp)
   1013a:	e38d                	c.bnez	a5,1015c <__do_global_dtors_aux+0x34>
   1013c:	ffff0797          	auipc	a5,0xffff0
   10140:	ec478793          	addi	a5,a5,-316 # 0 <register_fini-0x100b0>
   10144:	cb89                	c.beqz	a5,10156 <__do_global_dtors_aux+0x2e>
   10146:	0000f517          	auipc	a0,0xf
   1014a:	02a50513          	addi	a0,a0,42 # 1f170 <__FRAME_END__>
   1014e:	00000097          	auipc	ra,0x0
   10152:	000000e7          	jalr	ra,0(zero) # 0 <register_fini-0x100b0>
   10156:	4785                	c.li	a5,1
   10158:	00f40023          	sb	a5,0(s0)
   1015c:	60a2                	c.ldsp	ra,8(sp)
   1015e:	6402                	c.ldsp	s0,0(sp)
   10160:	0141                	c.addi	sp,16
   10162:	8082                	c.jr	ra

0000000000010164 <frame_dummy>:
   10164:	ffff0797          	auipc	a5,0xffff0
   10168:	e9c78793          	addi	a5,a5,-356 # 0 <register_fini-0x100b0>
   1016c:	cf89                	c.beqz	a5,10186 <frame_dummy+0x22>
   1016e:	00010597          	auipc	a1,0x10
   10172:	1b258593          	addi	a1,a1,434 # 20320 <object.0>
   10176:	0000f517          	auipc	a0,0xf
   1017a:	ffa50513          	addi	a0,a0,-6 # 1f170 <__FRAME_END__>
   1017e:	00000317          	auipc	t1,0x0
   10182:	00000067          	jalr	zero,0(zero) # 0 <register_fini-0x100b0>
   10186:	8082                	c.jr	ra

0000000000010188 <main>:
   10188:	715d                	c.addi16sp	sp,-80
   1018a:	e486                	c.sdsp	ra,72(sp)
   1018c:	e0a2                	c.sdsp	s0,64(sp)
   1018e:	fc26                	c.sdsp	s1,56(sp)
   10190:	f84a                	c.sdsp	s2,48(sp)
   10192:	f44e                	c.sdsp	s3,40(sp)
   10194:	0001d7b7          	lui	a5,0x1d
   10198:	28878793          	addi	a5,a5,648 # 1d288 <__clzdi2+0x70>
   1019c:	6398                	c.ld	a4,0(a5)
   1019e:	e43a                	c.sdsp	a4,8(sp)
   101a0:	6798                	c.ld	a4,8(a5)
   101a2:	e83a                	c.sdsp	a4,16(sp)
   101a4:	4b9c                	c.lw	a5,16(a5)
   101a6:	cc3e                	c.swsp	a5,24(sp)
   101a8:	0001d537          	lui	a0,0x1d
   101ac:	25050513          	addi	a0,a0,592 # 1d250 <__clzdi2+0x38>
   101b0:	00000097          	auipc	ra,0x0
   101b4:	248080e7          	jalr	ra,584(ra) # 103f8 <printf>
   101b8:	45a2                	c.lwsp	a1,8(sp)
   101ba:	0001d537          	lui	a0,0x1d
   101be:	26050513          	addi	a0,a0,608 # 1d260 <__clzdi2+0x48>
   101c2:	00000097          	auipc	ra,0x0
   101c6:	236080e7          	jalr	ra,566(ra) # 103f8 <printf>
   101ca:	0020                	c.addi4spn	s0,sp,8
   101cc:	01810993          	addi	s3,sp,24
   101d0:	0001d937          	lui	s2,0x1d
   101d4:	0001d4b7          	lui	s1,0x1d
   101d8:	26890513          	addi	a0,s2,616 # 1d268 <__clzdi2+0x50>
   101dc:	00000097          	auipc	ra,0x0
   101e0:	21c080e7          	jalr	ra,540(ra) # 103f8 <printf>
   101e4:	404c                	c.lw	a1,4(s0)
   101e6:	26048513          	addi	a0,s1,608 # 1d260 <__clzdi2+0x48>
   101ea:	00000097          	auipc	ra,0x0
   101ee:	20e080e7          	jalr	ra,526(ra) # 103f8 <printf>
   101f2:	0411                	c.addi	s0,4
   101f4:	ff3412e3          	bne	s0,s3,101d8 <main+0x50>
   101f8:	0001d537          	lui	a0,0x1d
   101fc:	27050513          	addi	a0,a0,624 # 1d270 <__clzdi2+0x58>
   10200:	00000097          	auipc	ra,0x0
   10204:	2b8080e7          	jalr	ra,696(ra) # 104b8 <puts>
   10208:	4595                	c.li	a1,5
   1020a:	0028                	c.addi4spn	a0,sp,8
   1020c:	00000097          	auipc	ra,0x0
   10210:	02a080e7          	jalr	ra,42(ra) # 10236 <Median>
   10214:	85aa                	c.mv	a1,a0
   10216:	0001d537          	lui	a0,0x1d
   1021a:	27850513          	addi	a0,a0,632 # 1d278 <__clzdi2+0x60>
   1021e:	00000097          	auipc	ra,0x0
   10222:	1da080e7          	jalr	ra,474(ra) # 103f8 <printf>
   10226:	4501                	c.li	a0,0
   10228:	60a6                	c.ldsp	ra,72(sp)
   1022a:	6406                	c.ldsp	s0,64(sp)
   1022c:	74e2                	c.ldsp	s1,56(sp)
   1022e:	7942                	c.ldsp	s2,48(sp)
   10230:	79a2                	c.ldsp	s3,40(sp)
   10232:	6161                	c.addi16sp	sp,80
   10234:	8082                	c.jr	ra

0000000000010236 <Median>:
   10236:	8e2a                	c.mv	t3,a0
   10238:	04b05c63          	bge	zero,a1,10290 <Median+0x5a>
   1023c:	fff5861b          	addiw	a2,a1,-1
   10240:	02061793          	slli	a5,a2,0x20
   10244:	01e7d613          	srli	a2,a5,0x1e
   10248:	00450793          	addi	a5,a0,4
   1024c:	963e                	c.add	a2,a5
   1024e:	88aa                	c.mv	a7,a0
   10250:	4501                	c.li	a0,0
   10252:	4301                	c.li	t1,0
   10254:	4e89                	c.li	t4,2
   10256:	a03d                	c.j	10284 <Median+0x4e>
   10258:	0007d363          	bge	a5,zero,1025e <Median+0x28>
   1025c:	2805                	c.addiw	a6,1
   1025e:	0711                	c.addi	a4,4
   10260:	00c70963          	beq	a4,a2,10272 <Median+0x3c>
   10264:	431c                	c.lw	a5,0(a4)
   10266:	40f587bb          	subw	a5,a1,a5
   1026a:	fef057e3          	bge	zero,a5,10258 <Median+0x22>
   1026e:	2685                	c.addiw	a3,1
   10270:	b7fd                	c.j	1025e <Median+0x28>
   10272:	410686bb          	subw	a3,a3,a6
   10276:	2685                	c.addiw	a3,1
   10278:	00dee363          	bltu	t4,a3,1027e <Median+0x48>
   1027c:	852e                	c.mv	a0,a1
   1027e:	0891                	c.addi	a7,4
   10280:	00c88963          	beq	a7,a2,10292 <Median+0x5c>
   10284:	0008a583          	lw	a1,0(a7)
   10288:	8772                	c.mv	a4,t3
   1028a:	869a                	c.mv	a3,t1
   1028c:	881a                	c.mv	a6,t1
   1028e:	bfd9                	c.j	10264 <Median+0x2e>
   10290:	4501                	c.li	a0,0
   10292:	8082                	c.jr	ra

0000000000010294 <exit>:
   10294:	1141                	c.addi	sp,-16
   10296:	4581                	c.li	a1,0
   10298:	e022                	c.sdsp	s0,0(sp)
   1029a:	e406                	c.sdsp	ra,8(sp)
   1029c:	842a                	c.mv	s0,a0
   1029e:	00002097          	auipc	ra,0x2
   102a2:	238080e7          	jalr	ra,568(ra) # 124d6 <__call_exitprocs>
   102a6:	00010517          	auipc	a0,0x10
   102aa:	01a53503          	ld	a0,26(a0) # 202c0 <_global_impure_ptr>
   102ae:	6d3c                	c.ld	a5,88(a0)
   102b0:	c391                	c.beqz	a5,102b4 <exit+0x20>
   102b2:	9782                	c.jalr	a5
   102b4:	8522                	c.mv	a0,s0
   102b6:	0000c097          	auipc	ra,0xc
   102ba:	964080e7          	jalr	ra,-1692(ra) # 1bc1a <_exit>

00000000000102be <__libc_init_array>:
   102be:	1101                	c.addi	sp,-32
   102c0:	e822                	c.sdsp	s0,16(sp)
   102c2:	e04a                	c.sdsp	s2,0(sp)
   102c4:	0000f417          	auipc	s0,0xf
   102c8:	eb040413          	addi	s0,s0,-336 # 1f174 <__preinit_array_end>
   102cc:	0000f917          	auipc	s2,0xf
   102d0:	ea890913          	addi	s2,s2,-344 # 1f174 <__preinit_array_end>
   102d4:	40890933          	sub	s2,s2,s0
   102d8:	ec06                	c.sdsp	ra,24(sp)
   102da:	e426                	c.sdsp	s1,8(sp)
   102dc:	40395913          	srai	s2,s2,0x3
   102e0:	00090963          	beq	s2,zero,102f2 <__libc_init_array+0x34>
   102e4:	4481                	c.li	s1,0
   102e6:	601c                	c.ld	a5,0(s0)
   102e8:	0485                	c.addi	s1,1
   102ea:	0421                	c.addi	s0,8
   102ec:	9782                	c.jalr	a5
   102ee:	fe991ce3          	bne	s2,s1,102e6 <__libc_init_array+0x28>
   102f2:	0000f417          	auipc	s0,0xf
   102f6:	e8640413          	addi	s0,s0,-378 # 1f178 <__init_array_start>
   102fa:	0000f917          	auipc	s2,0xf
   102fe:	e8e90913          	addi	s2,s2,-370 # 1f188 <__do_global_dtors_aux_fini_array_entry>
   10302:	40890933          	sub	s2,s2,s0
   10306:	40395913          	srai	s2,s2,0x3
   1030a:	00090963          	beq	s2,zero,1031c <__libc_init_array+0x5e>
   1030e:	4481                	c.li	s1,0
   10310:	601c                	c.ld	a5,0(s0)
   10312:	0485                	c.addi	s1,1
   10314:	0421                	c.addi	s0,8
   10316:	9782                	c.jalr	a5
   10318:	fe991ce3          	bne	s2,s1,10310 <__libc_init_array+0x52>
   1031c:	60e2                	c.ldsp	ra,24(sp)
   1031e:	6442                	c.ldsp	s0,16(sp)
   10320:	64a2                	c.ldsp	s1,8(sp)
   10322:	6902                	c.ldsp	s2,0(sp)
   10324:	6105                	c.addi16sp	sp,32
   10326:	8082                	c.jr	ra

0000000000010328 <memset>:
   10328:	433d                	c.li	t1,15
   1032a:	872a                	c.mv	a4,a0
   1032c:	02c37163          	bgeu	t1,a2,1034e <memset+0x26>
   10330:	00f77793          	andi	a5,a4,15
   10334:	e3c1                	c.bnez	a5,103b4 <memset+0x8c>
   10336:	e1bd                	c.bnez	a1,1039c <memset+0x74>
   10338:	ff067693          	andi	a3,a2,-16
   1033c:	8a3d                	c.andi	a2,15
   1033e:	96ba                	c.add	a3,a4
   10340:	e30c                	c.sd	a1,0(a4)
   10342:	e70c                	c.sd	a1,8(a4)
   10344:	0741                	c.addi	a4,16
   10346:	fed76de3          	bltu	a4,a3,10340 <memset+0x18>
   1034a:	e211                	c.bnez	a2,1034e <memset+0x26>
   1034c:	8082                	c.jr	ra
   1034e:	40c306b3          	sub	a3,t1,a2
   10352:	068a                	c.slli	a3,0x2
   10354:	00000297          	auipc	t0,0x0
   10358:	9696                	c.add	a3,t0
   1035a:	00a68067          	jalr	zero,10(a3)
   1035e:	00b70723          	sb	a1,14(a4)
   10362:	00b706a3          	sb	a1,13(a4)
   10366:	00b70623          	sb	a1,12(a4)
   1036a:	00b705a3          	sb	a1,11(a4)
   1036e:	00b70523          	sb	a1,10(a4)
   10372:	00b704a3          	sb	a1,9(a4)
   10376:	00b70423          	sb	a1,8(a4)
   1037a:	00b703a3          	sb	a1,7(a4)
   1037e:	00b70323          	sb	a1,6(a4)
   10382:	00b702a3          	sb	a1,5(a4)
   10386:	00b70223          	sb	a1,4(a4)
   1038a:	00b701a3          	sb	a1,3(a4)
   1038e:	00b70123          	sb	a1,2(a4)
   10392:	00b700a3          	sb	a1,1(a4)
   10396:	00b70023          	sb	a1,0(a4)
   1039a:	8082                	c.jr	ra
   1039c:	0ff5f593          	andi	a1,a1,255
   103a0:	00859693          	slli	a3,a1,0x8
   103a4:	8dd5                	c.or	a1,a3
   103a6:	01059693          	slli	a3,a1,0x10
   103aa:	8dd5                	c.or	a1,a3
   103ac:	02059693          	slli	a3,a1,0x20
   103b0:	8dd5                	c.or	a1,a3
   103b2:	b759                	c.j	10338 <memset+0x10>
   103b4:	00279693          	slli	a3,a5,0x2
   103b8:	00000297          	auipc	t0,0x0
   103bc:	9696                	c.add	a3,t0
   103be:	8286                	c.mv	t0,ra
   103c0:	fa2680e7          	jalr	ra,-94(a3)
   103c4:	8096                	c.mv	ra,t0
   103c6:	17c1                	c.addi	a5,-16
   103c8:	8f1d                	c.sub	a4,a5
   103ca:	963e                	c.add	a2,a5
   103cc:	f8c371e3          	bgeu	t1,a2,1034e <memset+0x26>
   103d0:	b79d                	c.j	10336 <memset+0xe>

00000000000103d2 <_printf_r>:
   103d2:	715d                	c.addi16sp	sp,-80
   103d4:	f032                	c.sdsp	a2,32(sp)
   103d6:	f436                	c.sdsp	a3,40(sp)
   103d8:	f83a                	c.sdsp	a4,48(sp)
   103da:	fc3e                	c.sdsp	a5,56(sp)
   103dc:	e0c2                	c.sdsp	a6,64(sp)
   103de:	e4c6                	c.sdsp	a7,72(sp)
   103e0:	862e                	c.mv	a2,a1
   103e2:	690c                	c.ld	a1,16(a0)
   103e4:	1014                	c.addi4spn	a3,sp,32
   103e6:	ec06                	c.sdsp	ra,24(sp)
   103e8:	e436                	c.sdsp	a3,8(sp)
   103ea:	00000097          	auipc	ra,0x0
   103ee:	174080e7          	jalr	ra,372(ra) # 1055e <_vfprintf_r>
   103f2:	60e2                	c.ldsp	ra,24(sp)
   103f4:	6161                	c.addi16sp	sp,80
   103f6:	8082                	c.jr	ra

00000000000103f8 <printf>:
   103f8:	711d                	c.addi16sp	sp,-96
   103fa:	f832                	c.sdsp	a2,48(sp)
   103fc:	fc36                	c.sdsp	a3,56(sp)
   103fe:	00010317          	auipc	t1,0x10
   10402:	ed233303          	ld	t1,-302(t1) # 202d0 <_impure_ptr>
   10406:	f42e                	c.sdsp	a1,40(sp)
   10408:	e0ba                	c.sdsp	a4,64(sp)
   1040a:	e4be                	c.sdsp	a5,72(sp)
   1040c:	e8c2                	c.sdsp	a6,80(sp)
   1040e:	ecc6                	c.sdsp	a7,88(sp)
   10410:	01033583          	ld	a1,16(t1)
   10414:	1034                	c.addi4spn	a3,sp,40
   10416:	862a                	c.mv	a2,a0
   10418:	851a                	c.mv	a0,t1
   1041a:	ec06                	c.sdsp	ra,24(sp)
   1041c:	e436                	c.sdsp	a3,8(sp)
   1041e:	00000097          	auipc	ra,0x0
   10422:	140080e7          	jalr	ra,320(ra) # 1055e <_vfprintf_r>
   10426:	60e2                	c.ldsp	ra,24(sp)
   10428:	6125                	c.addi16sp	sp,96
   1042a:	8082                	c.jr	ra

000000000001042c <_puts_r>:
   1042c:	7159                	c.addi16sp	sp,-112
   1042e:	f0a2                	c.sdsp	s0,96(sp)
   10430:	842a                	c.mv	s0,a0
   10432:	852e                	c.mv	a0,a1
   10434:	eca6                	c.sdsp	s1,88(sp)
   10436:	f486                	c.sdsp	ra,104(sp)
   10438:	84ae                	c.mv	s1,a1
   1043a:	00000097          	auipc	ra,0x0
   1043e:	090080e7          	jalr	ra,144(ra) # 104ca <strlen>
   10442:	00150713          	addi	a4,a0,1
   10446:	0000d697          	auipc	a3,0xd
   1044a:	e5a68693          	addi	a3,a3,-422 # 1d2a0 <__clzdi2+0x88>
   1044e:	f43a                	c.sdsp	a4,40(sp)
   10450:	483c                	c.lw	a5,80(s0)
   10452:	1818                	c.addi4spn	a4,sp,48
   10454:	e0b6                	c.sdsp	a3,64(sp)
   10456:	ec3a                	c.sdsp	a4,24(sp)
   10458:	4685                	c.li	a3,1
   1045a:	4709                	c.li	a4,2
   1045c:	f826                	c.sdsp	s1,48(sp)
   1045e:	fc2a                	c.sdsp	a0,56(sp)
   10460:	e4b6                	c.sdsp	a3,72(sp)
   10462:	d03a                	c.swsp	a4,32(sp)
   10464:	680c                	c.ld	a1,16(s0)
   10466:	cf9d                	c.beqz	a5,104a4 <_puts_r+0x78>
   10468:	01059783          	lh	a5,16(a1)
   1046c:	03279713          	slli	a4,a5,0x32
   10470:	00074d63          	blt	a4,zero,1048a <_puts_r+0x5e>
   10474:	0ac5a703          	lw	a4,172(a1)
   10478:	6689                	c.lui	a3,0x2
   1047a:	8fd5                	c.or	a5,a3
   1047c:	76f9                	c.lui	a3,0xffffe
   1047e:	16fd                	c.addi	a3,-1
   10480:	8f75                	c.and	a4,a3
   10482:	00f59823          	sh	a5,16(a1)
   10486:	0ae5a623          	sw	a4,172(a1)
   1048a:	0830                	c.addi4spn	a2,sp,24
   1048c:	8522                	c.mv	a0,s0
   1048e:	00003097          	auipc	ra,0x3
   10492:	9c6080e7          	jalr	ra,-1594(ra) # 12e54 <__sfvwrite_r>
   10496:	ed19                	c.bnez	a0,104b4 <_puts_r+0x88>
   10498:	4529                	c.li	a0,10
   1049a:	70a6                	c.ldsp	ra,104(sp)
   1049c:	7406                	c.ldsp	s0,96(sp)
   1049e:	64e6                	c.ldsp	s1,88(sp)
   104a0:	6165                	c.addi16sp	sp,112
   104a2:	8082                	c.jr	ra
   104a4:	8522                	c.mv	a0,s0
   104a6:	e42e                	c.sdsp	a1,8(sp)
   104a8:	00002097          	auipc	ra,0x2
   104ac:	5d0080e7          	jalr	ra,1488(ra) # 12a78 <__sinit>
   104b0:	65a2                	c.ldsp	a1,8(sp)
   104b2:	bf5d                	c.j	10468 <_puts_r+0x3c>
   104b4:	557d                	c.li	a0,-1
   104b6:	b7d5                	c.j	1049a <_puts_r+0x6e>

00000000000104b8 <puts>:
   104b8:	85aa                	c.mv	a1,a0
   104ba:	00010517          	auipc	a0,0x10
   104be:	e1653503          	ld	a0,-490(a0) # 202d0 <_impure_ptr>
   104c2:	00000317          	auipc	t1,0x0
   104c6:	f6a30067          	jalr	zero,-150(t1) # 1042c <_puts_r>

00000000000104ca <strlen>:
   104ca:	00757793          	andi	a5,a0,7
   104ce:	872a                	c.mv	a4,a0
   104d0:	ebb9                	c.bnez	a5,10526 <strlen+0x5c>
   104d2:	00010697          	auipc	a3,0x10
   104d6:	dbe6b683          	ld	a3,-578(a3) # 20290 <__SDATA_BEGIN__>
   104da:	55fd                	c.li	a1,-1
   104dc:	6310                	c.ld	a2,0(a4)
   104de:	0721                	c.addi	a4,8
   104e0:	00d677b3          	and	a5,a2,a3
   104e4:	97b6                	c.add	a5,a3
   104e6:	8fd1                	c.or	a5,a2
   104e8:	8fd5                	c.or	a5,a3
   104ea:	feb789e3          	beq	a5,a1,104dc <strlen+0x12>
   104ee:	ff874683          	lbu	a3,-8(a4)
   104f2:	40a707b3          	sub	a5,a4,a0
   104f6:	c6a9                	c.beqz	a3,10540 <strlen+0x76>
   104f8:	ff974683          	lbu	a3,-7(a4)
   104fc:	ce9d                	c.beqz	a3,1053a <strlen+0x70>
   104fe:	ffa74683          	lbu	a3,-6(a4)
   10502:	c6a9                	c.beqz	a3,1054c <strlen+0x82>
   10504:	ffb74683          	lbu	a3,-5(a4)
   10508:	ce9d                	c.beqz	a3,10546 <strlen+0x7c>
   1050a:	ffc74683          	lbu	a3,-4(a4)
   1050e:	ffd74603          	lbu	a2,-3(a4)
   10512:	ffe74503          	lbu	a0,-2(a4)
   10516:	ce95                	c.beqz	a3,10552 <strlen+0x88>
   10518:	c221                	c.beqz	a2,10558 <strlen+0x8e>
   1051a:	00a03533          	sltu	a0,zero,a0
   1051e:	953e                	c.add	a0,a5
   10520:	1579                	c.addi	a0,-2
   10522:	8082                	c.jr	ra
   10524:	d6dd                	c.beqz	a3,104d2 <strlen+0x8>
   10526:	00074783          	lbu	a5,0(a4)
   1052a:	0705                	c.addi	a4,1
   1052c:	00777693          	andi	a3,a4,7
   10530:	fbf5                	c.bnez	a5,10524 <strlen+0x5a>
   10532:	8f09                	c.sub	a4,a0
   10534:	fff70513          	addi	a0,a4,-1
   10538:	8082                	c.jr	ra
   1053a:	ff978513          	addi	a0,a5,-7
   1053e:	8082                	c.jr	ra
   10540:	ff878513          	addi	a0,a5,-8
   10544:	8082                	c.jr	ra
   10546:	ffb78513          	addi	a0,a5,-5
   1054a:	8082                	c.jr	ra
   1054c:	ffa78513          	addi	a0,a5,-6
   10550:	8082                	c.jr	ra
   10552:	ffc78513          	addi	a0,a5,-4
   10556:	8082                	c.jr	ra
   10558:	ffd78513          	addi	a0,a5,-3
   1055c:	8082                	c.jr	ra

000000000001055e <_vfprintf_r>:
   1055e:	d9010113          	addi	sp,sp,-624
   10562:	26113423          	sd	ra,616(sp)
   10566:	23613823          	sd	s6,560(sp)
   1056a:	23713423          	sd	s7,552(sp)
   1056e:	23813023          	sd	s8,544(sp)
   10572:	8b2e                	c.mv	s6,a1
   10574:	8bb2                	c.mv	s7,a2
   10576:	e436                	c.sdsp	a3,8(sp)
   10578:	26813023          	sd	s0,608(sp)
   1057c:	24913c23          	sd	s1,600(sp)
   10580:	25213823          	sd	s2,592(sp)
   10584:	25313423          	sd	s3,584(sp)
   10588:	25413023          	sd	s4,576(sp)
   1058c:	23513c23          	sd	s5,568(sp)
   10590:	21913c23          	sd	s9,536(sp)
   10594:	21a13823          	sd	s10,528(sp)
   10598:	21b13423          	sd	s11,520(sp)
   1059c:	8c2a                	c.mv	s8,a0
   1059e:	00005097          	auipc	ra,0x5
   105a2:	f20080e7          	jalr	ra,-224(ra) # 154be <_localeconv_r>
   105a6:	611c                	c.ld	a5,0(a0)
   105a8:	853e                	c.mv	a0,a5
   105aa:	e0be                	c.sdsp	a5,64(sp)
   105ac:	00000097          	auipc	ra,0x0
   105b0:	f1e080e7          	jalr	ra,-226(ra) # 104ca <strlen>
   105b4:	fc2a                	c.sdsp	a0,56(sp)
   105b6:	f982                	c.sdsp	zero,240(sp)
   105b8:	fd82                	c.sdsp	zero,248(sp)
   105ba:	000c0663          	beq	s8,zero,105c6 <_vfprintf_r+0x68>
   105be:	050c2783          	lw	a5,80(s8)
   105c2:	60078063          	beq	a5,zero,10bc2 <_vfprintf_r+0x664>
   105c6:	010b1703          	lh	a4,16(s6)
   105ca:	6689                	c.lui	a3,0x2
   105cc:	03071793          	slli	a5,a4,0x30
   105d0:	93c1                	c.srli	a5,0x30
   105d2:	00d7f633          	and	a2,a5,a3
   105d6:	e215                	c.bnez	a2,105fa <_vfprintf_r+0x9c>
   105d8:	0acb2603          	lw	a2,172(s6)
   105dc:	00d767b3          	or	a5,a4,a3
   105e0:	0107979b          	slliw	a5,a5,0x10
   105e4:	7779                	c.lui	a4,0xffffe
   105e6:	4107d79b          	sraiw	a5,a5,0x10
   105ea:	177d                	c.addi	a4,-1
   105ec:	8f71                	c.and	a4,a2
   105ee:	00fb1823          	sh	a5,16(s6)
   105f2:	17c2                	c.slli	a5,0x30
   105f4:	0aeb2623          	sw	a4,172(s6)
   105f8:	93c1                	c.srli	a5,0x30
   105fa:	0087f713          	andi	a4,a5,8
   105fe:	26070563          	beq	a4,zero,10868 <_vfprintf_r+0x30a>
   10602:	018b3703          	ld	a4,24(s6)
   10606:	26070163          	beq	a4,zero,10868 <_vfprintf_r+0x30a>
   1060a:	8be9                	c.andi	a5,26
   1060c:	4729                	c.li	a4,10
   1060e:	26e78c63          	beq	a5,a4,10886 <_vfprintf_r+0x328>
   10612:	031c                	c.addi4spn	a5,sp,384
   10614:	8dde                	c.mv	s11,s7
   10616:	e23e                	c.sdsp	a5,256(sp)
   10618:	833e                	c.mv	t1,a5
   1061a:	000dc783          	lbu	a5,0(s11)
   1061e:	ea02                	c.sdsp	zero,272(sp)
   10620:	10012423          	sw	zero,264(sp)
   10624:	f002                	c.sdsp	zero,32(sp)
   10626:	e482                	c.sdsp	zero,72(sp)
   10628:	e882                	c.sdsp	zero,80(sp)
   1062a:	ec82                	c.sdsp	zero,88(sp)
   1062c:	f882                	c.sdsp	zero,112(sp)
   1062e:	fc82                	c.sdsp	zero,120(sp)
   10630:	e002                	c.sdsp	zero,0(sp)
   10632:	4ac1                	c.li	s5,16
   10634:	1c078b63          	beq	a5,zero,1080a <_vfprintf_r+0x2ac>
   10638:	846e                	c.mv	s0,s11
   1063a:	02500713          	addi	a4,zero,37
   1063e:	26e78263          	beq	a5,a4,108a2 <_vfprintf_r+0x344>
   10642:	00144783          	lbu	a5,1(s0)
   10646:	0405                	c.addi	s0,1
   10648:	fbfd                	c.bnez	a5,1063e <_vfprintf_r+0xe0>
   1064a:	41b404bb          	subw	s1,s0,s11
   1064e:	1a048e63          	beq	s1,zero,1080a <_vfprintf_r+0x2ac>
   10652:	6752                	c.ldsp	a4,272(sp)
   10654:	10812783          	lw	a5,264(sp)
   10658:	01b33023          	sd	s11,0(t1)
   1065c:	9726                	c.add	a4,s1
   1065e:	2785                	c.addiw	a5,1
   10660:	00933423          	sd	s1,8(t1)
   10664:	ea3a                	c.sdsp	a4,272(sp)
   10666:	10f12423          	sw	a5,264(sp)
   1066a:	0007871b          	addiw	a4,a5,0
   1066e:	479d                	c.li	a5,7
   10670:	0341                	c.addi	t1,16
   10672:	22e7cf63          	blt	a5,a4,108b0 <_vfprintf_r+0x352>
   10676:	6702                	c.ldsp	a4,0(sp)
   10678:	00044783          	lbu	a5,0(s0)
   1067c:	9f25                	c.addw	a4,s1
   1067e:	e03a                	c.sdsp	a4,0(sp)
   10680:	18078563          	beq	a5,zero,1080a <_vfprintf_r+0x2ac>
   10684:	00144e03          	lbu	t3,1(s0)
   10688:	0c0107a3          	sb	zero,207(sp)
   1068c:	0405                	c.addi	s0,1
   1068e:	5d7d                	c.li	s10,-1
   10690:	4901                	c.li	s2,0
   10692:	4481                	c.li	s1,0
   10694:	49a5                	c.li	s3,9
   10696:	02a00a13          	addi	s4,zero,42
   1069a:	8b9a                	c.mv	s7,t1
   1069c:	0405                	c.addi	s0,1
   1069e:	000e0c9b          	addiw	s9,t3,0
   106a2:	05a00693          	addi	a3,zero,90
   106a6:	fe0c879b          	addiw	a5,s9,-32
   106aa:	0007871b          	addiw	a4,a5,0
   106ae:	04e6e863          	bltu	a3,a4,106fe <_vfprintf_r+0x1a0>
   106b2:	02079713          	slli	a4,a5,0x20
   106b6:	01e75793          	srli	a5,a4,0x1e
   106ba:	0000d717          	auipc	a4,0xd
   106be:	c4e70713          	addi	a4,a4,-946 # 1d308 <__clzdi2+0xf0>
   106c2:	97ba                	c.add	a5,a4
   106c4:	439c                	c.lw	a5,0(a5)
   106c6:	97ba                	c.add	a5,a4
   106c8:	8782                	c.jr	a5
   106ca:	4901                	c.li	s2,0
   106cc:	00044703          	lbu	a4,0(s0)
   106d0:	0029179b          	slliw	a5,s2,0x2
   106d4:	012787bb          	addw	a5,a5,s2
   106d8:	fd0c8c9b          	addiw	s9,s9,-48
   106dc:	0017979b          	slliw	a5,a5,0x1
   106e0:	fd07061b          	addiw	a2,a4,-48
   106e4:	00fc893b          	addw	s2,s9,a5
   106e8:	0405                	c.addi	s0,1
   106ea:	00070c9b          	addiw	s9,a4,0
   106ee:	fcc9ffe3          	bgeu	s3,a2,106cc <_vfprintf_r+0x16e>
   106f2:	fe0c879b          	addiw	a5,s9,-32
   106f6:	0007871b          	addiw	a4,a5,0
   106fa:	fae6fce3          	bgeu	a3,a4,106b2 <_vfprintf_r+0x154>
   106fe:	835e                	c.mv	t1,s7
   10700:	100c8563          	beq	s9,zero,1080a <_vfprintf_r+0x2ac>
   10704:	11910c23          	sb	s9,280(sp)
   10708:	0c0107a3          	sb	zero,207(sp)
   1070c:	4985                	c.li	s3,1
   1070e:	4a05                	c.li	s4,1
   10710:	11810d93          	addi	s11,sp,280
   10714:	e802                	c.sdsp	zero,16(sp)
   10716:	4d01                	c.li	s10,0
   10718:	f802                	c.sdsp	zero,48(sp)
   1071a:	f402                	c.sdsp	zero,40(sp)
   1071c:	ec02                	c.sdsp	zero,24(sp)
   1071e:	0024ff93          	andi	t6,s1,2
   10722:	000f8363          	beq	t6,zero,10728 <_vfprintf_r+0x1ca>
   10726:	2989                	c.addiw	s3,2
   10728:	0844ff13          	andi	t5,s1,132
   1072c:	67d2                	c.ldsp	a5,272(sp)
   1072e:	000f1663          	bne	t5,zero,1073a <_vfprintf_r+0x1dc>
   10732:	413906bb          	subw	a3,s2,s3
   10736:	22d048e3          	blt	zero,a3,11166 <_vfprintf_r+0xc08>
   1073a:	0cf14703          	lbu	a4,207(sp)
   1073e:	c70d                	c.beqz	a4,10768 <_vfprintf_r+0x20a>
   10740:	10812703          	lw	a4,264(sp)
   10744:	0cf10693          	addi	a3,sp,207
   10748:	00d33023          	sd	a3,0(t1)
   1074c:	2705                	c.addiw	a4,1
   1074e:	4685                	c.li	a3,1
   10750:	0785                	c.addi	a5,1
   10752:	00d33423          	sd	a3,8(t1)
   10756:	10e12423          	sw	a4,264(sp)
   1075a:	0007069b          	addiw	a3,a4,0
   1075e:	ea3e                	c.sdsp	a5,272(sp)
   10760:	471d                	c.li	a4,7
   10762:	0341                	c.addi	t1,16
   10764:	36d74363          	blt	a4,a3,10aca <_vfprintf_r+0x56c>
   10768:	020f8563          	beq	t6,zero,10792 <_vfprintf_r+0x234>
   1076c:	10812703          	lw	a4,264(sp)
   10770:	0994                	c.addi4spn	a3,sp,208
   10772:	00d33023          	sd	a3,0(t1)
   10776:	2705                	c.addiw	a4,1
   10778:	4689                	c.li	a3,2
   1077a:	0789                	c.addi	a5,2
   1077c:	00d33423          	sd	a3,8(t1)
   10780:	10e12423          	sw	a4,264(sp)
   10784:	0007069b          	addiw	a3,a4,0
   10788:	ea3e                	c.sdsp	a5,272(sp)
   1078a:	471d                	c.li	a4,7
   1078c:	0341                	c.addi	t1,16
   1078e:	2cd741e3          	blt	a4,a3,11250 <_vfprintf_r+0xcf2>
   10792:	08000713          	addi	a4,zero,128
   10796:	06ef08e3          	beq	t5,a4,11006 <_vfprintf_r+0xaa8>
   1079a:	414d0d3b          	subw	s10,s10,s4
   1079e:	11a045e3          	blt	zero,s10,110a8 <_vfprintf_r+0xb4a>
   107a2:	1004f713          	andi	a4,s1,256
   107a6:	78071163          	bne	a4,zero,10f28 <_vfprintf_r+0x9ca>
   107aa:	10812703          	lw	a4,264(sp)
   107ae:	97d2                	c.add	a5,s4
   107b0:	01b33023          	sd	s11,0(t1)
   107b4:	0017069b          	addiw	a3,a4,1
   107b8:	01433423          	sd	s4,8(t1)
   107bc:	ea3e                	c.sdsp	a5,272(sp)
   107be:	10d12423          	sw	a3,264(sp)
   107c2:	471d                	c.li	a4,7
   107c4:	3ed74263          	blt	a4,a3,10ba8 <_vfprintf_r+0x64a>
   107c8:	0341                	c.addi	t1,16
   107ca:	8891                	c.andi	s1,4
   107cc:	c489                	c.beqz	s1,107d6 <_vfprintf_r+0x278>
   107ce:	413904bb          	subw	s1,s2,s3
   107d2:	28904fe3          	blt	zero,s1,11270 <_vfprintf_r+0xd12>
   107d6:	874a                	c.mv	a4,s2
   107d8:	01395363          	bge	s2,s3,107de <_vfprintf_r+0x280>
   107dc:	874e                	c.mv	a4,s3
   107de:	6682                	c.ldsp	a3,0(sp)
   107e0:	9f35                	c.addw	a4,a3
   107e2:	e03a                	c.sdsp	a4,0(sp)
   107e4:	14079ee3          	bne	a5,zero,11140 <_vfprintf_r+0xbe2>
   107e8:	67c2                	c.ldsp	a5,16(sp)
   107ea:	10012423          	sw	zero,264(sp)
   107ee:	c799                	c.beqz	a5,107fc <_vfprintf_r+0x29e>
   107f0:	65c2                	c.ldsp	a1,16(sp)
   107f2:	8562                	c.mv	a0,s8
   107f4:	00002097          	auipc	ra,0x2
   107f8:	3f4080e7          	jalr	ra,1012(ra) # 12be8 <_free_r>
   107fc:	18010313          	addi	t1,sp,384
   10800:	8da2                	c.mv	s11,s0
   10802:	000dc783          	lbu	a5,0(s11)
   10806:	e20799e3          	bne	a5,zero,10638 <_vfprintf_r+0xda>
   1080a:	67d2                	c.ldsp	a5,272(sp)
   1080c:	c399                	c.beqz	a5,10812 <_vfprintf_r+0x2b4>
   1080e:	3d60106f          	jal	zero,11be4 <_vfprintf_r+0x1686>
   10812:	010b5783          	lhu	a5,16(s6)
   10816:	0407f793          	andi	a5,a5,64
   1081a:	c399                	c.beqz	a5,10820 <_vfprintf_r+0x2c2>
   1081c:	7f20106f          	jal	zero,1200e <_vfprintf_r+0x1ab0>
   10820:	26813083          	ld	ra,616(sp)
   10824:	26013403          	ld	s0,608(sp)
   10828:	6502                	c.ldsp	a0,0(sp)
   1082a:	25813483          	ld	s1,600(sp)
   1082e:	25013903          	ld	s2,592(sp)
   10832:	24813983          	ld	s3,584(sp)
   10836:	24013a03          	ld	s4,576(sp)
   1083a:	23813a83          	ld	s5,568(sp)
   1083e:	23013b03          	ld	s6,560(sp)
   10842:	22813b83          	ld	s7,552(sp)
   10846:	22013c03          	ld	s8,544(sp)
   1084a:	21813c83          	ld	s9,536(sp)
   1084e:	21013d03          	ld	s10,528(sp)
   10852:	20813d83          	ld	s11,520(sp)
   10856:	27010113          	addi	sp,sp,624
   1085a:	8082                	c.jr	ra
   1085c:	0104e493          	ori	s1,s1,16
   10860:	00044e03          	lbu	t3,0(s0)
   10864:	2481                	c.addiw	s1,0
   10866:	bd1d                	c.j	1069c <_vfprintf_r+0x13e>
   10868:	85da                	c.mv	a1,s6
   1086a:	8562                	c.mv	a0,s8
   1086c:	00002097          	auipc	ra,0x2
   10870:	b62080e7          	jalr	ra,-1182(ra) # 123ce <__swsetup_r>
   10874:	c119                	c.beqz	a0,1087a <_vfprintf_r+0x31c>
   10876:	7980106f          	jal	zero,1200e <_vfprintf_r+0x1ab0>
   1087a:	010b5783          	lhu	a5,16(s6)
   1087e:	4729                	c.li	a4,10
   10880:	8be9                	c.andi	a5,26
   10882:	d8e798e3          	bne	a5,a4,10612 <_vfprintf_r+0xb4>
   10886:	012b1783          	lh	a5,18(s6)
   1088a:	d807c4e3          	blt	a5,zero,10612 <_vfprintf_r+0xb4>
   1088e:	66a2                	c.ldsp	a3,8(sp)
   10890:	865e                	c.mv	a2,s7
   10892:	85da                	c.mv	a1,s6
   10894:	8562                	c.mv	a0,s8
   10896:	00002097          	auipc	ra,0x2
   1089a:	a9c080e7          	jalr	ra,-1380(ra) # 12332 <__sbprintf>
   1089e:	e02a                	c.sdsp	a0,0(sp)
   108a0:	b741                	c.j	10820 <_vfprintf_r+0x2c2>
   108a2:	41b404bb          	subw	s1,s0,s11
   108a6:	da0496e3          	bne	s1,zero,10652 <_vfprintf_r+0xf4>
   108aa:	00044783          	lbu	a5,0(s0)
   108ae:	bbc9                	c.j	10680 <_vfprintf_r+0x122>
   108b0:	0210                	c.addi4spn	a2,sp,256
   108b2:	85da                	c.mv	a1,s6
   108b4:	8562                	c.mv	a0,s8
   108b6:	00009097          	auipc	ra,0x9
   108ba:	ba6080e7          	jalr	ra,-1114(ra) # 1945c <__sprint_r>
   108be:	f931                	c.bnez	a0,10812 <_vfprintf_r+0x2b4>
   108c0:	18010313          	addi	t1,sp,384
   108c4:	bb4d                	c.j	10676 <_vfprintf_r+0x118>
   108c6:	0084f793          	andi	a5,s1,8
   108ca:	835e                	c.mv	t1,s7
   108cc:	480793e3          	bne	a5,zero,11552 <_vfprintf_r+0xff4>
   108d0:	67a2                	c.ldsp	a5,8(sp)
   108d2:	e85e                	c.sdsp	s7,16(sp)
   108d4:	2388                	c.fld	fa0,0(a5)
   108d6:	07a1                	c.addi	a5,8
   108d8:	e43e                	c.sdsp	a5,8(sp)
   108da:	0000c097          	auipc	ra,0xc
   108de:	64c080e7          	jalr	ra,1612(ra) # 1cf26 <__extenddftf2>
   108e2:	6342                	c.ldsp	t1,16(sp)
   108e4:	f9aa                	c.sdsp	a0,240(sp)
   108e6:	fdae                	c.sdsp	a1,248(sp)
   108e8:	1988                	c.addi4spn	a0,sp,240
   108ea:	e81a                	c.sdsp	t1,16(sp)
   108ec:	00005097          	auipc	ra,0x5
   108f0:	b86080e7          	jalr	ra,-1146(ra) # 15472 <_ldcheck>
   108f4:	cdaa                	c.swsp	a0,216(sp)
   108f6:	4789                	c.li	a5,2
   108f8:	6342                	c.ldsp	t1,16(sp)
   108fa:	74f503e3          	beq	a0,a5,11840 <_vfprintf_r+0x12e2>
   108fe:	4785                	c.li	a5,1
   10900:	00f51463          	bne	a0,a5,10908 <_vfprintf_r+0x3aa>
   10904:	0380106f          	jal	zero,1193c <_vfprintf_r+0x13de>
   10908:	06100793          	addi	a5,zero,97
   1090c:	00fc9463          	bne	s9,a5,10914 <_vfprintf_r+0x3b6>
   10910:	0350106f          	jal	zero,12144 <_vfprintf_r+0x1be6>
   10914:	04100793          	addi	a5,zero,65
   10918:	00fc9463          	bne	s9,a5,10920 <_vfprintf_r+0x3c2>
   1091c:	3040106f          	jal	zero,11c20 <_vfprintf_r+0x16c2>
   10920:	fdfcf713          	andi	a4,s9,-33
   10924:	57fd                	c.li	a5,-1
   10926:	f43a                	c.sdsp	a4,40(sp)
   10928:	00fd1463          	bne	s10,a5,10930 <_vfprintf_r+0x3d2>
   1092c:	0490106f          	jal	zero,12174 <_vfprintf_r+0x1c16>
   10930:	04700793          	addi	a5,zero,71
   10934:	00f71463          	bne	a4,a5,1093c <_vfprintf_r+0x3de>
   10938:	02f0106f          	jal	zero,12166 <_vfprintf_r+0x1c08>
   1093c:	7a6e                	c.ldsp	s4,248(sp)
   1093e:	1004e793          	ori	a5,s1,256
   10942:	f826                	c.sdsp	s1,48(sp)
   10944:	7bce                	c.ldsp	s7,240(sp)
   10946:	2781                	c.addiw	a5,0
   10948:	000a5463          	bge	s4,zero,10950 <_vfprintf_r+0x3f2>
   1094c:	5320106f          	jal	zero,11e7e <_vfprintf_r+0x1920>
   10950:	f082                	c.sdsp	zero,96(sp)
   10952:	84be                	c.mv	s1,a5
   10954:	e802                	c.sdsp	zero,16(sp)
   10956:	7722                	c.ldsp	a4,40(sp)
   10958:	04600793          	addi	a5,zero,70
   1095c:	00f71463          	bne	a4,a5,10964 <_vfprintf_r+0x406>
   10960:	57a0106f          	jal	zero,11eda <_vfprintf_r+0x197c>
   10964:	04500793          	addi	a5,zero,69
   10968:	ec1a                	c.sdsp	t1,24(sp)
   1096a:	00f71463          	bne	a4,a5,10972 <_vfprintf_r+0x414>
   1096e:	7920106f          	jal	zero,12100 <_vfprintf_r+0x1ba2>
   10972:	09bc                	c.addi4spn	a5,sp,216
   10974:	876a                	c.mv	a4,s10
   10976:	0e810893          	addi	a7,sp,232
   1097a:	0dc10813          	addi	a6,sp,220
   1097e:	4689                	c.li	a3,2
   10980:	85de                	c.mv	a1,s7
   10982:	8652                	c.mv	a2,s4
   10984:	8562                	c.mv	a0,s8
   10986:	00004097          	auipc	ra,0x4
   1098a:	c3c080e7          	jalr	ra,-964(ra) # 145c2 <_ldtoa_r>
   1098e:	7722                	c.ldsp	a4,40(sp)
   10990:	04700793          	addi	a5,zero,71
   10994:	6362                	c.ldsp	t1,24(sp)
   10996:	8daa                	c.mv	s11,a0
   10998:	00f70463          	beq	a4,a5,109a0 <_vfprintf_r+0x442>
   1099c:	1730106f          	jal	zero,1230e <_vfprintf_r+0x1db0>
   109a0:	77c2                	c.ldsp	a5,48(sp)
   109a2:	8b85                	c.andi	a5,1
   109a4:	c399                	c.beqz	a5,109aa <_vfprintf_r+0x44c>
   109a6:	7ac0106f          	jal	zero,12152 <_vfprintf_r+0x1bf4>
   109aa:	76ae                	c.ldsp	a3,232(sp)
   109ac:	41b687bb          	subw	a5,a3,s11
   109b0:	f03e                	c.sdsp	a5,32(sp)
   109b2:	476e                	c.lwsp	a4,216(sp)
   109b4:	04700793          	addi	a5,zero,71
   109b8:	ec3a                	c.sdsp	a4,24(sp)
   109ba:	7722                	c.ldsp	a4,40(sp)
   109bc:	00f71463          	bne	a4,a5,109c4 <_vfprintf_r+0x466>
   109c0:	4580106f          	jal	zero,11e18 <_vfprintf_r+0x18ba>
   109c4:	7722                	c.ldsp	a4,40(sp)
   109c6:	04600793          	addi	a5,zero,70
   109ca:	00f71463          	bne	a4,a5,109d2 <_vfprintf_r+0x474>
   109ce:	5bc0106f          	jal	zero,11f8a <_vfprintf_r+0x1a2c>
   109d2:	67e2                	c.ldsp	a5,24(sp)
   109d4:	75a2                	c.ldsp	a1,40(sp)
   109d6:	04100613          	addi	a2,zero,65
   109da:	37fd                	c.addiw	a5,-1
   109dc:	cdbe                	c.swsp	a5,216(sp)
   109de:	0ffcf713          	andi	a4,s9,255
   109e2:	4681                	c.li	a3,0
   109e4:	00c59663          	bne	a1,a2,109f0 <_vfprintf_r+0x492>
   109e8:	273d                	c.addiw	a4,15
   109ea:	0ff77713          	andi	a4,a4,255
   109ee:	4685                	c.li	a3,1
   109f0:	0ee10023          	sb	a4,224(sp)
   109f4:	02b00713          	addi	a4,zero,43
   109f8:	0007d763          	bge	a5,zero,10a06 <_vfprintf_r+0x4a8>
   109fc:	6762                	c.ldsp	a4,24(sp)
   109fe:	4785                	c.li	a5,1
   10a00:	9f99                	c.subw	a5,a4
   10a02:	02d00713          	addi	a4,zero,45
   10a06:	0ee100a3          	sb	a4,225(sp)
   10a0a:	4725                	c.li	a4,9
   10a0c:	00f74463          	blt	a4,a5,10a14 <_vfprintf_r+0x4b6>
   10a10:	05f0106f          	jal	zero,1226e <_vfprintf_r+0x1d10>
   10a14:	0ef10513          	addi	a0,sp,239
   10a18:	85aa                	c.mv	a1,a0
   10a1a:	46a9                	c.li	a3,10
   10a1c:	06300e93          	addi	t4,zero,99
   10a20:	02d7e73b          	remw	a4,a5,a3
   10a24:	862e                	c.mv	a2,a1
   10a26:	883e                	c.mv	a6,a5
   10a28:	15fd                	c.addi	a1,-1
   10a2a:	0307071b          	addiw	a4,a4,48
   10a2e:	fee60fa3          	sb	a4,-1(a2)
   10a32:	02d7c7bb          	divw	a5,a5,a3
   10a36:	ff0ec5e3          	blt	t4,a6,10a20 <_vfprintf_r+0x4c2>
   10a3a:	0307879b          	addiw	a5,a5,48
   10a3e:	0ff7f693          	andi	a3,a5,255
   10a42:	fed58fa3          	sb	a3,-1(a1)
   10a46:	ffe60793          	addi	a5,a2,-2
   10a4a:	00a7e463          	bltu	a5,a0,10a52 <_vfprintf_r+0x4f4>
   10a4e:	0c70106f          	jal	zero,12314 <_vfprintf_r+0x1db6>
   10a52:	0e210713          	addi	a4,sp,226
   10a56:	a019                	c.j	10a5c <_vfprintf_r+0x4fe>
   10a58:	0007c683          	lbu	a3,0(a5)
   10a5c:	00d70023          	sb	a3,0(a4)
   10a60:	0785                	c.addi	a5,1
   10a62:	0705                	c.addi	a4,1
   10a64:	fea79ae3          	bne	a5,a0,10a58 <_vfprintf_r+0x4fa>
   10a68:	0f110793          	addi	a5,sp,241
   10a6c:	0e210713          	addi	a4,sp,226
   10a70:	8f91                	c.sub	a5,a2
   10a72:	97ba                	c.add	a5,a4
   10a74:	1198                	c.addi4spn	a4,sp,224
   10a76:	9f99                	c.subw	a5,a4
   10a78:	e8be                	c.sdsp	a5,80(sp)
   10a7a:	67c6                	c.ldsp	a5,80(sp)
   10a7c:	7682                	c.ldsp	a3,32(sp)
   10a7e:	4705                	c.li	a4,1
   10a80:	00f68a3b          	addw	s4,a3,a5
   10a84:	87d2                	c.mv	a5,s4
   10a86:	00d74463          	blt	a4,a3,10a8e <_vfprintf_r+0x530>
   10a8a:	00f0106f          	jal	zero,12298 <_vfprintf_r+0x1d3a>
   10a8e:	7762                	c.ldsp	a4,56(sp)
   10a90:	00e78a3b          	addw	s4,a5,a4
   10a94:	77c2                	c.ldsp	a5,48(sp)
   10a96:	fffa4993          	xori	s3,s4,-1
   10a9a:	43f9d993          	srai	s3,s3,0x3f
   10a9e:	bff7f493          	andi	s1,a5,-1025
   10aa2:	2481                	c.addiw	s1,0
   10aa4:	013a79b3          	and	s3,s4,s3
   10aa8:	1004e493          	ori	s1,s1,256
   10aac:	2981                	c.addiw	s3,0
   10aae:	f802                	c.sdsp	zero,48(sp)
   10ab0:	f402                	c.sdsp	zero,40(sp)
   10ab2:	ec02                	c.sdsp	zero,24(sp)
   10ab4:	7786                	c.ldsp	a5,96(sp)
   10ab6:	e399                	c.bnez	a5,10abc <_vfprintf_r+0x55e>
   10ab8:	3b60106f          	jal	zero,11e6e <_vfprintf_r+0x1910>
   10abc:	02d00793          	addi	a5,zero,45
   10ac0:	0cf107a3          	sb	a5,207(sp)
   10ac4:	4d01                	c.li	s10,0
   10ac6:	2985                	c.addiw	s3,1
   10ac8:	b999                	c.j	1071e <_vfprintf_r+0x1c0>
   10aca:	0210                	c.addi4spn	a2,sp,256
   10acc:	85da                	c.mv	a1,s6
   10ace:	8562                	c.mv	a0,s8
   10ad0:	f4fa                	c.sdsp	t5,104(sp)
   10ad2:	f0fe                	c.sdsp	t6,96(sp)
   10ad4:	00009097          	auipc	ra,0x9
   10ad8:	988080e7          	jalr	ra,-1656(ra) # 1945c <__sprint_r>
   10adc:	66051b63          	bne	a0,zero,11152 <_vfprintf_r+0xbf4>
   10ae0:	67d2                	c.ldsp	a5,272(sp)
   10ae2:	7f26                	c.ldsp	t5,104(sp)
   10ae4:	7f86                	c.ldsp	t6,96(sp)
   10ae6:	18010313          	addi	t1,sp,384
   10aea:	b9bd                	c.j	10768 <_vfprintf_r+0x20a>
   10aec:	10812603          	lw	a2,264(sp)
   10af0:	00178b93          	addi	s7,a5,1
   10af4:	7782                	c.ldsp	a5,32(sp)
   10af6:	0016071b          	addiw	a4,a2,1
   10afa:	4585                	c.li	a1,1
   10afc:	01b33023          	sd	s11,0(t1)
   10b00:	86ba                	c.mv	a3,a4
   10b02:	01030a13          	addi	s4,t1,16
   10b06:	12f5d2e3          	bge	a1,a5,1142a <_vfprintf_r+0xecc>
   10b0a:	4605                	c.li	a2,1
   10b0c:	10d12423          	sw	a3,264(sp)
   10b10:	00c33423          	sd	a2,8(t1)
   10b14:	ea5e                	c.sdsp	s7,272(sp)
   10b16:	469d                	c.li	a3,7
   10b18:	3ce6c6e3          	blt	a3,a4,116e4 <_vfprintf_r+0x1186>
   10b1c:	77e2                	c.ldsp	a5,56(sp)
   10b1e:	00170d1b          	addiw	s10,a4,1
   10b22:	6706                	c.ldsp	a4,64(sp)
   10b24:	9bbe                	c.add	s7,a5
   10b26:	00fa3423          	sd	a5,8(s4)
   10b2a:	00ea3023          	sd	a4,0(s4)
   10b2e:	ea5e                	c.sdsp	s7,272(sp)
   10b30:	11a12423          	sw	s10,264(sp)
   10b34:	469d                	c.li	a3,7
   10b36:	0a41                	c.addi	s4,16
   10b38:	3da6c6e3          	blt	a3,s10,11704 <_vfprintf_r+0x11a6>
   10b3c:	754e                	c.ldsp	a0,240(sp)
   10b3e:	75ee                	c.ldsp	a1,248(sp)
   10b40:	001d089b          	addiw	a7,s10,1
   10b44:	4601                	c.li	a2,0
   10b46:	4681                	c.li	a3,0
   10b48:	cc46                	c.swsp	a7,24(sp)
   10b4a:	0000b097          	auipc	ra,0xb
   10b4e:	2c6080e7          	jalr	ra,710(ra) # 1be10 <__eqtf2>
   10b52:	48e2                	c.lwsp	a7,24(sp)
   10b54:	7782                	c.ldsp	a5,32(sp)
   10b56:	010a0313          	addi	t1,s4,16
   10b5a:	0008861b          	addiw	a2,a7,0
   10b5e:	fff78c9b          	addiw	s9,a5,-1
   10b62:	0e0505e3          	beq	a0,zero,1144c <_vfprintf_r+0xeee>
   10b66:	001d8813          	addi	a6,s11,1
   10b6a:	9be6                	c.add	s7,s9
   10b6c:	010a3023          	sd	a6,0(s4)
   10b70:	019a3423          	sd	s9,8(s4)
   10b74:	ea5e                	c.sdsp	s7,272(sp)
   10b76:	11112423          	sw	a7,264(sp)
   10b7a:	469d                	c.li	a3,7
   10b7c:	22c6c2e3          	blt	a3,a2,115a0 <_vfprintf_r+0x1042>
   10b80:	020a0693          	addi	a3,s4,32
   10b84:	002d061b          	addiw	a2,s10,2
   10b88:	8a1a                	c.mv	s4,t1
   10b8a:	8336                	c.mv	t1,a3
   10b8c:	66c6                	c.ldsp	a3,80(sp)
   10b8e:	1198                	c.addi4spn	a4,sp,224
   10b90:	00ea3023          	sd	a4,0(s4)
   10b94:	017687b3          	add	a5,a3,s7
   10b98:	00da3423          	sd	a3,8(s4)
   10b9c:	ea3e                	c.sdsp	a5,272(sp)
   10b9e:	10c12423          	sw	a2,264(sp)
   10ba2:	471d                	c.li	a4,7
   10ba4:	c2c753e3          	bge	a4,a2,107ca <_vfprintf_r+0x26c>
   10ba8:	0210                	c.addi4spn	a2,sp,256
   10baa:	85da                	c.mv	a1,s6
   10bac:	8562                	c.mv	a0,s8
   10bae:	00009097          	auipc	ra,0x9
   10bb2:	8ae080e7          	jalr	ra,-1874(ra) # 1945c <__sprint_r>
   10bb6:	58051e63          	bne	a0,zero,11152 <_vfprintf_r+0xbf4>
   10bba:	67d2                	c.ldsp	a5,272(sp)
   10bbc:	18010313          	addi	t1,sp,384
   10bc0:	b129                	c.j	107ca <_vfprintf_r+0x26c>
   10bc2:	8562                	c.mv	a0,s8
   10bc4:	00002097          	auipc	ra,0x2
   10bc8:	eb4080e7          	jalr	ra,-332(ra) # 12a78 <__sinit>
   10bcc:	baed                	c.j	105c6 <_vfprintf_r+0x68>
   10bce:	6722                	c.ldsp	a4,8(sp)
   10bd0:	835e                	c.mv	t1,s7
   10bd2:	0c0107a3          	sb	zero,207(sp)
   10bd6:	431c                	c.lw	a5,0(a4)
   10bd8:	0721                	c.addi	a4,8
   10bda:	e43a                	c.sdsp	a4,8(sp)
   10bdc:	10f10c23          	sb	a5,280(sp)
   10be0:	4985                	c.li	s3,1
   10be2:	4a05                	c.li	s4,1
   10be4:	11810d93          	addi	s11,sp,280
   10be8:	b635                	c.j	10714 <_vfprintf_r+0x1b6>
   10bea:	67a2                	c.ldsp	a5,8(sp)
   10bec:	0c0107a3          	sb	zero,207(sp)
   10bf0:	835e                	c.mv	t1,s7
   10bf2:	0007bd83          	ld	s11,0(a5)
   10bf6:	00878b93          	addi	s7,a5,8
   10bfa:	260d85e3          	beq	s11,zero,11664 <_vfprintf_r+0x1106>
   10bfe:	57fd                	c.li	a5,-1
   10c00:	4cfd00e3          	beq	s10,a5,118c0 <_vfprintf_r+0x1362>
   10c04:	866a                	c.mv	a2,s10
   10c06:	4581                	c.li	a1,0
   10c08:	856e                	c.mv	a0,s11
   10c0a:	e41a                	c.sdsp	t1,8(sp)
   10c0c:	00005097          	auipc	ra,0x5
   10c10:	200080e7          	jalr	ra,512(ra) # 15e0c <memchr>
   10c14:	e82a                	c.sdsp	a0,16(sp)
   10c16:	6322                	c.ldsp	t1,8(sp)
   10c18:	e119                	c.bnez	a0,10c1e <_vfprintf_r+0x6c0>
   10c1a:	3540106f          	jal	zero,11f6e <_vfprintf_r+0x1a10>
   10c1e:	67c2                	c.ldsp	a5,16(sp)
   10c20:	e45e                	c.sdsp	s7,8(sp)
   10c22:	e802                	c.sdsp	zero,16(sp)
   10c24:	41b78a3b          	subw	s4,a5,s11
   10c28:	0cf14783          	lbu	a5,207(sp)
   10c2c:	fffa4993          	xori	s3,s4,-1
   10c30:	43f9d993          	srai	s3,s3,0x3f
   10c34:	f802                	c.sdsp	zero,48(sp)
   10c36:	f402                	c.sdsp	zero,40(sp)
   10c38:	ec02                	c.sdsp	zero,24(sp)
   10c3a:	0149f9b3          	and	s3,s3,s4
   10c3e:	4d01                	c.li	s10,0
   10c40:	ac078fe3          	beq	a5,zero,1071e <_vfprintf_r+0x1c0>
   10c44:	2985                	c.addiw	s3,1
   10c46:	bce1                	c.j	1071e <_vfprintf_r+0x1c0>
   10c48:	0104e493          	ori	s1,s1,16
   10c4c:	835e                	c.mv	t1,s7
   10c4e:	2481                	c.addiw	s1,0
   10c50:	66a2                	c.ldsp	a3,8(sp)
   10c52:	0204f793          	andi	a5,s1,32
   10c56:	00868713          	addi	a4,a3,8 # 2008 <register_fini-0xe0a8>
   10c5a:	060785e3          	beq	a5,zero,114c4 <_vfprintf_r+0xf66>
   10c5e:	0006b983          	ld	s3,0(a3)
   10c62:	bff4f493          	andi	s1,s1,-1025
   10c66:	00048b9b          	addiw	s7,s1,0
   10c6a:	e43a                	c.sdsp	a4,8(sp)
   10c6c:	4781                	c.li	a5,0
   10c6e:	0c0107a3          	sb	zero,207(sp)
   10c72:	577d                	c.li	a4,-1
   10c74:	22ed0963          	beq	s10,a4,10ea6 <_vfprintf_r+0x948>
   10c78:	f7fbf493          	andi	s1,s7,-129
   10c7c:	2481                	c.addiw	s1,0
   10c7e:	22099363          	bne	s3,zero,10ea4 <_vfprintf_r+0x946>
   10c82:	260d1663          	bne	s10,zero,10eee <_vfprintf_r+0x990>
   10c86:	20079a63          	bne	a5,zero,10e9a <_vfprintf_r+0x93c>
   10c8a:	001bfa13          	andi	s4,s7,1
   10c8e:	17c10d93          	addi	s11,sp,380
   10c92:	080a17e3          	bne	s4,zero,11520 <_vfprintf_r+0xfc2>
   10c96:	0cf14783          	lbu	a5,207(sp)
   10c9a:	000a099b          	addiw	s3,s4,0
   10c9e:	01aa5463          	bge	s4,s10,10ca6 <_vfprintf_r+0x748>
   10ca2:	000d099b          	addiw	s3,s10,0
   10ca6:	e802                	c.sdsp	zero,16(sp)
   10ca8:	f802                	c.sdsp	zero,48(sp)
   10caa:	f402                	c.sdsp	zero,40(sp)
   10cac:	ec02                	c.sdsp	zero,24(sp)
   10cae:	fbd9                	c.bnez	a5,10c44 <_vfprintf_r+0x6e6>
   10cb0:	b4bd                	c.j	1071e <_vfprintf_r+0x1c0>
   10cb2:	00044e03          	lbu	t3,0(s0)
   10cb6:	06800793          	addi	a5,zero,104
   10cba:	14fe0ee3          	beq	t3,a5,11616 <_vfprintf_r+0x10b8>
   10cbe:	0404e493          	ori	s1,s1,64
   10cc2:	2481                	c.addiw	s1,0
   10cc4:	bae1                	c.j	1069c <_vfprintf_r+0x13e>
   10cc6:	66a2                	c.ldsp	a3,8(sp)
   10cc8:	0204f793          	andi	a5,s1,32
   10ccc:	835e                	c.mv	t1,s7
   10cce:	6298                	c.ld	a4,0(a3)
   10cd0:	06a1                	c.addi	a3,8
   10cd2:	e436                	c.sdsp	a3,8(sp)
   10cd4:	04079ee3          	bne	a5,zero,11530 <_vfprintf_r+0xfd2>
   10cd8:	0104f793          	andi	a5,s1,16
   10cdc:	04079ae3          	bne	a5,zero,11530 <_vfprintf_r+0xfd2>
   10ce0:	0404f793          	andi	a5,s1,64
   10ce4:	6c0794e3          	bne	a5,zero,11bac <_vfprintf_r+0x164e>
   10ce8:	2004f493          	andi	s1,s1,512
   10cec:	6782                	c.ldsp	a5,0(sp)
   10cee:	e099                	c.bnez	s1,10cf4 <_vfprintf_r+0x796>
   10cf0:	46e0106f          	jal	zero,1215e <_vfprintf_r+0x1c00>
   10cf4:	00f70023          	sb	a5,0(a4)
   10cf8:	8da2                	c.mv	s11,s0
   10cfa:	b621                	c.j	10802 <_vfprintf_r+0x2a4>
   10cfc:	00044e03          	lbu	t3,0(s0)
   10d00:	06c00793          	addi	a5,zero,108
   10d04:	12fe01e3          	beq	t3,a5,11626 <_vfprintf_r+0x10c8>
   10d08:	0104e493          	ori	s1,s1,16
   10d0c:	2481                	c.addiw	s1,0
   10d0e:	b279                	c.j	1069c <_vfprintf_r+0x13e>
   10d10:	0204e493          	ori	s1,s1,32
   10d14:	00044e03          	lbu	t3,0(s0)
   10d18:	2481                	c.addiw	s1,0
   10d1a:	b249                	c.j	1069c <_vfprintf_r+0x13e>
   10d1c:	6722                	c.ldsp	a4,8(sp)
   10d1e:	77e1                	c.lui	a5,0xffff8
   10d20:	8307c793          	xori	a5,a5,-2000
   10d24:	0cf11823          	sh	a5,208(sp)
   10d28:	00870793          	addi	a5,a4,8
   10d2c:	0024e493          	ori	s1,s1,2
   10d30:	e43e                	c.sdsp	a5,8(sp)
   10d32:	0000c797          	auipc	a5,0xc
   10d36:	5ae78793          	addi	a5,a5,1454 # 1d2e0 <__clzdi2+0xc8>
   10d3a:	835e                	c.mv	t1,s7
   10d3c:	e4be                	c.sdsp	a5,72(sp)
   10d3e:	00073983          	ld	s3,0(a4)
   10d42:	00048b9b          	addiw	s7,s1,0
   10d46:	4789                	c.li	a5,2
   10d48:	07800c93          	addi	s9,zero,120
   10d4c:	b70d                	c.j	10c6e <_vfprintf_r+0x710>
   10d4e:	0104e493          	ori	s1,s1,16
   10d52:	835e                	c.mv	t1,s7
   10d54:	00048b9b          	addiw	s7,s1,0
   10d58:	66a2                	c.ldsp	a3,8(sp)
   10d5a:	020bf793          	andi	a5,s7,32
   10d5e:	00868713          	addi	a4,a3,8
   10d62:	74078063          	beq	a5,zero,114a2 <_vfprintf_r+0xf44>
   10d66:	0006b983          	ld	s3,0(a3)
   10d6a:	4785                	c.li	a5,1
   10d6c:	e43a                	c.sdsp	a4,8(sp)
   10d6e:	b701                	c.j	10c6e <_vfprintf_r+0x710>
   10d70:	0084e493          	ori	s1,s1,8
   10d74:	00044e03          	lbu	t3,0(s0)
   10d78:	2481                	c.addiw	s1,0
   10d7a:	b20d                	c.j	1069c <_vfprintf_r+0x13e>
   10d7c:	0804e493          	ori	s1,s1,128
   10d80:	00044e03          	lbu	t3,0(s0)
   10d84:	2481                	c.addiw	s1,0
   10d86:	ba19                	c.j	1069c <_vfprintf_r+0x13e>
   10d88:	00044c83          	lbu	s9,0(s0)
   10d8c:	00140793          	addi	a5,s0,1
   10d90:	014c9463          	bne	s9,s4,10d98 <_vfprintf_r+0x83a>
   10d94:	5480106f          	jal	zero,122dc <_vfprintf_r+0x1d7e>
   10d98:	fd0c871b          	addiw	a4,s9,-48
   10d9c:	843e                	c.mv	s0,a5
   10d9e:	4d01                	c.li	s10,0
   10da0:	90e9e3e3          	bltu	s3,a4,106a6 <_vfprintf_r+0x148>
   10da4:	00044603          	lbu	a2,0(s0)
   10da8:	002d179b          	slliw	a5,s10,0x2
   10dac:	01a787bb          	addw	a5,a5,s10
   10db0:	0017979b          	slliw	a5,a5,0x1
   10db4:	00e78d3b          	addw	s10,a5,a4
   10db8:	fd06071b          	addiw	a4,a2,-48
   10dbc:	0405                	c.addi	s0,1
   10dbe:	fee9f3e3          	bgeu	s3,a4,10da4 <_vfprintf_r+0x846>
   10dc2:	8cb2                	c.mv	s9,a2
   10dc4:	b0cd                	c.j	106a6 <_vfprintf_r+0x148>
   10dc6:	00044e03          	lbu	t3,0(s0)
   10dca:	0044e493          	ori	s1,s1,4
   10dce:	2481                	c.addiw	s1,0
   10dd0:	b0f1                	c.j	1069c <_vfprintf_r+0x13e>
   10dd2:	02b00793          	addi	a5,zero,43
   10dd6:	00044e03          	lbu	t3,0(s0)
   10dda:	0cf107a3          	sb	a5,207(sp)
   10dde:	b87d                	c.j	1069c <_vfprintf_r+0x13e>
   10de0:	67a2                	c.ldsp	a5,8(sp)
   10de2:	00044e03          	lbu	t3,0(s0)
   10de6:	0007a903          	lw	s2,0(a5)
   10dea:	07a1                	c.addi	a5,8
   10dec:	e43e                	c.sdsp	a5,8(sp)
   10dee:	8a0957e3          	bge	s2,zero,1069c <_vfprintf_r+0x13e>
   10df2:	4120093b          	subw	s2,zero,s2
   10df6:	bfd1                	c.j	10dca <_vfprintf_r+0x86c>
   10df8:	8562                	c.mv	a0,s8
   10dfa:	00004097          	auipc	ra,0x4
   10dfe:	6c4080e7          	jalr	ra,1732(ra) # 154be <_localeconv_r>
   10e02:	651c                	c.ld	a5,8(a0)
   10e04:	853e                	c.mv	a0,a5
   10e06:	fcbe                	c.sdsp	a5,120(sp)
   10e08:	fffff097          	auipc	ra,0xfffff
   10e0c:	6c2080e7          	jalr	ra,1730(ra) # 104ca <strlen>
   10e10:	87aa                	c.mv	a5,a0
   10e12:	8562                	c.mv	a0,s8
   10e14:	8cbe                	c.mv	s9,a5
   10e16:	f8be                	c.sdsp	a5,112(sp)
   10e18:	00004097          	auipc	ra,0x4
   10e1c:	6a6080e7          	jalr	ra,1702(ra) # 154be <_localeconv_r>
   10e20:	691c                	c.ld	a5,16(a0)
   10e22:	00044e03          	lbu	t3,0(s0)
   10e26:	ecbe                	c.sdsp	a5,88(sp)
   10e28:	860c8ae3          	beq	s9,zero,1069c <_vfprintf_r+0x13e>
   10e2c:	860788e3          	beq	a5,zero,1069c <_vfprintf_r+0x13e>
   10e30:	0007c783          	lbu	a5,0(a5)
   10e34:	860784e3          	beq	a5,zero,1069c <_vfprintf_r+0x13e>
   10e38:	4004e493          	ori	s1,s1,1024
   10e3c:	2481                	c.addiw	s1,0
   10e3e:	b8b9                	c.j	1069c <_vfprintf_r+0x13e>
   10e40:	0014e493          	ori	s1,s1,1
   10e44:	00044e03          	lbu	t3,0(s0)
   10e48:	2481                	c.addiw	s1,0
   10e4a:	b889                	c.j	1069c <_vfprintf_r+0x13e>
   10e4c:	0cf14783          	lbu	a5,207(sp)
   10e50:	00044e03          	lbu	t3,0(s0)
   10e54:	840794e3          	bne	a5,zero,1069c <_vfprintf_r+0x13e>
   10e58:	02000793          	addi	a5,zero,32
   10e5c:	0cf107a3          	sb	a5,207(sp)
   10e60:	b835                	c.j	1069c <_vfprintf_r+0x13e>
   10e62:	0104e493          	ori	s1,s1,16
   10e66:	835e                	c.mv	t1,s7
   10e68:	2481                	c.addiw	s1,0
   10e6a:	66a2                	c.ldsp	a3,8(sp)
   10e6c:	0204f793          	andi	a5,s1,32
   10e70:	00868713          	addi	a4,a3,8
   10e74:	66078763          	beq	a5,zero,114e2 <_vfprintf_r+0xf84>
   10e78:	629c                	c.ld	a5,0(a3)
   10e7a:	89be                	c.mv	s3,a5
   10e7c:	6807c063          	blt	a5,zero,114fc <_vfprintf_r+0xf9e>
   10e80:	57fd                	c.li	a5,-1
   10e82:	3afd0963          	beq	s10,a5,11234 <_vfprintf_r+0xcd6>
   10e86:	f7f4f493          	andi	s1,s1,-129
   10e8a:	e43a                	c.sdsp	a4,8(sp)
   10e8c:	00048b9b          	addiw	s7,s1,0
   10e90:	3a099463          	bne	s3,zero,11238 <_vfprintf_r+0xcda>
   10e94:	3a0d1563          	bne	s10,zero,1123e <_vfprintf_r+0xce0>
   10e98:	84de                	c.mv	s1,s7
   10e9a:	4d01                	c.li	s10,0
   10e9c:	4a01                	c.li	s4,0
   10e9e:	17c10d93          	addi	s11,sp,380
   10ea2:	bbd5                	c.j	10c96 <_vfprintf_r+0x738>
   10ea4:	8ba6                	c.mv	s7,s1
   10ea6:	4705                	c.li	a4,1
   10ea8:	38e78863          	beq	a5,a4,11238 <_vfprintf_r+0xcda>
   10eac:	4709                	c.li	a4,2
   10eae:	04e78963          	beq	a5,a4,10f00 <_vfprintf_r+0x9a2>
   10eb2:	17c10a13          	addi	s4,sp,380
   10eb6:	8dd2                	c.mv	s11,s4
   10eb8:	0079f793          	andi	a5,s3,7
   10ebc:	03078793          	addi	a5,a5,48
   10ec0:	fefd8fa3          	sb	a5,-1(s11)
   10ec4:	0039d993          	srli	s3,s3,0x3
   10ec8:	876e                	c.mv	a4,s11
   10eca:	1dfd                	c.addi	s11,-1
   10ecc:	fe0996e3          	bne	s3,zero,10eb8 <_vfprintf_r+0x95a>
   10ed0:	001bf693          	andi	a3,s7,1
   10ed4:	c6b1                	c.beqz	a3,10f20 <_vfprintf_r+0x9c2>
   10ed6:	03000693          	addi	a3,zero,48
   10eda:	04d78363          	beq	a5,a3,10f20 <_vfprintf_r+0x9c2>
   10ede:	1779                	c.addi	a4,-2
   10ee0:	fedd8fa3          	sb	a3,-1(s11)
   10ee4:	40ea0a3b          	subw	s4,s4,a4
   10ee8:	84de                	c.mv	s1,s7
   10eea:	8dba                	c.mv	s11,a4
   10eec:	b36d                	c.j	10c96 <_vfprintf_r+0x738>
   10eee:	4705                	c.li	a4,1
   10ef0:	00e79463          	bne	a5,a4,10ef8 <_vfprintf_r+0x99a>
   10ef4:	2640106f          	jal	zero,12158 <_vfprintf_r+0x1bfa>
   10ef8:	4709                	c.li	a4,2
   10efa:	8ba6                	c.mv	s7,s1
   10efc:	fae79be3          	bne	a5,a4,10eb2 <_vfprintf_r+0x954>
   10f00:	6726                	c.ldsp	a4,72(sp)
   10f02:	17c10a13          	addi	s4,sp,380
   10f06:	8dd2                	c.mv	s11,s4
   10f08:	00f9f793          	andi	a5,s3,15
   10f0c:	97ba                	c.add	a5,a4
   10f0e:	0007c783          	lbu	a5,0(a5)
   10f12:	0049d993          	srli	s3,s3,0x4
   10f16:	1dfd                	c.addi	s11,-1
   10f18:	00fd8023          	sb	a5,0(s11)
   10f1c:	fe0996e3          	bne	s3,zero,10f08 <_vfprintf_r+0x9aa>
   10f20:	41ba0a3b          	subw	s4,s4,s11
   10f24:	84de                	c.mv	s1,s7
   10f26:	bb85                	c.j	10c96 <_vfprintf_r+0x738>
   10f28:	06500713          	addi	a4,zero,101
   10f2c:	bd9750e3          	bge	a4,s9,10aec <_vfprintf_r+0x58e>
   10f30:	754e                	c.ldsp	a0,240(sp)
   10f32:	75ee                	c.ldsp	a1,248(sp)
   10f34:	4601                	c.li	a2,0
   10f36:	4681                	c.li	a3,0
   10f38:	f49a                	c.sdsp	t1,104(sp)
   10f3a:	f0be                	c.sdsp	a5,96(sp)
   10f3c:	0000b097          	auipc	ra,0xb
   10f40:	ed4080e7          	jalr	ra,-300(ra) # 1be10 <__eqtf2>
   10f44:	7786                	c.ldsp	a5,96(sp)
   10f46:	7326                	c.ldsp	t1,104(sp)
   10f48:	3a051763          	bne	a0,zero,112f6 <_vfprintf_r+0xd98>
   10f4c:	10812703          	lw	a4,264(sp)
   10f50:	0000c697          	auipc	a3,0xc
   10f54:	3b068693          	addi	a3,a3,944 # 1d300 <__clzdi2+0xe8>
   10f58:	00d33023          	sd	a3,0(t1)
   10f5c:	2705                	c.addiw	a4,1
   10f5e:	4685                	c.li	a3,1
   10f60:	0785                	c.addi	a5,1
   10f62:	00d33423          	sd	a3,8(t1)
   10f66:	10e12423          	sw	a4,264(sp)
   10f6a:	0007069b          	addiw	a3,a4,0
   10f6e:	ea3e                	c.sdsp	a5,272(sp)
   10f70:	471d                	c.li	a4,7
   10f72:	0341                	c.addi	t1,16
   10f74:	08d742e3          	blt	a4,a3,117f8 <_vfprintf_r+0x129a>
   10f78:	476e                	c.lwsp	a4,216(sp)
   10f7a:	7682                	c.ldsp	a3,32(sp)
   10f7c:	58d75b63          	bge	a4,a3,11512 <_vfprintf_r+0xfb4>
   10f80:	6706                	c.ldsp	a4,64(sp)
   10f82:	76e2                	c.ldsp	a3,56(sp)
   10f84:	0341                	c.addi	t1,16
   10f86:	fee33823          	sd	a4,-16(t1)
   10f8a:	10812703          	lw	a4,264(sp)
   10f8e:	97b6                	c.add	a5,a3
   10f90:	fed33c23          	sd	a3,-8(t1)
   10f94:	2705                	c.addiw	a4,1
   10f96:	0007069b          	addiw	a3,a4,0
   10f9a:	10e12423          	sw	a4,264(sp)
   10f9e:	ea3e                	c.sdsp	a5,272(sp)
   10fa0:	471d                	c.li	a4,7
   10fa2:	6ad74463          	blt	a4,a3,1164a <_vfprintf_r+0x10ec>
   10fa6:	7702                	c.ldsp	a4,32(sp)
   10fa8:	fff70a1b          	addiw	s4,a4,-1
   10fac:	81405fe3          	bge	zero,s4,107ca <_vfprintf_r+0x26c>
   10fb0:	10812703          	lw	a4,264(sp)
   10fb4:	074ad0e3          	bge	s5,s4,11814 <_vfprintf_r+0x12b6>
   10fb8:	4b9d                	c.li	s7,7
   10fba:	a021                	c.j	10fc2 <_vfprintf_r+0xa64>
   10fbc:	3a41                	c.addiw	s4,-16
   10fbe:	054adbe3          	bge	s5,s4,11814 <_vfprintf_r+0x12b6>
   10fc2:	0017069b          	addiw	a3,a4,1
   10fc6:	07c1                	c.addi	a5,16
   10fc8:	0000c717          	auipc	a4,0xc
   10fcc:	4c070713          	addi	a4,a4,1216 # 1d488 <zeroes.0>
   10fd0:	00e33023          	sd	a4,0(t1)
   10fd4:	01533423          	sd	s5,8(t1)
   10fd8:	ea3e                	c.sdsp	a5,272(sp)
   10fda:	0006871b          	addiw	a4,a3,0
   10fde:	10d12423          	sw	a3,264(sp)
   10fe2:	0341                	c.addi	t1,16
   10fe4:	fcebdce3          	bge	s7,a4,10fbc <_vfprintf_r+0xa5e>
   10fe8:	0210                	c.addi4spn	a2,sp,256
   10fea:	85da                	c.mv	a1,s6
   10fec:	8562                	c.mv	a0,s8
   10fee:	00008097          	auipc	ra,0x8
   10ff2:	46e080e7          	jalr	ra,1134(ra) # 1945c <__sprint_r>
   10ff6:	14051e63          	bne	a0,zero,11152 <_vfprintf_r+0xbf4>
   10ffa:	67d2                	c.ldsp	a5,272(sp)
   10ffc:	10812703          	lw	a4,264(sp)
   11000:	18010313          	addi	t1,sp,384
   11004:	bf65                	c.j	10fbc <_vfprintf_r+0xa5e>
   11006:	41390bbb          	subw	s7,s2,s3
   1100a:	f9705863          	bge	zero,s7,1079a <_vfprintf_r+0x23c>
   1100e:	10812703          	lw	a4,264(sp)
   11012:	057adb63          	bge	s5,s7,11068 <_vfprintf_r+0xb0a>
   11016:	489d                	c.li	a7,7
   11018:	a021                	c.j	11020 <_vfprintf_r+0xac2>
   1101a:	3bc1                	c.addiw	s7,-16
   1101c:	057ad663          	bge	s5,s7,11068 <_vfprintf_r+0xb0a>
   11020:	0017069b          	addiw	a3,a4,1
   11024:	07c1                	c.addi	a5,16
   11026:	0000c717          	auipc	a4,0xc
   1102a:	46270713          	addi	a4,a4,1122 # 1d488 <zeroes.0>
   1102e:	00e33023          	sd	a4,0(t1)
   11032:	01533423          	sd	s5,8(t1)
   11036:	ea3e                	c.sdsp	a5,272(sp)
   11038:	0006871b          	addiw	a4,a3,0
   1103c:	10d12423          	sw	a3,264(sp)
   11040:	0341                	c.addi	t1,16
   11042:	fce8dce3          	bge	a7,a4,1101a <_vfprintf_r+0xabc>
   11046:	0210                	c.addi4spn	a2,sp,256
   11048:	85da                	c.mv	a1,s6
   1104a:	8562                	c.mv	a0,s8
   1104c:	00008097          	auipc	ra,0x8
   11050:	410080e7          	jalr	ra,1040(ra) # 1945c <__sprint_r>
   11054:	ed7d                	c.bnez	a0,11152 <_vfprintf_r+0xbf4>
   11056:	3bc1                	c.addiw	s7,-16
   11058:	67d2                	c.ldsp	a5,272(sp)
   1105a:	10812703          	lw	a4,264(sp)
   1105e:	18010313          	addi	t1,sp,384
   11062:	489d                	c.li	a7,7
   11064:	fb7acee3          	blt	s5,s7,11020 <_vfprintf_r+0xac2>
   11068:	2705                	c.addiw	a4,1
   1106a:	0000c697          	auipc	a3,0xc
   1106e:	41e68693          	addi	a3,a3,1054 # 1d488 <zeroes.0>
   11072:	97de                	c.add	a5,s7
   11074:	00d33023          	sd	a3,0(t1)
   11078:	01733423          	sd	s7,8(t1)
   1107c:	0007069b          	addiw	a3,a4,0
   11080:	10e12423          	sw	a4,264(sp)
   11084:	ea3e                	c.sdsp	a5,272(sp)
   11086:	471d                	c.li	a4,7
   11088:	0341                	c.addi	t1,16
   1108a:	f0d75863          	bge	a4,a3,1079a <_vfprintf_r+0x23c>
   1108e:	0210                	c.addi4spn	a2,sp,256
   11090:	85da                	c.mv	a1,s6
   11092:	8562                	c.mv	a0,s8
   11094:	00008097          	auipc	ra,0x8
   11098:	3c8080e7          	jalr	ra,968(ra) # 1945c <__sprint_r>
   1109c:	e95d                	c.bnez	a0,11152 <_vfprintf_r+0xbf4>
   1109e:	67d2                	c.ldsp	a5,272(sp)
   110a0:	18010313          	addi	t1,sp,384
   110a4:	ef6ff06f          	jal	zero,1079a <_vfprintf_r+0x23c>
   110a8:	10812703          	lw	a4,264(sp)
   110ac:	05aada63          	bge	s5,s10,11100 <_vfprintf_r+0xba2>
   110b0:	4b9d                	c.li	s7,7
   110b2:	a021                	c.j	110ba <_vfprintf_r+0xb5c>
   110b4:	3d41                	c.addiw	s10,-16
   110b6:	05aad563          	bge	s5,s10,11100 <_vfprintf_r+0xba2>
   110ba:	0017069b          	addiw	a3,a4,1
   110be:	07c1                	c.addi	a5,16
   110c0:	0000c717          	auipc	a4,0xc
   110c4:	3c870713          	addi	a4,a4,968 # 1d488 <zeroes.0>
   110c8:	00e33023          	sd	a4,0(t1)
   110cc:	01533423          	sd	s5,8(t1)
   110d0:	ea3e                	c.sdsp	a5,272(sp)
   110d2:	0006871b          	addiw	a4,a3,0
   110d6:	10d12423          	sw	a3,264(sp)
   110da:	0341                	c.addi	t1,16
   110dc:	fcebdce3          	bge	s7,a4,110b4 <_vfprintf_r+0xb56>
   110e0:	0210                	c.addi4spn	a2,sp,256
   110e2:	85da                	c.mv	a1,s6
   110e4:	8562                	c.mv	a0,s8
   110e6:	00008097          	auipc	ra,0x8
   110ea:	376080e7          	jalr	ra,886(ra) # 1945c <__sprint_r>
   110ee:	e135                	c.bnez	a0,11152 <_vfprintf_r+0xbf4>
   110f0:	3d41                	c.addiw	s10,-16
   110f2:	67d2                	c.ldsp	a5,272(sp)
   110f4:	10812703          	lw	a4,264(sp)
   110f8:	18010313          	addi	t1,sp,384
   110fc:	fbaacfe3          	blt	s5,s10,110ba <_vfprintf_r+0xb5c>
   11100:	2705                	c.addiw	a4,1
   11102:	0000c697          	auipc	a3,0xc
   11106:	38668693          	addi	a3,a3,902 # 1d488 <zeroes.0>
   1110a:	97ea                	c.add	a5,s10
   1110c:	00d33023          	sd	a3,0(t1)
   11110:	01a33423          	sd	s10,8(t1)
   11114:	0007069b          	addiw	a3,a4,0
   11118:	10e12423          	sw	a4,264(sp)
   1111c:	ea3e                	c.sdsp	a5,272(sp)
   1111e:	471d                	c.li	a4,7
   11120:	0341                	c.addi	t1,16
   11122:	e8d75063          	bge	a4,a3,107a2 <_vfprintf_r+0x244>
   11126:	0210                	c.addi4spn	a2,sp,256
   11128:	85da                	c.mv	a1,s6
   1112a:	8562                	c.mv	a0,s8
   1112c:	00008097          	auipc	ra,0x8
   11130:	330080e7          	jalr	ra,816(ra) # 1945c <__sprint_r>
   11134:	ed19                	c.bnez	a0,11152 <_vfprintf_r+0xbf4>
   11136:	67d2                	c.ldsp	a5,272(sp)
   11138:	18010313          	addi	t1,sp,384
   1113c:	e66ff06f          	jal	zero,107a2 <_vfprintf_r+0x244>
   11140:	0210                	c.addi4spn	a2,sp,256
   11142:	85da                	c.mv	a1,s6
   11144:	8562                	c.mv	a0,s8
   11146:	00008097          	auipc	ra,0x8
   1114a:	316080e7          	jalr	ra,790(ra) # 1945c <__sprint_r>
   1114e:	e8050d63          	beq	a0,zero,107e8 <_vfprintf_r+0x28a>
   11152:	65c2                	c.ldsp	a1,16(sp)
   11154:	ea058f63          	beq	a1,zero,10812 <_vfprintf_r+0x2b4>
   11158:	8562                	c.mv	a0,s8
   1115a:	00002097          	auipc	ra,0x2
   1115e:	a8e080e7          	jalr	ra,-1394(ra) # 12be8 <_free_r>
   11162:	eb0ff06f          	jal	zero,10812 <_vfprintf_r+0x2b4>
   11166:	10812703          	lw	a4,264(sp)
   1116a:	0000cb97          	auipc	s7,0xc
   1116e:	30eb8b93          	addi	s7,s7,782 # 1d478 <blanks.1>
   11172:	08dad163          	bge	s5,a3,111f4 <_vfprintf_r+0xc96>
   11176:	866e                	c.mv	a2,s11
   11178:	e122                	c.sdsp	s0,128(sp)
   1117a:	8462                	c.mv	s0,s8
   1117c:	8c36                	c.mv	s8,a3
   1117e:	86de                	c.mv	a3,s7
   11180:	8dce                	c.mv	s11,s3
   11182:	8bd2                	c.mv	s7,s4
   11184:	89a6                	c.mv	s3,s1
   11186:	8a4a                	c.mv	s4,s2
   11188:	84da                	c.mv	s1,s6
   1118a:	429d                	c.li	t0,7
   1118c:	f0fe                	c.sdsp	t6,96(sp)
   1118e:	f4fa                	c.sdsp	t5,104(sp)
   11190:	8936                	c.mv	s2,a3
   11192:	8b32                	c.mv	s6,a2
   11194:	a021                	c.j	1119c <_vfprintf_r+0xc3e>
   11196:	3c41                	c.addiw	s8,-16
   11198:	058ad063          	bge	s5,s8,111d8 <_vfprintf_r+0xc7a>
   1119c:	2705                	c.addiw	a4,1
   1119e:	07c1                	c.addi	a5,16
   111a0:	01233023          	sd	s2,0(t1)
   111a4:	01533423          	sd	s5,8(t1)
   111a8:	ea3e                	c.sdsp	a5,272(sp)
   111aa:	10e12423          	sw	a4,264(sp)
   111ae:	0341                	c.addi	t1,16
   111b0:	fee2d3e3          	bge	t0,a4,11196 <_vfprintf_r+0xc38>
   111b4:	0210                	c.addi4spn	a2,sp,256
   111b6:	85a6                	c.mv	a1,s1
   111b8:	8522                	c.mv	a0,s0
   111ba:	00008097          	auipc	ra,0x8
   111be:	2a2080e7          	jalr	ra,674(ra) # 1945c <__sprint_r>
   111c2:	60051d63          	bne	a0,zero,117dc <_vfprintf_r+0x127e>
   111c6:	3c41                	c.addiw	s8,-16
   111c8:	67d2                	c.ldsp	a5,272(sp)
   111ca:	10812703          	lw	a4,264(sp)
   111ce:	18010313          	addi	t1,sp,384
   111d2:	429d                	c.li	t0,7
   111d4:	fd8ac4e3          	blt	s5,s8,1119c <_vfprintf_r+0xc3e>
   111d8:	86e2                	c.mv	a3,s8
   111da:	7f86                	c.ldsp	t6,96(sp)
   111dc:	8c22                	c.mv	s8,s0
   111de:	7f26                	c.ldsp	t5,104(sp)
   111e0:	640a                	c.ldsp	s0,128(sp)
   111e2:	85da                	c.mv	a1,s6
   111e4:	864a                	c.mv	a2,s2
   111e6:	8b26                	c.mv	s6,s1
   111e8:	8952                	c.mv	s2,s4
   111ea:	84ce                	c.mv	s1,s3
   111ec:	8a5e                	c.mv	s4,s7
   111ee:	89ee                	c.mv	s3,s11
   111f0:	8bb2                	c.mv	s7,a2
   111f2:	8dae                	c.mv	s11,a1
   111f4:	2705                	c.addiw	a4,1
   111f6:	97b6                	c.add	a5,a3
   111f8:	00d33423          	sd	a3,8(t1)
   111fc:	01733023          	sd	s7,0(t1)
   11200:	0007069b          	addiw	a3,a4,0
   11204:	10e12423          	sw	a4,264(sp)
   11208:	ea3e                	c.sdsp	a5,272(sp)
   1120a:	471d                	c.li	a4,7
   1120c:	0341                	c.addi	t1,16
   1120e:	d2d75663          	bge	a4,a3,1073a <_vfprintf_r+0x1dc>
   11212:	0210                	c.addi4spn	a2,sp,256
   11214:	85da                	c.mv	a1,s6
   11216:	8562                	c.mv	a0,s8
   11218:	f4fa                	c.sdsp	t5,104(sp)
   1121a:	f0fe                	c.sdsp	t6,96(sp)
   1121c:	00008097          	auipc	ra,0x8
   11220:	240080e7          	jalr	ra,576(ra) # 1945c <__sprint_r>
   11224:	f51d                	c.bnez	a0,11152 <_vfprintf_r+0xbf4>
   11226:	67d2                	c.ldsp	a5,272(sp)
   11228:	7f26                	c.ldsp	t5,104(sp)
   1122a:	7f86                	c.ldsp	t6,96(sp)
   1122c:	18010313          	addi	t1,sp,384
   11230:	d0aff06f          	jal	zero,1073a <_vfprintf_r+0x1dc>
   11234:	8ba6                	c.mv	s7,s1
   11236:	e43a                	c.sdsp	a4,8(sp)
   11238:	47a5                	c.li	a5,9
   1123a:	4f37e563          	bltu	a5,s3,11724 <_vfprintf_r+0x11c6>
   1123e:	0309899b          	addiw	s3,s3,48
   11242:	17310da3          	sb	s3,379(sp)
   11246:	84de                	c.mv	s1,s7
   11248:	4a05                	c.li	s4,1
   1124a:	17b10d93          	addi	s11,sp,379
   1124e:	b4a1                	c.j	10c96 <_vfprintf_r+0x738>
   11250:	0210                	c.addi4spn	a2,sp,256
   11252:	85da                	c.mv	a1,s6
   11254:	8562                	c.mv	a0,s8
   11256:	f0fa                	c.sdsp	t5,96(sp)
   11258:	00008097          	auipc	ra,0x8
   1125c:	204080e7          	jalr	ra,516(ra) # 1945c <__sprint_r>
   11260:	ee0519e3          	bne	a0,zero,11152 <_vfprintf_r+0xbf4>
   11264:	67d2                	c.ldsp	a5,272(sp)
   11266:	7f06                	c.ldsp	t5,96(sp)
   11268:	18010313          	addi	t1,sp,384
   1126c:	d26ff06f          	jal	zero,10792 <_vfprintf_r+0x234>
   11270:	10812703          	lw	a4,264(sp)
   11274:	0000cb97          	auipc	s7,0xc
   11278:	204b8b93          	addi	s7,s7,516 # 1d478 <blanks.1>
   1127c:	4a1d                	c.li	s4,7
   1127e:	009ac663          	blt	s5,s1,1128a <_vfprintf_r+0xd2c>
   11282:	a089                	c.j	112c4 <_vfprintf_r+0xd66>
   11284:	34c1                	c.addiw	s1,-16
   11286:	029adf63          	bge	s5,s1,112c4 <_vfprintf_r+0xd66>
   1128a:	2705                	c.addiw	a4,1
   1128c:	07c1                	c.addi	a5,16
   1128e:	01733023          	sd	s7,0(t1)
   11292:	01533423          	sd	s5,8(t1)
   11296:	ea3e                	c.sdsp	a5,272(sp)
   11298:	10e12423          	sw	a4,264(sp)
   1129c:	0341                	c.addi	t1,16
   1129e:	feea53e3          	bge	s4,a4,11284 <_vfprintf_r+0xd26>
   112a2:	0210                	c.addi4spn	a2,sp,256
   112a4:	85da                	c.mv	a1,s6
   112a6:	8562                	c.mv	a0,s8
   112a8:	00008097          	auipc	ra,0x8
   112ac:	1b4080e7          	jalr	ra,436(ra) # 1945c <__sprint_r>
   112b0:	ea0511e3          	bne	a0,zero,11152 <_vfprintf_r+0xbf4>
   112b4:	34c1                	c.addiw	s1,-16
   112b6:	67d2                	c.ldsp	a5,272(sp)
   112b8:	10812703          	lw	a4,264(sp)
   112bc:	18010313          	addi	t1,sp,384
   112c0:	fc9ac5e3          	blt	s5,s1,1128a <_vfprintf_r+0xd2c>
   112c4:	0017069b          	addiw	a3,a4,1
   112c8:	97a6                	c.add	a5,s1
   112ca:	01733023          	sd	s7,0(t1)
   112ce:	00933423          	sd	s1,8(t1)
   112d2:	ea3e                	c.sdsp	a5,272(sp)
   112d4:	10d12423          	sw	a3,264(sp)
   112d8:	471d                	c.li	a4,7
   112da:	ced75e63          	bge	a4,a3,107d6 <_vfprintf_r+0x278>
   112de:	0210                	c.addi4spn	a2,sp,256
   112e0:	85da                	c.mv	a1,s6
   112e2:	8562                	c.mv	a0,s8
   112e4:	00008097          	auipc	ra,0x8
   112e8:	178080e7          	jalr	ra,376(ra) # 1945c <__sprint_r>
   112ec:	e60513e3          	bne	a0,zero,11152 <_vfprintf_r+0xbf4>
   112f0:	67d2                	c.ldsp	a5,272(sp)
   112f2:	ce4ff06f          	jal	zero,107d6 <_vfprintf_r+0x278>
   112f6:	466e                	c.lwsp	a2,216(sp)
   112f8:	48c05163          	bge	zero,a2,1177a <_vfprintf_r+0x121c>
   112fc:	6762                	c.ldsp	a4,24(sp)
   112fe:	7682                	c.ldsp	a3,32(sp)
   11300:	00070a1b          	addiw	s4,a4,0
   11304:	26e6c663          	blt	a3,a4,11570 <_vfprintf_r+0x1012>
   11308:	03405263          	bge	zero,s4,1132c <_vfprintf_r+0xdce>
   1130c:	10812703          	lw	a4,264(sp)
   11310:	97d2                	c.add	a5,s4
   11312:	01b33023          	sd	s11,0(t1)
   11316:	0017069b          	addiw	a3,a4,1
   1131a:	01433423          	sd	s4,8(t1)
   1131e:	ea3e                	c.sdsp	a5,272(sp)
   11320:	10d12423          	sw	a3,264(sp)
   11324:	471d                	c.li	a4,7
   11326:	0341                	c.addi	t1,16
   11328:	04d744e3          	blt	a4,a3,11b70 <_vfprintf_r+0x1612>
   1132c:	fffa4713          	xori	a4,s4,-1
   11330:	977d                	c.srai	a4,0x3f
   11332:	00ea7a33          	and	s4,s4,a4
   11336:	6762                	c.ldsp	a4,24(sp)
   11338:	41470a3b          	subw	s4,a4,s4
   1133c:	35404163          	blt	zero,s4,1167e <_vfprintf_r+0x1120>
   11340:	66e2                	c.ldsp	a3,24(sp)
   11342:	4004f713          	andi	a4,s1,1024
   11346:	00dd8d33          	add	s10,s11,a3
   1134a:	64071b63          	bne	a4,zero,119a0 <_vfprintf_r+0x1442>
   1134e:	476e                	c.lwsp	a4,216(sp)
   11350:	7682                	c.ldsp	a3,32(sp)
   11352:	00d74663          	blt	a4,a3,1135e <_vfprintf_r+0xe00>
   11356:	0014f693          	andi	a3,s1,1
   1135a:	02068be3          	beq	a3,zero,11b90 <_vfprintf_r+0x1632>
   1135e:	6686                	c.ldsp	a3,64(sp)
   11360:	7662                	c.ldsp	a2,56(sp)
   11362:	0341                	c.addi	t1,16
   11364:	fed33823          	sd	a3,-16(t1)
   11368:	10812683          	lw	a3,264(sp)
   1136c:	97b2                	c.add	a5,a2
   1136e:	fec33c23          	sd	a2,-8(t1)
   11372:	2685                	c.addiw	a3,1
   11374:	0006861b          	addiw	a2,a3,0
   11378:	10d12423          	sw	a3,264(sp)
   1137c:	ea3e                	c.sdsp	a5,272(sp)
   1137e:	469d                	c.li	a3,7
   11380:	32c6cee3          	blt	a3,a2,11ebc <_vfprintf_r+0x195e>
   11384:	7682                	c.ldsp	a3,32(sp)
   11386:	40e6863b          	subw	a2,a3,a4
   1138a:	96ee                	c.add	a3,s11
   1138c:	41a686bb          	subw	a3,a3,s10
   11390:	8732                	c.mv	a4,a2
   11392:	00c6d363          	bge	a3,a2,11398 <_vfprintf_r+0xe3a>
   11396:	8736                	c.mv	a4,a3
   11398:	00070c9b          	addiw	s9,a4,0
   1139c:	03905263          	bge	zero,s9,113c0 <_vfprintf_r+0xe62>
   113a0:	10812683          	lw	a3,264(sp)
   113a4:	97e6                	c.add	a5,s9
   113a6:	01a33023          	sd	s10,0(t1)
   113aa:	0016859b          	addiw	a1,a3,1
   113ae:	01933423          	sd	s9,8(t1)
   113b2:	ea3e                	c.sdsp	a5,272(sp)
   113b4:	10b12423          	sw	a1,264(sp)
   113b8:	469d                	c.li	a3,7
   113ba:	0341                	c.addi	t1,16
   113bc:	40b6c0e3          	blt	a3,a1,11fbc <_vfprintf_r+0x1a5e>
   113c0:	fffcca13          	xori	s4,s9,-1
   113c4:	43fa5a13          	srai	s4,s4,0x3f
   113c8:	014cfa33          	and	s4,s9,s4
   113cc:	41460a3b          	subw	s4,a2,s4
   113d0:	bf405d63          	bge	zero,s4,107ca <_vfprintf_r+0x26c>
   113d4:	10812703          	lw	a4,264(sp)
   113d8:	434ade63          	bge	s5,s4,11814 <_vfprintf_r+0x12b6>
   113dc:	4b9d                	c.li	s7,7
   113de:	a021                	c.j	113e6 <_vfprintf_r+0xe88>
   113e0:	3a41                	c.addiw	s4,-16
   113e2:	434ad963          	bge	s5,s4,11814 <_vfprintf_r+0x12b6>
   113e6:	0017069b          	addiw	a3,a4,1
   113ea:	07c1                	c.addi	a5,16
   113ec:	0000c717          	auipc	a4,0xc
   113f0:	09c70713          	addi	a4,a4,156 # 1d488 <zeroes.0>
   113f4:	00e33023          	sd	a4,0(t1)
   113f8:	01533423          	sd	s5,8(t1)
   113fc:	ea3e                	c.sdsp	a5,272(sp)
   113fe:	0006871b          	addiw	a4,a3,0
   11402:	10d12423          	sw	a3,264(sp)
   11406:	0341                	c.addi	t1,16
   11408:	fcebdce3          	bge	s7,a4,113e0 <_vfprintf_r+0xe82>
   1140c:	0210                	c.addi4spn	a2,sp,256
   1140e:	85da                	c.mv	a1,s6
   11410:	8562                	c.mv	a0,s8
   11412:	00008097          	auipc	ra,0x8
   11416:	04a080e7          	jalr	ra,74(ra) # 1945c <__sprint_r>
   1141a:	d2051ce3          	bne	a0,zero,11152 <_vfprintf_r+0xbf4>
   1141e:	67d2                	c.ldsp	a5,272(sp)
   11420:	10812703          	lw	a4,264(sp)
   11424:	18010313          	addi	t1,sp,384
   11428:	bf65                	c.j	113e0 <_vfprintf_r+0xe82>
   1142a:	0014f513          	andi	a0,s1,1
   1142e:	ec051e63          	bne	a0,zero,10b0a <_vfprintf_r+0x5ac>
   11432:	00b33423          	sd	a1,8(t1)
   11436:	ea5e                	c.sdsp	s7,272(sp)
   11438:	10e12423          	sw	a4,264(sp)
   1143c:	469d                	c.li	a3,7
   1143e:	16e6c163          	blt	a3,a4,115a0 <_vfprintf_r+0x1042>
   11442:	2609                	c.addiw	a2,2
   11444:	02030313          	addi	t1,t1,32
   11448:	f44ff06f          	jal	zero,10b8c <_vfprintf_r+0x62e>
   1144c:	f5905063          	bge	zero,s9,10b8c <_vfprintf_r+0x62e>
   11450:	699ad3e3          	bge	s5,s9,122d6 <_vfprintf_r+0x1d78>
   11454:	4d9d                	c.li	s11,7
   11456:	a031                	c.j	11462 <_vfprintf_r+0xf04>
   11458:	3cc1                	c.addiw	s9,-16
   1145a:	139ad063          	bge	s5,s9,1157a <_vfprintf_r+0x101c>
   1145e:	001d089b          	addiw	a7,s10,1
   11462:	0bc1                	c.addi	s7,16
   11464:	0000c797          	auipc	a5,0xc
   11468:	02478793          	addi	a5,a5,36 # 1d488 <zeroes.0>
   1146c:	00fa3023          	sd	a5,0(s4)
   11470:	015a3423          	sd	s5,8(s4)
   11474:	ea5e                	c.sdsp	s7,272(sp)
   11476:	00088d1b          	addiw	s10,a7,0
   1147a:	11112423          	sw	a7,264(sp)
   1147e:	0a41                	c.addi	s4,16
   11480:	fdaddce3          	bge	s11,s10,11458 <_vfprintf_r+0xefa>
   11484:	0210                	c.addi4spn	a2,sp,256
   11486:	85da                	c.mv	a1,s6
   11488:	8562                	c.mv	a0,s8
   1148a:	00008097          	auipc	ra,0x8
   1148e:	fd2080e7          	jalr	ra,-46(ra) # 1945c <__sprint_r>
   11492:	cc0510e3          	bne	a0,zero,11152 <_vfprintf_r+0xbf4>
   11496:	6bd2                	c.ldsp	s7,272(sp)
   11498:	10812d03          	lw	s10,264(sp)
   1149c:	18010a13          	addi	s4,sp,384
   114a0:	bf65                	c.j	11458 <_vfprintf_r+0xefa>
   114a2:	010bf793          	andi	a5,s7,16
   114a6:	efd9                	c.bnez	a5,11544 <_vfprintf_r+0xfe6>
   114a8:	66a2                	c.ldsp	a3,8(sp)
   114aa:	040bf793          	andi	a5,s7,64
   114ae:	0006a983          	lw	s3,0(a3)
   114b2:	44078963          	beq	a5,zero,11904 <_vfprintf_r+0x13a6>
   114b6:	19c2                	c.slli	s3,0x30
   114b8:	0309d993          	srli	s3,s3,0x30
   114bc:	e43a                	c.sdsp	a4,8(sp)
   114be:	4785                	c.li	a5,1
   114c0:	faeff06f          	jal	zero,10c6e <_vfprintf_r+0x710>
   114c4:	0104f793          	andi	a5,s1,16
   114c8:	ebad                	c.bnez	a5,1153a <_vfprintf_r+0xfdc>
   114ca:	66a2                	c.ldsp	a3,8(sp)
   114cc:	0404f793          	andi	a5,s1,64
   114d0:	0006a983          	lw	s3,0(a3)
   114d4:	44078263          	beq	a5,zero,11918 <_vfprintf_r+0x13ba>
   114d8:	19c2                	c.slli	s3,0x30
   114da:	0309d993          	srli	s3,s3,0x30
   114de:	f84ff06f          	jal	zero,10c62 <_vfprintf_r+0x704>
   114e2:	0104f793          	andi	a5,s1,16
   114e6:	e3c9                	c.bnez	a5,11568 <_vfprintf_r+0x100a>
   114e8:	0404f793          	andi	a5,s1,64
   114ec:	42078e63          	beq	a5,zero,11928 <_vfprintf_r+0x13ca>
   114f0:	67a2                	c.ldsp	a5,8(sp)
   114f2:	00079983          	lh	s3,0(a5)
   114f6:	87ce                	c.mv	a5,s3
   114f8:	9807d4e3          	bge	a5,zero,10e80 <_vfprintf_r+0x922>
   114fc:	02d00793          	addi	a5,zero,45
   11500:	0cf107a3          	sb	a5,207(sp)
   11504:	413009b3          	sub	s3,zero,s3
   11508:	e43a                	c.sdsp	a4,8(sp)
   1150a:	8ba6                	c.mv	s7,s1
   1150c:	4785                	c.li	a5,1
   1150e:	f64ff06f          	jal	zero,10c72 <_vfprintf_r+0x714>
   11512:	0014f713          	andi	a4,s1,1
   11516:	aa070a63          	beq	a4,zero,107ca <_vfprintf_r+0x26c>
   1151a:	b49d                	c.j	10f80 <_vfprintf_r+0xa22>
   1151c:	835e                	c.mv	t1,s7
   1151e:	b2b1                	c.j	10e6a <_vfprintf_r+0x90c>
   11520:	03000793          	addi	a5,zero,48
   11524:	16f10da3          	sb	a5,379(sp)
   11528:	17b10d93          	addi	s11,sp,379
   1152c:	f6aff06f          	jal	zero,10c96 <_vfprintf_r+0x738>
   11530:	6782                	c.ldsp	a5,0(sp)
   11532:	8da2                	c.mv	s11,s0
   11534:	e31c                	c.sd	a5,0(a4)
   11536:	accff06f          	jal	zero,10802 <_vfprintf_r+0x2a4>
   1153a:	67a2                	c.ldsp	a5,8(sp)
   1153c:	0007b983          	ld	s3,0(a5)
   11540:	f22ff06f          	jal	zero,10c62 <_vfprintf_r+0x704>
   11544:	67a2                	c.ldsp	a5,8(sp)
   11546:	e43a                	c.sdsp	a4,8(sp)
   11548:	0007b983          	ld	s3,0(a5)
   1154c:	4785                	c.li	a5,1
   1154e:	f20ff06f          	jal	zero,10c6e <_vfprintf_r+0x710>
   11552:	67a2                	c.ldsp	a5,8(sp)
   11554:	07bd                	c.addi	a5,15
   11556:	9bc1                	c.andi	a5,-16
   11558:	6398                	c.ld	a4,0(a5)
   1155a:	6794                	c.ld	a3,8(a5)
   1155c:	07c1                	c.addi	a5,16
   1155e:	e43e                	c.sdsp	a5,8(sp)
   11560:	f9ba                	c.sdsp	a4,240(sp)
   11562:	fdb6                	c.sdsp	a3,248(sp)
   11564:	b84ff06f          	jal	zero,108e8 <_vfprintf_r+0x38a>
   11568:	67a2                	c.ldsp	a5,8(sp)
   1156a:	639c                	c.ld	a5,0(a5)
   1156c:	89be                	c.mv	s3,a5
   1156e:	b239                	c.j	10e7c <_vfprintf_r+0x91e>
   11570:	00068a1b          	addiw	s4,a3,0
   11574:	d9404ce3          	blt	zero,s4,1130c <_vfprintf_r+0xdae>
   11578:	bb55                	c.j	1132c <_vfprintf_r+0xdce>
   1157a:	001d061b          	addiw	a2,s10,1
   1157e:	010a0713          	addi	a4,s4,16
   11582:	9be6                	c.add	s7,s9
   11584:	0000c797          	auipc	a5,0xc
   11588:	f0478793          	addi	a5,a5,-252 # 1d488 <zeroes.0>
   1158c:	00fa3023          	sd	a5,0(s4)
   11590:	019a3423          	sd	s9,8(s4)
   11594:	ea5e                	c.sdsp	s7,272(sp)
   11596:	10c12423          	sw	a2,264(sp)
   1159a:	469d                	c.li	a3,7
   1159c:	5ac6d163          	bge	a3,a2,11b3e <_vfprintf_r+0x15e0>
   115a0:	0210                	c.addi4spn	a2,sp,256
   115a2:	85da                	c.mv	a1,s6
   115a4:	8562                	c.mv	a0,s8
   115a6:	00008097          	auipc	ra,0x8
   115aa:	eb6080e7          	jalr	ra,-330(ra) # 1945c <__sprint_r>
   115ae:	ba0512e3          	bne	a0,zero,11152 <_vfprintf_r+0xbf4>
   115b2:	10812603          	lw	a2,264(sp)
   115b6:	6bd2                	c.ldsp	s7,272(sp)
   115b8:	19010313          	addi	t1,sp,400
   115bc:	2605                	c.addiw	a2,1
   115be:	18010a13          	addi	s4,sp,384
   115c2:	dcaff06f          	jal	zero,10b8c <_vfprintf_r+0x62e>
   115c6:	0000c797          	auipc	a5,0xc
   115ca:	d1a78793          	addi	a5,a5,-742 # 1d2e0 <__clzdi2+0xc8>
   115ce:	835e                	c.mv	t1,s7
   115d0:	e4be                	c.sdsp	a5,72(sp)
   115d2:	66a2                	c.ldsp	a3,8(sp)
   115d4:	0204f793          	andi	a5,s1,32
   115d8:	00868713          	addi	a4,a3,8
   115dc:	cfe5                	c.beqz	a5,116d4 <_vfprintf_r+0x1176>
   115de:	0006b983          	ld	s3,0(a3)
   115e2:	0014f793          	andi	a5,s1,1
   115e6:	cf81                	c.beqz	a5,115fe <_vfprintf_r+0x10a0>
   115e8:	00098b63          	beq	s3,zero,115fe <_vfprintf_r+0x10a0>
   115ec:	0024e493          	ori	s1,s1,2
   115f0:	03000793          	addi	a5,zero,48
   115f4:	0cf10823          	sb	a5,208(sp)
   115f8:	0d9108a3          	sb	s9,209(sp)
   115fc:	2481                	c.addiw	s1,0
   115fe:	bff4f493          	andi	s1,s1,-1025
   11602:	00048b9b          	addiw	s7,s1,0
   11606:	e43a                	c.sdsp	a4,8(sp)
   11608:	4789                	c.li	a5,2
   1160a:	e64ff06f          	jal	zero,10c6e <_vfprintf_r+0x710>
   1160e:	835e                	c.mv	t1,s7
   11610:	8ba6                	c.mv	s7,s1
   11612:	f46ff06f          	jal	zero,10d58 <_vfprintf_r+0x7fa>
   11616:	2004e493          	ori	s1,s1,512
   1161a:	00144e03          	lbu	t3,1(s0)
   1161e:	2481                	c.addiw	s1,0
   11620:	0405                	c.addi	s0,1
   11622:	87aff06f          	jal	zero,1069c <_vfprintf_r+0x13e>
   11626:	0204e493          	ori	s1,s1,32
   1162a:	00144e03          	lbu	t3,1(s0)
   1162e:	2481                	c.addiw	s1,0
   11630:	0405                	c.addi	s0,1
   11632:	86aff06f          	jal	zero,1069c <_vfprintf_r+0x13e>
   11636:	0000c797          	auipc	a5,0xc
   1163a:	c9278793          	addi	a5,a5,-878 # 1d2c8 <__clzdi2+0xb0>
   1163e:	835e                	c.mv	t1,s7
   11640:	e4be                	c.sdsp	a5,72(sp)
   11642:	bf41                	c.j	115d2 <_vfprintf_r+0x1074>
   11644:	835e                	c.mv	t1,s7
   11646:	e0aff06f          	jal	zero,10c50 <_vfprintf_r+0x6f2>
   1164a:	0210                	c.addi4spn	a2,sp,256
   1164c:	85da                	c.mv	a1,s6
   1164e:	8562                	c.mv	a0,s8
   11650:	00008097          	auipc	ra,0x8
   11654:	e0c080e7          	jalr	ra,-500(ra) # 1945c <__sprint_r>
   11658:	ae051de3          	bne	a0,zero,11152 <_vfprintf_r+0xbf4>
   1165c:	67d2                	c.ldsp	a5,272(sp)
   1165e:	18010313          	addi	t1,sp,384
   11662:	b291                	c.j	10fa6 <_vfprintf_r+0xa48>
   11664:	4799                	c.li	a5,6
   11666:	000d0a1b          	addiw	s4,s10,0
   1166a:	53a7e163          	bltu	a5,s10,11b8c <_vfprintf_r+0x162e>
   1166e:	89d2                	c.mv	s3,s4
   11670:	e45e                	c.sdsp	s7,8(sp)
   11672:	0000cd97          	auipc	s11,0xc
   11676:	c86d8d93          	addi	s11,s11,-890 # 1d2f8 <__clzdi2+0xe0>
   1167a:	89aff06f          	jal	zero,10714 <_vfprintf_r+0x1b6>
   1167e:	10812703          	lw	a4,264(sp)
   11682:	2d4adf63          	bge	s5,s4,11960 <_vfprintf_r+0x1402>
   11686:	4b9d                	c.li	s7,7
   11688:	a021                	c.j	11690 <_vfprintf_r+0x1132>
   1168a:	3a41                	c.addiw	s4,-16
   1168c:	2d4ada63          	bge	s5,s4,11960 <_vfprintf_r+0x1402>
   11690:	0017069b          	addiw	a3,a4,1
   11694:	07c1                	c.addi	a5,16
   11696:	0000c717          	auipc	a4,0xc
   1169a:	df270713          	addi	a4,a4,-526 # 1d488 <zeroes.0>
   1169e:	00e33023          	sd	a4,0(t1)
   116a2:	01533423          	sd	s5,8(t1)
   116a6:	ea3e                	c.sdsp	a5,272(sp)
   116a8:	0006871b          	addiw	a4,a3,0
   116ac:	10d12423          	sw	a3,264(sp)
   116b0:	0341                	c.addi	t1,16
   116b2:	fcebdce3          	bge	s7,a4,1168a <_vfprintf_r+0x112c>
   116b6:	0210                	c.addi4spn	a2,sp,256
   116b8:	85da                	c.mv	a1,s6
   116ba:	8562                	c.mv	a0,s8
   116bc:	00008097          	auipc	ra,0x8
   116c0:	da0080e7          	jalr	ra,-608(ra) # 1945c <__sprint_r>
   116c4:	a80517e3          	bne	a0,zero,11152 <_vfprintf_r+0xbf4>
   116c8:	67d2                	c.ldsp	a5,272(sp)
   116ca:	10812703          	lw	a4,264(sp)
   116ce:	18010313          	addi	t1,sp,384
   116d2:	bf65                	c.j	1168a <_vfprintf_r+0x112c>
   116d4:	0104f793          	andi	a5,s1,16
   116d8:	10078563          	beq	a5,zero,117e2 <_vfprintf_r+0x1284>
   116dc:	67a2                	c.ldsp	a5,8(sp)
   116de:	0007b983          	ld	s3,0(a5)
   116e2:	b701                	c.j	115e2 <_vfprintf_r+0x1084>
   116e4:	0210                	c.addi4spn	a2,sp,256
   116e6:	85da                	c.mv	a1,s6
   116e8:	8562                	c.mv	a0,s8
   116ea:	00008097          	auipc	ra,0x8
   116ee:	d72080e7          	jalr	ra,-654(ra) # 1945c <__sprint_r>
   116f2:	a60510e3          	bne	a0,zero,11152 <_vfprintf_r+0xbf4>
   116f6:	6bd2                	c.ldsp	s7,272(sp)
   116f8:	10812703          	lw	a4,264(sp)
   116fc:	18010a13          	addi	s4,sp,384
   11700:	c1cff06f          	jal	zero,10b1c <_vfprintf_r+0x5be>
   11704:	0210                	c.addi4spn	a2,sp,256
   11706:	85da                	c.mv	a1,s6
   11708:	8562                	c.mv	a0,s8
   1170a:	00008097          	auipc	ra,0x8
   1170e:	d52080e7          	jalr	ra,-686(ra) # 1945c <__sprint_r>
   11712:	a40510e3          	bne	a0,zero,11152 <_vfprintf_r+0xbf4>
   11716:	6bd2                	c.ldsp	s7,272(sp)
   11718:	10812d03          	lw	s10,264(sp)
   1171c:	18010a13          	addi	s4,sp,384
   11720:	c1cff06f          	jal	zero,10b3c <_vfprintf_r+0x5de>
   11724:	17c10a13          	addi	s4,sp,380
   11728:	6866                	c.ldsp	a6,88(sp)
   1172a:	400bf713          	andi	a4,s7,1024
   1172e:	4581                	c.li	a1,0
   11730:	8652                	c.mv	a2,s4
   11732:	44a9                	c.li	s1,10
   11734:	46a5                	c.li	a3,9
   11736:	0ff00893          	addi	a7,zero,255
   1173a:	a039                	c.j	11748 <_vfprintf_r+0x11ea>
   1173c:	0299d7b3          	divu	a5,s3,s1
   11740:	0336f663          	bgeu	a3,s3,1176c <_vfprintf_r+0x120e>
   11744:	89be                	c.mv	s3,a5
   11746:	866e                	c.mv	a2,s11
   11748:	fff60d93          	addi	s11,a2,-1
   1174c:	2585                	c.addiw	a1,1
   1174e:	0299f7b3          	remu	a5,s3,s1
   11752:	0307879b          	addiw	a5,a5,48
   11756:	fef60fa3          	sb	a5,-1(a2)
   1175a:	d36d                	c.beqz	a4,1173c <_vfprintf_r+0x11de>
   1175c:	00084783          	lbu	a5,0(a6)
   11760:	fcf59ee3          	bne	a1,a5,1173c <_vfprintf_r+0x11de>
   11764:	fd178ce3          	beq	a5,a7,1173c <_vfprintf_r+0x11de>
   11768:	3936ef63          	bltu	a3,s3,11b06 <_vfprintf_r+0x15a8>
   1176c:	ecc2                	c.sdsp	a6,88(sp)
   1176e:	f02e                	c.sdsp	a1,32(sp)
   11770:	41ba0a3b          	subw	s4,s4,s11
   11774:	84de                	c.mv	s1,s7
   11776:	d20ff06f          	jal	zero,10c96 <_vfprintf_r+0x738>
   1177a:	10812703          	lw	a4,264(sp)
   1177e:	0000c697          	auipc	a3,0xc
   11782:	b8268693          	addi	a3,a3,-1150 # 1d300 <__clzdi2+0xe8>
   11786:	00d33023          	sd	a3,0(t1)
   1178a:	2705                	c.addiw	a4,1
   1178c:	4685                	c.li	a3,1
   1178e:	0785                	c.addi	a5,1
   11790:	00d33423          	sd	a3,8(t1)
   11794:	10e12423          	sw	a4,264(sp)
   11798:	0007069b          	addiw	a3,a4,0
   1179c:	ea3e                	c.sdsp	a5,272(sp)
   1179e:	471d                	c.li	a4,7
   117a0:	0341                	c.addi	t1,16
   117a2:	3ad74463          	blt	a4,a3,11b4a <_vfprintf_r+0x15ec>
   117a6:	e265                	c.bnez	a2,11886 <_vfprintf_r+0x1328>
   117a8:	7682                	c.ldsp	a3,32(sp)
   117aa:	0014f713          	andi	a4,s1,1
   117ae:	8f55                	c.or	a4,a3
   117b0:	80070d63          	beq	a4,zero,107ca <_vfprintf_r+0x26c>
   117b4:	6686                	c.ldsp	a3,64(sp)
   117b6:	7762                	c.ldsp	a4,56(sp)
   117b8:	00d33023          	sd	a3,0(t1)
   117bc:	10812683          	lw	a3,264(sp)
   117c0:	97ba                	c.add	a5,a4
   117c2:	00e33423          	sd	a4,8(t1)
   117c6:	2685                	c.addiw	a3,1
   117c8:	0006871b          	addiw	a4,a3,0
   117cc:	10d12423          	sw	a3,264(sp)
   117d0:	ea3e                	c.sdsp	a5,272(sp)
   117d2:	469d                	c.li	a3,7
   117d4:	42e6c663          	blt	a3,a4,11c00 <_vfprintf_r+0x16a2>
   117d8:	0341                	c.addi	t1,16
   117da:	a8d9                	c.j	118b0 <_vfprintf_r+0x1352>
   117dc:	8c22                	c.mv	s8,s0
   117de:	8b26                	c.mv	s6,s1
   117e0:	ba8d                	c.j	11152 <_vfprintf_r+0xbf4>
   117e2:	66a2                	c.ldsp	a3,8(sp)
   117e4:	0404f793          	andi	a5,s1,64
   117e8:	0006a983          	lw	s3,0(a3)
   117ec:	10078563          	beq	a5,zero,118f6 <_vfprintf_r+0x1398>
   117f0:	19c2                	c.slli	s3,0x30
   117f2:	0309d993          	srli	s3,s3,0x30
   117f6:	b3f5                	c.j	115e2 <_vfprintf_r+0x1084>
   117f8:	0210                	c.addi4spn	a2,sp,256
   117fa:	85da                	c.mv	a1,s6
   117fc:	8562                	c.mv	a0,s8
   117fe:	00008097          	auipc	ra,0x8
   11802:	c5e080e7          	jalr	ra,-930(ra) # 1945c <__sprint_r>
   11806:	940516e3          	bne	a0,zero,11152 <_vfprintf_r+0xbf4>
   1180a:	67d2                	c.ldsp	a5,272(sp)
   1180c:	18010313          	addi	t1,sp,384
   11810:	f68ff06f          	jal	zero,10f78 <_vfprintf_r+0xa1a>
   11814:	0000c697          	auipc	a3,0xc
   11818:	c7468693          	addi	a3,a3,-908 # 1d488 <zeroes.0>
   1181c:	2705                	c.addiw	a4,1
   1181e:	97d2                	c.add	a5,s4
   11820:	00d33023          	sd	a3,0(t1)
   11824:	01433423          	sd	s4,8(t1)
   11828:	0007069b          	addiw	a3,a4,0
   1182c:	10e12423          	sw	a4,264(sp)
   11830:	ea3e                	c.sdsp	a5,272(sp)
   11832:	471d                	c.li	a4,7
   11834:	00d74463          	blt	a4,a3,1183c <_vfprintf_r+0x12de>
   11838:	f91fe06f          	jal	zero,107c8 <_vfprintf_r+0x26a>
   1183c:	b6cff06f          	jal	zero,10ba8 <_vfprintf_r+0x64a>
   11840:	754e                	c.ldsp	a0,240(sp)
   11842:	75ee                	c.ldsp	a1,248(sp)
   11844:	4601                	c.li	a2,0
   11846:	4681                	c.li	a3,0
   11848:	0000a097          	auipc	ra,0xa
   1184c:	702080e7          	jalr	ra,1794(ra) # 1bf4a <__letf2>
   11850:	6342                	c.ldsp	t1,16(sp)
   11852:	66054063          	blt	a0,zero,11eb2 <_vfprintf_r+0x1954>
   11856:	0cf14783          	lbu	a5,207(sp)
   1185a:	04700713          	addi	a4,zero,71
   1185e:	0000cd97          	auipc	s11,0xc
   11862:	a4ad8d93          	addi	s11,s11,-1462 # 1d2a8 <__clzdi2+0x90>
   11866:	31974063          	blt	a4,s9,11b66 <_vfprintf_r+0x1608>
   1186a:	f7f4f493          	andi	s1,s1,-129
   1186e:	e802                	c.sdsp	zero,16(sp)
   11870:	f802                	c.sdsp	zero,48(sp)
   11872:	f402                	c.sdsp	zero,40(sp)
   11874:	ec02                	c.sdsp	zero,24(sp)
   11876:	2481                	c.addiw	s1,0
   11878:	498d                	c.li	s3,3
   1187a:	4a0d                	c.li	s4,3
   1187c:	4d01                	c.li	s10,0
   1187e:	bc079363          	bne	a5,zero,10c44 <_vfprintf_r+0x6e6>
   11882:	e9dfe06f          	jal	zero,1071e <_vfprintf_r+0x1c0>
   11886:	6686                	c.ldsp	a3,64(sp)
   11888:	7762                	c.ldsp	a4,56(sp)
   1188a:	0341                	c.addi	t1,16
   1188c:	fed33823          	sd	a3,-16(t1)
   11890:	10812683          	lw	a3,264(sp)
   11894:	97ba                	c.add	a5,a4
   11896:	fee33c23          	sd	a4,-8(t1)
   1189a:	2685                	c.addiw	a3,1
   1189c:	0006871b          	addiw	a4,a3,0
   118a0:	10d12423          	sw	a3,264(sp)
   118a4:	ea3e                	c.sdsp	a5,272(sp)
   118a6:	469d                	c.li	a3,7
   118a8:	34e6cc63          	blt	a3,a4,11c00 <_vfprintf_r+0x16a2>
   118ac:	76064563          	blt	a2,zero,12016 <_vfprintf_r+0x1ab8>
   118b0:	7682                	c.ldsp	a3,32(sp)
   118b2:	2705                	c.addiw	a4,1
   118b4:	01b33023          	sd	s11,0(t1)
   118b8:	97b6                	c.add	a5,a3
   118ba:	00d33423          	sd	a3,8(t1)
   118be:	b7ad                	c.j	11828 <_vfprintf_r+0x12ca>
   118c0:	856e                	c.mv	a0,s11
   118c2:	f09a                	c.sdsp	t1,96(sp)
   118c4:	fffff097          	auipc	ra,0xfffff
   118c8:	c06080e7          	jalr	ra,-1018(ra) # 104ca <strlen>
   118cc:	00050a1b          	addiw	s4,a0,0
   118d0:	0cf14783          	lbu	a5,207(sp)
   118d4:	fffa4993          	xori	s3,s4,-1
   118d8:	43f9d993          	srai	s3,s3,0x3f
   118dc:	e45e                	c.sdsp	s7,8(sp)
   118de:	e802                	c.sdsp	zero,16(sp)
   118e0:	f802                	c.sdsp	zero,48(sp)
   118e2:	f402                	c.sdsp	zero,40(sp)
   118e4:	ec02                	c.sdsp	zero,24(sp)
   118e6:	7306                	c.ldsp	t1,96(sp)
   118e8:	0149f9b3          	and	s3,s3,s4
   118ec:	4d01                	c.li	s10,0
   118ee:	b4079b63          	bne	a5,zero,10c44 <_vfprintf_r+0x6e6>
   118f2:	e2dfe06f          	jal	zero,1071e <_vfprintf_r+0x1c0>
   118f6:	2004f793          	andi	a5,s1,512
   118fa:	2c078c63          	beq	a5,zero,11bd2 <_vfprintf_r+0x1674>
   118fe:	0ff9f993          	andi	s3,s3,255
   11902:	b1c5                	c.j	115e2 <_vfprintf_r+0x1084>
   11904:	200bf793          	andi	a5,s7,512
   11908:	2a078e63          	beq	a5,zero,11bc4 <_vfprintf_r+0x1666>
   1190c:	0ff9f993          	andi	s3,s3,255
   11910:	e43a                	c.sdsp	a4,8(sp)
   11912:	4785                	c.li	a5,1
   11914:	b5aff06f          	jal	zero,10c6e <_vfprintf_r+0x710>
   11918:	2004f793          	andi	a5,s1,512
   1191c:	2a078f63          	beq	a5,zero,11bda <_vfprintf_r+0x167c>
   11920:	0ff9f993          	andi	s3,s3,255
   11924:	b3eff06f          	jal	zero,10c62 <_vfprintf_r+0x704>
   11928:	2004f793          	andi	a5,s1,512
   1192c:	28078663          	beq	a5,zero,11bb8 <_vfprintf_r+0x165a>
   11930:	67a2                	c.ldsp	a5,8(sp)
   11932:	00078983          	lb	s3,0(a5)
   11936:	87ce                	c.mv	a5,s3
   11938:	d44ff06f          	jal	zero,10e7c <_vfprintf_r+0x91e>
   1193c:	77ee                	c.ldsp	a5,248(sp)
   1193e:	2a07cc63          	blt	a5,zero,11bf6 <_vfprintf_r+0x1698>
   11942:	0cf14783          	lbu	a5,207(sp)
   11946:	04700713          	addi	a4,zero,71
   1194a:	0000cd97          	auipc	s11,0xc
   1194e:	96ed8d93          	addi	s11,s11,-1682 # 1d2b8 <__clzdi2+0xa0>
   11952:	f1975ce3          	bge	a4,s9,1186a <_vfprintf_r+0x130c>
   11956:	0000cd97          	auipc	s11,0xc
   1195a:	96ad8d93          	addi	s11,s11,-1686 # 1d2c0 <__clzdi2+0xa8>
   1195e:	b731                	c.j	1186a <_vfprintf_r+0x130c>
   11960:	2705                	c.addiw	a4,1
   11962:	0000c697          	auipc	a3,0xc
   11966:	b2668693          	addi	a3,a3,-1242 # 1d488 <zeroes.0>
   1196a:	97d2                	c.add	a5,s4
   1196c:	00d33023          	sd	a3,0(t1)
   11970:	01433423          	sd	s4,8(t1)
   11974:	0007069b          	addiw	a3,a4,0
   11978:	10e12423          	sw	a4,264(sp)
   1197c:	ea3e                	c.sdsp	a5,272(sp)
   1197e:	471d                	c.li	a4,7
   11980:	0341                	c.addi	t1,16
   11982:	9ad75fe3          	bge	a4,a3,11340 <_vfprintf_r+0xde2>
   11986:	0210                	c.addi4spn	a2,sp,256
   11988:	85da                	c.mv	a1,s6
   1198a:	8562                	c.mv	a0,s8
   1198c:	00008097          	auipc	ra,0x8
   11990:	ad0080e7          	jalr	ra,-1328(ra) # 1945c <__sprint_r>
   11994:	fa051f63          	bne	a0,zero,11152 <_vfprintf_r+0xbf4>
   11998:	67d2                	c.ldsp	a5,272(sp)
   1199a:	18010313          	addi	t1,sp,384
   1199e:	b24d                	c.j	11340 <_vfprintf_r+0xde2>
   119a0:	7702                	c.ldsp	a4,32(sp)
   119a2:	7ca2                	c.ldsp	s9,40(sp)
   119a4:	ec22                	c.sdsp	s0,24(sp)
   119a6:	f0a6                	c.sdsp	s1,96(sp)
   119a8:	f4ca                	c.sdsp	s2,104(sp)
   119aa:	74c2                	c.ldsp	s1,48(sp)
   119ac:	f44e                	c.sdsp	s3,40(sp)
   119ae:	f86e                	c.sdsp	s11,48(sp)
   119b0:	6466                	c.ldsp	s0,88(sp)
   119b2:	7946                	c.ldsp	s2,112(sp)
   119b4:	79e6                	c.ldsp	s3,120(sp)
   119b6:	4b9d                	c.li	s7,7
   119b8:	00ed8a33          	add	s4,s11,a4
   119bc:	080c8163          	beq	s9,zero,11a3e <_vfprintf_r+0x14e0>
   119c0:	e0c9                	c.bnez	s1,11a42 <_vfprintf_r+0x14e4>
   119c2:	147d                	c.addi	s0,-1
   119c4:	3cfd                	c.addiw	s9,-1
   119c6:	10812703          	lw	a4,264(sp)
   119ca:	97ca                	c.add	a5,s2
   119cc:	01333023          	sd	s3,0(t1)
   119d0:	0017069b          	addiw	a3,a4,1
   119d4:	01233423          	sd	s2,8(t1)
   119d8:	ea3e                	c.sdsp	a5,272(sp)
   119da:	10d12423          	sw	a3,264(sp)
   119de:	0341                	c.addi	t1,16
   119e0:	0edbc563          	blt	s7,a3,11aca <_vfprintf_r+0x156c>
   119e4:	00044603          	lbu	a2,0(s0)
   119e8:	41aa053b          	subw	a0,s4,s10
   119ec:	0006071b          	addiw	a4,a2,0
   119f0:	86ba                	c.mv	a3,a4
   119f2:	00e55363          	bge	a0,a4,119f8 <_vfprintf_r+0x149a>
   119f6:	86aa                	c.mv	a3,a0
   119f8:	00068d9b          	addiw	s11,a3,0
   119fc:	03b05563          	bge	zero,s11,11a26 <_vfprintf_r+0x14c8>
   11a00:	10812703          	lw	a4,264(sp)
   11a04:	97ee                	c.add	a5,s11
   11a06:	01a33023          	sd	s10,0(t1)
   11a0a:	0017061b          	addiw	a2,a4,1
   11a0e:	01b33423          	sd	s11,8(t1)
   11a12:	ea3e                	c.sdsp	a5,272(sp)
   11a14:	10c12423          	sw	a2,264(sp)
   11a18:	0ccbc663          	blt	s7,a2,11ae4 <_vfprintf_r+0x1586>
   11a1c:	00044603          	lbu	a2,0(s0)
   11a20:	0341                	c.addi	t1,16
   11a22:	0006071b          	addiw	a4,a2,0
   11a26:	fffdc513          	xori	a0,s11,-1
   11a2a:	957d                	c.srai	a0,0x3f
   11a2c:	00adf6b3          	and	a3,s11,a0
   11a30:	40d70dbb          	subw	s11,a4,a3
   11a34:	01b04963          	blt	zero,s11,11a46 <_vfprintf_r+0x14e8>
   11a38:	9d32                	c.add	s10,a2
   11a3a:	f80c93e3          	bne	s9,zero,119c0 <_vfprintf_r+0x1462>
   11a3e:	3c048063          	beq	s1,zero,11dfe <_vfprintf_r+0x18a0>
   11a42:	34fd                	c.addiw	s1,-1
   11a44:	b749                	c.j	119c6 <_vfprintf_r+0x1468>
   11a46:	10812683          	lw	a3,264(sp)
   11a4a:	01bac663          	blt	s5,s11,11a56 <_vfprintf_r+0x14f8>
   11a4e:	a881                	c.j	11a9e <_vfprintf_r+0x1540>
   11a50:	3dc1                	c.addiw	s11,-16
   11a52:	05bad663          	bge	s5,s11,11a9e <_vfprintf_r+0x1540>
   11a56:	0016871b          	addiw	a4,a3,1
   11a5a:	07c1                	c.addi	a5,16
   11a5c:	0000c697          	auipc	a3,0xc
   11a60:	a2c68693          	addi	a3,a3,-1492 # 1d488 <zeroes.0>
   11a64:	00d33023          	sd	a3,0(t1)
   11a68:	01533423          	sd	s5,8(t1)
   11a6c:	ea3e                	c.sdsp	a5,272(sp)
   11a6e:	0007069b          	addiw	a3,a4,0
   11a72:	10e12423          	sw	a4,264(sp)
   11a76:	0341                	c.addi	t1,16
   11a78:	fcdbdce3          	bge	s7,a3,11a50 <_vfprintf_r+0x14f2>
   11a7c:	0210                	c.addi4spn	a2,sp,256
   11a7e:	85da                	c.mv	a1,s6
   11a80:	8562                	c.mv	a0,s8
   11a82:	00008097          	auipc	ra,0x8
   11a86:	9da080e7          	jalr	ra,-1574(ra) # 1945c <__sprint_r>
   11a8a:	ec051463          	bne	a0,zero,11152 <_vfprintf_r+0xbf4>
   11a8e:	3dc1                	c.addiw	s11,-16
   11a90:	67d2                	c.ldsp	a5,272(sp)
   11a92:	10812683          	lw	a3,264(sp)
   11a96:	18010313          	addi	t1,sp,384
   11a9a:	fbbacee3          	blt	s5,s11,11a56 <_vfprintf_r+0x14f8>
   11a9e:	2685                	c.addiw	a3,1
   11aa0:	0000c717          	auipc	a4,0xc
   11aa4:	9e870713          	addi	a4,a4,-1560 # 1d488 <zeroes.0>
   11aa8:	97ee                	c.add	a5,s11
   11aaa:	00e33023          	sd	a4,0(t1)
   11aae:	01b33423          	sd	s11,8(t1)
   11ab2:	ea3e                	c.sdsp	a5,272(sp)
   11ab4:	0006871b          	addiw	a4,a3,0
   11ab8:	10d12423          	sw	a3,264(sp)
   11abc:	3cebcb63          	blt	s7,a4,11e92 <_vfprintf_r+0x1934>
   11ac0:	00044603          	lbu	a2,0(s0)
   11ac4:	0341                	c.addi	t1,16
   11ac6:	9d32                	c.add	s10,a2
   11ac8:	bf8d                	c.j	11a3a <_vfprintf_r+0x14dc>
   11aca:	0210                	c.addi4spn	a2,sp,256
   11acc:	85da                	c.mv	a1,s6
   11ace:	8562                	c.mv	a0,s8
   11ad0:	00008097          	auipc	ra,0x8
   11ad4:	98c080e7          	jalr	ra,-1652(ra) # 1945c <__sprint_r>
   11ad8:	e6051d63          	bne	a0,zero,11152 <_vfprintf_r+0xbf4>
   11adc:	67d2                	c.ldsp	a5,272(sp)
   11ade:	18010313          	addi	t1,sp,384
   11ae2:	b709                	c.j	119e4 <_vfprintf_r+0x1486>
   11ae4:	0210                	c.addi4spn	a2,sp,256
   11ae6:	85da                	c.mv	a1,s6
   11ae8:	8562                	c.mv	a0,s8
   11aea:	00008097          	auipc	ra,0x8
   11aee:	972080e7          	jalr	ra,-1678(ra) # 1945c <__sprint_r>
   11af2:	e6051063          	bne	a0,zero,11152 <_vfprintf_r+0xbf4>
   11af6:	00044603          	lbu	a2,0(s0)
   11afa:	67d2                	c.ldsp	a5,272(sp)
   11afc:	18010313          	addi	t1,sp,384
   11b00:	0006071b          	addiw	a4,a2,0
   11b04:	b70d                	c.j	11a26 <_vfprintf_r+0x14c8>
   11b06:	77c6                	c.ldsp	a5,112(sp)
   11b08:	75e6                	c.ldsp	a1,120(sp)
   11b0a:	f01a                	c.sdsp	t1,32(sp)
   11b0c:	40fd8db3          	sub	s11,s11,a5
   11b10:	863e                	c.mv	a2,a5
   11b12:	856e                	c.mv	a0,s11
   11b14:	ec3a                	c.sdsp	a4,24(sp)
   11b16:	e842                	c.sdsp	a6,16(sp)
   11b18:	00006097          	auipc	ra,0x6
   11b1c:	a96080e7          	jalr	ra,-1386(ra) # 175ae <strncpy>
   11b20:	6842                	c.ldsp	a6,16(sp)
   11b22:	0299d7b3          	divu	a5,s3,s1
   11b26:	6762                	c.ldsp	a4,24(sp)
   11b28:	00184603          	lbu	a2,1(a6)
   11b2c:	7302                	c.ldsp	t1,32(sp)
   11b2e:	4581                	c.li	a1,0
   11b30:	00c03633          	sltu	a2,zero,a2
   11b34:	9832                	c.add	a6,a2
   11b36:	46a5                	c.li	a3,9
   11b38:	0ff00893          	addi	a7,zero,255
   11b3c:	b121                	c.j	11744 <_vfprintf_r+0x11e6>
   11b3e:	2605                	c.addiw	a2,1
   11b40:	01070313          	addi	t1,a4,16
   11b44:	8a3a                	c.mv	s4,a4
   11b46:	846ff06f          	jal	zero,10b8c <_vfprintf_r+0x62e>
   11b4a:	0210                	c.addi4spn	a2,sp,256
   11b4c:	85da                	c.mv	a1,s6
   11b4e:	8562                	c.mv	a0,s8
   11b50:	00008097          	auipc	ra,0x8
   11b54:	90c080e7          	jalr	ra,-1780(ra) # 1945c <__sprint_r>
   11b58:	de051d63          	bne	a0,zero,11152 <_vfprintf_r+0xbf4>
   11b5c:	466e                	c.lwsp	a2,216(sp)
   11b5e:	67d2                	c.ldsp	a5,272(sp)
   11b60:	18010313          	addi	t1,sp,384
   11b64:	b189                	c.j	117a6 <_vfprintf_r+0x1248>
   11b66:	0000bd97          	auipc	s11,0xb
   11b6a:	74ad8d93          	addi	s11,s11,1866 # 1d2b0 <__clzdi2+0x98>
   11b6e:	b9f5                	c.j	1186a <_vfprintf_r+0x130c>
   11b70:	0210                	c.addi4spn	a2,sp,256
   11b72:	85da                	c.mv	a1,s6
   11b74:	8562                	c.mv	a0,s8
   11b76:	00008097          	auipc	ra,0x8
   11b7a:	8e6080e7          	jalr	ra,-1818(ra) # 1945c <__sprint_r>
   11b7e:	dc051a63          	bne	a0,zero,11152 <_vfprintf_r+0xbf4>
   11b82:	67d2                	c.ldsp	a5,272(sp)
   11b84:	18010313          	addi	t1,sp,384
   11b88:	fa4ff06f          	jal	zero,1132c <_vfprintf_r+0xdce>
   11b8c:	4a19                	c.li	s4,6
   11b8e:	b4c5                	c.j	1166e <_vfprintf_r+0x1110>
   11b90:	7682                	c.ldsp	a3,32(sp)
   11b92:	00dd8833          	add	a6,s11,a3
   11b96:	40e6863b          	subw	a2,a3,a4
   11b9a:	41a80e3b          	subw	t3,a6,s10
   11b9e:	8732                	c.mv	a4,a2
   11ba0:	00ce5363          	bge	t3,a2,11ba6 <_vfprintf_r+0x1648>
   11ba4:	8772                	c.mv	a4,t3
   11ba6:	00070c9b          	addiw	s9,a4,0
   11baa:	b819                	c.j	113c0 <_vfprintf_r+0xe62>
   11bac:	6782                	c.ldsp	a5,0(sp)
   11bae:	8da2                	c.mv	s11,s0
   11bb0:	00f71023          	sh	a5,0(a4)
   11bb4:	c4ffe06f          	jal	zero,10802 <_vfprintf_r+0x2a4>
   11bb8:	67a2                	c.ldsp	a5,8(sp)
   11bba:	0007a983          	lw	s3,0(a5)
   11bbe:	87ce                	c.mv	a5,s3
   11bc0:	abcff06f          	jal	zero,10e7c <_vfprintf_r+0x91e>
   11bc4:	1982                	c.slli	s3,0x20
   11bc6:	0209d993          	srli	s3,s3,0x20
   11bca:	e43a                	c.sdsp	a4,8(sp)
   11bcc:	4785                	c.li	a5,1
   11bce:	8a0ff06f          	jal	zero,10c6e <_vfprintf_r+0x710>
   11bd2:	1982                	c.slli	s3,0x20
   11bd4:	0209d993          	srli	s3,s3,0x20
   11bd8:	b429                	c.j	115e2 <_vfprintf_r+0x1084>
   11bda:	1982                	c.slli	s3,0x20
   11bdc:	0209d993          	srli	s3,s3,0x20
   11be0:	882ff06f          	jal	zero,10c62 <_vfprintf_r+0x704>
   11be4:	0210                	c.addi4spn	a2,sp,256
   11be6:	85da                	c.mv	a1,s6
   11be8:	8562                	c.mv	a0,s8
   11bea:	00008097          	auipc	ra,0x8
   11bee:	872080e7          	jalr	ra,-1934(ra) # 1945c <__sprint_r>
   11bf2:	c21fe06f          	jal	zero,10812 <_vfprintf_r+0x2b4>
   11bf6:	02d00793          	addi	a5,zero,45
   11bfa:	0cf107a3          	sb	a5,207(sp)
   11bfe:	b3a1                	c.j	11946 <_vfprintf_r+0x13e8>
   11c00:	0210                	c.addi4spn	a2,sp,256
   11c02:	85da                	c.mv	a1,s6
   11c04:	8562                	c.mv	a0,s8
   11c06:	00008097          	auipc	ra,0x8
   11c0a:	856080e7          	jalr	ra,-1962(ra) # 1945c <__sprint_r>
   11c0e:	d4051263          	bne	a0,zero,11152 <_vfprintf_r+0xbf4>
   11c12:	466e                	c.lwsp	a2,216(sp)
   11c14:	67d2                	c.ldsp	a5,272(sp)
   11c16:	10812703          	lw	a4,264(sp)
   11c1a:	18010313          	addi	t1,sp,384
   11c1e:	b179                	c.j	118ac <_vfprintf_r+0x134e>
   11c20:	03000793          	addi	a5,zero,48
   11c24:	0cf10823          	sb	a5,208(sp)
   11c28:	05800713          	addi	a4,zero,88
   11c2c:	0024e793          	ori	a5,s1,2
   11c30:	2781                	c.addiw	a5,0
   11c32:	0ce108a3          	sb	a4,209(sp)
   11c36:	f83e                	c.sdsp	a5,48(sp)
   11c38:	06300713          	addi	a4,zero,99
   11c3c:	e802                	c.sdsp	zero,16(sp)
   11c3e:	11810d93          	addi	s11,sp,280
   11c42:	4fa74363          	blt	a4,s10,12128 <_vfprintf_r+0x1bca>
   11c46:	7a6e                	c.ldsp	s4,248(sp)
   11c48:	fdfcf793          	andi	a5,s9,-33
   11c4c:	1024e493          	ori	s1,s1,258
   11c50:	f43e                	c.sdsp	a5,40(sp)
   11c52:	f082                	c.sdsp	zero,96(sp)
   11c54:	7bce                	c.ldsp	s7,240(sp)
   11c56:	2481                	c.addiw	s1,0
   11c58:	220a4563          	blt	s4,zero,11e82 <_vfprintf_r+0x1924>
   11c5c:	06100793          	addi	a5,zero,97
   11c60:	52fc8c63          	beq	s9,a5,12198 <_vfprintf_r+0x1c3a>
   11c64:	04100793          	addi	a5,zero,65
   11c68:	00fc8463          	beq	s9,a5,11c70 <_vfprintf_r+0x1712>
   11c6c:	cebfe06f          	jal	zero,10956 <_vfprintf_r+0x3f8>
   11c70:	85d2                	c.mv	a1,s4
   11c72:	855e                	c.mv	a0,s7
   11c74:	f01a                	c.sdsp	t1,32(sp)
   11c76:	0000b097          	auipc	ra,0xb
   11c7a:	376080e7          	jalr	ra,886(ra) # 1cfec <__trunctfdf2>
   11c7e:	09a8                	c.addi4spn	a0,sp,216
   11c80:	00005097          	auipc	ra,0x5
   11c84:	59e080e7          	jalr	ra,1438(ra) # 1721e <frexp>
   11c88:	0000b097          	auipc	ra,0xb
   11c8c:	29e080e7          	jalr	ra,670(ra) # 1cf26 <__extenddftf2>
   11c90:	0000c797          	auipc	a5,0xc
   11c94:	83078793          	addi	a5,a5,-2000 # 1d4c0 <zeroes.0+0x38>
   11c98:	6390                	c.ld	a2,0(a5)
   11c9a:	6794                	c.ld	a3,8(a5)
   11c9c:	0000a097          	auipc	ra,0xa
   11ca0:	354080e7          	jalr	ra,852(ra) # 1bff0 <__multf3>
   11ca4:	4601                	c.li	a2,0
   11ca6:	4681                	c.li	a3,0
   11ca8:	8a2a                	c.mv	s4,a0
   11caa:	ec2e                	c.sdsp	a1,24(sp)
   11cac:	0000a097          	auipc	ra,0xa
   11cb0:	164080e7          	jalr	ra,356(ra) # 1be10 <__eqtf2>
   11cb4:	6fe2                	c.ldsp	t6,24(sp)
   11cb6:	7302                	c.ldsp	t1,32(sp)
   11cb8:	e119                	c.bnez	a0,11cbe <_vfprintf_r+0x1760>
   11cba:	4705                	c.li	a4,1
   11cbc:	cdba                	c.swsp	a4,216(sp)
   11cbe:	0000b797          	auipc	a5,0xb
   11cc2:	60a78793          	addi	a5,a5,1546 # 1d2c8 <__clzdi2+0xb0>
   11cc6:	ec3e                	c.sdsp	a5,24(sp)
   11cc8:	020d1713          	slli	a4,s10,0x20
   11ccc:	0000b697          	auipc	a3,0xb
   11cd0:	7d468693          	addi	a3,a3,2004 # 1d4a0 <zeroes.0+0x18>
   11cd4:	9301                	c.srli	a4,0x20
   11cd6:	629c                	c.ld	a5,0(a3)
   11cd8:	0705                	c.addi	a4,1
   11cda:	976e                	c.add	a4,s11
   11cdc:	f03a                	c.sdsp	a4,32(sp)
   11cde:	01ad873b          	addw	a4,s11,s10
   11ce2:	f4e6                	c.sdsp	s9,104(sp)
   11ce4:	e94a                	c.sdsp	s2,144(sp)
   11ce6:	ed6a                	c.sdsp	s10,152(sp)
   11ce8:	f562                	c.sdsp	s8,168(sp)
   11cea:	0086b983          	ld	s3,8(a3)
   11cee:	8bee                	c.mv	s7,s11
   11cf0:	e122                	c.sdsp	s0,128(sp)
   11cf2:	e526                	c.sdsp	s1,136(sp)
   11cf4:	f11a                	c.sdsp	t1,160(sp)
   11cf6:	f95a                	c.sdsp	s6,176(sp)
   11cf8:	fd6e                	c.sdsp	s11,184(sp)
   11cfa:	8c52                	c.mv	s8,s4
   11cfc:	8d7e                	c.mv	s10,t6
   11cfe:	893a                	c.mv	s2,a4
   11d00:	8cbe                	c.mv	s9,a5
   11d02:	a809                	c.j	11d14 <_vfprintf_r+0x17b6>
   11d04:	4601                	c.li	a2,0
   11d06:	4681                	c.li	a3,0
   11d08:	0000a097          	auipc	ra,0xa
   11d0c:	108080e7          	jalr	ra,264(ra) # 1be10 <__eqtf2>
   11d10:	46050563          	beq	a0,zero,1217a <_vfprintf_r+0x1c1c>
   11d14:	8666                	c.mv	a2,s9
   11d16:	86ce                	c.mv	a3,s3
   11d18:	8562                	c.mv	a0,s8
   11d1a:	85ea                	c.mv	a1,s10
   11d1c:	0000a097          	auipc	ra,0xa
   11d20:	2d4080e7          	jalr	ra,724(ra) # 1bff0 <__multf3>
   11d24:	8a2e                	c.mv	s4,a1
   11d26:	8b2a                	c.mv	s6,a0
   11d28:	0000b097          	auipc	ra,0xb
   11d2c:	112080e7          	jalr	ra,274(ra) # 1ce3a <__fixtfsi>
   11d30:	00050d9b          	addiw	s11,a0,0
   11d34:	856e                	c.mv	a0,s11
   11d36:	0000b097          	auipc	ra,0xb
   11d3a:	194080e7          	jalr	ra,404(ra) # 1ceca <__floatsitf>
   11d3e:	86ae                	c.mv	a3,a1
   11d40:	862a                	c.mv	a2,a0
   11d42:	85d2                	c.mv	a1,s4
   11d44:	855a                	c.mv	a0,s6
   11d46:	0000b097          	auipc	ra,0xb
   11d4a:	8c0080e7          	jalr	ra,-1856(ra) # 1c606 <__subtf3>
   11d4e:	67e2                	c.ldsp	a5,24(sp)
   11d50:	8b5e                	c.mv	s6,s7
   11d52:	0b85                	c.addi	s7,1
   11d54:	01b78733          	add	a4,a5,s11
   11d58:	00074683          	lbu	a3,0(a4)
   11d5c:	7782                	c.ldsp	a5,32(sp)
   11d5e:	842a                	c.mv	s0,a0
   11d60:	fedb8fa3          	sb	a3,-1(s7)
   11d64:	84ae                	c.mv	s1,a1
   11d66:	8c2a                	c.mv	s8,a0
   11d68:	8d2e                	c.mv	s10,a1
   11d6a:	41790a3b          	subw	s4,s2,s7
   11d6e:	f9779be3          	bne	a5,s7,11d04 <_vfprintf_r+0x17a6>
   11d72:	7ca6                	c.ldsp	s9,104(sp)
   11d74:	89ee                	c.mv	s3,s11
   11d76:	f4da                	c.sdsp	s6,104(sp)
   11d78:	694a                	c.ldsp	s2,144(sp)
   11d7a:	6d6a                	c.ldsp	s10,152(sp)
   11d7c:	730a                	c.ldsp	t1,160(sp)
   11d7e:	7c2a                	c.ldsp	s8,168(sp)
   11d80:	7b4a                	c.ldsp	s6,176(sp)
   11d82:	7dea                	c.ldsp	s11,184(sp)
   11d84:	640a                	c.ldsp	s0,128(sp)
   11d86:	64aa                	c.ldsp	s1,136(sp)
   11d88:	57fd                	c.li	a5,-1
   11d8a:	8f2a                	c.mv	t5,a0
   11d8c:	872e                	c.mv	a4,a1
   11d8e:	f03e                	c.sdsp	a5,32(sp)
   11d90:	0000b797          	auipc	a5,0xb
   11d94:	72078793          	addi	a5,a5,1824 # 1d4b0 <zeroes.0+0x28>
   11d98:	0087ba03          	ld	s4,8(a5)
   11d9c:	6390                	c.ld	a2,0(a5)
   11d9e:	857a                	c.mv	a0,t5
   11da0:	86d2                	c.mv	a3,s4
   11da2:	85ba                	c.mv	a1,a4
   11da4:	e11a                	c.sdsp	t1,128(sp)
   11da6:	ed7a                	c.sdsp	t5,152(sp)
   11da8:	e932                	c.sdsp	a2,144(sp)
   11daa:	e53a                	c.sdsp	a4,136(sp)
   11dac:	0000a097          	auipc	ra,0xa
   11db0:	0f8080e7          	jalr	ra,248(ra) # 1bea4 <__getf2>
   11db4:	630a                	c.ldsp	t1,128(sp)
   11db6:	2ea04e63          	blt	zero,a0,120b2 <_vfprintf_r+0x1b54>
   11dba:	6f6a                	c.ldsp	t5,152(sp)
   11dbc:	672a                	c.ldsp	a4,136(sp)
   11dbe:	664a                	c.ldsp	a2,144(sp)
   11dc0:	86d2                	c.mv	a3,s4
   11dc2:	857a                	c.mv	a0,t5
   11dc4:	85ba                	c.mv	a1,a4
   11dc6:	0000a097          	auipc	ra,0xa
   11dca:	04a080e7          	jalr	ra,74(ra) # 1be10 <__eqtf2>
   11dce:	630a                	c.ldsp	t1,128(sp)
   11dd0:	e509                	c.bnez	a0,11dda <_vfprintf_r+0x187c>
   11dd2:	0019f993          	andi	s3,s3,1
   11dd6:	2c099e63          	bne	s3,zero,120b2 <_vfprintf_r+0x1b54>
   11dda:	7682                	c.ldsp	a3,32(sp)
   11ddc:	03000713          	addi	a4,zero,48
   11de0:	0016879b          	addiw	a5,a3,1
   11de4:	97de                	c.add	a5,s7
   11de6:	0006c763          	blt	a3,zero,11df4 <_vfprintf_r+0x1896>
   11dea:	0b85                	c.addi	s7,1
   11dec:	feeb8fa3          	sb	a4,-1(s7)
   11df0:	ff779de3          	bne	a5,s7,11dea <_vfprintf_r+0x188c>
   11df4:	41bb87bb          	subw	a5,s7,s11
   11df8:	f03e                	c.sdsp	a5,32(sp)
   11dfa:	bb9fe06f          	jal	zero,109b2 <_vfprintf_r+0x454>
   11dfe:	7dc2                	c.ldsp	s11,48(sp)
   11e00:	7702                	c.ldsp	a4,32(sp)
   11e02:	eca2                	c.sdsp	s0,88(sp)
   11e04:	7486                	c.ldsp	s1,96(sp)
   11e06:	976e                	c.add	a4,s11
   11e08:	6462                	c.ldsp	s0,24(sp)
   11e0a:	7926                	c.ldsp	s2,104(sp)
   11e0c:	79a2                	c.ldsp	s3,40(sp)
   11e0e:	d5a77063          	bgeu	a4,s10,1134e <_vfprintf_r+0xdf0>
   11e12:	8d3a                	c.mv	s10,a4
   11e14:	d3aff06f          	jal	zero,1134e <_vfprintf_r+0xdf0>
   11e18:	6762                	c.ldsp	a4,24(sp)
   11e1a:	57f5                	c.li	a5,-3
   11e1c:	00f74463          	blt	a4,a5,11e24 <_vfprintf_r+0x18c6>
   11e20:	00ed5863          	bge	s10,a4,11e30 <_vfprintf_r+0x18d2>
   11e24:	3cf9                	c.addiw	s9,-2
   11e26:	fdfcf793          	andi	a5,s9,-33
   11e2a:	f43e                	c.sdsp	a5,40(sp)
   11e2c:	ba7fe06f          	jal	zero,109d2 <_vfprintf_r+0x474>
   11e30:	6762                	c.ldsp	a4,24(sp)
   11e32:	7782                	c.ldsp	a5,32(sp)
   11e34:	1af74663          	blt	a4,a5,11fe0 <_vfprintf_r+0x1a82>
   11e38:	77c2                	c.ldsp	a5,48(sp)
   11e3a:	8a3a                	c.mv	s4,a4
   11e3c:	8b85                	c.andi	a5,1
   11e3e:	c781                	c.beqz	a5,11e46 <_vfprintf_r+0x18e8>
   11e40:	77e2                	c.ldsp	a5,56(sp)
   11e42:	00e78a3b          	addw	s4,a5,a4
   11e46:	77c2                	c.ldsp	a5,48(sp)
   11e48:	4007f793          	andi	a5,a5,1024
   11e4c:	c781                	c.beqz	a5,11e54 <_vfprintf_r+0x18f6>
   11e4e:	67e2                	c.ldsp	a5,24(sp)
   11e50:	3af04163          	blt	zero,a5,121f2 <_vfprintf_r+0x1c94>
   11e54:	fffa4993          	xori	s3,s4,-1
   11e58:	43f9d993          	srai	s3,s3,0x3f
   11e5c:	013a79b3          	and	s3,s4,s3
   11e60:	2981                	c.addiw	s3,0
   11e62:	06700c93          	addi	s9,zero,103
   11e66:	f802                	c.sdsp	zero,48(sp)
   11e68:	f402                	c.sdsp	zero,40(sp)
   11e6a:	c4bfe06f          	jal	zero,10ab4 <_vfprintf_r+0x556>
   11e6e:	0cf14783          	lbu	a5,207(sp)
   11e72:	4d01                	c.li	s10,0
   11e74:	c399                	c.beqz	a5,11e7a <_vfprintf_r+0x191c>
   11e76:	dcffe06f          	jal	zero,10c44 <_vfprintf_r+0x6e6>
   11e7a:	8a5fe06f          	jal	zero,1071e <_vfprintf_r+0x1c0>
   11e7e:	e802                	c.sdsp	zero,16(sp)
   11e80:	84be                	c.mv	s1,a5
   11e82:	57fd                	c.li	a5,-1
   11e84:	17fe                	c.slli	a5,0x3f
   11e86:	00fa4a33          	xor	s4,s4,a5
   11e8a:	02d00793          	addi	a5,zero,45
   11e8e:	f0be                	c.sdsp	a5,96(sp)
   11e90:	b3f1                	c.j	11c5c <_vfprintf_r+0x16fe>
   11e92:	0210                	c.addi4spn	a2,sp,256
   11e94:	85da                	c.mv	a1,s6
   11e96:	8562                	c.mv	a0,s8
   11e98:	00007097          	auipc	ra,0x7
   11e9c:	5c4080e7          	jalr	ra,1476(ra) # 1945c <__sprint_r>
   11ea0:	aa051963          	bne	a0,zero,11152 <_vfprintf_r+0xbf4>
   11ea4:	00044603          	lbu	a2,0(s0)
   11ea8:	67d2                	c.ldsp	a5,272(sp)
   11eaa:	18010313          	addi	t1,sp,384
   11eae:	9d32                	c.add	s10,a2
   11eb0:	b669                	c.j	11a3a <_vfprintf_r+0x14dc>
   11eb2:	02d00793          	addi	a5,zero,45
   11eb6:	0cf107a3          	sb	a5,207(sp)
   11eba:	b245                	c.j	1185a <_vfprintf_r+0x12fc>
   11ebc:	0210                	c.addi4spn	a2,sp,256
   11ebe:	85da                	c.mv	a1,s6
   11ec0:	8562                	c.mv	a0,s8
   11ec2:	00007097          	auipc	ra,0x7
   11ec6:	59a080e7          	jalr	ra,1434(ra) # 1945c <__sprint_r>
   11eca:	a8051463          	bne	a0,zero,11152 <_vfprintf_r+0xbf4>
   11ece:	476e                	c.lwsp	a4,216(sp)
   11ed0:	67d2                	c.ldsp	a5,272(sp)
   11ed2:	18010313          	addi	t1,sp,384
   11ed6:	caeff06f          	jal	zero,11384 <_vfprintf_r+0xe26>
   11eda:	09bc                	c.addi4spn	a5,sp,216
   11edc:	876a                	c.mv	a4,s10
   11ede:	0e810893          	addi	a7,sp,232
   11ee2:	0dc10813          	addi	a6,sp,220
   11ee6:	468d                	c.li	a3,3
   11ee8:	85de                	c.mv	a1,s7
   11eea:	8652                	c.mv	a2,s4
   11eec:	8562                	c.mv	a0,s8
   11eee:	ec1a                	c.sdsp	t1,24(sp)
   11ef0:	00002097          	auipc	ra,0x2
   11ef4:	6d2080e7          	jalr	ra,1746(ra) # 145c2 <_ldtoa_r>
   11ef8:	00054703          	lbu	a4,0(a0)
   11efc:	03000793          	addi	a5,zero,48
   11f00:	6362                	c.ldsp	t1,24(sp)
   11f02:	8daa                	c.mv	s11,a0
   11f04:	04f70563          	beq	a4,a5,11f4e <_vfprintf_r+0x19f0>
   11f08:	47ee                	c.lwsp	a5,216(sp)
   11f0a:	97ea                	c.add	a5,s10
   11f0c:	00fd89b3          	add	s3,s11,a5
   11f10:	4681                	c.li	a3,0
   11f12:	4601                	c.li	a2,0
   11f14:	855e                	c.mv	a0,s7
   11f16:	85d2                	c.mv	a1,s4
   11f18:	ec1a                	c.sdsp	t1,24(sp)
   11f1a:	0000a097          	auipc	ra,0xa
   11f1e:	ef6080e7          	jalr	ra,-266(ra) # 1be10 <__eqtf2>
   11f22:	6362                	c.ldsp	t1,24(sp)
   11f24:	86ce                	c.mv	a3,s3
   11f26:	e119                	c.bnez	a0,11f2c <_vfprintf_r+0x19ce>
   11f28:	a85fe06f          	jal	zero,109ac <_vfprintf_r+0x44e>
   11f2c:	76ae                	c.ldsp	a3,232(sp)
   11f2e:	0136e463          	bltu	a3,s3,11f36 <_vfprintf_r+0x19d8>
   11f32:	a7bfe06f          	jal	zero,109ac <_vfprintf_r+0x44e>
   11f36:	03000713          	addi	a4,zero,48
   11f3a:	00168793          	addi	a5,a3,1
   11f3e:	f5be                	c.sdsp	a5,232(sp)
   11f40:	00e68023          	sb	a4,0(a3)
   11f44:	76ae                	c.ldsp	a3,232(sp)
   11f46:	ff36eae3          	bltu	a3,s3,11f3a <_vfprintf_r+0x19dc>
   11f4a:	a63fe06f          	jal	zero,109ac <_vfprintf_r+0x44e>
   11f4e:	4601                	c.li	a2,0
   11f50:	4681                	c.li	a3,0
   11f52:	855e                	c.mv	a0,s7
   11f54:	85d2                	c.mv	a1,s4
   11f56:	ec1a                	c.sdsp	t1,24(sp)
   11f58:	0000a097          	auipc	ra,0xa
   11f5c:	eb8080e7          	jalr	ra,-328(ra) # 1be10 <__eqtf2>
   11f60:	6362                	c.ldsp	t1,24(sp)
   11f62:	d15d                	c.beqz	a0,11f08 <_vfprintf_r+0x19aa>
   11f64:	4705                	c.li	a4,1
   11f66:	41a707bb          	subw	a5,a4,s10
   11f6a:	cdbe                	c.swsp	a5,216(sp)
   11f6c:	bf79                	c.j	11f0a <_vfprintf_r+0x19ac>
   11f6e:	0cf14783          	lbu	a5,207(sp)
   11f72:	e45e                	c.sdsp	s7,8(sp)
   11f74:	f802                	c.sdsp	zero,48(sp)
   11f76:	f402                	c.sdsp	zero,40(sp)
   11f78:	ec02                	c.sdsp	zero,24(sp)
   11f7a:	89ea                	c.mv	s3,s10
   11f7c:	8a6a                	c.mv	s4,s10
   11f7e:	4d01                	c.li	s10,0
   11f80:	c399                	c.beqz	a5,11f86 <_vfprintf_r+0x1a28>
   11f82:	cc3fe06f          	jal	zero,10c44 <_vfprintf_r+0x6e6>
   11f86:	f98fe06f          	jal	zero,1071e <_vfprintf_r+0x1c0>
   11f8a:	77c2                	c.ldsp	a5,48(sp)
   11f8c:	6762                	c.ldsp	a4,24(sp)
   11f8e:	8b85                	c.andi	a5,1
   11f90:	00fd67b3          	or	a5,s10,a5
   11f94:	30e05963          	bge	zero,a4,122a6 <_vfprintf_r+0x1d48>
   11f98:	2c079363          	bne	a5,zero,1225e <_vfprintf_r+0x1d00>
   11f9c:	6a62                	c.ldsp	s4,24(sp)
   11f9e:	06600c93          	addi	s9,zero,102
   11fa2:	77c2                	c.ldsp	a5,48(sp)
   11fa4:	4007f793          	andi	a5,a5,1024
   11fa8:	24079763          	bne	a5,zero,121f6 <_vfprintf_r+0x1c98>
   11fac:	fffa4993          	xori	s3,s4,-1
   11fb0:	43f9d993          	srai	s3,s3,0x3f
   11fb4:	013a79b3          	and	s3,s4,s3
   11fb8:	2981                	c.addiw	s3,0
   11fba:	b575                	c.j	11e66 <_vfprintf_r+0x1908>
   11fbc:	0210                	c.addi4spn	a2,sp,256
   11fbe:	85da                	c.mv	a1,s6
   11fc0:	8562                	c.mv	a0,s8
   11fc2:	00007097          	auipc	ra,0x7
   11fc6:	49a080e7          	jalr	ra,1178(ra) # 1945c <__sprint_r>
   11fca:	98051463          	bne	a0,zero,11152 <_vfprintf_r+0xbf4>
   11fce:	466e                	c.lwsp	a2,216(sp)
   11fd0:	7702                	c.ldsp	a4,32(sp)
   11fd2:	67d2                	c.ldsp	a5,272(sp)
   11fd4:	18010313          	addi	t1,sp,384
   11fd8:	40c7063b          	subw	a2,a4,a2
   11fdc:	be4ff06f          	jal	zero,113c0 <_vfprintf_r+0xe62>
   11fe0:	7702                	c.ldsp	a4,32(sp)
   11fe2:	77e2                	c.ldsp	a5,56(sp)
   11fe4:	06700c93          	addi	s9,zero,103
   11fe8:	00e78a3b          	addw	s4,a5,a4
   11fec:	6762                	c.ldsp	a4,24(sp)
   11fee:	fae04ae3          	blt	zero,a4,11fa2 <_vfprintf_r+0x1a44>
   11ff2:	40ea07bb          	subw	a5,s4,a4
   11ff6:	2785                	c.addiw	a5,1
   11ff8:	00078a1b          	addiw	s4,a5,0
   11ffc:	fffa4993          	xori	s3,s4,-1
   12000:	43f9d993          	srai	s3,s3,0x3f
   12004:	0137f7b3          	and	a5,a5,s3
   12008:	0007899b          	addiw	s3,a5,0
   1200c:	bda9                	c.j	11e66 <_vfprintf_r+0x1908>
   1200e:	57fd                	c.li	a5,-1
   12010:	e03e                	c.sdsp	a5,0(sp)
   12012:	80ffe06f          	jal	zero,10820 <_vfprintf_r+0x2c2>
   12016:	56c1                	c.li	a3,-16
   12018:	40c00a3b          	subw	s4,zero,a2
   1201c:	04d65963          	bge	a2,a3,1206e <_vfprintf_r+0x1b10>
   12020:	4b9d                	c.li	s7,7
   12022:	a021                	c.j	1202a <_vfprintf_r+0x1acc>
   12024:	3a41                	c.addiw	s4,-16
   12026:	054ad463          	bge	s5,s4,1206e <_vfprintf_r+0x1b10>
   1202a:	0017069b          	addiw	a3,a4,1
   1202e:	07c1                	c.addi	a5,16
   12030:	0000b717          	auipc	a4,0xb
   12034:	45870713          	addi	a4,a4,1112 # 1d488 <zeroes.0>
   12038:	00e33023          	sd	a4,0(t1)
   1203c:	01533423          	sd	s5,8(t1)
   12040:	ea3e                	c.sdsp	a5,272(sp)
   12042:	0006871b          	addiw	a4,a3,0
   12046:	10d12423          	sw	a3,264(sp)
   1204a:	0341                	c.addi	t1,16
   1204c:	fcebdce3          	bge	s7,a4,12024 <_vfprintf_r+0x1ac6>
   12050:	0210                	c.addi4spn	a2,sp,256
   12052:	85da                	c.mv	a1,s6
   12054:	8562                	c.mv	a0,s8
   12056:	00007097          	auipc	ra,0x7
   1205a:	406080e7          	jalr	ra,1030(ra) # 1945c <__sprint_r>
   1205e:	8e051a63          	bne	a0,zero,11152 <_vfprintf_r+0xbf4>
   12062:	67d2                	c.ldsp	a5,272(sp)
   12064:	10812703          	lw	a4,264(sp)
   12068:	18010313          	addi	t1,sp,384
   1206c:	bf65                	c.j	12024 <_vfprintf_r+0x1ac6>
   1206e:	0017069b          	addiw	a3,a4,1
   12072:	97d2                	c.add	a5,s4
   12074:	0000b717          	auipc	a4,0xb
   12078:	41470713          	addi	a4,a4,1044 # 1d488 <zeroes.0>
   1207c:	00e33023          	sd	a4,0(t1)
   12080:	10d12423          	sw	a3,264(sp)
   12084:	0006871b          	addiw	a4,a3,0
   12088:	01433423          	sd	s4,8(t1)
   1208c:	ea3e                	c.sdsp	a5,272(sp)
   1208e:	469d                	c.li	a3,7
   12090:	f4e6d463          	bge	a3,a4,117d8 <_vfprintf_r+0x127a>
   12094:	0210                	c.addi4spn	a2,sp,256
   12096:	85da                	c.mv	a1,s6
   12098:	8562                	c.mv	a0,s8
   1209a:	00007097          	auipc	ra,0x7
   1209e:	3c2080e7          	jalr	ra,962(ra) # 1945c <__sprint_r>
   120a2:	8a051863          	bne	a0,zero,11152 <_vfprintf_r+0xbf4>
   120a6:	67d2                	c.ldsp	a5,272(sp)
   120a8:	10812703          	lw	a4,264(sp)
   120ac:	18010313          	addi	t1,sp,384
   120b0:	b001                	c.j	118b0 <_vfprintf_r+0x1352>
   120b2:	77a6                	c.ldsp	a5,104(sp)
   120b4:	f5be                	c.sdsp	a5,232(sp)
   120b6:	67e2                	c.ldsp	a5,24(sp)
   120b8:	fffbc703          	lbu	a4,-1(s7)
   120bc:	00f7c683          	lbu	a3,15(a5)
   120c0:	87de                	c.mv	a5,s7
   120c2:	00e69e63          	bne	a3,a4,120de <_vfprintf_r+0x1b80>
   120c6:	03000613          	addi	a2,zero,48
   120ca:	fec78fa3          	sb	a2,-1(a5)
   120ce:	77ae                	c.ldsp	a5,232(sp)
   120d0:	fff78713          	addi	a4,a5,-1
   120d4:	f5ba                	c.sdsp	a4,232(sp)
   120d6:	fff7c703          	lbu	a4,-1(a5)
   120da:	fee688e3          	beq	a3,a4,120ca <_vfprintf_r+0x1b6c>
   120de:	0017069b          	addiw	a3,a4,1
   120e2:	03900613          	addi	a2,zero,57
   120e6:	0ff6f693          	andi	a3,a3,255
   120ea:	00c70563          	beq	a4,a2,120f4 <_vfprintf_r+0x1b96>
   120ee:	fed78fa3          	sb	a3,-1(a5)
   120f2:	b309                	c.j	11df4 <_vfprintf_r+0x1896>
   120f4:	6762                	c.ldsp	a4,24(sp)
   120f6:	00a74683          	lbu	a3,10(a4)
   120fa:	fed78fa3          	sb	a3,-1(a5)
   120fe:	b9dd                	c.j	11df4 <_vfprintf_r+0x1896>
   12100:	001d099b          	addiw	s3,s10,1
   12104:	874e                	c.mv	a4,s3
   12106:	0e810893          	addi	a7,sp,232
   1210a:	0dc10813          	addi	a6,sp,220
   1210e:	09bc                	c.addi4spn	a5,sp,216
   12110:	4689                	c.li	a3,2
   12112:	85de                	c.mv	a1,s7
   12114:	8652                	c.mv	a2,s4
   12116:	8562                	c.mv	a0,s8
   12118:	00002097          	auipc	ra,0x2
   1211c:	4aa080e7          	jalr	ra,1194(ra) # 145c2 <_ldtoa_r>
   12120:	8daa                	c.mv	s11,a0
   12122:	6362                	c.ldsp	t1,24(sp)
   12124:	99ee                	c.add	s3,s11
   12126:	b3ed                	c.j	11f10 <_vfprintf_r+0x19b2>
   12128:	001d059b          	addiw	a1,s10,1
   1212c:	8562                	c.mv	a0,s8
   1212e:	e81a                	c.sdsp	t1,16(sp)
   12130:	00003097          	auipc	ra,0x3
   12134:	620080e7          	jalr	ra,1568(ra) # 15750 <_malloc_r>
   12138:	6342                	c.ldsp	t1,16(sp)
   1213a:	8daa                	c.mv	s11,a0
   1213c:	1c050163          	beq	a0,zero,122fe <_vfprintf_r+0x1da0>
   12140:	e82a                	c.sdsp	a0,16(sp)
   12142:	b611                	c.j	11c46 <_vfprintf_r+0x16e8>
   12144:	03000793          	addi	a5,zero,48
   12148:	0cf10823          	sb	a5,208(sp)
   1214c:	07800713          	addi	a4,zero,120
   12150:	bcf1                	c.j	11c2c <_vfprintf_r+0x16ce>
   12152:	01ad89b3          	add	s3,s11,s10
   12156:	bb6d                	c.j	11f10 <_vfprintf_r+0x19b2>
   12158:	8ba6                	c.mv	s7,s1
   1215a:	8e4ff06f          	jal	zero,1123e <_vfprintf_r+0xce0>
   1215e:	c31c                	c.sw	a5,0(a4)
   12160:	8da2                	c.mv	s11,s0
   12162:	ea0fe06f          	jal	zero,10802 <_vfprintf_r+0x2a4>
   12166:	000d0463          	beq	s10,zero,1216e <_vfprintf_r+0x1c10>
   1216a:	fd2fe06f          	jal	zero,1093c <_vfprintf_r+0x3de>
   1216e:	4d05                	c.li	s10,1
   12170:	fccfe06f          	jal	zero,1093c <_vfprintf_r+0x3de>
   12174:	4d19                	c.li	s10,6
   12176:	fc6fe06f          	jal	zero,1093c <_vfprintf_r+0x3de>
   1217a:	7ca6                	c.ldsp	s9,104(sp)
   1217c:	89ee                	c.mv	s3,s11
   1217e:	f4da                	c.sdsp	s6,104(sp)
   12180:	8f22                	c.mv	t5,s0
   12182:	8726                	c.mv	a4,s1
   12184:	694a                	c.ldsp	s2,144(sp)
   12186:	6d6a                	c.ldsp	s10,152(sp)
   12188:	730a                	c.ldsp	t1,160(sp)
   1218a:	7c2a                	c.ldsp	s8,168(sp)
   1218c:	7b4a                	c.ldsp	s6,176(sp)
   1218e:	7dea                	c.ldsp	s11,184(sp)
   12190:	640a                	c.ldsp	s0,128(sp)
   12192:	64aa                	c.ldsp	s1,136(sp)
   12194:	f052                	c.sdsp	s4,32(sp)
   12196:	beed                	c.j	11d90 <_vfprintf_r+0x1832>
   12198:	85d2                	c.mv	a1,s4
   1219a:	855e                	c.mv	a0,s7
   1219c:	f01a                	c.sdsp	t1,32(sp)
   1219e:	0000b097          	auipc	ra,0xb
   121a2:	e4e080e7          	jalr	ra,-434(ra) # 1cfec <__trunctfdf2>
   121a6:	09a8                	c.addi4spn	a0,sp,216
   121a8:	00005097          	auipc	ra,0x5
   121ac:	076080e7          	jalr	ra,118(ra) # 1721e <frexp>
   121b0:	0000b097          	auipc	ra,0xb
   121b4:	d76080e7          	jalr	ra,-650(ra) # 1cf26 <__extenddftf2>
   121b8:	0000b797          	auipc	a5,0xb
   121bc:	30878793          	addi	a5,a5,776 # 1d4c0 <zeroes.0+0x38>
   121c0:	6390                	c.ld	a2,0(a5)
   121c2:	6794                	c.ld	a3,8(a5)
   121c4:	0000a097          	auipc	ra,0xa
   121c8:	e2c080e7          	jalr	ra,-468(ra) # 1bff0 <__multf3>
   121cc:	4601                	c.li	a2,0
   121ce:	4681                	c.li	a3,0
   121d0:	8a2a                	c.mv	s4,a0
   121d2:	ec2e                	c.sdsp	a1,24(sp)
   121d4:	0000a097          	auipc	ra,0xa
   121d8:	c3c080e7          	jalr	ra,-964(ra) # 1be10 <__eqtf2>
   121dc:	6fe2                	c.ldsp	t6,24(sp)
   121de:	7302                	c.ldsp	t1,32(sp)
   121e0:	e119                	c.bnez	a0,121e6 <_vfprintf_r+0x1c88>
   121e2:	4705                	c.li	a4,1
   121e4:	cdba                	c.swsp	a4,216(sp)
   121e6:	0000b797          	auipc	a5,0xb
   121ea:	0fa78793          	addi	a5,a5,250 # 1d2e0 <__clzdi2+0xc8>
   121ee:	ec3e                	c.sdsp	a5,24(sp)
   121f0:	bce1                	c.j	11cc8 <_vfprintf_r+0x176a>
   121f2:	06700c93          	addi	s9,zero,103
   121f6:	6666                	c.ldsp	a2,88(sp)
   121f8:	0ff00713          	addi	a4,zero,255
   121fc:	00064783          	lbu	a5,0(a2)
   12200:	0ee78c63          	beq	a5,a4,122f8 <_vfprintf_r+0x1d9a>
   12204:	6762                	c.ldsp	a4,24(sp)
   12206:	4801                	c.li	a6,0
   12208:	4501                	c.li	a0,0
   1220a:	0ff00693          	addi	a3,zero,255
   1220e:	0007859b          	addiw	a1,a5,0
   12212:	00e7da63          	bge	a5,a4,12226 <_vfprintf_r+0x1cc8>
   12216:	00164783          	lbu	a5,1(a2)
   1221a:	9f0d                	c.subw	a4,a1
   1221c:	cf8d                	c.beqz	a5,12256 <_vfprintf_r+0x1cf8>
   1221e:	2505                	c.addiw	a0,1
   12220:	0605                	c.addi	a2,1
   12222:	fed796e3          	bne	a5,a3,1220e <_vfprintf_r+0x1cb0>
   12226:	ecb2                	c.sdsp	a2,88(sp)
   12228:	ec3a                	c.sdsp	a4,24(sp)
   1222a:	f42a                	c.sdsp	a0,40(sp)
   1222c:	f842                	c.sdsp	a6,48(sp)
   1222e:	7742                	c.ldsp	a4,48(sp)
   12230:	77a2                	c.ldsp	a5,40(sp)
   12232:	9fb9                	c.addw	a5,a4
   12234:	7746                	c.ldsp	a4,112(sp)
   12236:	02e787bb          	mulw	a5,a5,a4
   1223a:	014787bb          	addw	a5,a5,s4
   1223e:	00078a1b          	addiw	s4,a5,0
   12242:	fffa4993          	xori	s3,s4,-1
   12246:	43f9d993          	srai	s3,s3,0x3f
   1224a:	0137f7b3          	and	a5,a5,s3
   1224e:	0007899b          	addiw	s3,a5,0
   12252:	863fe06f          	jal	zero,10ab4 <_vfprintf_r+0x556>
   12256:	00064783          	lbu	a5,0(a2)
   1225a:	2805                	c.addiw	a6,1
   1225c:	b7d9                	c.j	12222 <_vfprintf_r+0x1cc4>
   1225e:	77e2                	c.ldsp	a5,56(sp)
   12260:	06600c93          	addi	s9,zero,102
   12264:	00e78a3b          	addw	s4,a5,a4
   12268:	01aa0a3b          	addw	s4,s4,s10
   1226c:	bb1d                	c.j	11fa2 <_vfprintf_r+0x1a44>
   1226e:	0e210713          	addi	a4,sp,226
   12272:	e699                	c.bnez	a3,12280 <_vfprintf_r+0x1d22>
   12274:	03000713          	addi	a4,zero,48
   12278:	0ee10123          	sb	a4,226(sp)
   1227c:	0e310713          	addi	a4,sp,227
   12280:	0414                	c.addi4spn	a3,sp,512
   12282:	0307879b          	addiw	a5,a5,48
   12286:	40d706b3          	sub	a3,a4,a3
   1228a:	00f70023          	sb	a5,0(a4)
   1228e:	1216879b          	addiw	a5,a3,289
   12292:	e8be                	c.sdsp	a5,80(sp)
   12294:	fe6fe06f          	jal	zero,10a7a <_vfprintf_r+0x51c>
   12298:	7742                	c.ldsp	a4,48(sp)
   1229a:	8b05                	c.andi	a4,1
   1229c:	e319                	c.bnez	a4,122a2 <_vfprintf_r+0x1d44>
   1229e:	ff6fe06f          	jal	zero,10a94 <_vfprintf_r+0x536>
   122a2:	fecfe06f          	jal	zero,10a8e <_vfprintf_r+0x530>
   122a6:	e791                	c.bnez	a5,122b2 <_vfprintf_r+0x1d54>
   122a8:	4985                	c.li	s3,1
   122aa:	06600c93          	addi	s9,zero,102
   122ae:	4a05                	c.li	s4,1
   122b0:	be5d                	c.j	11e66 <_vfprintf_r+0x1908>
   122b2:	77e2                	c.ldsp	a5,56(sp)
   122b4:	06600c93          	addi	s9,zero,102
   122b8:	0017869b          	addiw	a3,a5,1
   122bc:	01a686bb          	addw	a3,a3,s10
   122c0:	00068a1b          	addiw	s4,a3,0
   122c4:	fffa4993          	xori	s3,s4,-1
   122c8:	43f9d993          	srai	s3,s3,0x3f
   122cc:	0136f6b3          	and	a3,a3,s3
   122d0:	0006899b          	addiw	s3,a3,0
   122d4:	be49                	c.j	11e66 <_vfprintf_r+0x1908>
   122d6:	871a                	c.mv	a4,t1
   122d8:	aaaff06f          	jal	zero,11582 <_vfprintf_r+0x1024>
   122dc:	66a2                	c.ldsp	a3,8(sp)
   122de:	4298                	c.lw	a4,0(a3)
   122e0:	06a1                	c.addi	a3,8
   122e2:	00070d1b          	addiw	s10,a4,0
   122e6:	00075363          	bge	a4,zero,122ec <_vfprintf_r+0x1d8e>
   122ea:	5d7d                	c.li	s10,-1
   122ec:	00144e03          	lbu	t3,1(s0)
   122f0:	e436                	c.sdsp	a3,8(sp)
   122f2:	843e                	c.mv	s0,a5
   122f4:	ba8fe06f          	jal	zero,1069c <_vfprintf_r+0x13e>
   122f8:	f802                	c.sdsp	zero,48(sp)
   122fa:	f402                	c.sdsp	zero,40(sp)
   122fc:	bf0d                	c.j	1222e <_vfprintf_r+0x1cd0>
   122fe:	010b5783          	lhu	a5,16(s6)
   12302:	0407e793          	ori	a5,a5,64
   12306:	00fb1823          	sh	a5,16(s6)
   1230a:	d08fe06f          	jal	zero,10812 <_vfprintf_r+0x2b4>
   1230e:	89ea                	c.mv	s3,s10
   12310:	99ee                	c.add	s3,s11
   12312:	befd                	c.j	11f10 <_vfprintf_r+0x19b2>
   12314:	4789                	c.li	a5,2
   12316:	e8be                	c.sdsp	a5,80(sp)
   12318:	f62fe06f          	jal	zero,10a7a <_vfprintf_r+0x51c>

000000000001231c <vfprintf>:
   1231c:	86b2                	c.mv	a3,a2
   1231e:	862e                	c.mv	a2,a1
   12320:	85aa                	c.mv	a1,a0
   12322:	0000e517          	auipc	a0,0xe
   12326:	fae53503          	ld	a0,-82(a0) # 202d0 <_impure_ptr>
   1232a:	ffffe317          	auipc	t1,0xffffe
   1232e:	23430067          	jalr	zero,564(t1) # 1055e <_vfprintf_r>

0000000000012332 <__sbprintf>:
   12332:	0105d783          	lhu	a5,16(a1)
   12336:	0ac5ae03          	lw	t3,172(a1)
   1233a:	0125d303          	lhu	t1,18(a1)
   1233e:	0305b883          	ld	a7,48(a1)
   12342:	0405b803          	ld	a6,64(a1)
   12346:	b3010113          	addi	sp,sp,-1232
   1234a:	9bf5                	c.andi	a5,-3
   1234c:	40000713          	addi	a4,zero,1024
   12350:	4c813023          	sd	s0,1216(sp)
   12354:	00f11823          	sh	a5,16(sp)
   12358:	842e                	c.mv	s0,a1
   1235a:	191c                	c.addi4spn	a5,sp,176
   1235c:	858a                	c.mv	a1,sp
   1235e:	4a913c23          	sd	s1,1208(sp)
   12362:	4b213823          	sd	s2,1200(sp)
   12366:	4c113423          	sd	ra,1224(sp)
   1236a:	892a                	c.mv	s2,a0
   1236c:	d772                	c.swsp	t3,172(sp)
   1236e:	00611923          	sh	t1,18(sp)
   12372:	f846                	c.sdsp	a7,48(sp)
   12374:	e0c2                	c.sdsp	a6,64(sp)
   12376:	e03e                	c.sdsp	a5,0(sp)
   12378:	ec3e                	c.sdsp	a5,24(sp)
   1237a:	c63a                	c.swsp	a4,12(sp)
   1237c:	d03a                	c.swsp	a4,32(sp)
   1237e:	d402                	c.swsp	zero,40(sp)
   12380:	ffffe097          	auipc	ra,0xffffe
   12384:	1de080e7          	jalr	ra,478(ra) # 1055e <_vfprintf_r>
   12388:	84aa                	c.mv	s1,a0
   1238a:	02055963          	bge	a0,zero,123bc <__sbprintf+0x8a>
   1238e:	01015783          	lhu	a5,16(sp)
   12392:	0407f793          	andi	a5,a5,64
   12396:	c799                	c.beqz	a5,123a4 <__sbprintf+0x72>
   12398:	01045783          	lhu	a5,16(s0)
   1239c:	0407e793          	ori	a5,a5,64
   123a0:	00f41823          	sh	a5,16(s0)
   123a4:	4c813083          	ld	ra,1224(sp)
   123a8:	4c013403          	ld	s0,1216(sp)
   123ac:	4b013903          	ld	s2,1200(sp)
   123b0:	8526                	c.mv	a0,s1
   123b2:	4b813483          	ld	s1,1208(sp)
   123b6:	4d010113          	addi	sp,sp,1232
   123ba:	8082                	c.jr	ra
   123bc:	858a                	c.mv	a1,sp
   123be:	854a                	c.mv	a0,s2
   123c0:	00000097          	auipc	ra,0x0
   123c4:	372080e7          	jalr	ra,882(ra) # 12732 <_fflush_r>
   123c8:	d179                	c.beqz	a0,1238e <__sbprintf+0x5c>
   123ca:	54fd                	c.li	s1,-1
   123cc:	b7c9                	c.j	1238e <__sbprintf+0x5c>

00000000000123ce <__swsetup_r>:
   123ce:	1101                	c.addi	sp,-32
   123d0:	e822                	c.sdsp	s0,16(sp)
   123d2:	e426                	c.sdsp	s1,8(sp)
   123d4:	ec06                	c.sdsp	ra,24(sp)
   123d6:	0000e797          	auipc	a5,0xe
   123da:	efa7b783          	ld	a5,-262(a5) # 202d0 <_impure_ptr>
   123de:	84aa                	c.mv	s1,a0
   123e0:	842e                	c.mv	s0,a1
   123e2:	c399                	c.beqz	a5,123e8 <__swsetup_r+0x1a>
   123e4:	4bb8                	c.lw	a4,80(a5)
   123e6:	cf21                	c.beqz	a4,1243e <__swsetup_r+0x70>
   123e8:	01041703          	lh	a4,16(s0)
   123ec:	03071793          	slli	a5,a4,0x30
   123f0:	00877693          	andi	a3,a4,8
   123f4:	93c1                	c.srli	a5,0x30
   123f6:	c2ad                	c.beqz	a3,12458 <__swsetup_r+0x8a>
   123f8:	6c14                	c.ld	a3,24(s0)
   123fa:	cead                	c.beqz	a3,12474 <__swsetup_r+0xa6>
   123fc:	0017f613          	andi	a2,a5,1
   12400:	ce11                	c.beqz	a2,1241c <__swsetup_r+0x4e>
   12402:	5010                	c.lw	a2,32(s0)
   12404:	00042623          	sw	zero,12(s0)
   12408:	4501                	c.li	a0,0
   1240a:	40c0063b          	subw	a2,zero,a2
   1240e:	d410                	c.sw	a2,40(s0)
   12410:	ce91                	c.beqz	a3,1242c <__swsetup_r+0x5e>
   12412:	60e2                	c.ldsp	ra,24(sp)
   12414:	6442                	c.ldsp	s0,16(sp)
   12416:	64a2                	c.ldsp	s1,8(sp)
   12418:	6105                	c.addi16sp	sp,32
   1241a:	8082                	c.jr	ra
   1241c:	0027f613          	andi	a2,a5,2
   12420:	4581                	c.li	a1,0
   12422:	e211                	c.bnez	a2,12426 <__swsetup_r+0x58>
   12424:	500c                	c.lw	a1,32(s0)
   12426:	c44c                	c.sw	a1,12(s0)
   12428:	4501                	c.li	a0,0
   1242a:	f6e5                	c.bnez	a3,12412 <__swsetup_r+0x44>
   1242c:	0807f793          	andi	a5,a5,128
   12430:	d3ed                	c.beqz	a5,12412 <__swsetup_r+0x44>
   12432:	04076713          	ori	a4,a4,64
   12436:	00e41823          	sh	a4,16(s0)
   1243a:	557d                	c.li	a0,-1
   1243c:	bfd9                	c.j	12412 <__swsetup_r+0x44>
   1243e:	853e                	c.mv	a0,a5
   12440:	00000097          	auipc	ra,0x0
   12444:	638080e7          	jalr	ra,1592(ra) # 12a78 <__sinit>
   12448:	01041703          	lh	a4,16(s0)
   1244c:	03071793          	slli	a5,a4,0x30
   12450:	00877693          	andi	a3,a4,8
   12454:	93c1                	c.srli	a5,0x30
   12456:	f2cd                	c.bnez	a3,123f8 <__swsetup_r+0x2a>
   12458:	0107f693          	andi	a3,a5,16
   1245c:	c6ad                	c.beqz	a3,124c6 <__swsetup_r+0xf8>
   1245e:	8b91                	c.andi	a5,4
   12460:	ef8d                	c.bnez	a5,1249a <__swsetup_r+0xcc>
   12462:	6c14                	c.ld	a3,24(s0)
   12464:	00876713          	ori	a4,a4,8
   12468:	03071793          	slli	a5,a4,0x30
   1246c:	00e41823          	sh	a4,16(s0)
   12470:	93c1                	c.srli	a5,0x30
   12472:	f6c9                	c.bnez	a3,123fc <__swsetup_r+0x2e>
   12474:	2807f613          	andi	a2,a5,640
   12478:	20000593          	addi	a1,zero,512
   1247c:	f8b600e3          	beq	a2,a1,123fc <__swsetup_r+0x2e>
   12480:	85a2                	c.mv	a1,s0
   12482:	8526                	c.mv	a0,s1
   12484:	00003097          	auipc	ra,0x3
   12488:	120080e7          	jalr	ra,288(ra) # 155a4 <__smakebuf_r>
   1248c:	01041703          	lh	a4,16(s0)
   12490:	6c14                	c.ld	a3,24(s0)
   12492:	03071793          	slli	a5,a4,0x30
   12496:	93c1                	c.srli	a5,0x30
   12498:	b795                	c.j	123fc <__swsetup_r+0x2e>
   1249a:	6c2c                	c.ld	a1,88(s0)
   1249c:	cd91                	c.beqz	a1,124b8 <__swsetup_r+0xea>
   1249e:	07440793          	addi	a5,s0,116
   124a2:	00f58963          	beq	a1,a5,124b4 <__swsetup_r+0xe6>
   124a6:	8526                	c.mv	a0,s1
   124a8:	00000097          	auipc	ra,0x0
   124ac:	740080e7          	jalr	ra,1856(ra) # 12be8 <_free_r>
   124b0:	01041703          	lh	a4,16(s0)
   124b4:	04043c23          	sd	zero,88(s0)
   124b8:	6c14                	c.ld	a3,24(s0)
   124ba:	fdb77713          	andi	a4,a4,-37
   124be:	00042423          	sw	zero,8(s0)
   124c2:	e014                	c.sd	a3,0(s0)
   124c4:	b745                	c.j	12464 <__swsetup_r+0x96>
   124c6:	47a5                	c.li	a5,9
   124c8:	c09c                	c.sw	a5,0(s1)
   124ca:	04076713          	ori	a4,a4,64
   124ce:	00e41823          	sh	a4,16(s0)
   124d2:	557d                	c.li	a0,-1
   124d4:	bf3d                	c.j	12412 <__swsetup_r+0x44>

00000000000124d6 <__call_exitprocs>:
   124d6:	715d                	c.addi16sp	sp,-80
   124d8:	f052                	c.sdsp	s4,32(sp)
   124da:	0000ea17          	auipc	s4,0xe
   124de:	de6a3a03          	ld	s4,-538(s4) # 202c0 <_global_impure_ptr>
   124e2:	f84a                	c.sdsp	s2,48(sp)
   124e4:	1f8a3903          	ld	s2,504(s4)
   124e8:	e486                	c.sdsp	ra,72(sp)
   124ea:	e0a2                	c.sdsp	s0,64(sp)
   124ec:	fc26                	c.sdsp	s1,56(sp)
   124ee:	f44e                	c.sdsp	s3,40(sp)
   124f0:	ec56                	c.sdsp	s5,24(sp)
   124f2:	e85a                	c.sdsp	s6,16(sp)
   124f4:	e45e                	c.sdsp	s7,8(sp)
   124f6:	e062                	c.sdsp	s8,0(sp)
   124f8:	02090863          	beq	s2,zero,12528 <__call_exitprocs+0x52>
   124fc:	8b2a                	c.mv	s6,a0
   124fe:	8bae                	c.mv	s7,a1
   12500:	4a85                	c.li	s5,1
   12502:	59fd                	c.li	s3,-1
   12504:	00892483          	lw	s1,8(s2)
   12508:	fff4841b          	addiw	s0,s1,-1
   1250c:	00044e63          	blt	s0,zero,12528 <__call_exitprocs+0x52>
   12510:	048e                	c.slli	s1,0x3
   12512:	94ca                	c.add	s1,s2
   12514:	020b8663          	beq	s7,zero,12540 <__call_exitprocs+0x6a>
   12518:	2084b783          	ld	a5,520(s1)
   1251c:	03778263          	beq	a5,s7,12540 <__call_exitprocs+0x6a>
   12520:	347d                	c.addiw	s0,-1
   12522:	14e1                	c.addi	s1,-8
   12524:	ff3418e3          	bne	s0,s3,12514 <__call_exitprocs+0x3e>
   12528:	60a6                	c.ldsp	ra,72(sp)
   1252a:	6406                	c.ldsp	s0,64(sp)
   1252c:	74e2                	c.ldsp	s1,56(sp)
   1252e:	7942                	c.ldsp	s2,48(sp)
   12530:	79a2                	c.ldsp	s3,40(sp)
   12532:	7a02                	c.ldsp	s4,32(sp)
   12534:	6ae2                	c.ldsp	s5,24(sp)
   12536:	6b42                	c.ldsp	s6,16(sp)
   12538:	6ba2                	c.ldsp	s7,8(sp)
   1253a:	6c02                	c.ldsp	s8,0(sp)
   1253c:	6161                	c.addi16sp	sp,80
   1253e:	8082                	c.jr	ra
   12540:	00892783          	lw	a5,8(s2)
   12544:	6498                	c.ld	a4,8(s1)
   12546:	37fd                	c.addiw	a5,-1
   12548:	04878463          	beq	a5,s0,12590 <__call_exitprocs+0xba>
   1254c:	0004b423          	sd	zero,8(s1)
   12550:	db61                	c.beqz	a4,12520 <__call_exitprocs+0x4a>
   12552:	31092783          	lw	a5,784(s2)
   12556:	008a96bb          	sllw	a3,s5,s0
   1255a:	00892c03          	lw	s8,8(s2)
   1255e:	8ff5                	c.and	a5,a3
   12560:	2781                	c.addiw	a5,0
   12562:	ef89                	c.bnez	a5,1257c <__call_exitprocs+0xa6>
   12564:	9702                	c.jalr	a4
   12566:	00892703          	lw	a4,8(s2)
   1256a:	1f8a3783          	ld	a5,504(s4)
   1256e:	01871463          	bne	a4,s8,12576 <__call_exitprocs+0xa0>
   12572:	fb2787e3          	beq	a5,s2,12520 <__call_exitprocs+0x4a>
   12576:	dbcd                	c.beqz	a5,12528 <__call_exitprocs+0x52>
   12578:	893e                	c.mv	s2,a5
   1257a:	b769                	c.j	12504 <__call_exitprocs+0x2e>
   1257c:	31492783          	lw	a5,788(s2)
   12580:	1084b583          	ld	a1,264(s1)
   12584:	8ff5                	c.and	a5,a3
   12586:	2781                	c.addiw	a5,0
   12588:	e799                	c.bnez	a5,12596 <__call_exitprocs+0xc0>
   1258a:	855a                	c.mv	a0,s6
   1258c:	9702                	c.jalr	a4
   1258e:	bfe1                	c.j	12566 <__call_exitprocs+0x90>
   12590:	00892423          	sw	s0,8(s2)
   12594:	bf75                	c.j	12550 <__call_exitprocs+0x7a>
   12596:	852e                	c.mv	a0,a1
   12598:	9702                	c.jalr	a4
   1259a:	b7f1                	c.j	12566 <__call_exitprocs+0x90>

000000000001259c <__sflush_r>:
   1259c:	01059783          	lh	a5,16(a1)
   125a0:	7179                	c.addi16sp	sp,-48
   125a2:	f022                	c.sdsp	s0,32(sp)
   125a4:	e44e                	c.sdsp	s3,8(sp)
   125a6:	f406                	c.sdsp	ra,40(sp)
   125a8:	ec26                	c.sdsp	s1,24(sp)
   125aa:	e84a                	c.sdsp	s2,16(sp)
   125ac:	0087f693          	andi	a3,a5,8
   125b0:	842e                	c.mv	s0,a1
   125b2:	89aa                	c.mv	s3,a0
   125b4:	eec5                	c.bnez	a3,1266c <__sflush_r+0xd0>
   125b6:	6705                	c.lui	a4,0x1
   125b8:	80070713          	addi	a4,a4,-2048 # 800 <register_fini-0xf8b0>
   125bc:	4594                	c.lw	a3,8(a1)
   125be:	8fd9                	c.or	a5,a4
   125c0:	00f59823          	sh	a5,16(a1)
   125c4:	10d05263          	bge	zero,a3,126c8 <__sflush_r+0x12c>
   125c8:	6438                	c.ld	a4,72(s0)
   125ca:	cb49                	c.beqz	a4,1265c <__sflush_r+0xc0>
   125cc:	17c2                	c.slli	a5,0x30
   125ce:	93c1                	c.srli	a5,0x30
   125d0:	6685                	c.lui	a3,0x1
   125d2:	0009a483          	lw	s1,0(s3)
   125d6:	8efd                	c.and	a3,a5
   125d8:	0009a023          	sw	zero,0(s3)
   125dc:	780c                	c.ld	a1,48(s0)
   125de:	eaed                	c.bnez	a3,126d0 <__sflush_r+0x134>
   125e0:	4601                	c.li	a2,0
   125e2:	4685                	c.li	a3,1
   125e4:	854e                	c.mv	a0,s3
   125e6:	9702                	c.jalr	a4
   125e8:	57fd                	c.li	a5,-1
   125ea:	862a                	c.mv	a2,a0
   125ec:	10f50963          	beq	a0,a5,126fe <__sflush_r+0x162>
   125f0:	01045783          	lhu	a5,16(s0)
   125f4:	6438                	c.ld	a4,72(s0)
   125f6:	780c                	c.ld	a1,48(s0)
   125f8:	8b91                	c.andi	a5,4
   125fa:	c799                	c.beqz	a5,12608 <__sflush_r+0x6c>
   125fc:	4414                	c.lw	a3,8(s0)
   125fe:	6c3c                	c.ld	a5,88(s0)
   12600:	8e15                	c.sub	a2,a3
   12602:	c399                	c.beqz	a5,12608 <__sflush_r+0x6c>
   12604:	583c                	c.lw	a5,112(s0)
   12606:	8e1d                	c.sub	a2,a5
   12608:	4681                	c.li	a3,0
   1260a:	854e                	c.mv	a0,s3
   1260c:	9702                	c.jalr	a4
   1260e:	57fd                	c.li	a5,-1
   12610:	0cf51263          	bne	a0,a5,126d4 <__sflush_r+0x138>
   12614:	0009a703          	lw	a4,0(s3)
   12618:	01041783          	lh	a5,16(s0)
   1261c:	cf7d                	c.beqz	a4,1271a <__sflush_r+0x17e>
   1261e:	46f5                	c.li	a3,29
   12620:	00d70563          	beq	a4,a3,1262a <__sflush_r+0x8e>
   12624:	46d9                	c.li	a3,22
   12626:	10d71063          	bne	a4,a3,12726 <__sflush_r+0x18a>
   1262a:	6c14                	c.ld	a3,24(s0)
   1262c:	777d                	c.lui	a4,0xfffff
   1262e:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffdf47f>
   12632:	8ff9                	c.and	a5,a4
   12634:	00f41823          	sh	a5,16(s0)
   12638:	00042423          	sw	zero,8(s0)
   1263c:	e014                	c.sd	a3,0(s0)
   1263e:	6c2c                	c.ld	a1,88(s0)
   12640:	0099a023          	sw	s1,0(s3)
   12644:	cd81                	c.beqz	a1,1265c <__sflush_r+0xc0>
   12646:	07440793          	addi	a5,s0,116
   1264a:	00f58763          	beq	a1,a5,12658 <__sflush_r+0xbc>
   1264e:	854e                	c.mv	a0,s3
   12650:	00000097          	auipc	ra,0x0
   12654:	598080e7          	jalr	ra,1432(ra) # 12be8 <_free_r>
   12658:	04043c23          	sd	zero,88(s0)
   1265c:	4501                	c.li	a0,0
   1265e:	70a2                	c.ldsp	ra,40(sp)
   12660:	7402                	c.ldsp	s0,32(sp)
   12662:	64e2                	c.ldsp	s1,24(sp)
   12664:	6942                	c.ldsp	s2,16(sp)
   12666:	69a2                	c.ldsp	s3,8(sp)
   12668:	6145                	c.addi16sp	sp,48
   1266a:	8082                	c.jr	ra
   1266c:	0185b903          	ld	s2,24(a1)
   12670:	fe0906e3          	beq	s2,zero,1265c <__sflush_r+0xc0>
   12674:	6184                	c.ld	s1,0(a1)
   12676:	03079713          	slli	a4,a5,0x30
   1267a:	9341                	c.srli	a4,0x30
   1267c:	8b0d                	c.andi	a4,3
   1267e:	0125b023          	sd	s2,0(a1)
   12682:	412484bb          	subw	s1,s1,s2
   12686:	4781                	c.li	a5,0
   12688:	e311                	c.bnez	a4,1268c <__sflush_r+0xf0>
   1268a:	519c                	c.lw	a5,32(a1)
   1268c:	c45c                	c.sw	a5,12(s0)
   1268e:	00904663          	blt	zero,s1,1269a <__sflush_r+0xfe>
   12692:	b7e9                	c.j	1265c <__sflush_r+0xc0>
   12694:	992a                	c.add	s2,a0
   12696:	fc9053e3          	bge	zero,s1,1265c <__sflush_r+0xc0>
   1269a:	603c                	c.ld	a5,64(s0)
   1269c:	780c                	c.ld	a1,48(s0)
   1269e:	86a6                	c.mv	a3,s1
   126a0:	864a                	c.mv	a2,s2
   126a2:	854e                	c.mv	a0,s3
   126a4:	9782                	c.jalr	a5
   126a6:	9c89                	c.subw	s1,a0
   126a8:	fea046e3          	blt	zero,a0,12694 <__sflush_r+0xf8>
   126ac:	01045783          	lhu	a5,16(s0)
   126b0:	70a2                	c.ldsp	ra,40(sp)
   126b2:	64e2                	c.ldsp	s1,24(sp)
   126b4:	0407e793          	ori	a5,a5,64
   126b8:	00f41823          	sh	a5,16(s0)
   126bc:	7402                	c.ldsp	s0,32(sp)
   126be:	6942                	c.ldsp	s2,16(sp)
   126c0:	69a2                	c.ldsp	s3,8(sp)
   126c2:	557d                	c.li	a0,-1
   126c4:	6145                	c.addi16sp	sp,48
   126c6:	8082                	c.jr	ra
   126c8:	59b8                	c.lw	a4,112(a1)
   126ca:	eee04fe3          	blt	zero,a4,125c8 <__sflush_r+0x2c>
   126ce:	b779                	c.j	1265c <__sflush_r+0xc0>
   126d0:	6850                	c.ld	a2,144(s0)
   126d2:	b71d                	c.j	125f8 <__sflush_r+0x5c>
   126d4:	01045783          	lhu	a5,16(s0)
   126d8:	777d                	c.lui	a4,0xfffff
   126da:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffdf47f>
   126de:	8ff9                	c.and	a5,a4
   126e0:	6c14                	c.ld	a3,24(s0)
   126e2:	0107979b          	slliw	a5,a5,0x10
   126e6:	4107d79b          	sraiw	a5,a5,0x10
   126ea:	6705                	c.lui	a4,0x1
   126ec:	00f41823          	sh	a5,16(s0)
   126f0:	00042423          	sw	zero,8(s0)
   126f4:	e014                	c.sd	a3,0(s0)
   126f6:	8ff9                	c.and	a5,a4
   126f8:	d3b9                	c.beqz	a5,1263e <__sflush_r+0xa2>
   126fa:	e848                	c.sd	a0,144(s0)
   126fc:	b789                	c.j	1263e <__sflush_r+0xa2>
   126fe:	0009a783          	lw	a5,0(s3)
   12702:	ee0787e3          	beq	a5,zero,125f0 <__sflush_r+0x54>
   12706:	4775                	c.li	a4,29
   12708:	00e78563          	beq	a5,a4,12712 <__sflush_r+0x176>
   1270c:	4759                	c.li	a4,22
   1270e:	f8e79fe3          	bne	a5,a4,126ac <__sflush_r+0x110>
   12712:	0099a023          	sw	s1,0(s3)
   12716:	4501                	c.li	a0,0
   12718:	b799                	c.j	1265e <__sflush_r+0xc2>
   1271a:	777d                	c.lui	a4,0xfffff
   1271c:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffdf47f>
   12720:	6c14                	c.ld	a3,24(s0)
   12722:	8ff9                	c.and	a5,a4
   12724:	b7d9                	c.j	126ea <__sflush_r+0x14e>
   12726:	0407e793          	ori	a5,a5,64
   1272a:	00f41823          	sh	a5,16(s0)
   1272e:	557d                	c.li	a0,-1
   12730:	b73d                	c.j	1265e <__sflush_r+0xc2>

0000000000012732 <_fflush_r>:
   12732:	1101                	c.addi	sp,-32
   12734:	e822                	c.sdsp	s0,16(sp)
   12736:	ec06                	c.sdsp	ra,24(sp)
   12738:	842a                	c.mv	s0,a0
   1273a:	c119                	c.beqz	a0,12740 <_fflush_r+0xe>
   1273c:	493c                	c.lw	a5,80(a0)
   1273e:	cb89                	c.beqz	a5,12750 <_fflush_r+0x1e>
   12740:	01059783          	lh	a5,16(a1)
   12744:	ef99                	c.bnez	a5,12762 <_fflush_r+0x30>
   12746:	60e2                	c.ldsp	ra,24(sp)
   12748:	6442                	c.ldsp	s0,16(sp)
   1274a:	4501                	c.li	a0,0
   1274c:	6105                	c.addi16sp	sp,32
   1274e:	8082                	c.jr	ra
   12750:	e42e                	c.sdsp	a1,8(sp)
   12752:	00000097          	auipc	ra,0x0
   12756:	326080e7          	jalr	ra,806(ra) # 12a78 <__sinit>
   1275a:	65a2                	c.ldsp	a1,8(sp)
   1275c:	01059783          	lh	a5,16(a1)
   12760:	d3fd                	c.beqz	a5,12746 <_fflush_r+0x14>
   12762:	8522                	c.mv	a0,s0
   12764:	6442                	c.ldsp	s0,16(sp)
   12766:	60e2                	c.ldsp	ra,24(sp)
   12768:	6105                	c.addi16sp	sp,32
   1276a:	00000317          	auipc	t1,0x0
   1276e:	e3230067          	jalr	zero,-462(t1) # 1259c <__sflush_r>

0000000000012772 <fflush>:
   12772:	c531                	c.beqz	a0,127be <fflush+0x4c>
   12774:	1101                	c.addi	sp,-32
   12776:	e822                	c.sdsp	s0,16(sp)
   12778:	ec06                	c.sdsp	ra,24(sp)
   1277a:	842a                	c.mv	s0,a0
   1277c:	0000e517          	auipc	a0,0xe
   12780:	b5453503          	ld	a0,-1196(a0) # 202d0 <_impure_ptr>
   12784:	c119                	c.beqz	a0,1278a <fflush+0x18>
   12786:	493c                	c.lw	a5,80(a0)
   12788:	c38d                	c.beqz	a5,127aa <fflush+0x38>
   1278a:	01041783          	lh	a5,16(s0)
   1278e:	e791                	c.bnez	a5,1279a <fflush+0x28>
   12790:	60e2                	c.ldsp	ra,24(sp)
   12792:	6442                	c.ldsp	s0,16(sp)
   12794:	4501                	c.li	a0,0
   12796:	6105                	c.addi16sp	sp,32
   12798:	8082                	c.jr	ra
   1279a:	85a2                	c.mv	a1,s0
   1279c:	6442                	c.ldsp	s0,16(sp)
   1279e:	60e2                	c.ldsp	ra,24(sp)
   127a0:	6105                	c.addi16sp	sp,32
   127a2:	00000317          	auipc	t1,0x0
   127a6:	dfa30067          	jalr	zero,-518(t1) # 1259c <__sflush_r>
   127aa:	e42a                	c.sdsp	a0,8(sp)
   127ac:	00000097          	auipc	ra,0x0
   127b0:	2cc080e7          	jalr	ra,716(ra) # 12a78 <__sinit>
   127b4:	01041783          	lh	a5,16(s0)
   127b8:	6522                	c.ldsp	a0,8(sp)
   127ba:	dbf9                	c.beqz	a5,12790 <fflush+0x1e>
   127bc:	bff9                	c.j	1279a <fflush+0x28>
   127be:	00000597          	auipc	a1,0x0
   127c2:	f7458593          	addi	a1,a1,-140 # 12732 <_fflush_r>
   127c6:	0000e517          	auipc	a0,0xe
   127ca:	afa53503          	ld	a0,-1286(a0) # 202c0 <_global_impure_ptr>
   127ce:	00001317          	auipc	t1,0x1
   127d2:	a6630067          	jalr	zero,-1434(t1) # 13234 <_fwalk_reent>

00000000000127d6 <__fp_lock>:
   127d6:	4501                	c.li	a0,0
   127d8:	8082                	c.jr	ra

00000000000127da <_cleanup_r>:
   127da:	00008597          	auipc	a1,0x8
   127de:	c7258593          	addi	a1,a1,-910 # 1a44c <_fclose_r>
   127e2:	00001317          	auipc	t1,0x1
   127e6:	a5230067          	jalr	zero,-1454(t1) # 13234 <_fwalk_reent>

00000000000127ea <__fp_unlock>:
   127ea:	4501                	c.li	a0,0
   127ec:	8082                	c.jr	ra

00000000000127ee <__sinit.part.0>:
   127ee:	7139                	c.addi16sp	sp,-64
   127f0:	fc06                	c.sdsp	ra,56(sp)
   127f2:	f822                	c.sdsp	s0,48(sp)
   127f4:	f426                	c.sdsp	s1,40(sp)
   127f6:	f04a                	c.sdsp	s2,32(sp)
   127f8:	ec4e                	c.sdsp	s3,24(sp)
   127fa:	e852                	c.sdsp	s4,16(sp)
   127fc:	e456                	c.sdsp	s5,8(sp)
   127fe:	e05a                	c.sdsp	s6,0(sp)
   12800:	6500                	c.ld	s0,8(a0)
   12802:	00000717          	auipc	a4,0x0
   12806:	fd870713          	addi	a4,a4,-40 # 127da <_cleanup_r>
   1280a:	ed38                	c.sd	a4,88(a0)
   1280c:	53850793          	addi	a5,a0,1336
   12810:	470d                	c.li	a4,3
   12812:	52e52423          	sw	a4,1320(a0)
   12816:	52f53823          	sd	a5,1328(a0)
   1281a:	52053023          	sd	zero,1312(a0)
   1281e:	4791                	c.li	a5,4
   12820:	892a                	c.mv	s2,a0
   12822:	c81c                	c.sw	a5,16(s0)
   12824:	4621                	c.li	a2,8
   12826:	4581                	c.li	a1,0
   12828:	0a042623          	sw	zero,172(s0)
   1282c:	00043023          	sd	zero,0(s0)
   12830:	00043423          	sd	zero,8(s0)
   12834:	00043c23          	sd	zero,24(s0)
   12838:	02042023          	sw	zero,32(s0)
   1283c:	02042423          	sw	zero,40(s0)
   12840:	0a440513          	addi	a0,s0,164
   12844:	ffffe097          	auipc	ra,0xffffe
   12848:	ae4080e7          	jalr	ra,-1308(ra) # 10328 <memset>
   1284c:	01093483          	ld	s1,16(s2)
   12850:	00005b17          	auipc	s6,0x5
   12854:	ae6b0b13          	addi	s6,s6,-1306 # 17336 <__sread>
   12858:	00005a97          	auipc	s5,0x5
   1285c:	b1ea8a93          	addi	s5,s5,-1250 # 17376 <__swrite>
   12860:	00005a17          	auipc	s4,0x5
   12864:	b72a0a13          	addi	s4,s4,-1166 # 173d2 <__sseek>
   12868:	00005997          	auipc	s3,0x5
   1286c:	bb098993          	addi	s3,s3,-1104 # 17418 <__sclose>
   12870:	67c1                	c.lui	a5,0x10
   12872:	03643c23          	sd	s6,56(s0)
   12876:	05543023          	sd	s5,64(s0)
   1287a:	05443423          	sd	s4,72(s0)
   1287e:	05343823          	sd	s3,80(s0)
   12882:	f800                	c.sd	s0,48(s0)
   12884:	07a5                	c.addi	a5,9
   12886:	c89c                	c.sw	a5,16(s1)
   12888:	4621                	c.li	a2,8
   1288a:	4581                	c.li	a1,0
   1288c:	0a04a623          	sw	zero,172(s1)
   12890:	0004b023          	sd	zero,0(s1)
   12894:	0004b423          	sd	zero,8(s1)
   12898:	0004bc23          	sd	zero,24(s1)
   1289c:	0204a023          	sw	zero,32(s1)
   128a0:	0204a423          	sw	zero,40(s1)
   128a4:	0a448513          	addi	a0,s1,164
   128a8:	ffffe097          	auipc	ra,0xffffe
   128ac:	a80080e7          	jalr	ra,-1408(ra) # 10328 <memset>
   128b0:	01893403          	ld	s0,24(s2)
   128b4:	000207b7          	lui	a5,0x20
   128b8:	0364bc23          	sd	s6,56(s1)
   128bc:	0554b023          	sd	s5,64(s1)
   128c0:	0544b423          	sd	s4,72(s1)
   128c4:	0534b823          	sd	s3,80(s1)
   128c8:	f884                	c.sd	s1,48(s1)
   128ca:	07c9                	c.addi	a5,18
   128cc:	c81c                	c.sw	a5,16(s0)
   128ce:	0a042623          	sw	zero,172(s0)
   128d2:	00043023          	sd	zero,0(s0)
   128d6:	00043423          	sd	zero,8(s0)
   128da:	00043c23          	sd	zero,24(s0)
   128de:	02042023          	sw	zero,32(s0)
   128e2:	02042423          	sw	zero,40(s0)
   128e6:	0a440513          	addi	a0,s0,164
   128ea:	4621                	c.li	a2,8
   128ec:	4581                	c.li	a1,0
   128ee:	ffffe097          	auipc	ra,0xffffe
   128f2:	a3a080e7          	jalr	ra,-1478(ra) # 10328 <memset>
   128f6:	70e2                	c.ldsp	ra,56(sp)
   128f8:	03643c23          	sd	s6,56(s0)
   128fc:	05543023          	sd	s5,64(s0)
   12900:	05443423          	sd	s4,72(s0)
   12904:	05343823          	sd	s3,80(s0)
   12908:	f800                	c.sd	s0,48(s0)
   1290a:	7442                	c.ldsp	s0,48(sp)
   1290c:	4785                	c.li	a5,1
   1290e:	04f92823          	sw	a5,80(s2)
   12912:	74a2                	c.ldsp	s1,40(sp)
   12914:	7902                	c.ldsp	s2,32(sp)
   12916:	69e2                	c.ldsp	s3,24(sp)
   12918:	6a42                	c.ldsp	s4,16(sp)
   1291a:	6aa2                	c.ldsp	s5,8(sp)
   1291c:	6b02                	c.ldsp	s6,0(sp)
   1291e:	6121                	c.addi16sp	sp,64
   12920:	8082                	c.jr	ra

0000000000012922 <__sfmoreglue>:
   12922:	1101                	c.addi	sp,-32
   12924:	e426                	c.sdsp	s1,8(sp)
   12926:	0b000613          	addi	a2,zero,176
   1292a:	fff5849b          	addiw	s1,a1,-1
   1292e:	02c484b3          	mul	s1,s1,a2
   12932:	e04a                	c.sdsp	s2,0(sp)
   12934:	892e                	c.mv	s2,a1
   12936:	e822                	c.sdsp	s0,16(sp)
   12938:	ec06                	c.sdsp	ra,24(sp)
   1293a:	0c848593          	addi	a1,s1,200
   1293e:	00003097          	auipc	ra,0x3
   12942:	e12080e7          	jalr	ra,-494(ra) # 15750 <_malloc_r>
   12946:	842a                	c.mv	s0,a0
   12948:	cd11                	c.beqz	a0,12964 <__sfmoreglue+0x42>
   1294a:	0561                	c.addi	a0,24
   1294c:	00043023          	sd	zero,0(s0)
   12950:	01242423          	sw	s2,8(s0)
   12954:	e808                	c.sd	a0,16(s0)
   12956:	0b048613          	addi	a2,s1,176
   1295a:	4581                	c.li	a1,0
   1295c:	ffffe097          	auipc	ra,0xffffe
   12960:	9cc080e7          	jalr	ra,-1588(ra) # 10328 <memset>
   12964:	60e2                	c.ldsp	ra,24(sp)
   12966:	8522                	c.mv	a0,s0
   12968:	6442                	c.ldsp	s0,16(sp)
   1296a:	64a2                	c.ldsp	s1,8(sp)
   1296c:	6902                	c.ldsp	s2,0(sp)
   1296e:	6105                	c.addi16sp	sp,32
   12970:	8082                	c.jr	ra

0000000000012972 <__sfp>:
   12972:	7179                	c.addi16sp	sp,-48
   12974:	ec26                	c.sdsp	s1,24(sp)
   12976:	0000e497          	auipc	s1,0xe
   1297a:	94a4b483          	ld	s1,-1718(s1) # 202c0 <_global_impure_ptr>
   1297e:	48bc                	c.lw	a5,80(s1)
   12980:	e84a                	c.sdsp	s2,16(sp)
   12982:	f406                	c.sdsp	ra,40(sp)
   12984:	f022                	c.sdsp	s0,32(sp)
   12986:	e44e                	c.sdsp	s3,8(sp)
   12988:	e052                	c.sdsp	s4,0(sp)
   1298a:	892a                	c.mv	s2,a0
   1298c:	c7c9                	c.beqz	a5,12a16 <__sfp+0xa4>
   1298e:	52048493          	addi	s1,s1,1312
   12992:	0b000993          	addi	s3,zero,176
   12996:	4a11                	c.li	s4,4
   12998:	449c                	c.lw	a5,8(s1)
   1299a:	6880                	c.ld	s0,16(s1)
   1299c:	06f05963          	bge	zero,a5,12a0e <__sfp+0x9c>
   129a0:	37fd                	c.addiw	a5,-1
   129a2:	1782                	c.slli	a5,0x20
   129a4:	9381                	c.srli	a5,0x20
   129a6:	0785                	c.addi	a5,1
   129a8:	033787b3          	mul	a5,a5,s3
   129ac:	97a2                	c.add	a5,s0
   129ae:	a029                	c.j	129b8 <__sfp+0x46>
   129b0:	0b040413          	addi	s0,s0,176
   129b4:	04f40d63          	beq	s0,a5,12a0e <__sfp+0x9c>
   129b8:	01041703          	lh	a4,16(s0)
   129bc:	fb75                	c.bnez	a4,129b0 <__sfp+0x3e>
   129be:	77c1                	c.lui	a5,0xffff0
   129c0:	0785                	c.addi	a5,1
   129c2:	0a042623          	sw	zero,172(s0)
   129c6:	00043023          	sd	zero,0(s0)
   129ca:	00043423          	sd	zero,8(s0)
   129ce:	c81c                	c.sw	a5,16(s0)
   129d0:	00043c23          	sd	zero,24(s0)
   129d4:	02042023          	sw	zero,32(s0)
   129d8:	02042423          	sw	zero,40(s0)
   129dc:	4621                	c.li	a2,8
   129de:	4581                	c.li	a1,0
   129e0:	0a440513          	addi	a0,s0,164
   129e4:	ffffe097          	auipc	ra,0xffffe
   129e8:	944080e7          	jalr	ra,-1724(ra) # 10328 <memset>
   129ec:	04043c23          	sd	zero,88(s0)
   129f0:	06042023          	sw	zero,96(s0)
   129f4:	06043c23          	sd	zero,120(s0)
   129f8:	08042023          	sw	zero,128(s0)
   129fc:	70a2                	c.ldsp	ra,40(sp)
   129fe:	8522                	c.mv	a0,s0
   12a00:	7402                	c.ldsp	s0,32(sp)
   12a02:	64e2                	c.ldsp	s1,24(sp)
   12a04:	6942                	c.ldsp	s2,16(sp)
   12a06:	69a2                	c.ldsp	s3,8(sp)
   12a08:	6a02                	c.ldsp	s4,0(sp)
   12a0a:	6145                	c.addi16sp	sp,48
   12a0c:	8082                	c.jr	ra
   12a0e:	6080                	c.ld	s0,0(s1)
   12a10:	c809                	c.beqz	s0,12a22 <__sfp+0xb0>
   12a12:	84a2                	c.mv	s1,s0
   12a14:	b751                	c.j	12998 <__sfp+0x26>
   12a16:	8526                	c.mv	a0,s1
   12a18:	00000097          	auipc	ra,0x0
   12a1c:	dd6080e7          	jalr	ra,-554(ra) # 127ee <__sinit.part.0>
   12a20:	b7bd                	c.j	1298e <__sfp+0x1c>
   12a22:	2d800593          	addi	a1,zero,728
   12a26:	854a                	c.mv	a0,s2
   12a28:	00003097          	auipc	ra,0x3
   12a2c:	d28080e7          	jalr	ra,-728(ra) # 15750 <_malloc_r>
   12a30:	842a                	c.mv	s0,a0
   12a32:	c10d                	c.beqz	a0,12a54 <__sfp+0xe2>
   12a34:	0561                	c.addi	a0,24
   12a36:	00043023          	sd	zero,0(s0)
   12a3a:	01442423          	sw	s4,8(s0)
   12a3e:	e808                	c.sd	a0,16(s0)
   12a40:	2c000613          	addi	a2,zero,704
   12a44:	4581                	c.li	a1,0
   12a46:	ffffe097          	auipc	ra,0xffffe
   12a4a:	8e2080e7          	jalr	ra,-1822(ra) # 10328 <memset>
   12a4e:	e080                	c.sd	s0,0(s1)
   12a50:	84a2                	c.mv	s1,s0
   12a52:	b799                	c.j	12998 <__sfp+0x26>
   12a54:	0004b023          	sd	zero,0(s1)
   12a58:	47b1                	c.li	a5,12
   12a5a:	00f92023          	sw	a5,0(s2)
   12a5e:	bf79                	c.j	129fc <__sfp+0x8a>

0000000000012a60 <_cleanup>:
   12a60:	00008597          	auipc	a1,0x8
   12a64:	9ec58593          	addi	a1,a1,-1556 # 1a44c <_fclose_r>
   12a68:	0000e517          	auipc	a0,0xe
   12a6c:	85853503          	ld	a0,-1960(a0) # 202c0 <_global_impure_ptr>
   12a70:	00000317          	auipc	t1,0x0
   12a74:	7c430067          	jalr	zero,1988(t1) # 13234 <_fwalk_reent>

0000000000012a78 <__sinit>:
   12a78:	493c                	c.lw	a5,80(a0)
   12a7a:	c391                	c.beqz	a5,12a7e <__sinit+0x6>
   12a7c:	8082                	c.jr	ra
   12a7e:	00000317          	auipc	t1,0x0
   12a82:	d7030067          	jalr	zero,-656(t1) # 127ee <__sinit.part.0>

0000000000012a86 <__sfp_lock_acquire>:
   12a86:	8082                	c.jr	ra

0000000000012a88 <__sfp_lock_release>:
   12a88:	8082                	c.jr	ra

0000000000012a8a <__sinit_lock_acquire>:
   12a8a:	8082                	c.jr	ra

0000000000012a8c <__sinit_lock_release>:
   12a8c:	8082                	c.jr	ra

0000000000012a8e <__fp_lock_all>:
   12a8e:	00000597          	auipc	a1,0x0
   12a92:	d4858593          	addi	a1,a1,-696 # 127d6 <__fp_lock>
   12a96:	0000e517          	auipc	a0,0xe
   12a9a:	83a53503          	ld	a0,-1990(a0) # 202d0 <_impure_ptr>
   12a9e:	00000317          	auipc	t1,0x0
   12aa2:	71430067          	jalr	zero,1812(t1) # 131b2 <_fwalk>

0000000000012aa6 <__fp_unlock_all>:
   12aa6:	00000597          	auipc	a1,0x0
   12aaa:	d4458593          	addi	a1,a1,-700 # 127ea <__fp_unlock>
   12aae:	0000e517          	auipc	a0,0xe
   12ab2:	82253503          	ld	a0,-2014(a0) # 202d0 <_impure_ptr>
   12ab6:	00000317          	auipc	t1,0x0
   12aba:	6fc30067          	jalr	zero,1788(t1) # 131b2 <_fwalk>

0000000000012abe <__libc_fini_array>:
   12abe:	1101                	c.addi	sp,-32
   12ac0:	e822                	c.sdsp	s0,16(sp)
   12ac2:	0000c797          	auipc	a5,0xc
   12ac6:	6ce78793          	addi	a5,a5,1742 # 1f190 <impure_data>
   12aca:	0000c417          	auipc	s0,0xc
   12ace:	6be40413          	addi	s0,s0,1726 # 1f188 <__do_global_dtors_aux_fini_array_entry>
   12ad2:	8f81                	c.sub	a5,s0
   12ad4:	e426                	c.sdsp	s1,8(sp)
   12ad6:	ec06                	c.sdsp	ra,24(sp)
   12ad8:	4037d493          	srai	s1,a5,0x3
   12adc:	c881                	c.beqz	s1,12aec <__libc_fini_array+0x2e>
   12ade:	17e1                	c.addi	a5,-8
   12ae0:	943e                	c.add	s0,a5
   12ae2:	601c                	c.ld	a5,0(s0)
   12ae4:	14fd                	c.addi	s1,-1
   12ae6:	1461                	c.addi	s0,-8
   12ae8:	9782                	c.jalr	a5
   12aea:	fce5                	c.bnez	s1,12ae2 <__libc_fini_array+0x24>
   12aec:	60e2                	c.ldsp	ra,24(sp)
   12aee:	6442                	c.ldsp	s0,16(sp)
   12af0:	64a2                	c.ldsp	s1,8(sp)
   12af2:	6105                	c.addi16sp	sp,32
   12af4:	8082                	c.jr	ra

0000000000012af6 <_malloc_trim_r>:
   12af6:	7179                	c.addi16sp	sp,-48
   12af8:	f022                	c.sdsp	s0,32(sp)
   12afa:	ec26                	c.sdsp	s1,24(sp)
   12afc:	e84a                	c.sdsp	s2,16(sp)
   12afe:	e44e                	c.sdsp	s3,8(sp)
   12b00:	e052                	c.sdsp	s4,0(sp)
   12b02:	89ae                	c.mv	s3,a1
   12b04:	f406                	c.sdsp	ra,40(sp)
   12b06:	0000da17          	auipc	s4,0xd
   12b0a:	f7aa0a13          	addi	s4,s4,-134 # 1fa80 <__malloc_av_>
   12b0e:	892a                	c.mv	s2,a0
   12b10:	00003097          	auipc	ra,0x3
   12b14:	550080e7          	jalr	ra,1360(ra) # 16060 <__malloc_lock>
   12b18:	010a3703          	ld	a4,16(s4)
   12b1c:	6785                	c.lui	a5,0x1
   12b1e:	fdf78413          	addi	s0,a5,-33 # fdf <register_fini-0xf0d1>
   12b22:	6704                	c.ld	s1,8(a4)
   12b24:	41340433          	sub	s0,s0,s3
   12b28:	98f1                	c.andi	s1,-4
   12b2a:	9426                	c.add	s0,s1
   12b2c:	8031                	c.srli	s0,0xc
   12b2e:	147d                	c.addi	s0,-1
   12b30:	0432                	c.slli	s0,0xc
   12b32:	00f44d63          	blt	s0,a5,12b4c <_malloc_trim_r+0x56>
   12b36:	4581                	c.li	a1,0
   12b38:	854a                	c.mv	a0,s2
   12b3a:	00004097          	auipc	ra,0x4
   12b3e:	6a8080e7          	jalr	ra,1704(ra) # 171e2 <_sbrk_r>
   12b42:	010a3783          	ld	a5,16(s4)
   12b46:	97a6                	c.add	a5,s1
   12b48:	02f50063          	beq	a0,a5,12b68 <_malloc_trim_r+0x72>
   12b4c:	854a                	c.mv	a0,s2
   12b4e:	00003097          	auipc	ra,0x3
   12b52:	514080e7          	jalr	ra,1300(ra) # 16062 <__malloc_unlock>
   12b56:	70a2                	c.ldsp	ra,40(sp)
   12b58:	7402                	c.ldsp	s0,32(sp)
   12b5a:	64e2                	c.ldsp	s1,24(sp)
   12b5c:	6942                	c.ldsp	s2,16(sp)
   12b5e:	69a2                	c.ldsp	s3,8(sp)
   12b60:	6a02                	c.ldsp	s4,0(sp)
   12b62:	4501                	c.li	a0,0
   12b64:	6145                	c.addi16sp	sp,48
   12b66:	8082                	c.jr	ra
   12b68:	408005b3          	sub	a1,zero,s0
   12b6c:	854a                	c.mv	a0,s2
   12b6e:	00004097          	auipc	ra,0x4
   12b72:	674080e7          	jalr	ra,1652(ra) # 171e2 <_sbrk_r>
   12b76:	57fd                	c.li	a5,-1
   12b78:	02f50e63          	beq	a0,a5,12bb4 <_malloc_trim_r+0xbe>
   12b7c:	0000d717          	auipc	a4,0xd
   12b80:	7d470713          	addi	a4,a4,2004 # 20350 <__malloc_current_mallinfo>
   12b84:	431c                	c.lw	a5,0(a4)
   12b86:	010a3683          	ld	a3,16(s4)
   12b8a:	8c81                	c.sub	s1,s0
   12b8c:	0014e493          	ori	s1,s1,1
   12b90:	4087843b          	subw	s0,a5,s0
   12b94:	854a                	c.mv	a0,s2
   12b96:	e684                	c.sd	s1,8(a3)
   12b98:	c300                	c.sw	s0,0(a4)
   12b9a:	00003097          	auipc	ra,0x3
   12b9e:	4c8080e7          	jalr	ra,1224(ra) # 16062 <__malloc_unlock>
   12ba2:	70a2                	c.ldsp	ra,40(sp)
   12ba4:	7402                	c.ldsp	s0,32(sp)
   12ba6:	64e2                	c.ldsp	s1,24(sp)
   12ba8:	6942                	c.ldsp	s2,16(sp)
   12baa:	69a2                	c.ldsp	s3,8(sp)
   12bac:	6a02                	c.ldsp	s4,0(sp)
   12bae:	4505                	c.li	a0,1
   12bb0:	6145                	c.addi16sp	sp,48
   12bb2:	8082                	c.jr	ra
   12bb4:	4581                	c.li	a1,0
   12bb6:	854a                	c.mv	a0,s2
   12bb8:	00004097          	auipc	ra,0x4
   12bbc:	62a080e7          	jalr	ra,1578(ra) # 171e2 <_sbrk_r>
   12bc0:	010a3703          	ld	a4,16(s4)
   12bc4:	46fd                	c.li	a3,31
   12bc6:	40e507b3          	sub	a5,a0,a4
   12bca:	f8f6d1e3          	bge	a3,a5,12b4c <_malloc_trim_r+0x56>
   12bce:	0000d697          	auipc	a3,0xd
   12bd2:	70a6b683          	ld	a3,1802(a3) # 202d8 <__malloc_sbrk_base>
   12bd6:	8d15                	c.sub	a0,a3
   12bd8:	0017e793          	ori	a5,a5,1
   12bdc:	0000d697          	auipc	a3,0xd
   12be0:	76a6aa23          	sw	a0,1908(a3) # 20350 <__malloc_current_mallinfo>
   12be4:	e71c                	c.sd	a5,8(a4)
   12be6:	b79d                	c.j	12b4c <_malloc_trim_r+0x56>

0000000000012be8 <_free_r>:
   12be8:	c9f5                	c.beqz	a1,12cdc <_free_r+0xf4>
   12bea:	1101                	c.addi	sp,-32
   12bec:	e822                	c.sdsp	s0,16(sp)
   12bee:	e426                	c.sdsp	s1,8(sp)
   12bf0:	842e                	c.mv	s0,a1
   12bf2:	84aa                	c.mv	s1,a0
   12bf4:	ec06                	c.sdsp	ra,24(sp)
   12bf6:	00003097          	auipc	ra,0x3
   12bfa:	46a080e7          	jalr	ra,1130(ra) # 16060 <__malloc_lock>
   12bfe:	ff843583          	ld	a1,-8(s0)
   12c02:	ff040713          	addi	a4,s0,-16
   12c06:	0000d517          	auipc	a0,0xd
   12c0a:	e7a50513          	addi	a0,a0,-390 # 1fa80 <__malloc_av_>
   12c0e:	ffe5f793          	andi	a5,a1,-2
   12c12:	00f70633          	add	a2,a4,a5
   12c16:	6614                	c.ld	a3,8(a2)
   12c18:	01053803          	ld	a6,16(a0)
   12c1c:	9af1                	c.andi	a3,-4
   12c1e:	14c80663          	beq	a6,a2,12d6a <_free_r+0x182>
   12c22:	e614                	c.sd	a3,8(a2)
   12c24:	8985                	c.andi	a1,1
   12c26:	00d60833          	add	a6,a2,a3
   12c2a:	e1d1                	c.bnez	a1,12cae <_free_r+0xc6>
   12c2c:	ff043303          	ld	t1,-16(s0)
   12c30:	00883583          	ld	a1,8(a6)
   12c34:	0000d897          	auipc	a7,0xd
   12c38:	e5c88893          	addi	a7,a7,-420 # 1fa90 <__malloc_av_+0x10>
   12c3c:	40670733          	sub	a4,a4,t1
   12c40:	01073803          	ld	a6,16(a4)
   12c44:	979a                	c.add	a5,t1
   12c46:	8985                	c.andi	a1,1
   12c48:	0f180c63          	beq	a6,a7,12d40 <_free_r+0x158>
   12c4c:	01873303          	ld	t1,24(a4)
   12c50:	00683c23          	sd	t1,24(a6)
   12c54:	01033823          	sd	a6,16(t1)
   12c58:	16058963          	beq	a1,zero,12dca <_free_r+0x1e2>
   12c5c:	0017e693          	ori	a3,a5,1
   12c60:	e714                	c.sd	a3,8(a4)
   12c62:	e21c                	c.sd	a5,0(a2)
   12c64:	1ff00693          	addi	a3,zero,511
   12c68:	08f6e463          	bltu	a3,a5,12cf0 <_free_r+0x108>
   12c6c:	838d                	c.srli	a5,0x3
   12c6e:	0017869b          	addiw	a3,a5,1
   12c72:	0016969b          	slliw	a3,a3,0x1
   12c76:	068e                	c.slli	a3,0x3
   12c78:	00853803          	ld	a6,8(a0)
   12c7c:	96aa                	c.add	a3,a0
   12c7e:	628c                	c.ld	a1,0(a3)
   12c80:	4027d61b          	sraiw	a2,a5,0x2
   12c84:	4785                	c.li	a5,1
   12c86:	00c797b3          	sll	a5,a5,a2
   12c8a:	0107e7b3          	or	a5,a5,a6
   12c8e:	ff068613          	addi	a2,a3,-16
   12c92:	ef10                	c.sd	a2,24(a4)
   12c94:	eb0c                	c.sd	a1,16(a4)
   12c96:	e51c                	c.sd	a5,8(a0)
   12c98:	e298                	c.sd	a4,0(a3)
   12c9a:	ed98                	c.sd	a4,24(a1)
   12c9c:	6442                	c.ldsp	s0,16(sp)
   12c9e:	60e2                	c.ldsp	ra,24(sp)
   12ca0:	8526                	c.mv	a0,s1
   12ca2:	64a2                	c.ldsp	s1,8(sp)
   12ca4:	6105                	c.addi16sp	sp,32
   12ca6:	00003317          	auipc	t1,0x3
   12caa:	3bc30067          	jalr	zero,956(t1) # 16062 <__malloc_unlock>
   12cae:	00883583          	ld	a1,8(a6)
   12cb2:	8985                	c.andi	a1,1
   12cb4:	e58d                	c.bnez	a1,12cde <_free_r+0xf6>
   12cb6:	97b6                	c.add	a5,a3
   12cb8:	0000d897          	auipc	a7,0xd
   12cbc:	dd888893          	addi	a7,a7,-552 # 1fa90 <__malloc_av_+0x10>
   12cc0:	6a14                	c.ld	a3,16(a2)
   12cc2:	0017e813          	ori	a6,a5,1
   12cc6:	00f705b3          	add	a1,a4,a5
   12cca:	11168a63          	beq	a3,a7,12dde <_free_r+0x1f6>
   12cce:	6e10                	c.ld	a2,24(a2)
   12cd0:	ee90                	c.sd	a2,24(a3)
   12cd2:	ea14                	c.sd	a3,16(a2)
   12cd4:	01073423          	sd	a6,8(a4)
   12cd8:	e19c                	c.sd	a5,0(a1)
   12cda:	b769                	c.j	12c64 <_free_r+0x7c>
   12cdc:	8082                	c.jr	ra
   12cde:	0017e693          	ori	a3,a5,1
   12ce2:	fed43c23          	sd	a3,-8(s0)
   12ce6:	e21c                	c.sd	a5,0(a2)
   12ce8:	1ff00693          	addi	a3,zero,511
   12cec:	f8f6f0e3          	bgeu	a3,a5,12c6c <_free_r+0x84>
   12cf0:	0097d693          	srli	a3,a5,0x9
   12cf4:	4611                	c.li	a2,4
   12cf6:	0ad66963          	bltu	a2,a3,12da8 <_free_r+0x1c0>
   12cfa:	0067d693          	srli	a3,a5,0x6
   12cfe:	0396859b          	addiw	a1,a3,57
   12d02:	0015959b          	slliw	a1,a1,0x1
   12d06:	0386861b          	addiw	a2,a3,56
   12d0a:	058e                	c.slli	a1,0x3
   12d0c:	95aa                	c.add	a1,a0
   12d0e:	6194                	c.ld	a3,0(a1)
   12d10:	15c1                	c.addi	a1,-16
   12d12:	0ed58063          	beq	a1,a3,12df2 <_free_r+0x20a>
   12d16:	6690                	c.ld	a2,8(a3)
   12d18:	9a71                	c.andi	a2,-4
   12d1a:	00c7f563          	bgeu	a5,a2,12d24 <_free_r+0x13c>
   12d1e:	6a94                	c.ld	a3,16(a3)
   12d20:	fed59be3          	bne	a1,a3,12d16 <_free_r+0x12e>
   12d24:	6e8c                	c.ld	a1,24(a3)
   12d26:	ef0c                	c.sd	a1,24(a4)
   12d28:	eb14                	c.sd	a3,16(a4)
   12d2a:	6442                	c.ldsp	s0,16(sp)
   12d2c:	60e2                	c.ldsp	ra,24(sp)
   12d2e:	e998                	c.sd	a4,16(a1)
   12d30:	8526                	c.mv	a0,s1
   12d32:	64a2                	c.ldsp	s1,8(sp)
   12d34:	ee98                	c.sd	a4,24(a3)
   12d36:	6105                	c.addi16sp	sp,32
   12d38:	00003317          	auipc	t1,0x3
   12d3c:	32a30067          	jalr	zero,810(t1) # 16062 <__malloc_unlock>
   12d40:	10059563          	bne	a1,zero,12e4a <_free_r+0x262>
   12d44:	6e0c                	c.ld	a1,24(a2)
   12d46:	6a10                	c.ld	a2,16(a2)
   12d48:	97b6                	c.add	a5,a3
   12d4a:	6442                	c.ldsp	s0,16(sp)
   12d4c:	ee0c                	c.sd	a1,24(a2)
   12d4e:	e990                	c.sd	a2,16(a1)
   12d50:	0017e693          	ori	a3,a5,1
   12d54:	60e2                	c.ldsp	ra,24(sp)
   12d56:	e714                	c.sd	a3,8(a4)
   12d58:	8526                	c.mv	a0,s1
   12d5a:	973e                	c.add	a4,a5
   12d5c:	64a2                	c.ldsp	s1,8(sp)
   12d5e:	e31c                	c.sd	a5,0(a4)
   12d60:	6105                	c.addi16sp	sp,32
   12d62:	00003317          	auipc	t1,0x3
   12d66:	30030067          	jalr	zero,768(t1) # 16062 <__malloc_unlock>
   12d6a:	8985                	c.andi	a1,1
   12d6c:	97b6                	c.add	a5,a3
   12d6e:	e989                	c.bnez	a1,12d80 <_free_r+0x198>
   12d70:	ff043583          	ld	a1,-16(s0)
   12d74:	8f0d                	c.sub	a4,a1
   12d76:	6f14                	c.ld	a3,24(a4)
   12d78:	6b10                	c.ld	a2,16(a4)
   12d7a:	97ae                	c.add	a5,a1
   12d7c:	ee14                	c.sd	a3,24(a2)
   12d7e:	ea90                	c.sd	a2,16(a3)
   12d80:	0017e693          	ori	a3,a5,1
   12d84:	e714                	c.sd	a3,8(a4)
   12d86:	e918                	c.sd	a4,16(a0)
   12d88:	0000d717          	auipc	a4,0xd
   12d8c:	55873703          	ld	a4,1368(a4) # 202e0 <__malloc_trim_threshold>
   12d90:	f0e7e6e3          	bltu	a5,a4,12c9c <_free_r+0xb4>
   12d94:	0000d597          	auipc	a1,0xd
   12d98:	56c5b583          	ld	a1,1388(a1) # 20300 <__malloc_top_pad>
   12d9c:	8526                	c.mv	a0,s1
   12d9e:	00000097          	auipc	ra,0x0
   12da2:	d58080e7          	jalr	ra,-680(ra) # 12af6 <_malloc_trim_r>
   12da6:	bddd                	c.j	12c9c <_free_r+0xb4>
   12da8:	4651                	c.li	a2,20
   12daa:	02d67263          	bgeu	a2,a3,12dce <_free_r+0x1e6>
   12dae:	05400613          	addi	a2,zero,84
   12db2:	04d66b63          	bltu	a2,a3,12e08 <_free_r+0x220>
   12db6:	00c7d693          	srli	a3,a5,0xc
   12dba:	06f6859b          	addiw	a1,a3,111
   12dbe:	0015959b          	slliw	a1,a1,0x1
   12dc2:	06e6861b          	addiw	a2,a3,110
   12dc6:	058e                	c.slli	a1,0x3
   12dc8:	b791                	c.j	12d0c <_free_r+0x124>
   12dca:	97b6                	c.add	a5,a3
   12dcc:	bdd5                	c.j	12cc0 <_free_r+0xd8>
   12dce:	05c6859b          	addiw	a1,a3,92
   12dd2:	0015959b          	slliw	a1,a1,0x1
   12dd6:	05b6861b          	addiw	a2,a3,91
   12dda:	058e                	c.slli	a1,0x3
   12ddc:	bf05                	c.j	12d0c <_free_r+0x124>
   12dde:	f518                	c.sd	a4,40(a0)
   12de0:	f118                	c.sd	a4,32(a0)
   12de2:	01173c23          	sd	a7,24(a4)
   12de6:	01173823          	sd	a7,16(a4)
   12dea:	01073423          	sd	a6,8(a4)
   12dee:	e19c                	c.sd	a5,0(a1)
   12df0:	b575                	c.j	12c9c <_free_r+0xb4>
   12df2:	00853803          	ld	a6,8(a0)
   12df6:	4026561b          	sraiw	a2,a2,0x2
   12dfa:	4785                	c.li	a5,1
   12dfc:	00c79633          	sll	a2,a5,a2
   12e00:	01066633          	or	a2,a2,a6
   12e04:	e510                	c.sd	a2,8(a0)
   12e06:	b705                	c.j	12d26 <_free_r+0x13e>
   12e08:	15400613          	addi	a2,zero,340
   12e0c:	00d66c63          	bltu	a2,a3,12e24 <_free_r+0x23c>
   12e10:	00f7d693          	srli	a3,a5,0xf
   12e14:	0786859b          	addiw	a1,a3,120
   12e18:	0015959b          	slliw	a1,a1,0x1
   12e1c:	0776861b          	addiw	a2,a3,119
   12e20:	058e                	c.slli	a1,0x3
   12e22:	b5ed                	c.j	12d0c <_free_r+0x124>
   12e24:	55400613          	addi	a2,zero,1364
   12e28:	00d66c63          	bltu	a2,a3,12e40 <_free_r+0x258>
   12e2c:	0127d693          	srli	a3,a5,0x12
   12e30:	07d6859b          	addiw	a1,a3,125
   12e34:	0015959b          	slliw	a1,a1,0x1
   12e38:	07c6861b          	addiw	a2,a3,124
   12e3c:	058e                	c.slli	a1,0x3
   12e3e:	b5f9                	c.j	12d0c <_free_r+0x124>
   12e40:	7f000593          	addi	a1,zero,2032
   12e44:	07e00613          	addi	a2,zero,126
   12e48:	b5d1                	c.j	12d0c <_free_r+0x124>
   12e4a:	0017e693          	ori	a3,a5,1
   12e4e:	e714                	c.sd	a3,8(a4)
   12e50:	e21c                	c.sd	a5,0(a2)
   12e52:	b5a9                	c.j	12c9c <_free_r+0xb4>

0000000000012e54 <__sfvwrite_r>:
   12e54:	6a1c                	c.ld	a5,16(a2)
   12e56:	1c078263          	beq	a5,zero,1301a <__sfvwrite_r+0x1c6>
   12e5a:	0105d783          	lhu	a5,16(a1)
   12e5e:	711d                	c.addi16sp	sp,-96
   12e60:	e8a2                	c.sdsp	s0,80(sp)
   12e62:	f852                	c.sdsp	s4,48(sp)
   12e64:	f456                	c.sdsp	s5,40(sp)
   12e66:	ec86                	c.sdsp	ra,88(sp)
   12e68:	e4a6                	c.sdsp	s1,72(sp)
   12e6a:	e0ca                	c.sdsp	s2,64(sp)
   12e6c:	fc4e                	c.sdsp	s3,56(sp)
   12e6e:	f05a                	c.sdsp	s6,32(sp)
   12e70:	ec5e                	c.sdsp	s7,24(sp)
   12e72:	e862                	c.sdsp	s8,16(sp)
   12e74:	e466                	c.sdsp	s9,8(sp)
   12e76:	e06a                	c.sdsp	s10,0(sp)
   12e78:	0087f713          	andi	a4,a5,8
   12e7c:	8a32                	c.mv	s4,a2
   12e7e:	8aaa                	c.mv	s5,a0
   12e80:	842e                	c.mv	s0,a1
   12e82:	c325                	c.beqz	a4,12ee2 <__sfvwrite_r+0x8e>
   12e84:	6d98                	c.ld	a4,24(a1)
   12e86:	cf31                	c.beqz	a4,12ee2 <__sfvwrite_r+0x8e>
   12e88:	0027f713          	andi	a4,a5,2
   12e8c:	000a3903          	ld	s2,0(s4)
   12e90:	cb25                	c.beqz	a4,12f00 <__sfvwrite_r+0xac>
   12e92:	603c                	c.ld	a5,64(s0)
   12e94:	780c                	c.ld	a1,48(s0)
   12e96:	80000b37          	lui	s6,0x80000
   12e9a:	4981                	c.li	s3,0
   12e9c:	4481                	c.li	s1,0
   12e9e:	c00b4b13          	xori	s6,s6,-1024
   12ea2:	864e                	c.mv	a2,s3
   12ea4:	8556                	c.mv	a0,s5
   12ea6:	c885                	c.beqz	s1,12ed6 <__sfvwrite_r+0x82>
   12ea8:	86a6                	c.mv	a3,s1
   12eaa:	009b7363          	bgeu	s6,s1,12eb0 <__sfvwrite_r+0x5c>
   12eae:	86da                	c.mv	a3,s6
   12eb0:	2681                	c.addiw	a3,0
   12eb2:	9782                	c.jalr	a5
   12eb4:	14a05b63          	bge	zero,a0,1300a <__sfvwrite_r+0x1b6>
   12eb8:	010a3783          	ld	a5,16(s4)
   12ebc:	99aa                	c.add	s3,a0
   12ebe:	8c89                	c.sub	s1,a0
   12ec0:	40a78533          	sub	a0,a5,a0
   12ec4:	00aa3823          	sd	a0,16(s4)
   12ec8:	10050b63          	beq	a0,zero,12fde <__sfvwrite_r+0x18a>
   12ecc:	603c                	c.ld	a5,64(s0)
   12ece:	780c                	c.ld	a1,48(s0)
   12ed0:	864e                	c.mv	a2,s3
   12ed2:	8556                	c.mv	a0,s5
   12ed4:	f8f1                	c.bnez	s1,12ea8 <__sfvwrite_r+0x54>
   12ed6:	00093983          	ld	s3,0(s2)
   12eda:	00893483          	ld	s1,8(s2)
   12ede:	0941                	c.addi	s2,16
   12ee0:	b7c9                	c.j	12ea2 <__sfvwrite_r+0x4e>
   12ee2:	85a2                	c.mv	a1,s0
   12ee4:	8556                	c.mv	a0,s5
   12ee6:	fffff097          	auipc	ra,0xfffff
   12eea:	4e8080e7          	jalr	ra,1256(ra) # 123ce <__swsetup_r>
   12eee:	2c051063          	bne	a0,zero,131ae <__sfvwrite_r+0x35a>
   12ef2:	01045783          	lhu	a5,16(s0)
   12ef6:	000a3903          	ld	s2,0(s4)
   12efa:	0027f713          	andi	a4,a5,2
   12efe:	fb51                	c.bnez	a4,12e92 <__sfvwrite_r+0x3e>
   12f00:	0017f713          	andi	a4,a5,1
   12f04:	ef25                	c.bnez	a4,12f7c <__sfvwrite_r+0x128>
   12f06:	4444                	c.lw	s1,12(s0)
   12f08:	6008                	c.ld	a0,0(s0)
   12f0a:	80000b37          	lui	s6,0x80000
   12f0e:	ffeb4b93          	xori	s7,s6,-2
   12f12:	4c01                	c.li	s8,0
   12f14:	4981                	c.li	s3,0
   12f16:	fffb4b13          	xori	s6,s6,-1
   12f1a:	8ca6                	c.mv	s9,s1
   12f1c:	04098a63          	beq	s3,zero,12f70 <__sfvwrite_r+0x11c>
   12f20:	2007f713          	andi	a4,a5,512
   12f24:	14070463          	beq	a4,zero,1306c <__sfvwrite_r+0x218>
   12f28:	8d26                	c.mv	s10,s1
   12f2a:	1a99f563          	bgeu	s3,s1,130d4 <__sfvwrite_r+0x280>
   12f2e:	8cce                	c.mv	s9,s3
   12f30:	8d4e                	c.mv	s10,s3
   12f32:	866a                	c.mv	a2,s10
   12f34:	85e2                	c.mv	a1,s8
   12f36:	00003097          	auipc	ra,0x3
   12f3a:	054080e7          	jalr	ra,84(ra) # 15f8a <memmove>
   12f3e:	4458                	c.lw	a4,12(s0)
   12f40:	601c                	c.ld	a5,0(s0)
   12f42:	84ce                	c.mv	s1,s3
   12f44:	41970cbb          	subw	s9,a4,s9
   12f48:	97ea                	c.add	a5,s10
   12f4a:	01942623          	sw	s9,12(s0)
   12f4e:	e01c                	c.sd	a5,0(s0)
   12f50:	4981                	c.li	s3,0
   12f52:	010a3603          	ld	a2,16(s4)
   12f56:	9c26                	c.add	s8,s1
   12f58:	409604b3          	sub	s1,a2,s1
   12f5c:	009a3823          	sd	s1,16(s4)
   12f60:	ccbd                	c.beqz	s1,12fde <__sfvwrite_r+0x18a>
   12f62:	4444                	c.lw	s1,12(s0)
   12f64:	6008                	c.ld	a0,0(s0)
   12f66:	01045783          	lhu	a5,16(s0)
   12f6a:	8ca6                	c.mv	s9,s1
   12f6c:	fa099ae3          	bne	s3,zero,12f20 <__sfvwrite_r+0xcc>
   12f70:	00093c03          	ld	s8,0(s2)
   12f74:	00893983          	ld	s3,8(s2)
   12f78:	0941                	c.addi	s2,16
   12f7a:	b745                	c.j	12f1a <__sfvwrite_r+0xc6>
   12f7c:	4981                	c.li	s3,0
   12f7e:	4501                	c.li	a0,0
   12f80:	4c81                	c.li	s9,0
   12f82:	4c01                	c.li	s8,0
   12f84:	080c0d63          	beq	s8,zero,1301e <__sfvwrite_r+0x1ca>
   12f88:	c155                	c.beqz	a0,1302c <__sfvwrite_r+0x1d8>
   12f8a:	8bce                	c.mv	s7,s3
   12f8c:	013c7363          	bgeu	s8,s3,12f92 <__sfvwrite_r+0x13e>
   12f90:	8be2                	c.mv	s7,s8
   12f92:	6008                	c.ld	a0,0(s0)
   12f94:	6c1c                	c.ld	a5,24(s0)
   12f96:	5014                	c.lw	a3,32(s0)
   12f98:	84de                	c.mv	s1,s7
   12f9a:	00a7f763          	bgeu	a5,a0,12fa8 <__sfvwrite_r+0x154>
   12f9e:	445c                	c.lw	a5,12(s0)
   12fa0:	00d78b3b          	addw	s6,a5,a3
   12fa4:	0b7b4163          	blt	s6,s7,13046 <__sfvwrite_r+0x1f2>
   12fa8:	1adbc463          	blt	s7,a3,13150 <__sfvwrite_r+0x2fc>
   12fac:	603c                	c.ld	a5,64(s0)
   12fae:	780c                	c.ld	a1,48(s0)
   12fb0:	8666                	c.mv	a2,s9
   12fb2:	8556                	c.mv	a0,s5
   12fb4:	9782                	c.jalr	a5
   12fb6:	84aa                	c.mv	s1,a0
   12fb8:	04a05963          	bge	zero,a0,1300a <__sfvwrite_r+0x1b6>
   12fbc:	0005079b          	addiw	a5,a0,0
   12fc0:	40f989bb          	subw	s3,s3,a5
   12fc4:	4505                	c.li	a0,1
   12fc6:	02098b63          	beq	s3,zero,12ffc <__sfvwrite_r+0x1a8>
   12fca:	010a3783          	ld	a5,16(s4)
   12fce:	9ca6                	c.add	s9,s1
   12fd0:	409c0c33          	sub	s8,s8,s1
   12fd4:	409784b3          	sub	s1,a5,s1
   12fd8:	009a3823          	sd	s1,16(s4)
   12fdc:	f4c5                	c.bnez	s1,12f84 <__sfvwrite_r+0x130>
   12fde:	4501                	c.li	a0,0
   12fe0:	60e6                	c.ldsp	ra,88(sp)
   12fe2:	6446                	c.ldsp	s0,80(sp)
   12fe4:	64a6                	c.ldsp	s1,72(sp)
   12fe6:	6906                	c.ldsp	s2,64(sp)
   12fe8:	79e2                	c.ldsp	s3,56(sp)
   12fea:	7a42                	c.ldsp	s4,48(sp)
   12fec:	7aa2                	c.ldsp	s5,40(sp)
   12fee:	7b02                	c.ldsp	s6,32(sp)
   12ff0:	6be2                	c.ldsp	s7,24(sp)
   12ff2:	6c42                	c.ldsp	s8,16(sp)
   12ff4:	6ca2                	c.ldsp	s9,8(sp)
   12ff6:	6d02                	c.ldsp	s10,0(sp)
   12ff8:	6125                	c.addi16sp	sp,96
   12ffa:	8082                	c.jr	ra
   12ffc:	85a2                	c.mv	a1,s0
   12ffe:	8556                	c.mv	a0,s5
   13000:	fffff097          	auipc	ra,0xfffff
   13004:	732080e7          	jalr	ra,1842(ra) # 12732 <_fflush_r>
   13008:	d169                	c.beqz	a0,12fca <__sfvwrite_r+0x176>
   1300a:	01041783          	lh	a5,16(s0)
   1300e:	0407e793          	ori	a5,a5,64
   13012:	00f41823          	sh	a5,16(s0)
   13016:	557d                	c.li	a0,-1
   13018:	b7e1                	c.j	12fe0 <__sfvwrite_r+0x18c>
   1301a:	4501                	c.li	a0,0
   1301c:	8082                	c.jr	ra
   1301e:	00893c03          	ld	s8,8(s2)
   13022:	00093c83          	ld	s9,0(s2)
   13026:	0941                	c.addi	s2,16
   13028:	fe0c0be3          	beq	s8,zero,1301e <__sfvwrite_r+0x1ca>
   1302c:	8662                	c.mv	a2,s8
   1302e:	45a9                	c.li	a1,10
   13030:	8566                	c.mv	a0,s9
   13032:	00003097          	auipc	ra,0x3
   13036:	dda080e7          	jalr	ra,-550(ra) # 15e0c <memchr>
   1303a:	16050163          	beq	a0,zero,1319c <__sfvwrite_r+0x348>
   1303e:	0505                	c.addi	a0,1
   13040:	419509bb          	subw	s3,a0,s9
   13044:	b799                	c.j	12f8a <__sfvwrite_r+0x136>
   13046:	85e6                	c.mv	a1,s9
   13048:	865a                	c.mv	a2,s6
   1304a:	00003097          	auipc	ra,0x3
   1304e:	f40080e7          	jalr	ra,-192(ra) # 15f8a <memmove>
   13052:	601c                	c.ld	a5,0(s0)
   13054:	85a2                	c.mv	a1,s0
   13056:	8556                	c.mv	a0,s5
   13058:	97da                	c.add	a5,s6
   1305a:	e01c                	c.sd	a5,0(s0)
   1305c:	fffff097          	auipc	ra,0xfffff
   13060:	6d6080e7          	jalr	ra,1750(ra) # 12732 <_fflush_r>
   13064:	f15d                	c.bnez	a0,1300a <__sfvwrite_r+0x1b6>
   13066:	87da                	c.mv	a5,s6
   13068:	84da                	c.mv	s1,s6
   1306a:	bf99                	c.j	12fc0 <__sfvwrite_r+0x16c>
   1306c:	6c1c                	c.ld	a5,24(s0)
   1306e:	02a7e863          	bltu	a5,a0,1309e <__sfvwrite_r+0x24a>
   13072:	501c                	c.lw	a5,32(s0)
   13074:	02f9e563          	bltu	s3,a5,1309e <__sfvwrite_r+0x24a>
   13078:	86ce                	c.mv	a3,s3
   1307a:	013bf363          	bgeu	s7,s3,13080 <__sfvwrite_r+0x22c>
   1307e:	86da                	c.mv	a3,s6
   13080:	02f6c6bb          	divw	a3,a3,a5
   13084:	6038                	c.ld	a4,64(s0)
   13086:	780c                	c.ld	a1,48(s0)
   13088:	8662                	c.mv	a2,s8
   1308a:	8556                	c.mv	a0,s5
   1308c:	02f686bb          	mulw	a3,a3,a5
   13090:	9702                	c.jalr	a4
   13092:	84aa                	c.mv	s1,a0
   13094:	f6a05be3          	bge	zero,a0,1300a <__sfvwrite_r+0x1b6>
   13098:	409989b3          	sub	s3,s3,s1
   1309c:	bd5d                	c.j	12f52 <__sfvwrite_r+0xfe>
   1309e:	0099f363          	bgeu	s3,s1,130a4 <__sfvwrite_r+0x250>
   130a2:	84ce                	c.mv	s1,s3
   130a4:	8626                	c.mv	a2,s1
   130a6:	85e2                	c.mv	a1,s8
   130a8:	00003097          	auipc	ra,0x3
   130ac:	ee2080e7          	jalr	ra,-286(ra) # 15f8a <memmove>
   130b0:	445c                	c.lw	a5,12(s0)
   130b2:	6018                	c.ld	a4,0(s0)
   130b4:	409786bb          	subw	a3,a5,s1
   130b8:	9726                	c.add	a4,s1
   130ba:	c454                	c.sw	a3,12(s0)
   130bc:	e018                	c.sd	a4,0(s0)
   130be:	fee9                	c.bnez	a3,13098 <__sfvwrite_r+0x244>
   130c0:	85a2                	c.mv	a1,s0
   130c2:	8556                	c.mv	a0,s5
   130c4:	fffff097          	auipc	ra,0xfffff
   130c8:	66e080e7          	jalr	ra,1646(ra) # 12732 <_fflush_r>
   130cc:	fd1d                	c.bnez	a0,1300a <__sfvwrite_r+0x1b6>
   130ce:	409989b3          	sub	s3,s3,s1
   130d2:	b541                	c.j	12f52 <__sfvwrite_r+0xfe>
   130d4:	4807f713          	andi	a4,a5,1152
   130d8:	e4070de3          	beq	a4,zero,12f32 <__sfvwrite_r+0xde>
   130dc:	5004                	c.lw	s1,32(s0)
   130de:	6c0c                	c.ld	a1,24(s0)
   130e0:	00198713          	addi	a4,s3,1
   130e4:	0014969b          	slliw	a3,s1,0x1
   130e8:	9ea5                	c.addw	a3,s1
   130ea:	8d0d                	c.sub	a0,a1
   130ec:	01f6d49b          	srliw	s1,a3,0x1f
   130f0:	00050d1b          	addiw	s10,a0,0
   130f4:	9cb5                	c.addw	s1,a3
   130f6:	4014d49b          	sraiw	s1,s1,0x1
   130fa:	976a                	c.add	a4,s10
   130fc:	00e4f563          	bgeu	s1,a4,13106 <__sfvwrite_r+0x2b2>
   13100:	0019849b          	addiw	s1,s3,1
   13104:	9ca9                	c.addw	s1,a0
   13106:	4007f793          	andi	a5,a5,1024
   1310a:	c3bd                	c.beqz	a5,13170 <__sfvwrite_r+0x31c>
   1310c:	85a6                	c.mv	a1,s1
   1310e:	8556                	c.mv	a0,s5
   13110:	00002097          	auipc	ra,0x2
   13114:	640080e7          	jalr	ra,1600(ra) # 15750 <_malloc_r>
   13118:	8caa                	c.mv	s9,a0
   1311a:	c541                	c.beqz	a0,131a2 <__sfvwrite_r+0x34e>
   1311c:	6c0c                	c.ld	a1,24(s0)
   1311e:	866a                	c.mv	a2,s10
   13120:	00003097          	auipc	ra,0x3
   13124:	d82080e7          	jalr	ra,-638(ra) # 15ea2 <memcpy>
   13128:	01045783          	lhu	a5,16(s0)
   1312c:	b7f7f793          	andi	a5,a5,-1153
   13130:	0807e793          	ori	a5,a5,128
   13134:	00f41823          	sh	a5,16(s0)
   13138:	01ac8533          	add	a0,s9,s10
   1313c:	41a487bb          	subw	a5,s1,s10
   13140:	01943c23          	sd	s9,24(s0)
   13144:	e008                	c.sd	a0,0(s0)
   13146:	d004                	c.sw	s1,32(s0)
   13148:	8cce                	c.mv	s9,s3
   1314a:	c45c                	c.sw	a5,12(s0)
   1314c:	8d4e                	c.mv	s10,s3
   1314e:	b3d5                	c.j	12f32 <__sfvwrite_r+0xde>
   13150:	865e                	c.mv	a2,s7
   13152:	85e6                	c.mv	a1,s9
   13154:	00003097          	auipc	ra,0x3
   13158:	e36080e7          	jalr	ra,-458(ra) # 15f8a <memmove>
   1315c:	4454                	c.lw	a3,12(s0)
   1315e:	6018                	c.ld	a4,0(s0)
   13160:	000b879b          	addiw	a5,s7,0
   13164:	417686bb          	subw	a3,a3,s7
   13168:	975e                	c.add	a4,s7
   1316a:	c454                	c.sw	a3,12(s0)
   1316c:	e018                	c.sd	a4,0(s0)
   1316e:	bd89                	c.j	12fc0 <__sfvwrite_r+0x16c>
   13170:	8626                	c.mv	a2,s1
   13172:	8556                	c.mv	a0,s5
   13174:	00004097          	auipc	ra,0x4
   13178:	c34080e7          	jalr	ra,-972(ra) # 16da8 <_realloc_r>
   1317c:	8caa                	c.mv	s9,a0
   1317e:	fd4d                	c.bnez	a0,13138 <__sfvwrite_r+0x2e4>
   13180:	6c0c                	c.ld	a1,24(s0)
   13182:	8556                	c.mv	a0,s5
   13184:	00000097          	auipc	ra,0x0
   13188:	a64080e7          	jalr	ra,-1436(ra) # 12be8 <_free_r>
   1318c:	01041783          	lh	a5,16(s0)
   13190:	4731                	c.li	a4,12
   13192:	00eaa023          	sw	a4,0(s5)
   13196:	f7f7f793          	andi	a5,a5,-129
   1319a:	bd95                	c.j	1300e <__sfvwrite_r+0x1ba>
   1319c:	001c099b          	addiw	s3,s8,1
   131a0:	b3ed                	c.j	12f8a <__sfvwrite_r+0x136>
   131a2:	4731                	c.li	a4,12
   131a4:	01041783          	lh	a5,16(s0)
   131a8:	00eaa023          	sw	a4,0(s5)
   131ac:	b58d                	c.j	1300e <__sfvwrite_r+0x1ba>
   131ae:	557d                	c.li	a0,-1
   131b0:	bd05                	c.j	12fe0 <__sfvwrite_r+0x18c>

00000000000131b2 <_fwalk>:
   131b2:	715d                	c.addi16sp	sp,-80
   131b4:	f84a                	c.sdsp	s2,48(sp)
   131b6:	f44e                	c.sdsp	s3,40(sp)
   131b8:	f052                	c.sdsp	s4,32(sp)
   131ba:	ec56                	c.sdsp	s5,24(sp)
   131bc:	e85a                	c.sdsp	s6,16(sp)
   131be:	e45e                	c.sdsp	s7,8(sp)
   131c0:	e486                	c.sdsp	ra,72(sp)
   131c2:	e0a2                	c.sdsp	s0,64(sp)
   131c4:	fc26                	c.sdsp	s1,56(sp)
   131c6:	8a2e                	c.mv	s4,a1
   131c8:	52050913          	addi	s2,a0,1312
   131cc:	4b01                	c.li	s6,0
   131ce:	0b000a93          	addi	s5,zero,176
   131d2:	4b85                	c.li	s7,1
   131d4:	59fd                	c.li	s3,-1
   131d6:	00892783          	lw	a5,8(s2)
   131da:	01093403          	ld	s0,16(s2)
   131de:	02f05b63          	bge	zero,a5,13214 <_fwalk+0x62>
   131e2:	fff7849b          	addiw	s1,a5,-1
   131e6:	1482                	c.slli	s1,0x20
   131e8:	9081                	c.srli	s1,0x20
   131ea:	0485                	c.addi	s1,1
   131ec:	035484b3          	mul	s1,s1,s5
   131f0:	94a2                	c.add	s1,s0
   131f2:	01045783          	lhu	a5,16(s0)
   131f6:	00fbfb63          	bgeu	s7,a5,1320c <_fwalk+0x5a>
   131fa:	01241783          	lh	a5,18(s0)
   131fe:	8522                	c.mv	a0,s0
   13200:	01378663          	beq	a5,s3,1320c <_fwalk+0x5a>
   13204:	9a02                	c.jalr	s4
   13206:	01656b33          	or	s6,a0,s6
   1320a:	2b01                	c.addiw	s6,0
   1320c:	0b040413          	addi	s0,s0,176
   13210:	fe8491e3          	bne	s1,s0,131f2 <_fwalk+0x40>
   13214:	00093903          	ld	s2,0(s2)
   13218:	fa091fe3          	bne	s2,zero,131d6 <_fwalk+0x24>
   1321c:	60a6                	c.ldsp	ra,72(sp)
   1321e:	6406                	c.ldsp	s0,64(sp)
   13220:	74e2                	c.ldsp	s1,56(sp)
   13222:	7942                	c.ldsp	s2,48(sp)
   13224:	79a2                	c.ldsp	s3,40(sp)
   13226:	7a02                	c.ldsp	s4,32(sp)
   13228:	6ae2                	c.ldsp	s5,24(sp)
   1322a:	6ba2                	c.ldsp	s7,8(sp)
   1322c:	855a                	c.mv	a0,s6
   1322e:	6b42                	c.ldsp	s6,16(sp)
   13230:	6161                	c.addi16sp	sp,80
   13232:	8082                	c.jr	ra

0000000000013234 <_fwalk_reent>:
   13234:	715d                	c.addi16sp	sp,-80
   13236:	f84a                	c.sdsp	s2,48(sp)
   13238:	f44e                	c.sdsp	s3,40(sp)
   1323a:	f052                	c.sdsp	s4,32(sp)
   1323c:	ec56                	c.sdsp	s5,24(sp)
   1323e:	e85a                	c.sdsp	s6,16(sp)
   13240:	e45e                	c.sdsp	s7,8(sp)
   13242:	e062                	c.sdsp	s8,0(sp)
   13244:	e486                	c.sdsp	ra,72(sp)
   13246:	e0a2                	c.sdsp	s0,64(sp)
   13248:	fc26                	c.sdsp	s1,56(sp)
   1324a:	8c2a                	c.mv	s8,a0
   1324c:	8a2e                	c.mv	s4,a1
   1324e:	52050913          	addi	s2,a0,1312
   13252:	4b01                	c.li	s6,0
   13254:	0b000a93          	addi	s5,zero,176
   13258:	4b85                	c.li	s7,1
   1325a:	59fd                	c.li	s3,-1
   1325c:	00892783          	lw	a5,8(s2)
   13260:	01093403          	ld	s0,16(s2)
   13264:	02f05c63          	bge	zero,a5,1329c <_fwalk_reent+0x68>
   13268:	fff7849b          	addiw	s1,a5,-1
   1326c:	1482                	c.slli	s1,0x20
   1326e:	9081                	c.srli	s1,0x20
   13270:	0485                	c.addi	s1,1
   13272:	035484b3          	mul	s1,s1,s5
   13276:	94a2                	c.add	s1,s0
   13278:	01045783          	lhu	a5,16(s0)
   1327c:	00fbfc63          	bgeu	s7,a5,13294 <_fwalk_reent+0x60>
   13280:	01241783          	lh	a5,18(s0)
   13284:	85a2                	c.mv	a1,s0
   13286:	8562                	c.mv	a0,s8
   13288:	01378663          	beq	a5,s3,13294 <_fwalk_reent+0x60>
   1328c:	9a02                	c.jalr	s4
   1328e:	01656b33          	or	s6,a0,s6
   13292:	2b01                	c.addiw	s6,0
   13294:	0b040413          	addi	s0,s0,176
   13298:	fe8490e3          	bne	s1,s0,13278 <_fwalk_reent+0x44>
   1329c:	00093903          	ld	s2,0(s2)
   132a0:	fa091ee3          	bne	s2,zero,1325c <_fwalk_reent+0x28>
   132a4:	60a6                	c.ldsp	ra,72(sp)
   132a6:	6406                	c.ldsp	s0,64(sp)
   132a8:	74e2                	c.ldsp	s1,56(sp)
   132aa:	7942                	c.ldsp	s2,48(sp)
   132ac:	79a2                	c.ldsp	s3,40(sp)
   132ae:	7a02                	c.ldsp	s4,32(sp)
   132b0:	6ae2                	c.ldsp	s5,24(sp)
   132b2:	6ba2                	c.ldsp	s7,8(sp)
   132b4:	6c02                	c.ldsp	s8,0(sp)
   132b6:	855a                	c.mv	a0,s6
   132b8:	6b42                	c.ldsp	s6,16(sp)
   132ba:	6161                	c.addi16sp	sp,80
   132bc:	8082                	c.jr	ra

00000000000132be <eshdn1>:
   132be:	00450693          	addi	a3,a0,4
   132c2:	4781                	c.li	a5,0
   132c4:	0569                	c.addi	a0,26
   132c6:	7861                	c.lui	a6,0xffff8
   132c8:	a811                	c.j	132dc <eshdn1+0x1e>
   132ca:	0017979b          	slliw	a5,a5,0x1
   132ce:	00e69023          	sh	a4,0(a3)
   132d2:	17c2                	c.slli	a5,0x30
   132d4:	0689                	c.addi	a3,2
   132d6:	93c1                	c.srli	a5,0x30
   132d8:	02d50863          	beq	a0,a3,13308 <eshdn1+0x4a>
   132dc:	0006d703          	lhu	a4,0(a3)
   132e0:	00177613          	andi	a2,a4,1
   132e4:	c219                	c.beqz	a2,132ea <eshdn1+0x2c>
   132e6:	0017e793          	ori	a5,a5,1
   132ea:	8305                	c.srli	a4,0x1
   132ec:	0027f613          	andi	a2,a5,2
   132f0:	010765b3          	or	a1,a4,a6
   132f4:	da79                	c.beqz	a2,132ca <eshdn1+0xc>
   132f6:	0017979b          	slliw	a5,a5,0x1
   132fa:	00b69023          	sh	a1,0(a3)
   132fe:	17c2                	c.slli	a5,0x30
   13300:	0689                	c.addi	a3,2
   13302:	93c1                	c.srli	a5,0x30
   13304:	fcd51ce3          	bne	a0,a3,132dc <eshdn1+0x1e>
   13308:	8082                	c.jr	ra

000000000001330a <eshup1>:
   1330a:	01850693          	addi	a3,a0,24
   1330e:	4701                	c.li	a4,0
   13310:	0509                	c.addi	a0,2
   13312:	a811                	c.j	13326 <eshup1+0x1c>
   13314:	0017171b          	slliw	a4,a4,0x1
   13318:	00f69023          	sh	a5,0(a3)
   1331c:	1742                	c.slli	a4,0x30
   1331e:	16f9                	c.addi	a3,-2
   13320:	9341                	c.srli	a4,0x30
   13322:	02d50b63          	beq	a0,a3,13358 <eshup1+0x4e>
   13326:	0006d783          	lhu	a5,0(a3)
   1332a:	00f7d613          	srli	a2,a5,0xf
   1332e:	0017979b          	slliw	a5,a5,0x1
   13332:	c219                	c.beqz	a2,13338 <eshup1+0x2e>
   13334:	00176713          	ori	a4,a4,1
   13338:	17c2                	c.slli	a5,0x30
   1333a:	93c1                	c.srli	a5,0x30
   1333c:	00277613          	andi	a2,a4,2
   13340:	0017e593          	ori	a1,a5,1
   13344:	da61                	c.beqz	a2,13314 <eshup1+0xa>
   13346:	0017171b          	slliw	a4,a4,0x1
   1334a:	00b69023          	sh	a1,0(a3)
   1334e:	1742                	c.slli	a4,0x30
   13350:	16f9                	c.addi	a3,-2
   13352:	9341                	c.srli	a4,0x30
   13354:	fcd519e3          	bne	a0,a3,13326 <eshup1+0x1c>
   13358:	8082                	c.jr	ra

000000000001335a <m16m>:
   1335a:	1101                	c.addi	sp,-32
   1335c:	6e41                	c.lui	t3,0x10
   1335e:	00011b23          	sh	zero,22(sp)
   13362:	00011c23          	sh	zero,24(sp)
   13366:	05e1                	c.addi	a1,24
   13368:	083c                	c.addi4spn	a5,sp,24
   1336a:	00410813          	addi	a6,sp,4
   1336e:	1e7d                	c.addi	t3,-1
   13370:	0005d703          	lhu	a4,0(a1)
   13374:	17f9                	c.addi	a5,-2
   13376:	15f9                	c.addi	a1,-2
   13378:	e315                	c.bnez	a4,1339c <m16m+0x42>
   1337a:	fe079f23          	sh	zero,-2(a5)
   1337e:	ff0799e3          	bne	a5,a6,13370 <m16m+0x16>
   13382:	0611                	c.addi	a2,4
   13384:	01a10693          	addi	a3,sp,26
   13388:	0007d703          	lhu	a4,0(a5)
   1338c:	0789                	c.addi	a5,2
   1338e:	0609                	c.addi	a2,2
   13390:	fee61f23          	sh	a4,-2(a2)
   13394:	fed79ae3          	bne	a5,a3,13388 <m16m+0x2e>
   13398:	6105                	c.addi16sp	sp,32
   1339a:	8082                	c.jr	ra
   1339c:	02a70733          	mul	a4,a4,a0
   133a0:	0027d883          	lhu	a7,2(a5)
   133a4:	0007d303          	lhu	t1,0(a5)
   133a8:	01c776b3          	and	a3,a4,t3
   133ac:	96c6                	c.add	a3,a7
   133ae:	8341                	c.srli	a4,0x10
   133b0:	0106d893          	srli	a7,a3,0x10
   133b4:	971a                	c.add	a4,t1
   133b6:	9746                	c.add	a4,a7
   133b8:	01075893          	srli	a7,a4,0x10
   133bc:	00d79123          	sh	a3,2(a5)
   133c0:	00e79023          	sh	a4,0(a5)
   133c4:	ff179f23          	sh	a7,-2(a5)
   133c8:	fb0794e3          	bne	a5,a6,13370 <m16m+0x16>
   133cc:	bf5d                	c.j	13382 <m16m+0x28>

00000000000133ce <emovo.constprop.0>:
   133ce:	00055703          	lhu	a4,0(a0)
   133d2:	00255783          	lhu	a5,2(a0)
   133d6:	c319                	c.beqz	a4,133dc <emovo.constprop.0+0xe>
   133d8:	6721                	c.lui	a4,0x8
   133da:	8fd9                	c.or	a5,a4
   133dc:	00f59923          	sh	a5,18(a1)
   133e0:	00255703          	lhu	a4,2(a0)
   133e4:	67a1                	c.lui	a5,0x8
   133e6:	17fd                	c.addi	a5,-1
   133e8:	00f70f63          	beq	a4,a5,13406 <emovo.constprop.0+0x38>
   133ec:	00650793          	addi	a5,a0,6
   133f0:	05c1                	c.addi	a1,16
   133f2:	0561                	c.addi	a0,24
   133f4:	0007d703          	lhu	a4,0(a5) # 8000 <register_fini-0x80b0>
   133f8:	0789                	c.addi	a5,2
   133fa:	15f9                	c.addi	a1,-2
   133fc:	00e59123          	sh	a4,2(a1)
   13400:	fea79ae3          	bne	a5,a0,133f4 <emovo.constprop.0+0x26>
   13404:	8082                	c.jr	ra
   13406:	00650793          	addi	a5,a0,6
   1340a:	0569                	c.addi	a0,26
   1340c:	0007d703          	lhu	a4,0(a5)
   13410:	0789                	c.addi	a5,2
   13412:	e31d                	c.bnez	a4,13438 <emovo.constprop.0+0x6a>
   13414:	fea79ce3          	bne	a5,a0,1340c <emovo.constprop.0+0x3e>
   13418:	01258713          	addi	a4,a1,18
   1341c:	87ae                	c.mv	a5,a1
   1341e:	0789                	c.addi	a5,2
   13420:	fe079f23          	sh	zero,-2(a5)
   13424:	fef71de3          	bne	a4,a5,1341e <emovo.constprop.0+0x50>
   13428:	0125d783          	lhu	a5,18(a1)
   1342c:	6721                	c.lui	a4,0x8
   1342e:	177d                	c.addi	a4,-1
   13430:	8fd9                	c.or	a5,a4
   13432:	00f59923          	sh	a5,18(a1)
   13436:	8082                	c.jr	ra
   13438:	01058713          	addi	a4,a1,16
   1343c:	87ae                	c.mv	a5,a1
   1343e:	0789                	c.addi	a5,2
   13440:	fe079f23          	sh	zero,-2(a5)
   13444:	fef71de3          	bne	a4,a5,1343e <emovo.constprop.0+0x70>
   13448:	77f1                	c.lui	a5,0xffffc
   1344a:	00f59823          	sh	a5,16(a1)
   1344e:	77e1                	c.lui	a5,0xffff8
   13450:	fff7c793          	xori	a5,a5,-1
   13454:	00f59923          	sh	a5,18(a1)
   13458:	8082                	c.jr	ra

000000000001345a <enormlz>:
   1345a:	00455783          	lhu	a5,4(a0)
   1345e:	1101                	c.addi	sp,-32
   13460:	e426                	c.sdsp	s1,8(sp)
   13462:	ec06                	c.sdsp	ra,24(sp)
   13464:	e822                	c.sdsp	s0,16(sp)
   13466:	e04a                	c.sdsp	s2,0(sp)
   13468:	84aa                	c.mv	s1,a0
   1346a:	efd9                	c.bnez	a5,13508 <enormlz+0xae>
   1346c:	00655703          	lhu	a4,6(a0)
   13470:	4401                	c.li	s0,0
   13472:	00f75793          	srli	a5,a4,0xf
   13476:	e3d1                	c.bnez	a5,134fa <enormlz+0xa0>
   13478:	01a50693          	addi	a3,a0,26
   1347c:	0a000613          	addi	a2,zero,160
   13480:	e31d                	c.bnez	a4,134a6 <enormlz+0x4c>
   13482:	00648793          	addi	a5,s1,6
   13486:	a019                	c.j	1348c <enormlz+0x32>
   13488:	0007d703          	lhu	a4,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd7c80>
   1348c:	0789                	c.addi	a5,2
   1348e:	fee79e23          	sh	a4,-4(a5)
   13492:	fed79be3          	bne	a5,a3,13488 <enormlz+0x2e>
   13496:	00049c23          	sh	zero,24(s1)
   1349a:	2441                	c.addiw	s0,16
   1349c:	04c40f63          	beq	s0,a2,134fa <enormlz+0xa0>
   134a0:	0064d703          	lhu	a4,6(s1)
   134a4:	df79                	c.beqz	a4,13482 <enormlz+0x28>
   134a6:	f0077793          	andi	a5,a4,-256
   134aa:	eb8d                	c.bnez	a5,134dc <enormlz+0x82>
   134ac:	01848513          	addi	a0,s1,24
   134b0:	00248593          	addi	a1,s1,2
   134b4:	4781                	c.li	a5,0
   134b6:	872a                	c.mv	a4,a0
   134b8:	00075683          	lhu	a3,0(a4) # 8000 <register_fini-0x80b0>
   134bc:	1779                	c.addi	a4,-2
   134be:	0086961b          	slliw	a2,a3,0x8
   134c2:	8fd1                	c.or	a5,a2
   134c4:	00f71123          	sh	a5,2(a4)
   134c8:	0086d793          	srli	a5,a3,0x8
   134cc:	fee596e3          	bne	a1,a4,134b8 <enormlz+0x5e>
   134d0:	0064d703          	lhu	a4,6(s1)
   134d4:	2421                	c.addiw	s0,8
   134d6:	f0077793          	andi	a5,a4,-256
   134da:	dfe9                	c.beqz	a5,134b4 <enormlz+0x5a>
   134dc:	0a000913          	addi	s2,zero,160
   134e0:	a811                	c.j	134f4 <enormlz+0x9a>
   134e2:	2405                	c.addiw	s0,1
   134e4:	00000097          	auipc	ra,0x0
   134e8:	e26080e7          	jalr	ra,-474(ra) # 1330a <eshup1>
   134ec:	00894763          	blt	s2,s0,134fa <enormlz+0xa0>
   134f0:	0064d703          	lhu	a4,6(s1)
   134f4:	833d                	c.srli	a4,0xf
   134f6:	8526                	c.mv	a0,s1
   134f8:	d76d                	c.beqz	a4,134e2 <enormlz+0x88>
   134fa:	60e2                	c.ldsp	ra,24(sp)
   134fc:	8522                	c.mv	a0,s0
   134fe:	6442                	c.ldsp	s0,16(sp)
   13500:	64a2                	c.ldsp	s1,8(sp)
   13502:	6902                	c.ldsp	s2,0(sp)
   13504:	6105                	c.addi16sp	sp,32
   13506:	8082                	c.jr	ra
   13508:	f007f713          	andi	a4,a5,-256
   1350c:	4401                	c.li	s0,0
   1350e:	e715                	c.bnez	a4,1353a <enormlz+0xe0>
   13510:	f6f00913          	addi	s2,zero,-145
   13514:	a811                	c.j	13528 <enormlz+0xce>
   13516:	347d                	c.addiw	s0,-1
   13518:	00000097          	auipc	ra,0x0
   1351c:	da6080e7          	jalr	ra,-602(ra) # 132be <eshdn1>
   13520:	fd240de3          	beq	s0,s2,134fa <enormlz+0xa0>
   13524:	0044d783          	lhu	a5,4(s1)
   13528:	8526                	c.mv	a0,s1
   1352a:	f7f5                	c.bnez	a5,13516 <enormlz+0xbc>
   1352c:	60e2                	c.ldsp	ra,24(sp)
   1352e:	8522                	c.mv	a0,s0
   13530:	6442                	c.ldsp	s0,16(sp)
   13532:	64a2                	c.ldsp	s1,8(sp)
   13534:	6902                	c.ldsp	s2,0(sp)
   13536:	6105                	c.addi16sp	sp,32
   13538:	8082                	c.jr	ra
   1353a:	00450693          	addi	a3,a0,4
   1353e:	01a50593          	addi	a1,a0,26
   13542:	4701                	c.li	a4,0
   13544:	a019                	c.j	1354a <enormlz+0xf0>
   13546:	0006d783          	lhu	a5,0(a3)
   1354a:	0087d61b          	srliw	a2,a5,0x8
   1354e:	8f51                	c.or	a4,a2
   13550:	0087979b          	slliw	a5,a5,0x8
   13554:	00e69023          	sh	a4,0(a3)
   13558:	03079713          	slli	a4,a5,0x30
   1355c:	0689                	c.addi	a3,2
   1355e:	9341                	c.srli	a4,0x30
   13560:	fed593e3          	bne	a1,a3,13546 <enormlz+0xec>
   13564:	0044d783          	lhu	a5,4(s1)
   13568:	5461                	c.li	s0,-8
   1356a:	b75d                	c.j	13510 <enormlz+0xb6>

000000000001356c <eshift.part.0>:
   1356c:	7179                	c.addi16sp	sp,-48
   1356e:	f022                	c.sdsp	s0,32(sp)
   13570:	ec26                	c.sdsp	s1,24(sp)
   13572:	f406                	c.sdsp	ra,40(sp)
   13574:	e84a                	c.sdsp	s2,16(sp)
   13576:	e44e                	c.sdsp	s3,8(sp)
   13578:	84ae                	c.mv	s1,a1
   1357a:	842a                	c.mv	s0,a0
   1357c:	0605cd63          	blt	a1,zero,135f6 <eshift.part.0+0x8a>
   13580:	47bd                	c.li	a5,15
   13582:	862e                	c.mv	a2,a1
   13584:	0511                	c.addi	a0,4
   13586:	01840693          	addi	a3,s0,24
   1358a:	45bd                	c.li	a1,15
   1358c:	0297d063          	bge	a5,s1,135ac <eshift.part.0+0x40>
   13590:	87aa                	c.mv	a5,a0
   13592:	0027d703          	lhu	a4,2(a5)
   13596:	0789                	c.addi	a5,2
   13598:	fee79f23          	sh	a4,-2(a5)
   1359c:	fef69be3          	bne	a3,a5,13592 <eshift.part.0+0x26>
   135a0:	00041c23          	sh	zero,24(s0)
   135a4:	3641                	c.addiw	a2,-16
   135a6:	fec5c5e3          	blt	a1,a2,13590 <eshift.part.0+0x24>
   135aa:	88bd                	c.andi	s1,15
   135ac:	479d                	c.li	a5,7
   135ae:	0297d463          	bge	a5,s1,135d6 <eshift.part.0+0x6a>
   135b2:	01840713          	addi	a4,s0,24
   135b6:	00240593          	addi	a1,s0,2
   135ba:	4781                	c.li	a5,0
   135bc:	00075683          	lhu	a3,0(a4)
   135c0:	1779                	c.addi	a4,-2
   135c2:	0086961b          	slliw	a2,a3,0x8
   135c6:	8fd1                	c.or	a5,a2
   135c8:	00f71123          	sh	a5,2(a4)
   135cc:	0086d793          	srli	a5,a3,0x8
   135d0:	fee596e3          	bne	a1,a4,135bc <eshift.part.0+0x50>
   135d4:	34e1                	c.addiw	s1,-8
   135d6:	c881                	c.beqz	s1,135e6 <eshift.part.0+0x7a>
   135d8:	34fd                	c.addiw	s1,-1
   135da:	8522                	c.mv	a0,s0
   135dc:	00000097          	auipc	ra,0x0
   135e0:	d2e080e7          	jalr	ra,-722(ra) # 1330a <eshup1>
   135e4:	f8f5                	c.bnez	s1,135d8 <eshift.part.0+0x6c>
   135e6:	4501                	c.li	a0,0
   135e8:	70a2                	c.ldsp	ra,40(sp)
   135ea:	7402                	c.ldsp	s0,32(sp)
   135ec:	64e2                	c.ldsp	s1,24(sp)
   135ee:	6942                	c.ldsp	s2,16(sp)
   135f0:	69a2                	c.ldsp	s3,8(sp)
   135f2:	6145                	c.addi16sp	sp,48
   135f4:	8082                	c.jr	ra
   135f6:	57c5                	c.li	a5,-15
   135f8:	40b0093b          	subw	s2,zero,a1
   135fc:	0ef5d963          	bge	a1,a5,136ee <eshift.part.0+0x182>
   13600:	01850593          	addi	a1,a0,24
   13604:	4981                	c.li	s3,0
   13606:	00450693          	addi	a3,a0,4
   1360a:	463d                	c.li	a2,15
   1360c:	01845703          	lhu	a4,24(s0)
   13610:	87ae                	c.mv	a5,a1
   13612:	00e9e9b3          	or	s3,s3,a4
   13616:	ffe7d703          	lhu	a4,-2(a5)
   1361a:	17f9                	c.addi	a5,-2
   1361c:	00e79123          	sh	a4,2(a5)
   13620:	fed79be3          	bne	a5,a3,13616 <eshift.part.0+0xaa>
   13624:	00041223          	sh	zero,4(s0)
   13628:	3941                	c.addiw	s2,-16
   1362a:	ff2641e3          	blt	a2,s2,1360c <eshift.part.0+0xa0>
   1362e:	5941                	c.li	s2,-16
   13630:	5745                	c.li	a4,-15
   13632:	4099093b          	subw	s2,s2,s1
   13636:	4781                	c.li	a5,0
   13638:	08e4c463          	blt	s1,a4,136c0 <eshift.part.0+0x154>
   1363c:	00f9093b          	addw	s2,s2,a5
   13640:	479d                	c.li	a5,7
   13642:	0527c063          	blt	a5,s2,13682 <eshift.part.0+0x116>
   13646:	08090c63          	beq	s2,zero,136de <eshift.part.0+0x172>
   1364a:	01845783          	lhu	a5,24(s0)
   1364e:	397d                	c.addiw	s2,-1
   13650:	8522                	c.mv	a0,s0
   13652:	8b85                	c.andi	a5,1
   13654:	0137e9b3          	or	s3,a5,s3
   13658:	00000097          	auipc	ra,0x0
   1365c:	c66080e7          	jalr	ra,-922(ra) # 132be <eshdn1>
   13660:	fe0915e3          	bne	s2,zero,1364a <eshift.part.0+0xde>
   13664:	0109979b          	slliw	a5,s3,0x10
   13668:	4107d79b          	sraiw	a5,a5,0x10
   1366c:	e7a5                	c.bnez	a5,136d4 <eshift.part.0+0x168>
   1366e:	03099513          	slli	a0,s3,0x30
   13672:	9141                	c.srli	a0,0x30
   13674:	70a2                	c.ldsp	ra,40(sp)
   13676:	7402                	c.ldsp	s0,32(sp)
   13678:	64e2                	c.ldsp	s1,24(sp)
   1367a:	6942                	c.ldsp	s2,16(sp)
   1367c:	69a2                	c.ldsp	s3,8(sp)
   1367e:	6145                	c.addi16sp	sp,48
   13680:	8082                	c.jr	ra
   13682:	0109999b          	slliw	s3,s3,0x10
   13686:	4109d99b          	sraiw	s3,s3,0x10
   1368a:	01844783          	lbu	a5,24(s0)
   1368e:	01a40593          	addi	a1,s0,26
   13692:	00f9e9b3          	or	s3,s3,a5
   13696:	19c2                	c.slli	s3,0x30
   13698:	0309d993          	srli	s3,s3,0x30
   1369c:	4781                	c.li	a5,0
   1369e:	0006d703          	lhu	a4,0(a3)
   136a2:	0689                	c.addi	a3,2
   136a4:	0087561b          	srliw	a2,a4,0x8
   136a8:	8fd1                	c.or	a5,a2
   136aa:	0087171b          	slliw	a4,a4,0x8
   136ae:	fef69f23          	sh	a5,-2(a3)
   136b2:	03071793          	slli	a5,a4,0x30
   136b6:	93c1                	c.srli	a5,0x30
   136b8:	fed593e3          	bne	a1,a3,1369e <eshift.part.0+0x132>
   136bc:	3961                	c.addiw	s2,-8
   136be:	b761                	c.j	13646 <eshift.part.0+0xda>
   136c0:	ff097793          	andi	a5,s2,-16
   136c4:	40f007bb          	subw	a5,zero,a5
   136c8:	00f9093b          	addw	s2,s2,a5
   136cc:	479d                	c.li	a5,7
   136ce:	f727dce3          	bge	a5,s2,13646 <eshift.part.0+0xda>
   136d2:	bf45                	c.j	13682 <eshift.part.0+0x116>
   136d4:	4985                	c.li	s3,1
   136d6:	03099513          	slli	a0,s3,0x30
   136da:	9141                	c.srli	a0,0x30
   136dc:	bf61                	c.j	13674 <eshift.part.0+0x108>
   136de:	854e                	c.mv	a0,s3
   136e0:	00099563          	bne	s3,zero,136ea <eshift.part.0+0x17e>
   136e4:	1542                	c.slli	a0,0x30
   136e6:	9141                	c.srli	a0,0x30
   136e8:	b701                	c.j	135e8 <eshift.part.0+0x7c>
   136ea:	4505                	c.li	a0,1
   136ec:	bfe5                	c.j	136e4 <eshift.part.0+0x178>
   136ee:	57e5                	c.li	a5,-7
   136f0:	4981                	c.li	s3,0
   136f2:	00450693          	addi	a3,a0,4
   136f6:	f8f5cae3          	blt	a1,a5,1368a <eshift.part.0+0x11e>
   136fa:	bf81                	c.j	1364a <eshift.part.0+0xde>

00000000000136fc <emovi>:
   136fc:	01255783          	lhu	a5,18(a0)
   13700:	6621                	c.lui	a2,0x8
   13702:	167d                	c.addi	a2,-1
   13704:	00f7d79b          	srliw	a5,a5,0xf
   13708:	40f007bb          	subw	a5,zero,a5
   1370c:	00f59023          	sh	a5,0(a1)
   13710:	01255683          	lhu	a3,18(a0)
   13714:	01050793          	addi	a5,a0,16
   13718:	00458713          	addi	a4,a1,4
   1371c:	8ef1                	c.and	a3,a2
   1371e:	00d59123          	sh	a3,2(a1)
   13722:	0006881b          	addiw	a6,a3,0
   13726:	02c68263          	beq	a3,a2,1374a <emovi+0x4e>
   1372a:	00658713          	addi	a4,a1,6
   1372e:	00059223          	sh	zero,4(a1)
   13732:	1579                	c.addi	a0,-2
   13734:	0007d683          	lhu	a3,0(a5)
   13738:	17f9                	c.addi	a5,-2
   1373a:	0709                	c.addi	a4,2
   1373c:	fed71f23          	sh	a3,-2(a4)
   13740:	fef51ae3          	bne	a0,a5,13734 <emovi+0x38>
   13744:	00059c23          	sh	zero,24(a1)
   13748:	8082                	c.jr	ra
   1374a:	01255683          	lhu	a3,18(a0)
   1374e:	00d876b3          	and	a3,a6,a3
   13752:	01069b63          	bne	a3,a6,13768 <emovi+0x6c>
   13756:	01250813          	addi	a6,a0,18
   1375a:	86aa                	c.mv	a3,a0
   1375c:	0006d603          	lhu	a2,0(a3)
   13760:	0689                	c.addi	a3,2
   13762:	ea11                	c.bnez	a2,13776 <emovi+0x7a>
   13764:	ff069ce3          	bne	a3,a6,1375c <emovi+0x60>
   13768:	05e9                	c.addi	a1,26
   1376a:	0709                	c.addi	a4,2
   1376c:	fe071f23          	sh	zero,-2(a4)
   13770:	fee59de3          	bne	a1,a4,1376a <emovi+0x6e>
   13774:	8082                	c.jr	ra
   13776:	00658713          	addi	a4,a1,6
   1377a:	00059223          	sh	zero,4(a1)
   1377e:	1571                	c.addi	a0,-4
   13780:	0007d683          	lhu	a3,0(a5)
   13784:	17f9                	c.addi	a5,-2
   13786:	0709                	c.addi	a4,2
   13788:	fed71f23          	sh	a3,-2(a4)
   1378c:	fea79ae3          	bne	a5,a0,13780 <emovi+0x84>
   13790:	8082                	c.jr	ra

0000000000013792 <ecmp>:
   13792:	01255783          	lhu	a5,18(a0)
   13796:	715d                	c.addi16sp	sp,-80
   13798:	e0a2                	c.sdsp	s0,64(sp)
   1379a:	fff7c793          	xori	a5,a5,-1
   1379e:	e486                	c.sdsp	ra,72(sp)
   137a0:	03179713          	slli	a4,a5,0x31
   137a4:	842e                	c.mv	s0,a1
   137a6:	eb11                	c.bnez	a4,137ba <ecmp+0x28>
   137a8:	01250693          	addi	a3,a0,18
   137ac:	87aa                	c.mv	a5,a0
   137ae:	0007d703          	lhu	a4,0(a5)
   137b2:	0789                	c.addi	a5,2
   137b4:	ef25                	c.bnez	a4,1382c <ecmp+0x9a>
   137b6:	fed79ce3          	bne	a5,a3,137ae <ecmp+0x1c>
   137ba:	01245783          	lhu	a5,18(s0)
   137be:	fff7c793          	xori	a5,a5,-1
   137c2:	03179713          	slli	a4,a5,0x31
   137c6:	c731                	c.beqz	a4,13812 <ecmp+0x80>
   137c8:	858a                	c.mv	a1,sp
   137ca:	00000097          	auipc	ra,0x0
   137ce:	f32080e7          	jalr	ra,-206(ra) # 136fc <emovi>
   137d2:	100c                	c.addi4spn	a1,sp,32
   137d4:	8522                	c.mv	a0,s0
   137d6:	00000097          	auipc	ra,0x0
   137da:	f26080e7          	jalr	ra,-218(ra) # 136fc <emovi>
   137de:	00015583          	lhu	a1,0(sp)
   137e2:	02015783          	lhu	a5,32(sp)
   137e6:	04b78863          	beq	a5,a1,13836 <ecmp+0xa4>
   137ea:	00210793          	addi	a5,sp,2
   137ee:	02210713          	addi	a4,sp,34
   137f2:	0830                	c.addi4spn	a2,sp,24
   137f4:	0007d683          	lhu	a3,0(a5)
   137f8:	0789                	c.addi	a5,2
   137fa:	eea5                	c.bnez	a3,13872 <ecmp+0xe0>
   137fc:	00075683          	lhu	a3,0(a4)
   13800:	0709                	c.addi	a4,2
   13802:	eaa5                	c.bnez	a3,13872 <ecmp+0xe0>
   13804:	fef618e3          	bne	a2,a5,137f4 <ecmp+0x62>
   13808:	4501                	c.li	a0,0
   1380a:	60a6                	c.ldsp	ra,72(sp)
   1380c:	6406                	c.ldsp	s0,64(sp)
   1380e:	6161                	c.addi16sp	sp,80
   13810:	8082                	c.jr	ra
   13812:	87a2                	c.mv	a5,s0
   13814:	0007d703          	lhu	a4,0(a5)
   13818:	01240693          	addi	a3,s0,18
   1381c:	0789                	c.addi	a5,2
   1381e:	e719                	c.bnez	a4,1382c <ecmp+0x9a>
   13820:	fad784e3          	beq	a5,a3,137c8 <ecmp+0x36>
   13824:	0007d703          	lhu	a4,0(a5)
   13828:	0789                	c.addi	a5,2
   1382a:	db7d                	c.beqz	a4,13820 <ecmp+0x8e>
   1382c:	60a6                	c.ldsp	ra,72(sp)
   1382e:	6406                	c.ldsp	s0,64(sp)
   13830:	5579                	c.li	a0,-2
   13832:	6161                	c.addi16sp	sp,80
   13834:	8082                	c.jr	ra
   13836:	4505                	c.li	a0,1
   13838:	e1a9                	c.bnez	a1,1387a <ecmp+0xe8>
   1383a:	00215603          	lhu	a2,2(sp)
   1383e:	02215683          	lhu	a3,34(sp)
   13842:	00210713          	addi	a4,sp,2
   13846:	02210793          	addi	a5,sp,34
   1384a:	182c                	c.addi4spn	a1,sp,56
   1384c:	0789                	c.addi	a5,2
   1384e:	0709                	c.addi	a4,2
   13850:	00d61c63          	bne	a2,a3,13868 <ecmp+0xd6>
   13854:	fab78ae3          	beq	a5,a1,13808 <ecmp+0x76>
   13858:	00075603          	lhu	a2,0(a4)
   1385c:	0007d683          	lhu	a3,0(a5)
   13860:	0709                	c.addi	a4,2
   13862:	0789                	c.addi	a5,2
   13864:	fed608e3          	beq	a2,a3,13854 <ecmp+0xc2>
   13868:	fac6e1e3          	bltu	a3,a2,1380a <ecmp+0x78>
   1386c:	40a0053b          	subw	a0,zero,a0
   13870:	bf69                	c.j	1380a <ecmp+0x78>
   13872:	4505                	c.li	a0,1
   13874:	d9d9                	c.beqz	a1,1380a <ecmp+0x78>
   13876:	557d                	c.li	a0,-1
   13878:	bf49                	c.j	1380a <ecmp+0x78>
   1387a:	557d                	c.li	a0,-1
   1387c:	bf7d                	c.j	1383a <ecmp+0xa8>

000000000001387e <emdnorm>:
   1387e:	7139                	c.addi16sp	sp,-64
   13880:	f822                	c.sdsp	s0,48(sp)
   13882:	f426                	c.sdsp	s1,40(sp)
   13884:	f04a                	c.sdsp	s2,32(sp)
   13886:	ec4e                	c.sdsp	s3,24(sp)
   13888:	e852                	c.sdsp	s4,16(sp)
   1388a:	e456                	c.sdsp	s5,8(sp)
   1388c:	8936                	c.mv	s2,a3
   1388e:	84be                	c.mv	s1,a5
   13890:	fc06                	c.sdsp	ra,56(sp)
   13892:	842a                	c.mv	s0,a0
   13894:	89ae                	c.mv	s3,a1
   13896:	8a32                	c.mv	s4,a2
   13898:	8aba                	c.mv	s5,a4
   1389a:	00000097          	auipc	ra,0x0
   1389e:	bc0080e7          	jalr	ra,-1088(ra) # 1345a <enormlz>
   138a2:	09000793          	addi	a5,zero,144
   138a6:	40a90933          	sub	s2,s2,a0
   138aa:	14a7d563          	bge	a5,a0,139f4 <emdnorm+0x176>
   138ae:	67a1                	c.lui	a5,0x8
   138b0:	17f9                	c.addi	a5,-2
   138b2:	1b27d663          	bge	a5,s2,13a5e <emdnorm+0x1e0>
   138b6:	180a8463          	beq	s5,zero,13a3e <emdnorm+0x1c0>
   138ba:	40c8                	c.lw	a0,4(s1)
   138bc:	409c                	c.lw	a5,0(s1)
   138be:	04a78d63          	beq	a5,a0,13918 <emdnorm+0x9a>
   138c2:	01a48713          	addi	a4,s1,26
   138c6:	03448793          	addi	a5,s1,52
   138ca:	0709                	c.addi	a4,2
   138cc:	fe071f23          	sh	zero,-2(a4)
   138d0:	fef71de3          	bne	a4,a5,138ca <emdnorm+0x4c>
   138d4:	03800793          	addi	a5,zero,56
   138d8:	2af50363          	beq	a0,a5,13b7e <emdnorm+0x300>
   138dc:	12a7db63          	bge	a5,a0,13a12 <emdnorm+0x194>
   138e0:	04000793          	addi	a5,zero,64
   138e4:	26f50363          	beq	a0,a5,13b4a <emdnorm+0x2cc>
   138e8:	07100793          	addi	a5,zero,113
   138ec:	26f51c63          	bne	a0,a5,13b64 <emdnorm+0x2e6>
   138f0:	400087b7          	lui	a5,0x40008
   138f4:	17fd                	c.addi	a5,-1
   138f6:	4729                	c.li	a4,10
   138f8:	c8dc                	c.sw	a5,20(s1)
   138fa:	77e1                	c.lui	a5,0xffff8
   138fc:	c498                	c.sw	a4,8(s1)
   138fe:	00f49c23          	sh	a5,24(s1)
   13902:	c4d8                	c.sw	a4,12(s1)
   13904:	47a9                	c.li	a5,10
   13906:	6721                	c.lui	a4,0x8
   13908:	07a1                	c.addi	a5,8
   1390a:	0786                	c.slli	a5,0x1
   1390c:	97a6                	c.add	a5,s1
   1390e:	00e79523          	sh	a4,10(a5) # ffffffffffff800a <__BSS_END__+0xfffffffffffd7c8a>
   13912:	c088                	c.sw	a0,0(s1)
   13914:	17205d63          	bge	zero,s2,13a8e <emdnorm+0x210>
   13918:	4494                	c.lw	a3,8(s1)
   1391a:	0144d603          	lhu	a2,20(s1)
   1391e:	08f00713          	addi	a4,zero,143
   13922:	00169793          	slli	a5,a3,0x1
   13926:	00f40833          	add	a6,s0,a5
   1392a:	00085883          	lhu	a7,0(a6) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd7c80>
   1392e:	00c8f5b3          	and	a1,a7,a2
   13932:	02a74e63          	blt	a4,a0,1396e <emdnorm+0xf0>
   13936:	472d                	c.li	a4,11
   13938:	02d74b63          	blt	a4,a3,1396e <emdnorm+0xf0>
   1393c:	9f15                	c.subw	a4,a3
   1393e:	1702                	c.slli	a4,0x20
   13940:	9301                	c.srli	a4,0x20
   13942:	9736                	c.add	a4,a3
   13944:	00171693          	slli	a3,a4,0x1
   13948:	0789                	c.addi	a5,2
   1394a:	00440713          	addi	a4,s0,4
   1394e:	97a2                	c.add	a5,s0
   13950:	9736                	c.add	a4,a3
   13952:	0007d683          	lhu	a3,0(a5)
   13956:	c299                	c.beqz	a3,1395c <emdnorm+0xde>
   13958:	0015e593          	ori	a1,a1,1
   1395c:	00079023          	sh	zero,0(a5)
   13960:	0789                	c.addi	a5,2
   13962:	fef718e3          	bne	a4,a5,13952 <emdnorm+0xd4>
   13966:	00085883          	lhu	a7,0(a6)
   1396a:	0144d603          	lhu	a2,20(s1)
   1396e:	fff64613          	xori	a2,a2,-1
   13972:	01167633          	and	a2,a2,a7
   13976:	00c81023          	sh	a2,0(a6)
   1397a:	0164d783          	lhu	a5,22(s1)
   1397e:	00b7f733          	and	a4,a5,a1
   13982:	c339                	c.beqz	a4,139c8 <emdnorm+0x14a>
   13984:	00b79d63          	bne	a5,a1,1399e <emdnorm+0x120>
   13988:	18099e63          	bne	s3,zero,13b24 <emdnorm+0x2a6>
   1398c:	44dc                	c.lw	a5,12(s1)
   1398e:	0184d703          	lhu	a4,24(s1)
   13992:	0786                	c.slli	a5,0x1
   13994:	97a2                	c.add	a5,s0
   13996:	0007d783          	lhu	a5,0(a5)
   1399a:	8ff9                	c.and	a5,a4
   1399c:	c795                	c.beqz	a5,139c8 <emdnorm+0x14a>
   1399e:	03248613          	addi	a2,s1,50
   139a2:	01840693          	addi	a3,s0,24
   139a6:	04f1                	c.addi	s1,28
   139a8:	4701                	c.li	a4,0
   139aa:	00065783          	lhu	a5,0(a2) # 8000 <register_fini-0x80b0>
   139ae:	0006d583          	lhu	a1,0(a3)
   139b2:	16f9                	c.addi	a3,-2
   139b4:	1679                	c.addi	a2,-2
   139b6:	97ae                	c.add	a5,a1
   139b8:	97ba                	c.add	a5,a4
   139ba:	0107d713          	srli	a4,a5,0x10
   139be:	00f69123          	sh	a5,2(a3)
   139c2:	8b05                	c.andi	a4,1
   139c4:	fe9613e3          	bne	a2,s1,139aa <emdnorm+0x12c>
   139c8:	11205d63          	bge	zero,s2,13ae2 <emdnorm+0x264>
   139cc:	00445783          	lhu	a5,4(s0)
   139d0:	ebe5                	c.bnez	a5,13ac0 <emdnorm+0x242>
   139d2:	67a1                	c.lui	a5,0x8
   139d4:	00041c23          	sh	zero,24(s0)
   139d8:	17f9                	c.addi	a5,-2
   139da:	0727c463          	blt	a5,s2,13a42 <emdnorm+0x1c4>
   139de:	01241123          	sh	s2,2(s0)
   139e2:	70e2                	c.ldsp	ra,56(sp)
   139e4:	7442                	c.ldsp	s0,48(sp)
   139e6:	74a2                	c.ldsp	s1,40(sp)
   139e8:	7902                	c.ldsp	s2,32(sp)
   139ea:	69e2                	c.ldsp	s3,24(sp)
   139ec:	6a42                	c.ldsp	s4,16(sp)
   139ee:	6aa2                	c.ldsp	s5,8(sp)
   139f0:	6121                	c.addi16sp	sp,64
   139f2:	8082                	c.jr	ra
   139f4:	0a095d63          	bge	s2,zero,13aae <emdnorm+0x230>
   139f8:	f7000793          	addi	a5,zero,-144
   139fc:	06f95a63          	bge	s2,a5,13a70 <emdnorm+0x1f2>
   13a00:	00240793          	addi	a5,s0,2
   13a04:	0469                	c.addi	s0,26
   13a06:	0789                	c.addi	a5,2
   13a08:	fe079f23          	sh	zero,-2(a5) # 7ffe <register_fini-0x80b2>
   13a0c:	fe879de3          	bne	a5,s0,13a06 <emdnorm+0x188>
   13a10:	bfc9                	c.j	139e2 <emdnorm+0x164>
   13a12:	47e1                	c.li	a5,24
   13a14:	10f50b63          	beq	a0,a5,13b2a <emdnorm+0x2ac>
   13a18:	03500793          	addi	a5,zero,53
   13a1c:	14f51463          	bne	a0,a5,13b64 <emdnorm+0x2e6>
   13a20:	6705                	c.lui	a4,0x1
   13a22:	040007b7          	lui	a5,0x4000
   13a26:	4699                	c.li	a3,6
   13a28:	7ff78793          	addi	a5,a5,2047 # 40007ff <__BSS_END__+0x3fe047f>
   13a2c:	80070713          	addi	a4,a4,-2048 # 800 <register_fini-0xf8b0>
   13a30:	c8dc                	c.sw	a5,20(s1)
   13a32:	c494                	c.sw	a3,8(s1)
   13a34:	00e49c23          	sh	a4,24(s1)
   13a38:	c4d4                	c.sw	a3,12(s1)
   13a3a:	4799                	c.li	a5,6
   13a3c:	b5f1                	c.j	13908 <emdnorm+0x8a>
   13a3e:	00041c23          	sh	zero,24(s0)
   13a42:	77e1                	c.lui	a5,0xffff8
   13a44:	fff7c793          	xori	a5,a5,-1
   13a48:	00f41123          	sh	a5,2(s0)
   13a4c:	00440793          	addi	a5,s0,4
   13a50:	0461                	c.addi	s0,24
   13a52:	00079023          	sh	zero,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd7c80>
   13a56:	0789                	c.addi	a5,2
   13a58:	fef41de3          	bne	s0,a5,13a52 <emdnorm+0x1d4>
   13a5c:	b759                	c.j	139e2 <emdnorm+0x164>
   13a5e:	00240793          	addi	a5,s0,2
   13a62:	0469                	c.addi	s0,26
   13a64:	0789                	c.addi	a5,2
   13a66:	fe079f23          	sh	zero,-2(a5)
   13a6a:	fe879de3          	bne	a5,s0,13a64 <emdnorm+0x1e6>
   13a6e:	bf95                	c.j	139e2 <emdnorm+0x164>
   13a70:	0009059b          	addiw	a1,s2,0
   13a74:	8522                	c.mv	a0,s0
   13a76:	00000097          	auipc	ra,0x0
   13a7a:	af6080e7          	jalr	ra,-1290(ra) # 1356c <eshift.part.0>
   13a7e:	c111                	c.beqz	a0,13a82 <emdnorm+0x204>
   13a80:	4985                	c.li	s3,1
   13a82:	080a8c63          	beq	s5,zero,13b1a <emdnorm+0x29c>
   13a86:	40c8                	c.lw	a0,4(s1)
   13a88:	409c                	c.lw	a5,0(s1)
   13a8a:	e2a79ce3          	bne	a5,a0,138c2 <emdnorm+0x44>
   13a8e:	09000793          	addi	a5,zero,144
   13a92:	06f50963          	beq	a0,a5,13b04 <emdnorm+0x286>
   13a96:	01845783          	lhu	a5,24(s0)
   13a9a:	8522                	c.mv	a0,s0
   13a9c:	8b85                	c.andi	a5,1
   13a9e:	0137e9b3          	or	s3,a5,s3
   13aa2:	00000097          	auipc	ra,0x0
   13aa6:	81c080e7          	jalr	ra,-2020(ra) # 132be <eshdn1>
   13aaa:	40c8                	c.lw	a0,4(s1)
   13aac:	b5b5                	c.j	13918 <emdnorm+0x9a>
   13aae:	f20a82e3          	beq	s5,zero,139d2 <emdnorm+0x154>
   13ab2:	40c8                	c.lw	a0,4(s1)
   13ab4:	409c                	c.lw	a5,0(s1)
   13ab6:	e0a796e3          	bne	a5,a0,138c2 <emdnorm+0x44>
   13aba:	e5204fe3          	blt	zero,s2,13918 <emdnorm+0x9a>
   13abe:	bfc1                	c.j	13a8e <emdnorm+0x210>
   13ac0:	8522                	c.mv	a0,s0
   13ac2:	fffff097          	auipc	ra,0xfffff
   13ac6:	7fc080e7          	jalr	ra,2044(ra) # 132be <eshdn1>
   13aca:	67a1                	c.lui	a5,0x8
   13acc:	0905                	c.addi	s2,1
   13ace:	00041c23          	sh	zero,24(s0)
   13ad2:	17f9                	c.addi	a5,-2
   13ad4:	f727c7e3          	blt	a5,s2,13a42 <emdnorm+0x1c4>
   13ad8:	f00953e3          	bge	s2,zero,139de <emdnorm+0x160>
   13adc:	00041123          	sh	zero,2(s0)
   13ae0:	b709                	c.j	139e2 <emdnorm+0x164>
   13ae2:	09000793          	addi	a5,zero,144
   13ae6:	00f50763          	beq	a0,a5,13af4 <emdnorm+0x276>
   13aea:	8522                	c.mv	a0,s0
   13aec:	00000097          	auipc	ra,0x0
   13af0:	81e080e7          	jalr	ra,-2018(ra) # 1330a <eshup1>
   13af4:	00445783          	lhu	a5,4(s0)
   13af8:	f7e1                	c.bnez	a5,13ac0 <emdnorm+0x242>
   13afa:	00041c23          	sh	zero,24(s0)
   13afe:	fc094fe3          	blt	s2,zero,13adc <emdnorm+0x25e>
   13b02:	bdf1                	c.j	139de <emdnorm+0x160>
   13b04:	0084a803          	lw	a6,8(s1)
   13b08:	0144d603          	lhu	a2,20(s1)
   13b0c:	0806                	c.slli	a6,0x1
   13b0e:	9822                	c.add	a6,s0
   13b10:	00085883          	lhu	a7,0(a6)
   13b14:	011675b3          	and	a1,a2,a7
   13b18:	bd99                	c.j	1396e <emdnorm+0xf0>
   13b1a:	00041c23          	sh	zero,24(s0)
   13b1e:	00041123          	sh	zero,2(s0)
   13b22:	b5c1                	c.j	139e2 <emdnorm+0x164>
   13b24:	e60a0de3          	beq	s4,zero,1399e <emdnorm+0x120>
   13b28:	b545                	c.j	139c8 <emdnorm+0x14a>
   13b2a:	008007b7          	lui	a5,0x800
   13b2e:	0ff78793          	addi	a5,a5,255 # 8000ff <__BSS_END__+0x7dfd7f>
   13b32:	4711                	c.li	a4,4
   13b34:	c8dc                	c.sw	a5,20(s1)
   13b36:	10000793          	addi	a5,zero,256
   13b3a:	c498                	c.sw	a4,8(s1)
   13b3c:	00f49c23          	sh	a5,24(s1)
   13b40:	c4d8                	c.sw	a4,12(s1)
   13b42:	4791                	c.li	a5,4
   13b44:	10000713          	addi	a4,zero,256
   13b48:	b3c1                	c.j	13908 <emdnorm+0x8a>
   13b4a:	479d                	c.li	a5,7
   13b4c:	c49c                	c.sw	a5,8(s1)
   13b4e:	800107b7          	lui	a5,0x80010
   13b52:	17fd                	c.addi	a5,-1
   13b54:	c8dc                	c.sw	a5,20(s1)
   13b56:	4785                	c.li	a5,1
   13b58:	00f49c23          	sh	a5,24(s1)
   13b5c:	4799                	c.li	a5,6
   13b5e:	c4dc                	c.sw	a5,12(s1)
   13b60:	4705                	c.li	a4,1
   13b62:	b35d                	c.j	13908 <emdnorm+0x8a>
   13b64:	47b1                	c.li	a5,12
   13b66:	c49c                	c.sw	a5,8(s1)
   13b68:	800107b7          	lui	a5,0x80010
   13b6c:	17fd                	c.addi	a5,-1
   13b6e:	c8dc                	c.sw	a5,20(s1)
   13b70:	4785                	c.li	a5,1
   13b72:	00f49c23          	sh	a5,24(s1)
   13b76:	47ad                	c.li	a5,11
   13b78:	c4dc                	c.sw	a5,12(s1)
   13b7a:	4705                	c.li	a4,1
   13b7c:	b371                	c.j	13908 <emdnorm+0x8a>
   13b7e:	008007b7          	lui	a5,0x800
   13b82:	0ff78793          	addi	a5,a5,255 # 8000ff <__BSS_END__+0x7dfd7f>
   13b86:	4719                	c.li	a4,6
   13b88:	c8dc                	c.sw	a5,20(s1)
   13b8a:	10000793          	addi	a5,zero,256
   13b8e:	c498                	c.sw	a4,8(s1)
   13b90:	00f49c23          	sh	a5,24(s1)
   13b94:	c4d8                	c.sw	a4,12(s1)
   13b96:	4799                	c.li	a5,6
   13b98:	10000713          	addi	a4,zero,256
   13b9c:	b3b5                	c.j	13908 <emdnorm+0x8a>

0000000000013b9e <eiremain>:
   13b9e:	711d                	c.addi16sp	sp,-96
   13ba0:	e0ca                	c.sdsp	s2,64(sp)
   13ba2:	fc4e                	c.sdsp	s3,56(sp)
   13ba4:	892e                	c.mv	s2,a1
   13ba6:	00255983          	lhu	s3,2(a0)
   13baa:	ec86                	c.sdsp	ra,88(sp)
   13bac:	e8a2                	c.sdsp	s0,80(sp)
   13bae:	e4a6                	c.sdsp	s1,72(sp)
   13bb0:	f852                	c.sdsp	s4,48(sp)
   13bb2:	84b2                	c.mv	s1,a2
   13bb4:	ec5e                	c.sdsp	s7,24(sp)
   13bb6:	f456                	c.sdsp	s5,40(sp)
   13bb8:	f05a                	c.sdsp	s6,32(sp)
   13bba:	e862                	c.sdsp	s8,16(sp)
   13bbc:	e466                	c.sdsp	s9,8(sp)
   13bbe:	e06a                	c.sdsp	s10,0(sp)
   13bc0:	8baa                	c.mv	s7,a0
   13bc2:	00000097          	auipc	ra,0x0
   13bc6:	898080e7          	jalr	ra,-1896(ra) # 1345a <enormlz>
   13bca:	00295403          	lhu	s0,2(s2)
   13bce:	87aa                	c.mv	a5,a0
   13bd0:	854a                	c.mv	a0,s2
   13bd2:	40f989b3          	sub	s3,s3,a5
   13bd6:	03448a13          	addi	s4,s1,52
   13bda:	00000097          	auipc	ra,0x0
   13bde:	880080e7          	jalr	ra,-1920(ra) # 1345a <enormlz>
   13be2:	8c09                	c.sub	s0,a0
   13be4:	04e48713          	addi	a4,s1,78
   13be8:	87d2                	c.mv	a5,s4
   13bea:	0789                	c.addi	a5,2
   13bec:	fe079f23          	sh	zero,-2(a5)
   13bf0:	fee79de3          	bne	a5,a4,13bea <eiremain+0x4c>
   13bf4:	07344e63          	blt	s0,s3,13c70 <eiremain+0xd2>
   13bf8:	004b8b13          	addi	s6,s7,4
   13bfc:	00490a93          	addi	s5,s2,4
   13c00:	01ab8c13          	addi	s8,s7,26
   13c04:	00290d13          	addi	s10,s2,2
   13c08:	8756                	c.mv	a4,s5
   13c0a:	87da                	c.mv	a5,s6
   13c0c:	0007d603          	lhu	a2,0(a5)
   13c10:	00075683          	lhu	a3,0(a4)
   13c14:	0789                	c.addi	a5,2
   13c16:	0709                	c.addi	a4,2
   13c18:	08d61363          	bne	a2,a3,13c9e <eiremain+0x100>
   13c1c:	ff8798e3          	bne	a5,s8,13c0c <eiremain+0x6e>
   13c20:	018b8613          	addi	a2,s7,24
   13c24:	01890713          	addi	a4,s2,24
   13c28:	4681                	c.li	a3,0
   13c2a:	00075783          	lhu	a5,0(a4)
   13c2e:	00065583          	lhu	a1,0(a2)
   13c32:	1779                	c.addi	a4,-2
   13c34:	8f95                	c.sub	a5,a3
   13c36:	8f8d                	c.sub	a5,a1
   13c38:	0107d693          	srli	a3,a5,0x10
   13c3c:	00f71123          	sh	a5,2(a4)
   13c40:	8a85                	c.andi	a3,1
   13c42:	1679                	c.addi	a2,-2
   13c44:	feed13e3          	bne	s10,a4,13c2a <eiremain+0x8c>
   13c48:	4c85                	c.li	s9,1
   13c4a:	8552                	c.mv	a0,s4
   13c4c:	fffff097          	auipc	ra,0xfffff
   13c50:	6be080e7          	jalr	ra,1726(ra) # 1330a <eshup1>
   13c54:	04c4d783          	lhu	a5,76(s1)
   13c58:	147d                	c.addi	s0,-1
   13c5a:	854a                	c.mv	a0,s2
   13c5c:	00fce7b3          	or	a5,s9,a5
   13c60:	04f49623          	sh	a5,76(s1)
   13c64:	fffff097          	auipc	ra,0xfffff
   13c68:	6a6080e7          	jalr	ra,1702(ra) # 1330a <eshup1>
   13c6c:	f9345ee3          	bge	s0,s3,13c08 <eiremain+0x6a>
   13c70:	86a2                	c.mv	a3,s0
   13c72:	6446                	c.ldsp	s0,80(sp)
   13c74:	60e6                	c.ldsp	ra,88(sp)
   13c76:	79e2                	c.ldsp	s3,56(sp)
   13c78:	7a42                	c.ldsp	s4,48(sp)
   13c7a:	7aa2                	c.ldsp	s5,40(sp)
   13c7c:	7b02                	c.ldsp	s6,32(sp)
   13c7e:	6be2                	c.ldsp	s7,24(sp)
   13c80:	6c42                	c.ldsp	s8,16(sp)
   13c82:	6ca2                	c.ldsp	s9,8(sp)
   13c84:	6d02                	c.ldsp	s10,0(sp)
   13c86:	87a6                	c.mv	a5,s1
   13c88:	854a                	c.mv	a0,s2
   13c8a:	64a6                	c.ldsp	s1,72(sp)
   13c8c:	6906                	c.ldsp	s2,64(sp)
   13c8e:	4701                	c.li	a4,0
   13c90:	4601                	c.li	a2,0
   13c92:	4581                	c.li	a1,0
   13c94:	6125                	c.addi16sp	sp,96
   13c96:	00000317          	auipc	t1,0x0
   13c9a:	be830067          	jalr	zero,-1048(t1) # 1387e <emdnorm>
   13c9e:	4c81                	c.li	s9,0
   13ca0:	fac6e5e3          	bltu	a3,a2,13c4a <eiremain+0xac>
   13ca4:	bfb5                	c.j	13c20 <eiremain+0x82>

0000000000013ca6 <emul>:
   13ca6:	7131                	c.addi16sp	sp,-192
   13ca8:	f526                	c.sdsp	s1,168(sp)
   13caa:	84aa                	c.mv	s1,a0
   13cac:	01255503          	lhu	a0,18(a0)
   13cb0:	6721                	c.lui	a4,0x8
   13cb2:	177d                	c.addi	a4,-1
   13cb4:	f922                	c.sdsp	s0,176(sp)
   13cb6:	f14a                	c.sdsp	s2,160(sp)
   13cb8:	e952                	c.sdsp	s4,144(sp)
   13cba:	fd06                	c.sdsp	ra,184(sp)
   13cbc:	ed4e                	c.sdsp	s3,152(sp)
   13cbe:	e556                	c.sdsp	s5,136(sp)
   13cc0:	e15a                	c.sdsp	s6,128(sp)
   13cc2:	fcde                	c.sdsp	s7,120(sp)
   13cc4:	f8e2                	c.sdsp	s8,112(sp)
   13cc6:	f4e6                	c.sdsp	s9,104(sp)
   13cc8:	8d79                	c.and	a0,a4
   13cca:	892e                	c.mv	s2,a1
   13ccc:	8432                	c.mv	s0,a2
   13cce:	8a36                	c.mv	s4,a3
   13cd0:	00e51c63          	bne	a0,a4,13ce8 <emul+0x42>
   13cd4:	01248993          	addi	s3,s1,18
   13cd8:	8726                	c.mv	a4,s1
   13cda:	00075603          	lhu	a2,0(a4) # 8000 <register_fini-0x80b0>
   13cde:	0709                	c.addi	a4,2
   13ce0:	14061063          	bne	a2,zero,13e20 <emul+0x17a>
   13ce4:	ff371be3          	bne	a4,s3,13cda <emul+0x34>
   13ce8:	01295603          	lhu	a2,18(s2)
   13cec:	67a1                	c.lui	a5,0x8
   13cee:	17fd                	c.addi	a5,-1
   13cf0:	00f675b3          	and	a1,a2,a5
   13cf4:	08f59d63          	bne	a1,a5,13d8e <emul+0xe8>
   13cf8:	01290693          	addi	a3,s2,18
   13cfc:	874a                	c.mv	a4,s2
   13cfe:	00075783          	lhu	a5,0(a4)
   13d02:	0709                	c.addi	a4,2
   13d04:	1a079e63          	bne	a5,zero,13ec0 <emul+0x21a>
   13d08:	fee69be3          	bne	a3,a4,13cfe <emul+0x58>
   13d0c:	67a1                	c.lui	a5,0x8
   13d0e:	17fd                	c.addi	a5,-1
   13d10:	08f50163          	beq	a0,a5,13d92 <emul+0xec>
   13d14:	87ca                	c.mv	a5,s2
   13d16:	0007d703          	lhu	a4,0(a5) # 8000 <register_fini-0x80b0>
   13d1a:	0789                	c.addi	a5,2
   13d1c:	32071363          	bne	a4,zero,14042 <emul+0x39c>
   13d20:	fef69be3          	bne	a3,a5,13d16 <emul+0x70>
   13d24:	0000a597          	auipc	a1,0xa
   13d28:	8b458593          	addi	a1,a1,-1868 # 1d5d8 <ezero>
   13d2c:	8526                	c.mv	a0,s1
   13d2e:	00000097          	auipc	ra,0x0
   13d32:	a64080e7          	jalr	ra,-1436(ra) # 13792 <ecmp>
   13d36:	1a050063          	beq	a0,zero,13ed6 <emul+0x230>
   13d3a:	0124d503          	lhu	a0,18(s1)
   13d3e:	01295603          	lhu	a2,18(s2)
   13d42:	67a1                	c.lui	a5,0x8
   13d44:	17fd                	c.addi	a5,-1
   13d46:	00f576b3          	and	a3,a0,a5
   13d4a:	00f67733          	and	a4,a2,a5
   13d4e:	8836                	c.mv	a6,a3
   13d50:	0007059b          	addiw	a1,a4,0
   13d54:	0ef69f63          	bne	a3,a5,13e52 <emul+0x1ac>
   13d58:	01248993          	addi	s3,s1,18
   13d5c:	0007059b          	addiw	a1,a4,0
   13d60:	87a6                	c.mv	a5,s1
   13d62:	0007d703          	lhu	a4,0(a5) # 8000 <register_fini-0x80b0>
   13d66:	0789                	c.addi	a5,2
   13d68:	e37d                	c.bnez	a4,13e4e <emul+0x1a8>
   13d6a:	fef99ce3          	bne	s3,a5,13d62 <emul+0xbc>
   13d6e:	0004d783          	lhu	a5,0(s1)
   13d72:	0489                	c.addi	s1,2
   13d74:	28079e63          	bne	a5,zero,14010 <emul+0x36a>
   13d78:	ff349be3          	bne	s1,s3,13d6e <emul+0xc8>
   13d7c:	00f55893          	srli	a7,a0,0xf
   13d80:	6721                	c.lui	a4,0x8
   13d82:	177d                	c.addi	a4,-1
   13d84:	10e59563          	bne	a1,a4,13e8e <emul+0x1e8>
   13d88:	01290693          	addi	a3,s2,18
   13d8c:	a8d5                	c.j	13e80 <emul+0x1da>
   13d8e:	04f51563          	bne	a0,a5,13dd8 <emul+0x132>
   13d92:	01248993          	addi	s3,s1,18
   13d96:	87a6                	c.mv	a5,s1
   13d98:	0007d703          	lhu	a4,0(a5)
   13d9c:	0789                	c.addi	a5,2
   13d9e:	26071b63          	bne	a4,zero,14014 <emul+0x36e>
   13da2:	fef99be3          	bne	s3,a5,13d98 <emul+0xf2>
   13da6:	0000a597          	auipc	a1,0xa
   13daa:	83258593          	addi	a1,a1,-1998 # 1d5d8 <ezero>
   13dae:	854a                	c.mv	a0,s2
   13db0:	00000097          	auipc	ra,0x0
   13db4:	9e2080e7          	jalr	ra,-1566(ra) # 13792 <ecmp>
   13db8:	10050f63          	beq	a0,zero,13ed6 <emul+0x230>
   13dbc:	01295603          	lhu	a2,18(s2)
   13dc0:	67a1                	c.lui	a5,0x8
   13dc2:	17fd                	c.addi	a5,-1
   13dc4:	00f675b3          	and	a1,a2,a5
   13dc8:	12f58863          	beq	a1,a5,13ef8 <emul+0x252>
   13dcc:	0124d503          	lhu	a0,18(s1)
   13dd0:	00f57733          	and	a4,a0,a5
   13dd4:	f8f706e3          	beq	a4,a5,13d60 <emul+0xba>
   13dd8:	8526                	c.mv	a0,s1
   13dda:	858a                	c.mv	a1,sp
   13ddc:	00000097          	auipc	ra,0x0
   13de0:	920080e7          	jalr	ra,-1760(ra) # 136fc <emovi>
   13de4:	100c                	c.addi4spn	a1,sp,32
   13de6:	854a                	c.mv	a0,s2
   13de8:	00000097          	auipc	ra,0x0
   13dec:	914080e7          	jalr	ra,-1772(ra) # 136fc <emovi>
   13df0:	00215483          	lhu	s1,2(sp)
   13df4:	02215983          	lhu	s3,34(sp)
   13df8:	10049363          	bne	s1,zero,13efe <emul+0x258>
   13dfc:	005c                	c.addi4spn	a5,sp,4
   13dfe:	0834                	c.addi4spn	a3,sp,24
   13e00:	22d78163          	beq	a5,a3,14022 <emul+0x37c>
   13e04:	0007d703          	lhu	a4,0(a5) # 8000 <register_fini-0x80b0>
   13e08:	0789                	c.addi	a5,2
   13e0a:	db7d                	c.beqz	a4,13e00 <emul+0x15a>
   13e0c:	850a                	c.mv	a0,sp
   13e0e:	fffff097          	auipc	ra,0xfffff
   13e12:	64c080e7          	jalr	ra,1612(ra) # 1345a <enormlz>
   13e16:	02215703          	lhu	a4,34(sp)
   13e1a:	40a004b3          	sub	s1,zero,a0
   13e1e:	a0cd                	c.j	13f00 <emul+0x25a>
   13e20:	01448713          	addi	a4,s1,20
   13e24:	0004d783          	lhu	a5,0(s1)
   13e28:	0489                	c.addi	s1,2
   13e2a:	0409                	c.addi	s0,2
   13e2c:	fef41f23          	sh	a5,-2(s0)
   13e30:	fee49ae3          	bne	s1,a4,13e24 <emul+0x17e>
   13e34:	70ea                	c.ldsp	ra,184(sp)
   13e36:	744a                	c.ldsp	s0,176(sp)
   13e38:	74aa                	c.ldsp	s1,168(sp)
   13e3a:	790a                	c.ldsp	s2,160(sp)
   13e3c:	69ea                	c.ldsp	s3,152(sp)
   13e3e:	6a4a                	c.ldsp	s4,144(sp)
   13e40:	6aaa                	c.ldsp	s5,136(sp)
   13e42:	6b0a                	c.ldsp	s6,128(sp)
   13e44:	7be6                	c.ldsp	s7,120(sp)
   13e46:	7c46                	c.ldsp	s8,112(sp)
   13e48:	7ca6                	c.ldsp	s9,104(sp)
   13e4a:	6129                	c.addi16sp	sp,192
   13e4c:	8082                	c.jr	ra
   13e4e:	6821                	c.lui	a6,0x8
   13e50:	187d                	c.addi	a6,-1
   13e52:	67a1                	c.lui	a5,0x8
   13e54:	17fd                	c.addi	a5,-1
   13e56:	f8f591e3          	bne	a1,a5,13dd8 <emul+0x132>
   13e5a:	01290693          	addi	a3,s2,18
   13e5e:	87ca                	c.mv	a5,s2
   13e60:	0007d703          	lhu	a4,0(a5) # 8000 <register_fini-0x80b0>
   13e64:	0789                	c.addi	a5,2
   13e66:	fb2d                	c.bnez	a4,13dd8 <emul+0x132>
   13e68:	fed79ce3          	bne	a5,a3,13e60 <emul+0x1ba>
   13e6c:	6721                	c.lui	a4,0x8
   13e6e:	2801                	c.addiw	a6,0
   13e70:	177d                	c.addi	a4,-1
   13e72:	00f55893          	srli	a7,a0,0xf
   13e76:	01248993          	addi	s3,s1,18
   13e7a:	85c2                	c.mv	a1,a6
   13e7c:	eee809e3          	beq	a6,a4,13d6e <emul+0xc8>
   13e80:	00095703          	lhu	a4,0(s2)
   13e84:	0909                	c.addi	s2,2
   13e86:	18071363          	bne	a4,zero,1400c <emul+0x366>
   13e8a:	fed91be3          	bne	s2,a3,13e80 <emul+0x1da>
   13e8e:	00f65793          	srli	a5,a2,0xf
   13e92:	411787b3          	sub	a5,a5,a7
   13e96:	00f037b3          	sltu	a5,zero,a5
   13e9a:	07be                	c.slli	a5,0xf
   13e9c:	00f41923          	sh	a5,18(s0)
   13ea0:	01240713          	addi	a4,s0,18
   13ea4:	87a2                	c.mv	a5,s0
   13ea6:	0789                	c.addi	a5,2
   13ea8:	fe079f23          	sh	zero,-2(a5)
   13eac:	fee79de3          	bne	a5,a4,13ea6 <emul+0x200>
   13eb0:	01245783          	lhu	a5,18(s0)
   13eb4:	6721                	c.lui	a4,0x8
   13eb6:	177d                	c.addi	a4,-1
   13eb8:	8fd9                	c.or	a5,a4
   13eba:	00f41923          	sh	a5,18(s0)
   13ebe:	bf9d                	c.j	13e34 <emul+0x18e>
   13ec0:	01440713          	addi	a4,s0,20
   13ec4:	00095783          	lhu	a5,0(s2)
   13ec8:	0409                	c.addi	s0,2
   13eca:	0909                	c.addi	s2,2
   13ecc:	fef41f23          	sh	a5,-2(s0)
   13ed0:	fee41ae3          	bne	s0,a4,13ec4 <emul+0x21e>
   13ed4:	b785                	c.j	13e34 <emul+0x18e>
   13ed6:	01040713          	addi	a4,s0,16
   13eda:	87a2                	c.mv	a5,s0
   13edc:	0789                	c.addi	a5,2
   13ede:	fe079f23          	sh	zero,-2(a5)
   13ee2:	fee79de3          	bne	a5,a4,13edc <emul+0x236>
   13ee6:	77f1                	c.lui	a5,0xffffc
   13ee8:	00f41823          	sh	a5,16(s0)
   13eec:	77e1                	c.lui	a5,0xffff8
   13eee:	fff7c793          	xori	a5,a5,-1
   13ef2:	00f41923          	sh	a5,18(s0)
   13ef6:	bf3d                	c.j	13e34 <emul+0x18e>
   13ef8:	01290693          	addi	a3,s2,18
   13efc:	bd21                	c.j	13d14 <emul+0x6e>
   13efe:	874e                	c.mv	a4,s3
   13f00:	894e                	c.mv	s2,s3
   13f02:	105c                	c.addi4spn	a5,sp,36
   13f04:	1834                	c.addi4spn	a3,sp,56
   13f06:	e305                	c.bnez	a4,13f26 <emul+0x280>
   13f08:	12d78563          	beq	a5,a3,14032 <emul+0x38c>
   13f0c:	0007d703          	lhu	a4,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd7c80>
   13f10:	0789                	c.addi	a5,2
   13f12:	db7d                	c.beqz	a4,13f08 <emul+0x262>
   13f14:	1008                	c.addi4spn	a0,sp,32
   13f16:	fffff097          	auipc	ra,0xfffff
   13f1a:	544080e7          	jalr	ra,1348(ra) # 1345a <enormlz>
   13f1e:	02215703          	lhu	a4,34(sp)
   13f22:	40a98933          	sub	s2,s3,a0
   13f26:	02015783          	lhu	a5,32(sp)
   13f2a:	038a0993          	addi	s3,s4,56
   13f2e:	02ea1b23          	sh	a4,54(s4)
   13f32:	02fa1a23          	sh	a5,52(s4)
   13f36:	04ea0713          	addi	a4,s4,78
   13f3a:	87ce                	c.mv	a5,s3
   13f3c:	00079023          	sh	zero,0(a5)
   13f40:	0789                	c.addi	a5,2
   13f42:	fef71de3          	bne	a4,a5,13f3c <emul+0x296>
   13f46:	04ca0c13          	addi	s8,s4,76
   13f4a:	4b81                	c.li	s7,0
   13f4c:	01810a93          	addi	s5,sp,24
   13f50:	00410c93          	addi	s9,sp,4
   13f54:	04210b13          	addi	s6,sp,66
   13f58:	000ad503          	lhu	a0,0(s5)
   13f5c:	1af9                	c.addi	s5,-2
   13f5e:	ed35                	c.bnez	a0,13fda <emul+0x334>
   13f60:	04ca5783          	lhu	a5,76(s4)
   13f64:	8762                	c.mv	a4,s8
   13f66:	00fbebb3          	or	s7,s7,a5
   13f6a:	ffe75603          	lhu	a2,-2(a4) # 7ffe <register_fini-0x80b2>
   13f6e:	1779                	c.addi	a4,-2
   13f70:	00c71123          	sh	a2,2(a4)
   13f74:	fee99be3          	bne	s3,a4,13f6a <emul+0x2c4>
   13f78:	020a1c23          	sh	zero,56(s4)
   13f7c:	fd9a9ee3          	bne	s5,s9,13f58 <emul+0x2b2>
   13f80:	034a0713          	addi	a4,s4,52
   13f84:	101c                	c.addi4spn	a5,sp,32
   13f86:	03a10613          	addi	a2,sp,58
   13f8a:	00075683          	lhu	a3,0(a4)
   13f8e:	0789                	c.addi	a5,2
   13f90:	0709                	c.addi	a4,2
   13f92:	fed79f23          	sh	a3,-2(a5)
   13f96:	fef61ae3          	bne	a2,a5,13f8a <emul+0x2e4>
   13f9a:	76f1                	c.lui	a3,0xffffc
   13f9c:	94ca                	c.add	s1,s2
   13f9e:	0689                	c.addi	a3,2
   13fa0:	85de                	c.mv	a1,s7
   13fa2:	1008                	c.addi4spn	a0,sp,32
   13fa4:	87d2                	c.mv	a5,s4
   13fa6:	04000713          	addi	a4,zero,64
   13faa:	96a6                	c.add	a3,s1
   13fac:	4601                	c.li	a2,0
   13fae:	00000097          	auipc	ra,0x0
   13fb2:	8d0080e7          	jalr	ra,-1840(ra) # 1387e <emdnorm>
   13fb6:	02015703          	lhu	a4,32(sp)
   13fba:	00015783          	lhu	a5,0(sp)
   13fbe:	85a2                	c.mv	a1,s0
   13fc0:	1008                	c.addi4spn	a0,sp,32
   13fc2:	8f99                	c.sub	a5,a4
   13fc4:	00f037b3          	sltu	a5,zero,a5
   13fc8:	40f007bb          	subw	a5,zero,a5
   13fcc:	02f11023          	sh	a5,32(sp)
   13fd0:	fffff097          	auipc	ra,0xfffff
   13fd4:	3fe080e7          	jalr	ra,1022(ra) # 133ce <emovo.constprop.0>
   13fd8:	bdb1                	c.j	13e34 <emul+0x18e>
   13fda:	0090                	c.addi4spn	a2,sp,64
   13fdc:	100c                	c.addi4spn	a1,sp,32
   13fde:	fffff097          	auipc	ra,0xfffff
   13fe2:	37c080e7          	jalr	ra,892(ra) # 1335a <m16m>
   13fe6:	8562                	c.mv	a0,s8
   13fe8:	4581                	c.li	a1,0
   13fea:	08b0                	c.addi4spn	a2,sp,88
   13fec:	00055783          	lhu	a5,0(a0)
   13ff0:	00065703          	lhu	a4,0(a2)
   13ff4:	1579                	c.addi	a0,-2
   13ff6:	1679                	c.addi	a2,-2
   13ff8:	973e                	c.add	a4,a5
   13ffa:	972e                	c.add	a4,a1
   13ffc:	01075593          	srli	a1,a4,0x10
   14000:	00e51123          	sh	a4,2(a0)
   14004:	8985                	c.andi	a1,1
   14006:	ff6613e3          	bne	a2,s6,13fec <emul+0x346>
   1400a:	bf99                	c.j	13f60 <emul+0x2ba>
   1400c:	4781                	c.li	a5,0
   1400e:	b551                	c.j	13e92 <emul+0x1ec>
   14010:	4881                	c.li	a7,0
   14012:	b3bd                	c.j	13d80 <emul+0xda>
   14014:	67a1                	c.lui	a5,0x8
   14016:	17fd                	c.addi	a5,-1
   14018:	eef580e3          	beq	a1,a5,13ef8 <emul+0x252>
   1401c:	0124d503          	lhu	a0,18(s1)
   14020:	b381                	c.j	13d60 <emul+0xba>
   14022:	01440793          	addi	a5,s0,20
   14026:	0409                	c.addi	s0,2
   14028:	fe041f23          	sh	zero,-2(s0)
   1402c:	fe879de3          	bne	a5,s0,14026 <emul+0x380>
   14030:	b511                	c.j	13e34 <emul+0x18e>
   14032:	01440793          	addi	a5,s0,20
   14036:	0409                	c.addi	s0,2
   14038:	fe041f23          	sh	zero,-2(s0)
   1403c:	fe879de3          	bne	a5,s0,14036 <emul+0x390>
   14040:	bbd5                	c.j	13e34 <emul+0x18e>
   14042:	0124d503          	lhu	a0,18(s1)
   14046:	67a1                	c.lui	a5,0x8
   14048:	17fd                	c.addi	a5,-1
   1404a:	00f575b3          	and	a1,a0,a5
   1404e:	01248993          	addi	s3,s1,18
   14052:	882e                	c.mv	a6,a1
   14054:	e0f595e3          	bne	a1,a5,13e5e <emul+0x1b8>
   14058:	b321                	c.j	13d60 <emul+0xba>

000000000001405a <ediv>:
   1405a:	01255783          	lhu	a5,18(a0)
   1405e:	7115                	c.addi16sp	sp,-224
   14060:	e9a2                	c.sdsp	s0,208(sp)
   14062:	fff7c793          	xori	a5,a5,-1
   14066:	e5a6                	c.sdsp	s1,200(sp)
   14068:	e1ca                	c.sdsp	s2,192(sp)
   1406a:	fd4e                	c.sdsp	s3,184(sp)
   1406c:	ed86                	c.sdsp	ra,216(sp)
   1406e:	f952                	c.sdsp	s4,176(sp)
   14070:	f556                	c.sdsp	s5,168(sp)
   14072:	f15a                	c.sdsp	s6,160(sp)
   14074:	ed5e                	c.sdsp	s7,152(sp)
   14076:	e962                	c.sdsp	s8,144(sp)
   14078:	e566                	c.sdsp	s9,136(sp)
   1407a:	e16a                	c.sdsp	s10,128(sp)
   1407c:	fcee                	c.sdsp	s11,120(sp)
   1407e:	03179713          	slli	a4,a5,0x31
   14082:	84aa                	c.mv	s1,a0
   14084:	892e                	c.mv	s2,a1
   14086:	8432                	c.mv	s0,a2
   14088:	89b6                	c.mv	s3,a3
   1408a:	eb19                	c.bnez	a4,140a0 <ediv+0x46>
   1408c:	01250693          	addi	a3,a0,18
   14090:	87aa                	c.mv	a5,a0
   14092:	0007d703          	lhu	a4,0(a5) # 8000 <register_fini-0x80b0>
   14096:	0789                	c.addi	a5,2
   14098:	26071163          	bne	a4,zero,142fa <ediv+0x2a0>
   1409c:	fed79be3          	bne	a5,a3,14092 <ediv+0x38>
   140a0:	01295783          	lhu	a5,18(s2)
   140a4:	fff7c793          	xori	a5,a5,-1
   140a8:	03179713          	slli	a4,a5,0x31
   140ac:	eb19                	c.bnez	a4,140c2 <ediv+0x68>
   140ae:	01290693          	addi	a3,s2,18
   140b2:	87ca                	c.mv	a5,s2
   140b4:	0007d703          	lhu	a4,0(a5)
   140b8:	0789                	c.addi	a5,2
   140ba:	24071b63          	bne	a4,zero,14310 <ediv+0x2b6>
   140be:	fed79be3          	bne	a5,a3,140b4 <ediv+0x5a>
   140c2:	00009597          	auipc	a1,0x9
   140c6:	51658593          	addi	a1,a1,1302 # 1d5d8 <ezero>
   140ca:	8526                	c.mv	a0,s1
   140cc:	fffff097          	auipc	ra,0xfffff
   140d0:	6c6080e7          	jalr	ra,1734(ra) # 13792 <ecmp>
   140d4:	24050963          	beq	a0,zero,14326 <ediv+0x2cc>
   140d8:	0124d603          	lhu	a2,18(s1)
   140dc:	01295583          	lhu	a1,18(s2)
   140e0:	67a1                	c.lui	a5,0x8
   140e2:	17fd                	c.addi	a5,-1
   140e4:	00f67533          	and	a0,a2,a5
   140e8:	00f5f6b3          	and	a3,a1,a5
   140ec:	06f51a63          	bne	a0,a5,14160 <ediv+0x106>
   140f0:	01248813          	addi	a6,s1,18
   140f4:	87a6                	c.mv	a5,s1
   140f6:	0007d703          	lhu	a4,0(a5) # 8000 <register_fini-0x80b0>
   140fa:	0789                	c.addi	a5,2
   140fc:	e325                	c.bnez	a4,1415c <ediv+0x102>
   140fe:	ff079ce3          	bne	a5,a6,140f6 <ediv+0x9c>
   14102:	67a1                	c.lui	a5,0x8
   14104:	17fd                	c.addi	a5,-1
   14106:	22f69e63          	bne	a3,a5,14342 <ediv+0x2e8>
   1410a:	01290693          	addi	a3,s2,18
   1410e:	87ca                	c.mv	a5,s2
   14110:	0007d703          	lhu	a4,0(a5) # 8000 <register_fini-0x80b0>
   14114:	0789                	c.addi	a5,2
   14116:	38071863          	bne	a4,zero,144a6 <ediv+0x44c>
   1411a:	fed79be3          	bne	a5,a3,14110 <ediv+0xb6>
   1411e:	01040713          	addi	a4,s0,16
   14122:	87a2                	c.mv	a5,s0
   14124:	0789                	c.addi	a5,2
   14126:	fe079f23          	sh	zero,-2(a5)
   1412a:	fee79de3          	bne	a5,a4,14124 <ediv+0xca>
   1412e:	77f1                	c.lui	a5,0xffffc
   14130:	00f41823          	sh	a5,16(s0)
   14134:	77e1                	c.lui	a5,0xffff8
   14136:	fff7c793          	xori	a5,a5,-1
   1413a:	00f41923          	sh	a5,18(s0)
   1413e:	60ee                	c.ldsp	ra,216(sp)
   14140:	644e                	c.ldsp	s0,208(sp)
   14142:	64ae                	c.ldsp	s1,200(sp)
   14144:	690e                	c.ldsp	s2,192(sp)
   14146:	79ea                	c.ldsp	s3,184(sp)
   14148:	7a4a                	c.ldsp	s4,176(sp)
   1414a:	7aaa                	c.ldsp	s5,168(sp)
   1414c:	7b0a                	c.ldsp	s6,160(sp)
   1414e:	6bea                	c.ldsp	s7,152(sp)
   14150:	6c4a                	c.ldsp	s8,144(sp)
   14152:	6caa                	c.ldsp	s9,136(sp)
   14154:	6d0a                	c.ldsp	s10,128(sp)
   14156:	7de6                	c.ldsp	s11,120(sp)
   14158:	612d                	c.addi16sp	sp,224
   1415a:	8082                	c.jr	ra
   1415c:	67a1                	c.lui	a5,0x8
   1415e:	17fd                	c.addi	a5,-1
   14160:	1ef68963          	beq	a3,a5,14352 <ediv+0x2f8>
   14164:	8526                	c.mv	a0,s1
   14166:	080c                	c.addi4spn	a1,sp,16
   14168:	fffff097          	auipc	ra,0xfffff
   1416c:	594080e7          	jalr	ra,1428(ra) # 136fc <emovi>
   14170:	180c                	c.addi4spn	a1,sp,48
   14172:	854a                	c.mv	a0,s2
   14174:	fffff097          	auipc	ra,0xfffff
   14178:	588080e7          	jalr	ra,1416(ra) # 136fc <emovi>
   1417c:	03215a83          	lhu	s5,50(sp)
   14180:	01215483          	lhu	s1,18(sp)
   14184:	220a8c63          	beq	s5,zero,143bc <ediv+0x362>
   14188:	e456                	c.sdsp	s5,8(sp)
   1418a:	8626                	c.mv	a2,s1
   1418c:	e026                	c.sdsp	s1,0(sp)
   1418e:	085c                	c.addi4spn	a5,sp,20
   14190:	1034                	c.addi4spn	a3,sp,40
   14192:	ee19                	c.bnez	a2,141b0 <ediv+0x156>
   14194:	2ed78363          	beq	a5,a3,1447a <ediv+0x420>
   14198:	0007d703          	lhu	a4,0(a5) # 8000 <register_fini-0x80b0>
   1419c:	0789                	c.addi	a5,2
   1419e:	db7d                	c.beqz	a4,14194 <ediv+0x13a>
   141a0:	0808                	c.addi4spn	a0,sp,16
   141a2:	fffff097          	auipc	ra,0xfffff
   141a6:	2b8080e7          	jalr	ra,696(ra) # 1345a <enormlz>
   141aa:	40a487b3          	sub	a5,s1,a0
   141ae:	e03e                	c.sdsp	a5,0(sp)
   141b0:	5742                	c.lwsp	a4,48(sp)
   141b2:	03898a93          	addi	s5,s3,56
   141b6:	87d6                	c.mv	a5,s5
   141b8:	02e9aa23          	sw	a4,52(s3)
   141bc:	04e98493          	addi	s1,s3,78
   141c0:	0789                	c.addi	a5,2
   141c2:	fe079f23          	sh	zero,-2(a5)
   141c6:	fef49de3          	bne	s1,a5,141c0 <ediv+0x166>
   141ca:	1808                	c.addi4spn	a0,sp,48
   141cc:	fffff097          	auipc	ra,0xfffff
   141d0:	0f2080e7          	jalr	ra,242(ra) # 132be <eshdn1>
   141d4:	01615b03          	lhu	s6,22(sp)
   141d8:	6941                	c.lui	s2,0x10
   141da:	04810c13          	addi	s8,sp,72
   141de:	010b1a13          	slli	s4,s6,0x10
   141e2:	416a0a33          	sub	s4,s4,s6
   141e6:	03210c93          	addi	s9,sp,50
   141ea:	197d                	c.addi	s2,-1
   141ec:	06a10d13          	addi	s10,sp,106
   141f0:	05210d93          	addi	s11,sp,82
   141f4:	03415783          	lhu	a5,52(sp)
   141f8:	03615703          	lhu	a4,54(sp)
   141fc:	8bca                	c.mv	s7,s2
   141fe:	07c2                	c.slli	a5,0x10
   14200:	97ba                	c.add	a5,a4
   14202:	00fa6863          	bltu	s4,a5,14212 <ediv+0x1b8>
   14206:	0367d533          	divu	a0,a5,s6
   1420a:	03051b93          	slli	s7,a0,0x30
   1420e:	030bdb93          	srli	s7,s7,0x30
   14212:	0890                	c.addi4spn	a2,sp,80
   14214:	080c                	c.addi4spn	a1,sp,16
   14216:	855e                	c.mv	a0,s7
   14218:	fffff097          	auipc	ra,0xfffff
   1421c:	142080e7          	jalr	ra,322(ra) # 1335a <m16m>
   14220:	1858                	c.addi4spn	a4,sp,52
   14222:	08dc                	c.addi4spn	a5,sp,84
   14224:	0007d603          	lhu	a2,0(a5)
   14228:	00075683          	lhu	a3,0(a4)
   1422c:	0789                	c.addi	a5,2
   1422e:	0709                	c.addi	a4,2
   14230:	1ad61a63          	bne	a2,a3,143e4 <ediv+0x38a>
   14234:	ffa798e3          	bne	a5,s10,14224 <ediv+0x1ca>
   14238:	4781                	c.li	a5,0
   1423a:	10b4                	c.addi4spn	a3,sp,104
   1423c:	8662                	c.mv	a2,s8
   1423e:	00065703          	lhu	a4,0(a2)
   14242:	0006d583          	lhu	a1,0(a3) # ffffffffffffc000 <__BSS_END__+0xfffffffffffdbc80>
   14246:	1679                	c.addi	a2,-2
   14248:	8f1d                	c.sub	a4,a5
   1424a:	8f0d                	c.sub	a4,a1
   1424c:	01075793          	srli	a5,a4,0x10
   14250:	00e61123          	sh	a4,2(a2)
   14254:	8b85                	c.andi	a5,1
   14256:	16f9                	c.addi	a3,-2
   14258:	ff9613e3          	bne	a2,s9,1423e <ediv+0x1e4>
   1425c:	017a9023          	sh	s7,0(s5)
   14260:	185c                	c.addi4spn	a5,sp,52
   14262:	0027d703          	lhu	a4,2(a5)
   14266:	0789                	c.addi	a5,2
   14268:	fee79f23          	sh	a4,-2(a5)
   1426c:	ff879be3          	bne	a5,s8,14262 <ediv+0x208>
   14270:	04011423          	sh	zero,72(sp)
   14274:	0a89                	c.addi	s5,2
   14276:	f7549fe3          	bne	s1,s5,141f4 <ediv+0x19a>
   1427a:	4701                	c.li	a4,0
   1427c:	185c                	c.addi4spn	a5,sp,52
   1427e:	04a10613          	addi	a2,sp,74
   14282:	0007d683          	lhu	a3,0(a5)
   14286:	0789                	c.addi	a5,2
   14288:	8f55                	c.or	a4,a3
   1428a:	fec79ce3          	bne	a5,a2,14282 <ediv+0x228>
   1428e:	0107179b          	slliw	a5,a4,0x10
   14292:	4107d79b          	sraiw	a5,a5,0x10
   14296:	c391                	c.beqz	a5,1429a <ediv+0x240>
   14298:	4705                	c.li	a4,1
   1429a:	03071593          	slli	a1,a4,0x30
   1429e:	91c1                	c.srli	a1,0x30
   142a0:	03498713          	addi	a4,s3,52
   142a4:	181c                	c.addi4spn	a5,sp,48
   142a6:	00075683          	lhu	a3,0(a4)
   142aa:	0789                	c.addi	a5,2
   142ac:	0709                	c.addi	a4,2
   142ae:	fed79f23          	sh	a3,-2(a5)
   142b2:	fef61ae3          	bne	a2,a5,142a6 <ediv+0x24c>
   142b6:	67a2                	c.ldsp	a5,8(sp)
   142b8:	6702                	c.ldsp	a4,0(sp)
   142ba:	6691                	c.lui	a3,0x4
   142bc:	16fd                	c.addi	a3,-1
   142be:	40e78ab3          	sub	s5,a5,a4
   142c2:	1808                	c.addi4spn	a0,sp,48
   142c4:	87ce                	c.mv	a5,s3
   142c6:	04000713          	addi	a4,zero,64
   142ca:	96d6                	c.add	a3,s5
   142cc:	4601                	c.li	a2,0
   142ce:	fffff097          	auipc	ra,0xfffff
   142d2:	5b0080e7          	jalr	ra,1456(ra) # 1387e <emdnorm>
   142d6:	03015703          	lhu	a4,48(sp)
   142da:	01015783          	lhu	a5,16(sp)
   142de:	85a2                	c.mv	a1,s0
   142e0:	1808                	c.addi4spn	a0,sp,48
   142e2:	8f99                	c.sub	a5,a4
   142e4:	00f037b3          	sltu	a5,zero,a5
   142e8:	40f007bb          	subw	a5,zero,a5
   142ec:	02f11823          	sh	a5,48(sp)
   142f0:	fffff097          	auipc	ra,0xfffff
   142f4:	0de080e7          	jalr	ra,222(ra) # 133ce <emovo.constprop.0>
   142f8:	b599                	c.j	1413e <ediv+0xe4>
   142fa:	01448713          	addi	a4,s1,20
   142fe:	0004d783          	lhu	a5,0(s1)
   14302:	0489                	c.addi	s1,2
   14304:	0409                	c.addi	s0,2
   14306:	fef41f23          	sh	a5,-2(s0)
   1430a:	fee49ae3          	bne	s1,a4,142fe <ediv+0x2a4>
   1430e:	bd05                	c.j	1413e <ediv+0xe4>
   14310:	01490713          	addi	a4,s2,20 # 10014 <register_fini-0x9c>
   14314:	00095783          	lhu	a5,0(s2)
   14318:	0909                	c.addi	s2,2
   1431a:	0409                	c.addi	s0,2
   1431c:	fef41f23          	sh	a5,-2(s0)
   14320:	fee91ae3          	bne	s2,a4,14314 <ediv+0x2ba>
   14324:	bd29                	c.j	1413e <ediv+0xe4>
   14326:	00009597          	auipc	a1,0x9
   1432a:	2b258593          	addi	a1,a1,690 # 1d5d8 <ezero>
   1432e:	854a                	c.mv	a0,s2
   14330:	fffff097          	auipc	ra,0xfffff
   14334:	462080e7          	jalr	ra,1122(ra) # 13792 <ecmp>
   14338:	da0510e3          	bne	a0,zero,140d8 <ediv+0x7e>
   1433c:	b3cd                	c.j	1411e <ediv+0xc4>
   1433e:	e20803e3          	beq	a6,zero,14164 <ediv+0x10a>
   14342:	01440793          	addi	a5,s0,20
   14346:	0409                	c.addi	s0,2
   14348:	fe041f23          	sh	zero,-2(s0)
   1434c:	fef41de3          	bne	s0,a5,14346 <ediv+0x2ec>
   14350:	b3fd                	c.j	1413e <ediv+0xe4>
   14352:	4801                	c.li	a6,0
   14354:	01290693          	addi	a3,s2,18
   14358:	87ca                	c.mv	a5,s2
   1435a:	0007d703          	lhu	a4,0(a5)
   1435e:	0789                	c.addi	a5,2
   14360:	ff79                	c.bnez	a4,1433e <ediv+0x2e4>
   14362:	fed79ce3          	bne	a5,a3,1435a <ediv+0x300>
   14366:	67a1                	c.lui	a5,0x8
   14368:	17fd                	c.addi	a5,-1
   1436a:	04f50063          	beq	a0,a5,143aa <ediv+0x350>
   1436e:	823d                	c.srli	a2,0xf
   14370:	00095783          	lhu	a5,0(s2)
   14374:	0909                	c.addi	s2,2
   14376:	12079463          	bne	a5,zero,1449e <ediv+0x444>
   1437a:	fed91be3          	bne	s2,a3,14370 <ediv+0x316>
   1437e:	81bd                	c.srli	a1,0xf
   14380:	00c58363          	beq	a1,a2,14386 <ediv+0x32c>
   14384:	6721                	c.lui	a4,0x8
   14386:	00e41923          	sh	a4,18(s0)
   1438a:	87a2                	c.mv	a5,s0
   1438c:	01240713          	addi	a4,s0,18
   14390:	0789                	c.addi	a5,2
   14392:	fe079f23          	sh	zero,-2(a5) # 7ffe <register_fini-0x80b2>
   14396:	fee79de3          	bne	a5,a4,14390 <ediv+0x336>
   1439a:	01245783          	lhu	a5,18(s0)
   1439e:	6721                	c.lui	a4,0x8
   143a0:	177d                	c.addi	a4,-1
   143a2:	8fd9                	c.or	a5,a4
   143a4:	00f41923          	sh	a5,18(s0)
   143a8:	bb59                	c.j	1413e <ediv+0xe4>
   143aa:	01248513          	addi	a0,s1,18
   143ae:	0004d783          	lhu	a5,0(s1)
   143b2:	0489                	c.addi	s1,2
   143b4:	e7fd                	c.bnez	a5,144a2 <ediv+0x448>
   143b6:	fea49ce3          	bne	s1,a0,143ae <ediv+0x354>
   143ba:	bf55                	c.j	1436e <ediv+0x314>
   143bc:	185c                	c.addi4spn	a5,sp,52
   143be:	04810c13          	addi	s8,sp,72
   143c2:	0afc0463          	beq	s8,a5,1446a <ediv+0x410>
   143c6:	0007d703          	lhu	a4,0(a5)
   143ca:	0789                	c.addi	a5,2
   143cc:	db7d                	c.beqz	a4,143c2 <ediv+0x368>
   143ce:	1808                	c.addi4spn	a0,sp,48
   143d0:	fffff097          	auipc	ra,0xfffff
   143d4:	08a080e7          	jalr	ra,138(ra) # 1345a <enormlz>
   143d8:	40a007b3          	sub	a5,zero,a0
   143dc:	01215603          	lhu	a2,18(sp)
   143e0:	e43e                	c.sdsp	a5,8(sp)
   143e2:	b36d                	c.j	1418c <ediv+0x132>
   143e4:	e4c6fae3          	bgeu	a3,a2,14238 <ediv+0x1de>
   143e8:	fffb879b          	addiw	a5,s7,-1
   143ec:	03079893          	slli	a7,a5,0x30
   143f0:	0308d893          	srli	a7,a7,0x30
   143f4:	4681                	c.li	a3,0
   143f6:	1030                	c.addi4spn	a2,sp,40
   143f8:	10b8                	c.addi4spn	a4,sp,104
   143fa:	00075783          	lhu	a5,0(a4) # 8000 <register_fini-0x80b0>
   143fe:	00065583          	lhu	a1,0(a2)
   14402:	1779                	c.addi	a4,-2
   14404:	8f95                	c.sub	a5,a3
   14406:	8f8d                	c.sub	a5,a1
   14408:	0107d693          	srli	a3,a5,0x10
   1440c:	00f71123          	sh	a5,2(a4)
   14410:	8a85                	c.andi	a3,1
   14412:	1679                	c.addi	a2,-2
   14414:	ffb713e3          	bne	a4,s11,143fa <ediv+0x3a0>
   14418:	1858                	c.addi4spn	a4,sp,52
   1441a:	08dc                	c.addi4spn	a5,sp,84
   1441c:	0007d603          	lhu	a2,0(a5)
   14420:	00075683          	lhu	a3,0(a4)
   14424:	0789                	c.addi	a5,2
   14426:	0709                	c.addi	a4,2
   14428:	00d61663          	bne	a2,a3,14434 <ediv+0x3da>
   1442c:	ffa798e3          	bne	a5,s10,1441c <ediv+0x3c2>
   14430:	8bc6                	c.mv	s7,a7
   14432:	b519                	c.j	14238 <ediv+0x1de>
   14434:	fec6fee3          	bgeu	a3,a2,14430 <ediv+0x3d6>
   14438:	ffeb851b          	addiw	a0,s7,-2
   1443c:	03051b93          	slli	s7,a0,0x30
   14440:	030bdb93          	srli	s7,s7,0x30
   14444:	4681                	c.li	a3,0
   14446:	1030                	c.addi4spn	a2,sp,40
   14448:	10b8                	c.addi4spn	a4,sp,104
   1444a:	00075783          	lhu	a5,0(a4)
   1444e:	00065583          	lhu	a1,0(a2)
   14452:	1779                	c.addi	a4,-2
   14454:	8f95                	c.sub	a5,a3
   14456:	8f8d                	c.sub	a5,a1
   14458:	0107d693          	srli	a3,a5,0x10
   1445c:	00f71123          	sh	a5,2(a4)
   14460:	8a85                	c.andi	a3,1
   14462:	1679                	c.addi	a2,-2
   14464:	ffb713e3          	bne	a4,s11,1444a <ediv+0x3f0>
   14468:	bbc1                	c.j	14238 <ediv+0x1de>
   1446a:	01440793          	addi	a5,s0,20
   1446e:	0409                	c.addi	s0,2
   14470:	fe041f23          	sh	zero,-2(s0)
   14474:	fef41de3          	bne	s0,a5,1446e <ediv+0x414>
   14478:	b1d9                	c.j	1413e <ediv+0xe4>
   1447a:	01015703          	lhu	a4,16(sp)
   1447e:	03015783          	lhu	a5,48(sp)
   14482:	00f70363          	beq	a4,a5,14488 <ediv+0x42e>
   14486:	6621                	c.lui	a2,0x8
   14488:	00c41923          	sh	a2,18(s0)
   1448c:	01240713          	addi	a4,s0,18
   14490:	87a2                	c.mv	a5,s0
   14492:	0789                	c.addi	a5,2
   14494:	fe079f23          	sh	zero,-2(a5)
   14498:	fef71de3          	bne	a4,a5,14492 <ediv+0x438>
   1449c:	bdfd                	c.j	1439a <ediv+0x340>
   1449e:	4581                	c.li	a1,0
   144a0:	b5c5                	c.j	14380 <ediv+0x326>
   144a2:	4601                	c.li	a2,0
   144a4:	b5f1                	c.j	14370 <ediv+0x316>
   144a6:	4805                	c.li	a6,1
   144a8:	bd45                	c.j	14358 <ediv+0x2fe>

00000000000144aa <e113toe.isra.0>:
   144aa:	7179                	c.addi16sp	sp,-48
   144ac:	f022                	c.sdsp	s0,32(sp)
   144ae:	f406                	c.sdsp	ra,40(sp)
   144b0:	842e                	c.mv	s0,a1
   144b2:	878a                	c.mv	a5,sp
   144b4:	01a10713          	addi	a4,sp,26
   144b8:	0789                	c.addi	a5,2
   144ba:	fe079f23          	sh	zero,-2(a5)
   144be:	fee79de3          	bne	a5,a4,144b8 <e113toe.isra.0+0xe>
   144c2:	00e55783          	lhu	a5,14(a0)
   144c6:	00f7d713          	srli	a4,a5,0xf
   144ca:	ef39                	c.bnez	a4,14528 <e113toe.isra.0+0x7e>
   144cc:	6721                	c.lui	a4,0x8
   144ce:	177d                	c.addi	a4,-1
   144d0:	00e7f6b3          	and	a3,a5,a4
   144d4:	00011023          	sh	zero,0(sp)
   144d8:	8636                	c.mv	a2,a3
   144da:	06e68163          	beq	a3,a4,1453c <e113toe.isra.0+0x92>
   144de:	00e50793          	addi	a5,a0,14
   144e2:	00d11123          	sh	a3,2(sp)
   144e6:	00610713          	addi	a4,sp,6
   144ea:	ffe7d683          	lhu	a3,-2(a5)
   144ee:	17f9                	c.addi	a5,-2
   144f0:	0709                	c.addi	a4,2
   144f2:	fed71f23          	sh	a3,-2(a4) # 7ffe <register_fini-0x80b2>
   144f6:	fef51ae3          	bne	a0,a5,144ea <e113toe.isra.0+0x40>
   144fa:	ee09                	c.bnez	a2,14514 <e113toe.isra.0+0x6a>
   144fc:	00011223          	sh	zero,4(sp)
   14500:	85a2                	c.mv	a1,s0
   14502:	850a                	c.mv	a0,sp
   14504:	fffff097          	auipc	ra,0xfffff
   14508:	eca080e7          	jalr	ra,-310(ra) # 133ce <emovo.constprop.0>
   1450c:	70a2                	c.ldsp	ra,40(sp)
   1450e:	7402                	c.ldsp	s0,32(sp)
   14510:	6145                	c.addi16sp	sp,48
   14512:	8082                	c.jr	ra
   14514:	4785                	c.li	a5,1
   14516:	55fd                	c.li	a1,-1
   14518:	850a                	c.mv	a0,sp
   1451a:	00f11223          	sh	a5,4(sp)
   1451e:	fffff097          	auipc	ra,0xfffff
   14522:	04e080e7          	jalr	ra,78(ra) # 1356c <eshift.part.0>
   14526:	bfe9                	c.j	14500 <e113toe.isra.0+0x56>
   14528:	577d                	c.li	a4,-1
   1452a:	00e11023          	sh	a4,0(sp)
   1452e:	6721                	c.lui	a4,0x8
   14530:	177d                	c.addi	a4,-1
   14532:	00e7f6b3          	and	a3,a5,a4
   14536:	8636                	c.mv	a2,a3
   14538:	fae693e3          	bne	a3,a4,144de <e113toe.isra.0+0x34>
   1453c:	87aa                	c.mv	a5,a0
   1453e:	00e50693          	addi	a3,a0,14
   14542:	0007d703          	lhu	a4,0(a5)
   14546:	0789                	c.addi	a5,2
   14548:	ef21                	c.bnez	a4,145a0 <e113toe.isra.0+0xf6>
   1454a:	fef69ce3          	bne	a3,a5,14542 <e113toe.isra.0+0x98>
   1454e:	01440713          	addi	a4,s0,20
   14552:	87a2                	c.mv	a5,s0
   14554:	0789                	c.addi	a5,2
   14556:	fe079f23          	sh	zero,-2(a5)
   1455a:	fee79de3          	bne	a5,a4,14554 <e113toe.isra.0+0xaa>
   1455e:	01240713          	addi	a4,s0,18
   14562:	87a2                	c.mv	a5,s0
   14564:	0789                	c.addi	a5,2
   14566:	fe079f23          	sh	zero,-2(a5)
   1456a:	fef71de3          	bne	a4,a5,14564 <e113toe.isra.0+0xba>
   1456e:	01245783          	lhu	a5,18(s0)
   14572:	66a1                	c.lui	a3,0x8
   14574:	16fd                	c.addi	a3,-1
   14576:	8fd5                	c.or	a5,a3
   14578:	17c2                	c.slli	a5,0x30
   1457a:	93c1                	c.srli	a5,0x30
   1457c:	00f41923          	sh	a5,18(s0)
   14580:	00e51683          	lh	a3,14(a0)
   14584:	f806d4e3          	bge	a3,zero,1450c <e113toe.isra.0+0x62>
   14588:	86a2                	c.mv	a3,s0
   1458a:	0006d603          	lhu	a2,0(a3) # 8000 <register_fini-0x80b0>
   1458e:	0689                	c.addi	a3,2
   14590:	fe35                	c.bnez	a2,1450c <e113toe.isra.0+0x62>
   14592:	fed71ce3          	bne	a4,a3,1458a <e113toe.isra.0+0xe0>
   14596:	7761                	c.lui	a4,0xffff8
   14598:	8fb9                	c.xor	a5,a4
   1459a:	00f41923          	sh	a5,18(s0)
   1459e:	b7bd                	c.j	1450c <e113toe.isra.0+0x62>
   145a0:	01040713          	addi	a4,s0,16
   145a4:	87a2                	c.mv	a5,s0
   145a6:	0789                	c.addi	a5,2
   145a8:	fe079f23          	sh	zero,-2(a5)
   145ac:	fee79de3          	bne	a5,a4,145a6 <e113toe.isra.0+0xfc>
   145b0:	77f1                	c.lui	a5,0xffffc
   145b2:	00f41823          	sh	a5,16(s0)
   145b6:	77e1                	c.lui	a5,0xffff8
   145b8:	fff7c793          	xori	a5,a5,-1
   145bc:	00f41923          	sh	a5,18(s0)
   145c0:	b7b1                	c.j	1450c <e113toe.isra.0+0x62>

00000000000145c2 <_ldtoa_r>:
   145c2:	db010113          	addi	sp,sp,-592
   145c6:	09100313          	addi	t1,zero,145
   145ca:	e4b2                	c.sdsp	a2,72(sp)
   145cc:	06053e03          	ld	t3,96(a0)
   145d0:	02031613          	slli	a2,t1,0x20
   145d4:	167d                	c.addi	a2,-1
   145d6:	24813023          	sd	s0,576(sp)
   145da:	23413023          	sd	s4,544(sp)
   145de:	21613823          	sd	s6,528(sp)
   145e2:	24113423          	sd	ra,584(sp)
   145e6:	22913c23          	sd	s1,568(sp)
   145ea:	23213823          	sd	s2,560(sp)
   145ee:	23313423          	sd	s3,552(sp)
   145f2:	21513c23          	sd	s5,536(sp)
   145f6:	21713423          	sd	s7,520(sp)
   145fa:	21813023          	sd	s8,512(sp)
   145fe:	ffe6                	c.sdsp	s9,504(sp)
   14600:	fbea                	c.sdsp	s10,496(sp)
   14602:	f7ee                	c.sdsp	s11,488(sp)
   14604:	e0ae                	c.sdsp	a1,64(sp)
   14606:	eb32                	c.sdsp	a2,400(sp)
   14608:	e43a                	c.sdsp	a4,8(sp)
   1460a:	e83e                	c.sdsp	a5,16(sp)
   1460c:	f046                	c.sdsp	a7,32(sp)
   1460e:	8a2a                	c.mv	s4,a0
   14610:	8b36                	c.mv	s6,a3
   14612:	8442                	c.mv	s0,a6
   14614:	020e0163          	beq	t3,zero,14636 <_ldtoa_r+0x74>
   14618:	5538                	c.lw	a4,104(a0)
   1461a:	4785                	c.li	a5,1
   1461c:	85f2                	c.mv	a1,t3
   1461e:	00e797bb          	sllw	a5,a5,a4
   14622:	00ee2423          	sw	a4,8(t3) # 10008 <register_fini-0xa8>
   14626:	00fe2623          	sw	a5,12(t3)
   1462a:	00002097          	auipc	ra,0x2
   1462e:	aa4080e7          	jalr	ra,-1372(ra) # 160ce <_Bfree>
   14632:	060a3023          	sd	zero,96(s4)
   14636:	188c                	c.addi4spn	a1,sp,112
   14638:	0088                	c.addi4spn	a0,sp,64
   1463a:	00000097          	auipc	ra,0x0
   1463e:	e70080e7          	jalr	ra,-400(ra) # 144aa <e113toe.isra.0>
   14642:	08215683          	lhu	a3,130(sp)
   14646:	67a1                	c.lui	a5,0x8
   14648:	17fd                	c.addi	a5,-1
   1464a:	00f6f5b3          	and	a1,a3,a5
   1464e:	00f59c63          	bne	a1,a5,14666 <_ldtoa_r+0xa4>
   14652:	189c                	c.addi4spn	a5,sp,112
   14654:	08210613          	addi	a2,sp,130
   14658:	0007d703          	lhu	a4,0(a5) # 8000 <register_fini-0x80b0>
   1465c:	0789                	c.addi	a5,2
   1465e:	14071fe3          	bne	a4,zero,14fbc <_ldtoa_r+0x9fa>
   14662:	fec79be3          	bne	a5,a2,14658 <_ldtoa_r+0x96>
   14666:	82bd                	c.srli	a3,0xf
   14668:	c014                	c.sw	a3,0(s0)
   1466a:	478d                	c.li	a5,3
   1466c:	6efb0063          	beq	s6,a5,14d4c <_ldtoa_r+0x78a>
   14670:	47d1                	c.li	a5,20
   14672:	e03e                	c.sdsp	a5,0(sp)
   14674:	140b17e3          	bne	s6,zero,14fc2 <_ldtoa_r+0xa00>
   14678:	19412703          	lw	a4,404(sp)
   1467c:	67a1                	c.lui	a5,0x8
   1467e:	17fd                	c.addi	a5,-1
   14680:	ec3a                	c.sdsp	a4,24(sp)
   14682:	00f59c63          	bne	a1,a5,1469a <_ldtoa_r+0xd8>
   14686:	189c                	c.addi4spn	a5,sp,112
   14688:	08210693          	addi	a3,sp,130
   1468c:	0007d703          	lhu	a4,0(a5) # 8000 <register_fini-0x80b0>
   14690:	0789                	c.addi	a5,2
   14692:	70071e63          	bne	a4,zero,14dae <_ldtoa_r+0x7ec>
   14696:	fed79be3          	bne	a5,a3,1468c <_ldtoa_r+0xca>
   1469a:	09000793          	addi	a5,zero,144
   1469e:	18f12a23          	sw	a5,404(sp)
   146a2:	0918                	c.addi4spn	a4,sp,144
   146a4:	189c                	c.addi4spn	a5,sp,112
   146a6:	0150                	c.addi4spn	a2,sp,132
   146a8:	0007d683          	lhu	a3,0(a5)
   146ac:	0789                	c.addi	a5,2
   146ae:	0709                	c.addi	a4,2
   146b0:	fed71f23          	sh	a3,-2(a4) # ffffffffffff7ffe <__BSS_END__+0xfffffffffffd7c7e>
   146b4:	fec79ae3          	bne	a5,a2,146a8 <_ldtoa_r+0xe6>
   146b8:	0a215603          	lhu	a2,162(sp)
   146bc:	4901                	c.li	s2,0
   146be:	00f65793          	srli	a5,a2,0xf
   146c2:	44079b63          	bne	a5,zero,14b18 <_ldtoa_r+0x556>
   146c6:	4681                	c.li	a3,0
   146c8:	191c                	c.addi4spn	a5,sp,176
   146ca:	00009717          	auipc	a4,0x9
   146ce:	f2670713          	addi	a4,a4,-218 # 1d5f0 <eone>
   146d2:	0c410d93          	addi	s11,sp,196
   146d6:	a019                	c.j	146dc <_ldtoa_r+0x11a>
   146d8:	00075683          	lhu	a3,0(a4)
   146dc:	0789                	c.addi	a5,2
   146de:	fed79f23          	sh	a3,-2(a5)
   146e2:	0709                	c.addi	a4,2
   146e4:	ffb79ae3          	bne	a5,s11,146d8 <_ldtoa_r+0x116>
   146e8:	12060c63          	beq	a2,zero,14820 <_ldtoa_r+0x25e>
   146ec:	67a1                	c.lui	a5,0x8
   146ee:	17fd                	c.addi	a5,-1
   146f0:	22f607e3          	beq	a2,a5,1511e <_ldtoa_r+0xb5c>
   146f4:	0a011783          	lh	a5,160(sp)
   146f8:	2807d8e3          	bge	a5,zero,15188 <_ldtoa_r+0xbc6>
   146fc:	090c                	c.addi4spn	a1,sp,144
   146fe:	00009517          	auipc	a0,0x9
   14702:	ef250513          	addi	a0,a0,-270 # 1d5f0 <eone>
   14706:	fffff097          	auipc	ra,0xfffff
   1470a:	08c080e7          	jalr	ra,140(ra) # 13792 <ecmp>
   1470e:	12050363          	beq	a0,zero,14834 <_ldtoa_r+0x272>
   14712:	6a054d63          	blt	a0,zero,14dcc <_ldtoa_r+0x80a>
   14716:	0a215783          	lhu	a5,162(sp)
   1471a:	300790e3          	bne	a5,zero,1521a <_ldtoa_r+0xc58>
   1471e:	0a011783          	lh	a5,160(sp)
   14722:	4481                	c.li	s1,0
   14724:	19010993          	addi	s3,sp,400
   14728:	0207c363          	blt	a5,zero,1474e <_ldtoa_r+0x18c>
   1472c:	00009417          	auipc	s0,0x9
   14730:	fcc40413          	addi	s0,s0,-52 # 1d6f8 <etens+0xf0>
   14734:	0910                	c.addi4spn	a2,sp,144
   14736:	86ce                	c.mv	a3,s3
   14738:	85b2                	c.mv	a1,a2
   1473a:	8522                	c.mv	a0,s0
   1473c:	fffff097          	auipc	ra,0xfffff
   14740:	56a080e7          	jalr	ra,1386(ra) # 13ca6 <emul>
   14744:	0a011783          	lh	a5,160(sp)
   14748:	34fd                	c.addiw	s1,-1
   1474a:	fe07d5e3          	bge	a5,zero,14734 <_ldtoa_r+0x172>
   1474e:	1980                	c.addi4spn	s0,sp,240
   14750:	10810b93          	addi	s7,sp,264
   14754:	8722                	c.mv	a4,s0
   14756:	091c                	c.addi4spn	a5,sp,144
   14758:	1150                	c.addi4spn	a2,sp,164
   1475a:	0007d683          	lhu	a3,0(a5) # 8000 <register_fini-0x80b0>
   1475e:	0789                	c.addi	a5,2
   14760:	0709                	c.addi	a4,2
   14762:	fed71f23          	sh	a3,-2(a4)
   14766:	fec79ae3          	bne	a5,a2,1475a <_ldtoa_r+0x198>
   1476a:	4681                	c.li	a3,0
   1476c:	191c                	c.addi4spn	a5,sp,176
   1476e:	00009717          	auipc	a4,0x9
   14772:	e8270713          	addi	a4,a4,-382 # 1d5f0 <eone>
   14776:	a019                	c.j	1477c <_ldtoa_r+0x1ba>
   14778:	00075683          	lhu	a3,0(a4)
   1477c:	0789                	c.addi	a5,2
   1477e:	fed79f23          	sh	a3,-2(a5)
   14782:	0709                	c.addi	a4,2
   14784:	ffb79ae3          	bne	a5,s11,14778 <_ldtoa_r+0x1b6>
   14788:	7afd                	c.lui	s5,0xfffff
   1478a:	00009c17          	auipc	s8,0x9
   1478e:	e7ec0c13          	addi	s8,s8,-386 # 1d608 <etens>
   14792:	00009c97          	auipc	s9,0x9
   14796:	f7ec8c93          	addi	s9,s9,-130 # 1d710 <emtens>
   1479a:	00009d97          	auipc	s11,0x9
   1479e:	e56d8d93          	addi	s11,s11,-426 # 1d5f0 <eone>
   147a2:	00009d17          	auipc	s10,0x9
   147a6:	f56d0d13          	addi	s10,s10,-170 # 1d6f8 <etens+0xf0>
   147aa:	a019                	c.j	147b0 <_ldtoa_r+0x1ee>
   147ac:	0cd1                	c.addi	s9,20
   147ae:	0c51                	c.addi	s8,20
   147b0:	85a2                	c.mv	a1,s0
   147b2:	856e                	c.mv	a0,s11
   147b4:	fffff097          	auipc	ra,0xfffff
   147b8:	fde080e7          	jalr	ra,-34(ra) # 13792 <ecmp>
   147bc:	04a05463          	bge	zero,a0,14804 <_ldtoa_r+0x242>
   147c0:	85a2                	c.mv	a1,s0
   147c2:	8566                	c.mv	a0,s9
   147c4:	fffff097          	auipc	ra,0xfffff
   147c8:	fce080e7          	jalr	ra,-50(ra) # 13792 <ecmp>
   147cc:	02054463          	blt	a0,zero,147f4 <_ldtoa_r+0x232>
   147d0:	86ce                	c.mv	a3,s3
   147d2:	8622                	c.mv	a2,s0
   147d4:	85a2                	c.mv	a1,s0
   147d6:	8562                	c.mv	a0,s8
   147d8:	fffff097          	auipc	ra,0xfffff
   147dc:	4ce080e7          	jalr	ra,1230(ra) # 13ca6 <emul>
   147e0:	1910                	c.addi4spn	a2,sp,176
   147e2:	86ce                	c.mv	a3,s3
   147e4:	85b2                	c.mv	a1,a2
   147e6:	8562                	c.mv	a0,s8
   147e8:	fffff097          	auipc	ra,0xfffff
   147ec:	4be080e7          	jalr	ra,1214(ra) # 13ca6 <emul>
   147f0:	009a84bb          	addw	s1,s5,s1
   147f4:	01fad79b          	srliw	a5,s5,0x1f
   147f8:	015787bb          	addw	a5,a5,s5
   147fc:	4017da9b          	sraiw	s5,a5,0x1
   14800:	fbac16e3          	bne	s8,s10,147ac <_ldtoa_r+0x1ea>
   14804:	1910                	c.addi4spn	a2,sp,176
   14806:	86ce                	c.mv	a3,s3
   14808:	00009597          	auipc	a1,0x9
   1480c:	de858593          	addi	a1,a1,-536 # 1d5f0 <eone>
   14810:	8532                	c.mv	a0,a2
   14812:	00000097          	auipc	ra,0x0
   14816:	848080e7          	jalr	ra,-1976(ra) # 1405a <ediv>
   1481a:	15010a93          	addi	s5,sp,336
   1481e:	a01d                	c.j	14844 <_ldtoa_r+0x282>
   14820:	091c                	c.addi4spn	a5,sp,144
   14822:	0a210693          	addi	a3,sp,162
   14826:	0007d703          	lhu	a4,0(a5)
   1482a:	ec0719e3          	bne	a4,zero,146fc <_ldtoa_r+0x13a>
   1482e:	0789                	c.addi	a5,2
   14830:	fef69be3          	bne	a3,a5,14826 <_ldtoa_r+0x264>
   14834:	4481                	c.li	s1,0
   14836:	15010a93          	addi	s5,sp,336
   1483a:	19010993          	addi	s3,sp,400
   1483e:	1980                	c.addi4spn	s0,sp,240
   14840:	10810b93          	addi	s7,sp,264
   14844:	85a2                	c.mv	a1,s0
   14846:	1908                	c.addi4spn	a0,sp,176
   14848:	fffff097          	auipc	ra,0xfffff
   1484c:	eb4080e7          	jalr	ra,-332(ra) # 136fc <emovi>
   14850:	1918                	c.addi4spn	a4,sp,176
   14852:	87a2                	c.mv	a5,s0
   14854:	0007d683          	lhu	a3,0(a5)
   14858:	0789                	c.addi	a5,2
   1485a:	0709                	c.addi	a4,2
   1485c:	fed71f23          	sh	a3,-2(a4)
   14860:	ff779ae3          	bne	a5,s7,14854 <_ldtoa_r+0x292>
   14864:	85a2                	c.mv	a1,s0
   14866:	0908                	c.addi4spn	a0,sp,144
   14868:	0c011423          	sh	zero,200(sp)
   1486c:	fffff097          	auipc	ra,0xfffff
   14870:	e90080e7          	jalr	ra,-368(ra) # 136fc <emovi>
   14874:	091c                	c.addi4spn	a5,sp,144
   14876:	00045703          	lhu	a4,0(s0)
   1487a:	0409                	c.addi	s0,2
   1487c:	0789                	c.addi	a5,2
   1487e:	fee79f23          	sh	a4,-2(a5)
   14882:	ff741ae3          	bne	s0,s7,14876 <_ldtoa_r+0x2b4>
   14886:	864e                	c.mv	a2,s3
   14888:	090c                	c.addi4spn	a1,sp,144
   1488a:	1908                	c.addi4spn	a0,sp,176
   1488c:	0a011423          	sh	zero,168(sp)
   14890:	fffff097          	auipc	ra,0xfffff
   14894:	30e080e7          	jalr	ra,782(ra) # 13b9e <eiremain>
   14898:	1dc15c03          	lhu	s8,476(sp)
   1489c:	100c1e63          	bne	s8,zero,149b8 <_ldtoa_r+0x3f6>
   148a0:	00009417          	auipc	s0,0x9
   148a4:	d3840413          	addi	s0,s0,-712 # 1d5d8 <ezero>
   148a8:	0a810d13          	addi	s10,sp,168
   148ac:	09210d93          	addi	s11,sp,146
   148b0:	0d210c93          	addi	s9,sp,210
   148b4:	85a2                	c.mv	a1,s0
   148b6:	0908                	c.addi4spn	a0,sp,144
   148b8:	fffff097          	auipc	ra,0xfffff
   148bc:	eda080e7          	jalr	ra,-294(ra) # 13792 <ecmp>
   148c0:	cd65                	c.beqz	a0,149b8 <_ldtoa_r+0x3f6>
   148c2:	4701                	c.li	a4,0
   148c4:	86ea                	c.mv	a3,s10
   148c6:	0006d783          	lhu	a5,0(a3)
   148ca:	00f7d613          	srli	a2,a5,0xf
   148ce:	c219                	c.beqz	a2,148d4 <_ldtoa_r+0x312>
   148d0:	00176713          	ori	a4,a4,1
   148d4:	0017979b          	slliw	a5,a5,0x1
   148d8:	17c2                	c.slli	a5,0x30
   148da:	00277613          	andi	a2,a4,2
   148de:	93c1                	c.srli	a5,0x30
   148e0:	c219                	c.beqz	a2,148e6 <_ldtoa_r+0x324>
   148e2:	0017e793          	ori	a5,a5,1
   148e6:	0017171b          	slliw	a4,a4,0x1
   148ea:	00f69023          	sh	a5,0(a3)
   148ee:	1742                	c.slli	a4,0x30
   148f0:	16f9                	c.addi	a3,-2
   148f2:	9341                	c.srli	a4,0x30
   148f4:	fdb699e3          	bne	a3,s11,148c6 <_ldtoa_r+0x304>
   148f8:	0998                	c.addi4spn	a4,sp,208
   148fa:	091c                	c.addi4spn	a5,sp,144
   148fc:	0007d683          	lhu	a3,0(a5)
   14900:	0789                	c.addi	a5,2
   14902:	0709                	c.addi	a4,2
   14904:	fed71f23          	sh	a3,-2(a4)
   14908:	ffa79ae3          	bne	a5,s10,148fc <_ldtoa_r+0x33a>
   1490c:	0e011423          	sh	zero,232(sp)
   14910:	4701                	c.li	a4,0
   14912:	11b4                	c.addi4spn	a3,sp,232
   14914:	0006d783          	lhu	a5,0(a3)
   14918:	00f7d613          	srli	a2,a5,0xf
   1491c:	c219                	c.beqz	a2,14922 <_ldtoa_r+0x360>
   1491e:	00176713          	ori	a4,a4,1
   14922:	0017979b          	slliw	a5,a5,0x1
   14926:	17c2                	c.slli	a5,0x30
   14928:	00277613          	andi	a2,a4,2
   1492c:	93c1                	c.srli	a5,0x30
   1492e:	c219                	c.beqz	a2,14934 <_ldtoa_r+0x372>
   14930:	0017e793          	ori	a5,a5,1
   14934:	0017171b          	slliw	a4,a4,0x1
   14938:	00f69023          	sh	a5,0(a3)
   1493c:	1742                	c.slli	a4,0x30
   1493e:	16f9                	c.addi	a3,-2
   14940:	9341                	c.srli	a4,0x30
   14942:	fd9699e3          	bne	a3,s9,14914 <_ldtoa_r+0x352>
   14946:	4701                	c.li	a4,0
   14948:	11b4                	c.addi4spn	a3,sp,232
   1494a:	0006d783          	lhu	a5,0(a3)
   1494e:	00f7d613          	srli	a2,a5,0xf
   14952:	c219                	c.beqz	a2,14958 <_ldtoa_r+0x396>
   14954:	00176713          	ori	a4,a4,1
   14958:	0017979b          	slliw	a5,a5,0x1
   1495c:	17c2                	c.slli	a5,0x30
   1495e:	00277613          	andi	a2,a4,2
   14962:	93c1                	c.srli	a5,0x30
   14964:	c219                	c.beqz	a2,1496a <_ldtoa_r+0x3a8>
   14966:	0017e793          	ori	a5,a5,1
   1496a:	0017171b          	slliw	a4,a4,0x1
   1496e:	00f69023          	sh	a5,0(a3)
   14972:	1742                	c.slli	a4,0x30
   14974:	16f9                	c.addi	a3,-2
   14976:	9341                	c.srli	a4,0x30
   14978:	fd9699e3          	bne	a3,s9,1494a <_ldtoa_r+0x388>
   1497c:	4601                	c.li	a2,0
   1497e:	86ea                	c.mv	a3,s10
   14980:	11b8                	c.addi4spn	a4,sp,232
   14982:	0006d583          	lhu	a1,0(a3)
   14986:	00075783          	lhu	a5,0(a4)
   1498a:	16f9                	c.addi	a3,-2
   1498c:	1779                	c.addi	a4,-2
   1498e:	97ae                	c.add	a5,a1
   14990:	97b2                	c.add	a5,a2
   14992:	0107d613          	srli	a2,a5,0x10
   14996:	00f69123          	sh	a5,2(a3)
   1499a:	8a05                	c.andi	a2,1
   1499c:	ff9713e3          	bne	a4,s9,14982 <_ldtoa_r+0x3c0>
   149a0:	864e                	c.mv	a2,s3
   149a2:	090c                	c.addi4spn	a1,sp,144
   149a4:	1908                	c.addi4spn	a0,sp,176
   149a6:	fffff097          	auipc	ra,0xfffff
   149aa:	1f8080e7          	jalr	ra,504(ra) # 13b9e <eiremain>
   149ae:	1dc15783          	lhu	a5,476(sp)
   149b2:	34fd                	c.addiw	s1,-1
   149b4:	d381                	c.beqz	a5,148b4 <_ldtoa_r+0x2f2>
   149b6:	8c3e                	c.mv	s8,a5
   149b8:	02d00793          	addi	a5,zero,45
   149bc:	00091463          	bne	s2,zero,149c4 <_ldtoa_r+0x402>
   149c0:	02000793          	addi	a5,zero,32
   149c4:	14f10823          	sb	a5,336(sp)
   149c8:	470d                	c.li	a4,3
   149ca:	6782                	c.ldsp	a5,0(sp)
   149cc:	00eb1363          	bne	s6,a4,149d2 <_ldtoa_r+0x410>
   149d0:	9fa5                	c.addw	a5,s1
   149d2:	02a00713          	addi	a4,zero,42
   149d6:	0007841b          	addiw	s0,a5,0
   149da:	00f75463          	bge	a4,a5,149e2 <_ldtoa_r+0x420>
   149de:	02a00413          	addi	s0,zero,42
   149e2:	4729                	c.li	a4,10
   149e4:	3aec0263          	beq	s8,a4,14d88 <_ldtoa_r+0x7c6>
   149e8:	030c0c1b          	addiw	s8,s8,48
   149ec:	02e00713          	addi	a4,zero,46
   149f0:	158108a3          	sb	s8,337(sp)
   149f4:	14e10923          	sb	a4,338(sp)
   149f8:	1207c863          	blt	a5,zero,14b28 <_ldtoa_r+0x566>
   149fc:	15310913          	addi	s2,sp,339
   14a00:	4b81                	c.li	s7,0
   14a02:	0d010c13          	addi	s8,sp,208
   14a06:	0a810d13          	addi	s10,sp,168
   14a0a:	09210d93          	addi	s11,sp,146
   14a0e:	0d210c93          	addi	s9,sp,210
   14a12:	4701                	c.li	a4,0
   14a14:	86ea                	c.mv	a3,s10
   14a16:	0006d783          	lhu	a5,0(a3)
   14a1a:	00f7d613          	srli	a2,a5,0xf
   14a1e:	c219                	c.beqz	a2,14a24 <_ldtoa_r+0x462>
   14a20:	00176713          	ori	a4,a4,1
   14a24:	0017979b          	slliw	a5,a5,0x1
   14a28:	17c2                	c.slli	a5,0x30
   14a2a:	00277613          	andi	a2,a4,2
   14a2e:	93c1                	c.srli	a5,0x30
   14a30:	c219                	c.beqz	a2,14a36 <_ldtoa_r+0x474>
   14a32:	0017e793          	ori	a5,a5,1
   14a36:	0017171b          	slliw	a4,a4,0x1
   14a3a:	00f69023          	sh	a5,0(a3)
   14a3e:	1742                	c.slli	a4,0x30
   14a40:	16f9                	c.addi	a3,-2
   14a42:	9341                	c.srli	a4,0x30
   14a44:	fdb699e3          	bne	a3,s11,14a16 <_ldtoa_r+0x454>
   14a48:	8762                	c.mv	a4,s8
   14a4a:	091c                	c.addi4spn	a5,sp,144
   14a4c:	0007d683          	lhu	a3,0(a5)
   14a50:	0789                	c.addi	a5,2
   14a52:	0709                	c.addi	a4,2
   14a54:	fed71f23          	sh	a3,-2(a4)
   14a58:	ffa79ae3          	bne	a5,s10,14a4c <_ldtoa_r+0x48a>
   14a5c:	0e011423          	sh	zero,232(sp)
   14a60:	4701                	c.li	a4,0
   14a62:	11b4                	c.addi4spn	a3,sp,232
   14a64:	0006d783          	lhu	a5,0(a3)
   14a68:	00f7d613          	srli	a2,a5,0xf
   14a6c:	c219                	c.beqz	a2,14a72 <_ldtoa_r+0x4b0>
   14a6e:	00176713          	ori	a4,a4,1
   14a72:	0017979b          	slliw	a5,a5,0x1
   14a76:	17c2                	c.slli	a5,0x30
   14a78:	00277613          	andi	a2,a4,2
   14a7c:	93c1                	c.srli	a5,0x30
   14a7e:	c219                	c.beqz	a2,14a84 <_ldtoa_r+0x4c2>
   14a80:	0017e793          	ori	a5,a5,1
   14a84:	0017171b          	slliw	a4,a4,0x1
   14a88:	00f69023          	sh	a5,0(a3)
   14a8c:	1742                	c.slli	a4,0x30
   14a8e:	16f9                	c.addi	a3,-2
   14a90:	9341                	c.srli	a4,0x30
   14a92:	fd9699e3          	bne	a3,s9,14a64 <_ldtoa_r+0x4a2>
   14a96:	4701                	c.li	a4,0
   14a98:	11b4                	c.addi4spn	a3,sp,232
   14a9a:	0006d783          	lhu	a5,0(a3)
   14a9e:	00f7d613          	srli	a2,a5,0xf
   14aa2:	c219                	c.beqz	a2,14aa8 <_ldtoa_r+0x4e6>
   14aa4:	00176713          	ori	a4,a4,1
   14aa8:	0017979b          	slliw	a5,a5,0x1
   14aac:	17c2                	c.slli	a5,0x30
   14aae:	00277613          	andi	a2,a4,2
   14ab2:	93c1                	c.srli	a5,0x30
   14ab4:	c219                	c.beqz	a2,14aba <_ldtoa_r+0x4f8>
   14ab6:	0017e793          	ori	a5,a5,1
   14aba:	0017171b          	slliw	a4,a4,0x1
   14abe:	00f69023          	sh	a5,0(a3)
   14ac2:	1742                	c.slli	a4,0x30
   14ac4:	16f9                	c.addi	a3,-2
   14ac6:	9341                	c.srli	a4,0x30
   14ac8:	fd9699e3          	bne	a3,s9,14a9a <_ldtoa_r+0x4d8>
   14acc:	4601                	c.li	a2,0
   14ace:	86ea                	c.mv	a3,s10
   14ad0:	11b8                	c.addi4spn	a4,sp,232
   14ad2:	0006d583          	lhu	a1,0(a3)
   14ad6:	00075783          	lhu	a5,0(a4)
   14ada:	16f9                	c.addi	a3,-2
   14adc:	1779                	c.addi	a4,-2
   14ade:	97ae                	c.add	a5,a1
   14ae0:	97b2                	c.add	a5,a2
   14ae2:	0107d613          	srli	a2,a5,0x10
   14ae6:	00f69123          	sh	a5,2(a3)
   14aea:	8a05                	c.andi	a2,1
   14aec:	ff9713e3          	bne	a4,s9,14ad2 <_ldtoa_r+0x510>
   14af0:	864e                	c.mv	a2,s3
   14af2:	090c                	c.addi4spn	a1,sp,144
   14af4:	1908                	c.addi4spn	a0,sp,176
   14af6:	fffff097          	auipc	ra,0xfffff
   14afa:	0a8080e7          	jalr	ra,168(ra) # 13b9e <eiremain>
   14afe:	1dc15603          	lhu	a2,476(sp)
   14b02:	00190793          	addi	a5,s2,1
   14b06:	2b85                	c.addiw	s7,1
   14b08:	0306071b          	addiw	a4,a2,48
   14b0c:	fee78fa3          	sb	a4,-1(a5)
   14b10:	03744263          	blt	s0,s7,14b34 <_ldtoa_r+0x572>
   14b14:	893e                	c.mv	s2,a5
   14b16:	bdf5                	c.j	14a12 <_ldtoa_r+0x450>
   14b18:	1646                	c.slli	a2,0x31
   14b1a:	9245                	c.srli	a2,0x31
   14b1c:	67c1                	c.lui	a5,0x10
   14b1e:	0ac11123          	sh	a2,162(sp)
   14b22:	fff78913          	addi	s2,a5,-1 # ffff <register_fini-0xb1>
   14b26:	b645                	c.j	146c6 <_ldtoa_r+0x104>
   14b28:	1dc15603          	lhu	a2,476(sp)
   14b2c:	15210913          	addi	s2,sp,338
   14b30:	15310793          	addi	a5,sp,339
   14b34:	4711                	c.li	a4,4
   14b36:	04c75763          	bge	a4,a2,14b84 <_ldtoa_r+0x5c2>
   14b3a:	4715                	c.li	a4,5
   14b3c:	66e60563          	beq	a2,a4,151a6 <_ldtoa_r+0xbe4>
   14b40:	ffe7c703          	lbu	a4,-2(a5)
   14b44:	ffe78613          	addi	a2,a5,-2
   14b48:	07f77593          	andi	a1,a4,127
   14b4c:	872e                	c.mv	a4,a1
   14b4e:	02044663          	blt	s0,zero,14b7a <_ldtoa_r+0x5b8>
   14b52:	02e00513          	addi	a0,zero,46
   14b56:	03800813          	addi	a6,zero,56
   14b5a:	03000893          	addi	a7,zero,48
   14b5e:	87ba                	c.mv	a5,a4
   14b60:	5ea58463          	beq	a1,a0,15148 <_ldtoa_r+0xb86>
   14b64:	5ef85e63          	bge	a6,a5,15160 <_ldtoa_r+0xb9e>
   14b68:	fff64783          	lbu	a5,-1(a2) # 7fff <register_fini-0x80b1>
   14b6c:	01160023          	sb	a7,0(a2)
   14b70:	167d                	c.addi	a2,-1
   14b72:	07f7f593          	andi	a1,a5,127
   14b76:	87ae                	c.mv	a5,a1
   14b78:	b7e5                	c.j	14b60 <_ldtoa_r+0x59e>
   14b7a:	03100713          	addi	a4,zero,49
   14b7e:	fee78f23          	sb	a4,-2(a5)
   14b82:	2485                	c.addiw	s1,1
   14b84:	8626                	c.mv	a2,s1
   14b86:	00009597          	auipc	a1,0x9
   14b8a:	97258593          	addi	a1,a1,-1678 # 1d4f8 <zeroes.0+0x70>
   14b8e:	854a                	c.mv	a0,s2
   14b90:	00002097          	auipc	ra,0x2
   14b94:	754080e7          	jalr	ra,1876(ra) # 172e4 <sprintf>
   14b98:	08215783          	lhu	a5,130(sp)
   14b9c:	6762                	c.ldsp	a4,24(sp)
   14b9e:	1a912023          	sw	s1,416(sp)
   14ba2:	fff7c793          	xori	a5,a5,-1
   14ba6:	18e12a23          	sw	a4,404(sp)
   14baa:	03179713          	slli	a4,a5,0x31
   14bae:	14070263          	beq	a4,zero,14cf2 <_ldtoa_r+0x730>
   14bb2:	66c2                	c.ldsp	a3,16(sp)
   14bb4:	15014703          	lbu	a4,336(sp)
   14bb8:	0014879b          	addiw	a5,s1,1
   14bbc:	c29c                	c.sw	a5,0(a3)
   14bbe:	87d6                	c.mv	a5,s5
   14bc0:	c70d                	c.beqz	a4,14bea <_ldtoa_r+0x628>
   14bc2:	02e00693          	addi	a3,zero,46
   14bc6:	18d70f63          	beq	a4,a3,14d64 <_ldtoa_r+0x7a2>
   14bca:	0017c703          	lbu	a4,1(a5)
   14bce:	0785                	c.addi	a5,1
   14bd0:	fb7d                	c.bnez	a4,14bc6 <_ldtoa_r+0x604>
   14bd2:	04500693          	addi	a3,zero,69
   14bd6:	00fae563          	bltu	s5,a5,14be0 <_ldtoa_r+0x61e>
   14bda:	a801                	c.j	14bea <_ldtoa_r+0x628>
   14bdc:	01578763          	beq	a5,s5,14bea <_ldtoa_r+0x628>
   14be0:	fff7c703          	lbu	a4,-1(a5)
   14be4:	17fd                	c.addi	a5,-1
   14be6:	fed71be3          	bne	a4,a3,14bdc <_ldtoa_r+0x61a>
   14bea:	00078023          	sb	zero,0(a5)
   14bee:	87d6                	c.mv	a5,s5
   14bf0:	02000693          	addi	a3,zero,32
   14bf4:	02d00613          	addi	a2,zero,45
   14bf8:	0007c703          	lbu	a4,0(a5)
   14bfc:	00d70463          	beq	a4,a3,14c04 <_ldtoa_r+0x642>
   14c00:	00c71463          	bne	a4,a2,14c08 <_ldtoa_r+0x646>
   14c04:	0785                	c.addi	a5,1
   14c06:	bfcd                	c.j	14bf8 <_ldtoa_r+0x636>
   14c08:	8456                	c.mv	s0,s5
   14c0a:	a021                	c.j	14c12 <_ldtoa_r+0x650>
   14c0c:	0007c703          	lbu	a4,0(a5)
   14c10:	8436                	c.mv	s0,a3
   14c12:	00e40023          	sb	a4,0(s0)
   14c16:	00140693          	addi	a3,s0,1
   14c1a:	0785                	c.addi	a5,1
   14c1c:	fb65                	c.bnez	a4,14c0c <_ldtoa_r+0x64a>
   14c1e:	4789                	c.li	a5,2
   14c20:	fff44683          	lbu	a3,-1(s0)
   14c24:	0efb0763          	beq	s6,a5,14d12 <_ldtoa_r+0x750>
   14c28:	6702                	c.ldsp	a4,0(sp)
   14c2a:	87ba                	c.mv	a5,a4
   14c2c:	00975363          	bge	a4,s1,14c32 <_ldtoa_r+0x670>
   14c30:	87a6                	c.mv	a5,s1
   14c32:	03000613          	addi	a2,zero,48
   14c36:	0007871b          	addiw	a4,a5,0
   14c3a:	02c69463          	bne	a3,a2,14c62 <_ldtoa_r+0x6a0>
   14c3e:	415407b3          	sub	a5,s0,s5
   14c42:	02f75063          	bge	a4,a5,14c62 <_ldtoa_r+0x6a0>
   14c46:	03000693          	addi	a3,zero,48
   14c4a:	a029                	c.j	14c54 <_ldtoa_r+0x692>
   14c4c:	415407b3          	sub	a5,s0,s5
   14c50:	00f75963          	bge	a4,a5,14c62 <_ldtoa_r+0x6a0>
   14c54:	ffe44783          	lbu	a5,-2(s0)
   14c58:	fe040fa3          	sb	zero,-1(s0)
   14c5c:	147d                	c.addi	s0,-1
   14c5e:	fed787e3          	beq	a5,a3,14c4c <_ldtoa_r+0x68a>
   14c62:	478d                	c.li	a5,3
   14c64:	0cfb0163          	beq	s6,a5,14d26 <_ldtoa_r+0x764>
   14c68:	67a2                	c.ldsp	a5,8(sp)
   14c6a:	060a2423          	sw	zero,104(s4)
   14c6e:	0097891b          	addiw	s2,a5,9
   14c72:	47fd                	c.li	a5,31
   14c74:	0d27fa63          	bgeu	a5,s2,14d48 <_ldtoa_r+0x786>
   14c78:	4685                	c.li	a3,1
   14c7a:	4791                	c.li	a5,4
   14c7c:	0017979b          	slliw	a5,a5,0x1
   14c80:	01c78713          	addi	a4,a5,28
   14c84:	0006859b          	addiw	a1,a3,0
   14c88:	2685                	c.addiw	a3,1
   14c8a:	fee979e3          	bgeu	s2,a4,14c7c <_ldtoa_r+0x6ba>
   14c8e:	06ba2423          	sw	a1,104(s4)
   14c92:	8552                	c.mv	a0,s4
   14c94:	00001097          	auipc	ra,0x1
   14c98:	3d0080e7          	jalr	ra,976(ra) # 16064 <_Balloc>
   14c9c:	84aa                	c.mv	s1,a0
   14c9e:	6c050263          	beq	a0,zero,15362 <_ldtoa_r+0xda0>
   14ca2:	06aa3023          	sd	a0,96(s4)
   14ca6:	85d6                	c.mv	a1,s5
   14ca8:	00003097          	auipc	ra,0x3
   14cac:	866080e7          	jalr	ra,-1946(ra) # 1750e <strcpy>
   14cb0:	7702                	c.ldsp	a4,32(sp)
   14cb2:	c709                	c.beqz	a4,14cbc <_ldtoa_r+0x6fa>
   14cb4:	415407b3          	sub	a5,s0,s5
   14cb8:	97a6                	c.add	a5,s1
   14cba:	e31c                	c.sd	a5,0(a4)
   14cbc:	24813083          	ld	ra,584(sp)
   14cc0:	24013403          	ld	s0,576(sp)
   14cc4:	23013903          	ld	s2,560(sp)
   14cc8:	22813983          	ld	s3,552(sp)
   14ccc:	22013a03          	ld	s4,544(sp)
   14cd0:	21813a83          	ld	s5,536(sp)
   14cd4:	21013b03          	ld	s6,528(sp)
   14cd8:	20813b83          	ld	s7,520(sp)
   14cdc:	20013c03          	ld	s8,512(sp)
   14ce0:	7cfe                	c.ldsp	s9,504(sp)
   14ce2:	7d5e                	c.ldsp	s10,496(sp)
   14ce4:	7dbe                	c.ldsp	s11,488(sp)
   14ce6:	8526                	c.mv	a0,s1
   14ce8:	23813483          	ld	s1,568(sp)
   14cec:	25010113          	addi	sp,sp,592
   14cf0:	8082                	c.jr	ra
   14cf2:	189c                	c.addi4spn	a5,sp,112
   14cf4:	08210693          	addi	a3,sp,130
   14cf8:	0007d703          	lhu	a4,0(a5)
   14cfc:	0789                	c.addi	a5,2
   14cfe:	46071563          	bne	a4,zero,15168 <_ldtoa_r+0xba6>
   14d02:	fed79be3          	bne	a5,a3,14cf8 <_ldtoa_r+0x736>
   14d06:	6742                	c.ldsp	a4,16(sp)
   14d08:	6789                	c.lui	a5,0x2
   14d0a:	70f78793          	addi	a5,a5,1807 # 270f <register_fini-0xd9a1>
   14d0e:	c31c                	c.sw	a5,0(a4)
   14d10:	bdf9                	c.j	14bee <_ldtoa_r+0x62c>
   14d12:	03000793          	addi	a5,zero,48
   14d16:	f4f699e3          	bne	a3,a5,14c68 <_ldtoa_r+0x6a6>
   14d1a:	415407b3          	sub	a5,s0,s5
   14d1e:	4705                	c.li	a4,1
   14d20:	f2f743e3          	blt	a4,a5,14c46 <_ldtoa_r+0x684>
   14d24:	b791                	c.j	14c68 <_ldtoa_r+0x6a6>
   14d26:	6782                	c.ldsp	a5,0(sp)
   14d28:	9cbd                	c.addw	s1,a5
   14d2a:	3c04cb63          	blt	s1,zero,15100 <_ldtoa_r+0xb3e>
   14d2e:	67c2                	c.ldsp	a5,16(sp)
   14d30:	6722                	c.ldsp	a4,8(sp)
   14d32:	439c                	c.lw	a5,0(a5)
   14d34:	9fb9                	c.addw	a5,a4
   14d36:	e43e                	c.sdsp	a5,8(sp)
   14d38:	67a2                	c.ldsp	a5,8(sp)
   14d3a:	060a2423          	sw	zero,104(s4)
   14d3e:	0037891b          	addiw	s2,a5,3
   14d42:	47fd                	c.li	a5,31
   14d44:	f327eae3          	bltu	a5,s2,14c78 <_ldtoa_r+0x6b6>
   14d48:	4581                	c.li	a1,0
   14d4a:	b7a1                	c.j	14c92 <_ldtoa_r+0x6d0>
   14d4c:	67a2                	c.ldsp	a5,8(sp)
   14d4e:	02a00713          	addi	a4,zero,42
   14d52:	8bbe                	c.mv	s7,a5
   14d54:	00f75463          	bge	a4,a5,14d5c <_ldtoa_r+0x79a>
   14d58:	02a00b93          	addi	s7,zero,42
   14d5c:	000b879b          	addiw	a5,s7,0
   14d60:	e03e                	c.sdsp	a5,0(sp)
   14d62:	ba19                	c.j	14678 <_ldtoa_r+0xb6>
   14d64:	0007c703          	lbu	a4,0(a5)
   14d68:	e60705e3          	beq	a4,zero,14bd2 <_ldtoa_r+0x610>
   14d6c:	0017c703          	lbu	a4,1(a5)
   14d70:	0785                	c.addi	a5,1
   14d72:	fee78fa3          	sb	a4,-1(a5)
   14d76:	e4070ee3          	beq	a4,zero,14bd2 <_ldtoa_r+0x610>
   14d7a:	0017c703          	lbu	a4,1(a5)
   14d7e:	0785                	c.addi	a5,1
   14d80:	fee78fa3          	sb	a4,-1(a5)
   14d84:	f765                	c.bnez	a4,14d6c <_ldtoa_r+0x7aa>
   14d86:	b5b1                	c.j	14bd2 <_ldtoa_r+0x610>
   14d88:	03100713          	addi	a4,zero,49
   14d8c:	14e108a3          	sb	a4,337(sp)
   14d90:	02e00713          	addi	a4,zero,46
   14d94:	14e10923          	sb	a4,338(sp)
   14d98:	2485                	c.addiw	s1,1
   14d9a:	20f05c63          	bge	zero,a5,14fb2 <_ldtoa_r+0x9f0>
   14d9e:	03000793          	addi	a5,zero,48
   14da2:	14f109a3          	sb	a5,339(sp)
   14da6:	347d                	c.addiw	s0,-1
   14da8:	15410913          	addi	s2,sp,340
   14dac:	b991                	c.j	14a00 <_ldtoa_r+0x43e>
   14dae:	15010a93          	addi	s5,sp,336
   14db2:	00009597          	auipc	a1,0x9
   14db6:	81e58593          	addi	a1,a1,-2018 # 1d5d0 <zeroes.0+0x148>
   14dba:	8556                	c.mv	a0,s5
   14dbc:	6489                	c.lui	s1,0x2
   14dbe:	00002097          	auipc	ra,0x2
   14dc2:	526080e7          	jalr	ra,1318(ra) # 172e4 <sprintf>
   14dc6:	70f48493          	addi	s1,s1,1807 # 270f <register_fini-0xd9a1>
   14dca:	b3f9                	c.j	14b98 <_ldtoa_r+0x5d6>
   14dcc:	0d010c13          	addi	s8,sp,208
   14dd0:	8762                	c.mv	a4,s8
   14dd2:	091c                	c.addi4spn	a5,sp,144
   14dd4:	1150                	c.addi4spn	a2,sp,164
   14dd6:	0007d683          	lhu	a3,0(a5)
   14dda:	0789                	c.addi	a5,2
   14ddc:	0709                	c.addi	a4,2
   14dde:	fed71f23          	sh	a3,-2(a4)
   14de2:	fec79ae3          	bne	a5,a2,14dd6 <_ldtoa_r+0x814>
   14de6:	6791                	c.lui	a5,0x4
   14de8:	08e78793          	addi	a5,a5,142 # 408e <register_fini-0xc022>
   14dec:	0ef11123          	sh	a5,226(sp)
   14df0:	67a1                	c.lui	a5,0x8
   14df2:	17fd                	c.addi	a5,-1
   14df4:	f43e                	c.sdsp	a5,40(sp)
   14df6:	77f1                	c.lui	a5,0xffffc
   14df8:	2789                	c.addiw	a5,2
   14dfa:	4cc1                	c.li	s9,16
   14dfc:	4481                	c.li	s1,0
   14dfe:	00009d17          	auipc	s10,0x9
   14e02:	8aad0d13          	addi	s10,s10,-1878 # 1d6a8 <etens+0xa0>
   14e06:	15010a93          	addi	s5,sp,336
   14e0a:	19010993          	addi	s3,sp,400
   14e0e:	1980                	c.addi4spn	s0,sp,240
   14e10:	0c210b93          	addi	s7,sp,194
   14e14:	da3e                	c.swsp	a5,52(sp)
   14e16:	86ce                	c.mv	a3,s3
   14e18:	1910                	c.addi4spn	a2,sp,176
   14e1a:	85e2                	c.mv	a1,s8
   14e1c:	856a                	c.mv	a0,s10
   14e1e:	fffff097          	auipc	ra,0xfffff
   14e22:	23c080e7          	jalr	ra,572(ra) # 1405a <ediv>
   14e26:	08b8                	c.addi4spn	a4,sp,88
   14e28:	191c                	c.addi4spn	a5,sp,176
   14e2a:	0007d683          	lhu	a3,0(a5) # ffffffffffffc000 <__BSS_END__+0xfffffffffffdbc80>
   14e2e:	0789                	c.addi	a5,2
   14e30:	0709                	c.addi	a4,2
   14e32:	fed71f23          	sh	a3,-2(a4)
   14e36:	ffb79ae3          	bne	a5,s11,14e2a <_ldtoa_r+0x868>
   14e3a:	77a2                	c.ldsp	a5,40(sp)
   14e3c:	06a15803          	lhu	a6,106(sp)
   14e40:	00f875b3          	and	a1,a6,a5
   14e44:	57d2                	c.lwsp	a5,52(sp)
   14e46:	9fad                	c.addw	a5,a1
   14e48:	853e                	c.mv	a0,a5
   14e4a:	2cf05263          	bge	zero,a5,1510e <_ldtoa_r+0xb4c>
   14e4e:	09000593          	addi	a1,zero,144
   14e52:	9d9d                	c.subw	a1,a5
   14e54:	8722                	c.mv	a4,s0
   14e56:	08bc                	c.addi4spn	a5,sp,88
   14e58:	10f0                	c.addi4spn	a2,sp,108
   14e5a:	0007d683          	lhu	a3,0(a5)
   14e5e:	0789                	c.addi	a5,2
   14e60:	0709                	c.addi	a4,2
   14e62:	fed71f23          	sh	a3,-2(a4)
   14e66:	fec79ae3          	bne	a5,a2,14e5a <_ldtoa_r+0x898>
   14e6a:	04b05c63          	bge	zero,a1,14ec2 <_ldtoa_r+0x900>
   14e6e:	47bd                	c.li	a5,15
   14e70:	8722                	c.mv	a4,s0
   14e72:	02b7d763          	bge	a5,a1,14ea0 <_ldtoa_r+0x8de>
   14e76:	08000693          	addi	a3,zero,128
   14e7a:	9e89                	c.subw	a3,a0
   14e7c:	0046d69b          	srliw	a3,a3,0x4
   14e80:	0016871b          	addiw	a4,a3,1
   14e84:	0706                	c.slli	a4,0x1
   14e86:	9722                	c.add	a4,s0
   14e88:	87a2                	c.mv	a5,s0
   14e8a:	0789                	c.addi	a5,2
   14e8c:	fe079f23          	sh	zero,-2(a5)
   14e90:	fef71de3          	bne	a4,a5,14e8a <_ldtoa_r+0x8c8>
   14e94:	08000593          	addi	a1,zero,128
   14e98:	9d89                	c.subw	a1,a0
   14e9a:	0046969b          	slliw	a3,a3,0x4
   14e9e:	9d95                	c.subw	a1,a3
   14ea0:	00008797          	auipc	a5,0x8
   14ea4:	73878793          	addi	a5,a5,1848 # 1d5d8 <ezero>
   14ea8:	0586                	c.slli	a1,0x1
   14eaa:	95be                	c.add	a1,a5
   14eac:	2405d683          	lhu	a3,576(a1)
   14eb0:	00075783          	lhu	a5,0(a4)
   14eb4:	8ff5                	c.and	a5,a3
   14eb6:	00f71023          	sh	a5,0(a4)
   14eba:	00f85813          	srli	a6,a6,0xf
   14ebe:	10081563          	bne	a6,zero,14fc8 <_ldtoa_r+0xa06>
   14ec2:	191c                	c.addi4spn	a5,sp,176
   14ec4:	8722                	c.mv	a4,s0
   14ec6:	0007d603          	lhu	a2,0(a5)
   14eca:	00075683          	lhu	a3,0(a4)
   14ece:	02d61263          	bne	a2,a3,14ef2 <_ldtoa_r+0x930>
   14ed2:	0789                	c.addi	a5,2
   14ed4:	0709                	c.addi	a4,2
   14ed6:	fefb98e3          	bne	s7,a5,14ec6 <_ldtoa_r+0x904>
   14eda:	8762                	c.mv	a4,s8
   14edc:	191c                	c.addi4spn	a5,sp,176
   14ede:	0007d683          	lhu	a3,0(a5)
   14ee2:	0789                	c.addi	a5,2
   14ee4:	0709                	c.addi	a4,2
   14ee6:	fed71f23          	sh	a3,-2(a4)
   14eea:	ffb79ae3          	bne	a5,s11,14ede <_ldtoa_r+0x91c>
   14eee:	009c84bb          	addw	s1,s9,s1
   14ef2:	0d51                	c.addi	s10,20
   14ef4:	00009797          	auipc	a5,0x9
   14ef8:	81878793          	addi	a5,a5,-2024 # 1d70c <etens+0x104>
   14efc:	001cdc93          	srli	s9,s9,0x1
   14f00:	f0fd1be3          	bne	s10,a5,14e16 <_ldtoa_r+0x854>
   14f04:	0e215783          	lhu	a5,226(sp)
   14f08:	0a215703          	lhu	a4,162(sp)
   14f0c:	11d0                	c.addi4spn	a2,sp,228
   14f0e:	9fb9                	c.addw	a5,a4
   14f10:	7771                	c.lui	a4,0xffffc
   14f12:	f727071b          	addiw	a4,a4,-142
   14f16:	9fb9                	c.addw	a5,a4
   14f18:	0ef11123          	sh	a5,226(sp)
   14f1c:	0918                	c.addi4spn	a4,sp,144
   14f1e:	87e2                	c.mv	a5,s8
   14f20:	0007d683          	lhu	a3,0(a5)
   14f24:	0789                	c.addi	a5,2
   14f26:	0709                	c.addi	a4,2
   14f28:	fed71f23          	sh	a3,-2(a4) # ffffffffffffbffe <__BSS_END__+0xfffffffffffdbc7e>
   14f2c:	fec79ae3          	bne	a5,a2,14f20 <_ldtoa_r+0x95e>
   14f30:	4681                	c.li	a3,0
   14f32:	191c                	c.addi4spn	a5,sp,176
   14f34:	00008717          	auipc	a4,0x8
   14f38:	6bc70713          	addi	a4,a4,1724 # 1d5f0 <eone>
   14f3c:	a019                	c.j	14f42 <_ldtoa_r+0x980>
   14f3e:	00075683          	lhu	a3,0(a4)
   14f42:	0789                	c.addi	a5,2
   14f44:	fed79f23          	sh	a3,-2(a5)
   14f48:	0709                	c.addi	a4,2
   14f4a:	ffb79ae3          	bne	a5,s11,14f3e <_ldtoa_r+0x97c>
   14f4e:	6c85                	c.lui	s9,0x1
   14f50:	00008d97          	auipc	s11,0x8
   14f54:	6b8d8d93          	addi	s11,s11,1720 # 1d608 <etens>
   14f58:	00008d17          	auipc	s10,0x8
   14f5c:	7a0d0d13          	addi	s10,s10,1952 # 1d6f8 <etens+0xf0>
   14f60:	a031                	c.j	14f6c <_ldtoa_r+0x9aa>
   14f62:	001cdc93          	srli	s9,s9,0x1
   14f66:	1dad8d63          	beq	s11,s10,15140 <_ldtoa_r+0xb7e>
   14f6a:	0dd1                	c.addi	s11,20
   14f6c:	85e2                	c.mv	a1,s8
   14f6e:	856a                	c.mv	a0,s10
   14f70:	fffff097          	auipc	ra,0xfffff
   14f74:	822080e7          	jalr	ra,-2014(ra) # 13792 <ecmp>
   14f78:	1ca04463          	blt	zero,a0,15140 <_ldtoa_r+0xb7e>
   14f7c:	85e2                	c.mv	a1,s8
   14f7e:	856e                	c.mv	a0,s11
   14f80:	fffff097          	auipc	ra,0xfffff
   14f84:	812080e7          	jalr	ra,-2030(ra) # 13792 <ecmp>
   14f88:	fca04de3          	blt	zero,a0,14f62 <_ldtoa_r+0x9a0>
   14f8c:	86ce                	c.mv	a3,s3
   14f8e:	8662                	c.mv	a2,s8
   14f90:	85e2                	c.mv	a1,s8
   14f92:	856e                	c.mv	a0,s11
   14f94:	fffff097          	auipc	ra,0xfffff
   14f98:	0c6080e7          	jalr	ra,198(ra) # 1405a <ediv>
   14f9c:	1910                	c.addi4spn	a2,sp,176
   14f9e:	86ce                	c.mv	a3,s3
   14fa0:	85b2                	c.mv	a1,a2
   14fa2:	856e                	c.mv	a0,s11
   14fa4:	fffff097          	auipc	ra,0xfffff
   14fa8:	d02080e7          	jalr	ra,-766(ra) # 13ca6 <emul>
   14fac:	009c84bb          	addw	s1,s9,s1
   14fb0:	bf4d                	c.j	14f62 <_ldtoa_r+0x9a0>
   14fb2:	15310913          	addi	s2,sp,339
   14fb6:	bc0797e3          	bne	a5,zero,14b84 <_ldtoa_r+0x5c2>
   14fba:	b499                	c.j	14a00 <_ldtoa_r+0x43e>
   14fbc:	4681                	c.li	a3,0
   14fbe:	eaaff06f          	jal	zero,14668 <_ldtoa_r+0xa6>
   14fc2:	67a2                	c.ldsp	a5,8(sp)
   14fc4:	37fd                	c.addiw	a5,-1
   14fc6:	b361                	c.j	14d4e <_ldtoa_r+0x78c>
   14fc8:	08bc                	c.addi4spn	a5,sp,88
   14fca:	8722                	c.mv	a4,s0
   14fcc:	a039                	c.j	14fda <_ldtoa_r+0xa18>
   14fce:	0789                	c.addi	a5,2
   14fd0:	06a10693          	addi	a3,sp,106
   14fd4:	0709                	c.addi	a4,2
   14fd6:	eef686e3          	beq	a3,a5,14ec2 <_ldtoa_r+0x900>
   14fda:	0007d603          	lhu	a2,0(a5)
   14fde:	00075683          	lhu	a3,0(a4)
   14fe2:	fed606e3          	beq	a2,a3,14fce <_ldtoa_r+0xa0c>
   14fe6:	10215783          	lhu	a5,258(sp)
   14fea:	7722                	c.ldsp	a4,40(sp)
   14fec:	8ff9                	c.and	a5,a4
   14fee:	30e78963          	beq	a5,a4,15300 <_ldtoa_r+0xd3e>
   14ff2:	0a0c                	c.addi4spn	a1,sp,272
   14ff4:	00008517          	auipc	a0,0x8
   14ff8:	5fc50513          	addi	a0,a0,1532 # 1d5f0 <eone>
   14ffc:	ffffe097          	auipc	ra,0xffffe
   15000:	700080e7          	jalr	ra,1792(ra) # 136fc <emovi>
   15004:	1a0c                	c.addi4spn	a1,sp,304
   15006:	8522                	c.mv	a0,s0
   15008:	ffffe097          	auipc	ra,0xffffe
   1500c:	6f4080e7          	jalr	ra,1780(ra) # 136fc <emovi>
   15010:	11015703          	lhu	a4,272(sp)
   15014:	13215603          	lhu	a2,306(sp)
   15018:	11215503          	lhu	a0,274(sp)
   1501c:	fff74713          	xori	a4,a4,-1
   15020:	1742                	c.slli	a4,0x30
   15022:	9341                	c.srli	a4,0x30
   15024:	10e11823          	sh	a4,272(sp)
   15028:	40c505b3          	sub	a1,a0,a2
   1502c:	86b2                	c.mv	a3,a2
   1502e:	04b05e63          	bge	zero,a1,1508a <_ldtoa_r+0xac8>
   15032:	85d6                	c.mv	a1,s5
   15034:	1a14                	c.addi4spn	a3,sp,304
   15036:	02bc                	c.addi4spn	a5,sp,328
   15038:	0006d803          	lhu	a6,0(a3)
   1503c:	0689                	c.addi	a3,2
   1503e:	0589                	c.addi	a1,2
   15040:	ff059f23          	sh	a6,-2(a1)
   15044:	fef69ae3          	bne	a3,a5,15038 <_ldtoa_r+0xa76>
   15048:	16011423          	sh	zero,360(sp)
   1504c:	1a14                	c.addi4spn	a3,sp,304
   1504e:	0a0c                	c.addi4spn	a1,sp,272
   15050:	a019                	c.j	15056 <_ldtoa_r+0xa94>
   15052:	0005d703          	lhu	a4,0(a1)
   15056:	0689                	c.addi	a3,2
   15058:	fee69f23          	sh	a4,-2(a3)
   1505c:	0589                	c.addi	a1,2
   1505e:	fef69ae3          	bne	a3,a5,15052 <_ldtoa_r+0xa90>
   15062:	14011423          	sh	zero,328(sp)
   15066:	0a18                	c.addi4spn	a4,sp,272
   15068:	87d6                	c.mv	a5,s5
   1506a:	12ac                	c.addi4spn	a1,sp,360
   1506c:	0007d683          	lhu	a3,0(a5)
   15070:	0789                	c.addi	a5,2
   15072:	0709                	c.addi	a4,2
   15074:	fed71f23          	sh	a3,-2(a4)
   15078:	feb79ae3          	bne	a5,a1,1506c <_ldtoa_r+0xaaa>
   1507c:	13215683          	lhu	a3,306(sp)
   15080:	40a605b3          	sub	a1,a2,a0
   15084:	12011423          	sh	zero,296(sp)
   15088:	8636                	c.mv	a2,a3
   1508a:	2a058063          	beq	a1,zero,1532a <_ldtoa_r+0xd68>
   1508e:	fc36                	c.sdsp	a3,56(sp)
   15090:	f6f00793          	addi	a5,zero,-145
   15094:	04f5cf63          	blt	a1,a5,150f2 <_ldtoa_r+0xb30>
   15098:	2581                	c.addiw	a1,0
   1509a:	0a08                	c.addi4spn	a0,sp,272
   1509c:	ffffe097          	auipc	ra,0xffffe
   150a0:	4d0080e7          	jalr	ra,1232(ra) # 1356c <eshift.part.0>
   150a4:	76e2                	c.ldsp	a3,56(sp)
   150a6:	85aa                	c.mv	a1,a0
   150a8:	02bc                	c.addi4spn	a5,sp,328
   150aa:	1238                	c.addi4spn	a4,sp,296
   150ac:	11015503          	lhu	a0,272(sp)
   150b0:	13015603          	lhu	a2,304(sp)
   150b4:	2ec50f63          	beq	a0,a2,153b2 <_ldtoa_r+0xdf0>
   150b8:	4601                	c.li	a2,0
   150ba:	13210813          	addi	a6,sp,306
   150be:	8532                	c.mv	a0,a2
   150c0:	0007d603          	lhu	a2,0(a5)
   150c4:	00075883          	lhu	a7,0(a4)
   150c8:	17f9                	c.addi	a5,-2
   150ca:	8e09                	c.sub	a2,a0
   150cc:	41160633          	sub	a2,a2,a7
   150d0:	01065513          	srli	a0,a2,0x10
   150d4:	00c79123          	sh	a2,2(a5)
   150d8:	8905                	c.andi	a0,1
   150da:	1779                	c.addi	a4,-2
   150dc:	ff0792e3          	bne	a5,a6,150c0 <_ldtoa_r+0xafe>
   150e0:	4605                	c.li	a2,1
   150e2:	87ce                	c.mv	a5,s3
   150e4:	04000713          	addi	a4,zero,64
   150e8:	1a08                	c.addi4spn	a0,sp,304
   150ea:	ffffe097          	auipc	ra,0xffffe
   150ee:	794080e7          	jalr	ra,1940(ra) # 1387e <emdnorm>
   150f2:	85a2                	c.mv	a1,s0
   150f4:	1a08                	c.addi4spn	a0,sp,304
   150f6:	ffffe097          	auipc	ra,0xffffe
   150fa:	2d8080e7          	jalr	ra,728(ra) # 133ce <emovo.constprop.0>
   150fe:	b3d1                	c.j	14ec2 <_ldtoa_r+0x900>
   15100:	67c2                	c.ldsp	a5,16(sp)
   15102:	14010823          	sb	zero,336(sp)
   15106:	8456                	c.mv	s0,s5
   15108:	0007a023          	sw	zero,0(a5)
   1510c:	b135                	c.j	14d38 <_ldtoa_r+0x776>
   1510e:	87a2                	c.mv	a5,s0
   15110:	0258                	c.addi4spn	a4,sp,260
   15112:	0789                	c.addi	a5,2
   15114:	fe079f23          	sh	zero,-2(a5)
   15118:	fee79de3          	bne	a5,a4,15112 <_ldtoa_r+0xb50>
   1511c:	bb79                	c.j	14eba <_ldtoa_r+0x8f8>
   1511e:	15010a93          	addi	s5,sp,336
   15122:	0c090b63          	beq	s2,zero,151f8 <_ldtoa_r+0xc36>
   15126:	00008597          	auipc	a1,0x8
   1512a:	3aa58593          	addi	a1,a1,938 # 1d4d0 <zeroes.0+0x48>
   1512e:	8556                	c.mv	a0,s5
   15130:	6489                	c.lui	s1,0x2
   15132:	00002097          	auipc	ra,0x2
   15136:	1b2080e7          	jalr	ra,434(ra) # 172e4 <sprintf>
   1513a:	70f48493          	addi	s1,s1,1807 # 270f <register_fini-0xd9a1>
   1513e:	bca9                	c.j	14b98 <_ldtoa_r+0x5d6>
   15140:	10810b93          	addi	s7,sp,264
   15144:	f00ff06f          	jal	zero,14844 <_ldtoa_r+0x282>
   15148:	fff64783          	lbu	a5,-1(a2)
   1514c:	03800713          	addi	a4,zero,56
   15150:	0cf77163          	bgeu	a4,a5,15212 <_ldtoa_r+0xc50>
   15154:	03100793          	addi	a5,zero,49
   15158:	2485                	c.addiw	s1,1
   1515a:	fef60fa3          	sb	a5,-1(a2)
   1515e:	b41d                	c.j	14b84 <_ldtoa_r+0x5c2>
   15160:	2585                	c.addiw	a1,1
   15162:	00b60023          	sb	a1,0(a2)
   15166:	bc39                	c.j	14b84 <_ldtoa_r+0x5c2>
   15168:	189c                	c.addi4spn	a5,sp,112
   1516a:	08210693          	addi	a3,sp,130
   1516e:	a019                	c.j	15174 <_ldtoa_r+0xbb2>
   15170:	a4d781e3          	beq	a5,a3,14bb2 <_ldtoa_r+0x5f0>
   15174:	0007d703          	lhu	a4,0(a5)
   15178:	0789                	c.addi	a5,2
   1517a:	db7d                	c.beqz	a4,15170 <_ldtoa_r+0xbae>
   1517c:	6742                	c.ldsp	a4,16(sp)
   1517e:	6789                	c.lui	a5,0x2
   15180:	70f78793          	addi	a5,a5,1807 # 270f <register_fini-0xd9a1>
   15184:	c31c                	c.sw	a5,0(a4)
   15186:	b4a5                	c.j	14bee <_ldtoa_r+0x62c>
   15188:	15010a93          	addi	s5,sp,336
   1518c:	00008597          	auipc	a1,0x8
   15190:	36458593          	addi	a1,a1,868 # 1d4f0 <zeroes.0+0x68>
   15194:	8556                	c.mv	a0,s5
   15196:	6489                	c.lui	s1,0x2
   15198:	00002097          	auipc	ra,0x2
   1519c:	14c080e7          	jalr	ra,332(ra) # 172e4 <sprintf>
   151a0:	70f48493          	addi	s1,s1,1807 # 270f <register_fini-0xd9a1>
   151a4:	bad5                	c.j	14b98 <_ldtoa_r+0x5d6>
   151a6:	190c                	c.addi4spn	a1,sp,176
   151a8:	0908                	c.addi4spn	a0,sp,144
   151aa:	f43e                	c.sdsp	a5,40(sp)
   151ac:	ffffe097          	auipc	ra,0xffffe
   151b0:	222080e7          	jalr	ra,546(ra) # 133ce <emovo.constprop.0>
   151b4:	00008597          	auipc	a1,0x8
   151b8:	42458593          	addi	a1,a1,1060 # 1d5d8 <ezero>
   151bc:	1908                	c.addi4spn	a0,sp,176
   151be:	ffffe097          	auipc	ra,0xffffe
   151c2:	5d4080e7          	jalr	ra,1492(ra) # 13792 <ecmp>
   151c6:	77a2                	c.ldsp	a5,40(sp)
   151c8:	96051ce3          	bne	a0,zero,14b40 <_ldtoa_r+0x57e>
   151cc:	9a044ce3          	blt	s0,zero,14b84 <_ldtoa_r+0x5c2>
   151d0:	ffe7c703          	lbu	a4,-2(a5)
   151d4:	fd270613          	addi	a2,a4,-46
   151d8:	00163613          	sltiu	a2,a2,1
   151dc:	fff64613          	xori	a2,a2,-1
   151e0:	964a                	c.add	a2,s2
   151e2:	00064603          	lbu	a2,0(a2)
   151e6:	8a05                	c.andi	a2,1
   151e8:	98060ee3          	beq	a2,zero,14b84 <_ldtoa_r+0x5c2>
   151ec:	07f77593          	andi	a1,a4,127
   151f0:	ffe78613          	addi	a2,a5,-2
   151f4:	872e                	c.mv	a4,a1
   151f6:	bab1                	c.j	14b52 <_ldtoa_r+0x590>
   151f8:	00008597          	auipc	a1,0x8
   151fc:	2e858593          	addi	a1,a1,744 # 1d4e0 <zeroes.0+0x58>
   15200:	8556                	c.mv	a0,s5
   15202:	6489                	c.lui	s1,0x2
   15204:	00002097          	auipc	ra,0x2
   15208:	0e0080e7          	jalr	ra,224(ra) # 172e4 <sprintf>
   1520c:	70f48493          	addi	s1,s1,1807 # 270f <register_fini-0xd9a1>
   15210:	b261                	c.j	14b98 <_ldtoa_r+0x5d6>
   15212:	2785                	c.addiw	a5,1
   15214:	fef60fa3          	sb	a5,-1(a2)
   15218:	b2b5                	c.j	14b84 <_ldtoa_r+0x5c2>
   1521a:	1980                	c.addi4spn	s0,sp,240
   1521c:	85a2                	c.mv	a1,s0
   1521e:	0908                	c.addi4spn	a0,sp,144
   15220:	6c11                	c.lui	s8,0x4
   15222:	ffffe097          	auipc	ra,0xffffe
   15226:	4da080e7          	jalr	ra,1242(ra) # 136fc <emovi>
   1522a:	4481                	c.li	s1,0
   1522c:	10810b93          	addi	s7,sp,264
   15230:	0e810993          	addi	s3,sp,232
   15234:	0f210a93          	addi	s5,sp,242
   15238:	1c79                	c.addi	s8,-2
   1523a:	fd500c93          	addi	s9,zero,-43
   1523e:	10815783          	lhu	a5,264(sp)
   15242:	8b9d                	c.andi	a5,7
   15244:	e7c5                	c.bnez	a5,152ec <_ldtoa_r+0xd2a>
   15246:	0998                	c.addi4spn	a4,sp,208
   15248:	87a2                	c.mv	a5,s0
   1524a:	0007d683          	lhu	a3,0(a5)
   1524e:	0789                	c.addi	a5,2
   15250:	0709                	c.addi	a4,2
   15252:	fed71f23          	sh	a3,-2(a4)
   15256:	ff779ae3          	bne	a5,s7,1524a <_ldtoa_r+0xc88>
   1525a:	0988                	c.addi4spn	a0,sp,208
   1525c:	0e011423          	sh	zero,232(sp)
   15260:	ffffe097          	auipc	ra,0xffffe
   15264:	05e080e7          	jalr	ra,94(ra) # 132be <eshdn1>
   15268:	0988                	c.addi4spn	a0,sp,208
   1526a:	ffffe097          	auipc	ra,0xffffe
   1526e:	054080e7          	jalr	ra,84(ra) # 132be <eshdn1>
   15272:	4601                	c.li	a2,0
   15274:	86ce                	c.mv	a3,s3
   15276:	875e                	c.mv	a4,s7
   15278:	0006d583          	lhu	a1,0(a3)
   1527c:	00075783          	lhu	a5,0(a4)
   15280:	16f9                	c.addi	a3,-2
   15282:	1779                	c.addi	a4,-2
   15284:	97ae                	c.add	a5,a1
   15286:	97b2                	c.add	a5,a2
   15288:	0107d613          	srli	a2,a5,0x10
   1528c:	00f69123          	sh	a5,2(a3)
   15290:	8a05                	c.andi	a2,1
   15292:	ff5713e3          	bne	a4,s5,15278 <_ldtoa_r+0xcb6>
   15296:	0d215783          	lhu	a5,210(sp)
   1529a:	0d415703          	lhu	a4,212(sp)
   1529e:	278d                	c.addiw	a5,3
   152a0:	0cf11923          	sh	a5,210(sp)
   152a4:	cf11                	c.beqz	a4,152c0 <_ldtoa_r+0xcfe>
   152a6:	0988                	c.addi4spn	a0,sp,208
   152a8:	ffffe097          	auipc	ra,0xffffe
   152ac:	016080e7          	jalr	ra,22(ra) # 132be <eshdn1>
   152b0:	0d215783          	lhu	a5,210(sp)
   152b4:	0d415703          	lhu	a4,212(sp)
   152b8:	2785                	c.addiw	a5,1
   152ba:	0cf11923          	sh	a5,210(sp)
   152be:	f765                	c.bnez	a4,152a6 <_ldtoa_r+0xce4>
   152c0:	0e815783          	lhu	a5,232(sp)
   152c4:	e785                	c.bnez	a5,152ec <_ldtoa_r+0xd2a>
   152c6:	0d215783          	lhu	a5,210(sp)
   152ca:	02fc6163          	bltu	s8,a5,152ec <_ldtoa_r+0xd2a>
   152ce:	8722                	c.mv	a4,s0
   152d0:	099c                	c.addi4spn	a5,sp,208
   152d2:	0007d683          	lhu	a3,0(a5)
   152d6:	0789                	c.addi	a5,2
   152d8:	0709                	c.addi	a4,2
   152da:	fed71f23          	sh	a3,-2(a4)
   152de:	ff379ae3          	bne	a5,s3,152d2 <_ldtoa_r+0xd10>
   152e2:	10011423          	sh	zero,264(sp)
   152e6:	34fd                	c.addiw	s1,-1
   152e8:	f5949be3          	bne	s1,s9,1523e <_ldtoa_r+0xc7c>
   152ec:	090c                	c.addi4spn	a1,sp,144
   152ee:	8522                	c.mv	a0,s0
   152f0:	ffffe097          	auipc	ra,0xffffe
   152f4:	0de080e7          	jalr	ra,222(ra) # 133ce <emovo.constprop.0>
   152f8:	19010993          	addi	s3,sp,400
   152fc:	c58ff06f          	jal	zero,14754 <_ldtoa_r+0x192>
   15300:	87a2                	c.mv	a5,s0
   15302:	0007d703          	lhu	a4,0(a5)
   15306:	0789                	c.addi	a5,2
   15308:	ba071de3          	bne	a4,zero,14ec2 <_ldtoa_r+0x900>
   1530c:	10210713          	addi	a4,sp,258
   15310:	fee799e3          	bne	a5,a4,15302 <_ldtoa_r+0xd40>
   15314:	87a2                	c.mv	a5,s0
   15316:	0007d703          	lhu	a4,0(a5)
   1531a:	0789                	c.addi	a5,2
   1531c:	cc071be3          	bne	a4,zero,14ff2 <_ldtoa_r+0xa30>
   15320:	10210713          	addi	a4,sp,258
   15324:	fee799e3          	bne	a5,a4,15316 <_ldtoa_r+0xd54>
   15328:	be69                	c.j	14ec2 <_ldtoa_r+0x900>
   1532a:	1a58                	c.addi4spn	a4,sp,308
   1532c:	0a5c                	c.addi4spn	a5,sp,276
   1532e:	0007d503          	lhu	a0,0(a5)
   15332:	00075583          	lhu	a1,0(a4)
   15336:	0789                	c.addi	a5,2
   15338:	0709                	c.addi	a4,2
   1533a:	04b51463          	bne	a0,a1,15382 <_ldtoa_r+0xdc0>
   1533e:	12a10593          	addi	a1,sp,298
   15342:	feb796e3          	bne	a5,a1,1532e <_ldtoa_r+0xd6c>
   15346:	11015703          	lhu	a4,272(sp)
   1534a:	13015783          	lhu	a5,304(sp)
   1534e:	04f70063          	beq	a4,a5,1538e <_ldtoa_r+0xdcc>
   15352:	87a2                	c.mv	a5,s0
   15354:	0258                	c.addi4spn	a4,sp,260
   15356:	0789                	c.addi	a5,2
   15358:	fe079f23          	sh	zero,-2(a5)
   1535c:	fee79de3          	bne	a5,a4,15356 <_ldtoa_r+0xd94>
   15360:	b68d                	c.j	14ec2 <_ldtoa_r+0x900>
   15362:	6585                	c.lui	a1,0x1
   15364:	00008697          	auipc	a3,0x8
   15368:	19c68693          	addi	a3,a3,412 # 1d500 <zeroes.0+0x78>
   1536c:	4601                	c.li	a2,0
   1536e:	b6e58593          	addi	a1,a1,-1170 # b6e <register_fini-0xf542>
   15372:	00008517          	auipc	a0,0x8
   15376:	1a650513          	addi	a0,a0,422 # 1d518 <zeroes.0+0x90>
   1537a:	00005097          	auipc	ra,0x5
   1537e:	ed0080e7          	jalr	ra,-304(ra) # 1a24a <__assert_func>
   15382:	04a5ed63          	bltu	a1,a0,153dc <_ldtoa_r+0xe1a>
   15386:	4581                	c.li	a1,0
   15388:	02bc                	c.addi4spn	a5,sp,328
   1538a:	1238                	c.addi4spn	a4,sp,296
   1538c:	b305                	c.j	150ac <_ldtoa_r+0xaea>
   1538e:	8736                	c.mv	a4,a3
   15390:	e689                	c.bnez	a3,1539a <_ldtoa_r+0xdd8>
   15392:	13611783          	lh	a5,310(sp)
   15396:	0807dc63          	bge	a5,zero,1542e <_ldtoa_r+0xe6c>
   1539a:	13210713          	addi	a4,sp,306
   1539e:	02bc                	c.addi4spn	a5,sp,328
   153a0:	00075583          	lhu	a1,0(a4)
   153a4:	e1f1                	c.bnez	a1,15468 <_ldtoa_r+0xea6>
   153a6:	0709                	c.addi	a4,2
   153a8:	fee79ce3          	bne	a5,a4,153a0 <_ldtoa_r+0xdde>
   153ac:	12c11923          	sh	a2,306(sp)
   153b0:	b389                	c.j	150f2 <_ldtoa_r+0xb30>
   153b2:	4601                	c.li	a2,0
   153b4:	11210813          	addi	a6,sp,274
   153b8:	0007d883          	lhu	a7,0(a5)
   153bc:	00075503          	lhu	a0,0(a4)
   153c0:	17f9                	c.addi	a5,-2
   153c2:	1779                	c.addi	a4,-2
   153c4:	9546                	c.add	a0,a7
   153c6:	962a                	c.add	a2,a0
   153c8:	01065513          	srli	a0,a2,0x10
   153cc:	00c79123          	sh	a2,2(a5)
   153d0:	00157613          	andi	a2,a0,1
   153d4:	ff0712e3          	bne	a4,a6,153b8 <_ldtoa_r+0xdf6>
   153d8:	4601                	c.li	a2,0
   153da:	b321                	c.j	150e2 <_ldtoa_r+0xb20>
   153dc:	8656                	c.mv	a2,s5
   153de:	1a18                	c.addi4spn	a4,sp,304
   153e0:	02bc                	c.addi4spn	a5,sp,328
   153e2:	00075583          	lhu	a1,0(a4)
   153e6:	0709                	c.addi	a4,2
   153e8:	0609                	c.addi	a2,2
   153ea:	feb61f23          	sh	a1,-2(a2)
   153ee:	fef71ae3          	bne	a4,a5,153e2 <_ldtoa_r+0xe20>
   153f2:	16011423          	sh	zero,360(sp)
   153f6:	1a0c                	c.addi4spn	a1,sp,304
   153f8:	0a10                	c.addi4spn	a2,sp,272
   153fa:	1238                	c.addi4spn	a4,sp,296
   153fc:	00065503          	lhu	a0,0(a2)
   15400:	0609                	c.addi	a2,2
   15402:	0589                	c.addi	a1,2
   15404:	fea59f23          	sh	a0,-2(a1)
   15408:	fee61ae3          	bne	a2,a4,153fc <_ldtoa_r+0xe3a>
   1540c:	14011423          	sh	zero,328(sp)
   15410:	0a08                	c.addi4spn	a0,sp,272
   15412:	8656                	c.mv	a2,s5
   15414:	12ac                	c.addi4spn	a1,sp,360
   15416:	00065803          	lhu	a6,0(a2)
   1541a:	0609                	c.addi	a2,2
   1541c:	0509                	c.addi	a0,2
   1541e:	ff051f23          	sh	a6,-2(a0)
   15422:	feb61ae3          	bne	a2,a1,15416 <_ldtoa_r+0xe54>
   15426:	12011423          	sh	zero,296(sp)
   1542a:	4581                	c.li	a1,0
   1542c:	b141                	c.j	150ac <_ldtoa_r+0xaea>
   1542e:	02b4                	c.addi4spn	a3,sp,328
   15430:	13210813          	addi	a6,sp,306
   15434:	0006d783          	lhu	a5,0(a3)
   15438:	00f7d613          	srli	a2,a5,0xf
   1543c:	c219                	c.beqz	a2,15442 <_ldtoa_r+0xe80>
   1543e:	00176713          	ori	a4,a4,1
   15442:	0017979b          	slliw	a5,a5,0x1
   15446:	17c2                	c.slli	a5,0x30
   15448:	00277613          	andi	a2,a4,2
   1544c:	93c1                	c.srli	a5,0x30
   1544e:	c219                	c.beqz	a2,15454 <_ldtoa_r+0xe92>
   15450:	0017e793          	ori	a5,a5,1
   15454:	0017171b          	slliw	a4,a4,0x1
   15458:	00f69023          	sh	a5,0(a3)
   1545c:	1742                	c.slli	a4,0x30
   1545e:	16f9                	c.addi	a3,-2
   15460:	9341                	c.srli	a4,0x30
   15462:	fd0699e3          	bne	a3,a6,15434 <_ldtoa_r+0xe72>
   15466:	b171                	c.j	150f2 <_ldtoa_r+0xb30>
   15468:	00168613          	addi	a2,a3,1
   1546c:	12c11923          	sh	a2,306(sp)
   15470:	b149                	c.j	150f2 <_ldtoa_r+0xb30>

0000000000015472 <_ldcheck>:
   15472:	6118                	c.ld	a4,0(a0)
   15474:	651c                	c.ld	a5,8(a0)
   15476:	7139                	c.addi16sp	sp,-64
   15478:	850a                	c.mv	a0,sp
   1547a:	080c                	c.addi4spn	a1,sp,16
   1547c:	e03a                	c.sdsp	a4,0(sp)
   1547e:	e43e                	c.sdsp	a5,8(sp)
   15480:	fc06                	c.sdsp	ra,56(sp)
   15482:	fffff097          	auipc	ra,0xfffff
   15486:	028080e7          	jalr	ra,40(ra) # 144aa <e113toe.isra.0>
   1548a:	02215783          	lhu	a5,34(sp)
   1548e:	4501                	c.li	a0,0
   15490:	fff7c793          	xori	a5,a5,-1
   15494:	03179713          	slli	a4,a5,0x31
   15498:	eb19                	c.bnez	a4,154ae <_ldcheck+0x3c>
   1549a:	081c                	c.addi4spn	a5,sp,16
   1549c:	02210693          	addi	a3,sp,34
   154a0:	0007d703          	lhu	a4,0(a5)
   154a4:	0789                	c.addi	a5,2
   154a6:	e719                	c.bnez	a4,154b4 <_ldcheck+0x42>
   154a8:	fed79ce3          	bne	a5,a3,154a0 <_ldcheck+0x2e>
   154ac:	4509                	c.li	a0,2
   154ae:	70e2                	c.ldsp	ra,56(sp)
   154b0:	6121                	c.addi16sp	sp,64
   154b2:	8082                	c.jr	ra
   154b4:	4505                	c.li	a0,1
   154b6:	bfe5                	c.j	154ae <_ldcheck+0x3c>

00000000000154b8 <__localeconv_l>:
   154b8:	10050513          	addi	a0,a0,256
   154bc:	8082                	c.jr	ra

00000000000154be <_localeconv_r>:
   154be:	0000a517          	auipc	a0,0xa
   154c2:	51a50513          	addi	a0,a0,1306 # 1f9d8 <__global_locale+0x100>
   154c6:	8082                	c.jr	ra

00000000000154c8 <localeconv>:
   154c8:	0000a517          	auipc	a0,0xa
   154cc:	51050513          	addi	a0,a0,1296 # 1f9d8 <__global_locale+0x100>
   154d0:	8082                	c.jr	ra

00000000000154d2 <_setlocale_r>:
   154d2:	c61d                	c.beqz	a2,15500 <_setlocale_r+0x2e>
   154d4:	1141                	c.addi	sp,-16
   154d6:	00008597          	auipc	a1,0x8
   154da:	37258593          	addi	a1,a1,882 # 1d848 <bmask+0x30>
   154de:	8532                	c.mv	a0,a2
   154e0:	e022                	c.sdsp	s0,0(sp)
   154e2:	e406                	c.sdsp	ra,8(sp)
   154e4:	8432                	c.mv	s0,a2
   154e6:	00002097          	auipc	ra,0x2
   154ea:	f3e080e7          	jalr	ra,-194(ra) # 17424 <strcmp>
   154ee:	ed11                	c.bnez	a0,1550a <_setlocale_r+0x38>
   154f0:	00008517          	auipc	a0,0x8
   154f4:	35050513          	addi	a0,a0,848 # 1d840 <bmask+0x28>
   154f8:	60a2                	c.ldsp	ra,8(sp)
   154fa:	6402                	c.ldsp	s0,0(sp)
   154fc:	0141                	c.addi	sp,16
   154fe:	8082                	c.jr	ra
   15500:	00008517          	auipc	a0,0x8
   15504:	34050513          	addi	a0,a0,832 # 1d840 <bmask+0x28>
   15508:	8082                	c.jr	ra
   1550a:	00008597          	auipc	a1,0x8
   1550e:	33658593          	addi	a1,a1,822 # 1d840 <bmask+0x28>
   15512:	8522                	c.mv	a0,s0
   15514:	00002097          	auipc	ra,0x2
   15518:	f10080e7          	jalr	ra,-240(ra) # 17424 <strcmp>
   1551c:	d971                	c.beqz	a0,154f0 <_setlocale_r+0x1e>
   1551e:	00008597          	auipc	a1,0x8
   15522:	dba58593          	addi	a1,a1,-582 # 1d2d8 <__clzdi2+0xc0>
   15526:	8522                	c.mv	a0,s0
   15528:	00002097          	auipc	ra,0x2
   1552c:	efc080e7          	jalr	ra,-260(ra) # 17424 <strcmp>
   15530:	d161                	c.beqz	a0,154f0 <_setlocale_r+0x1e>
   15532:	4501                	c.li	a0,0
   15534:	b7d1                	c.j	154f8 <_setlocale_r+0x26>

0000000000015536 <__locale_mb_cur_max>:
   15536:	0000a517          	auipc	a0,0xa
   1553a:	50254503          	lbu	a0,1282(a0) # 1fa38 <__global_locale+0x160>
   1553e:	8082                	c.jr	ra

0000000000015540 <setlocale>:
   15540:	c59d                	c.beqz	a1,1556e <setlocale+0x2e>
   15542:	1141                	c.addi	sp,-16
   15544:	e022                	c.sdsp	s0,0(sp)
   15546:	842e                	c.mv	s0,a1
   15548:	8522                	c.mv	a0,s0
   1554a:	00008597          	auipc	a1,0x8
   1554e:	2fe58593          	addi	a1,a1,766 # 1d848 <bmask+0x30>
   15552:	e406                	c.sdsp	ra,8(sp)
   15554:	00002097          	auipc	ra,0x2
   15558:	ed0080e7          	jalr	ra,-304(ra) # 17424 <strcmp>
   1555c:	ed11                	c.bnez	a0,15578 <setlocale+0x38>
   1555e:	00008517          	auipc	a0,0x8
   15562:	2e250513          	addi	a0,a0,738 # 1d840 <bmask+0x28>
   15566:	60a2                	c.ldsp	ra,8(sp)
   15568:	6402                	c.ldsp	s0,0(sp)
   1556a:	0141                	c.addi	sp,16
   1556c:	8082                	c.jr	ra
   1556e:	00008517          	auipc	a0,0x8
   15572:	2d250513          	addi	a0,a0,722 # 1d840 <bmask+0x28>
   15576:	8082                	c.jr	ra
   15578:	00008597          	auipc	a1,0x8
   1557c:	2c858593          	addi	a1,a1,712 # 1d840 <bmask+0x28>
   15580:	8522                	c.mv	a0,s0
   15582:	00002097          	auipc	ra,0x2
   15586:	ea2080e7          	jalr	ra,-350(ra) # 17424 <strcmp>
   1558a:	d971                	c.beqz	a0,1555e <setlocale+0x1e>
   1558c:	00008597          	auipc	a1,0x8
   15590:	d4c58593          	addi	a1,a1,-692 # 1d2d8 <__clzdi2+0xc0>
   15594:	8522                	c.mv	a0,s0
   15596:	00002097          	auipc	ra,0x2
   1559a:	e8e080e7          	jalr	ra,-370(ra) # 17424 <strcmp>
   1559e:	d161                	c.beqz	a0,1555e <setlocale+0x1e>
   155a0:	4501                	c.li	a0,0
   155a2:	b7d1                	c.j	15566 <setlocale+0x26>

00000000000155a4 <__smakebuf_r>:
   155a4:	0105d783          	lhu	a5,16(a1)
   155a8:	7135                	c.addi16sp	sp,-160
   155aa:	e922                	c.sdsp	s0,144(sp)
   155ac:	ed06                	c.sdsp	ra,152(sp)
   155ae:	e526                	c.sdsp	s1,136(sp)
   155b0:	e14a                	c.sdsp	s2,128(sp)
   155b2:	fcce                	c.sdsp	s3,120(sp)
   155b4:	f8d2                	c.sdsp	s4,112(sp)
   155b6:	0027f713          	andi	a4,a5,2
   155ba:	842e                	c.mv	s0,a1
   155bc:	cf19                	c.beqz	a4,155da <__smakebuf_r+0x36>
   155be:	07758793          	addi	a5,a1,119
   155c2:	e19c                	c.sd	a5,0(a1)
   155c4:	ed9c                	c.sd	a5,24(a1)
   155c6:	4785                	c.li	a5,1
   155c8:	d19c                	c.sw	a5,32(a1)
   155ca:	60ea                	c.ldsp	ra,152(sp)
   155cc:	644a                	c.ldsp	s0,144(sp)
   155ce:	64aa                	c.ldsp	s1,136(sp)
   155d0:	690a                	c.ldsp	s2,128(sp)
   155d2:	79e6                	c.ldsp	s3,120(sp)
   155d4:	7a46                	c.ldsp	s4,112(sp)
   155d6:	610d                	c.addi16sp	sp,160
   155d8:	8082                	c.jr	ra
   155da:	01259583          	lh	a1,18(a1)
   155de:	84aa                	c.mv	s1,a0
   155e0:	0605cd63          	blt	a1,zero,1565a <__smakebuf_r+0xb6>
   155e4:	0030                	c.addi4spn	a2,sp,8
   155e6:	00005097          	auipc	ra,0x5
   155ea:	0aa080e7          	jalr	ra,170(ra) # 1a690 <_fstat_r>
   155ee:	06054463          	blt	a0,zero,15656 <__smakebuf_r+0xb2>
   155f2:	4932                	c.lwsp	s2,12(sp)
   155f4:	67bd                	c.lui	a5,0xf
   155f6:	40000993          	addi	s3,zero,1024
   155fa:	00f97933          	and	s2,s2,a5
   155fe:	6789                	c.lui	a5,0x2
   15600:	40f90933          	sub	s2,s2,a5
   15604:	6785                	c.lui	a5,0x1
   15606:	00193913          	sltiu	s2,s2,1
   1560a:	80078a13          	addi	s4,a5,-2048 # 800 <register_fini-0xf8b0>
   1560e:	85ce                	c.mv	a1,s3
   15610:	8526                	c.mv	a0,s1
   15612:	00000097          	auipc	ra,0x0
   15616:	13e080e7          	jalr	ra,318(ra) # 15750 <_malloc_r>
   1561a:	01041783          	lh	a5,16(s0)
   1561e:	cd31                	c.beqz	a0,1567a <__smakebuf_r+0xd6>
   15620:	ffffd717          	auipc	a4,0xffffd
   15624:	1ba70713          	addi	a4,a4,442 # 127da <_cleanup_r>
   15628:	ecb8                	c.sd	a4,88(s1)
   1562a:	0807e793          	ori	a5,a5,128
   1562e:	00f41823          	sh	a5,16(s0)
   15632:	e008                	c.sd	a0,0(s0)
   15634:	ec08                	c.sd	a0,24(s0)
   15636:	03342023          	sw	s3,32(s0)
   1563a:	06091363          	bne	s2,zero,156a0 <__smakebuf_r+0xfc>
   1563e:	0147e7b3          	or	a5,a5,s4
   15642:	60ea                	c.ldsp	ra,152(sp)
   15644:	00f41823          	sh	a5,16(s0)
   15648:	644a                	c.ldsp	s0,144(sp)
   1564a:	64aa                	c.ldsp	s1,136(sp)
   1564c:	690a                	c.ldsp	s2,128(sp)
   1564e:	79e6                	c.ldsp	s3,120(sp)
   15650:	7a46                	c.ldsp	s4,112(sp)
   15652:	610d                	c.addi16sp	sp,160
   15654:	8082                	c.jr	ra
   15656:	01045783          	lhu	a5,16(s0)
   1565a:	0807f793          	andi	a5,a5,128
   1565e:	4901                	c.li	s2,0
   15660:	cf85                	c.beqz	a5,15698 <__smakebuf_r+0xf4>
   15662:	04000993          	addi	s3,zero,64
   15666:	85ce                	c.mv	a1,s3
   15668:	8526                	c.mv	a0,s1
   1566a:	00000097          	auipc	ra,0x0
   1566e:	0e6080e7          	jalr	ra,230(ra) # 15750 <_malloc_r>
   15672:	01041783          	lh	a5,16(s0)
   15676:	4a01                	c.li	s4,0
   15678:	f545                	c.bnez	a0,15620 <__smakebuf_r+0x7c>
   1567a:	2007f713          	andi	a4,a5,512
   1567e:	f731                	c.bnez	a4,155ca <__smakebuf_r+0x26>
   15680:	9bf1                	c.andi	a5,-4
   15682:	0027e793          	ori	a5,a5,2
   15686:	07740713          	addi	a4,s0,119
   1568a:	00f41823          	sh	a5,16(s0)
   1568e:	4785                	c.li	a5,1
   15690:	e018                	c.sd	a4,0(s0)
   15692:	ec18                	c.sd	a4,24(s0)
   15694:	d01c                	c.sw	a5,32(s0)
   15696:	bf15                	c.j	155ca <__smakebuf_r+0x26>
   15698:	40000993          	addi	s3,zero,1024
   1569c:	4a01                	c.li	s4,0
   1569e:	bf85                	c.j	1560e <__smakebuf_r+0x6a>
   156a0:	01241583          	lh	a1,18(s0)
   156a4:	8526                	c.mv	a0,s1
   156a6:	00005097          	auipc	ra,0x5
   156aa:	02a080e7          	jalr	ra,42(ra) # 1a6d0 <_isatty_r>
   156ae:	e501                	c.bnez	a0,156b6 <__smakebuf_r+0x112>
   156b0:	01041783          	lh	a5,16(s0)
   156b4:	b769                	c.j	1563e <__smakebuf_r+0x9a>
   156b6:	01045783          	lhu	a5,16(s0)
   156ba:	9bf1                	c.andi	a5,-4
   156bc:	0017e793          	ori	a5,a5,1
   156c0:	0107979b          	slliw	a5,a5,0x10
   156c4:	4107d79b          	sraiw	a5,a5,0x10
   156c8:	bf9d                	c.j	1563e <__smakebuf_r+0x9a>

00000000000156ca <__swhatbuf_r>:
   156ca:	7175                	c.addi16sp	sp,-144
   156cc:	e122                	c.sdsp	s0,128(sp)
   156ce:	842e                	c.mv	s0,a1
   156d0:	01259583          	lh	a1,18(a1)
   156d4:	fca6                	c.sdsp	s1,120(sp)
   156d6:	f8ca                	c.sdsp	s2,112(sp)
   156d8:	e506                	c.sdsp	ra,136(sp)
   156da:	84b2                	c.mv	s1,a2
   156dc:	8936                	c.mv	s2,a3
   156de:	0205ce63          	blt	a1,zero,1571a <__swhatbuf_r+0x50>
   156e2:	0030                	c.addi4spn	a2,sp,8
   156e4:	00005097          	auipc	ra,0x5
   156e8:	fac080e7          	jalr	ra,-84(ra) # 1a690 <_fstat_r>
   156ec:	02054763          	blt	a0,zero,1571a <__swhatbuf_r+0x50>
   156f0:	47b2                	c.lwsp	a5,12(sp)
   156f2:	673d                	c.lui	a4,0xf
   156f4:	60aa                	c.ldsp	ra,136(sp)
   156f6:	8ff9                	c.and	a5,a4
   156f8:	6709                	c.lui	a4,0x2
   156fa:	8f99                	c.sub	a5,a4
   156fc:	640a                	c.ldsp	s0,128(sp)
   156fe:	0017b793          	sltiu	a5,a5,1
   15702:	00f92023          	sw	a5,0(s2)
   15706:	40000793          	addi	a5,zero,1024
   1570a:	e09c                	c.sd	a5,0(s1)
   1570c:	6505                	c.lui	a0,0x1
   1570e:	74e6                	c.ldsp	s1,120(sp)
   15710:	7946                	c.ldsp	s2,112(sp)
   15712:	80050513          	addi	a0,a0,-2048 # 800 <register_fini-0xf8b0>
   15716:	6149                	c.addi16sp	sp,144
   15718:	8082                	c.jr	ra
   1571a:	01041783          	lh	a5,16(s0)
   1571e:	00092023          	sw	zero,0(s2)
   15722:	0807f793          	andi	a5,a5,128
   15726:	cb99                	c.beqz	a5,1573c <__swhatbuf_r+0x72>
   15728:	60aa                	c.ldsp	ra,136(sp)
   1572a:	640a                	c.ldsp	s0,128(sp)
   1572c:	04000793          	addi	a5,zero,64
   15730:	e09c                	c.sd	a5,0(s1)
   15732:	7946                	c.ldsp	s2,112(sp)
   15734:	74e6                	c.ldsp	s1,120(sp)
   15736:	4501                	c.li	a0,0
   15738:	6149                	c.addi16sp	sp,144
   1573a:	8082                	c.jr	ra
   1573c:	60aa                	c.ldsp	ra,136(sp)
   1573e:	640a                	c.ldsp	s0,128(sp)
   15740:	40000793          	addi	a5,zero,1024
   15744:	e09c                	c.sd	a5,0(s1)
   15746:	7946                	c.ldsp	s2,112(sp)
   15748:	74e6                	c.ldsp	s1,120(sp)
   1574a:	4501                	c.li	a0,0
   1574c:	6149                	c.addi16sp	sp,144
   1574e:	8082                	c.jr	ra

0000000000015750 <_malloc_r>:
   15750:	711d                	c.addi16sp	sp,-96
   15752:	e4a6                	c.sdsp	s1,72(sp)
   15754:	e0ca                	c.sdsp	s2,64(sp)
   15756:	ec86                	c.sdsp	ra,88(sp)
   15758:	e8a2                	c.sdsp	s0,80(sp)
   1575a:	fc4e                	c.sdsp	s3,56(sp)
   1575c:	f852                	c.sdsp	s4,48(sp)
   1575e:	f456                	c.sdsp	s5,40(sp)
   15760:	f05a                	c.sdsp	s6,32(sp)
   15762:	ec5e                	c.sdsp	s7,24(sp)
   15764:	e862                	c.sdsp	s8,16(sp)
   15766:	e466                	c.sdsp	s9,8(sp)
   15768:	01758493          	addi	s1,a1,23
   1576c:	02e00793          	addi	a5,zero,46
   15770:	892a                	c.mv	s2,a0
   15772:	0497ec63          	bltu	a5,s1,157ca <_malloc_r+0x7a>
   15776:	02000793          	addi	a5,zero,32
   1577a:	20b7ea63          	bltu	a5,a1,1598e <_malloc_r+0x23e>
   1577e:	00001097          	auipc	ra,0x1
   15782:	8e2080e7          	jalr	ra,-1822(ra) # 16060 <__malloc_lock>
   15786:	02000493          	addi	s1,zero,32
   1578a:	05000793          	addi	a5,zero,80
   1578e:	4611                	c.li	a2,4
   15790:	0000a997          	auipc	s3,0xa
   15794:	2f098993          	addi	s3,s3,752 # 1fa80 <__malloc_av_>
   15798:	97ce                	c.add	a5,s3
   1579a:	6780                	c.ld	s0,8(a5)
   1579c:	ff078713          	addi	a4,a5,-16
   157a0:	20e40863          	beq	s0,a4,159b0 <_malloc_r+0x260>
   157a4:	641c                	c.ld	a5,8(s0)
   157a6:	6c14                	c.ld	a3,24(s0)
   157a8:	6810                	c.ld	a2,16(s0)
   157aa:	9bf1                	c.andi	a5,-4
   157ac:	97a2                	c.add	a5,s0
   157ae:	6798                	c.ld	a4,8(a5)
   157b0:	ee14                	c.sd	a3,24(a2)
   157b2:	ea90                	c.sd	a2,16(a3)
   157b4:	00176713          	ori	a4,a4,1
   157b8:	854a                	c.mv	a0,s2
   157ba:	e798                	c.sd	a4,8(a5)
   157bc:	00001097          	auipc	ra,0x1
   157c0:	8a6080e7          	jalr	ra,-1882(ra) # 16062 <__malloc_unlock>
   157c4:	01040513          	addi	a0,s0,16
   157c8:	a2f9                	c.j	15996 <_malloc_r+0x246>
   157ca:	800007b7          	lui	a5,0x80000
   157ce:	98c1                	c.andi	s1,-16
   157d0:	fff7c793          	xori	a5,a5,-1
   157d4:	1a97ed63          	bltu	a5,s1,1598e <_malloc_r+0x23e>
   157d8:	1ab4eb63          	bltu	s1,a1,1598e <_malloc_r+0x23e>
   157dc:	00001097          	auipc	ra,0x1
   157e0:	884080e7          	jalr	ra,-1916(ra) # 16060 <__malloc_lock>
   157e4:	1f700793          	addi	a5,zero,503
   157e8:	3c97fd63          	bgeu	a5,s1,15bc2 <_malloc_r+0x472>
   157ec:	0094d793          	srli	a5,s1,0x9
   157f0:	2a078163          	beq	a5,zero,15a92 <_malloc_r+0x342>
   157f4:	4711                	c.li	a4,4
   157f6:	32f76963          	bltu	a4,a5,15b28 <_malloc_r+0x3d8>
   157fa:	0064d793          	srli	a5,s1,0x6
   157fe:	0397861b          	addiw	a2,a5,57
   15802:	0016169b          	slliw	a3,a2,0x1
   15806:	0387851b          	addiw	a0,a5,56
   1580a:	068e                	c.slli	a3,0x3
   1580c:	0000a997          	auipc	s3,0xa
   15810:	27498993          	addi	s3,s3,628 # 1fa80 <__malloc_av_>
   15814:	96ce                	c.add	a3,s3
   15816:	6680                	c.ld	s0,8(a3)
   15818:	16c1                	c.addi	a3,-16
   1581a:	18868f63          	beq	a3,s0,159b8 <_malloc_r+0x268>
   1581e:	45fd                	c.li	a1,31
   15820:	a031                	c.j	1582c <_malloc_r+0xdc>
   15822:	2a075d63          	bge	a4,zero,15adc <_malloc_r+0x38c>
   15826:	6c00                	c.ld	s0,24(s0)
   15828:	18868863          	beq	a3,s0,159b8 <_malloc_r+0x268>
   1582c:	641c                	c.ld	a5,8(s0)
   1582e:	9bf1                	c.andi	a5,-4
   15830:	40978733          	sub	a4,a5,s1
   15834:	fee5d7e3          	bge	a1,a4,15822 <_malloc_r+0xd2>
   15838:	0209b403          	ld	s0,32(s3)
   1583c:	0000a897          	auipc	a7,0xa
   15840:	25488893          	addi	a7,a7,596 # 1fa90 <__malloc_av_+0x10>
   15844:	862a                	c.mv	a2,a0
   15846:	19141163          	bne	s0,a7,159c8 <_malloc_r+0x278>
   1584a:	0089b783          	ld	a5,8(s3)
   1584e:	4026571b          	sraiw	a4,a2,0x2
   15852:	4585                	c.li	a1,1
   15854:	00e595b3          	sll	a1,a1,a4
   15858:	1cb7f863          	bgeu	a5,a1,15a28 <_malloc_r+0x2d8>
   1585c:	0109b403          	ld	s0,16(s3)
   15860:	00843a03          	ld	s4,8(s0)
   15864:	ffca7a93          	andi	s5,s4,-4
   15868:	009ae763          	bltu	s5,s1,15876 <_malloc_r+0x126>
   1586c:	409a87b3          	sub	a5,s5,s1
   15870:	477d                	c.li	a4,31
   15872:	24f74463          	blt	a4,a5,15aba <_malloc_r+0x36a>
   15876:	0000bc97          	auipc	s9,0xb
   1587a:	a62c8c93          	addi	s9,s9,-1438 # 202d8 <__malloc_sbrk_base>
   1587e:	000cb703          	ld	a4,0(s9)
   15882:	0000ba17          	auipc	s4,0xb
   15886:	a7ea3a03          	ld	s4,-1410(s4) # 20300 <__malloc_top_pad>
   1588a:	57fd                	c.li	a5,-1
   1588c:	01540bb3          	add	s7,s0,s5
   15890:	9a26                	c.add	s4,s1
   15892:	3cf70863          	beq	a4,a5,15c62 <_malloc_r+0x512>
   15896:	6785                	c.lui	a5,0x1
   15898:	07fd                	c.addi	a5,31
   1589a:	9a3e                	c.add	s4,a5
   1589c:	77fd                	c.lui	a5,0xfffff
   1589e:	00fa7a33          	and	s4,s4,a5
   158a2:	85d2                	c.mv	a1,s4
   158a4:	854a                	c.mv	a0,s2
   158a6:	00002097          	auipc	ra,0x2
   158aa:	93c080e7          	jalr	ra,-1732(ra) # 171e2 <_sbrk_r>
   158ae:	57fd                	c.li	a5,-1
   158b0:	8b2a                	c.mv	s6,a0
   158b2:	32f50d63          	beq	a0,a5,15bec <_malloc_r+0x49c>
   158b6:	33756963          	bltu	a0,s7,15be8 <_malloc_r+0x498>
   158ba:	0000bc17          	auipc	s8,0xb
   158be:	a96c0c13          	addi	s8,s8,-1386 # 20350 <__malloc_current_mallinfo>
   158c2:	000c2703          	lw	a4,0(s8)
   158c6:	014707bb          	addw	a5,a4,s4
   158ca:	00fc2023          	sw	a5,0(s8)
   158ce:	86be                	c.mv	a3,a5
   158d0:	42ab8663          	beq	s7,a0,15cfc <_malloc_r+0x5ac>
   158d4:	000cb703          	ld	a4,0(s9)
   158d8:	57fd                	c.li	a5,-1
   158da:	42f70d63          	beq	a4,a5,15d14 <_malloc_r+0x5c4>
   158de:	417b07b3          	sub	a5,s6,s7
   158e2:	9fb5                	c.addw	a5,a3
   158e4:	00fc2023          	sw	a5,0(s8)
   158e8:	00fb7b93          	andi	s7,s6,15
   158ec:	380b8963          	beq	s7,zero,15c7e <_malloc_r+0x52e>
   158f0:	6705                	c.lui	a4,0x1
   158f2:	417b0b33          	sub	s6,s6,s7
   158f6:	01070793          	addi	a5,a4,16 # 1010 <register_fini-0xf0a0>
   158fa:	0b41                	c.addi	s6,16
   158fc:	417787b3          	sub	a5,a5,s7
   15900:	014b0cb3          	add	s9,s6,s4
   15904:	41978a33          	sub	s4,a5,s9
   15908:	177d                	c.addi	a4,-1
   1590a:	00ea7a33          	and	s4,s4,a4
   1590e:	85d2                	c.mv	a1,s4
   15910:	854a                	c.mv	a0,s2
   15912:	00002097          	auipc	ra,0x2
   15916:	8d0080e7          	jalr	ra,-1840(ra) # 171e2 <_sbrk_r>
   1591a:	57fd                	c.li	a5,-1
   1591c:	44f50163          	beq	a0,a5,15d5e <_malloc_r+0x60e>
   15920:	41650533          	sub	a0,a0,s6
   15924:	000a071b          	addiw	a4,s4,0
   15928:	9a2a                	c.add	s4,a0
   1592a:	000c2783          	lw	a5,0(s8)
   1592e:	0169b823          	sd	s6,16(s3)
   15932:	001a6a13          	ori	s4,s4,1
   15936:	9fb9                	c.addw	a5,a4
   15938:	00fc2023          	sw	a5,0(s8)
   1593c:	014b3423          	sd	s4,8(s6) # ffffffff80000008 <__BSS_END__+0xffffffff7ffdfc88>
   15940:	3d340d63          	beq	s0,s3,15d1a <_malloc_r+0x5ca>
   15944:	467d                	c.li	a2,31
   15946:	3d567c63          	bgeu	a2,s5,15d1e <_malloc_r+0x5ce>
   1594a:	6414                	c.ld	a3,8(s0)
   1594c:	fe8a8713          	addi	a4,s5,-24 # ffffffffffffefe8 <__BSS_END__+0xfffffffffffdec68>
   15950:	9b41                	c.andi	a4,-16
   15952:	8a85                	c.andi	a3,1
   15954:	8ed9                	c.or	a3,a4
   15956:	e414                	c.sd	a3,8(s0)
   15958:	45a5                	c.li	a1,9
   1595a:	00e406b3          	add	a3,s0,a4
   1595e:	e68c                	c.sd	a1,8(a3)
   15960:	ea8c                	c.sd	a1,16(a3)
   15962:	40e66563          	bltu	a2,a4,15d6c <_malloc_r+0x61c>
   15966:	008b3a03          	ld	s4,8(s6)
   1596a:	845a                	c.mv	s0,s6
   1596c:	0000b717          	auipc	a4,0xb
   15970:	98c70713          	addi	a4,a4,-1652 # 202f8 <__malloc_max_sbrked_mem>
   15974:	6314                	c.ld	a3,0(a4)
   15976:	00f6f363          	bgeu	a3,a5,1597c <_malloc_r+0x22c>
   1597a:	e31c                	c.sd	a5,0(a4)
   1597c:	0000b717          	auipc	a4,0xb
   15980:	97470713          	addi	a4,a4,-1676 # 202f0 <__malloc_max_total_mem>
   15984:	6314                	c.ld	a3,0(a4)
   15986:	26f6f763          	bgeu	a3,a5,15bf4 <_malloc_r+0x4a4>
   1598a:	e31c                	c.sd	a5,0(a4)
   1598c:	a4a5                	c.j	15bf4 <_malloc_r+0x4a4>
   1598e:	47b1                	c.li	a5,12
   15990:	00f92023          	sw	a5,0(s2)
   15994:	4501                	c.li	a0,0
   15996:	60e6                	c.ldsp	ra,88(sp)
   15998:	6446                	c.ldsp	s0,80(sp)
   1599a:	64a6                	c.ldsp	s1,72(sp)
   1599c:	6906                	c.ldsp	s2,64(sp)
   1599e:	79e2                	c.ldsp	s3,56(sp)
   159a0:	7a42                	c.ldsp	s4,48(sp)
   159a2:	7aa2                	c.ldsp	s5,40(sp)
   159a4:	7b02                	c.ldsp	s6,32(sp)
   159a6:	6be2                	c.ldsp	s7,24(sp)
   159a8:	6c42                	c.ldsp	s8,16(sp)
   159aa:	6ca2                	c.ldsp	s9,8(sp)
   159ac:	6125                	c.addi16sp	sp,96
   159ae:	8082                	c.jr	ra
   159b0:	6f80                	c.ld	s0,24(a5)
   159b2:	2609                	c.addiw	a2,2
   159b4:	de8798e3          	bne	a5,s0,157a4 <_malloc_r+0x54>
   159b8:	0209b403          	ld	s0,32(s3)
   159bc:	0000a897          	auipc	a7,0xa
   159c0:	0d488893          	addi	a7,a7,212 # 1fa90 <__malloc_av_+0x10>
   159c4:	e91403e3          	beq	s0,a7,1584a <_malloc_r+0xfa>
   159c8:	641c                	c.ld	a5,8(s0)
   159ca:	46fd                	c.li	a3,31
   159cc:	9bf1                	c.andi	a5,-4
   159ce:	40978733          	sub	a4,a5,s1
   159d2:	1ae6cf63          	blt	a3,a4,15b90 <_malloc_r+0x440>
   159d6:	0319b423          	sd	a7,40(s3)
   159da:	0319b023          	sd	a7,32(s3)
   159de:	0c075163          	bge	a4,zero,15aa0 <_malloc_r+0x350>
   159e2:	1ff00713          	addi	a4,zero,511
   159e6:	0ef76e63          	bltu	a4,a5,15ae2 <_malloc_r+0x392>
   159ea:	838d                	c.srli	a5,0x3
   159ec:	0017871b          	addiw	a4,a5,1
   159f0:	0017171b          	slliw	a4,a4,0x1
   159f4:	070e                	c.slli	a4,0x3
   159f6:	0089b503          	ld	a0,8(s3)
   159fa:	974e                	c.add	a4,s3
   159fc:	630c                	c.ld	a1,0(a4)
   159fe:	4027d69b          	sraiw	a3,a5,0x2
   15a02:	4785                	c.li	a5,1
   15a04:	00d797b3          	sll	a5,a5,a3
   15a08:	8fc9                	c.or	a5,a0
   15a0a:	ff070693          	addi	a3,a4,-16
   15a0e:	ec14                	c.sd	a3,24(s0)
   15a10:	e80c                	c.sd	a1,16(s0)
   15a12:	00f9b423          	sd	a5,8(s3)
   15a16:	e300                	c.sd	s0,0(a4)
   15a18:	ed80                	c.sd	s0,24(a1)
   15a1a:	4026571b          	sraiw	a4,a2,0x2
   15a1e:	4585                	c.li	a1,1
   15a20:	00e595b3          	sll	a1,a1,a4
   15a24:	e2b7ece3          	bltu	a5,a1,1585c <_malloc_r+0x10c>
   15a28:	00f5f733          	and	a4,a1,a5
   15a2c:	ef01                	c.bnez	a4,15a44 <_malloc_r+0x2f4>
   15a2e:	0586                	c.slli	a1,0x1
   15a30:	9a71                	c.andi	a2,-4
   15a32:	00f5f733          	and	a4,a1,a5
   15a36:	2611                	c.addiw	a2,4
   15a38:	e711                	c.bnez	a4,15a44 <_malloc_r+0x2f4>
   15a3a:	0586                	c.slli	a1,0x1
   15a3c:	00f5f733          	and	a4,a1,a5
   15a40:	2611                	c.addiw	a2,4
   15a42:	df65                	c.beqz	a4,15a3a <_malloc_r+0x2ea>
   15a44:	487d                	c.li	a6,31
   15a46:	0016031b          	addiw	t1,a2,1
   15a4a:	0013131b          	slliw	t1,t1,0x1
   15a4e:	030e                	c.slli	t1,0x3
   15a50:	1341                	c.addi	t1,-16
   15a52:	934e                	c.add	t1,s3
   15a54:	851a                	c.mv	a0,t1
   15a56:	6d1c                	c.ld	a5,24(a0)
   15a58:	8e32                	c.mv	t3,a2
   15a5a:	0ef50863          	beq	a0,a5,15b4a <_malloc_r+0x3fa>
   15a5e:	6798                	c.ld	a4,8(a5)
   15a60:	843e                	c.mv	s0,a5
   15a62:	6f9c                	c.ld	a5,24(a5)
   15a64:	9b71                	c.andi	a4,-4
   15a66:	409706b3          	sub	a3,a4,s1
   15a6a:	0ed84763          	blt	a6,a3,15b58 <_malloc_r+0x408>
   15a6e:	fe06c6e3          	blt	a3,zero,15a5a <_malloc_r+0x30a>
   15a72:	9722                	c.add	a4,s0
   15a74:	6714                	c.ld	a3,8(a4)
   15a76:	6810                	c.ld	a2,16(s0)
   15a78:	854a                	c.mv	a0,s2
   15a7a:	0016e693          	ori	a3,a3,1
   15a7e:	e714                	c.sd	a3,8(a4)
   15a80:	ee1c                	c.sd	a5,24(a2)
   15a82:	eb90                	c.sd	a2,16(a5)
   15a84:	00000097          	auipc	ra,0x0
   15a88:	5de080e7          	jalr	ra,1502(ra) # 16062 <__malloc_unlock>
   15a8c:	01040513          	addi	a0,s0,16
   15a90:	b719                	c.j	15996 <_malloc_r+0x246>
   15a92:	40000693          	addi	a3,zero,1024
   15a96:	04000613          	addi	a2,zero,64
   15a9a:	03f00513          	addi	a0,zero,63
   15a9e:	b3bd                	c.j	1580c <_malloc_r+0xbc>
   15aa0:	97a2                	c.add	a5,s0
   15aa2:	6798                	c.ld	a4,8(a5)
   15aa4:	854a                	c.mv	a0,s2
   15aa6:	00176713          	ori	a4,a4,1
   15aaa:	e798                	c.sd	a4,8(a5)
   15aac:	00000097          	auipc	ra,0x0
   15ab0:	5b6080e7          	jalr	ra,1462(ra) # 16062 <__malloc_unlock>
   15ab4:	01040513          	addi	a0,s0,16
   15ab8:	bdf9                	c.j	15996 <_malloc_r+0x246>
   15aba:	0014e713          	ori	a4,s1,1
   15abe:	e418                	c.sd	a4,8(s0)
   15ac0:	94a2                	c.add	s1,s0
   15ac2:	0099b823          	sd	s1,16(s3)
   15ac6:	0017e793          	ori	a5,a5,1
   15aca:	854a                	c.mv	a0,s2
   15acc:	e49c                	c.sd	a5,8(s1)
   15ace:	00000097          	auipc	ra,0x0
   15ad2:	594080e7          	jalr	ra,1428(ra) # 16062 <__malloc_unlock>
   15ad6:	01040513          	addi	a0,s0,16
   15ada:	bd75                	c.j	15996 <_malloc_r+0x246>
   15adc:	6c14                	c.ld	a3,24(s0)
   15ade:	6810                	c.ld	a2,16(s0)
   15ae0:	b1f1                	c.j	157ac <_malloc_r+0x5c>
   15ae2:	0097d713          	srli	a4,a5,0x9
   15ae6:	4691                	c.li	a3,4
   15ae8:	0ee6f663          	bgeu	a3,a4,15bd4 <_malloc_r+0x484>
   15aec:	46d1                	c.li	a3,20
   15aee:	1ce6e063          	bltu	a3,a4,15cae <_malloc_r+0x55e>
   15af2:	05c7059b          	addiw	a1,a4,92
   15af6:	0015959b          	slliw	a1,a1,0x1
   15afa:	05b7069b          	addiw	a3,a4,91
   15afe:	058e                	c.slli	a1,0x3
   15b00:	95ce                	c.add	a1,s3
   15b02:	6198                	c.ld	a4,0(a1)
   15b04:	15c1                	c.addi	a1,-16
   15b06:	16e58163          	beq	a1,a4,15c68 <_malloc_r+0x518>
   15b0a:	6714                	c.ld	a3,8(a4)
   15b0c:	9af1                	c.andi	a3,-4
   15b0e:	00d7f563          	bgeu	a5,a3,15b18 <_malloc_r+0x3c8>
   15b12:	6b18                	c.ld	a4,16(a4)
   15b14:	fee59be3          	bne	a1,a4,15b0a <_malloc_r+0x3ba>
   15b18:	6f0c                	c.ld	a1,24(a4)
   15b1a:	0089b783          	ld	a5,8(s3)
   15b1e:	ec0c                	c.sd	a1,24(s0)
   15b20:	e818                	c.sd	a4,16(s0)
   15b22:	e980                	c.sd	s0,16(a1)
   15b24:	ef00                	c.sd	s0,24(a4)
   15b26:	bdd5                	c.j	15a1a <_malloc_r+0x2ca>
   15b28:	4751                	c.li	a4,20
   15b2a:	0ef77563          	bgeu	a4,a5,15c14 <_malloc_r+0x4c4>
   15b2e:	05400713          	addi	a4,zero,84
   15b32:	18f76c63          	bltu	a4,a5,15cca <_malloc_r+0x57a>
   15b36:	00c4d793          	srli	a5,s1,0xc
   15b3a:	06f7861b          	addiw	a2,a5,111
   15b3e:	0016169b          	slliw	a3,a2,0x1
   15b42:	06e7851b          	addiw	a0,a5,110
   15b46:	068e                	c.slli	a3,0x3
   15b48:	b1d1                	c.j	1580c <_malloc_r+0xbc>
   15b4a:	2e05                	c.addiw	t3,1
   15b4c:	003e7793          	andi	a5,t3,3
   15b50:	0541                	c.addi	a0,16
   15b52:	cff1                	c.beqz	a5,15c2e <_malloc_r+0x4de>
   15b54:	6d1c                	c.ld	a5,24(a0)
   15b56:	b711                	c.j	15a5a <_malloc_r+0x30a>
   15b58:	6810                	c.ld	a2,16(s0)
   15b5a:	0014e593          	ori	a1,s1,1
   15b5e:	e40c                	c.sd	a1,8(s0)
   15b60:	ee1c                	c.sd	a5,24(a2)
   15b62:	eb90                	c.sd	a2,16(a5)
   15b64:	94a2                	c.add	s1,s0
   15b66:	0299b423          	sd	s1,40(s3)
   15b6a:	0299b023          	sd	s1,32(s3)
   15b6e:	0016e793          	ori	a5,a3,1
   15b72:	0114bc23          	sd	a7,24(s1)
   15b76:	0114b823          	sd	a7,16(s1)
   15b7a:	e49c                	c.sd	a5,8(s1)
   15b7c:	9722                	c.add	a4,s0
   15b7e:	854a                	c.mv	a0,s2
   15b80:	e314                	c.sd	a3,0(a4)
   15b82:	00000097          	auipc	ra,0x0
   15b86:	4e0080e7          	jalr	ra,1248(ra) # 16062 <__malloc_unlock>
   15b8a:	01040513          	addi	a0,s0,16
   15b8e:	b521                	c.j	15996 <_malloc_r+0x246>
   15b90:	0014e693          	ori	a3,s1,1
   15b94:	e414                	c.sd	a3,8(s0)
   15b96:	94a2                	c.add	s1,s0
   15b98:	0299b423          	sd	s1,40(s3)
   15b9c:	0299b023          	sd	s1,32(s3)
   15ba0:	00176693          	ori	a3,a4,1
   15ba4:	0114bc23          	sd	a7,24(s1)
   15ba8:	0114b823          	sd	a7,16(s1)
   15bac:	e494                	c.sd	a3,8(s1)
   15bae:	97a2                	c.add	a5,s0
   15bb0:	854a                	c.mv	a0,s2
   15bb2:	e398                	c.sd	a4,0(a5)
   15bb4:	00000097          	auipc	ra,0x0
   15bb8:	4ae080e7          	jalr	ra,1198(ra) # 16062 <__malloc_unlock>
   15bbc:	01040513          	addi	a0,s0,16
   15bc0:	bbd9                	c.j	15996 <_malloc_r+0x246>
   15bc2:	0034d613          	srli	a2,s1,0x3
   15bc6:	0016079b          	addiw	a5,a2,1
   15bca:	0017979b          	slliw	a5,a5,0x1
   15bce:	2601                	c.addiw	a2,0
   15bd0:	078e                	c.slli	a5,0x3
   15bd2:	be7d                	c.j	15790 <_malloc_r+0x40>
   15bd4:	0067d713          	srli	a4,a5,0x6
   15bd8:	0397059b          	addiw	a1,a4,57
   15bdc:	0015959b          	slliw	a1,a1,0x1
   15be0:	0387069b          	addiw	a3,a4,56
   15be4:	058e                	c.slli	a1,0x3
   15be6:	bf29                	c.j	15b00 <_malloc_r+0x3b0>
   15be8:	0f340f63          	beq	s0,s3,15ce6 <_malloc_r+0x596>
   15bec:	0109b403          	ld	s0,16(s3)
   15bf0:	00843a03          	ld	s4,8(s0)
   15bf4:	ffca7a13          	andi	s4,s4,-4
   15bf8:	409a07b3          	sub	a5,s4,s1
   15bfc:	009a6563          	bltu	s4,s1,15c06 <_malloc_r+0x4b6>
   15c00:	477d                	c.li	a4,31
   15c02:	eaf74ce3          	blt	a4,a5,15aba <_malloc_r+0x36a>
   15c06:	854a                	c.mv	a0,s2
   15c08:	00000097          	auipc	ra,0x0
   15c0c:	45a080e7          	jalr	ra,1114(ra) # 16062 <__malloc_unlock>
   15c10:	4501                	c.li	a0,0
   15c12:	b351                	c.j	15996 <_malloc_r+0x246>
   15c14:	05c7861b          	addiw	a2,a5,92
   15c18:	0016169b          	slliw	a3,a2,0x1
   15c1c:	05b7851b          	addiw	a0,a5,91
   15c20:	068e                	c.slli	a3,0x3
   15c22:	b6ed                	c.j	1580c <_malloc_r+0xbc>
   15c24:	01033783          	ld	a5,16(t1)
   15c28:	367d                	c.addiw	a2,-1
   15c2a:	18679963          	bne	a5,t1,15dbc <_malloc_r+0x66c>
   15c2e:	00367793          	andi	a5,a2,3
   15c32:	1341                	c.addi	t1,-16
   15c34:	fbe5                	c.bnez	a5,15c24 <_malloc_r+0x4d4>
   15c36:	0089b703          	ld	a4,8(s3)
   15c3a:	fff5c793          	xori	a5,a1,-1
   15c3e:	8ff9                	c.and	a5,a4
   15c40:	00f9b423          	sd	a5,8(s3)
   15c44:	0586                	c.slli	a1,0x1
   15c46:	c0b7ebe3          	bltu	a5,a1,1585c <_malloc_r+0x10c>
   15c4a:	c00589e3          	beq	a1,zero,1585c <_malloc_r+0x10c>
   15c4e:	00f5f733          	and	a4,a1,a5
   15c52:	e711                	c.bnez	a4,15c5e <_malloc_r+0x50e>
   15c54:	0586                	c.slli	a1,0x1
   15c56:	00f5f733          	and	a4,a1,a5
   15c5a:	2e11                	c.addiw	t3,4
   15c5c:	df65                	c.beqz	a4,15c54 <_malloc_r+0x504>
   15c5e:	8672                	c.mv	a2,t3
   15c60:	b3dd                	c.j	15a46 <_malloc_r+0x2f6>
   15c62:	020a0a13          	addi	s4,s4,32
   15c66:	b935                	c.j	158a2 <_malloc_r+0x152>
   15c68:	0089b503          	ld	a0,8(s3)
   15c6c:	4026d69b          	sraiw	a3,a3,0x2
   15c70:	4785                	c.li	a5,1
   15c72:	00d797b3          	sll	a5,a5,a3
   15c76:	8fc9                	c.or	a5,a0
   15c78:	00f9b423          	sd	a5,8(s3)
   15c7c:	b54d                	c.j	15b1e <_malloc_r+0x3ce>
   15c7e:	014b0bb3          	add	s7,s6,s4
   15c82:	41700bb3          	sub	s7,zero,s7
   15c86:	1bd2                	c.slli	s7,0x34
   15c88:	034bdb93          	srli	s7,s7,0x34
   15c8c:	85de                	c.mv	a1,s7
   15c8e:	854a                	c.mv	a0,s2
   15c90:	00001097          	auipc	ra,0x1
   15c94:	552080e7          	jalr	ra,1362(ra) # 171e2 <_sbrk_r>
   15c98:	57fd                	c.li	a5,-1
   15c9a:	4701                	c.li	a4,0
   15c9c:	c8f507e3          	beq	a0,a5,1592a <_malloc_r+0x1da>
   15ca0:	41650533          	sub	a0,a0,s6
   15ca4:	000b871b          	addiw	a4,s7,0
   15ca8:	01750a33          	add	s4,a0,s7
   15cac:	b9bd                	c.j	1592a <_malloc_r+0x1da>
   15cae:	05400693          	addi	a3,zero,84
   15cb2:	06e6ea63          	bltu	a3,a4,15d26 <_malloc_r+0x5d6>
   15cb6:	00c7d713          	srli	a4,a5,0xc
   15cba:	06f7059b          	addiw	a1,a4,111
   15cbe:	0015959b          	slliw	a1,a1,0x1
   15cc2:	06e7069b          	addiw	a3,a4,110
   15cc6:	058e                	c.slli	a1,0x3
   15cc8:	bd25                	c.j	15b00 <_malloc_r+0x3b0>
   15cca:	15400713          	addi	a4,zero,340
   15cce:	06f76a63          	bltu	a4,a5,15d42 <_malloc_r+0x5f2>
   15cd2:	00f4d793          	srli	a5,s1,0xf
   15cd6:	0787861b          	addiw	a2,a5,120
   15cda:	0016169b          	slliw	a3,a2,0x1
   15cde:	0777851b          	addiw	a0,a5,119
   15ce2:	068e                	c.slli	a3,0x3
   15ce4:	b625                	c.j	1580c <_malloc_r+0xbc>
   15ce6:	0000ac17          	auipc	s8,0xa
   15cea:	66ac0c13          	addi	s8,s8,1642 # 20350 <__malloc_current_mallinfo>
   15cee:	000c2783          	lw	a5,0(s8)
   15cf2:	014786bb          	addw	a3,a5,s4
   15cf6:	00dc2023          	sw	a3,0(s8)
   15cfa:	bee9                	c.j	158d4 <_malloc_r+0x184>
   15cfc:	034b9713          	slli	a4,s7,0x34
   15d00:	bc071ae3          	bne	a4,zero,158d4 <_malloc_r+0x184>
   15d04:	0109b403          	ld	s0,16(s3)
   15d08:	9a56                	c.add	s4,s5
   15d0a:	001a6a13          	ori	s4,s4,1
   15d0e:	01443423          	sd	s4,8(s0)
   15d12:	b9a9                	c.j	1596c <_malloc_r+0x21c>
   15d14:	016cb023          	sd	s6,0(s9)
   15d18:	bec1                	c.j	158e8 <_malloc_r+0x198>
   15d1a:	845a                	c.mv	s0,s6
   15d1c:	b981                	c.j	1596c <_malloc_r+0x21c>
   15d1e:	4785                	c.li	a5,1
   15d20:	00fb3423          	sd	a5,8(s6)
   15d24:	b5cd                	c.j	15c06 <_malloc_r+0x4b6>
   15d26:	15400693          	addi	a3,zero,340
   15d2a:	04e6ef63          	bltu	a3,a4,15d88 <_malloc_r+0x638>
   15d2e:	00f7d713          	srli	a4,a5,0xf
   15d32:	0787059b          	addiw	a1,a4,120
   15d36:	0015959b          	slliw	a1,a1,0x1
   15d3a:	0777069b          	addiw	a3,a4,119
   15d3e:	058e                	c.slli	a1,0x3
   15d40:	b3c1                	c.j	15b00 <_malloc_r+0x3b0>
   15d42:	55400713          	addi	a4,zero,1364
   15d46:	04f76f63          	bltu	a4,a5,15da4 <_malloc_r+0x654>
   15d4a:	0124d793          	srli	a5,s1,0x12
   15d4e:	07d7861b          	addiw	a2,a5,125
   15d52:	0016169b          	slliw	a3,a2,0x1
   15d56:	07c7851b          	addiw	a0,a5,124
   15d5a:	068e                	c.slli	a3,0x3
   15d5c:	bc45                	c.j	1580c <_malloc_r+0xbc>
   15d5e:	1bc1                	c.addi	s7,-16
   15d60:	017c8a33          	add	s4,s9,s7
   15d64:	416a0a33          	sub	s4,s4,s6
   15d68:	4701                	c.li	a4,0
   15d6a:	b6c1                	c.j	1592a <_malloc_r+0x1da>
   15d6c:	01040593          	addi	a1,s0,16
   15d70:	854a                	c.mv	a0,s2
   15d72:	ffffd097          	auipc	ra,0xffffd
   15d76:	e76080e7          	jalr	ra,-394(ra) # 12be8 <_free_r>
   15d7a:	0109b403          	ld	s0,16(s3)
   15d7e:	000c2783          	lw	a5,0(s8)
   15d82:	00843a03          	ld	s4,8(s0)
   15d86:	b6dd                	c.j	1596c <_malloc_r+0x21c>
   15d88:	55400693          	addi	a3,zero,1364
   15d8c:	02e6e363          	bltu	a3,a4,15db2 <_malloc_r+0x662>
   15d90:	0127d713          	srli	a4,a5,0x12
   15d94:	07d7059b          	addiw	a1,a4,125
   15d98:	0015959b          	slliw	a1,a1,0x1
   15d9c:	07c7069b          	addiw	a3,a4,124
   15da0:	058e                	c.slli	a1,0x3
   15da2:	bbb9                	c.j	15b00 <_malloc_r+0x3b0>
   15da4:	7f000693          	addi	a3,zero,2032
   15da8:	07f00613          	addi	a2,zero,127
   15dac:	07e00513          	addi	a0,zero,126
   15db0:	bcb1                	c.j	1580c <_malloc_r+0xbc>
   15db2:	7f000593          	addi	a1,zero,2032
   15db6:	07e00693          	addi	a3,zero,126
   15dba:	b399                	c.j	15b00 <_malloc_r+0x3b0>
   15dbc:	0089b783          	ld	a5,8(s3)
   15dc0:	b551                	c.j	15c44 <_malloc_r+0x4f4>

0000000000015dc2 <_mbtowc_r>:
   15dc2:	0000a797          	auipc	a5,0xa
   15dc6:	bfe7b783          	ld	a5,-1026(a5) # 1f9c0 <__global_locale+0xe8>
   15dca:	8782                	c.jr	a5

0000000000015dcc <__ascii_mbtowc>:
   15dcc:	c999                	c.beqz	a1,15de2 <__ascii_mbtowc+0x16>
   15dce:	c61d                	c.beqz	a2,15dfc <__ascii_mbtowc+0x30>
   15dd0:	ca95                	c.beqz	a3,15e04 <__ascii_mbtowc+0x38>
   15dd2:	00064783          	lbu	a5,0(a2)
   15dd6:	c19c                	c.sw	a5,0(a1)
   15dd8:	00064503          	lbu	a0,0(a2)
   15ddc:	00a03533          	sltu	a0,zero,a0
   15de0:	8082                	c.jr	ra
   15de2:	1141                	c.addi	sp,-16
   15de4:	006c                	c.addi4spn	a1,sp,12
   15de6:	ce09                	c.beqz	a2,15e00 <__ascii_mbtowc+0x34>
   15de8:	c285                	c.beqz	a3,15e08 <__ascii_mbtowc+0x3c>
   15dea:	00064783          	lbu	a5,0(a2)
   15dee:	c19c                	c.sw	a5,0(a1)
   15df0:	00064503          	lbu	a0,0(a2)
   15df4:	00a03533          	sltu	a0,zero,a0
   15df8:	0141                	c.addi	sp,16
   15dfa:	8082                	c.jr	ra
   15dfc:	4501                	c.li	a0,0
   15dfe:	8082                	c.jr	ra
   15e00:	4501                	c.li	a0,0
   15e02:	bfdd                	c.j	15df8 <__ascii_mbtowc+0x2c>
   15e04:	5579                	c.li	a0,-2
   15e06:	8082                	c.jr	ra
   15e08:	5579                	c.li	a0,-2
   15e0a:	b7fd                	c.j	15df8 <__ascii_mbtowc+0x2c>

0000000000015e0c <memchr>:
   15e0c:	00757793          	andi	a5,a0,7
   15e10:	0ff5f693          	andi	a3,a1,255
   15e14:	c395                	c.beqz	a5,15e38 <memchr+0x2c>
   15e16:	fff60793          	addi	a5,a2,-1
   15e1a:	c605                	c.beqz	a2,15e42 <memchr+0x36>
   15e1c:	567d                	c.li	a2,-1
   15e1e:	a801                	c.j	15e2e <memchr+0x22>
   15e20:	0505                	c.addi	a0,1
   15e22:	00757713          	andi	a4,a0,7
   15e26:	cb11                	c.beqz	a4,15e3a <memchr+0x2e>
   15e28:	17fd                	c.addi	a5,-1
   15e2a:	00c78c63          	beq	a5,a2,15e42 <memchr+0x36>
   15e2e:	00054703          	lbu	a4,0(a0)
   15e32:	fed717e3          	bne	a4,a3,15e20 <memchr+0x14>
   15e36:	8082                	c.jr	ra
   15e38:	87b2                	c.mv	a5,a2
   15e3a:	471d                	c.li	a4,7
   15e3c:	00f76f63          	bltu	a4,a5,15e5a <memchr+0x4e>
   15e40:	e399                	c.bnez	a5,15e46 <memchr+0x3a>
   15e42:	4501                	c.li	a0,0
   15e44:	8082                	c.jr	ra
   15e46:	97aa                	c.add	a5,a0
   15e48:	a021                	c.j	15e50 <memchr+0x44>
   15e4a:	0505                	c.addi	a0,1
   15e4c:	fea78be3          	beq	a5,a0,15e42 <memchr+0x36>
   15e50:	00054703          	lbu	a4,0(a0)
   15e54:	fed71be3          	bne	a4,a3,15e4a <memchr+0x3e>
   15e58:	8082                	c.jr	ra
   15e5a:	0ff5f593          	andi	a1,a1,255
   15e5e:	00859713          	slli	a4,a1,0x8
   15e62:	8dd9                	c.or	a1,a4
   15e64:	01059713          	slli	a4,a1,0x10
   15e68:	8f4d                	c.or	a4,a1
   15e6a:	02071593          	slli	a1,a4,0x20
   15e6e:	8dd9                	c.or	a1,a4
   15e70:	0000a897          	auipc	a7,0xa
   15e74:	4288b883          	ld	a7,1064(a7) # 20298 <__SDATA_BEGIN__+0x8>
   15e78:	0000a817          	auipc	a6,0xa
   15e7c:	42883803          	ld	a6,1064(a6) # 202a0 <__SDATA_BEGIN__+0x10>
   15e80:	431d                	c.li	t1,7
   15e82:	6118                	c.ld	a4,0(a0)
   15e84:	8f2d                	c.xor	a4,a1
   15e86:	01170633          	add	a2,a4,a7
   15e8a:	fff74713          	xori	a4,a4,-1
   15e8e:	8f71                	c.and	a4,a2
   15e90:	01077733          	and	a4,a4,a6
   15e94:	fb4d                	c.bnez	a4,15e46 <memchr+0x3a>
   15e96:	17e1                	c.addi	a5,-8
   15e98:	0521                	c.addi	a0,8
   15e9a:	fef364e3          	bltu	t1,a5,15e82 <memchr+0x76>
   15e9e:	f7c5                	c.bnez	a5,15e46 <memchr+0x3a>
   15ea0:	b74d                	c.j	15e42 <memchr+0x36>

0000000000015ea2 <memcpy>:
   15ea2:	00a5c7b3          	xor	a5,a1,a0
   15ea6:	8b9d                	c.andi	a5,7
   15ea8:	00c508b3          	add	a7,a0,a2
   15eac:	eba1                	c.bnez	a5,15efc <memcpy+0x5a>
   15eae:	479d                	c.li	a5,7
   15eb0:	04c7f663          	bgeu	a5,a2,15efc <memcpy+0x5a>
   15eb4:	00757793          	andi	a5,a0,7
   15eb8:	872a                	c.mv	a4,a0
   15eba:	e7cd                	c.bnez	a5,15f64 <memcpy+0xc2>
   15ebc:	ff88f613          	andi	a2,a7,-8
   15ec0:	40e606b3          	sub	a3,a2,a4
   15ec4:	04000793          	addi	a5,zero,64
   15ec8:	04000293          	addi	t0,zero,64
   15ecc:	04d7c463          	blt	a5,a3,15f14 <memcpy+0x72>
   15ed0:	86ae                	c.mv	a3,a1
   15ed2:	87ba                	c.mv	a5,a4
   15ed4:	02c77163          	bgeu	a4,a2,15ef6 <memcpy+0x54>
   15ed8:	0006b803          	ld	a6,0(a3)
   15edc:	07a1                	c.addi	a5,8
   15ede:	06a1                	c.addi	a3,8
   15ee0:	ff07bc23          	sd	a6,-8(a5)
   15ee4:	fec7eae3          	bltu	a5,a2,15ed8 <memcpy+0x36>
   15ee8:	fff60793          	addi	a5,a2,-1
   15eec:	8f99                	c.sub	a5,a4
   15eee:	9be1                	c.andi	a5,-8
   15ef0:	07a1                	c.addi	a5,8
   15ef2:	973e                	c.add	a4,a5
   15ef4:	95be                	c.add	a1,a5
   15ef6:	01176663          	bltu	a4,a7,15f02 <memcpy+0x60>
   15efa:	8082                	c.jr	ra
   15efc:	872a                	c.mv	a4,a0
   15efe:	ff157ee3          	bgeu	a0,a7,15efa <memcpy+0x58>
   15f02:	0005c783          	lbu	a5,0(a1)
   15f06:	0705                	c.addi	a4,1
   15f08:	0585                	c.addi	a1,1
   15f0a:	fef70fa3          	sb	a5,-1(a4)
   15f0e:	ff176ae3          	bltu	a4,a7,15f02 <memcpy+0x60>
   15f12:	8082                	c.jr	ra
   15f14:	6594                	c.ld	a3,8(a1)
   15f16:	7d9c                	c.ld	a5,56(a1)
   15f18:	0005bf83          	ld	t6,0(a1)
   15f1c:	0105bf03          	ld	t5,16(a1)
   15f20:	0185be83          	ld	t4,24(a1)
   15f24:	0205be03          	ld	t3,32(a1)
   15f28:	0285b303          	ld	t1,40(a1)
   15f2c:	0305b803          	ld	a6,48(a1)
   15f30:	e714                	c.sd	a3,8(a4)
   15f32:	61b4                	c.ld	a3,64(a1)
   15f34:	01f73023          	sd	t6,0(a4)
   15f38:	01e73823          	sd	t5,16(a4)
   15f3c:	01d73c23          	sd	t4,24(a4)
   15f40:	03c73023          	sd	t3,32(a4)
   15f44:	02673423          	sd	t1,40(a4)
   15f48:	03073823          	sd	a6,48(a4)
   15f4c:	ff1c                	c.sd	a5,56(a4)
   15f4e:	04870713          	addi	a4,a4,72
   15f52:	40e607b3          	sub	a5,a2,a4
   15f56:	fed73c23          	sd	a3,-8(a4)
   15f5a:	04858593          	addi	a1,a1,72
   15f5e:	faf2cbe3          	blt	t0,a5,15f14 <memcpy+0x72>
   15f62:	b7bd                	c.j	15ed0 <memcpy+0x2e>
   15f64:	0005c683          	lbu	a3,0(a1)
   15f68:	0705                	c.addi	a4,1
   15f6a:	00777793          	andi	a5,a4,7
   15f6e:	fed70fa3          	sb	a3,-1(a4)
   15f72:	0585                	c.addi	a1,1
   15f74:	d7a1                	c.beqz	a5,15ebc <memcpy+0x1a>
   15f76:	0005c683          	lbu	a3,0(a1)
   15f7a:	0705                	c.addi	a4,1
   15f7c:	00777793          	andi	a5,a4,7
   15f80:	fed70fa3          	sb	a3,-1(a4)
   15f84:	0585                	c.addi	a1,1
   15f86:	fff9                	c.bnez	a5,15f64 <memcpy+0xc2>
   15f88:	bf15                	c.j	15ebc <memcpy+0x1a>

0000000000015f8a <memmove>:
   15f8a:	02a5f263          	bgeu	a1,a0,15fae <memmove+0x24>
   15f8e:	00c587b3          	add	a5,a1,a2
   15f92:	00f57e63          	bgeu	a0,a5,15fae <memmove+0x24>
   15f96:	00c50733          	add	a4,a0,a2
   15f9a:	ca5d                	c.beqz	a2,16050 <memmove+0xc6>
   15f9c:	fff7c683          	lbu	a3,-1(a5)
   15fa0:	17fd                	c.addi	a5,-1
   15fa2:	177d                	c.addi	a4,-1
   15fa4:	00d70023          	sb	a3,0(a4)
   15fa8:	fef59ae3          	bne	a1,a5,15f9c <memmove+0x12>
   15fac:	8082                	c.jr	ra
   15fae:	47fd                	c.li	a5,31
   15fb0:	02c7e163          	bltu	a5,a2,15fd2 <memmove+0x48>
   15fb4:	87aa                	c.mv	a5,a0
   15fb6:	fff60693          	addi	a3,a2,-1
   15fba:	c245                	c.beqz	a2,1605a <memmove+0xd0>
   15fbc:	0685                	c.addi	a3,1
   15fbe:	96be                	c.add	a3,a5
   15fc0:	0005c703          	lbu	a4,0(a1)
   15fc4:	0785                	c.addi	a5,1
   15fc6:	0585                	c.addi	a1,1
   15fc8:	fee78fa3          	sb	a4,-1(a5)
   15fcc:	fed79ae3          	bne	a5,a3,15fc0 <memmove+0x36>
   15fd0:	8082                	c.jr	ra
   15fd2:	00a5e7b3          	or	a5,a1,a0
   15fd6:	8b9d                	c.andi	a5,7
   15fd8:	efad                	c.bnez	a5,16052 <memmove+0xc8>
   15fda:	fe060893          	addi	a7,a2,-32
   15fde:	fe08f893          	andi	a7,a7,-32
   15fe2:	02088893          	addi	a7,a7,32
   15fe6:	01150833          	add	a6,a0,a7
   15fea:	872e                	c.mv	a4,a1
   15fec:	87aa                	c.mv	a5,a0
   15fee:	6314                	c.ld	a3,0(a4)
   15ff0:	02070713          	addi	a4,a4,32
   15ff4:	02078793          	addi	a5,a5,32
   15ff8:	fed7b023          	sd	a3,-32(a5)
   15ffc:	fe873683          	ld	a3,-24(a4)
   16000:	fed7b423          	sd	a3,-24(a5)
   16004:	ff073683          	ld	a3,-16(a4)
   16008:	fed7b823          	sd	a3,-16(a5)
   1600c:	ff873683          	ld	a3,-8(a4)
   16010:	fed7bc23          	sd	a3,-8(a5)
   16014:	fcf81de3          	bne	a6,a5,15fee <memmove+0x64>
   16018:	01867713          	andi	a4,a2,24
   1601c:	95c6                	c.add	a1,a7
   1601e:	01f67813          	andi	a6,a2,31
   16022:	cf0d                	c.beqz	a4,1605c <memmove+0xd2>
   16024:	872e                	c.mv	a4,a1
   16026:	88be                	c.mv	a7,a5
   16028:	4e1d                	c.li	t3,7
   1602a:	00073303          	ld	t1,0(a4)
   1602e:	0721                	c.addi	a4,8
   16030:	40e806b3          	sub	a3,a6,a4
   16034:	0068b023          	sd	t1,0(a7)
   16038:	96ae                	c.add	a3,a1
   1603a:	08a1                	c.addi	a7,8
   1603c:	fede67e3          	bltu	t3,a3,1602a <memmove+0xa0>
   16040:	ff880713          	addi	a4,a6,-8
   16044:	9b61                	c.andi	a4,-8
   16046:	0721                	c.addi	a4,8
   16048:	8a1d                	c.andi	a2,7
   1604a:	97ba                	c.add	a5,a4
   1604c:	95ba                	c.add	a1,a4
   1604e:	b7a5                	c.j	15fb6 <memmove+0x2c>
   16050:	8082                	c.jr	ra
   16052:	fff60693          	addi	a3,a2,-1
   16056:	87aa                	c.mv	a5,a0
   16058:	b795                	c.j	15fbc <memmove+0x32>
   1605a:	8082                	c.jr	ra
   1605c:	8642                	c.mv	a2,a6
   1605e:	bfa1                	c.j	15fb6 <memmove+0x2c>

0000000000016060 <__malloc_lock>:
   16060:	8082                	c.jr	ra

0000000000016062 <__malloc_unlock>:
   16062:	8082                	c.jr	ra

0000000000016064 <_Balloc>:
   16064:	7d3c                	c.ld	a5,120(a0)
   16066:	1101                	c.addi	sp,-32
   16068:	e822                	c.sdsp	s0,16(sp)
   1606a:	e426                	c.sdsp	s1,8(sp)
   1606c:	ec06                	c.sdsp	ra,24(sp)
   1606e:	e04a                	c.sdsp	s2,0(sp)
   16070:	842a                	c.mv	s0,a0
   16072:	84ae                	c.mv	s1,a1
   16074:	c385                	c.beqz	a5,16094 <_Balloc+0x30>
   16076:	00349513          	slli	a0,s1,0x3
   1607a:	97aa                	c.add	a5,a0
   1607c:	6388                	c.ld	a0,0(a5)
   1607e:	c51d                	c.beqz	a0,160ac <_Balloc+0x48>
   16080:	6118                	c.ld	a4,0(a0)
   16082:	e398                	c.sd	a4,0(a5)
   16084:	00053823          	sd	zero,16(a0)
   16088:	60e2                	c.ldsp	ra,24(sp)
   1608a:	6442                	c.ldsp	s0,16(sp)
   1608c:	64a2                	c.ldsp	s1,8(sp)
   1608e:	6902                	c.ldsp	s2,0(sp)
   16090:	6105                	c.addi16sp	sp,32
   16092:	8082                	c.jr	ra
   16094:	04100613          	addi	a2,zero,65
   16098:	45a1                	c.li	a1,8
   1609a:	00004097          	auipc	ra,0x4
   1609e:	21c080e7          	jalr	ra,540(ra) # 1a2b6 <_calloc_r>
   160a2:	fc28                	c.sd	a0,120(s0)
   160a4:	87aa                	c.mv	a5,a0
   160a6:	f961                	c.bnez	a0,16076 <_Balloc+0x12>
   160a8:	4501                	c.li	a0,0
   160aa:	bff9                	c.j	16088 <_Balloc+0x24>
   160ac:	4905                	c.li	s2,1
   160ae:	0099163b          	sllw	a2,s2,s1
   160b2:	8932                	c.mv	s2,a2
   160b4:	061d                	c.addi	a2,7
   160b6:	060a                	c.slli	a2,0x2
   160b8:	4585                	c.li	a1,1
   160ba:	8522                	c.mv	a0,s0
   160bc:	00004097          	auipc	ra,0x4
   160c0:	1fa080e7          	jalr	ra,506(ra) # 1a2b6 <_calloc_r>
   160c4:	d175                	c.beqz	a0,160a8 <_Balloc+0x44>
   160c6:	c504                	c.sw	s1,8(a0)
   160c8:	01252623          	sw	s2,12(a0)
   160cc:	bf65                	c.j	16084 <_Balloc+0x20>

00000000000160ce <_Bfree>:
   160ce:	c981                	c.beqz	a1,160de <_Bfree+0x10>
   160d0:	4598                	c.lw	a4,8(a1)
   160d2:	7d3c                	c.ld	a5,120(a0)
   160d4:	070e                	c.slli	a4,0x3
   160d6:	97ba                	c.add	a5,a4
   160d8:	6398                	c.ld	a4,0(a5)
   160da:	e198                	c.sd	a4,0(a1)
   160dc:	e38c                	c.sd	a1,0(a5)
   160de:	8082                	c.jr	ra

00000000000160e0 <__multadd>:
   160e0:	7179                	c.addi16sp	sp,-48
   160e2:	ec26                	c.sdsp	s1,24(sp)
   160e4:	49c4                	c.lw	s1,20(a1)
   160e6:	6341                	c.lui	t1,0x10
   160e8:	f022                	c.sdsp	s0,32(sp)
   160ea:	e84a                	c.sdsp	s2,16(sp)
   160ec:	e44e                	c.sdsp	s3,8(sp)
   160ee:	f406                	c.sdsp	ra,40(sp)
   160f0:	e052                	c.sdsp	s4,0(sp)
   160f2:	892e                	c.mv	s2,a1
   160f4:	89aa                	c.mv	s3,a0
   160f6:	8436                	c.mv	s0,a3
   160f8:	01858813          	addi	a6,a1,24
   160fc:	4881                	c.li	a7,0
   160fe:	137d                	c.addi	t1,-1
   16100:	00082783          	lw	a5,0(a6)
   16104:	0811                	c.addi	a6,4
   16106:	2885                	c.addiw	a7,1
   16108:	0067f6b3          	and	a3,a5,t1
   1610c:	02c686bb          	mulw	a3,a3,a2
   16110:	0107d79b          	srliw	a5,a5,0x10
   16114:	02c787bb          	mulw	a5,a5,a2
   16118:	9ea1                	c.addw	a3,s0
   1611a:	0106de1b          	srliw	t3,a3,0x10
   1611e:	00d37733          	and	a4,t1,a3
   16122:	01c786bb          	addw	a3,a5,t3
   16126:	0106979b          	slliw	a5,a3,0x10
   1612a:	9f3d                	c.addw	a4,a5
   1612c:	fee82e23          	sw	a4,-4(a6)
   16130:	0106d41b          	srliw	s0,a3,0x10
   16134:	fc98c6e3          	blt	a7,s1,16100 <__multadd+0x20>
   16138:	cc09                	c.beqz	s0,16152 <__multadd+0x72>
   1613a:	00c92783          	lw	a5,12(s2)
   1613e:	02f4d363          	bge	s1,a5,16164 <__multadd+0x84>
   16142:	00448793          	addi	a5,s1,4
   16146:	078a                	c.slli	a5,0x2
   16148:	97ca                	c.add	a5,s2
   1614a:	c780                	c.sw	s0,8(a5)
   1614c:	2485                	c.addiw	s1,1
   1614e:	00992a23          	sw	s1,20(s2)
   16152:	70a2                	c.ldsp	ra,40(sp)
   16154:	7402                	c.ldsp	s0,32(sp)
   16156:	64e2                	c.ldsp	s1,24(sp)
   16158:	69a2                	c.ldsp	s3,8(sp)
   1615a:	6a02                	c.ldsp	s4,0(sp)
   1615c:	854a                	c.mv	a0,s2
   1615e:	6942                	c.ldsp	s2,16(sp)
   16160:	6145                	c.addi16sp	sp,48
   16162:	8082                	c.jr	ra
   16164:	00892583          	lw	a1,8(s2)
   16168:	854e                	c.mv	a0,s3
   1616a:	2585                	c.addiw	a1,1
   1616c:	00000097          	auipc	ra,0x0
   16170:	ef8080e7          	jalr	ra,-264(ra) # 16064 <_Balloc>
   16174:	8a2a                	c.mv	s4,a0
   16176:	c129                	c.beqz	a0,161b8 <__multadd+0xd8>
   16178:	01492603          	lw	a2,20(s2)
   1617c:	01090593          	addi	a1,s2,16
   16180:	0541                	c.addi	a0,16
   16182:	0609                	c.addi	a2,2
   16184:	060a                	c.slli	a2,0x2
   16186:	00000097          	auipc	ra,0x0
   1618a:	d1c080e7          	jalr	ra,-740(ra) # 15ea2 <memcpy>
   1618e:	00892703          	lw	a4,8(s2)
   16192:	0789b783          	ld	a5,120(s3)
   16196:	070e                	c.slli	a4,0x3
   16198:	97ba                	c.add	a5,a4
   1619a:	6398                	c.ld	a4,0(a5)
   1619c:	00e93023          	sd	a4,0(s2)
   161a0:	0127b023          	sd	s2,0(a5)
   161a4:	00448793          	addi	a5,s1,4
   161a8:	8952                	c.mv	s2,s4
   161aa:	078a                	c.slli	a5,0x2
   161ac:	97ca                	c.add	a5,s2
   161ae:	c780                	c.sw	s0,8(a5)
   161b0:	2485                	c.addiw	s1,1
   161b2:	00992a23          	sw	s1,20(s2)
   161b6:	bf71                	c.j	16152 <__multadd+0x72>
   161b8:	00007697          	auipc	a3,0x7
   161bc:	34868693          	addi	a3,a3,840 # 1d500 <zeroes.0+0x78>
   161c0:	4601                	c.li	a2,0
   161c2:	0b500593          	addi	a1,zero,181
   161c6:	00007517          	auipc	a0,0x7
   161ca:	69250513          	addi	a0,a0,1682 # 1d858 <bmask+0x40>
   161ce:	00004097          	auipc	ra,0x4
   161d2:	07c080e7          	jalr	ra,124(ra) # 1a24a <__assert_func>

00000000000161d6 <__s2b>:
   161d6:	7139                	c.addi16sp	sp,-64
   161d8:	f822                	c.sdsp	s0,48(sp)
   161da:	f426                	c.sdsp	s1,40(sp)
   161dc:	f04a                	c.sdsp	s2,32(sp)
   161de:	ec4e                	c.sdsp	s3,24(sp)
   161e0:	e852                	c.sdsp	s4,16(sp)
   161e2:	84b6                	c.mv	s1,a3
   161e4:	842e                	c.mv	s0,a1
   161e6:	26a1                	c.addiw	a3,8
   161e8:	45a5                	c.li	a1,9
   161ea:	fc06                	c.sdsp	ra,56(sp)
   161ec:	e456                	c.sdsp	s5,8(sp)
   161ee:	e05a                	c.sdsp	s6,0(sp)
   161f0:	47a5                	c.li	a5,9
   161f2:	02b6c6bb          	divw	a3,a3,a1
   161f6:	892a                	c.mv	s2,a0
   161f8:	89b2                	c.mv	s3,a2
   161fa:	8a3a                	c.mv	s4,a4
   161fc:	0a97d863          	bge	a5,s1,162ac <__s2b+0xd6>
   16200:	4785                	c.li	a5,1
   16202:	4581                	c.li	a1,0
   16204:	0017979b          	slliw	a5,a5,0x1
   16208:	2585                	c.addiw	a1,1
   1620a:	fed7cde3          	blt	a5,a3,16204 <__s2b+0x2e>
   1620e:	854a                	c.mv	a0,s2
   16210:	00000097          	auipc	ra,0x0
   16214:	e54080e7          	jalr	ra,-428(ra) # 16064 <_Balloc>
   16218:	85aa                	c.mv	a1,a0
   1621a:	c959                	c.beqz	a0,162b0 <__s2b+0xda>
   1621c:	4785                	c.li	a5,1
   1621e:	c95c                	c.sw	a5,20(a0)
   16220:	01452c23          	sw	s4,24(a0)
   16224:	47a5                	c.li	a5,9
   16226:	0937d063          	bge	a5,s3,162a6 <__s2b+0xd0>
   1622a:	02099793          	slli	a5,s3,0x20
   1622e:	00940b13          	addi	s6,s0,9
   16232:	9381                	c.srli	a5,0x20
   16234:	00098a9b          	addiw	s5,s3,0
   16238:	943e                	c.add	s0,a5
   1623a:	8a5a                	c.mv	s4,s6
   1623c:	000a4683          	lbu	a3,0(s4)
   16240:	4629                	c.li	a2,10
   16242:	854a                	c.mv	a0,s2
   16244:	fd06869b          	addiw	a3,a3,-48
   16248:	00000097          	auipc	ra,0x0
   1624c:	e98080e7          	jalr	ra,-360(ra) # 160e0 <__multadd>
   16250:	0a05                	c.addi	s4,1
   16252:	85aa                	c.mv	a1,a0
   16254:	fe8a14e3          	bne	s4,s0,1623c <__s2b+0x66>
   16258:	ff8a841b          	addiw	s0,s5,-8
   1625c:	1402                	c.slli	s0,0x20
   1625e:	9001                	c.srli	s0,0x20
   16260:	945a                	c.add	s0,s6
   16262:	0299d763          	bge	s3,s1,16290 <__s2b+0xba>
   16266:	34fd                	c.addiw	s1,-1
   16268:	413484bb          	subw	s1,s1,s3
   1626c:	1482                	c.slli	s1,0x20
   1626e:	9081                	c.srli	s1,0x20
   16270:	0485                	c.addi	s1,1
   16272:	94a2                	c.add	s1,s0
   16274:	00044683          	lbu	a3,0(s0)
   16278:	4629                	c.li	a2,10
   1627a:	854a                	c.mv	a0,s2
   1627c:	fd06869b          	addiw	a3,a3,-48
   16280:	00000097          	auipc	ra,0x0
   16284:	e60080e7          	jalr	ra,-416(ra) # 160e0 <__multadd>
   16288:	0405                	c.addi	s0,1
   1628a:	85aa                	c.mv	a1,a0
   1628c:	fe9414e3          	bne	s0,s1,16274 <__s2b+0x9e>
   16290:	70e2                	c.ldsp	ra,56(sp)
   16292:	7442                	c.ldsp	s0,48(sp)
   16294:	74a2                	c.ldsp	s1,40(sp)
   16296:	7902                	c.ldsp	s2,32(sp)
   16298:	69e2                	c.ldsp	s3,24(sp)
   1629a:	6a42                	c.ldsp	s4,16(sp)
   1629c:	6aa2                	c.ldsp	s5,8(sp)
   1629e:	6b02                	c.ldsp	s6,0(sp)
   162a0:	852e                	c.mv	a0,a1
   162a2:	6121                	c.addi16sp	sp,64
   162a4:	8082                	c.jr	ra
   162a6:	0429                	c.addi	s0,10
   162a8:	49a5                	c.li	s3,9
   162aa:	bf65                	c.j	16262 <__s2b+0x8c>
   162ac:	4581                	c.li	a1,0
   162ae:	b785                	c.j	1620e <__s2b+0x38>
   162b0:	00007697          	auipc	a3,0x7
   162b4:	25068693          	addi	a3,a3,592 # 1d500 <zeroes.0+0x78>
   162b8:	4601                	c.li	a2,0
   162ba:	0ce00593          	addi	a1,zero,206
   162be:	00007517          	auipc	a0,0x7
   162c2:	59a50513          	addi	a0,a0,1434 # 1d858 <bmask+0x40>
   162c6:	00004097          	auipc	ra,0x4
   162ca:	f84080e7          	jalr	ra,-124(ra) # 1a24a <__assert_func>

00000000000162ce <__hi0bits>:
   162ce:	7741                	c.lui	a4,0xffff0
   162d0:	8f69                	c.and	a4,a0
   162d2:	87aa                	c.mv	a5,a0
   162d4:	4501                	c.li	a0,0
   162d6:	e701                	c.bnez	a4,162de <__hi0bits+0x10>
   162d8:	0107979b          	slliw	a5,a5,0x10
   162dc:	4541                	c.li	a0,16
   162de:	ff000737          	lui	a4,0xff000
   162e2:	8f7d                	c.and	a4,a5
   162e4:	e701                	c.bnez	a4,162ec <__hi0bits+0x1e>
   162e6:	0087979b          	slliw	a5,a5,0x8
   162ea:	2521                	c.addiw	a0,8
   162ec:	f0000737          	lui	a4,0xf0000
   162f0:	8f7d                	c.and	a4,a5
   162f2:	e701                	c.bnez	a4,162fa <__hi0bits+0x2c>
   162f4:	0047979b          	slliw	a5,a5,0x4
   162f8:	2511                	c.addiw	a0,4
   162fa:	c0000737          	lui	a4,0xc0000
   162fe:	8f7d                	c.and	a4,a5
   16300:	e701                	c.bnez	a4,16308 <__hi0bits+0x3a>
   16302:	0027979b          	slliw	a5,a5,0x2
   16306:	2509                	c.addiw	a0,2
   16308:	0007c663          	blt	a5,zero,16314 <__hi0bits+0x46>
   1630c:	83f9                	c.srli	a5,0x1e
   1630e:	8b85                	c.andi	a5,1
   16310:	2505                	c.addiw	a0,1
   16312:	c391                	c.beqz	a5,16316 <__hi0bits+0x48>
   16314:	8082                	c.jr	ra
   16316:	02000513          	addi	a0,zero,32
   1631a:	8082                	c.jr	ra

000000000001631c <__lo0bits>:
   1631c:	411c                	c.lw	a5,0(a0)
   1631e:	872a                	c.mv	a4,a0
   16320:	0077f693          	andi	a3,a5,7
   16324:	863e                	c.mv	a2,a5
   16326:	ce81                	c.beqz	a3,1633e <__lo0bits+0x22>
   16328:	0017f693          	andi	a3,a5,1
   1632c:	4501                	c.li	a0,0
   1632e:	ee9d                	c.bnez	a3,1636c <__lo0bits+0x50>
   16330:	8a09                	c.andi	a2,2
   16332:	ce25                	c.beqz	a2,163aa <__lo0bits+0x8e>
   16334:	0017d79b          	srliw	a5,a5,0x1
   16338:	c31c                	c.sw	a5,0(a4)
   1633a:	4505                	c.li	a0,1
   1633c:	8082                	c.jr	ra
   1633e:	03079693          	slli	a3,a5,0x30
   16342:	92c1                	c.srli	a3,0x30
   16344:	4501                	c.li	a0,0
   16346:	cab9                	c.beqz	a3,1639c <__lo0bits+0x80>
   16348:	0ff7f693          	andi	a3,a5,255
   1634c:	c2a9                	c.beqz	a3,1638e <__lo0bits+0x72>
   1634e:	00f7f693          	andi	a3,a5,15
   16352:	c69d                	c.beqz	a3,16380 <__lo0bits+0x64>
   16354:	0037f693          	andi	a3,a5,3
   16358:	ce89                	c.beqz	a3,16372 <__lo0bits+0x56>
   1635a:	0017f693          	andi	a3,a5,1
   1635e:	ea81                	c.bnez	a3,1636e <__lo0bits+0x52>
   16360:	0017d79b          	srliw	a5,a5,0x1
   16364:	2505                	c.addiw	a0,1
   16366:	e781                	c.bnez	a5,1636e <__lo0bits+0x52>
   16368:	02000513          	addi	a0,zero,32
   1636c:	8082                	c.jr	ra
   1636e:	c31c                	c.sw	a5,0(a4)
   16370:	8082                	c.jr	ra
   16372:	0027d79b          	srliw	a5,a5,0x2
   16376:	0017f693          	andi	a3,a5,1
   1637a:	2509                	c.addiw	a0,2
   1637c:	faed                	c.bnez	a3,1636e <__lo0bits+0x52>
   1637e:	b7cd                	c.j	16360 <__lo0bits+0x44>
   16380:	0047d79b          	srliw	a5,a5,0x4
   16384:	0037f693          	andi	a3,a5,3
   16388:	2511                	c.addiw	a0,4
   1638a:	fae1                	c.bnez	a3,1635a <__lo0bits+0x3e>
   1638c:	b7dd                	c.j	16372 <__lo0bits+0x56>
   1638e:	0087d79b          	srliw	a5,a5,0x8
   16392:	00f7f693          	andi	a3,a5,15
   16396:	2521                	c.addiw	a0,8
   16398:	fed5                	c.bnez	a3,16354 <__lo0bits+0x38>
   1639a:	b7dd                	c.j	16380 <__lo0bits+0x64>
   1639c:	0107d79b          	srliw	a5,a5,0x10
   163a0:	0ff7f693          	andi	a3,a5,255
   163a4:	4541                	c.li	a0,16
   163a6:	f6c5                	c.bnez	a3,1634e <__lo0bits+0x32>
   163a8:	b7dd                	c.j	1638e <__lo0bits+0x72>
   163aa:	0027d79b          	srliw	a5,a5,0x2
   163ae:	c31c                	c.sw	a5,0(a4)
   163b0:	4509                	c.li	a0,2
   163b2:	8082                	c.jr	ra

00000000000163b4 <__i2b>:
   163b4:	7d3c                	c.ld	a5,120(a0)
   163b6:	1101                	c.addi	sp,-32
   163b8:	e822                	c.sdsp	s0,16(sp)
   163ba:	e426                	c.sdsp	s1,8(sp)
   163bc:	ec06                	c.sdsp	ra,24(sp)
   163be:	842a                	c.mv	s0,a0
   163c0:	84ae                	c.mv	s1,a1
   163c2:	cf91                	c.beqz	a5,163de <__i2b+0x2a>
   163c4:	6788                	c.ld	a0,8(a5)
   163c6:	c529                	c.beqz	a0,16410 <__i2b+0x5c>
   163c8:	6118                	c.ld	a4,0(a0)
   163ca:	e798                	c.sd	a4,8(a5)
   163cc:	60e2                	c.ldsp	ra,24(sp)
   163ce:	6442                	c.ldsp	s0,16(sp)
   163d0:	4785                	c.li	a5,1
   163d2:	1782                	c.slli	a5,0x20
   163d4:	cd04                	c.sw	s1,24(a0)
   163d6:	e91c                	c.sd	a5,16(a0)
   163d8:	64a2                	c.ldsp	s1,8(sp)
   163da:	6105                	c.addi16sp	sp,32
   163dc:	8082                	c.jr	ra
   163de:	04100613          	addi	a2,zero,65
   163e2:	45a1                	c.li	a1,8
   163e4:	00004097          	auipc	ra,0x4
   163e8:	ed2080e7          	jalr	ra,-302(ra) # 1a2b6 <_calloc_r>
   163ec:	fc28                	c.sd	a0,120(s0)
   163ee:	87aa                	c.mv	a5,a0
   163f0:	f971                	c.bnez	a0,163c4 <__i2b+0x10>
   163f2:	00007697          	auipc	a3,0x7
   163f6:	10e68693          	addi	a3,a3,270 # 1d500 <zeroes.0+0x78>
   163fa:	4601                	c.li	a2,0
   163fc:	14000593          	addi	a1,zero,320
   16400:	00007517          	auipc	a0,0x7
   16404:	45850513          	addi	a0,a0,1112 # 1d858 <bmask+0x40>
   16408:	00004097          	auipc	ra,0x4
   1640c:	e42080e7          	jalr	ra,-446(ra) # 1a24a <__assert_func>
   16410:	02400613          	addi	a2,zero,36
   16414:	4585                	c.li	a1,1
   16416:	8522                	c.mv	a0,s0
   16418:	00004097          	auipc	ra,0x4
   1641c:	e9e080e7          	jalr	ra,-354(ra) # 1a2b6 <_calloc_r>
   16420:	d969                	c.beqz	a0,163f2 <__i2b+0x3e>
   16422:	4785                	c.li	a5,1
   16424:	1786                	c.slli	a5,0x21
   16426:	0785                	c.addi	a5,1
   16428:	e51c                	c.sd	a5,8(a0)
   1642a:	b74d                	c.j	163cc <__i2b+0x18>

000000000001642c <__multiply>:
   1642c:	7179                	c.addi16sp	sp,-48
   1642e:	e84a                	c.sdsp	s2,16(sp)
   16430:	e44e                	c.sdsp	s3,8(sp)
   16432:	01462903          	lw	s2,20(a2)
   16436:	0145a983          	lw	s3,20(a1)
   1643a:	ec26                	c.sdsp	s1,24(sp)
   1643c:	e052                	c.sdsp	s4,0(sp)
   1643e:	f406                	c.sdsp	ra,40(sp)
   16440:	f022                	c.sdsp	s0,32(sp)
   16442:	8a2e                	c.mv	s4,a1
   16444:	84b2                	c.mv	s1,a2
   16446:	0129c763          	blt	s3,s2,16454 <__multiply+0x28>
   1644a:	87ca                	c.mv	a5,s2
   1644c:	84ae                	c.mv	s1,a1
   1644e:	894e                	c.mv	s2,s3
   16450:	8a32                	c.mv	s4,a2
   16452:	89be                	c.mv	s3,a5
   16454:	44dc                	c.lw	a5,12(s1)
   16456:	0139043b          	addw	s0,s2,s3
   1645a:	448c                	c.lw	a1,8(s1)
   1645c:	0087d363          	bge	a5,s0,16462 <__multiply+0x36>
   16460:	2585                	c.addiw	a1,1
   16462:	00000097          	auipc	ra,0x0
   16466:	c02080e7          	jalr	ra,-1022(ra) # 16064 <_Balloc>
   1646a:	14050c63          	beq	a0,zero,165c2 <__multiply+0x196>
   1646e:	01850313          	addi	t1,a0,24
   16472:	00241893          	slli	a7,s0,0x2
   16476:	989a                	c.add	a7,t1
   16478:	879a                	c.mv	a5,t1
   1647a:	01137763          	bgeu	t1,a7,16488 <__multiply+0x5c>
   1647e:	0007a023          	sw	zero,0(a5)
   16482:	0791                	c.addi	a5,4
   16484:	ff17ede3          	bltu	a5,a7,1647e <__multiply+0x52>
   16488:	018a0813          	addi	a6,s4,24
   1648c:	00299e13          	slli	t3,s3,0x2
   16490:	01848e93          	addi	t4,s1,24
   16494:	00291593          	slli	a1,s2,0x2
   16498:	9e42                	c.add	t3,a6
   1649a:	95f6                	c.add	a1,t4
   1649c:	0fc87a63          	bgeu	a6,t3,16590 <__multiply+0x164>
   164a0:	01948793          	addi	a5,s1,25
   164a4:	4f11                	c.li	t5,4
   164a6:	10f5f763          	bgeu	a1,a5,165b4 <__multiply+0x188>
   164aa:	6641                	c.lui	a2,0x10
   164ac:	167d                	c.addi	a2,-1
   164ae:	a809                	c.j	164c0 <__multiply+0x94>
   164b0:	0102d29b          	srliw	t0,t0,0x10
   164b4:	06029c63          	bne	t0,zero,1652c <__multiply+0x100>
   164b8:	0811                	c.addi	a6,4
   164ba:	0311                	c.addi	t1,4
   164bc:	0dc87a63          	bgeu	a6,t3,16590 <__multiply+0x164>
   164c0:	00082283          	lw	t0,0(a6)
   164c4:	00c2f4b3          	and	s1,t0,a2
   164c8:	d4e5                	c.beqz	s1,164b0 <__multiply+0x84>
   164ca:	839a                	c.mv	t2,t1
   164cc:	82f6                	c.mv	t0,t4
   164ce:	4901                	c.li	s2,0
   164d0:	0002a683          	lw	a3,0(t0) # 103b8 <memset+0x90>
   164d4:	0003af83          	lw	t6,0(t2)
   164d8:	0391                	c.addi	t2,4
   164da:	00c6f7b3          	and	a5,a3,a2
   164de:	029787bb          	mulw	a5,a5,s1
   164e2:	0106d71b          	srliw	a4,a3,0x10
   164e6:	00cff6b3          	and	a3,t6,a2
   164ea:	010fdf9b          	srliw	t6,t6,0x10
   164ee:	0291                	c.addi	t0,4
   164f0:	0297073b          	mulw	a4,a4,s1
   164f4:	9fb5                	c.addw	a5,a3
   164f6:	012787bb          	addw	a5,a5,s2
   164fa:	0107d69b          	srliw	a3,a5,0x10
   164fe:	8ff1                	c.and	a5,a2
   16500:	01f7073b          	addw	a4,a4,t6
   16504:	9f35                	c.addw	a4,a3
   16506:	0107169b          	slliw	a3,a4,0x10
   1650a:	8fd5                	c.or	a5,a3
   1650c:	fef3ae23          	sw	a5,-4(t2)
   16510:	0107591b          	srliw	s2,a4,0x10
   16514:	fab2eee3          	bltu	t0,a1,164d0 <__multiply+0xa4>
   16518:	01e307b3          	add	a5,t1,t5
   1651c:	0127a023          	sw	s2,0(a5)
   16520:	00082283          	lw	t0,0(a6)
   16524:	0102d29b          	srliw	t0,t0,0x10
   16528:	f80288e3          	beq	t0,zero,164b8 <__multiply+0x8c>
   1652c:	00032683          	lw	a3,0(t1) # 10000 <register_fini-0xb0>
   16530:	839a                	c.mv	t2,t1
   16532:	8ff6                	c.mv	t6,t4
   16534:	84b6                	c.mv	s1,a3
   16536:	4701                	c.li	a4,0
   16538:	000fa783          	lw	a5,0(t6)
   1653c:	0104d99b          	srliw	s3,s1,0x10
   16540:	8ef1                	c.and	a3,a2
   16542:	8ff1                	c.and	a5,a2
   16544:	025787bb          	mulw	a5,a5,t0
   16548:	0043a483          	lw	s1,4(t2)
   1654c:	0391                	c.addi	t2,4
   1654e:	0f91                	c.addi	t6,4
   16550:	00c4f933          	and	s2,s1,a2
   16554:	013787bb          	addw	a5,a5,s3
   16558:	9fb9                	c.addw	a5,a4
   1655a:	0107971b          	slliw	a4,a5,0x10
   1655e:	8ed9                	c.or	a3,a4
   16560:	fed3ae23          	sw	a3,-4(t2)
   16564:	ffefd703          	lhu	a4,-2(t6)
   16568:	0107d79b          	srliw	a5,a5,0x10
   1656c:	0257073b          	mulw	a4,a4,t0
   16570:	0127073b          	addw	a4,a4,s2
   16574:	9fb9                	c.addw	a5,a4
   16576:	0007869b          	addiw	a3,a5,0
   1657a:	0107d71b          	srliw	a4,a5,0x10
   1657e:	fabfede3          	bltu	t6,a1,16538 <__multiply+0x10c>
   16582:	01e307b3          	add	a5,t1,t5
   16586:	c394                	c.sw	a3,0(a5)
   16588:	0811                	c.addi	a6,4
   1658a:	0311                	c.addi	t1,4
   1658c:	f3c86ae3          	bltu	a6,t3,164c0 <__multiply+0x94>
   16590:	00804563          	blt	zero,s0,1659a <__multiply+0x16e>
   16594:	a039                	c.j	165a2 <__multiply+0x176>
   16596:	347d                	c.addiw	s0,-1
   16598:	c409                	c.beqz	s0,165a2 <__multiply+0x176>
   1659a:	ffc8a783          	lw	a5,-4(a7)
   1659e:	18f1                	c.addi	a7,-4
   165a0:	dbfd                	c.beqz	a5,16596 <__multiply+0x16a>
   165a2:	70a2                	c.ldsp	ra,40(sp)
   165a4:	c940                	c.sw	s0,20(a0)
   165a6:	7402                	c.ldsp	s0,32(sp)
   165a8:	64e2                	c.ldsp	s1,24(sp)
   165aa:	6942                	c.ldsp	s2,16(sp)
   165ac:	69a2                	c.ldsp	s3,8(sp)
   165ae:	6a02                	c.ldsp	s4,0(sp)
   165b0:	6145                	c.addi16sp	sp,48
   165b2:	8082                	c.jr	ra
   165b4:	40958f33          	sub	t5,a1,s1
   165b8:	1f1d                	c.addi	t5,-25
   165ba:	ffcf7f13          	andi	t5,t5,-4
   165be:	0f11                	c.addi	t5,4
   165c0:	b5ed                	c.j	164aa <__multiply+0x7e>
   165c2:	00007697          	auipc	a3,0x7
   165c6:	f3e68693          	addi	a3,a3,-194 # 1d500 <zeroes.0+0x78>
   165ca:	4601                	c.li	a2,0
   165cc:	15d00593          	addi	a1,zero,349
   165d0:	00007517          	auipc	a0,0x7
   165d4:	28850513          	addi	a0,a0,648 # 1d858 <bmask+0x40>
   165d8:	00004097          	auipc	ra,0x4
   165dc:	c72080e7          	jalr	ra,-910(ra) # 1a24a <__assert_func>

00000000000165e0 <__pow5mult>:
   165e0:	7179                	c.addi16sp	sp,-48
   165e2:	f022                	c.sdsp	s0,32(sp)
   165e4:	e84a                	c.sdsp	s2,16(sp)
   165e6:	e44e                	c.sdsp	s3,8(sp)
   165e8:	f406                	c.sdsp	ra,40(sp)
   165ea:	ec26                	c.sdsp	s1,24(sp)
   165ec:	00367793          	andi	a5,a2,3
   165f0:	8432                	c.mv	s0,a2
   165f2:	89aa                	c.mv	s3,a0
   165f4:	892e                	c.mv	s2,a1
   165f6:	efb5                	c.bnez	a5,16672 <__pow5mult+0x92>
   165f8:	8409                	c.srai	s0,0x2
   165fa:	c431                	c.beqz	s0,16646 <__pow5mult+0x66>
   165fc:	0709b483          	ld	s1,112(s3)
   16600:	c8c1                	c.beqz	s1,16690 <__pow5mult+0xb0>
   16602:	00147793          	andi	a5,s0,1
   16606:	eb89                	c.bnez	a5,16618 <__pow5mult+0x38>
   16608:	8405                	c.srai	s0,0x1
   1660a:	cc15                	c.beqz	s0,16646 <__pow5mult+0x66>
   1660c:	6088                	c.ld	a0,0(s1)
   1660e:	c521                	c.beqz	a0,16656 <__pow5mult+0x76>
   16610:	84aa                	c.mv	s1,a0
   16612:	00147793          	andi	a5,s0,1
   16616:	dbed                	c.beqz	a5,16608 <__pow5mult+0x28>
   16618:	8626                	c.mv	a2,s1
   1661a:	85ca                	c.mv	a1,s2
   1661c:	854e                	c.mv	a0,s3
   1661e:	00000097          	auipc	ra,0x0
   16622:	e0e080e7          	jalr	ra,-498(ra) # 1642c <__multiply>
   16626:	04090463          	beq	s2,zero,1666e <__pow5mult+0x8e>
   1662a:	00892703          	lw	a4,8(s2)
   1662e:	0789b783          	ld	a5,120(s3)
   16632:	8405                	c.srai	s0,0x1
   16634:	070e                	c.slli	a4,0x3
   16636:	97ba                	c.add	a5,a4
   16638:	6398                	c.ld	a4,0(a5)
   1663a:	00e93023          	sd	a4,0(s2)
   1663e:	0127b023          	sd	s2,0(a5)
   16642:	892a                	c.mv	s2,a0
   16644:	f461                	c.bnez	s0,1660c <__pow5mult+0x2c>
   16646:	70a2                	c.ldsp	ra,40(sp)
   16648:	7402                	c.ldsp	s0,32(sp)
   1664a:	64e2                	c.ldsp	s1,24(sp)
   1664c:	69a2                	c.ldsp	s3,8(sp)
   1664e:	854a                	c.mv	a0,s2
   16650:	6942                	c.ldsp	s2,16(sp)
   16652:	6145                	c.addi16sp	sp,48
   16654:	8082                	c.jr	ra
   16656:	8626                	c.mv	a2,s1
   16658:	85a6                	c.mv	a1,s1
   1665a:	854e                	c.mv	a0,s3
   1665c:	00000097          	auipc	ra,0x0
   16660:	dd0080e7          	jalr	ra,-560(ra) # 1642c <__multiply>
   16664:	e088                	c.sd	a0,0(s1)
   16666:	00053023          	sd	zero,0(a0)
   1666a:	84aa                	c.mv	s1,a0
   1666c:	b75d                	c.j	16612 <__pow5mult+0x32>
   1666e:	892a                	c.mv	s2,a0
   16670:	bf61                	c.j	16608 <__pow5mult+0x28>
   16672:	37fd                	c.addiw	a5,-1
   16674:	00007717          	auipc	a4,0x7
   16678:	29c70713          	addi	a4,a4,668 # 1d910 <p05.0>
   1667c:	078a                	c.slli	a5,0x2
   1667e:	97ba                	c.add	a5,a4
   16680:	4390                	c.lw	a2,0(a5)
   16682:	4681                	c.li	a3,0
   16684:	00000097          	auipc	ra,0x0
   16688:	a5c080e7          	jalr	ra,-1444(ra) # 160e0 <__multadd>
   1668c:	892a                	c.mv	s2,a0
   1668e:	b7ad                	c.j	165f8 <__pow5mult+0x18>
   16690:	4585                	c.li	a1,1
   16692:	854e                	c.mv	a0,s3
   16694:	00000097          	auipc	ra,0x0
   16698:	9d0080e7          	jalr	ra,-1584(ra) # 16064 <_Balloc>
   1669c:	84aa                	c.mv	s1,a0
   1669e:	c919                	c.beqz	a0,166b4 <__pow5mult+0xd4>
   166a0:	27100793          	addi	a5,zero,625
   166a4:	cd1c                	c.sw	a5,24(a0)
   166a6:	4785                	c.li	a5,1
   166a8:	c95c                	c.sw	a5,20(a0)
   166aa:	06a9b823          	sd	a0,112(s3)
   166ae:	00053023          	sd	zero,0(a0)
   166b2:	bf81                	c.j	16602 <__pow5mult+0x22>
   166b4:	00007697          	auipc	a3,0x7
   166b8:	e4c68693          	addi	a3,a3,-436 # 1d500 <zeroes.0+0x78>
   166bc:	4601                	c.li	a2,0
   166be:	14000593          	addi	a1,zero,320
   166c2:	00007517          	auipc	a0,0x7
   166c6:	19650513          	addi	a0,a0,406 # 1d858 <bmask+0x40>
   166ca:	00004097          	auipc	ra,0x4
   166ce:	b80080e7          	jalr	ra,-1152(ra) # 1a24a <__assert_func>

00000000000166d2 <__lshift>:
   166d2:	7139                	c.addi16sp	sp,-64
   166d4:	ec4e                	c.sdsp	s3,24(sp)
   166d6:	0145a983          	lw	s3,20(a1)
   166da:	45dc                	c.lw	a5,12(a1)
   166dc:	e456                	c.sdsp	s5,8(sp)
   166de:	40565a9b          	sraiw	s5,a2,0x5
   166e2:	015989bb          	addw	s3,s3,s5
   166e6:	f822                	c.sdsp	s0,48(sp)
   166e8:	f426                	c.sdsp	s1,40(sp)
   166ea:	f04a                	c.sdsp	s2,32(sp)
   166ec:	e852                	c.sdsp	s4,16(sp)
   166ee:	e05a                	c.sdsp	s6,0(sp)
   166f0:	fc06                	c.sdsp	ra,56(sp)
   166f2:	0019891b          	addiw	s2,s3,1
   166f6:	84ae                	c.mv	s1,a1
   166f8:	8432                	c.mv	s0,a2
   166fa:	458c                	c.lw	a1,8(a1)
   166fc:	8a2a                	c.mv	s4,a0
   166fe:	40565b13          	srai	s6,a2,0x5
   16702:	0127d763          	bge	a5,s2,16710 <__lshift+0x3e>
   16706:	0017979b          	slliw	a5,a5,0x1
   1670a:	2585                	c.addiw	a1,1
   1670c:	ff27cde3          	blt	a5,s2,16706 <__lshift+0x34>
   16710:	8552                	c.mv	a0,s4
   16712:	00000097          	auipc	ra,0x0
   16716:	952080e7          	jalr	ra,-1710(ra) # 16064 <_Balloc>
   1671a:	c571                	c.beqz	a0,167e6 <__lshift+0x114>
   1671c:	01850693          	addi	a3,a0,24
   16720:	03605463          	bge	zero,s6,16748 <__lshift+0x76>
   16724:	006a871b          	addiw	a4,s5,6
   16728:	02071793          	slli	a5,a4,0x20
   1672c:	01e7d713          	srli	a4,a5,0x1e
   16730:	972a                	c.add	a4,a0
   16732:	87b6                	c.mv	a5,a3
   16734:	0791                	c.addi	a5,4
   16736:	fe07ae23          	sw	zero,-4(a5)
   1673a:	fee79de3          	bne	a5,a4,16734 <__lshift+0x62>
   1673e:	020a9793          	slli	a5,s5,0x20
   16742:	01e7da93          	srli	s5,a5,0x1e
   16746:	96d6                	c.add	a3,s5
   16748:	0144a803          	lw	a6,20(s1)
   1674c:	01848793          	addi	a5,s1,24
   16750:	01f47313          	andi	t1,s0,31
   16754:	080a                	c.slli	a6,0x2
   16756:	983e                	c.add	a6,a5
   16758:	06030863          	beq	t1,zero,167c8 <__lshift+0xf6>
   1675c:	02000593          	addi	a1,zero,32
   16760:	406585bb          	subw	a1,a1,t1
   16764:	88b6                	c.mv	a7,a3
   16766:	4701                	c.li	a4,0
   16768:	4390                	c.lw	a2,0(a5)
   1676a:	0891                	c.addi	a7,4
   1676c:	0791                	c.addi	a5,4
   1676e:	0066163b          	sllw	a2,a2,t1
   16772:	8f51                	c.or	a4,a2
   16774:	fee8ae23          	sw	a4,-4(a7)
   16778:	ffc7a703          	lw	a4,-4(a5)
   1677c:	00b7573b          	srlw	a4,a4,a1
   16780:	ff07e4e3          	bltu	a5,a6,16768 <__lshift+0x96>
   16784:	01948613          	addi	a2,s1,25
   16788:	4791                	c.li	a5,4
   1678a:	00c86763          	bltu	a6,a2,16798 <__lshift+0xc6>
   1678e:	409807b3          	sub	a5,a6,s1
   16792:	179d                	c.addi	a5,-25
   16794:	9bf1                	c.andi	a5,-4
   16796:	0791                	c.addi	a5,4
   16798:	96be                	c.add	a3,a5
   1679a:	c298                	c.sw	a4,0(a3)
   1679c:	c311                	c.beqz	a4,167a0 <__lshift+0xce>
   1679e:	89ca                	c.mv	s3,s2
   167a0:	4498                	c.lw	a4,8(s1)
   167a2:	078a3783          	ld	a5,120(s4)
   167a6:	70e2                	c.ldsp	ra,56(sp)
   167a8:	070e                	c.slli	a4,0x3
   167aa:	97ba                	c.add	a5,a4
   167ac:	6398                	c.ld	a4,0(a5)
   167ae:	01352a23          	sw	s3,20(a0)
   167b2:	7442                	c.ldsp	s0,48(sp)
   167b4:	e098                	c.sd	a4,0(s1)
   167b6:	e384                	c.sd	s1,0(a5)
   167b8:	7902                	c.ldsp	s2,32(sp)
   167ba:	74a2                	c.ldsp	s1,40(sp)
   167bc:	69e2                	c.ldsp	s3,24(sp)
   167be:	6a42                	c.ldsp	s4,16(sp)
   167c0:	6aa2                	c.ldsp	s5,8(sp)
   167c2:	6b02                	c.ldsp	s6,0(sp)
   167c4:	6121                	c.addi16sp	sp,64
   167c6:	8082                	c.jr	ra
   167c8:	4398                	c.lw	a4,0(a5)
   167ca:	0791                	c.addi	a5,4
   167cc:	0691                	c.addi	a3,4
   167ce:	fee6ae23          	sw	a4,-4(a3)
   167d2:	fd07f7e3          	bgeu	a5,a6,167a0 <__lshift+0xce>
   167d6:	4398                	c.lw	a4,0(a5)
   167d8:	0791                	c.addi	a5,4
   167da:	0691                	c.addi	a3,4
   167dc:	fee6ae23          	sw	a4,-4(a3)
   167e0:	ff07e4e3          	bltu	a5,a6,167c8 <__lshift+0xf6>
   167e4:	bf75                	c.j	167a0 <__lshift+0xce>
   167e6:	00007697          	auipc	a3,0x7
   167ea:	d1a68693          	addi	a3,a3,-742 # 1d500 <zeroes.0+0x78>
   167ee:	4601                	c.li	a2,0
   167f0:	1d900593          	addi	a1,zero,473
   167f4:	00007517          	auipc	a0,0x7
   167f8:	06450513          	addi	a0,a0,100 # 1d858 <bmask+0x40>
   167fc:	00004097          	auipc	ra,0x4
   16800:	a4e080e7          	jalr	ra,-1458(ra) # 1a24a <__assert_func>

0000000000016804 <__mcmp>:
   16804:	49dc                	c.lw	a5,20(a1)
   16806:	882a                	c.mv	a6,a0
   16808:	4948                	c.lw	a0,20(a0)
   1680a:	9d1d                	c.subw	a0,a5
   1680c:	e50d                	c.bnez	a0,16836 <__mcmp+0x32>
   1680e:	078a                	c.slli	a5,0x2
   16810:	0861                	c.addi	a6,24
   16812:	05e1                	c.addi	a1,24
   16814:	00f80733          	add	a4,a6,a5
   16818:	97ae                	c.add	a5,a1
   1681a:	a019                	c.j	16820 <__mcmp+0x1c>
   1681c:	00e87d63          	bgeu	a6,a4,16836 <__mcmp+0x32>
   16820:	ffc72603          	lw	a2,-4(a4)
   16824:	ffc7a683          	lw	a3,-4(a5)
   16828:	1771                	c.addi	a4,-4
   1682a:	17f1                	c.addi	a5,-4
   1682c:	fed608e3          	beq	a2,a3,1681c <__mcmp+0x18>
   16830:	557d                	c.li	a0,-1
   16832:	00d67363          	bgeu	a2,a3,16838 <__mcmp+0x34>
   16836:	8082                	c.jr	ra
   16838:	4505                	c.li	a0,1
   1683a:	8082                	c.jr	ra

000000000001683c <__mdiff>:
   1683c:	1101                	c.addi	sp,-32
   1683e:	4a58                	c.lw	a4,20(a2)
   16840:	e04a                	c.sdsp	s2,0(sp)
   16842:	0145a903          	lw	s2,20(a1)
   16846:	e822                	c.sdsp	s0,16(sp)
   16848:	e426                	c.sdsp	s1,8(sp)
   1684a:	ec06                	c.sdsp	ra,24(sp)
   1684c:	40e9093b          	subw	s2,s2,a4
   16850:	84ae                	c.mv	s1,a1
   16852:	8432                	c.mv	s0,a2
   16854:	12091e63          	bne	s2,zero,16990 <__mdiff+0x154>
   16858:	00271693          	slli	a3,a4,0x2
   1685c:	05e1                	c.addi	a1,24
   1685e:	01860713          	addi	a4,a2,24 # 10018 <register_fini-0x98>
   16862:	00d587b3          	add	a5,a1,a3
   16866:	9736                	c.add	a4,a3
   16868:	a019                	c.j	1686e <__mdiff+0x32>
   1686a:	12f5f763          	bgeu	a1,a5,16998 <__mdiff+0x15c>
   1686e:	ffc7a603          	lw	a2,-4(a5)
   16872:	ffc72683          	lw	a3,-4(a4)
   16876:	17f1                	c.addi	a5,-4
   16878:	1771                	c.addi	a4,-4
   1687a:	fed608e3          	beq	a2,a3,1686a <__mdiff+0x2e>
   1687e:	10d66463          	bltu	a2,a3,16986 <__mdiff+0x14a>
   16882:	448c                	c.lw	a1,8(s1)
   16884:	fffff097          	auipc	ra,0xfffff
   16888:	7e0080e7          	jalr	ra,2016(ra) # 16064 <_Balloc>
   1688c:	12050663          	beq	a0,zero,169b8 <__mdiff+0x17c>
   16890:	0144a883          	lw	a7,20(s1)
   16894:	01442f83          	lw	t6,20(s0)
   16898:	04e1                	c.addi	s1,24
   1689a:	00289313          	slli	t1,a7,0x2
   1689e:	01840813          	addi	a6,s0,24
   168a2:	0f8a                	c.slli	t6,0x2
   168a4:	01850f13          	addi	t5,a0,24
   168a8:	6e41                	c.lui	t3,0x10
   168aa:	01252823          	sw	s2,16(a0)
   168ae:	9326                	c.add	t1,s1
   168b0:	9fc2                	c.add	t6,a6
   168b2:	867a                	c.mv	a2,t5
   168b4:	8ea6                	c.mv	t4,s1
   168b6:	4701                	c.li	a4,0
   168b8:	1e7d                	c.addi	t3,-1
   168ba:	000ea683          	lw	a3,0(t4)
   168be:	00082583          	lw	a1,0(a6)
   168c2:	0611                	c.addi	a2,4
   168c4:	01c6f7b3          	and	a5,a3,t3
   168c8:	9fb9                	c.addw	a5,a4
   168ca:	01c5f733          	and	a4,a1,t3
   168ce:	9f99                	c.subw	a5,a4
   168d0:	0105d59b          	srliw	a1,a1,0x10
   168d4:	0106d71b          	srliw	a4,a3,0x10
   168d8:	9f0d                	c.subw	a4,a1
   168da:	4107d69b          	sraiw	a3,a5,0x10
   168de:	9f35                	c.addw	a4,a3
   168e0:	0107169b          	slliw	a3,a4,0x10
   168e4:	01c7f7b3          	and	a5,a5,t3
   168e8:	8fd5                	c.or	a5,a3
   168ea:	2781                	c.addiw	a5,0
   168ec:	0811                	c.addi	a6,4
   168ee:	fef62e23          	sw	a5,-4(a2)
   168f2:	0e91                	c.addi	t4,4
   168f4:	4107571b          	sraiw	a4,a4,0x10
   168f8:	fdf861e3          	bltu	a6,t6,168ba <__mdiff+0x7e>
   168fc:	408f85b3          	sub	a1,t6,s0
   16900:	159d                	c.addi	a1,-25
   16902:	0465                	c.addi	s0,25
   16904:	8189                	c.srli	a1,0x2
   16906:	4681                	c.li	a3,0
   16908:	008fe463          	bltu	t6,s0,16910 <__mdiff+0xd4>
   1690c:	00259693          	slli	a3,a1,0x2
   16910:	96fa                	c.add	a3,t5
   16912:	4811                	c.li	a6,4
   16914:	008fe563          	bltu	t6,s0,1691e <__mdiff+0xe2>
   16918:	0585                	c.addi	a1,1
   1691a:	00259813          	slli	a6,a1,0x2
   1691e:	94c2                	c.add	s1,a6
   16920:	9f42                	c.add	t5,a6
   16922:	0464f463          	bgeu	s1,t1,1696a <__mdiff+0x12e>
   16926:	6841                	c.lui	a6,0x10
   16928:	85fa                	c.mv	a1,t5
   1692a:	8626                	c.mv	a2,s1
   1692c:	187d                	c.addi	a6,-1
   1692e:	4214                	c.lw	a3,0(a2)
   16930:	0591                	c.addi	a1,4
   16932:	0611                	c.addi	a2,4
   16934:	0106f7b3          	and	a5,a3,a6
   16938:	9fb9                	c.addw	a5,a4
   1693a:	0106d71b          	srliw	a4,a3,0x10
   1693e:	4107d69b          	sraiw	a3,a5,0x10
   16942:	9f35                	c.addw	a4,a3
   16944:	0107169b          	slliw	a3,a4,0x10
   16948:	0107f7b3          	and	a5,a5,a6
   1694c:	8fd5                	c.or	a5,a3
   1694e:	2781                	c.addiw	a5,0
   16950:	fef5ae23          	sw	a5,-4(a1)
   16954:	4107571b          	sraiw	a4,a4,0x10
   16958:	fc666be3          	bltu	a2,t1,1692e <__mdiff+0xf2>
   1695c:	fff30693          	addi	a3,t1,-1
   16960:	409684b3          	sub	s1,a3,s1
   16964:	ffc4f693          	andi	a3,s1,-4
   16968:	96fa                	c.add	a3,t5
   1696a:	e791                	c.bnez	a5,16976 <__mdiff+0x13a>
   1696c:	ffc6a783          	lw	a5,-4(a3)
   16970:	38fd                	c.addiw	a7,-1
   16972:	16f1                	c.addi	a3,-4
   16974:	dfe5                	c.beqz	a5,1696c <__mdiff+0x130>
   16976:	60e2                	c.ldsp	ra,24(sp)
   16978:	6442                	c.ldsp	s0,16(sp)
   1697a:	01152a23          	sw	a7,20(a0)
   1697e:	64a2                	c.ldsp	s1,8(sp)
   16980:	6902                	c.ldsp	s2,0(sp)
   16982:	6105                	c.addi16sp	sp,32
   16984:	8082                	c.jr	ra
   16986:	87a6                	c.mv	a5,s1
   16988:	4905                	c.li	s2,1
   1698a:	84a2                	c.mv	s1,s0
   1698c:	843e                	c.mv	s0,a5
   1698e:	bdd5                	c.j	16882 <__mdiff+0x46>
   16990:	fe094be3          	blt	s2,zero,16986 <__mdiff+0x14a>
   16994:	4901                	c.li	s2,0
   16996:	b5f5                	c.j	16882 <__mdiff+0x46>
   16998:	4581                	c.li	a1,0
   1699a:	fffff097          	auipc	ra,0xfffff
   1699e:	6ca080e7          	jalr	ra,1738(ra) # 16064 <_Balloc>
   169a2:	c915                	c.beqz	a0,169d6 <__mdiff+0x19a>
   169a4:	60e2                	c.ldsp	ra,24(sp)
   169a6:	6442                	c.ldsp	s0,16(sp)
   169a8:	4785                	c.li	a5,1
   169aa:	c95c                	c.sw	a5,20(a0)
   169ac:	00052c23          	sw	zero,24(a0)
   169b0:	64a2                	c.ldsp	s1,8(sp)
   169b2:	6902                	c.ldsp	s2,0(sp)
   169b4:	6105                	c.addi16sp	sp,32
   169b6:	8082                	c.jr	ra
   169b8:	00007697          	auipc	a3,0x7
   169bc:	b4868693          	addi	a3,a3,-1208 # 1d500 <zeroes.0+0x78>
   169c0:	4601                	c.li	a2,0
   169c2:	24000593          	addi	a1,zero,576
   169c6:	00007517          	auipc	a0,0x7
   169ca:	e9250513          	addi	a0,a0,-366 # 1d858 <bmask+0x40>
   169ce:	00004097          	auipc	ra,0x4
   169d2:	87c080e7          	jalr	ra,-1924(ra) # 1a24a <__assert_func>
   169d6:	00007697          	auipc	a3,0x7
   169da:	b2a68693          	addi	a3,a3,-1238 # 1d500 <zeroes.0+0x78>
   169de:	4601                	c.li	a2,0
   169e0:	23200593          	addi	a1,zero,562
   169e4:	00007517          	auipc	a0,0x7
   169e8:	e7450513          	addi	a0,a0,-396 # 1d858 <bmask+0x40>
   169ec:	00004097          	auipc	ra,0x4
   169f0:	85e080e7          	jalr	ra,-1954(ra) # 1a24a <__assert_func>

00000000000169f4 <__ulp>:
   169f4:	e20507d3          	fmv.x.d	a5,fa0
   169f8:	7ff00737          	lui	a4,0x7ff00
   169fc:	9381                	c.srli	a5,0x20
   169fe:	8f7d                	c.and	a4,a5
   16a00:	fcc007b7          	lui	a5,0xfcc00
   16a04:	9fb9                	c.addw	a5,a4
   16a06:	0007871b          	addiw	a4,a5,0
   16a0a:	00e05663          	bge	zero,a4,16a16 <__ulp+0x22>
   16a0e:	1782                	c.slli	a5,0x20
   16a10:	f2078553          	fmv.d.x	fa0,a5
   16a14:	8082                	c.jr	ra
   16a16:	40f007bb          	subw	a5,zero,a5
   16a1a:	4147d71b          	sraiw	a4,a5,0x14
   16a1e:	46cd                	c.li	a3,19
   16a20:	00e6c763          	blt	a3,a4,16a2e <__ulp+0x3a>
   16a24:	000807b7          	lui	a5,0x80
   16a28:	40e7d7bb          	sraw	a5,a5,a4
   16a2c:	b7cd                	c.j	16a0e <__ulp+0x1a>
   16a2e:	fec7069b          	addiw	a3,a4,-20
   16a32:	4679                	c.li	a2,30
   16a34:	4781                	c.li	a5,0
   16a36:	4705                	c.li	a4,1
   16a38:	00d64663          	blt	a2,a3,16a44 <__ulp+0x50>
   16a3c:	80000737          	lui	a4,0x80000
   16a40:	00d7573b          	srlw	a4,a4,a3
   16a44:	9381                	c.srli	a5,0x20
   16a46:	1702                	c.slli	a4,0x20
   16a48:	9301                	c.srli	a4,0x20
   16a4a:	1782                	c.slli	a5,0x20
   16a4c:	8fd9                	c.or	a5,a4
   16a4e:	f2078553          	fmv.d.x	fa0,a5
   16a52:	8082                	c.jr	ra

0000000000016a54 <__b2d>:
   16a54:	7179                	c.addi16sp	sp,-48
   16a56:	ec26                	c.sdsp	s1,24(sp)
   16a58:	4944                	c.lw	s1,20(a0)
   16a5a:	f022                	c.sdsp	s0,32(sp)
   16a5c:	01850413          	addi	s0,a0,24
   16a60:	048a                	c.slli	s1,0x2
   16a62:	94a2                	c.add	s1,s0
   16a64:	e84a                	c.sdsp	s2,16(sp)
   16a66:	ffc4a903          	lw	s2,-4(s1)
   16a6a:	e44e                	c.sdsp	s3,8(sp)
   16a6c:	e052                	c.sdsp	s4,0(sp)
   16a6e:	854a                	c.mv	a0,s2
   16a70:	89ae                	c.mv	s3,a1
   16a72:	f406                	c.sdsp	ra,40(sp)
   16a74:	00000097          	auipc	ra,0x0
   16a78:	85a080e7          	jalr	ra,-1958(ra) # 162ce <__hi0bits>
   16a7c:	02000693          	addi	a3,zero,32
   16a80:	40a687bb          	subw	a5,a3,a0
   16a84:	00f9a023          	sw	a5,0(s3)
   16a88:	47a9                	c.li	a5,10
   16a8a:	ffc48a13          	addi	s4,s1,-4
   16a8e:	06a7df63          	bge	a5,a0,16b0c <__b2d+0xb8>
   16a92:	ff55079b          	addiw	a5,a0,-11
   16a96:	05447763          	bgeu	s0,s4,16ae4 <__b2d+0x90>
   16a9a:	ff84a703          	lw	a4,-8(s1)
   16a9e:	c7a9                	c.beqz	a5,16ae8 <__b2d+0x94>
   16aa0:	40f6853b          	subw	a0,a3,a5
   16aa4:	00f916bb          	sllw	a3,s2,a5
   16aa8:	00a7593b          	srlw	s2,a4,a0
   16aac:	0126e6b3          	or	a3,a3,s2
   16ab0:	3ff00937          	lui	s2,0x3ff00
   16ab4:	0126e6b3          	or	a3,a3,s2
   16ab8:	00f7173b          	sllw	a4,a4,a5
   16abc:	ff848613          	addi	a2,s1,-8
   16ac0:	02069793          	slli	a5,a3,0x20
   16ac4:	0007069b          	addiw	a3,a4,0
   16ac8:	00c47863          	bgeu	s0,a2,16ad8 <__b2d+0x84>
   16acc:	ff44a683          	lw	a3,-12(s1)
   16ad0:	00a6d6bb          	srlw	a3,a3,a0
   16ad4:	8ed9                	c.or	a3,a4
   16ad6:	2681                	c.addiw	a3,0
   16ad8:	9381                	c.srli	a5,0x20
   16ada:	1682                	c.slli	a3,0x20
   16adc:	9281                	c.srli	a3,0x20
   16ade:	1782                	c.slli	a5,0x20
   16ae0:	8fd5                	c.or	a5,a3
   16ae2:	a819                	c.j	16af8 <__b2d+0xa4>
   16ae4:	4701                	c.li	a4,0
   16ae6:	efa1                	c.bnez	a5,16b3e <__b2d+0xea>
   16ae8:	3ff007b7          	lui	a5,0x3ff00
   16aec:	00f967b3          	or	a5,s2,a5
   16af0:	1702                	c.slli	a4,0x20
   16af2:	9301                	c.srli	a4,0x20
   16af4:	1782                	c.slli	a5,0x20
   16af6:	8fd9                	c.or	a5,a4
   16af8:	70a2                	c.ldsp	ra,40(sp)
   16afa:	7402                	c.ldsp	s0,32(sp)
   16afc:	64e2                	c.ldsp	s1,24(sp)
   16afe:	6942                	c.ldsp	s2,16(sp)
   16b00:	69a2                	c.ldsp	s3,8(sp)
   16b02:	6a02                	c.ldsp	s4,0(sp)
   16b04:	f2078553          	fmv.d.x	fa0,a5
   16b08:	6145                	c.addi16sp	sp,48
   16b0a:	8082                	c.jr	ra
   16b0c:	46ad                	c.li	a3,11
   16b0e:	9e89                	c.subw	a3,a0
   16b10:	3ff00737          	lui	a4,0x3ff00
   16b14:	00d957bb          	srlw	a5,s2,a3
   16b18:	8fd9                	c.or	a5,a4
   16b1a:	1782                	c.slli	a5,0x20
   16b1c:	4701                	c.li	a4,0
   16b1e:	01447663          	bgeu	s0,s4,16b2a <__b2d+0xd6>
   16b22:	ff84a703          	lw	a4,-8(s1)
   16b26:	00d7573b          	srlw	a4,a4,a3
   16b2a:	2555                	c.addiw	a0,21
   16b2c:	00a9153b          	sllw	a0,s2,a0
   16b30:	8d59                	c.or	a0,a4
   16b32:	9381                	c.srli	a5,0x20
   16b34:	1502                	c.slli	a0,0x20
   16b36:	9101                	c.srli	a0,0x20
   16b38:	1782                	c.slli	a5,0x20
   16b3a:	8fc9                	c.or	a5,a0
   16b3c:	bf75                	c.j	16af8 <__b2d+0xa4>
   16b3e:	00f917bb          	sllw	a5,s2,a5
   16b42:	3ff00937          	lui	s2,0x3ff00
   16b46:	0127e7b3          	or	a5,a5,s2
   16b4a:	1782                	c.slli	a5,0x20
   16b4c:	4681                	c.li	a3,0
   16b4e:	b769                	c.j	16ad8 <__b2d+0x84>

0000000000016b50 <__d2b>:
   16b50:	7139                	c.addi16sp	sp,-64
   16b52:	e852                	c.sdsp	s4,16(sp)
   16b54:	8a2e                	c.mv	s4,a1
   16b56:	4585                	c.li	a1,1
   16b58:	f822                	c.sdsp	s0,48(sp)
   16b5a:	ec4e                	c.sdsp	s3,24(sp)
   16b5c:	fc06                	c.sdsp	ra,56(sp)
   16b5e:	f426                	c.sdsp	s1,40(sp)
   16b60:	f04a                	c.sdsp	s2,32(sp)
   16b62:	e2050453          	fmv.x.d	s0,fa0
   16b66:	89b2                	c.mv	s3,a2
   16b68:	fffff097          	auipc	ra,0xfffff
   16b6c:	4fc080e7          	jalr	ra,1276(ra) # 16064 <_Balloc>
   16b70:	c579                	c.beqz	a0,16c3e <__d2b+0xee>
   16b72:	42045793          	srai	a5,s0,0x20
   16b76:	0147d91b          	srliw	s2,a5,0x14
   16b7a:	7ff97913          	andi	s2,s2,2047
   16b7e:	17b2                	c.slli	a5,0x2c
   16b80:	84aa                	c.mv	s1,a0
   16b82:	93b1                	c.srli	a5,0x2c
   16b84:	00090563          	beq	s2,zero,16b8e <__d2b+0x3e>
   16b88:	00100737          	lui	a4,0x100
   16b8c:	8fd9                	c.or	a5,a4
   16b8e:	c63e                	c.swsp	a5,12(sp)
   16b90:	2401                	c.addiw	s0,0
   16b92:	c035                	c.beqz	s0,16bf6 <__d2b+0xa6>
   16b94:	0028                	c.addi4spn	a0,sp,8
   16b96:	c422                	c.swsp	s0,8(sp)
   16b98:	fffff097          	auipc	ra,0xfffff
   16b9c:	784080e7          	jalr	ra,1924(ra) # 1631c <__lo0bits>
   16ba0:	c959                	c.beqz	a0,16c36 <__d2b+0xe6>
   16ba2:	4732                	c.lwsp	a4,12(sp)
   16ba4:	46a2                	c.lwsp	a3,8(sp)
   16ba6:	02000793          	addi	a5,zero,32
   16baa:	9f89                	c.subw	a5,a0
   16bac:	00f717bb          	sllw	a5,a4,a5
   16bb0:	8fd5                	c.or	a5,a3
   16bb2:	00a7573b          	srlw	a4,a4,a0
   16bb6:	cc9c                	c.sw	a5,24(s1)
   16bb8:	c63a                	c.swsp	a4,12(sp)
   16bba:	0007079b          	addiw	a5,a4,0
   16bbe:	00f03433          	sltu	s0,zero,a5
   16bc2:	0405                	c.addi	s0,1
   16bc4:	ccdc                	c.sw	a5,28(s1)
   16bc6:	c8c0                	c.sw	s0,20(s1)
   16bc8:	04090563          	beq	s2,zero,16c12 <__d2b+0xc2>
   16bcc:	bcd9091b          	addiw	s2,s2,-1075
   16bd0:	00a9093b          	addw	s2,s2,a0
   16bd4:	03500793          	addi	a5,zero,53
   16bd8:	012a2023          	sw	s2,0(s4)
   16bdc:	40a7853b          	subw	a0,a5,a0
   16be0:	00a9a023          	sw	a0,0(s3)
   16be4:	70e2                	c.ldsp	ra,56(sp)
   16be6:	7442                	c.ldsp	s0,48(sp)
   16be8:	7902                	c.ldsp	s2,32(sp)
   16bea:	69e2                	c.ldsp	s3,24(sp)
   16bec:	6a42                	c.ldsp	s4,16(sp)
   16bee:	8526                	c.mv	a0,s1
   16bf0:	74a2                	c.ldsp	s1,40(sp)
   16bf2:	6121                	c.addi16sp	sp,64
   16bf4:	8082                	c.jr	ra
   16bf6:	0068                	c.addi4spn	a0,sp,12
   16bf8:	fffff097          	auipc	ra,0xfffff
   16bfc:	724080e7          	jalr	ra,1828(ra) # 1631c <__lo0bits>
   16c00:	4785                	c.li	a5,1
   16c02:	c8dc                	c.sw	a5,20(s1)
   16c04:	47b2                	c.lwsp	a5,12(sp)
   16c06:	0205051b          	addiw	a0,a0,32
   16c0a:	4405                	c.li	s0,1
   16c0c:	cc9c                	c.sw	a5,24(s1)
   16c0e:	fa091fe3          	bne	s2,zero,16bcc <__d2b+0x7c>
   16c12:	bce5051b          	addiw	a0,a0,-1074
   16c16:	00241793          	slli	a5,s0,0x2
   16c1a:	00aa2023          	sw	a0,0(s4)
   16c1e:	97a6                	c.add	a5,s1
   16c20:	4bc8                	c.lw	a0,20(a5)
   16c22:	0054141b          	slliw	s0,s0,0x5
   16c26:	fffff097          	auipc	ra,0xfffff
   16c2a:	6a8080e7          	jalr	ra,1704(ra) # 162ce <__hi0bits>
   16c2e:	9c09                	c.subw	s0,a0
   16c30:	0089a023          	sw	s0,0(s3)
   16c34:	bf45                	c.j	16be4 <__d2b+0x94>
   16c36:	4722                	c.lwsp	a4,8(sp)
   16c38:	47b2                	c.lwsp	a5,12(sp)
   16c3a:	cc98                	c.sw	a4,24(s1)
   16c3c:	b749                	c.j	16bbe <__d2b+0x6e>
   16c3e:	00007697          	auipc	a3,0x7
   16c42:	8c268693          	addi	a3,a3,-1854 # 1d500 <zeroes.0+0x78>
   16c46:	4601                	c.li	a2,0
   16c48:	30a00593          	addi	a1,zero,778
   16c4c:	00007517          	auipc	a0,0x7
   16c50:	c0c50513          	addi	a0,a0,-1012 # 1d858 <bmask+0x40>
   16c54:	00003097          	auipc	ra,0x3
   16c58:	5f6080e7          	jalr	ra,1526(ra) # 1a24a <__assert_func>

0000000000016c5c <__ratio>:
   16c5c:	7179                	c.addi16sp	sp,-48
   16c5e:	ec26                	c.sdsp	s1,24(sp)
   16c60:	84ae                	c.mv	s1,a1
   16c62:	002c                	c.addi4spn	a1,sp,8
   16c64:	f406                	c.sdsp	ra,40(sp)
   16c66:	f022                	c.sdsp	s0,32(sp)
   16c68:	e84a                	c.sdsp	s2,16(sp)
   16c6a:	892a                	c.mv	s2,a0
   16c6c:	00000097          	auipc	ra,0x0
   16c70:	de8080e7          	jalr	ra,-536(ra) # 16a54 <__b2d>
   16c74:	006c                	c.addi4spn	a1,sp,12
   16c76:	8526                	c.mv	a0,s1
   16c78:	e2050453          	fmv.x.d	s0,fa0
   16c7c:	00000097          	auipc	ra,0x0
   16c80:	dd8080e7          	jalr	ra,-552(ra) # 16a54 <__b2d>
   16c84:	48d8                	c.lw	a4,20(s1)
   16c86:	01492783          	lw	a5,20(s2) # 3ff00014 <__BSS_END__+0x3fedfc94>
   16c8a:	46b2                	c.lwsp	a3,12(sp)
   16c8c:	9f99                	c.subw	a5,a4
   16c8e:	4722                	c.lwsp	a4,8(sp)
   16c90:	0057979b          	slliw	a5,a5,0x5
   16c94:	9f15                	c.subw	a4,a3
   16c96:	00e786bb          	addw	a3,a5,a4
   16c9a:	87b6                	c.mv	a5,a3
   16c9c:	e2050753          	fmv.x.d	a4,fa0
   16ca0:	02d05863          	bge	zero,a3,16cd0 <__ratio+0x74>
   16ca4:	02045693          	srli	a3,s0,0x20
   16ca8:	0147979b          	slliw	a5,a5,0x14
   16cac:	9fb5                	c.addw	a5,a3
   16cae:	56fd                	c.li	a3,-1
   16cb0:	9281                	c.srli	a3,0x20
   16cb2:	1782                	c.slli	a5,0x20
   16cb4:	8c75                	c.and	s0,a3
   16cb6:	8c5d                	c.or	s0,a5
   16cb8:	f20407d3          	fmv.d.x	fa5,s0
   16cbc:	70a2                	c.ldsp	ra,40(sp)
   16cbe:	7402                	c.ldsp	s0,32(sp)
   16cc0:	f2070753          	fmv.d.x	fa4,a4
   16cc4:	64e2                	c.ldsp	s1,24(sp)
   16cc6:	6942                	c.ldsp	s2,16(sp)
   16cc8:	1ae7f553          	fdiv.d	fa0,fa5,fa4
   16ccc:	6145                	c.addi16sp	sp,48
   16cce:	8082                	c.jr	ra
   16cd0:	02075693          	srli	a3,a4,0x20
   16cd4:	0147979b          	slliw	a5,a5,0x14
   16cd8:	40f687bb          	subw	a5,a3,a5
   16cdc:	56fd                	c.li	a3,-1
   16cde:	9281                	c.srli	a3,0x20
   16ce0:	1782                	c.slli	a5,0x20
   16ce2:	8f75                	c.and	a4,a3
   16ce4:	8f5d                	c.or	a4,a5
   16ce6:	bfc9                	c.j	16cb8 <__ratio+0x5c>

0000000000016ce8 <_mprec_log10>:
   16ce8:	47dd                	c.li	a5,23
   16cea:	00a7df63          	bge	a5,a0,16d08 <_mprec_log10+0x20>
   16cee:	00009797          	auipc	a5,0x9
   16cf2:	5ba7b507          	fld	fa0,1466(a5) # 202a8 <__SDATA_BEGIN__+0x18>
   16cf6:	00009797          	auipc	a5,0x9
   16cfa:	5ba7b787          	fld	fa5,1466(a5) # 202b0 <__SDATA_BEGIN__+0x20>
   16cfe:	357d                	c.addiw	a0,-1
   16d00:	12f57553          	fmul.d	fa0,fa0,fa5
   16d04:	fd6d                	c.bnez	a0,16cfe <_mprec_log10+0x16>
   16d06:	8082                	c.jr	ra
   16d08:	00007797          	auipc	a5,0x7
   16d0c:	c0878793          	addi	a5,a5,-1016 # 1d910 <p05.0>
   16d10:	050e                	c.slli	a0,0x3
   16d12:	953e                	c.add	a0,a5
   16d14:	2908                	c.fld	fa0,16(a0)
   16d16:	8082                	c.jr	ra

0000000000016d18 <__copybits>:
   16d18:	4a54                	c.lw	a3,20(a2)
   16d1a:	35fd                	c.addiw	a1,-1
   16d1c:	4055d59b          	sraiw	a1,a1,0x5
   16d20:	2585                	c.addiw	a1,1
   16d22:	01860793          	addi	a5,a2,24
   16d26:	068a                	c.slli	a3,0x2
   16d28:	058a                	c.slli	a1,0x2
   16d2a:	96be                	c.add	a3,a5
   16d2c:	95aa                	c.add	a1,a0
   16d2e:	02d7f163          	bgeu	a5,a3,16d50 <__copybits+0x38>
   16d32:	872a                	c.mv	a4,a0
   16d34:	0007a803          	lw	a6,0(a5)
   16d38:	0791                	c.addi	a5,4
   16d3a:	0711                	c.addi	a4,4
   16d3c:	ff072e23          	sw	a6,-4(a4) # ffffc <__BSS_END__+0xdfc7c>
   16d40:	fed7eae3          	bltu	a5,a3,16d34 <__copybits+0x1c>
   16d44:	40c687b3          	sub	a5,a3,a2
   16d48:	179d                	c.addi	a5,-25
   16d4a:	9bf1                	c.andi	a5,-4
   16d4c:	0791                	c.addi	a5,4
   16d4e:	953e                	c.add	a0,a5
   16d50:	00b57763          	bgeu	a0,a1,16d5e <__copybits+0x46>
   16d54:	0511                	c.addi	a0,4
   16d56:	fe052e23          	sw	zero,-4(a0)
   16d5a:	feb56de3          	bltu	a0,a1,16d54 <__copybits+0x3c>
   16d5e:	8082                	c.jr	ra

0000000000016d60 <__any_on>:
   16d60:	4958                	c.lw	a4,20(a0)
   16d62:	4055d613          	srai	a2,a1,0x5
   16d66:	01850693          	addi	a3,a0,24
   16d6a:	00c75d63          	bge	a4,a2,16d84 <__any_on+0x24>
   16d6e:	00271793          	slli	a5,a4,0x2
   16d72:	97b6                	c.add	a5,a3
   16d74:	02f6f863          	bgeu	a3,a5,16da4 <__any_on+0x44>
   16d78:	ffc7a703          	lw	a4,-4(a5)
   16d7c:	17f1                	c.addi	a5,-4
   16d7e:	db7d                	c.beqz	a4,16d74 <__any_on+0x14>
   16d80:	4505                	c.li	a0,1
   16d82:	8082                	c.jr	ra
   16d84:	00261793          	slli	a5,a2,0x2
   16d88:	97b6                	c.add	a5,a3
   16d8a:	fee655e3          	bge	a2,a4,16d74 <__any_on+0x14>
   16d8e:	89fd                	c.andi	a1,31
   16d90:	d1f5                	c.beqz	a1,16d74 <__any_on+0x14>
   16d92:	4390                	c.lw	a2,0(a5)
   16d94:	4505                	c.li	a0,1
   16d96:	00b6573b          	srlw	a4,a2,a1
   16d9a:	00b715bb          	sllw	a1,a4,a1
   16d9e:	fcc58be3          	beq	a1,a2,16d74 <__any_on+0x14>
   16da2:	8082                	c.jr	ra
   16da4:	4501                	c.li	a0,0
   16da6:	8082                	c.jr	ra

0000000000016da8 <_realloc_r>:
   16da8:	715d                	c.addi16sp	sp,-80
   16daa:	f84a                	c.sdsp	s2,48(sp)
   16dac:	e486                	c.sdsp	ra,72(sp)
   16dae:	e0a2                	c.sdsp	s0,64(sp)
   16db0:	fc26                	c.sdsp	s1,56(sp)
   16db2:	f44e                	c.sdsp	s3,40(sp)
   16db4:	f052                	c.sdsp	s4,32(sp)
   16db6:	ec56                	c.sdsp	s5,24(sp)
   16db8:	e85a                	c.sdsp	s6,16(sp)
   16dba:	e45e                	c.sdsp	s7,8(sp)
   16dbc:	e062                	c.sdsp	s8,0(sp)
   16dbe:	8932                	c.mv	s2,a2
   16dc0:	16058763          	beq	a1,zero,16f2e <_realloc_r+0x186>
   16dc4:	842e                	c.mv	s0,a1
   16dc6:	8aaa                	c.mv	s5,a0
   16dc8:	fffff097          	auipc	ra,0xfffff
   16dcc:	298080e7          	jalr	ra,664(ra) # 16060 <__malloc_lock>
   16dd0:	ff843703          	ld	a4,-8(s0)
   16dd4:	01790493          	addi	s1,s2,23
   16dd8:	02e00793          	addi	a5,zero,46
   16ddc:	ff040b13          	addi	s6,s0,-16
   16de0:	ffc77a13          	andi	s4,a4,-4
   16de4:	0c97f463          	bgeu	a5,s1,16eac <_realloc_r+0x104>
   16de8:	800007b7          	lui	a5,0x80000
   16dec:	98c1                	c.andi	s1,-16
   16dee:	fff7c793          	xori	a5,a5,-1
   16df2:	0c97e163          	bltu	a5,s1,16eb4 <_realloc_r+0x10c>
   16df6:	0b24ef63          	bltu	s1,s2,16eb4 <_realloc_r+0x10c>
   16dfa:	014b09b3          	add	s3,s6,s4
   16dfe:	0e9a5563          	bge	s4,s1,16ee8 <_realloc_r+0x140>
   16e02:	00009b97          	auipc	s7,0x9
   16e06:	c7eb8b93          	addi	s7,s7,-898 # 1fa80 <__malloc_av_>
   16e0a:	010bb683          	ld	a3,16(s7)
   16e0e:	0089b783          	ld	a5,8(s3)
   16e12:	17368363          	beq	a3,s3,16f78 <_realloc_r+0x1d0>
   16e16:	ffe7f693          	andi	a3,a5,-2
   16e1a:	96ce                	c.add	a3,s3
   16e1c:	6694                	c.ld	a3,8(a3)
   16e1e:	8a85                	c.andi	a3,1
   16e20:	eeed                	c.bnez	a3,16f1a <_realloc_r+0x172>
   16e22:	9bf1                	c.andi	a5,-4
   16e24:	00fa06b3          	add	a3,s4,a5
   16e28:	0a96d763          	bge	a3,s1,16ed6 <_realloc_r+0x12e>
   16e2c:	8b05                	c.andi	a4,1
   16e2e:	e30d                	c.bnez	a4,16e50 <_realloc_r+0xa8>
   16e30:	ff043c03          	ld	s8,-16(s0)
   16e34:	418b0c33          	sub	s8,s6,s8
   16e38:	008c3703          	ld	a4,8(s8)
   16e3c:	9b71                	c.andi	a4,-4
   16e3e:	97ba                	c.add	a5,a4
   16e40:	01478bb3          	add	s7,a5,s4
   16e44:	289bd763          	bge	s7,s1,170d2 <_realloc_r+0x32a>
   16e48:	00ea0bb3          	add	s7,s4,a4
   16e4c:	229bd163          	bge	s7,s1,1706e <_realloc_r+0x2c6>
   16e50:	85ca                	c.mv	a1,s2
   16e52:	8556                	c.mv	a0,s5
   16e54:	fffff097          	auipc	ra,0xfffff
   16e58:	8fc080e7          	jalr	ra,-1796(ra) # 15750 <_malloc_r>
   16e5c:	892a                	c.mv	s2,a0
   16e5e:	c129                	c.beqz	a0,16ea0 <_realloc_r+0xf8>
   16e60:	ff843783          	ld	a5,-8(s0)
   16e64:	ff050713          	addi	a4,a0,-16
   16e68:	9bf9                	c.andi	a5,-2
   16e6a:	97da                	c.add	a5,s6
   16e6c:	1ee78a63          	beq	a5,a4,17060 <_realloc_r+0x2b8>
   16e70:	ff8a0613          	addi	a2,s4,-8
   16e74:	04800793          	addi	a5,zero,72
   16e78:	24c7e763          	bltu	a5,a2,170c6 <_realloc_r+0x31e>
   16e7c:	02700713          	addi	a4,zero,39
   16e80:	6014                	c.ld	a3,0(s0)
   16e82:	18c76c63          	bltu	a4,a2,1701a <_realloc_r+0x272>
   16e86:	87aa                	c.mv	a5,a0
   16e88:	8722                	c.mv	a4,s0
   16e8a:	e394                	c.sd	a3,0(a5)
   16e8c:	6714                	c.ld	a3,8(a4)
   16e8e:	e794                	c.sd	a3,8(a5)
   16e90:	6b18                	c.ld	a4,16(a4)
   16e92:	eb98                	c.sd	a4,16(a5)
   16e94:	85a2                	c.mv	a1,s0
   16e96:	8556                	c.mv	a0,s5
   16e98:	ffffc097          	auipc	ra,0xffffc
   16e9c:	d50080e7          	jalr	ra,-688(ra) # 12be8 <_free_r>
   16ea0:	8556                	c.mv	a0,s5
   16ea2:	fffff097          	auipc	ra,0xfffff
   16ea6:	1c0080e7          	jalr	ra,448(ra) # 16062 <__malloc_unlock>
   16eaa:	a809                	c.j	16ebc <_realloc_r+0x114>
   16eac:	02000493          	addi	s1,zero,32
   16eb0:	f524f5e3          	bgeu	s1,s2,16dfa <_realloc_r+0x52>
   16eb4:	47b1                	c.li	a5,12
   16eb6:	00faa023          	sw	a5,0(s5)
   16eba:	4901                	c.li	s2,0
   16ebc:	60a6                	c.ldsp	ra,72(sp)
   16ebe:	6406                	c.ldsp	s0,64(sp)
   16ec0:	74e2                	c.ldsp	s1,56(sp)
   16ec2:	79a2                	c.ldsp	s3,40(sp)
   16ec4:	7a02                	c.ldsp	s4,32(sp)
   16ec6:	6ae2                	c.ldsp	s5,24(sp)
   16ec8:	6b42                	c.ldsp	s6,16(sp)
   16eca:	6ba2                	c.ldsp	s7,8(sp)
   16ecc:	6c02                	c.ldsp	s8,0(sp)
   16ece:	854a                	c.mv	a0,s2
   16ed0:	7942                	c.ldsp	s2,48(sp)
   16ed2:	6161                	c.addi16sp	sp,80
   16ed4:	8082                	c.jr	ra
   16ed6:	0189b783          	ld	a5,24(s3)
   16eda:	0109b703          	ld	a4,16(s3)
   16ede:	8a36                	c.mv	s4,a3
   16ee0:	00db09b3          	add	s3,s6,a3
   16ee4:	ef1c                	c.sd	a5,24(a4)
   16ee6:	eb98                	c.sd	a4,16(a5)
   16ee8:	008b3783          	ld	a5,8(s6)
   16eec:	409a0733          	sub	a4,s4,s1
   16ef0:	46fd                	c.li	a3,31
   16ef2:	8b85                	c.andi	a5,1
   16ef4:	04e6ed63          	bltu	a3,a4,16f4e <_realloc_r+0x1a6>
   16ef8:	00fa67b3          	or	a5,s4,a5
   16efc:	00fb3423          	sd	a5,8(s6)
   16f00:	0089b783          	ld	a5,8(s3)
   16f04:	0017e793          	ori	a5,a5,1
   16f08:	00f9b423          	sd	a5,8(s3)
   16f0c:	8556                	c.mv	a0,s5
   16f0e:	fffff097          	auipc	ra,0xfffff
   16f12:	154080e7          	jalr	ra,340(ra) # 16062 <__malloc_unlock>
   16f16:	8922                	c.mv	s2,s0
   16f18:	b755                	c.j	16ebc <_realloc_r+0x114>
   16f1a:	8b05                	c.andi	a4,1
   16f1c:	fb15                	c.bnez	a4,16e50 <_realloc_r+0xa8>
   16f1e:	ff043c03          	ld	s8,-16(s0)
   16f22:	418b0c33          	sub	s8,s6,s8
   16f26:	008c3703          	ld	a4,8(s8)
   16f2a:	9b71                	c.andi	a4,-4
   16f2c:	bf31                	c.j	16e48 <_realloc_r+0xa0>
   16f2e:	6406                	c.ldsp	s0,64(sp)
   16f30:	60a6                	c.ldsp	ra,72(sp)
   16f32:	74e2                	c.ldsp	s1,56(sp)
   16f34:	7942                	c.ldsp	s2,48(sp)
   16f36:	79a2                	c.ldsp	s3,40(sp)
   16f38:	7a02                	c.ldsp	s4,32(sp)
   16f3a:	6ae2                	c.ldsp	s5,24(sp)
   16f3c:	6b42                	c.ldsp	s6,16(sp)
   16f3e:	6ba2                	c.ldsp	s7,8(sp)
   16f40:	6c02                	c.ldsp	s8,0(sp)
   16f42:	85b2                	c.mv	a1,a2
   16f44:	6161                	c.addi16sp	sp,80
   16f46:	fffff317          	auipc	t1,0xfffff
   16f4a:	80a30067          	jalr	zero,-2038(t1) # 15750 <_malloc_r>
   16f4e:	8fc5                	c.or	a5,s1
   16f50:	00fb3423          	sd	a5,8(s6)
   16f54:	009b05b3          	add	a1,s6,s1
   16f58:	00176713          	ori	a4,a4,1
   16f5c:	e598                	c.sd	a4,8(a1)
   16f5e:	0089b783          	ld	a5,8(s3)
   16f62:	05c1                	c.addi	a1,16
   16f64:	8556                	c.mv	a0,s5
   16f66:	0017e793          	ori	a5,a5,1
   16f6a:	00f9b423          	sd	a5,8(s3)
   16f6e:	ffffc097          	auipc	ra,0xffffc
   16f72:	c7a080e7          	jalr	ra,-902(ra) # 12be8 <_free_r>
   16f76:	bf59                	c.j	16f0c <_realloc_r+0x164>
   16f78:	9bf1                	c.andi	a5,-4
   16f7a:	00fa06b3          	add	a3,s4,a5
   16f7e:	02048613          	addi	a2,s1,32
   16f82:	0ac6d963          	bge	a3,a2,17034 <_realloc_r+0x28c>
   16f86:	8b05                	c.andi	a4,1
   16f88:	ec0714e3          	bne	a4,zero,16e50 <_realloc_r+0xa8>
   16f8c:	ff043c03          	ld	s8,-16(s0)
   16f90:	418b0c33          	sub	s8,s6,s8
   16f94:	008c3703          	ld	a4,8(s8)
   16f98:	9b71                	c.andi	a4,-4
   16f9a:	97ba                	c.add	a5,a4
   16f9c:	014789b3          	add	s3,a5,s4
   16fa0:	eac9c4e3          	blt	s3,a2,16e48 <_realloc_r+0xa0>
   16fa4:	018c3783          	ld	a5,24(s8)
   16fa8:	010c3703          	ld	a4,16(s8)
   16fac:	ff8a0613          	addi	a2,s4,-8
   16fb0:	04800693          	addi	a3,zero,72
   16fb4:	ef1c                	c.sd	a5,24(a4)
   16fb6:	eb98                	c.sd	a4,16(a5)
   16fb8:	010c0913          	addi	s2,s8,16
   16fbc:	1ec6e363          	bltu	a3,a2,171a2 <_realloc_r+0x3fa>
   16fc0:	02700593          	addi	a1,zero,39
   16fc4:	6018                	c.ld	a4,0(s0)
   16fc6:	87ca                	c.mv	a5,s2
   16fc8:	00c5ff63          	bgeu	a1,a2,16fe6 <_realloc_r+0x23e>
   16fcc:	00ec3823          	sd	a4,16(s8)
   16fd0:	6418                	c.ld	a4,8(s0)
   16fd2:	03700793          	addi	a5,zero,55
   16fd6:	00ec3c23          	sd	a4,24(s8)
   16fda:	1cc7eb63          	bltu	a5,a2,171b0 <_realloc_r+0x408>
   16fde:	6818                	c.ld	a4,16(s0)
   16fe0:	020c0793          	addi	a5,s8,32
   16fe4:	0441                	c.addi	s0,16
   16fe6:	e398                	c.sd	a4,0(a5)
   16fe8:	6418                	c.ld	a4,8(s0)
   16fea:	e798                	c.sd	a4,8(a5)
   16fec:	6818                	c.ld	a4,16(s0)
   16fee:	eb98                	c.sd	a4,16(a5)
   16ff0:	009c0733          	add	a4,s8,s1
   16ff4:	409987b3          	sub	a5,s3,s1
   16ff8:	00ebb823          	sd	a4,16(s7)
   16ffc:	0017e793          	ori	a5,a5,1
   17000:	e71c                	c.sd	a5,8(a4)
   17002:	008c3783          	ld	a5,8(s8)
   17006:	8556                	c.mv	a0,s5
   17008:	8b85                	c.andi	a5,1
   1700a:	8cdd                	c.or	s1,a5
   1700c:	009c3423          	sd	s1,8(s8)
   17010:	fffff097          	auipc	ra,0xfffff
   17014:	052080e7          	jalr	ra,82(ra) # 16062 <__malloc_unlock>
   17018:	b555                	c.j	16ebc <_realloc_r+0x114>
   1701a:	e114                	c.sd	a3,0(a0)
   1701c:	6414                	c.ld	a3,8(s0)
   1701e:	03700713          	addi	a4,zero,55
   17022:	e514                	c.sd	a3,8(a0)
   17024:	12c76663          	bltu	a4,a2,17150 <_realloc_r+0x3a8>
   17028:	6814                	c.ld	a3,16(s0)
   1702a:	01040713          	addi	a4,s0,16
   1702e:	01050793          	addi	a5,a0,16
   17032:	bda1                	c.j	16e8a <_realloc_r+0xe2>
   17034:	9b26                	c.add	s6,s1
   17036:	409687b3          	sub	a5,a3,s1
   1703a:	016bb823          	sd	s6,16(s7)
   1703e:	0017e793          	ori	a5,a5,1
   17042:	00fb3423          	sd	a5,8(s6)
   17046:	ff843783          	ld	a5,-8(s0)
   1704a:	8556                	c.mv	a0,s5
   1704c:	8922                	c.mv	s2,s0
   1704e:	8b85                	c.andi	a5,1
   17050:	8cdd                	c.or	s1,a5
   17052:	fe943c23          	sd	s1,-8(s0)
   17056:	fffff097          	auipc	ra,0xfffff
   1705a:	00c080e7          	jalr	ra,12(ra) # 16062 <__malloc_unlock>
   1705e:	bdb9                	c.j	16ebc <_realloc_r+0x114>
   17060:	ff853783          	ld	a5,-8(a0)
   17064:	9bf1                	c.andi	a5,-4
   17066:	9a3e                	c.add	s4,a5
   17068:	014b09b3          	add	s3,s6,s4
   1706c:	bdb5                	c.j	16ee8 <_realloc_r+0x140>
   1706e:	018c3783          	ld	a5,24(s8)
   17072:	010c3703          	ld	a4,16(s8)
   17076:	ff8a0613          	addi	a2,s4,-8
   1707a:	04800693          	addi	a3,zero,72
   1707e:	ef1c                	c.sd	a5,24(a4)
   17080:	eb98                	c.sd	a4,16(a5)
   17082:	010c0913          	addi	s2,s8,16
   17086:	017c09b3          	add	s3,s8,s7
   1708a:	0ac6e963          	bltu	a3,a2,1713c <_realloc_r+0x394>
   1708e:	02700593          	addi	a1,zero,39
   17092:	6018                	c.ld	a4,0(s0)
   17094:	87ca                	c.mv	a5,s2
   17096:	00c5ff63          	bgeu	a1,a2,170b4 <_realloc_r+0x30c>
   1709a:	00ec3823          	sd	a4,16(s8)
   1709e:	6418                	c.ld	a4,8(s0)
   170a0:	03700793          	addi	a5,zero,55
   170a4:	00ec3c23          	sd	a4,24(s8)
   170a8:	0cc7e063          	bltu	a5,a2,17168 <_realloc_r+0x3c0>
   170ac:	6818                	c.ld	a4,16(s0)
   170ae:	020c0793          	addi	a5,s8,32
   170b2:	0441                	c.addi	s0,16
   170b4:	e398                	c.sd	a4,0(a5)
   170b6:	6418                	c.ld	a4,8(s0)
   170b8:	8a5e                	c.mv	s4,s7
   170ba:	8b62                	c.mv	s6,s8
   170bc:	e798                	c.sd	a4,8(a5)
   170be:	6818                	c.ld	a4,16(s0)
   170c0:	844a                	c.mv	s0,s2
   170c2:	eb98                	c.sd	a4,16(a5)
   170c4:	b515                	c.j	16ee8 <_realloc_r+0x140>
   170c6:	85a2                	c.mv	a1,s0
   170c8:	fffff097          	auipc	ra,0xfffff
   170cc:	ec2080e7          	jalr	ra,-318(ra) # 15f8a <memmove>
   170d0:	b3d1                	c.j	16e94 <_realloc_r+0xec>
   170d2:	0189b783          	ld	a5,24(s3)
   170d6:	0109b703          	ld	a4,16(s3)
   170da:	ff8a0613          	addi	a2,s4,-8
   170de:	04800693          	addi	a3,zero,72
   170e2:	ef1c                	c.sd	a5,24(a4)
   170e4:	eb98                	c.sd	a4,16(a5)
   170e6:	010c3703          	ld	a4,16(s8)
   170ea:	018c3783          	ld	a5,24(s8)
   170ee:	010c0913          	addi	s2,s8,16
   170f2:	017c09b3          	add	s3,s8,s7
   170f6:	ef1c                	c.sd	a5,24(a4)
   170f8:	eb98                	c.sd	a4,16(a5)
   170fa:	04c6e163          	bltu	a3,a2,1713c <_realloc_r+0x394>
   170fe:	02700693          	addi	a3,zero,39
   17102:	6018                	c.ld	a4,0(s0)
   17104:	87ca                	c.mv	a5,s2
   17106:	fac6f7e3          	bgeu	a3,a2,170b4 <_realloc_r+0x30c>
   1710a:	00ec3823          	sd	a4,16(s8)
   1710e:	6418                	c.ld	a4,8(s0)
   17110:	03700793          	addi	a5,zero,55
   17114:	00ec3c23          	sd	a4,24(s8)
   17118:	6818                	c.ld	a4,16(s0)
   1711a:	f8c7fae3          	bgeu	a5,a2,170ae <_realloc_r+0x306>
   1711e:	02ec3023          	sd	a4,32(s8)
   17122:	6c18                	c.ld	a4,24(s0)
   17124:	04800793          	addi	a5,zero,72
   17128:	02ec3423          	sd	a4,40(s8)
   1712c:	7018                	c.ld	a4,32(s0)
   1712e:	04f60663          	beq	a2,a5,1717a <_realloc_r+0x3d2>
   17132:	030c0793          	addi	a5,s8,48
   17136:	02040413          	addi	s0,s0,32
   1713a:	bfad                	c.j	170b4 <_realloc_r+0x30c>
   1713c:	85a2                	c.mv	a1,s0
   1713e:	854a                	c.mv	a0,s2
   17140:	fffff097          	auipc	ra,0xfffff
   17144:	e4a080e7          	jalr	ra,-438(ra) # 15f8a <memmove>
   17148:	844a                	c.mv	s0,s2
   1714a:	8a5e                	c.mv	s4,s7
   1714c:	8b62                	c.mv	s6,s8
   1714e:	bb69                	c.j	16ee8 <_realloc_r+0x140>
   17150:	6818                	c.ld	a4,16(s0)
   17152:	e918                	c.sd	a4,16(a0)
   17154:	6c18                	c.ld	a4,24(s0)
   17156:	ed18                	c.sd	a4,24(a0)
   17158:	7014                	c.ld	a3,32(s0)
   1715a:	02f60b63          	beq	a2,a5,17190 <_realloc_r+0x3e8>
   1715e:	02040713          	addi	a4,s0,32
   17162:	02050793          	addi	a5,a0,32
   17166:	b315                	c.j	16e8a <_realloc_r+0xe2>
   17168:	681c                	c.ld	a5,16(s0)
   1716a:	02fc3023          	sd	a5,32(s8)
   1716e:	6c1c                	c.ld	a5,24(s0)
   17170:	02fc3423          	sd	a5,40(s8)
   17174:	7018                	c.ld	a4,32(s0)
   17176:	fad61ee3          	bne	a2,a3,17132 <_realloc_r+0x38a>
   1717a:	02ec3823          	sd	a4,48(s8)
   1717e:	7418                	c.ld	a4,40(s0)
   17180:	040c0793          	addi	a5,s8,64
   17184:	03040413          	addi	s0,s0,48
   17188:	02ec3c23          	sd	a4,56(s8)
   1718c:	6018                	c.ld	a4,0(s0)
   1718e:	b71d                	c.j	170b4 <_realloc_r+0x30c>
   17190:	f114                	c.sd	a3,32(a0)
   17192:	7414                	c.ld	a3,40(s0)
   17194:	03040713          	addi	a4,s0,48
   17198:	03050793          	addi	a5,a0,48
   1719c:	f514                	c.sd	a3,40(a0)
   1719e:	7814                	c.ld	a3,48(s0)
   171a0:	b1ed                	c.j	16e8a <_realloc_r+0xe2>
   171a2:	85a2                	c.mv	a1,s0
   171a4:	854a                	c.mv	a0,s2
   171a6:	fffff097          	auipc	ra,0xfffff
   171aa:	de4080e7          	jalr	ra,-540(ra) # 15f8a <memmove>
   171ae:	b589                	c.j	16ff0 <_realloc_r+0x248>
   171b0:	681c                	c.ld	a5,16(s0)
   171b2:	02fc3023          	sd	a5,32(s8)
   171b6:	6c1c                	c.ld	a5,24(s0)
   171b8:	02fc3423          	sd	a5,40(s8)
   171bc:	7018                	c.ld	a4,32(s0)
   171be:	00d60763          	beq	a2,a3,171cc <_realloc_r+0x424>
   171c2:	030c0793          	addi	a5,s8,48
   171c6:	02040413          	addi	s0,s0,32
   171ca:	bd31                	c.j	16fe6 <_realloc_r+0x23e>
   171cc:	02ec3823          	sd	a4,48(s8)
   171d0:	7418                	c.ld	a4,40(s0)
   171d2:	040c0793          	addi	a5,s8,64
   171d6:	03040413          	addi	s0,s0,48
   171da:	02ec3c23          	sd	a4,56(s8)
   171de:	6018                	c.ld	a4,0(s0)
   171e0:	b519                	c.j	16fe6 <_realloc_r+0x23e>

00000000000171e2 <_sbrk_r>:
   171e2:	1141                	c.addi	sp,-16
   171e4:	e022                	c.sdsp	s0,0(sp)
   171e6:	842a                	c.mv	s0,a0
   171e8:	852e                	c.mv	a0,a1
   171ea:	00009797          	auipc	a5,0x9
   171ee:	1007af23          	sw	zero,286(a5) # 20308 <errno>
   171f2:	e406                	c.sdsp	ra,8(sp)
   171f4:	00005097          	auipc	ra,0x5
   171f8:	b3a080e7          	jalr	ra,-1222(ra) # 1bd2e <_sbrk>
   171fc:	57fd                	c.li	a5,-1
   171fe:	00f50663          	beq	a0,a5,1720a <_sbrk_r+0x28>
   17202:	60a2                	c.ldsp	ra,8(sp)
   17204:	6402                	c.ldsp	s0,0(sp)
   17206:	0141                	c.addi	sp,16
   17208:	8082                	c.jr	ra
   1720a:	00009797          	auipc	a5,0x9
   1720e:	0fe7a783          	lw	a5,254(a5) # 20308 <errno>
   17212:	dbe5                	c.beqz	a5,17202 <_sbrk_r+0x20>
   17214:	60a2                	c.ldsp	ra,8(sp)
   17216:	c01c                	c.sw	a5,0(s0)
   17218:	6402                	c.ldsp	s0,0(sp)
   1721a:	0141                	c.addi	sp,16
   1721c:	8082                	c.jr	ra

000000000001721e <frexp>:
   1721e:	e20507d3          	fmv.x.d	a5,fa0
   17222:	80000637          	lui	a2,0x80000
   17226:	fff64613          	xori	a2,a2,-1
   1722a:	4207d593          	srai	a1,a5,0x20
   1722e:	00c5f733          	and	a4,a1,a2
   17232:	00052023          	sw	zero,0(a0)
   17236:	7ff00837          	lui	a6,0x7ff00
   1723a:	86ae                	c.mv	a3,a1
   1723c:	05075e63          	bge	a4,a6,17298 <frexp+0x7a>
   17240:	00f76833          	or	a6,a4,a5
   17244:	2801                	c.addiw	a6,0
   17246:	04080963          	beq	a6,zero,17298 <frexp+0x7a>
   1724a:	7ff00837          	lui	a6,0x7ff00
   1724e:	0105f5b3          	and	a1,a1,a6
   17252:	4801                	c.li	a6,0
   17254:	ed99                	c.bnez	a1,17272 <frexp+0x54>
   17256:	00009717          	auipc	a4,0x9
   1725a:	06273787          	fld	fa5,98(a4) # 202b8 <__SDATA_BEGIN__+0x28>
   1725e:	12f577d3          	fmul.d	fa5,fa0,fa5
   17262:	fca00813          	addi	a6,zero,-54
   17266:	e20787d3          	fmv.x.d	a5,fa5
   1726a:	4207d693          	srai	a3,a5,0x20
   1726e:	00c6f733          	and	a4,a3,a2
   17272:	80100637          	lui	a2,0x80100
   17276:	167d                	c.addi	a2,-1
   17278:	8ef1                	c.and	a3,a2
   1727a:	3fe00637          	lui	a2,0x3fe00
   1727e:	8ed1                	c.or	a3,a2
   17280:	4147571b          	sraiw	a4,a4,0x14
   17284:	567d                	c.li	a2,-1
   17286:	c027071b          	addiw	a4,a4,-1022
   1728a:	9201                	c.srli	a2,0x20
   1728c:	0107073b          	addw	a4,a4,a6
   17290:	1682                	c.slli	a3,0x20
   17292:	8ff1                	c.and	a5,a2
   17294:	c118                	c.sw	a4,0(a0)
   17296:	8fd5                	c.or	a5,a3
   17298:	f2078553          	fmv.d.x	fa0,a5
   1729c:	8082                	c.jr	ra

000000000001729e <_sprintf_r>:
   1729e:	7111                	c.addi16sp	sp,-256
   172a0:	0d810e93          	addi	t4,sp,216
   172a4:	f5be                	c.sdsp	a5,232(sp)
   172a6:	80000337          	lui	t1,0x80000
   172aa:	77c1                	c.lui	a5,0xffff0
   172ac:	8e2e                	c.mv	t3,a1
   172ae:	fff34313          	xori	t1,t1,-1
   172b2:	edb6                	c.sdsp	a3,216(sp)
   172b4:	20878793          	addi	a5,a5,520 # ffffffffffff0208 <__BSS_END__+0xfffffffffffcfe88>
   172b8:	080c                	c.addi4spn	a1,sp,16
   172ba:	86f6                	c.mv	a3,t4
   172bc:	e586                	c.sdsp	ra,200(sp)
   172be:	d03e                	c.swsp	a5,32(sp)
   172c0:	f1ba                	c.sdsp	a4,224(sp)
   172c2:	f9c2                	c.sdsp	a6,240(sp)
   172c4:	fdc6                	c.sdsp	a7,248(sp)
   172c6:	e872                	c.sdsp	t3,16(sp)
   172c8:	f472                	c.sdsp	t3,40(sp)
   172ca:	d81a                	c.swsp	t1,48(sp)
   172cc:	ce1a                	c.swsp	t1,28(sp)
   172ce:	e476                	c.sdsp	t4,8(sp)
   172d0:	00000097          	auipc	ra,0x0
   172d4:	358080e7          	jalr	ra,856(ra) # 17628 <_svfprintf_r>
   172d8:	67c2                	c.ldsp	a5,16(sp)
   172da:	00078023          	sb	zero,0(a5)
   172de:	60ae                	c.ldsp	ra,200(sp)
   172e0:	6111                	c.addi16sp	sp,256
   172e2:	8082                	c.jr	ra

00000000000172e4 <sprintf>:
   172e4:	7111                	c.addi16sp	sp,-256
   172e6:	0d010e93          	addi	t4,sp,208
   172ea:	f5be                	c.sdsp	a5,232(sp)
   172ec:	80000337          	lui	t1,0x80000
   172f0:	77c1                	c.lui	a5,0xffff0
   172f2:	8e2a                	c.mv	t3,a0
   172f4:	fff34313          	xori	t1,t1,-1
   172f8:	e9b2                	c.sdsp	a2,208(sp)
   172fa:	edb6                	c.sdsp	a3,216(sp)
   172fc:	20878793          	addi	a5,a5,520 # ffffffffffff0208 <__BSS_END__+0xfffffffffffcfe88>
   17300:	862e                	c.mv	a2,a1
   17302:	86f6                	c.mv	a3,t4
   17304:	080c                	c.addi4spn	a1,sp,16
   17306:	00009517          	auipc	a0,0x9
   1730a:	fca53503          	ld	a0,-54(a0) # 202d0 <_impure_ptr>
   1730e:	e586                	c.sdsp	ra,200(sp)
   17310:	d03e                	c.swsp	a5,32(sp)
   17312:	f1ba                	c.sdsp	a4,224(sp)
   17314:	f9c2                	c.sdsp	a6,240(sp)
   17316:	fdc6                	c.sdsp	a7,248(sp)
   17318:	e872                	c.sdsp	t3,16(sp)
   1731a:	f472                	c.sdsp	t3,40(sp)
   1731c:	d81a                	c.swsp	t1,48(sp)
   1731e:	ce1a                	c.swsp	t1,28(sp)
   17320:	e476                	c.sdsp	t4,8(sp)
   17322:	00000097          	auipc	ra,0x0
   17326:	306080e7          	jalr	ra,774(ra) # 17628 <_svfprintf_r>
   1732a:	67c2                	c.ldsp	a5,16(sp)
   1732c:	00078023          	sb	zero,0(a5)
   17330:	60ae                	c.ldsp	ra,200(sp)
   17332:	6111                	c.addi16sp	sp,256
   17334:	8082                	c.jr	ra

0000000000017336 <__sread>:
   17336:	1141                	c.addi	sp,-16
   17338:	e022                	c.sdsp	s0,0(sp)
   1733a:	842e                	c.mv	s0,a1
   1733c:	01259583          	lh	a1,18(a1)
   17340:	e406                	c.sdsp	ra,8(sp)
   17342:	00003097          	auipc	ra,0x3
   17346:	40c080e7          	jalr	ra,1036(ra) # 1a74e <_read_r>
   1734a:	00054963          	blt	a0,zero,1735c <__sread+0x26>
   1734e:	685c                	c.ld	a5,144(s0)
   17350:	60a2                	c.ldsp	ra,8(sp)
   17352:	97aa                	c.add	a5,a0
   17354:	e85c                	c.sd	a5,144(s0)
   17356:	6402                	c.ldsp	s0,0(sp)
   17358:	0141                	c.addi	sp,16
   1735a:	8082                	c.jr	ra
   1735c:	01045783          	lhu	a5,16(s0)
   17360:	777d                	c.lui	a4,0xfffff
   17362:	177d                	c.addi	a4,-1
   17364:	8ff9                	c.and	a5,a4
   17366:	60a2                	c.ldsp	ra,8(sp)
   17368:	00f41823          	sh	a5,16(s0)
   1736c:	6402                	c.ldsp	s0,0(sp)
   1736e:	0141                	c.addi	sp,16
   17370:	8082                	c.jr	ra

0000000000017372 <__seofread>:
   17372:	4501                	c.li	a0,0
   17374:	8082                	c.jr	ra

0000000000017376 <__swrite>:
   17376:	01059783          	lh	a5,16(a1)
   1737a:	7179                	c.addi16sp	sp,-48
   1737c:	f022                	c.sdsp	s0,32(sp)
   1737e:	ec26                	c.sdsp	s1,24(sp)
   17380:	e84a                	c.sdsp	s2,16(sp)
   17382:	e44e                	c.sdsp	s3,8(sp)
   17384:	f406                	c.sdsp	ra,40(sp)
   17386:	1007f713          	andi	a4,a5,256
   1738a:	842e                	c.mv	s0,a1
   1738c:	84aa                	c.mv	s1,a0
   1738e:	01259583          	lh	a1,18(a1)
   17392:	8932                	c.mv	s2,a2
   17394:	89b6                	c.mv	s3,a3
   17396:	e31d                	c.bnez	a4,173bc <__swrite+0x46>
   17398:	777d                	c.lui	a4,0xfffff
   1739a:	177d                	c.addi	a4,-1
   1739c:	8ff9                	c.and	a5,a4
   1739e:	00f41823          	sh	a5,16(s0)
   173a2:	7402                	c.ldsp	s0,32(sp)
   173a4:	70a2                	c.ldsp	ra,40(sp)
   173a6:	86ce                	c.mv	a3,s3
   173a8:	864a                	c.mv	a2,s2
   173aa:	69a2                	c.ldsp	s3,8(sp)
   173ac:	6942                	c.ldsp	s2,16(sp)
   173ae:	8526                	c.mv	a0,s1
   173b0:	64e2                	c.ldsp	s1,24(sp)
   173b2:	6145                	c.addi16sp	sp,48
   173b4:	00003317          	auipc	t1,0x3
   173b8:	e5430067          	jalr	zero,-428(t1) # 1a208 <_write_r>
   173bc:	4689                	c.li	a3,2
   173be:	4601                	c.li	a2,0
   173c0:	00003097          	auipc	ra,0x3
   173c4:	34c080e7          	jalr	ra,844(ra) # 1a70c <_lseek_r>
   173c8:	01041783          	lh	a5,16(s0)
   173cc:	01241583          	lh	a1,18(s0)
   173d0:	b7e1                	c.j	17398 <__swrite+0x22>

00000000000173d2 <__sseek>:
   173d2:	1141                	c.addi	sp,-16
   173d4:	e022                	c.sdsp	s0,0(sp)
   173d6:	842e                	c.mv	s0,a1
   173d8:	01259583          	lh	a1,18(a1)
   173dc:	e406                	c.sdsp	ra,8(sp)
   173de:	00003097          	auipc	ra,0x3
   173e2:	32e080e7          	jalr	ra,814(ra) # 1a70c <_lseek_r>
   173e6:	57fd                	c.li	a5,-1
   173e8:	00f50d63          	beq	a0,a5,17402 <__sseek+0x30>
   173ec:	01045783          	lhu	a5,16(s0)
   173f0:	6705                	c.lui	a4,0x1
   173f2:	60a2                	c.ldsp	ra,8(sp)
   173f4:	8fd9                	c.or	a5,a4
   173f6:	e848                	c.sd	a0,144(s0)
   173f8:	00f41823          	sh	a5,16(s0)
   173fc:	6402                	c.ldsp	s0,0(sp)
   173fe:	0141                	c.addi	sp,16
   17400:	8082                	c.jr	ra
   17402:	01045783          	lhu	a5,16(s0)
   17406:	777d                	c.lui	a4,0xfffff
   17408:	177d                	c.addi	a4,-1
   1740a:	8ff9                	c.and	a5,a4
   1740c:	60a2                	c.ldsp	ra,8(sp)
   1740e:	00f41823          	sh	a5,16(s0)
   17412:	6402                	c.ldsp	s0,0(sp)
   17414:	0141                	c.addi	sp,16
   17416:	8082                	c.jr	ra

0000000000017418 <__sclose>:
   17418:	01259583          	lh	a1,18(a1)
   1741c:	00003317          	auipc	t1,0x3
   17420:	f5230067          	jalr	zero,-174(t1) # 1a36e <_close_r>

0000000000017424 <strcmp>:
   17424:	00b56733          	or	a4,a0,a1
   17428:	53fd                	c.li	t2,-1
   1742a:	8b1d                	c.andi	a4,7
   1742c:	eb4d                	c.bnez	a4,174de <strcmp+0xba>
   1742e:	00009797          	auipc	a5,0x9
   17432:	e627b783          	ld	a5,-414(a5) # 20290 <__SDATA_BEGIN__>
   17436:	6110                	c.ld	a2,0(a0)
   17438:	6194                	c.ld	a3,0(a1)
   1743a:	00f672b3          	and	t0,a2,a5
   1743e:	00f66333          	or	t1,a2,a5
   17442:	92be                	c.add	t0,a5
   17444:	0062e2b3          	or	t0,t0,t1
   17448:	0a729963          	bne	t0,t2,174fa <strcmp+0xd6>
   1744c:	02d61e63          	bne	a2,a3,17488 <strcmp+0x64>
   17450:	6510                	c.ld	a2,8(a0)
   17452:	6594                	c.ld	a3,8(a1)
   17454:	00f672b3          	and	t0,a2,a5
   17458:	00f66333          	or	t1,a2,a5
   1745c:	92be                	c.add	t0,a5
   1745e:	0062e2b3          	or	t0,t0,t1
   17462:	08729a63          	bne	t0,t2,174f6 <strcmp+0xd2>
   17466:	02d61163          	bne	a2,a3,17488 <strcmp+0x64>
   1746a:	6910                	c.ld	a2,16(a0)
   1746c:	6994                	c.ld	a3,16(a1)
   1746e:	00f672b3          	and	t0,a2,a5
   17472:	00f66333          	or	t1,a2,a5
   17476:	92be                	c.add	t0,a5
   17478:	0062e2b3          	or	t0,t0,t1
   1747c:	08729363          	bne	t0,t2,17502 <strcmp+0xde>
   17480:	0561                	c.addi	a0,24
   17482:	05e1                	c.addi	a1,24
   17484:	fad609e3          	beq	a2,a3,17436 <strcmp+0x12>
   17488:	03061713          	slli	a4,a2,0x30
   1748c:	03069793          	slli	a5,a3,0x30
   17490:	02f71863          	bne	a4,a5,174c0 <strcmp+0x9c>
   17494:	02061713          	slli	a4,a2,0x20
   17498:	02069793          	slli	a5,a3,0x20
   1749c:	02f71263          	bne	a4,a5,174c0 <strcmp+0x9c>
   174a0:	01061713          	slli	a4,a2,0x10
   174a4:	01069793          	slli	a5,a3,0x10
   174a8:	00f71c63          	bne	a4,a5,174c0 <strcmp+0x9c>
   174ac:	03065713          	srli	a4,a2,0x30
   174b0:	0306d793          	srli	a5,a3,0x30
   174b4:	40f70533          	sub	a0,a4,a5
   174b8:	0ff57593          	andi	a1,a0,255
   174bc:	e991                	c.bnez	a1,174d0 <strcmp+0xac>
   174be:	8082                	c.jr	ra
   174c0:	9341                	c.srli	a4,0x30
   174c2:	93c1                	c.srli	a5,0x30
   174c4:	40f70533          	sub	a0,a4,a5
   174c8:	0ff57593          	andi	a1,a0,255
   174cc:	e191                	c.bnez	a1,174d0 <strcmp+0xac>
   174ce:	8082                	c.jr	ra
   174d0:	0ff77713          	andi	a4,a4,255
   174d4:	0ff7f793          	andi	a5,a5,255
   174d8:	40f70533          	sub	a0,a4,a5
   174dc:	8082                	c.jr	ra
   174de:	00054603          	lbu	a2,0(a0)
   174e2:	0005c683          	lbu	a3,0(a1)
   174e6:	0505                	c.addi	a0,1
   174e8:	0585                	c.addi	a1,1
   174ea:	00d61363          	bne	a2,a3,174f0 <strcmp+0xcc>
   174ee:	fa65                	c.bnez	a2,174de <strcmp+0xba>
   174f0:	40d60533          	sub	a0,a2,a3
   174f4:	8082                	c.jr	ra
   174f6:	0521                	c.addi	a0,8
   174f8:	05a1                	c.addi	a1,8
   174fa:	fed612e3          	bne	a2,a3,174de <strcmp+0xba>
   174fe:	4501                	c.li	a0,0
   17500:	8082                	c.jr	ra
   17502:	0541                	c.addi	a0,16
   17504:	05c1                	c.addi	a1,16
   17506:	fcd61ce3          	bne	a2,a3,174de <strcmp+0xba>
   1750a:	4501                	c.li	a0,0
   1750c:	8082                	c.jr	ra

000000000001750e <strcpy>:
   1750e:	00b567b3          	or	a5,a0,a1
   17512:	8b9d                	c.andi	a5,7
   17514:	efbd                	c.bnez	a5,17592 <strcpy+0x84>
   17516:	6198                	c.ld	a4,0(a1)
   17518:	00009697          	auipc	a3,0x9
   1751c:	d786b683          	ld	a3,-648(a3) # 20290 <__SDATA_BEGIN__>
   17520:	567d                	c.li	a2,-1
   17522:	00d777b3          	and	a5,a4,a3
   17526:	97b6                	c.add	a5,a3
   17528:	8fd9                	c.or	a5,a4
   1752a:	8fd5                	c.or	a5,a3
   1752c:	06c79c63          	bne	a5,a2,175a4 <strcpy+0x96>
   17530:	862a                	c.mv	a2,a0
   17532:	587d                	c.li	a6,-1
   17534:	e218                	c.sd	a4,0(a2)
   17536:	6598                	c.ld	a4,8(a1)
   17538:	05a1                	c.addi	a1,8
   1753a:	0621                	c.addi	a2,8
   1753c:	00d777b3          	and	a5,a4,a3
   17540:	97b6                	c.add	a5,a3
   17542:	8fd9                	c.or	a5,a4
   17544:	8fd5                	c.or	a5,a3
   17546:	ff0787e3          	beq	a5,a6,17534 <strcpy+0x26>
   1754a:	0005c783          	lbu	a5,0(a1)
   1754e:	0015c703          	lbu	a4,1(a1)
   17552:	0025c683          	lbu	a3,2(a1)
   17556:	00f60023          	sb	a5,0(a2) # 3fe00000 <__BSS_END__+0x3fddfc80>
   1755a:	cb9d                	c.beqz	a5,17590 <strcpy+0x82>
   1755c:	00e600a3          	sb	a4,1(a2)
   17560:	cb05                	c.beqz	a4,17590 <strcpy+0x82>
   17562:	0035c783          	lbu	a5,3(a1)
   17566:	00d60123          	sb	a3,2(a2)
   1756a:	c29d                	c.beqz	a3,17590 <strcpy+0x82>
   1756c:	0045c703          	lbu	a4,4(a1)
   17570:	00f601a3          	sb	a5,3(a2)
   17574:	cf91                	c.beqz	a5,17590 <strcpy+0x82>
   17576:	0055c783          	lbu	a5,5(a1)
   1757a:	00e60223          	sb	a4,4(a2)
   1757e:	cb09                	c.beqz	a4,17590 <strcpy+0x82>
   17580:	0065c703          	lbu	a4,6(a1)
   17584:	00f602a3          	sb	a5,5(a2)
   17588:	c781                	c.beqz	a5,17590 <strcpy+0x82>
   1758a:	00e60323          	sb	a4,6(a2)
   1758e:	ef09                	c.bnez	a4,175a8 <strcpy+0x9a>
   17590:	8082                	c.jr	ra
   17592:	87aa                	c.mv	a5,a0
   17594:	0005c703          	lbu	a4,0(a1)
   17598:	0785                	c.addi	a5,1
   1759a:	0585                	c.addi	a1,1
   1759c:	fee78fa3          	sb	a4,-1(a5)
   175a0:	fb75                	c.bnez	a4,17594 <strcpy+0x86>
   175a2:	8082                	c.jr	ra
   175a4:	862a                	c.mv	a2,a0
   175a6:	b755                	c.j	1754a <strcpy+0x3c>
   175a8:	000603a3          	sb	zero,7(a2)
   175ac:	8082                	c.jr	ra

00000000000175ae <strncpy>:
   175ae:	00a5e7b3          	or	a5,a1,a0
   175b2:	8b9d                	c.andi	a5,7
   175b4:	872a                	c.mv	a4,a0
   175b6:	ebb1                	c.bnez	a5,1760a <strncpy+0x5c>
   175b8:	479d                	c.li	a5,7
   175ba:	04c7f863          	bgeu	a5,a2,1760a <strncpy+0x5c>
   175be:	00009317          	auipc	t1,0x9
   175c2:	cda33303          	ld	t1,-806(t1) # 20298 <__SDATA_BEGIN__+0x8>
   175c6:	00009897          	auipc	a7,0x9
   175ca:	cda8b883          	ld	a7,-806(a7) # 202a0 <__SDATA_BEGIN__+0x10>
   175ce:	4e1d                	c.li	t3,7
   175d0:	6194                	c.ld	a3,0(a1)
   175d2:	006687b3          	add	a5,a3,t1
   175d6:	fff6c813          	xori	a6,a3,-1
   175da:	0107f7b3          	and	a5,a5,a6
   175de:	0117f7b3          	and	a5,a5,a7
   175e2:	e785                	c.bnez	a5,1760a <strncpy+0x5c>
   175e4:	e314                	c.sd	a3,0(a4)
   175e6:	1661                	c.addi	a2,-8
   175e8:	0721                	c.addi	a4,8
   175ea:	05a1                	c.addi	a1,8
   175ec:	fece62e3          	bltu	t3,a2,175d0 <strncpy+0x22>
   175f0:	0585                	c.addi	a1,1
   175f2:	00170793          	addi	a5,a4,1 # fffffffffffff001 <__BSS_END__+0xfffffffffffdec81>
   175f6:	ce11                	c.beqz	a2,17612 <strncpy+0x64>
   175f8:	fff5c683          	lbu	a3,-1(a1)
   175fc:	fff60813          	addi	a6,a2,-1
   17600:	fed78fa3          	sb	a3,-1(a5)
   17604:	ca81                	c.beqz	a3,17614 <strncpy+0x66>
   17606:	873e                	c.mv	a4,a5
   17608:	8642                	c.mv	a2,a6
   1760a:	0585                	c.addi	a1,1
   1760c:	00170793          	addi	a5,a4,1
   17610:	f665                	c.bnez	a2,175f8 <strncpy+0x4a>
   17612:	8082                	c.jr	ra
   17614:	963a                	c.add	a2,a4
   17616:	00080863          	beq	a6,zero,17626 <strncpy+0x78>
   1761a:	0785                	c.addi	a5,1
   1761c:	fe078fa3          	sb	zero,-1(a5)
   17620:	fec79de3          	bne	a5,a2,1761a <strncpy+0x6c>
   17624:	8082                	c.jr	ra
   17626:	8082                	c.jr	ra

0000000000017628 <_svfprintf_r>:
   17628:	d9010113          	addi	sp,sp,-624
   1762c:	26113423          	sd	ra,616(sp)
   17630:	23613823          	sd	s6,560(sp)
   17634:	23713423          	sd	s7,552(sp)
   17638:	8b2e                	c.mv	s6,a1
   1763a:	23813023          	sd	s8,544(sp)
   1763e:	8bb2                	c.mv	s7,a2
   17640:	e836                	c.sdsp	a3,16(sp)
   17642:	26813023          	sd	s0,608(sp)
   17646:	24913c23          	sd	s1,600(sp)
   1764a:	25213823          	sd	s2,592(sp)
   1764e:	25313423          	sd	s3,584(sp)
   17652:	25413023          	sd	s4,576(sp)
   17656:	23513c23          	sd	s5,568(sp)
   1765a:	21913c23          	sd	s9,536(sp)
   1765e:	21a13823          	sd	s10,528(sp)
   17662:	21b13423          	sd	s11,520(sp)
   17666:	8c2a                	c.mv	s8,a0
   17668:	ffffe097          	auipc	ra,0xffffe
   1766c:	e56080e7          	jalr	ra,-426(ra) # 154be <_localeconv_r>
   17670:	611c                	c.ld	a5,0(a0)
   17672:	853e                	c.mv	a0,a5
   17674:	e0be                	c.sdsp	a5,64(sp)
   17676:	ffff9097          	auipc	ra,0xffff9
   1767a:	e54080e7          	jalr	ra,-428(ra) # 104ca <strlen>
   1767e:	010b5783          	lhu	a5,16(s6)
   17682:	f982                	c.sdsp	zero,240(sp)
   17684:	fd82                	c.sdsp	zero,248(sp)
   17686:	0807f793          	andi	a5,a5,128
   1768a:	fc2a                	c.sdsp	a0,56(sp)
   1768c:	c791                	c.beqz	a5,17698 <_svfprintf_r+0x70>
   1768e:	018b3783          	ld	a5,24(s6)
   17692:	e399                	c.bnez	a5,17698 <_svfprintf_r+0x70>
   17694:	0080106f          	jal	zero,1869c <_svfprintf_r+0x1074>
   17698:	031c                	c.addi4spn	a5,sp,384
   1769a:	8dde                	c.mv	s11,s7
   1769c:	e23e                	c.sdsp	a5,256(sp)
   1769e:	833e                	c.mv	t1,a5
   176a0:	000dc783          	lbu	a5,0(s11)
   176a4:	ea02                	c.sdsp	zero,272(sp)
   176a6:	10012423          	sw	zero,264(sp)
   176aa:	f002                	c.sdsp	zero,32(sp)
   176ac:	e482                	c.sdsp	zero,72(sp)
   176ae:	e882                	c.sdsp	zero,80(sp)
   176b0:	ec82                	c.sdsp	zero,88(sp)
   176b2:	f882                	c.sdsp	zero,112(sp)
   176b4:	fc82                	c.sdsp	zero,120(sp)
   176b6:	e002                	c.sdsp	zero,0(sp)
   176b8:	4ac1                	c.li	s5,16
   176ba:	1c078b63          	beq	a5,zero,17890 <_svfprintf_r+0x268>
   176be:	846e                	c.mv	s0,s11
   176c0:	02500713          	addi	a4,zero,37
   176c4:	22e78563          	beq	a5,a4,178ee <_svfprintf_r+0x2c6>
   176c8:	00144783          	lbu	a5,1(s0)
   176cc:	0405                	c.addi	s0,1
   176ce:	fbfd                	c.bnez	a5,176c4 <_svfprintf_r+0x9c>
   176d0:	41b404bb          	subw	s1,s0,s11
   176d4:	1a048e63          	beq	s1,zero,17890 <_svfprintf_r+0x268>
   176d8:	6752                	c.ldsp	a4,272(sp)
   176da:	10812783          	lw	a5,264(sp)
   176de:	01b33023          	sd	s11,0(t1)
   176e2:	9726                	c.add	a4,s1
   176e4:	2785                	c.addiw	a5,1
   176e6:	00933423          	sd	s1,8(t1)
   176ea:	ea3a                	c.sdsp	a4,272(sp)
   176ec:	10f12423          	sw	a5,264(sp)
   176f0:	0007871b          	addiw	a4,a5,0
   176f4:	479d                	c.li	a5,7
   176f6:	0341                	c.addi	t1,16
   176f8:	20e7c263          	blt	a5,a4,178fc <_svfprintf_r+0x2d4>
   176fc:	6702                	c.ldsp	a4,0(sp)
   176fe:	00044783          	lbu	a5,0(s0)
   17702:	9f25                	c.addw	a4,s1
   17704:	e03a                	c.sdsp	a4,0(sp)
   17706:	18078563          	beq	a5,zero,17890 <_svfprintf_r+0x268>
   1770a:	00144e03          	lbu	t3,1(s0)
   1770e:	0c0107a3          	sb	zero,207(sp)
   17712:	0405                	c.addi	s0,1
   17714:	5d7d                	c.li	s10,-1
   17716:	4901                	c.li	s2,0
   17718:	4481                	c.li	s1,0
   1771a:	49a5                	c.li	s3,9
   1771c:	02a00a13          	addi	s4,zero,42
   17720:	8b9a                	c.mv	s7,t1
   17722:	0405                	c.addi	s0,1
   17724:	000e0c9b          	addiw	s9,t3,0
   17728:	05a00693          	addi	a3,zero,90
   1772c:	fe0c879b          	addiw	a5,s9,-32
   17730:	0007871b          	addiw	a4,a5,0
   17734:	04e6e863          	bltu	a3,a4,17784 <_svfprintf_r+0x15c>
   17738:	02079713          	slli	a4,a5,0x20
   1773c:	01e75793          	srli	a5,a4,0x1e
   17740:	00006717          	auipc	a4,0x6
   17744:	2f870713          	addi	a4,a4,760 # 1da38 <__mprec_bigtens+0x28>
   17748:	97ba                	c.add	a5,a4
   1774a:	439c                	c.lw	a5,0(a5)
   1774c:	97ba                	c.add	a5,a4
   1774e:	8782                	c.jr	a5
   17750:	4901                	c.li	s2,0
   17752:	00044703          	lbu	a4,0(s0)
   17756:	0029179b          	slliw	a5,s2,0x2
   1775a:	012787bb          	addw	a5,a5,s2
   1775e:	fd0c8c9b          	addiw	s9,s9,-48
   17762:	0017979b          	slliw	a5,a5,0x1
   17766:	fd07061b          	addiw	a2,a4,-48
   1776a:	00fc893b          	addw	s2,s9,a5
   1776e:	0405                	c.addi	s0,1
   17770:	00070c9b          	addiw	s9,a4,0
   17774:	fcc9ffe3          	bgeu	s3,a2,17752 <_svfprintf_r+0x12a>
   17778:	fe0c879b          	addiw	a5,s9,-32
   1777c:	0007871b          	addiw	a4,a5,0
   17780:	fae6fce3          	bgeu	a3,a4,17738 <_svfprintf_r+0x110>
   17784:	835e                	c.mv	t1,s7
   17786:	100c8563          	beq	s9,zero,17890 <_svfprintf_r+0x268>
   1778a:	11910c23          	sb	s9,280(sp)
   1778e:	0c0107a3          	sb	zero,207(sp)
   17792:	4985                	c.li	s3,1
   17794:	4a05                	c.li	s4,1
   17796:	11810d93          	addi	s11,sp,280
   1779a:	e402                	c.sdsp	zero,8(sp)
   1779c:	4d01                	c.li	s10,0
   1779e:	f802                	c.sdsp	zero,48(sp)
   177a0:	f402                	c.sdsp	zero,40(sp)
   177a2:	ec02                	c.sdsp	zero,24(sp)
   177a4:	0024ff93          	andi	t6,s1,2
   177a8:	000f8363          	beq	t6,zero,177ae <_svfprintf_r+0x186>
   177ac:	2989                	c.addiw	s3,2
   177ae:	0844ff13          	andi	t5,s1,132
   177b2:	67d2                	c.ldsp	a5,272(sp)
   177b4:	000f1663          	bne	t5,zero,177c0 <_svfprintf_r+0x198>
   177b8:	413906bb          	subw	a3,s2,s3
   177bc:	20d042e3          	blt	zero,a3,181c0 <_svfprintf_r+0xb98>
   177c0:	0cf14703          	lbu	a4,207(sp)
   177c4:	c70d                	c.beqz	a4,177ee <_svfprintf_r+0x1c6>
   177c6:	10812703          	lw	a4,264(sp)
   177ca:	0cf10693          	addi	a3,sp,207
   177ce:	00d33023          	sd	a3,0(t1)
   177d2:	2705                	c.addiw	a4,1
   177d4:	4685                	c.li	a3,1
   177d6:	0785                	c.addi	a5,1
   177d8:	00d33423          	sd	a3,8(t1)
   177dc:	10e12423          	sw	a4,264(sp)
   177e0:	0007069b          	addiw	a3,a4,0
   177e4:	ea3e                	c.sdsp	a5,272(sp)
   177e6:	471d                	c.li	a4,7
   177e8:	0341                	c.addi	t1,16
   177ea:	32d74863          	blt	a4,a3,17b1a <_svfprintf_r+0x4f2>
   177ee:	020f8563          	beq	t6,zero,17818 <_svfprintf_r+0x1f0>
   177f2:	10812703          	lw	a4,264(sp)
   177f6:	0994                	c.addi4spn	a3,sp,208
   177f8:	00d33023          	sd	a3,0(t1)
   177fc:	2705                	c.addiw	a4,1
   177fe:	4689                	c.li	a3,2
   17800:	0789                	c.addi	a5,2
   17802:	00d33423          	sd	a3,8(t1)
   17806:	10e12423          	sw	a4,264(sp)
   1780a:	0007069b          	addiw	a3,a4,0
   1780e:	ea3e                	c.sdsp	a5,272(sp)
   17810:	471d                	c.li	a4,7
   17812:	0341                	c.addi	t1,16
   17814:	26d74de3          	blt	a4,a3,1828e <_svfprintf_r+0xc66>
   17818:	08000713          	addi	a4,zero,128
   1781c:	02ef0ee3          	beq	t5,a4,18058 <_svfprintf_r+0xa30>
   17820:	414d0d3b          	subw	s10,s10,s4
   17824:	0da04ee3          	blt	zero,s10,18100 <_svfprintf_r+0xad8>
   17828:	1004f713          	andi	a4,s1,256
   1782c:	70071a63          	bne	a4,zero,17f40 <_svfprintf_r+0x918>
   17830:	10812703          	lw	a4,264(sp)
   17834:	97d2                	c.add	a5,s4
   17836:	01b33023          	sd	s11,0(t1)
   1783a:	0017069b          	addiw	a3,a4,1
   1783e:	01433423          	sd	s4,8(t1)
   17842:	ea3e                	c.sdsp	a5,272(sp)
   17844:	10d12423          	sw	a3,264(sp)
   17848:	471d                	c.li	a4,7
   1784a:	3ad74763          	blt	a4,a3,17bf8 <_svfprintf_r+0x5d0>
   1784e:	0341                	c.addi	t1,16
   17850:	8891                	c.andi	s1,4
   17852:	c489                	c.beqz	s1,1785c <_svfprintf_r+0x234>
   17854:	413904bb          	subw	s1,s2,s3
   17858:	24904ae3          	blt	zero,s1,182ac <_svfprintf_r+0xc84>
   1785c:	874a                	c.mv	a4,s2
   1785e:	01395363          	bge	s2,s3,17864 <_svfprintf_r+0x23c>
   17862:	874e                	c.mv	a4,s3
   17864:	6682                	c.ldsp	a3,0(sp)
   17866:	9f35                	c.addw	a4,a3
   17868:	e03a                	c.sdsp	a4,0(sp)
   1786a:	120797e3          	bne	a5,zero,18198 <_svfprintf_r+0xb70>
   1786e:	67a2                	c.ldsp	a5,8(sp)
   17870:	10012423          	sw	zero,264(sp)
   17874:	c799                	c.beqz	a5,17882 <_svfprintf_r+0x25a>
   17876:	65a2                	c.ldsp	a1,8(sp)
   17878:	8562                	c.mv	a0,s8
   1787a:	ffffb097          	auipc	ra,0xffffb
   1787e:	36e080e7          	jalr	ra,878(ra) # 12be8 <_free_r>
   17882:	18010313          	addi	t1,sp,384
   17886:	8da2                	c.mv	s11,s0
   17888:	000dc783          	lbu	a5,0(s11)
   1788c:	e20799e3          	bne	a5,zero,176be <_svfprintf_r+0x96>
   17890:	67d2                	c.ldsp	a5,272(sp)
   17892:	c399                	c.beqz	a5,17898 <_svfprintf_r+0x270>
   17894:	4260106f          	jal	zero,18cba <_svfprintf_r+0x1692>
   17898:	010b5783          	lhu	a5,16(s6)
   1789c:	0407f793          	andi	a5,a5,64
   178a0:	c399                	c.beqz	a5,178a6 <_svfprintf_r+0x27e>
   178a2:	1570106f          	jal	zero,191f8 <_svfprintf_r+0x1bd0>
   178a6:	26813083          	ld	ra,616(sp)
   178aa:	26013403          	ld	s0,608(sp)
   178ae:	6502                	c.ldsp	a0,0(sp)
   178b0:	25813483          	ld	s1,600(sp)
   178b4:	25013903          	ld	s2,592(sp)
   178b8:	24813983          	ld	s3,584(sp)
   178bc:	24013a03          	ld	s4,576(sp)
   178c0:	23813a83          	ld	s5,568(sp)
   178c4:	23013b03          	ld	s6,560(sp)
   178c8:	22813b83          	ld	s7,552(sp)
   178cc:	22013c03          	ld	s8,544(sp)
   178d0:	21813c83          	ld	s9,536(sp)
   178d4:	21013d03          	ld	s10,528(sp)
   178d8:	20813d83          	ld	s11,520(sp)
   178dc:	27010113          	addi	sp,sp,624
   178e0:	8082                	c.jr	ra
   178e2:	0104e493          	ori	s1,s1,16
   178e6:	00044e03          	lbu	t3,0(s0)
   178ea:	2481                	c.addiw	s1,0
   178ec:	bd1d                	c.j	17722 <_svfprintf_r+0xfa>
   178ee:	41b404bb          	subw	s1,s0,s11
   178f2:	de0493e3          	bne	s1,zero,176d8 <_svfprintf_r+0xb0>
   178f6:	00044783          	lbu	a5,0(s0)
   178fa:	b531                	c.j	17706 <_svfprintf_r+0xde>
   178fc:	0210                	c.addi4spn	a2,sp,256
   178fe:	85da                	c.mv	a1,s6
   17900:	8562                	c.mv	a0,s8
   17902:	00003097          	auipc	ra,0x3
   17906:	fd4080e7          	jalr	ra,-44(ra) # 1a8d6 <__ssprint_r>
   1790a:	f559                	c.bnez	a0,17898 <_svfprintf_r+0x270>
   1790c:	18010313          	addi	t1,sp,384
   17910:	b3f5                	c.j	176fc <_svfprintf_r+0xd4>
   17912:	0084f793          	andi	a5,s1,8
   17916:	835e                	c.mv	t1,s7
   17918:	4a0796e3          	bne	a5,zero,185c4 <_svfprintf_r+0xf9c>
   1791c:	67c2                	c.ldsp	a5,16(sp)
   1791e:	e45e                	c.sdsp	s7,8(sp)
   17920:	2388                	c.fld	fa0,0(a5)
   17922:	07a1                	c.addi	a5,8
   17924:	e83e                	c.sdsp	a5,16(sp)
   17926:	00005097          	auipc	ra,0x5
   1792a:	600080e7          	jalr	ra,1536(ra) # 1cf26 <__extenddftf2>
   1792e:	6322                	c.ldsp	t1,8(sp)
   17930:	f9aa                	c.sdsp	a0,240(sp)
   17932:	fdae                	c.sdsp	a1,248(sp)
   17934:	1988                	c.addi4spn	a0,sp,240
   17936:	e41a                	c.sdsp	t1,8(sp)
   17938:	ffffe097          	auipc	ra,0xffffe
   1793c:	b3a080e7          	jalr	ra,-1222(ra) # 15472 <_ldcheck>
   17940:	cdaa                	c.swsp	a0,216(sp)
   17942:	4789                	c.li	a5,2
   17944:	6322                	c.ldsp	t1,8(sp)
   17946:	00f51463          	bne	a0,a5,1794e <_svfprintf_r+0x326>
   1794a:	0f40106f          	jal	zero,18a3e <_svfprintf_r+0x1416>
   1794e:	4785                	c.li	a5,1
   17950:	00f51463          	bne	a0,a5,17958 <_svfprintf_r+0x330>
   17954:	2440106f          	jal	zero,18b98 <_svfprintf_r+0x1570>
   17958:	06100793          	addi	a5,zero,97
   1795c:	00fc9463          	bne	s9,a5,17964 <_svfprintf_r+0x33c>
   17960:	0290106f          	jal	zero,19188 <_svfprintf_r+0x1b60>
   17964:	04100793          	addi	a5,zero,65
   17968:	00fc9463          	bne	s9,a5,17970 <_svfprintf_r+0x348>
   1796c:	5760106f          	jal	zero,18ee2 <_svfprintf_r+0x18ba>
   17970:	fdfcf713          	andi	a4,s9,-33
   17974:	57fd                	c.li	a5,-1
   17976:	f43a                	c.sdsp	a4,40(sp)
   17978:	00fd1463          	bne	s10,a5,17980 <_svfprintf_r+0x358>
   1797c:	37e0106f          	jal	zero,18cfa <_svfprintf_r+0x16d2>
   17980:	04700793          	addi	a5,zero,71
   17984:	00f71463          	bne	a4,a5,1798c <_svfprintf_r+0x364>
   17988:	03d0106f          	jal	zero,191c4 <_svfprintf_r+0x1b9c>
   1798c:	7a6e                	c.ldsp	s4,248(sp)
   1798e:	1004e793          	ori	a5,s1,256
   17992:	f826                	c.sdsp	s1,48(sp)
   17994:	7bce                	c.ldsp	s7,240(sp)
   17996:	2781                	c.addiw	a5,0
   17998:	000a5463          	bge	s4,zero,179a0 <_svfprintf_r+0x378>
   1799c:	7240106f          	jal	zero,190c0 <_svfprintf_r+0x1a98>
   179a0:	f082                	c.sdsp	zero,96(sp)
   179a2:	84be                	c.mv	s1,a5
   179a4:	e402                	c.sdsp	zero,8(sp)
   179a6:	7722                	c.ldsp	a4,40(sp)
   179a8:	04600793          	addi	a5,zero,70
   179ac:	00f71463          	bne	a4,a5,179b4 <_svfprintf_r+0x38c>
   179b0:	3f00106f          	jal	zero,18da0 <_svfprintf_r+0x1778>
   179b4:	04500793          	addi	a5,zero,69
   179b8:	ec1a                	c.sdsp	t1,24(sp)
   179ba:	00f71463          	bne	a4,a5,179c2 <_svfprintf_r+0x39a>
   179be:	7d80106f          	jal	zero,19196 <_svfprintf_r+0x1b6e>
   179c2:	09bc                	c.addi4spn	a5,sp,216
   179c4:	876a                	c.mv	a4,s10
   179c6:	0e810893          	addi	a7,sp,232
   179ca:	0dc10813          	addi	a6,sp,220
   179ce:	4689                	c.li	a3,2
   179d0:	85de                	c.mv	a1,s7
   179d2:	8652                	c.mv	a2,s4
   179d4:	8562                	c.mv	a0,s8
   179d6:	ffffd097          	auipc	ra,0xffffd
   179da:	bec080e7          	jalr	ra,-1044(ra) # 145c2 <_ldtoa_r>
   179de:	7722                	c.ldsp	a4,40(sp)
   179e0:	04700793          	addi	a5,zero,71
   179e4:	6362                	c.ldsp	t1,24(sp)
   179e6:	8daa                	c.mv	s11,a0
   179e8:	00f70463          	beq	a4,a5,179f0 <_svfprintf_r+0x3c8>
   179ec:	1910106f          	jal	zero,1937c <_svfprintf_r+0x1d54>
   179f0:	77c2                	c.ldsp	a5,48(sp)
   179f2:	8b85                	c.andi	a5,1
   179f4:	c399                	c.beqz	a5,179fa <_svfprintf_r+0x3d2>
   179f6:	7c80106f          	jal	zero,191be <_svfprintf_r+0x1b96>
   179fa:	76ae                	c.ldsp	a3,232(sp)
   179fc:	41b687bb          	subw	a5,a3,s11
   17a00:	f03e                	c.sdsp	a5,32(sp)
   17a02:	476e                	c.lwsp	a4,216(sp)
   17a04:	04700793          	addi	a5,zero,71
   17a08:	ec3a                	c.sdsp	a4,24(sp)
   17a0a:	7722                	c.ldsp	a4,40(sp)
   17a0c:	00f71463          	bne	a4,a5,17a14 <_svfprintf_r+0x3ec>
   17a10:	30a0106f          	jal	zero,18d1a <_svfprintf_r+0x16f2>
   17a14:	7722                	c.ldsp	a4,40(sp)
   17a16:	04600793          	addi	a5,zero,70
   17a1a:	00f71463          	bne	a4,a5,17a22 <_svfprintf_r+0x3fa>
   17a1e:	4860106f          	jal	zero,18ea4 <_svfprintf_r+0x187c>
   17a22:	67e2                	c.ldsp	a5,24(sp)
   17a24:	75a2                	c.ldsp	a1,40(sp)
   17a26:	04100613          	addi	a2,zero,65
   17a2a:	37fd                	c.addiw	a5,-1
   17a2c:	cdbe                	c.swsp	a5,216(sp)
   17a2e:	0ffcf713          	andi	a4,s9,255
   17a32:	4681                	c.li	a3,0
   17a34:	00c59663          	bne	a1,a2,17a40 <_svfprintf_r+0x418>
   17a38:	273d                	c.addiw	a4,15
   17a3a:	0ff77713          	andi	a4,a4,255
   17a3e:	4685                	c.li	a3,1
   17a40:	0ee10023          	sb	a4,224(sp)
   17a44:	02b00713          	addi	a4,zero,43
   17a48:	0007d763          	bge	a5,zero,17a56 <_svfprintf_r+0x42e>
   17a4c:	6762                	c.ldsp	a4,24(sp)
   17a4e:	4785                	c.li	a5,1
   17a50:	9f99                	c.subw	a5,a4
   17a52:	02d00713          	addi	a4,zero,45
   17a56:	0ee100a3          	sb	a4,225(sp)
   17a5a:	4725                	c.li	a4,9
   17a5c:	00f74463          	blt	a4,a5,17a64 <_svfprintf_r+0x43c>
   17a60:	7a00106f          	jal	zero,19200 <_svfprintf_r+0x1bd8>
   17a64:	0ef10513          	addi	a0,sp,239
   17a68:	85aa                	c.mv	a1,a0
   17a6a:	46a9                	c.li	a3,10
   17a6c:	06300e93          	addi	t4,zero,99
   17a70:	02d7e73b          	remw	a4,a5,a3
   17a74:	862e                	c.mv	a2,a1
   17a76:	883e                	c.mv	a6,a5
   17a78:	15fd                	c.addi	a1,-1
   17a7a:	0307071b          	addiw	a4,a4,48
   17a7e:	fee60fa3          	sb	a4,-1(a2)
   17a82:	02d7c7bb          	divw	a5,a5,a3
   17a86:	ff0ec5e3          	blt	t4,a6,17a70 <_svfprintf_r+0x448>
   17a8a:	0307879b          	addiw	a5,a5,48
   17a8e:	0ff7f693          	andi	a3,a5,255
   17a92:	fed58fa3          	sb	a3,-1(a1)
   17a96:	ffe60793          	addi	a5,a2,-2
   17a9a:	00a7e463          	bltu	a5,a0,17aa2 <_svfprintf_r+0x47a>
   17a9e:	0f70106f          	jal	zero,19394 <_svfprintf_r+0x1d6c>
   17aa2:	0e210713          	addi	a4,sp,226
   17aa6:	a019                	c.j	17aac <_svfprintf_r+0x484>
   17aa8:	0007c683          	lbu	a3,0(a5)
   17aac:	00d70023          	sb	a3,0(a4)
   17ab0:	0785                	c.addi	a5,1
   17ab2:	0705                	c.addi	a4,1
   17ab4:	fea79ae3          	bne	a5,a0,17aa8 <_svfprintf_r+0x480>
   17ab8:	0f110793          	addi	a5,sp,241
   17abc:	0e210713          	addi	a4,sp,226
   17ac0:	8f91                	c.sub	a5,a2
   17ac2:	97ba                	c.add	a5,a4
   17ac4:	1198                	c.addi4spn	a4,sp,224
   17ac6:	9f99                	c.subw	a5,a4
   17ac8:	e8be                	c.sdsp	a5,80(sp)
   17aca:	67c6                	c.ldsp	a5,80(sp)
   17acc:	7682                	c.ldsp	a3,32(sp)
   17ace:	4705                	c.li	a4,1
   17ad0:	00d78a3b          	addw	s4,a5,a3
   17ad4:	87d2                	c.mv	a5,s4
   17ad6:	00d74463          	blt	a4,a3,17ade <_svfprintf_r+0x4b6>
   17ada:	0430106f          	jal	zero,1931c <_svfprintf_r+0x1cf4>
   17ade:	7762                	c.ldsp	a4,56(sp)
   17ae0:	00e78a3b          	addw	s4,a5,a4
   17ae4:	77c2                	c.ldsp	a5,48(sp)
   17ae6:	fffa4993          	xori	s3,s4,-1
   17aea:	43f9d993          	srai	s3,s3,0x3f
   17aee:	bff7f493          	andi	s1,a5,-1025
   17af2:	2481                	c.addiw	s1,0
   17af4:	013a79b3          	and	s3,s4,s3
   17af8:	1004e493          	ori	s1,s1,256
   17afc:	2981                	c.addiw	s3,0
   17afe:	f802                	c.sdsp	zero,48(sp)
   17b00:	f402                	c.sdsp	zero,40(sp)
   17b02:	ec02                	c.sdsp	zero,24(sp)
   17b04:	7786                	c.ldsp	a5,96(sp)
   17b06:	e399                	c.bnez	a5,17b0c <_svfprintf_r+0x4e4>
   17b08:	2680106f          	jal	zero,18d70 <_svfprintf_r+0x1748>
   17b0c:	02d00793          	addi	a5,zero,45
   17b10:	0cf107a3          	sb	a5,207(sp)
   17b14:	4d01                	c.li	s10,0
   17b16:	2985                	c.addiw	s3,1
   17b18:	b171                	c.j	177a4 <_svfprintf_r+0x17c>
   17b1a:	0210                	c.addi4spn	a2,sp,256
   17b1c:	85da                	c.mv	a1,s6
   17b1e:	8562                	c.mv	a0,s8
   17b20:	f4fa                	c.sdsp	t5,104(sp)
   17b22:	f0fe                	c.sdsp	t6,96(sp)
   17b24:	00003097          	auipc	ra,0x3
   17b28:	db2080e7          	jalr	ra,-590(ra) # 1a8d6 <__ssprint_r>
   17b2c:	66051f63          	bne	a0,zero,181aa <_svfprintf_r+0xb82>
   17b30:	67d2                	c.ldsp	a5,272(sp)
   17b32:	7f26                	c.ldsp	t5,104(sp)
   17b34:	7f86                	c.ldsp	t6,96(sp)
   17b36:	18010313          	addi	t1,sp,384
   17b3a:	b955                	c.j	177ee <_svfprintf_r+0x1c6>
   17b3c:	10812603          	lw	a2,264(sp)
   17b40:	00178b93          	addi	s7,a5,1
   17b44:	7782                	c.ldsp	a5,32(sp)
   17b46:	0016071b          	addiw	a4,a2,1
   17b4a:	4585                	c.li	a1,1
   17b4c:	01b33023          	sd	s11,0(t1)
   17b50:	86ba                	c.mv	a3,a4
   17b52:	01030a13          	addi	s4,t1,16
   17b56:	10f5d8e3          	bge	a1,a5,18466 <_svfprintf_r+0xe3e>
   17b5a:	4605                	c.li	a2,1
   17b5c:	10d12423          	sw	a3,264(sp)
   17b60:	00c33423          	sd	a2,8(t1)
   17b64:	ea5e                	c.sdsp	s7,272(sp)
   17b66:	469d                	c.li	a3,7
   17b68:	1ee6cbe3          	blt	a3,a4,1855e <_svfprintf_r+0xf36>
   17b6c:	77e2                	c.ldsp	a5,56(sp)
   17b6e:	00170d1b          	addiw	s10,a4,1
   17b72:	6706                	c.ldsp	a4,64(sp)
   17b74:	9bbe                	c.add	s7,a5
   17b76:	00fa3423          	sd	a5,8(s4)
   17b7a:	00ea3023          	sd	a4,0(s4)
   17b7e:	ea5e                	c.sdsp	s7,272(sp)
   17b80:	11a12423          	sw	s10,264(sp)
   17b84:	469d                	c.li	a3,7
   17b86:	0a41                	c.addi	s4,16
   17b88:	1fa6cbe3          	blt	a3,s10,1857e <_svfprintf_r+0xf56>
   17b8c:	754e                	c.ldsp	a0,240(sp)
   17b8e:	75ee                	c.ldsp	a1,248(sp)
   17b90:	001d089b          	addiw	a7,s10,1
   17b94:	4601                	c.li	a2,0
   17b96:	4681                	c.li	a3,0
   17b98:	cc46                	c.swsp	a7,24(sp)
   17b9a:	00004097          	auipc	ra,0x4
   17b9e:	276080e7          	jalr	ra,630(ra) # 1be10 <__eqtf2>
   17ba2:	48e2                	c.lwsp	a7,24(sp)
   17ba4:	7782                	c.ldsp	a5,32(sp)
   17ba6:	010a0313          	addi	t1,s4,16
   17baa:	0008861b          	addiw	a2,a7,0
   17bae:	fff78c9b          	addiw	s9,a5,-1
   17bb2:	0e0503e3          	beq	a0,zero,18498 <_svfprintf_r+0xe70>
   17bb6:	001d8813          	addi	a6,s11,1
   17bba:	9be6                	c.add	s7,s9
   17bbc:	010a3023          	sd	a6,0(s4)
   17bc0:	019a3423          	sd	s9,8(s4)
   17bc4:	ea5e                	c.sdsp	s7,272(sp)
   17bc6:	11112423          	sw	a7,264(sp)
   17bca:	469d                	c.li	a3,7
   17bcc:	4ac6cee3          	blt	a3,a2,18888 <_svfprintf_r+0x1260>
   17bd0:	020a0693          	addi	a3,s4,32
   17bd4:	002d061b          	addiw	a2,s10,2
   17bd8:	8a1a                	c.mv	s4,t1
   17bda:	8336                	c.mv	t1,a3
   17bdc:	66c6                	c.ldsp	a3,80(sp)
   17bde:	1198                	c.addi4spn	a4,sp,224
   17be0:	00ea3023          	sd	a4,0(s4)
   17be4:	017687b3          	add	a5,a3,s7
   17be8:	00da3423          	sd	a3,8(s4)
   17bec:	ea3e                	c.sdsp	a5,272(sp)
   17bee:	10c12423          	sw	a2,264(sp)
   17bf2:	471d                	c.li	a4,7
   17bf4:	c4c75ee3          	bge	a4,a2,17850 <_svfprintf_r+0x228>
   17bf8:	0210                	c.addi4spn	a2,sp,256
   17bfa:	85da                	c.mv	a1,s6
   17bfc:	8562                	c.mv	a0,s8
   17bfe:	00003097          	auipc	ra,0x3
   17c02:	cd8080e7          	jalr	ra,-808(ra) # 1a8d6 <__ssprint_r>
   17c06:	5a051263          	bne	a0,zero,181aa <_svfprintf_r+0xb82>
   17c0a:	67d2                	c.ldsp	a5,272(sp)
   17c0c:	18010313          	addi	t1,sp,384
   17c10:	b181                	c.j	17850 <_svfprintf_r+0x228>
   17c12:	6742                	c.ldsp	a4,16(sp)
   17c14:	835e                	c.mv	t1,s7
   17c16:	0c0107a3          	sb	zero,207(sp)
   17c1a:	431c                	c.lw	a5,0(a4)
   17c1c:	0721                	c.addi	a4,8
   17c1e:	e83a                	c.sdsp	a4,16(sp)
   17c20:	10f10c23          	sb	a5,280(sp)
   17c24:	4985                	c.li	s3,1
   17c26:	4a05                	c.li	s4,1
   17c28:	11810d93          	addi	s11,sp,280
   17c2c:	b6bd                	c.j	1779a <_svfprintf_r+0x172>
   17c2e:	67c2                	c.ldsp	a5,16(sp)
   17c30:	0c0107a3          	sb	zero,207(sp)
   17c34:	835e                	c.mv	t1,s7
   17c36:	0007bd83          	ld	s11,0(a5)
   17c3a:	00878b93          	addi	s7,a5,8
   17c3e:	640d83e3          	beq	s11,zero,18a84 <_svfprintf_r+0x145c>
   17c42:	57fd                	c.li	a5,-1
   17c44:	26fd0fe3          	beq	s10,a5,186c2 <_svfprintf_r+0x109a>
   17c48:	866a                	c.mv	a2,s10
   17c4a:	4581                	c.li	a1,0
   17c4c:	856e                	c.mv	a0,s11
   17c4e:	e81a                	c.sdsp	t1,16(sp)
   17c50:	ffffe097          	auipc	ra,0xffffe
   17c54:	1bc080e7          	jalr	ra,444(ra) # 15e0c <memchr>
   17c58:	e42a                	c.sdsp	a0,8(sp)
   17c5a:	6342                	c.ldsp	t1,16(sp)
   17c5c:	e119                	c.bnez	a0,17c62 <_svfprintf_r+0x63a>
   17c5e:	1fe0106f          	jal	zero,18e5c <_svfprintf_r+0x1834>
   17c62:	67a2                	c.ldsp	a5,8(sp)
   17c64:	e85e                	c.sdsp	s7,16(sp)
   17c66:	e402                	c.sdsp	zero,8(sp)
   17c68:	41b78a3b          	subw	s4,a5,s11
   17c6c:	0cf14783          	lbu	a5,207(sp)
   17c70:	fffa4993          	xori	s3,s4,-1
   17c74:	43f9d993          	srai	s3,s3,0x3f
   17c78:	f802                	c.sdsp	zero,48(sp)
   17c7a:	f402                	c.sdsp	zero,40(sp)
   17c7c:	ec02                	c.sdsp	zero,24(sp)
   17c7e:	0149f9b3          	and	s3,s3,s4
   17c82:	4d01                	c.li	s10,0
   17c84:	b20780e3          	beq	a5,zero,177a4 <_svfprintf_r+0x17c>
   17c88:	2985                	c.addiw	s3,1
   17c8a:	be29                	c.j	177a4 <_svfprintf_r+0x17c>
   17c8c:	0104e493          	ori	s1,s1,16
   17c90:	835e                	c.mv	t1,s7
   17c92:	2481                	c.addiw	s1,0
   17c94:	66c2                	c.ldsp	a3,16(sp)
   17c96:	0204f793          	andi	a5,s1,32
   17c9a:	00868713          	addi	a4,a3,8
   17c9e:	080780e3          	beq	a5,zero,1851e <_svfprintf_r+0xef6>
   17ca2:	0006b983          	ld	s3,0(a3)
   17ca6:	bff4f493          	andi	s1,s1,-1025
   17caa:	00048b9b          	addiw	s7,s1,0
   17cae:	e83a                	c.sdsp	a4,16(sp)
   17cb0:	4781                	c.li	a5,0
   17cb2:	0c0107a3          	sb	zero,207(sp)
   17cb6:	577d                	c.li	a4,-1
   17cb8:	22ed0f63          	beq	s10,a4,17ef6 <_svfprintf_r+0x8ce>
   17cbc:	f7fbf493          	andi	s1,s7,-129
   17cc0:	2481                	c.addiw	s1,0
   17cc2:	22099963          	bne	s3,zero,17ef4 <_svfprintf_r+0x8cc>
   17cc6:	340d1c63          	bne	s10,zero,1801e <_svfprintf_r+0x9f6>
   17cca:	7c079263          	bne	a5,zero,1848e <_svfprintf_r+0xe66>
   17cce:	001bfa13          	andi	s4,s7,1
   17cd2:	17c10d93          	addi	s11,sp,380
   17cd6:	0c0a1be3          	bne	s4,zero,185ac <_svfprintf_r+0xf84>
   17cda:	0cf14783          	lbu	a5,207(sp)
   17cde:	000a099b          	addiw	s3,s4,0
   17ce2:	01aa5463          	bge	s4,s10,17cea <_svfprintf_r+0x6c2>
   17ce6:	000d099b          	addiw	s3,s10,0
   17cea:	e402                	c.sdsp	zero,8(sp)
   17cec:	f802                	c.sdsp	zero,48(sp)
   17cee:	f402                	c.sdsp	zero,40(sp)
   17cf0:	ec02                	c.sdsp	zero,24(sp)
   17cf2:	fbd9                	c.bnez	a5,17c88 <_svfprintf_r+0x660>
   17cf4:	bc45                	c.j	177a4 <_svfprintf_r+0x17c>
   17cf6:	00044e03          	lbu	t3,0(s0)
   17cfa:	06800793          	addi	a5,zero,104
   17cfe:	14fe08e3          	beq	t3,a5,1864e <_svfprintf_r+0x1026>
   17d02:	0404e493          	ori	s1,s1,64
   17d06:	2481                	c.addiw	s1,0
   17d08:	bc29                	c.j	17722 <_svfprintf_r+0xfa>
   17d0a:	66c2                	c.ldsp	a3,16(sp)
   17d0c:	0204f793          	andi	a5,s1,32
   17d10:	835e                	c.mv	t1,s7
   17d12:	6298                	c.ld	a4,0(a3)
   17d14:	06a1                	c.addi	a3,8
   17d16:	e836                	c.sdsp	a3,16(sp)
   17d18:	e395                	c.bnez	a5,17d3c <_svfprintf_r+0x714>
   17d1a:	0104f793          	andi	a5,s1,16
   17d1e:	ef99                	c.bnez	a5,17d3c <_svfprintf_r+0x714>
   17d20:	0404f793          	andi	a5,s1,64
   17d24:	74079fe3          	bne	a5,zero,18c82 <_svfprintf_r+0x165a>
   17d28:	2004f493          	andi	s1,s1,512
   17d2c:	6782                	c.ldsp	a5,0(sp)
   17d2e:	e099                	c.bnez	s1,17d34 <_svfprintf_r+0x70c>
   17d30:	4a20106f          	jal	zero,191d2 <_svfprintf_r+0x1baa>
   17d34:	00f70023          	sb	a5,0(a4)
   17d38:	8da2                	c.mv	s11,s0
   17d3a:	b6b9                	c.j	17888 <_svfprintf_r+0x260>
   17d3c:	6782                	c.ldsp	a5,0(sp)
   17d3e:	8da2                	c.mv	s11,s0
   17d40:	e31c                	c.sd	a5,0(a4)
   17d42:	b699                	c.j	17888 <_svfprintf_r+0x260>
   17d44:	00044e03          	lbu	t3,0(s0)
   17d48:	06c00793          	addi	a5,zero,108
   17d4c:	14fe00e3          	beq	t3,a5,1868c <_svfprintf_r+0x1064>
   17d50:	0104e493          	ori	s1,s1,16
   17d54:	2481                	c.addiw	s1,0
   17d56:	b2f1                	c.j	17722 <_svfprintf_r+0xfa>
   17d58:	0204e493          	ori	s1,s1,32
   17d5c:	00044e03          	lbu	t3,0(s0)
   17d60:	2481                	c.addiw	s1,0
   17d62:	b2c1                	c.j	17722 <_svfprintf_r+0xfa>
   17d64:	6742                	c.ldsp	a4,16(sp)
   17d66:	77e1                	c.lui	a5,0xffff8
   17d68:	8307c793          	xori	a5,a5,-2000
   17d6c:	0cf11823          	sh	a5,208(sp)
   17d70:	00870793          	addi	a5,a4,8
   17d74:	0024e493          	ori	s1,s1,2
   17d78:	e83e                	c.sdsp	a5,16(sp)
   17d7a:	00005797          	auipc	a5,0x5
   17d7e:	56678793          	addi	a5,a5,1382 # 1d2e0 <__clzdi2+0xc8>
   17d82:	835e                	c.mv	t1,s7
   17d84:	e4be                	c.sdsp	a5,72(sp)
   17d86:	00073983          	ld	s3,0(a4)
   17d8a:	00048b9b          	addiw	s7,s1,0
   17d8e:	4789                	c.li	a5,2
   17d90:	07800c93          	addi	s9,zero,120
   17d94:	bf39                	c.j	17cb2 <_svfprintf_r+0x68a>
   17d96:	0104e493          	ori	s1,s1,16
   17d9a:	835e                	c.mv	t1,s7
   17d9c:	00048b9b          	addiw	s7,s1,0
   17da0:	66c2                	c.ldsp	a3,16(sp)
   17da2:	020bf793          	andi	a5,s7,32
   17da6:	00868713          	addi	a4,a3,8
   17daa:	78078963          	beq	a5,zero,1853c <_svfprintf_r+0xf14>
   17dae:	0006b983          	ld	s3,0(a3)
   17db2:	4785                	c.li	a5,1
   17db4:	e83a                	c.sdsp	a4,16(sp)
   17db6:	bdf5                	c.j	17cb2 <_svfprintf_r+0x68a>
   17db8:	0084e493          	ori	s1,s1,8
   17dbc:	00044e03          	lbu	t3,0(s0)
   17dc0:	2481                	c.addiw	s1,0
   17dc2:	b285                	c.j	17722 <_svfprintf_r+0xfa>
   17dc4:	0804e493          	ori	s1,s1,128
   17dc8:	00044e03          	lbu	t3,0(s0)
   17dcc:	2481                	c.addiw	s1,0
   17dce:	ba91                	c.j	17722 <_svfprintf_r+0xfa>
   17dd0:	00044c83          	lbu	s9,0(s0)
   17dd4:	00140793          	addi	a5,s0,1
   17dd8:	014c9463          	bne	s9,s4,17de0 <_svfprintf_r+0x7b8>
   17ddc:	5840106f          	jal	zero,19360 <_svfprintf_r+0x1d38>
   17de0:	fd0c871b          	addiw	a4,s9,-48
   17de4:	843e                	c.mv	s0,a5
   17de6:	4d01                	c.li	s10,0
   17de8:	94e9e2e3          	bltu	s3,a4,1772c <_svfprintf_r+0x104>
   17dec:	00044603          	lbu	a2,0(s0)
   17df0:	002d179b          	slliw	a5,s10,0x2
   17df4:	01a787bb          	addw	a5,a5,s10
   17df8:	0017979b          	slliw	a5,a5,0x1
   17dfc:	00e78d3b          	addw	s10,a5,a4
   17e00:	fd06071b          	addiw	a4,a2,-48
   17e04:	0405                	c.addi	s0,1
   17e06:	fee9f3e3          	bgeu	s3,a4,17dec <_svfprintf_r+0x7c4>
   17e0a:	8cb2                	c.mv	s9,a2
   17e0c:	b205                	c.j	1772c <_svfprintf_r+0x104>
   17e0e:	00044e03          	lbu	t3,0(s0)
   17e12:	0044e493          	ori	s1,s1,4
   17e16:	2481                	c.addiw	s1,0
   17e18:	b229                	c.j	17722 <_svfprintf_r+0xfa>
   17e1a:	02b00793          	addi	a5,zero,43
   17e1e:	00044e03          	lbu	t3,0(s0)
   17e22:	0cf107a3          	sb	a5,207(sp)
   17e26:	b8f5                	c.j	17722 <_svfprintf_r+0xfa>
   17e28:	67c2                	c.ldsp	a5,16(sp)
   17e2a:	00044e03          	lbu	t3,0(s0)
   17e2e:	0007a903          	lw	s2,0(a5)
   17e32:	07a1                	c.addi	a5,8
   17e34:	e83e                	c.sdsp	a5,16(sp)
   17e36:	8e0956e3          	bge	s2,zero,17722 <_svfprintf_r+0xfa>
   17e3a:	4120093b          	subw	s2,zero,s2
   17e3e:	bfd1                	c.j	17e12 <_svfprintf_r+0x7ea>
   17e40:	8562                	c.mv	a0,s8
   17e42:	ffffd097          	auipc	ra,0xffffd
   17e46:	67c080e7          	jalr	ra,1660(ra) # 154be <_localeconv_r>
   17e4a:	651c                	c.ld	a5,8(a0)
   17e4c:	853e                	c.mv	a0,a5
   17e4e:	fcbe                	c.sdsp	a5,120(sp)
   17e50:	ffff8097          	auipc	ra,0xffff8
   17e54:	67a080e7          	jalr	ra,1658(ra) # 104ca <strlen>
   17e58:	87aa                	c.mv	a5,a0
   17e5a:	8562                	c.mv	a0,s8
   17e5c:	8cbe                	c.mv	s9,a5
   17e5e:	f8be                	c.sdsp	a5,112(sp)
   17e60:	ffffd097          	auipc	ra,0xffffd
   17e64:	65e080e7          	jalr	ra,1630(ra) # 154be <_localeconv_r>
   17e68:	691c                	c.ld	a5,16(a0)
   17e6a:	00044e03          	lbu	t3,0(s0)
   17e6e:	ecbe                	c.sdsp	a5,88(sp)
   17e70:	8a0c89e3          	beq	s9,zero,17722 <_svfprintf_r+0xfa>
   17e74:	8a0787e3          	beq	a5,zero,17722 <_svfprintf_r+0xfa>
   17e78:	0007c783          	lbu	a5,0(a5)
   17e7c:	8a0783e3          	beq	a5,zero,17722 <_svfprintf_r+0xfa>
   17e80:	4004e493          	ori	s1,s1,1024
   17e84:	2481                	c.addiw	s1,0
   17e86:	b871                	c.j	17722 <_svfprintf_r+0xfa>
   17e88:	0014e493          	ori	s1,s1,1
   17e8c:	00044e03          	lbu	t3,0(s0)
   17e90:	2481                	c.addiw	s1,0
   17e92:	b841                	c.j	17722 <_svfprintf_r+0xfa>
   17e94:	0cf14783          	lbu	a5,207(sp)
   17e98:	00044e03          	lbu	t3,0(s0)
   17e9c:	880793e3          	bne	a5,zero,17722 <_svfprintf_r+0xfa>
   17ea0:	02000793          	addi	a5,zero,32
   17ea4:	0cf107a3          	sb	a5,207(sp)
   17ea8:	b8ad                	c.j	17722 <_svfprintf_r+0xfa>
   17eaa:	0104e493          	ori	s1,s1,16
   17eae:	835e                	c.mv	t1,s7
   17eb0:	2481                	c.addiw	s1,0
   17eb2:	66c2                	c.ldsp	a3,16(sp)
   17eb4:	0204f793          	andi	a5,s1,32
   17eb8:	00868713          	addi	a4,a3,8
   17ebc:	62078963          	beq	a5,zero,184ee <_svfprintf_r+0xec6>
   17ec0:	629c                	c.ld	a5,0(a3)
   17ec2:	89be                	c.mv	s3,a5
   17ec4:	6407c263          	blt	a5,zero,18508 <_svfprintf_r+0xee0>
   17ec8:	57fd                	c.li	a5,-1
   17eca:	30fd0ce3          	beq	s10,a5,189e2 <_svfprintf_r+0x13ba>
   17ece:	f7f4f493          	andi	s1,s1,-129
   17ed2:	e83a                	c.sdsp	a4,16(sp)
   17ed4:	00048b9b          	addiw	s7,s1,0
   17ed8:	5a098863          	beq	s3,zero,18488 <_svfprintf_r+0xe60>
   17edc:	47a5                	c.li	a5,9
   17ede:	1f37e5e3          	bltu	a5,s3,188c8 <_svfprintf_r+0x12a0>
   17ee2:	0309899b          	addiw	s3,s3,48
   17ee6:	17310da3          	sb	s3,379(sp)
   17eea:	84de                	c.mv	s1,s7
   17eec:	4a05                	c.li	s4,1
   17eee:	17b10d93          	addi	s11,sp,379
   17ef2:	b3e5                	c.j	17cda <_svfprintf_r+0x6b2>
   17ef4:	8ba6                	c.mv	s7,s1
   17ef6:	4705                	c.li	a4,1
   17ef8:	fee782e3          	beq	a5,a4,17edc <_svfprintf_r+0x8b4>
   17efc:	4709                	c.li	a4,2
   17efe:	12e78963          	beq	a5,a4,18030 <_svfprintf_r+0xa08>
   17f02:	17c10a13          	addi	s4,sp,380
   17f06:	8dd2                	c.mv	s11,s4
   17f08:	0079f793          	andi	a5,s3,7
   17f0c:	03078793          	addi	a5,a5,48
   17f10:	fefd8fa3          	sb	a5,-1(s11)
   17f14:	0039d993          	srli	s3,s3,0x3
   17f18:	876e                	c.mv	a4,s11
   17f1a:	1dfd                	c.addi	s11,-1
   17f1c:	fe0996e3          	bne	s3,zero,17f08 <_svfprintf_r+0x8e0>
   17f20:	001bf693          	andi	a3,s7,1
   17f24:	12068663          	beq	a3,zero,18050 <_svfprintf_r+0xa28>
   17f28:	03000693          	addi	a3,zero,48
   17f2c:	12d78263          	beq	a5,a3,18050 <_svfprintf_r+0xa28>
   17f30:	1779                	c.addi	a4,-2
   17f32:	fedd8fa3          	sb	a3,-1(s11)
   17f36:	40ea0a3b          	subw	s4,s4,a4
   17f3a:	84de                	c.mv	s1,s7
   17f3c:	8dba                	c.mv	s11,a4
   17f3e:	bb71                	c.j	17cda <_svfprintf_r+0x6b2>
   17f40:	06500713          	addi	a4,zero,101
   17f44:	bf975ce3          	bge	a4,s9,17b3c <_svfprintf_r+0x514>
   17f48:	754e                	c.ldsp	a0,240(sp)
   17f4a:	75ee                	c.ldsp	a1,248(sp)
   17f4c:	4601                	c.li	a2,0
   17f4e:	4681                	c.li	a3,0
   17f50:	f49a                	c.sdsp	t1,104(sp)
   17f52:	f0be                	c.sdsp	a5,96(sp)
   17f54:	00004097          	auipc	ra,0x4
   17f58:	ebc080e7          	jalr	ra,-324(ra) # 1be10 <__eqtf2>
   17f5c:	7786                	c.ldsp	a5,96(sp)
   17f5e:	7326                	c.ldsp	t1,104(sp)
   17f60:	3c051963          	bne	a0,zero,18332 <_svfprintf_r+0xd0a>
   17f64:	10812703          	lw	a4,264(sp)
   17f68:	00005697          	auipc	a3,0x5
   17f6c:	39868693          	addi	a3,a3,920 # 1d300 <__clzdi2+0xe8>
   17f70:	00d33023          	sd	a3,0(t1)
   17f74:	2705                	c.addiw	a4,1
   17f76:	4685                	c.li	a3,1
   17f78:	0785                	c.addi	a5,1
   17f7a:	00d33423          	sd	a3,8(t1)
   17f7e:	10e12423          	sw	a4,264(sp)
   17f82:	0007069b          	addiw	a3,a4,0
   17f86:	ea3e                	c.sdsp	a5,272(sp)
   17f88:	471d                	c.li	a4,7
   17f8a:	0341                	c.addi	t1,16
   17f8c:	24d74fe3          	blt	a4,a3,189ea <_svfprintf_r+0x13c2>
   17f90:	476e                	c.lwsp	a4,216(sp)
   17f92:	7682                	c.ldsp	a3,32(sp)
   17f94:	60d75563          	bge	a4,a3,1859e <_svfprintf_r+0xf76>
   17f98:	6706                	c.ldsp	a4,64(sp)
   17f9a:	76e2                	c.ldsp	a3,56(sp)
   17f9c:	0341                	c.addi	t1,16
   17f9e:	fee33823          	sd	a4,-16(t1)
   17fa2:	10812703          	lw	a4,264(sp)
   17fa6:	97b6                	c.add	a5,a3
   17fa8:	fed33c23          	sd	a3,-8(t1)
   17fac:	2705                	c.addiw	a4,1
   17fae:	0007069b          	addiw	a3,a4,0
   17fb2:	10e12423          	sw	a4,264(sp)
   17fb6:	ea3e                	c.sdsp	a5,272(sp)
   17fb8:	471d                	c.li	a4,7
   17fba:	6ad74263          	blt	a4,a3,1865e <_svfprintf_r+0x1036>
   17fbe:	7702                	c.ldsp	a4,32(sp)
   17fc0:	fff70a1b          	addiw	s4,a4,-1
   17fc4:	894056e3          	bge	zero,s4,17850 <_svfprintf_r+0x228>
   17fc8:	10812703          	lw	a4,264(sp)
   17fcc:	234adde3          	bge	s5,s4,18a06 <_svfprintf_r+0x13de>
   17fd0:	4b9d                	c.li	s7,7
   17fd2:	a021                	c.j	17fda <_svfprintf_r+0x9b2>
   17fd4:	3a41                	c.addiw	s4,-16
   17fd6:	234ad8e3          	bge	s5,s4,18a06 <_svfprintf_r+0x13de>
   17fda:	0017069b          	addiw	a3,a4,1
   17fde:	07c1                	c.addi	a5,16
   17fe0:	00006717          	auipc	a4,0x6
   17fe4:	bd870713          	addi	a4,a4,-1064 # 1dbb8 <zeroes.0>
   17fe8:	00e33023          	sd	a4,0(t1)
   17fec:	01533423          	sd	s5,8(t1)
   17ff0:	ea3e                	c.sdsp	a5,272(sp)
   17ff2:	0006871b          	addiw	a4,a3,0
   17ff6:	10d12423          	sw	a3,264(sp)
   17ffa:	0341                	c.addi	t1,16
   17ffc:	fcebdce3          	bge	s7,a4,17fd4 <_svfprintf_r+0x9ac>
   18000:	0210                	c.addi4spn	a2,sp,256
   18002:	85da                	c.mv	a1,s6
   18004:	8562                	c.mv	a0,s8
   18006:	00003097          	auipc	ra,0x3
   1800a:	8d0080e7          	jalr	ra,-1840(ra) # 1a8d6 <__ssprint_r>
   1800e:	18051e63          	bne	a0,zero,181aa <_svfprintf_r+0xb82>
   18012:	67d2                	c.ldsp	a5,272(sp)
   18014:	10812703          	lw	a4,264(sp)
   18018:	18010313          	addi	t1,sp,384
   1801c:	bf65                	c.j	17fd4 <_svfprintf_r+0x9ac>
   1801e:	4705                	c.li	a4,1
   18020:	00e79463          	bne	a5,a4,18028 <_svfprintf_r+0xa00>
   18024:	15e0106f          	jal	zero,19182 <_svfprintf_r+0x1b5a>
   18028:	4709                	c.li	a4,2
   1802a:	8ba6                	c.mv	s7,s1
   1802c:	ece79be3          	bne	a5,a4,17f02 <_svfprintf_r+0x8da>
   18030:	6726                	c.ldsp	a4,72(sp)
   18032:	17c10a13          	addi	s4,sp,380
   18036:	8dd2                	c.mv	s11,s4
   18038:	00f9f793          	andi	a5,s3,15
   1803c:	97ba                	c.add	a5,a4
   1803e:	0007c783          	lbu	a5,0(a5)
   18042:	0049d993          	srli	s3,s3,0x4
   18046:	1dfd                	c.addi	s11,-1
   18048:	00fd8023          	sb	a5,0(s11)
   1804c:	fe0996e3          	bne	s3,zero,18038 <_svfprintf_r+0xa10>
   18050:	41ba0a3b          	subw	s4,s4,s11
   18054:	84de                	c.mv	s1,s7
   18056:	b151                	c.j	17cda <_svfprintf_r+0x6b2>
   18058:	41390bbb          	subw	s7,s2,s3
   1805c:	fd705263          	bge	zero,s7,17820 <_svfprintf_r+0x1f8>
   18060:	10812703          	lw	a4,264(sp)
   18064:	057adc63          	bge	s5,s7,180bc <_svfprintf_r+0xa94>
   18068:	489d                	c.li	a7,7
   1806a:	a021                	c.j	18072 <_svfprintf_r+0xa4a>
   1806c:	3bc1                	c.addiw	s7,-16
   1806e:	057ad763          	bge	s5,s7,180bc <_svfprintf_r+0xa94>
   18072:	0017069b          	addiw	a3,a4,1
   18076:	07c1                	c.addi	a5,16
   18078:	00006717          	auipc	a4,0x6
   1807c:	b4070713          	addi	a4,a4,-1216 # 1dbb8 <zeroes.0>
   18080:	00e33023          	sd	a4,0(t1)
   18084:	01533423          	sd	s5,8(t1)
   18088:	ea3e                	c.sdsp	a5,272(sp)
   1808a:	0006871b          	addiw	a4,a3,0
   1808e:	10d12423          	sw	a3,264(sp)
   18092:	0341                	c.addi	t1,16
   18094:	fce8dce3          	bge	a7,a4,1806c <_svfprintf_r+0xa44>
   18098:	0210                	c.addi4spn	a2,sp,256
   1809a:	85da                	c.mv	a1,s6
   1809c:	8562                	c.mv	a0,s8
   1809e:	00003097          	auipc	ra,0x3
   180a2:	838080e7          	jalr	ra,-1992(ra) # 1a8d6 <__ssprint_r>
   180a6:	10051263          	bne	a0,zero,181aa <_svfprintf_r+0xb82>
   180aa:	3bc1                	c.addiw	s7,-16
   180ac:	67d2                	c.ldsp	a5,272(sp)
   180ae:	10812703          	lw	a4,264(sp)
   180b2:	18010313          	addi	t1,sp,384
   180b6:	489d                	c.li	a7,7
   180b8:	fb7acde3          	blt	s5,s7,18072 <_svfprintf_r+0xa4a>
   180bc:	2705                	c.addiw	a4,1
   180be:	00006697          	auipc	a3,0x6
   180c2:	afa68693          	addi	a3,a3,-1286 # 1dbb8 <zeroes.0>
   180c6:	97de                	c.add	a5,s7
   180c8:	00d33023          	sd	a3,0(t1)
   180cc:	01733423          	sd	s7,8(t1)
   180d0:	0007069b          	addiw	a3,a4,0
   180d4:	10e12423          	sw	a4,264(sp)
   180d8:	ea3e                	c.sdsp	a5,272(sp)
   180da:	471d                	c.li	a4,7
   180dc:	0341                	c.addi	t1,16
   180de:	f4d75163          	bge	a4,a3,17820 <_svfprintf_r+0x1f8>
   180e2:	0210                	c.addi4spn	a2,sp,256
   180e4:	85da                	c.mv	a1,s6
   180e6:	8562                	c.mv	a0,s8
   180e8:	00002097          	auipc	ra,0x2
   180ec:	7ee080e7          	jalr	ra,2030(ra) # 1a8d6 <__ssprint_r>
   180f0:	ed4d                	c.bnez	a0,181aa <_svfprintf_r+0xb82>
   180f2:	414d0d3b          	subw	s10,s10,s4
   180f6:	67d2                	c.ldsp	a5,272(sp)
   180f8:	18010313          	addi	t1,sp,384
   180fc:	f3a05663          	bge	zero,s10,17828 <_svfprintf_r+0x200>
   18100:	10812703          	lw	a4,264(sp)
   18104:	05aada63          	bge	s5,s10,18158 <_svfprintf_r+0xb30>
   18108:	4b9d                	c.li	s7,7
   1810a:	a021                	c.j	18112 <_svfprintf_r+0xaea>
   1810c:	3d41                	c.addiw	s10,-16
   1810e:	05aad563          	bge	s5,s10,18158 <_svfprintf_r+0xb30>
   18112:	0017069b          	addiw	a3,a4,1
   18116:	07c1                	c.addi	a5,16
   18118:	00006717          	auipc	a4,0x6
   1811c:	aa070713          	addi	a4,a4,-1376 # 1dbb8 <zeroes.0>
   18120:	00e33023          	sd	a4,0(t1)
   18124:	01533423          	sd	s5,8(t1)
   18128:	ea3e                	c.sdsp	a5,272(sp)
   1812a:	0006871b          	addiw	a4,a3,0
   1812e:	10d12423          	sw	a3,264(sp)
   18132:	0341                	c.addi	t1,16
   18134:	fcebdce3          	bge	s7,a4,1810c <_svfprintf_r+0xae4>
   18138:	0210                	c.addi4spn	a2,sp,256
   1813a:	85da                	c.mv	a1,s6
   1813c:	8562                	c.mv	a0,s8
   1813e:	00002097          	auipc	ra,0x2
   18142:	798080e7          	jalr	ra,1944(ra) # 1a8d6 <__ssprint_r>
   18146:	e135                	c.bnez	a0,181aa <_svfprintf_r+0xb82>
   18148:	3d41                	c.addiw	s10,-16
   1814a:	67d2                	c.ldsp	a5,272(sp)
   1814c:	10812703          	lw	a4,264(sp)
   18150:	18010313          	addi	t1,sp,384
   18154:	fbaacfe3          	blt	s5,s10,18112 <_svfprintf_r+0xaea>
   18158:	2705                	c.addiw	a4,1
   1815a:	00006697          	auipc	a3,0x6
   1815e:	a5e68693          	addi	a3,a3,-1442 # 1dbb8 <zeroes.0>
   18162:	97ea                	c.add	a5,s10
   18164:	00d33023          	sd	a3,0(t1)
   18168:	01a33423          	sd	s10,8(t1)
   1816c:	0007069b          	addiw	a3,a4,0
   18170:	10e12423          	sw	a4,264(sp)
   18174:	ea3e                	c.sdsp	a5,272(sp)
   18176:	471d                	c.li	a4,7
   18178:	0341                	c.addi	t1,16
   1817a:	ead75763          	bge	a4,a3,17828 <_svfprintf_r+0x200>
   1817e:	0210                	c.addi4spn	a2,sp,256
   18180:	85da                	c.mv	a1,s6
   18182:	8562                	c.mv	a0,s8
   18184:	00002097          	auipc	ra,0x2
   18188:	752080e7          	jalr	ra,1874(ra) # 1a8d6 <__ssprint_r>
   1818c:	ed19                	c.bnez	a0,181aa <_svfprintf_r+0xb82>
   1818e:	67d2                	c.ldsp	a5,272(sp)
   18190:	18010313          	addi	t1,sp,384
   18194:	e94ff06f          	jal	zero,17828 <_svfprintf_r+0x200>
   18198:	0210                	c.addi4spn	a2,sp,256
   1819a:	85da                	c.mv	a1,s6
   1819c:	8562                	c.mv	a0,s8
   1819e:	00002097          	auipc	ra,0x2
   181a2:	738080e7          	jalr	ra,1848(ra) # 1a8d6 <__ssprint_r>
   181a6:	ec050463          	beq	a0,zero,1786e <_svfprintf_r+0x246>
   181aa:	67a2                	c.ldsp	a5,8(sp)
   181ac:	ee078663          	beq	a5,zero,17898 <_svfprintf_r+0x270>
   181b0:	65a2                	c.ldsp	a1,8(sp)
   181b2:	8562                	c.mv	a0,s8
   181b4:	ffffb097          	auipc	ra,0xffffb
   181b8:	a34080e7          	jalr	ra,-1484(ra) # 12be8 <_free_r>
   181bc:	edcff06f          	jal	zero,17898 <_svfprintf_r+0x270>
   181c0:	10812703          	lw	a4,264(sp)
   181c4:	00006b97          	auipc	s7,0x6
   181c8:	9e4b8b93          	addi	s7,s7,-1564 # 1dba8 <blanks.1>
   181cc:	08dad163          	bge	s5,a3,1824e <_svfprintf_r+0xc26>
   181d0:	866e                	c.mv	a2,s11
   181d2:	e122                	c.sdsp	s0,128(sp)
   181d4:	8462                	c.mv	s0,s8
   181d6:	8c36                	c.mv	s8,a3
   181d8:	86de                	c.mv	a3,s7
   181da:	8dce                	c.mv	s11,s3
   181dc:	8bd2                	c.mv	s7,s4
   181de:	89a6                	c.mv	s3,s1
   181e0:	8a4a                	c.mv	s4,s2
   181e2:	84da                	c.mv	s1,s6
   181e4:	429d                	c.li	t0,7
   181e6:	f0fe                	c.sdsp	t6,96(sp)
   181e8:	f4fa                	c.sdsp	t5,104(sp)
   181ea:	8936                	c.mv	s2,a3
   181ec:	8b32                	c.mv	s6,a2
   181ee:	a021                	c.j	181f6 <_svfprintf_r+0xbce>
   181f0:	3c41                	c.addiw	s8,-16
   181f2:	058ad063          	bge	s5,s8,18232 <_svfprintf_r+0xc0a>
   181f6:	2705                	c.addiw	a4,1
   181f8:	07c1                	c.addi	a5,16
   181fa:	01233023          	sd	s2,0(t1)
   181fe:	01533423          	sd	s5,8(t1)
   18202:	ea3e                	c.sdsp	a5,272(sp)
   18204:	10e12423          	sw	a4,264(sp)
   18208:	0341                	c.addi	t1,16
   1820a:	fee2d3e3          	bge	t0,a4,181f0 <_svfprintf_r+0xbc8>
   1820e:	0210                	c.addi4spn	a2,sp,256
   18210:	85a6                	c.mv	a1,s1
   18212:	8522                	c.mv	a0,s0
   18214:	00002097          	auipc	ra,0x2
   18218:	6c2080e7          	jalr	ra,1730(ra) # 1a8d6 <__ssprint_r>
   1821c:	7a051463          	bne	a0,zero,189c4 <_svfprintf_r+0x139c>
   18220:	3c41                	c.addiw	s8,-16
   18222:	67d2                	c.ldsp	a5,272(sp)
   18224:	10812703          	lw	a4,264(sp)
   18228:	18010313          	addi	t1,sp,384
   1822c:	429d                	c.li	t0,7
   1822e:	fd8ac4e3          	blt	s5,s8,181f6 <_svfprintf_r+0xbce>
   18232:	86e2                	c.mv	a3,s8
   18234:	7f86                	c.ldsp	t6,96(sp)
   18236:	8c22                	c.mv	s8,s0
   18238:	7f26                	c.ldsp	t5,104(sp)
   1823a:	640a                	c.ldsp	s0,128(sp)
   1823c:	85da                	c.mv	a1,s6
   1823e:	864a                	c.mv	a2,s2
   18240:	8b26                	c.mv	s6,s1
   18242:	8952                	c.mv	s2,s4
   18244:	84ce                	c.mv	s1,s3
   18246:	8a5e                	c.mv	s4,s7
   18248:	89ee                	c.mv	s3,s11
   1824a:	8bb2                	c.mv	s7,a2
   1824c:	8dae                	c.mv	s11,a1
   1824e:	2705                	c.addiw	a4,1
   18250:	97b6                	c.add	a5,a3
   18252:	00d33423          	sd	a3,8(t1)
   18256:	01733023          	sd	s7,0(t1)
   1825a:	0007069b          	addiw	a3,a4,0
   1825e:	10e12423          	sw	a4,264(sp)
   18262:	ea3e                	c.sdsp	a5,272(sp)
   18264:	471d                	c.li	a4,7
   18266:	0341                	c.addi	t1,16
   18268:	d4d75c63          	bge	a4,a3,177c0 <_svfprintf_r+0x198>
   1826c:	0210                	c.addi4spn	a2,sp,256
   1826e:	85da                	c.mv	a1,s6
   18270:	8562                	c.mv	a0,s8
   18272:	f4fa                	c.sdsp	t5,104(sp)
   18274:	f0fe                	c.sdsp	t6,96(sp)
   18276:	00002097          	auipc	ra,0x2
   1827a:	660080e7          	jalr	ra,1632(ra) # 1a8d6 <__ssprint_r>
   1827e:	f515                	c.bnez	a0,181aa <_svfprintf_r+0xb82>
   18280:	67d2                	c.ldsp	a5,272(sp)
   18282:	7f26                	c.ldsp	t5,104(sp)
   18284:	7f86                	c.ldsp	t6,96(sp)
   18286:	18010313          	addi	t1,sp,384
   1828a:	d36ff06f          	jal	zero,177c0 <_svfprintf_r+0x198>
   1828e:	0210                	c.addi4spn	a2,sp,256
   18290:	85da                	c.mv	a1,s6
   18292:	8562                	c.mv	a0,s8
   18294:	f0fa                	c.sdsp	t5,96(sp)
   18296:	00002097          	auipc	ra,0x2
   1829a:	640080e7          	jalr	ra,1600(ra) # 1a8d6 <__ssprint_r>
   1829e:	f511                	c.bnez	a0,181aa <_svfprintf_r+0xb82>
   182a0:	67d2                	c.ldsp	a5,272(sp)
   182a2:	7f06                	c.ldsp	t5,96(sp)
   182a4:	18010313          	addi	t1,sp,384
   182a8:	d70ff06f          	jal	zero,17818 <_svfprintf_r+0x1f0>
   182ac:	10812703          	lw	a4,264(sp)
   182b0:	00006b97          	auipc	s7,0x6
   182b4:	8f8b8b93          	addi	s7,s7,-1800 # 1dba8 <blanks.1>
   182b8:	4a1d                	c.li	s4,7
   182ba:	009ac663          	blt	s5,s1,182c6 <_svfprintf_r+0xc9e>
   182be:	a089                	c.j	18300 <_svfprintf_r+0xcd8>
   182c0:	34c1                	c.addiw	s1,-16
   182c2:	029adf63          	bge	s5,s1,18300 <_svfprintf_r+0xcd8>
   182c6:	2705                	c.addiw	a4,1
   182c8:	07c1                	c.addi	a5,16
   182ca:	01733023          	sd	s7,0(t1)
   182ce:	01533423          	sd	s5,8(t1)
   182d2:	ea3e                	c.sdsp	a5,272(sp)
   182d4:	10e12423          	sw	a4,264(sp)
   182d8:	0341                	c.addi	t1,16
   182da:	feea53e3          	bge	s4,a4,182c0 <_svfprintf_r+0xc98>
   182de:	0210                	c.addi4spn	a2,sp,256
   182e0:	85da                	c.mv	a1,s6
   182e2:	8562                	c.mv	a0,s8
   182e4:	00002097          	auipc	ra,0x2
   182e8:	5f2080e7          	jalr	ra,1522(ra) # 1a8d6 <__ssprint_r>
   182ec:	ea051fe3          	bne	a0,zero,181aa <_svfprintf_r+0xb82>
   182f0:	34c1                	c.addiw	s1,-16
   182f2:	67d2                	c.ldsp	a5,272(sp)
   182f4:	10812703          	lw	a4,264(sp)
   182f8:	18010313          	addi	t1,sp,384
   182fc:	fc9ac5e3          	blt	s5,s1,182c6 <_svfprintf_r+0xc9e>
   18300:	0017069b          	addiw	a3,a4,1
   18304:	97a6                	c.add	a5,s1
   18306:	01733023          	sd	s7,0(t1)
   1830a:	00933423          	sd	s1,8(t1)
   1830e:	ea3e                	c.sdsp	a5,272(sp)
   18310:	10d12423          	sw	a3,264(sp)
   18314:	471d                	c.li	a4,7
   18316:	d4d75363          	bge	a4,a3,1785c <_svfprintf_r+0x234>
   1831a:	0210                	c.addi4spn	a2,sp,256
   1831c:	85da                	c.mv	a1,s6
   1831e:	8562                	c.mv	a0,s8
   18320:	00002097          	auipc	ra,0x2
   18324:	5b6080e7          	jalr	ra,1462(ra) # 1a8d6 <__ssprint_r>
   18328:	e80511e3          	bne	a0,zero,181aa <_svfprintf_r+0xb82>
   1832c:	67d2                	c.ldsp	a5,272(sp)
   1832e:	d2eff06f          	jal	zero,1785c <_svfprintf_r+0x234>
   18332:	466e                	c.lwsp	a2,216(sp)
   18334:	5ec05563          	bge	zero,a2,1891e <_svfprintf_r+0x12f6>
   18338:	6762                	c.ldsp	a4,24(sp)
   1833a:	7682                	c.ldsp	a3,32(sp)
   1833c:	00070a1b          	addiw	s4,a4,0
   18340:	2ae6c963          	blt	a3,a4,185f2 <_svfprintf_r+0xfca>
   18344:	03405263          	bge	zero,s4,18368 <_svfprintf_r+0xd40>
   18348:	10812703          	lw	a4,264(sp)
   1834c:	97d2                	c.add	a5,s4
   1834e:	01b33023          	sd	s11,0(t1)
   18352:	0017069b          	addiw	a3,a4,1
   18356:	01433423          	sd	s4,8(t1)
   1835a:	ea3e                	c.sdsp	a5,272(sp)
   1835c:	10d12423          	sw	a3,264(sp)
   18360:	471d                	c.li	a4,7
   18362:	0341                	c.addi	t1,16
   18364:	0ed740e3          	blt	a4,a3,18c44 <_svfprintf_r+0x161c>
   18368:	fffa4713          	xori	a4,s4,-1
   1836c:	977d                	c.srai	a4,0x3f
   1836e:	00ea7a33          	and	s4,s4,a4
   18372:	6762                	c.ldsp	a4,24(sp)
   18374:	41470a3b          	subw	s4,a4,s4
   18378:	39404063          	blt	zero,s4,186f8 <_svfprintf_r+0x10d0>
   1837c:	66e2                	c.ldsp	a3,24(sp)
   1837e:	4004f713          	andi	a4,s1,1024
   18382:	00dd8d33          	add	s10,s11,a3
   18386:	3c071463          	bne	a4,zero,1874e <_svfprintf_r+0x1126>
   1838a:	476e                	c.lwsp	a4,216(sp)
   1838c:	7682                	c.ldsp	a3,32(sp)
   1838e:	00d74663          	blt	a4,a3,1839a <_svfprintf_r+0xd72>
   18392:	0014f693          	andi	a3,s1,1
   18396:	0c0687e3          	beq	a3,zero,18c64 <_svfprintf_r+0x163c>
   1839a:	6686                	c.ldsp	a3,64(sp)
   1839c:	7662                	c.ldsp	a2,56(sp)
   1839e:	0341                	c.addi	t1,16
   183a0:	fed33823          	sd	a3,-16(t1)
   183a4:	10812683          	lw	a3,264(sp)
   183a8:	97b2                	c.add	a5,a2
   183aa:	fec33c23          	sd	a2,-8(t1)
   183ae:	2685                	c.addiw	a3,1
   183b0:	0006861b          	addiw	a2,a3,0
   183b4:	10d12423          	sw	a3,264(sp)
   183b8:	ea3e                	c.sdsp	a5,272(sp)
   183ba:	469d                	c.li	a3,7
   183bc:	26c6cce3          	blt	a3,a2,18e34 <_svfprintf_r+0x180c>
   183c0:	7682                	c.ldsp	a3,32(sp)
   183c2:	40e6863b          	subw	a2,a3,a4
   183c6:	96ee                	c.add	a3,s11
   183c8:	41a686bb          	subw	a3,a3,s10
   183cc:	8732                	c.mv	a4,a2
   183ce:	00c6d363          	bge	a3,a2,183d4 <_svfprintf_r+0xdac>
   183d2:	8736                	c.mv	a4,a3
   183d4:	00070c9b          	addiw	s9,a4,0
   183d8:	03905263          	bge	zero,s9,183fc <_svfprintf_r+0xdd4>
   183dc:	10812683          	lw	a3,264(sp)
   183e0:	97e6                	c.add	a5,s9
   183e2:	01a33023          	sd	s10,0(t1)
   183e6:	0016859b          	addiw	a1,a3,1
   183ea:	01933423          	sd	s9,8(t1)
   183ee:	ea3e                	c.sdsp	a5,272(sp)
   183f0:	10b12423          	sw	a1,264(sp)
   183f4:	469d                	c.li	a3,7
   183f6:	0341                	c.addi	t1,16
   183f8:	2cb6c3e3          	blt	a3,a1,18ebe <_svfprintf_r+0x1896>
   183fc:	fffcca13          	xori	s4,s9,-1
   18400:	43fa5a13          	srai	s4,s4,0x3f
   18404:	014cfa33          	and	s4,s9,s4
   18408:	41460a3b          	subw	s4,a2,s4
   1840c:	c5405263          	bge	zero,s4,17850 <_svfprintf_r+0x228>
   18410:	10812703          	lw	a4,264(sp)
   18414:	5f4ad963          	bge	s5,s4,18a06 <_svfprintf_r+0x13de>
   18418:	4b9d                	c.li	s7,7
   1841a:	a021                	c.j	18422 <_svfprintf_r+0xdfa>
   1841c:	3a41                	c.addiw	s4,-16
   1841e:	5f4ad463          	bge	s5,s4,18a06 <_svfprintf_r+0x13de>
   18422:	0017069b          	addiw	a3,a4,1
   18426:	07c1                	c.addi	a5,16
   18428:	00005717          	auipc	a4,0x5
   1842c:	79070713          	addi	a4,a4,1936 # 1dbb8 <zeroes.0>
   18430:	00e33023          	sd	a4,0(t1)
   18434:	01533423          	sd	s5,8(t1)
   18438:	ea3e                	c.sdsp	a5,272(sp)
   1843a:	0006871b          	addiw	a4,a3,0
   1843e:	10d12423          	sw	a3,264(sp)
   18442:	0341                	c.addi	t1,16
   18444:	fcebdce3          	bge	s7,a4,1841c <_svfprintf_r+0xdf4>
   18448:	0210                	c.addi4spn	a2,sp,256
   1844a:	85da                	c.mv	a1,s6
   1844c:	8562                	c.mv	a0,s8
   1844e:	00002097          	auipc	ra,0x2
   18452:	488080e7          	jalr	ra,1160(ra) # 1a8d6 <__ssprint_r>
   18456:	d4051ae3          	bne	a0,zero,181aa <_svfprintf_r+0xb82>
   1845a:	67d2                	c.ldsp	a5,272(sp)
   1845c:	10812703          	lw	a4,264(sp)
   18460:	18010313          	addi	t1,sp,384
   18464:	bf65                	c.j	1841c <_svfprintf_r+0xdf4>
   18466:	0014f513          	andi	a0,s1,1
   1846a:	ee051863          	bne	a0,zero,17b5a <_svfprintf_r+0x532>
   1846e:	00b33423          	sd	a1,8(t1)
   18472:	ea5e                	c.sdsp	s7,272(sp)
   18474:	10e12423          	sw	a4,264(sp)
   18478:	469d                	c.li	a3,7
   1847a:	40e6c763          	blt	a3,a4,18888 <_svfprintf_r+0x1260>
   1847e:	2609                	c.addiw	a2,2
   18480:	02030313          	addi	t1,t1,32
   18484:	f58ff06f          	jal	zero,17bdc <_svfprintf_r+0x5b4>
   18488:	a40d1de3          	bne	s10,zero,17ee2 <_svfprintf_r+0x8ba>
   1848c:	84de                	c.mv	s1,s7
   1848e:	4d01                	c.li	s10,0
   18490:	4a01                	c.li	s4,0
   18492:	17c10d93          	addi	s11,sp,380
   18496:	b091                	c.j	17cda <_svfprintf_r+0x6b2>
   18498:	f5905263          	bge	zero,s9,17bdc <_svfprintf_r+0x5b4>
   1849c:	6b9adfe3          	bge	s5,s9,1935a <_svfprintf_r+0x1d32>
   184a0:	4d9d                	c.li	s11,7
   184a2:	a031                	c.j	184ae <_svfprintf_r+0xe86>
   184a4:	3cc1                	c.addiw	s9,-16
   184a6:	679add63          	bge	s5,s9,18b20 <_svfprintf_r+0x14f8>
   184aa:	001d089b          	addiw	a7,s10,1
   184ae:	0bc1                	c.addi	s7,16
   184b0:	00005797          	auipc	a5,0x5
   184b4:	70878793          	addi	a5,a5,1800 # 1dbb8 <zeroes.0>
   184b8:	00fa3023          	sd	a5,0(s4)
   184bc:	015a3423          	sd	s5,8(s4)
   184c0:	ea5e                	c.sdsp	s7,272(sp)
   184c2:	00088d1b          	addiw	s10,a7,0
   184c6:	11112423          	sw	a7,264(sp)
   184ca:	0a41                	c.addi	s4,16
   184cc:	fdaddce3          	bge	s11,s10,184a4 <_svfprintf_r+0xe7c>
   184d0:	0210                	c.addi4spn	a2,sp,256
   184d2:	85da                	c.mv	a1,s6
   184d4:	8562                	c.mv	a0,s8
   184d6:	00002097          	auipc	ra,0x2
   184da:	400080e7          	jalr	ra,1024(ra) # 1a8d6 <__ssprint_r>
   184de:	cc0516e3          	bne	a0,zero,181aa <_svfprintf_r+0xb82>
   184e2:	6bd2                	c.ldsp	s7,272(sp)
   184e4:	10812d03          	lw	s10,264(sp)
   184e8:	18010a13          	addi	s4,sp,384
   184ec:	bf65                	c.j	184a4 <_svfprintf_r+0xe7c>
   184ee:	0104f793          	andi	a5,s1,16
   184f2:	e7e9                	c.bnez	a5,185bc <_svfprintf_r+0xf94>
   184f4:	0404f793          	andi	a5,s1,64
   184f8:	66078463          	beq	a5,zero,18b60 <_svfprintf_r+0x1538>
   184fc:	67c2                	c.ldsp	a5,16(sp)
   184fe:	00079983          	lh	s3,0(a5)
   18502:	87ce                	c.mv	a5,s3
   18504:	9c07d2e3          	bge	a5,zero,17ec8 <_svfprintf_r+0x8a0>
   18508:	02d00793          	addi	a5,zero,45
   1850c:	0cf107a3          	sb	a5,207(sp)
   18510:	413009b3          	sub	s3,zero,s3
   18514:	e83a                	c.sdsp	a4,16(sp)
   18516:	8ba6                	c.mv	s7,s1
   18518:	4785                	c.li	a5,1
   1851a:	f9cff06f          	jal	zero,17cb6 <_svfprintf_r+0x68e>
   1851e:	0104f793          	andi	a5,s1,16
   18522:	e3f9                	c.bnez	a5,185e8 <_svfprintf_r+0xfc0>
   18524:	66c2                	c.ldsp	a3,16(sp)
   18526:	0404f793          	andi	a5,s1,64
   1852a:	0006a983          	lw	s3,0(a3)
   1852e:	64078363          	beq	a5,zero,18b74 <_svfprintf_r+0x154c>
   18532:	19c2                	c.slli	s3,0x30
   18534:	0309d993          	srli	s3,s3,0x30
   18538:	f6eff06f          	jal	zero,17ca6 <_svfprintf_r+0x67e>
   1853c:	010bf793          	andi	a5,s7,16
   18540:	efc9                	c.bnez	a5,185da <_svfprintf_r+0xfb2>
   18542:	66c2                	c.ldsp	a3,16(sp)
   18544:	040bf793          	andi	a5,s7,64
   18548:	0006a983          	lw	s3,0(a3)
   1854c:	62078c63          	beq	a5,zero,18b84 <_svfprintf_r+0x155c>
   18550:	19c2                	c.slli	s3,0x30
   18552:	0309d993          	srli	s3,s3,0x30
   18556:	e83a                	c.sdsp	a4,16(sp)
   18558:	4785                	c.li	a5,1
   1855a:	f58ff06f          	jal	zero,17cb2 <_svfprintf_r+0x68a>
   1855e:	0210                	c.addi4spn	a2,sp,256
   18560:	85da                	c.mv	a1,s6
   18562:	8562                	c.mv	a0,s8
   18564:	00002097          	auipc	ra,0x2
   18568:	372080e7          	jalr	ra,882(ra) # 1a8d6 <__ssprint_r>
   1856c:	c2051fe3          	bne	a0,zero,181aa <_svfprintf_r+0xb82>
   18570:	6bd2                	c.ldsp	s7,272(sp)
   18572:	10812703          	lw	a4,264(sp)
   18576:	18010a13          	addi	s4,sp,384
   1857a:	df2ff06f          	jal	zero,17b6c <_svfprintf_r+0x544>
   1857e:	0210                	c.addi4spn	a2,sp,256
   18580:	85da                	c.mv	a1,s6
   18582:	8562                	c.mv	a0,s8
   18584:	00002097          	auipc	ra,0x2
   18588:	352080e7          	jalr	ra,850(ra) # 1a8d6 <__ssprint_r>
   1858c:	c0051fe3          	bne	a0,zero,181aa <_svfprintf_r+0xb82>
   18590:	6bd2                	c.ldsp	s7,272(sp)
   18592:	10812d03          	lw	s10,264(sp)
   18596:	18010a13          	addi	s4,sp,384
   1859a:	df2ff06f          	jal	zero,17b8c <_svfprintf_r+0x564>
   1859e:	0014f713          	andi	a4,s1,1
   185a2:	aa070763          	beq	a4,zero,17850 <_svfprintf_r+0x228>
   185a6:	bacd                	c.j	17f98 <_svfprintf_r+0x970>
   185a8:	835e                	c.mv	t1,s7
   185aa:	b221                	c.j	17eb2 <_svfprintf_r+0x88a>
   185ac:	03000793          	addi	a5,zero,48
   185b0:	16f10da3          	sb	a5,379(sp)
   185b4:	17b10d93          	addi	s11,sp,379
   185b8:	f22ff06f          	jal	zero,17cda <_svfprintf_r+0x6b2>
   185bc:	67c2                	c.ldsp	a5,16(sp)
   185be:	639c                	c.ld	a5,0(a5)
   185c0:	89be                	c.mv	s3,a5
   185c2:	b209                	c.j	17ec4 <_svfprintf_r+0x89c>
   185c4:	67c2                	c.ldsp	a5,16(sp)
   185c6:	07bd                	c.addi	a5,15
   185c8:	9bc1                	c.andi	a5,-16
   185ca:	6398                	c.ld	a4,0(a5)
   185cc:	6794                	c.ld	a3,8(a5)
   185ce:	07c1                	c.addi	a5,16
   185d0:	e83e                	c.sdsp	a5,16(sp)
   185d2:	f9ba                	c.sdsp	a4,240(sp)
   185d4:	fdb6                	c.sdsp	a3,248(sp)
   185d6:	b5eff06f          	jal	zero,17934 <_svfprintf_r+0x30c>
   185da:	67c2                	c.ldsp	a5,16(sp)
   185dc:	e83a                	c.sdsp	a4,16(sp)
   185de:	0007b983          	ld	s3,0(a5)
   185e2:	4785                	c.li	a5,1
   185e4:	eceff06f          	jal	zero,17cb2 <_svfprintf_r+0x68a>
   185e8:	67c2                	c.ldsp	a5,16(sp)
   185ea:	0007b983          	ld	s3,0(a5)
   185ee:	eb8ff06f          	jal	zero,17ca6 <_svfprintf_r+0x67e>
   185f2:	00068a1b          	addiw	s4,a3,0
   185f6:	d54049e3          	blt	zero,s4,18348 <_svfprintf_r+0xd20>
   185fa:	b3bd                	c.j	18368 <_svfprintf_r+0xd40>
   185fc:	835e                	c.mv	t1,s7
   185fe:	8ba6                	c.mv	s7,s1
   18600:	fa0ff06f          	jal	zero,17da0 <_svfprintf_r+0x778>
   18604:	00005797          	auipc	a5,0x5
   18608:	cdc78793          	addi	a5,a5,-804 # 1d2e0 <__clzdi2+0xc8>
   1860c:	835e                	c.mv	t1,s7
   1860e:	e4be                	c.sdsp	a5,72(sp)
   18610:	66c2                	c.ldsp	a3,16(sp)
   18612:	0204f793          	andi	a5,s1,32
   18616:	00868713          	addi	a4,a3,8
   1861a:	24078f63          	beq	a5,zero,18878 <_svfprintf_r+0x1250>
   1861e:	0006b983          	ld	s3,0(a3)
   18622:	0014f793          	andi	a5,s1,1
   18626:	cf81                	c.beqz	a5,1863e <_svfprintf_r+0x1016>
   18628:	00098b63          	beq	s3,zero,1863e <_svfprintf_r+0x1016>
   1862c:	0024e493          	ori	s1,s1,2
   18630:	03000793          	addi	a5,zero,48
   18634:	0cf10823          	sb	a5,208(sp)
   18638:	0d9108a3          	sb	s9,209(sp)
   1863c:	2481                	c.addiw	s1,0
   1863e:	bff4f493          	andi	s1,s1,-1025
   18642:	00048b9b          	addiw	s7,s1,0
   18646:	e83a                	c.sdsp	a4,16(sp)
   18648:	4789                	c.li	a5,2
   1864a:	e68ff06f          	jal	zero,17cb2 <_svfprintf_r+0x68a>
   1864e:	2004e493          	ori	s1,s1,512
   18652:	00144e03          	lbu	t3,1(s0)
   18656:	2481                	c.addiw	s1,0
   18658:	0405                	c.addi	s0,1
   1865a:	8c8ff06f          	jal	zero,17722 <_svfprintf_r+0xfa>
   1865e:	0210                	c.addi4spn	a2,sp,256
   18660:	85da                	c.mv	a1,s6
   18662:	8562                	c.mv	a0,s8
   18664:	00002097          	auipc	ra,0x2
   18668:	272080e7          	jalr	ra,626(ra) # 1a8d6 <__ssprint_r>
   1866c:	b2051fe3          	bne	a0,zero,181aa <_svfprintf_r+0xb82>
   18670:	67d2                	c.ldsp	a5,272(sp)
   18672:	18010313          	addi	t1,sp,384
   18676:	b2a1                	c.j	17fbe <_svfprintf_r+0x996>
   18678:	835e                	c.mv	t1,s7
   1867a:	e1aff06f          	jal	zero,17c94 <_svfprintf_r+0x66c>
   1867e:	00005797          	auipc	a5,0x5
   18682:	c4a78793          	addi	a5,a5,-950 # 1d2c8 <__clzdi2+0xb0>
   18686:	835e                	c.mv	t1,s7
   18688:	e4be                	c.sdsp	a5,72(sp)
   1868a:	b759                	c.j	18610 <_svfprintf_r+0xfe8>
   1868c:	0204e493          	ori	s1,s1,32
   18690:	00144e03          	lbu	t3,1(s0)
   18694:	2481                	c.addiw	s1,0
   18696:	0405                	c.addi	s0,1
   18698:	88aff06f          	jal	zero,17722 <_svfprintf_r+0xfa>
   1869c:	04000593          	addi	a1,zero,64
   186a0:	8562                	c.mv	a0,s8
   186a2:	ffffd097          	auipc	ra,0xffffd
   186a6:	0ae080e7          	jalr	ra,174(ra) # 15750 <_malloc_r>
   186aa:	00ab3023          	sd	a0,0(s6)
   186ae:	00ab3c23          	sd	a0,24(s6)
   186b2:	4e0505e3          	beq	a0,zero,1939c <_svfprintf_r+0x1d74>
   186b6:	04000793          	addi	a5,zero,64
   186ba:	02fb2023          	sw	a5,32(s6)
   186be:	fdbfe06f          	jal	zero,17698 <_svfprintf_r+0x70>
   186c2:	856e                	c.mv	a0,s11
   186c4:	f09a                	c.sdsp	t1,96(sp)
   186c6:	ffff8097          	auipc	ra,0xffff8
   186ca:	e04080e7          	jalr	ra,-508(ra) # 104ca <strlen>
   186ce:	00050a1b          	addiw	s4,a0,0
   186d2:	0cf14783          	lbu	a5,207(sp)
   186d6:	fffa4993          	xori	s3,s4,-1
   186da:	43f9d993          	srai	s3,s3,0x3f
   186de:	e85e                	c.sdsp	s7,16(sp)
   186e0:	e402                	c.sdsp	zero,8(sp)
   186e2:	f802                	c.sdsp	zero,48(sp)
   186e4:	f402                	c.sdsp	zero,40(sp)
   186e6:	ec02                	c.sdsp	zero,24(sp)
   186e8:	7306                	c.ldsp	t1,96(sp)
   186ea:	0149f9b3          	and	s3,s3,s4
   186ee:	4d01                	c.li	s10,0
   186f0:	d8079c63          	bne	a5,zero,17c88 <_svfprintf_r+0x660>
   186f4:	8b0ff06f          	jal	zero,177a4 <_svfprintf_r+0x17c>
   186f8:	10812703          	lw	a4,264(sp)
   186fc:	4d4ad263          	bge	s5,s4,18bc0 <_svfprintf_r+0x1598>
   18700:	4b9d                	c.li	s7,7
   18702:	a021                	c.j	1870a <_svfprintf_r+0x10e2>
   18704:	3a41                	c.addiw	s4,-16
   18706:	4b4add63          	bge	s5,s4,18bc0 <_svfprintf_r+0x1598>
   1870a:	0017069b          	addiw	a3,a4,1
   1870e:	07c1                	c.addi	a5,16
   18710:	00005717          	auipc	a4,0x5
   18714:	4a870713          	addi	a4,a4,1192 # 1dbb8 <zeroes.0>
   18718:	00e33023          	sd	a4,0(t1)
   1871c:	01533423          	sd	s5,8(t1)
   18720:	ea3e                	c.sdsp	a5,272(sp)
   18722:	0006871b          	addiw	a4,a3,0
   18726:	10d12423          	sw	a3,264(sp)
   1872a:	0341                	c.addi	t1,16
   1872c:	fcebdce3          	bge	s7,a4,18704 <_svfprintf_r+0x10dc>
   18730:	0210                	c.addi4spn	a2,sp,256
   18732:	85da                	c.mv	a1,s6
   18734:	8562                	c.mv	a0,s8
   18736:	00002097          	auipc	ra,0x2
   1873a:	1a0080e7          	jalr	ra,416(ra) # 1a8d6 <__ssprint_r>
   1873e:	a60516e3          	bne	a0,zero,181aa <_svfprintf_r+0xb82>
   18742:	67d2                	c.ldsp	a5,272(sp)
   18744:	10812703          	lw	a4,264(sp)
   18748:	18010313          	addi	t1,sp,384
   1874c:	bf65                	c.j	18704 <_svfprintf_r+0x10dc>
   1874e:	7702                	c.ldsp	a4,32(sp)
   18750:	7ca2                	c.ldsp	s9,40(sp)
   18752:	ec22                	c.sdsp	s0,24(sp)
   18754:	f0a6                	c.sdsp	s1,96(sp)
   18756:	f4ca                	c.sdsp	s2,104(sp)
   18758:	74c2                	c.ldsp	s1,48(sp)
   1875a:	f44e                	c.sdsp	s3,40(sp)
   1875c:	f86e                	c.sdsp	s11,48(sp)
   1875e:	6466                	c.ldsp	s0,88(sp)
   18760:	7946                	c.ldsp	s2,112(sp)
   18762:	79e6                	c.ldsp	s3,120(sp)
   18764:	4b9d                	c.li	s7,7
   18766:	00ed8a33          	add	s4,s11,a4
   1876a:	080c8163          	beq	s9,zero,187ec <_svfprintf_r+0x11c4>
   1876e:	e0c9                	c.bnez	s1,187f0 <_svfprintf_r+0x11c8>
   18770:	147d                	c.addi	s0,-1
   18772:	3cfd                	c.addiw	s9,-1
   18774:	10812703          	lw	a4,264(sp)
   18778:	97ca                	c.add	a5,s2
   1877a:	01333023          	sd	s3,0(t1)
   1877e:	0017069b          	addiw	a3,a4,1
   18782:	01233423          	sd	s2,8(t1)
   18786:	ea3e                	c.sdsp	a5,272(sp)
   18788:	10d12423          	sw	a3,264(sp)
   1878c:	0341                	c.addi	t1,16
   1878e:	12dbc063          	blt	s7,a3,188ae <_svfprintf_r+0x1286>
   18792:	00044603          	lbu	a2,0(s0)
   18796:	41aa053b          	subw	a0,s4,s10
   1879a:	0006071b          	addiw	a4,a2,0
   1879e:	86ba                	c.mv	a3,a4
   187a0:	00e55363          	bge	a0,a4,187a6 <_svfprintf_r+0x117e>
   187a4:	86aa                	c.mv	a3,a0
   187a6:	00068d9b          	addiw	s11,a3,0
   187aa:	03b05563          	bge	zero,s11,187d4 <_svfprintf_r+0x11ac>
   187ae:	10812703          	lw	a4,264(sp)
   187b2:	97ee                	c.add	a5,s11
   187b4:	01a33023          	sd	s10,0(t1)
   187b8:	0017061b          	addiw	a2,a4,1
   187bc:	01b33423          	sd	s11,8(t1)
   187c0:	ea3e                	c.sdsp	a5,272(sp)
   187c2:	10c12423          	sw	a2,264(sp)
   187c6:	24cbcb63          	blt	s7,a2,18a1c <_svfprintf_r+0x13f4>
   187ca:	00044603          	lbu	a2,0(s0)
   187ce:	0341                	c.addi	t1,16
   187d0:	0006071b          	addiw	a4,a2,0
   187d4:	fffdc513          	xori	a0,s11,-1
   187d8:	957d                	c.srai	a0,0x3f
   187da:	00adf6b3          	and	a3,s11,a0
   187de:	40d70dbb          	subw	s11,a4,a3
   187e2:	01b04963          	blt	zero,s11,187f4 <_svfprintf_r+0x11cc>
   187e6:	9d32                	c.add	s10,a2
   187e8:	f80c93e3          	bne	s9,zero,1876e <_svfprintf_r+0x1146>
   187ec:	50048a63          	beq	s1,zero,18d00 <_svfprintf_r+0x16d8>
   187f0:	34fd                	c.addiw	s1,-1
   187f2:	b749                	c.j	18774 <_svfprintf_r+0x114c>
   187f4:	10812683          	lw	a3,264(sp)
   187f8:	01bac663          	blt	s5,s11,18804 <_svfprintf_r+0x11dc>
   187fc:	a881                	c.j	1884c <_svfprintf_r+0x1224>
   187fe:	3dc1                	c.addiw	s11,-16
   18800:	05bad663          	bge	s5,s11,1884c <_svfprintf_r+0x1224>
   18804:	0016871b          	addiw	a4,a3,1
   18808:	07c1                	c.addi	a5,16
   1880a:	00005697          	auipc	a3,0x5
   1880e:	3ae68693          	addi	a3,a3,942 # 1dbb8 <zeroes.0>
   18812:	00d33023          	sd	a3,0(t1)
   18816:	01533423          	sd	s5,8(t1)
   1881a:	ea3e                	c.sdsp	a5,272(sp)
   1881c:	0007069b          	addiw	a3,a4,0
   18820:	10e12423          	sw	a4,264(sp)
   18824:	0341                	c.addi	t1,16
   18826:	fcdbdce3          	bge	s7,a3,187fe <_svfprintf_r+0x11d6>
   1882a:	0210                	c.addi4spn	a2,sp,256
   1882c:	85da                	c.mv	a1,s6
   1882e:	8562                	c.mv	a0,s8
   18830:	00002097          	auipc	ra,0x2
   18834:	0a6080e7          	jalr	ra,166(ra) # 1a8d6 <__ssprint_r>
   18838:	960519e3          	bne	a0,zero,181aa <_svfprintf_r+0xb82>
   1883c:	3dc1                	c.addiw	s11,-16
   1883e:	67d2                	c.ldsp	a5,272(sp)
   18840:	10812683          	lw	a3,264(sp)
   18844:	18010313          	addi	t1,sp,384
   18848:	fbbacee3          	blt	s5,s11,18804 <_svfprintf_r+0x11dc>
   1884c:	2685                	c.addiw	a3,1
   1884e:	00005717          	auipc	a4,0x5
   18852:	36a70713          	addi	a4,a4,874 # 1dbb8 <zeroes.0>
   18856:	97ee                	c.add	a5,s11
   18858:	00e33023          	sd	a4,0(t1)
   1885c:	01b33423          	sd	s11,8(t1)
   18860:	ea3e                	c.sdsp	a5,272(sp)
   18862:	0006871b          	addiw	a4,a3,0
   18866:	10d12423          	sw	a3,264(sp)
   1886a:	50ebcb63          	blt	s7,a4,18d80 <_svfprintf_r+0x1758>
   1886e:	00044603          	lbu	a2,0(s0)
   18872:	0341                	c.addi	t1,16
   18874:	9d32                	c.add	s10,a2
   18876:	bf8d                	c.j	187e8 <_svfprintf_r+0x11c0>
   18878:	0104f793          	andi	a5,s1,16
   1887c:	14078863          	beq	a5,zero,189cc <_svfprintf_r+0x13a4>
   18880:	67c2                	c.ldsp	a5,16(sp)
   18882:	0007b983          	ld	s3,0(a5)
   18886:	bb71                	c.j	18622 <_svfprintf_r+0xffa>
   18888:	0210                	c.addi4spn	a2,sp,256
   1888a:	85da                	c.mv	a1,s6
   1888c:	8562                	c.mv	a0,s8
   1888e:	00002097          	auipc	ra,0x2
   18892:	048080e7          	jalr	ra,72(ra) # 1a8d6 <__ssprint_r>
   18896:	90051ae3          	bne	a0,zero,181aa <_svfprintf_r+0xb82>
   1889a:	10812603          	lw	a2,264(sp)
   1889e:	6bd2                	c.ldsp	s7,272(sp)
   188a0:	19010313          	addi	t1,sp,400
   188a4:	2605                	c.addiw	a2,1
   188a6:	18010a13          	addi	s4,sp,384
   188aa:	b32ff06f          	jal	zero,17bdc <_svfprintf_r+0x5b4>
   188ae:	0210                	c.addi4spn	a2,sp,256
   188b0:	85da                	c.mv	a1,s6
   188b2:	8562                	c.mv	a0,s8
   188b4:	00002097          	auipc	ra,0x2
   188b8:	022080e7          	jalr	ra,34(ra) # 1a8d6 <__ssprint_r>
   188bc:	8e0517e3          	bne	a0,zero,181aa <_svfprintf_r+0xb82>
   188c0:	67d2                	c.ldsp	a5,272(sp)
   188c2:	18010313          	addi	t1,sp,384
   188c6:	b5f1                	c.j	18792 <_svfprintf_r+0x116a>
   188c8:	17c10a13          	addi	s4,sp,380
   188cc:	6866                	c.ldsp	a6,88(sp)
   188ce:	400bf713          	andi	a4,s7,1024
   188d2:	4581                	c.li	a1,0
   188d4:	8652                	c.mv	a2,s4
   188d6:	44a9                	c.li	s1,10
   188d8:	46a5                	c.li	a3,9
   188da:	0ff00893          	addi	a7,zero,255
   188de:	a039                	c.j	188ec <_svfprintf_r+0x12c4>
   188e0:	0299d7b3          	divu	a5,s3,s1
   188e4:	0336f663          	bgeu	a3,s3,18910 <_svfprintf_r+0x12e8>
   188e8:	89be                	c.mv	s3,a5
   188ea:	866e                	c.mv	a2,s11
   188ec:	fff60d93          	addi	s11,a2,-1
   188f0:	2585                	c.addiw	a1,1
   188f2:	0299f7b3          	remu	a5,s3,s1
   188f6:	0307879b          	addiw	a5,a5,48
   188fa:	fef60fa3          	sb	a5,-1(a2)
   188fe:	d36d                	c.beqz	a4,188e0 <_svfprintf_r+0x12b8>
   18900:	00084783          	lbu	a5,0(a6) # 7ff00000 <__BSS_END__+0x7fedfc80>
   18904:	fcf59ee3          	bne	a1,a5,188e0 <_svfprintf_r+0x12b8>
   18908:	fd178ce3          	beq	a5,a7,188e0 <_svfprintf_r+0x12b8>
   1890c:	2f36eb63          	bltu	a3,s3,18c02 <_svfprintf_r+0x15da>
   18910:	ecc2                	c.sdsp	a6,88(sp)
   18912:	f02e                	c.sdsp	a1,32(sp)
   18914:	41ba0a3b          	subw	s4,s4,s11
   18918:	84de                	c.mv	s1,s7
   1891a:	bc0ff06f          	jal	zero,17cda <_svfprintf_r+0x6b2>
   1891e:	10812703          	lw	a4,264(sp)
   18922:	00005697          	auipc	a3,0x5
   18926:	9de68693          	addi	a3,a3,-1570 # 1d300 <__clzdi2+0xe8>
   1892a:	00d33023          	sd	a3,0(t1)
   1892e:	2705                	c.addiw	a4,1
   18930:	4685                	c.li	a3,1
   18932:	0785                	c.addi	a5,1
   18934:	00d33423          	sd	a3,8(t1)
   18938:	10e12423          	sw	a4,264(sp)
   1893c:	0007069b          	addiw	a3,a4,0
   18940:	ea3e                	c.sdsp	a5,272(sp)
   18942:	471d                	c.li	a4,7
   18944:	0341                	c.addi	t1,16
   18946:	06d74163          	blt	a4,a3,189a8 <_svfprintf_r+0x1380>
   1894a:	14061a63          	bne	a2,zero,18a9e <_svfprintf_r+0x1476>
   1894e:	7682                	c.ldsp	a3,32(sp)
   18950:	0014f713          	andi	a4,s1,1
   18954:	8f55                	c.or	a4,a3
   18956:	e319                	c.bnez	a4,1895c <_svfprintf_r+0x1334>
   18958:	ef9fe06f          	jal	zero,17850 <_svfprintf_r+0x228>
   1895c:	6686                	c.ldsp	a3,64(sp)
   1895e:	7762                	c.ldsp	a4,56(sp)
   18960:	00d33023          	sd	a3,0(t1)
   18964:	10812683          	lw	a3,264(sp)
   18968:	97ba                	c.add	a5,a4
   1896a:	00e33423          	sd	a4,8(t1)
   1896e:	2685                	c.addiw	a3,1
   18970:	0006871b          	addiw	a4,a3,0
   18974:	10d12423          	sw	a3,264(sp)
   18978:	ea3e                	c.sdsp	a5,272(sp)
   1897a:	469d                	c.li	a3,7
   1897c:	34e6cd63          	blt	a3,a4,18cd6 <_svfprintf_r+0x16ae>
   18980:	0341                	c.addi	t1,16
   18982:	7682                	c.ldsp	a3,32(sp)
   18984:	2705                	c.addiw	a4,1
   18986:	01b33023          	sd	s11,0(t1)
   1898a:	97b6                	c.add	a5,a3
   1898c:	00d33423          	sd	a3,8(t1)
   18990:	0007069b          	addiw	a3,a4,0
   18994:	10e12423          	sw	a4,264(sp)
   18998:	ea3e                	c.sdsp	a5,272(sp)
   1899a:	471d                	c.li	a4,7
   1899c:	00d74463          	blt	a4,a3,189a4 <_svfprintf_r+0x137c>
   189a0:	eaffe06f          	jal	zero,1784e <_svfprintf_r+0x226>
   189a4:	a54ff06f          	jal	zero,17bf8 <_svfprintf_r+0x5d0>
   189a8:	0210                	c.addi4spn	a2,sp,256
   189aa:	85da                	c.mv	a1,s6
   189ac:	8562                	c.mv	a0,s8
   189ae:	00002097          	auipc	ra,0x2
   189b2:	f28080e7          	jalr	ra,-216(ra) # 1a8d6 <__ssprint_r>
   189b6:	fe051a63          	bne	a0,zero,181aa <_svfprintf_r+0xb82>
   189ba:	466e                	c.lwsp	a2,216(sp)
   189bc:	67d2                	c.ldsp	a5,272(sp)
   189be:	18010313          	addi	t1,sp,384
   189c2:	b761                	c.j	1894a <_svfprintf_r+0x1322>
   189c4:	8c22                	c.mv	s8,s0
   189c6:	8b26                	c.mv	s6,s1
   189c8:	fe2ff06f          	jal	zero,181aa <_svfprintf_r+0xb82>
   189cc:	66c2                	c.ldsp	a3,16(sp)
   189ce:	0404f793          	andi	a5,s1,64
   189d2:	0006a983          	lw	s3,0(a3)
   189d6:	16078e63          	beq	a5,zero,18b52 <_svfprintf_r+0x152a>
   189da:	19c2                	c.slli	s3,0x30
   189dc:	0309d993          	srli	s3,s3,0x30
   189e0:	b189                	c.j	18622 <_svfprintf_r+0xffa>
   189e2:	8ba6                	c.mv	s7,s1
   189e4:	e83a                	c.sdsp	a4,16(sp)
   189e6:	cf6ff06f          	jal	zero,17edc <_svfprintf_r+0x8b4>
   189ea:	0210                	c.addi4spn	a2,sp,256
   189ec:	85da                	c.mv	a1,s6
   189ee:	8562                	c.mv	a0,s8
   189f0:	00002097          	auipc	ra,0x2
   189f4:	ee6080e7          	jalr	ra,-282(ra) # 1a8d6 <__ssprint_r>
   189f8:	fa051963          	bne	a0,zero,181aa <_svfprintf_r+0xb82>
   189fc:	67d2                	c.ldsp	a5,272(sp)
   189fe:	18010313          	addi	t1,sp,384
   18a02:	d8eff06f          	jal	zero,17f90 <_svfprintf_r+0x968>
   18a06:	00005697          	auipc	a3,0x5
   18a0a:	1b268693          	addi	a3,a3,434 # 1dbb8 <zeroes.0>
   18a0e:	2705                	c.addiw	a4,1
   18a10:	97d2                	c.add	a5,s4
   18a12:	00d33023          	sd	a3,0(t1)
   18a16:	01433423          	sd	s4,8(t1)
   18a1a:	bf9d                	c.j	18990 <_svfprintf_r+0x1368>
   18a1c:	0210                	c.addi4spn	a2,sp,256
   18a1e:	85da                	c.mv	a1,s6
   18a20:	8562                	c.mv	a0,s8
   18a22:	00002097          	auipc	ra,0x2
   18a26:	eb4080e7          	jalr	ra,-332(ra) # 1a8d6 <__ssprint_r>
   18a2a:	f8051063          	bne	a0,zero,181aa <_svfprintf_r+0xb82>
   18a2e:	00044603          	lbu	a2,0(s0)
   18a32:	67d2                	c.ldsp	a5,272(sp)
   18a34:	18010313          	addi	t1,sp,384
   18a38:	0006071b          	addiw	a4,a2,0
   18a3c:	bb61                	c.j	187d4 <_svfprintf_r+0x11ac>
   18a3e:	754e                	c.ldsp	a0,240(sp)
   18a40:	75ee                	c.ldsp	a1,248(sp)
   18a42:	4601                	c.li	a2,0
   18a44:	4681                	c.li	a3,0
   18a46:	00003097          	auipc	ra,0x3
   18a4a:	504080e7          	jalr	ra,1284(ra) # 1bf4a <__letf2>
   18a4e:	6322                	c.ldsp	t1,8(sp)
   18a50:	40054163          	blt	a0,zero,18e52 <_svfprintf_r+0x182a>
   18a54:	0cf14783          	lbu	a5,207(sp)
   18a58:	04700713          	addi	a4,zero,71
   18a5c:	00005d97          	auipc	s11,0x5
   18a60:	84cd8d93          	addi	s11,s11,-1972 # 1d2a8 <__clzdi2+0x90>
   18a64:	1d974b63          	blt	a4,s9,18c3a <_svfprintf_r+0x1612>
   18a68:	f7f4f493          	andi	s1,s1,-129
   18a6c:	e402                	c.sdsp	zero,8(sp)
   18a6e:	f802                	c.sdsp	zero,48(sp)
   18a70:	f402                	c.sdsp	zero,40(sp)
   18a72:	ec02                	c.sdsp	zero,24(sp)
   18a74:	2481                	c.addiw	s1,0
   18a76:	498d                	c.li	s3,3
   18a78:	4a0d                	c.li	s4,3
   18a7a:	4d01                	c.li	s10,0
   18a7c:	a0079663          	bne	a5,zero,17c88 <_svfprintf_r+0x660>
   18a80:	d25fe06f          	jal	zero,177a4 <_svfprintf_r+0x17c>
   18a84:	4799                	c.li	a5,6
   18a86:	000d0a1b          	addiw	s4,s10,0
   18a8a:	1da7eb63          	bltu	a5,s10,18c60 <_svfprintf_r+0x1638>
   18a8e:	89d2                	c.mv	s3,s4
   18a90:	e85e                	c.sdsp	s7,16(sp)
   18a92:	00005d97          	auipc	s11,0x5
   18a96:	866d8d93          	addi	s11,s11,-1946 # 1d2f8 <__clzdi2+0xe0>
   18a9a:	d01fe06f          	jal	zero,1779a <_svfprintf_r+0x172>
   18a9e:	6686                	c.ldsp	a3,64(sp)
   18aa0:	7762                	c.ldsp	a4,56(sp)
   18aa2:	0341                	c.addi	t1,16
   18aa4:	fed33823          	sd	a3,-16(t1)
   18aa8:	10812683          	lw	a3,264(sp)
   18aac:	97ba                	c.add	a5,a4
   18aae:	fee33c23          	sd	a4,-8(t1)
   18ab2:	2685                	c.addiw	a3,1
   18ab4:	0006871b          	addiw	a4,a3,0
   18ab8:	10d12423          	sw	a3,264(sp)
   18abc:	ea3e                	c.sdsp	a5,272(sp)
   18abe:	469d                	c.li	a3,7
   18ac0:	20e6cb63          	blt	a3,a4,18cd6 <_svfprintf_r+0x16ae>
   18ac4:	ea065fe3          	bge	a2,zero,18982 <_svfprintf_r+0x135a>
   18ac8:	56c1                	c.li	a3,-16
   18aca:	40c00a3b          	subw	s4,zero,a2
   18ace:	66d65863          	bge	a2,a3,1913e <_svfprintf_r+0x1b16>
   18ad2:	4b9d                	c.li	s7,7
   18ad4:	a021                	c.j	18adc <_svfprintf_r+0x14b4>
   18ad6:	3a41                	c.addiw	s4,-16
   18ad8:	674ad363          	bge	s5,s4,1913e <_svfprintf_r+0x1b16>
   18adc:	0017069b          	addiw	a3,a4,1
   18ae0:	07c1                	c.addi	a5,16
   18ae2:	00005717          	auipc	a4,0x5
   18ae6:	0d670713          	addi	a4,a4,214 # 1dbb8 <zeroes.0>
   18aea:	00e33023          	sd	a4,0(t1)
   18aee:	01533423          	sd	s5,8(t1)
   18af2:	ea3e                	c.sdsp	a5,272(sp)
   18af4:	0006871b          	addiw	a4,a3,0
   18af8:	10d12423          	sw	a3,264(sp)
   18afc:	0341                	c.addi	t1,16
   18afe:	fcebdce3          	bge	s7,a4,18ad6 <_svfprintf_r+0x14ae>
   18b02:	0210                	c.addi4spn	a2,sp,256
   18b04:	85da                	c.mv	a1,s6
   18b06:	8562                	c.mv	a0,s8
   18b08:	00002097          	auipc	ra,0x2
   18b0c:	dce080e7          	jalr	ra,-562(ra) # 1a8d6 <__ssprint_r>
   18b10:	e8051d63          	bne	a0,zero,181aa <_svfprintf_r+0xb82>
   18b14:	67d2                	c.ldsp	a5,272(sp)
   18b16:	10812703          	lw	a4,264(sp)
   18b1a:	18010313          	addi	t1,sp,384
   18b1e:	bf65                	c.j	18ad6 <_svfprintf_r+0x14ae>
   18b20:	001d061b          	addiw	a2,s10,1
   18b24:	010a0713          	addi	a4,s4,16
   18b28:	9be6                	c.add	s7,s9
   18b2a:	00005797          	auipc	a5,0x5
   18b2e:	08e78793          	addi	a5,a5,142 # 1dbb8 <zeroes.0>
   18b32:	00fa3023          	sd	a5,0(s4)
   18b36:	019a3423          	sd	s9,8(s4)
   18b3a:	ea5e                	c.sdsp	s7,272(sp)
   18b3c:	10c12423          	sw	a2,264(sp)
   18b40:	469d                	c.li	a3,7
   18b42:	d4c6c3e3          	blt	a3,a2,18888 <_svfprintf_r+0x1260>
   18b46:	2605                	c.addiw	a2,1
   18b48:	01070313          	addi	t1,a4,16
   18b4c:	8a3a                	c.mv	s4,a4
   18b4e:	88eff06f          	jal	zero,17bdc <_svfprintf_r+0x5b4>
   18b52:	2004f793          	andi	a5,s1,512
   18b56:	14078e63          	beq	a5,zero,18cb2 <_svfprintf_r+0x168a>
   18b5a:	0ff9f993          	andi	s3,s3,255
   18b5e:	b4d1                	c.j	18622 <_svfprintf_r+0xffa>
   18b60:	2004f793          	andi	a5,s1,512
   18b64:	14078163          	beq	a5,zero,18ca6 <_svfprintf_r+0x167e>
   18b68:	67c2                	c.ldsp	a5,16(sp)
   18b6a:	00078983          	lb	s3,0(a5)
   18b6e:	87ce                	c.mv	a5,s3
   18b70:	b54ff06f          	jal	zero,17ec4 <_svfprintf_r+0x89c>
   18b74:	2004f793          	andi	a5,s1,512
   18b78:	12078263          	beq	a5,zero,18c9c <_svfprintf_r+0x1674>
   18b7c:	0ff9f993          	andi	s3,s3,255
   18b80:	926ff06f          	jal	zero,17ca6 <_svfprintf_r+0x67e>
   18b84:	200bf793          	andi	a5,s7,512
   18b88:	10078363          	beq	a5,zero,18c8e <_svfprintf_r+0x1666>
   18b8c:	0ff9f993          	andi	s3,s3,255
   18b90:	e83a                	c.sdsp	a4,16(sp)
   18b92:	4785                	c.li	a5,1
   18b94:	91eff06f          	jal	zero,17cb2 <_svfprintf_r+0x68a>
   18b98:	77ee                	c.ldsp	a5,248(sp)
   18b9a:	1207db63          	bge	a5,zero,18cd0 <_svfprintf_r+0x16a8>
   18b9e:	02d00793          	addi	a5,zero,45
   18ba2:	0cf107a3          	sb	a5,207(sp)
   18ba6:	04700713          	addi	a4,zero,71
   18baa:	00004d97          	auipc	s11,0x4
   18bae:	70ed8d93          	addi	s11,s11,1806 # 1d2b8 <__clzdi2+0xa0>
   18bb2:	eb975be3          	bge	a4,s9,18a68 <_svfprintf_r+0x1440>
   18bb6:	00004d97          	auipc	s11,0x4
   18bba:	70ad8d93          	addi	s11,s11,1802 # 1d2c0 <__clzdi2+0xa8>
   18bbe:	b56d                	c.j	18a68 <_svfprintf_r+0x1440>
   18bc0:	2705                	c.addiw	a4,1
   18bc2:	00005697          	auipc	a3,0x5
   18bc6:	ff668693          	addi	a3,a3,-10 # 1dbb8 <zeroes.0>
   18bca:	97d2                	c.add	a5,s4
   18bcc:	00d33023          	sd	a3,0(t1)
   18bd0:	01433423          	sd	s4,8(t1)
   18bd4:	0007069b          	addiw	a3,a4,0
   18bd8:	10e12423          	sw	a4,264(sp)
   18bdc:	ea3e                	c.sdsp	a5,272(sp)
   18bde:	471d                	c.li	a4,7
   18be0:	0341                	c.addi	t1,16
   18be2:	f8d75d63          	bge	a4,a3,1837c <_svfprintf_r+0xd54>
   18be6:	0210                	c.addi4spn	a2,sp,256
   18be8:	85da                	c.mv	a1,s6
   18bea:	8562                	c.mv	a0,s8
   18bec:	00002097          	auipc	ra,0x2
   18bf0:	cea080e7          	jalr	ra,-790(ra) # 1a8d6 <__ssprint_r>
   18bf4:	da051b63          	bne	a0,zero,181aa <_svfprintf_r+0xb82>
   18bf8:	67d2                	c.ldsp	a5,272(sp)
   18bfa:	18010313          	addi	t1,sp,384
   18bfe:	f7eff06f          	jal	zero,1837c <_svfprintf_r+0xd54>
   18c02:	77c6                	c.ldsp	a5,112(sp)
   18c04:	75e6                	c.ldsp	a1,120(sp)
   18c06:	f03a                	c.sdsp	a4,32(sp)
   18c08:	40fd8db3          	sub	s11,s11,a5
   18c0c:	863e                	c.mv	a2,a5
   18c0e:	856e                	c.mv	a0,s11
   18c10:	ec1a                	c.sdsp	t1,24(sp)
   18c12:	e442                	c.sdsp	a6,8(sp)
   18c14:	fffff097          	auipc	ra,0xfffff
   18c18:	99a080e7          	jalr	ra,-1638(ra) # 175ae <strncpy>
   18c1c:	6822                	c.ldsp	a6,8(sp)
   18c1e:	0299d7b3          	divu	a5,s3,s1
   18c22:	6362                	c.ldsp	t1,24(sp)
   18c24:	00184603          	lbu	a2,1(a6)
   18c28:	7702                	c.ldsp	a4,32(sp)
   18c2a:	4581                	c.li	a1,0
   18c2c:	00c03633          	sltu	a2,zero,a2
   18c30:	9832                	c.add	a6,a2
   18c32:	46a5                	c.li	a3,9
   18c34:	0ff00893          	addi	a7,zero,255
   18c38:	b945                	c.j	188e8 <_svfprintf_r+0x12c0>
   18c3a:	00004d97          	auipc	s11,0x4
   18c3e:	676d8d93          	addi	s11,s11,1654 # 1d2b0 <__clzdi2+0x98>
   18c42:	b51d                	c.j	18a68 <_svfprintf_r+0x1440>
   18c44:	0210                	c.addi4spn	a2,sp,256
   18c46:	85da                	c.mv	a1,s6
   18c48:	8562                	c.mv	a0,s8
   18c4a:	00002097          	auipc	ra,0x2
   18c4e:	c8c080e7          	jalr	ra,-884(ra) # 1a8d6 <__ssprint_r>
   18c52:	d4051c63          	bne	a0,zero,181aa <_svfprintf_r+0xb82>
   18c56:	67d2                	c.ldsp	a5,272(sp)
   18c58:	18010313          	addi	t1,sp,384
   18c5c:	f0cff06f          	jal	zero,18368 <_svfprintf_r+0xd40>
   18c60:	4a19                	c.li	s4,6
   18c62:	b535                	c.j	18a8e <_svfprintf_r+0x1466>
   18c64:	7682                	c.ldsp	a3,32(sp)
   18c66:	00dd8833          	add	a6,s11,a3
   18c6a:	40e6863b          	subw	a2,a3,a4
   18c6e:	41a80e3b          	subw	t3,a6,s10
   18c72:	8732                	c.mv	a4,a2
   18c74:	00ce5363          	bge	t3,a2,18c7a <_svfprintf_r+0x1652>
   18c78:	8772                	c.mv	a4,t3
   18c7a:	00070c9b          	addiw	s9,a4,0
   18c7e:	f7eff06f          	jal	zero,183fc <_svfprintf_r+0xdd4>
   18c82:	6782                	c.ldsp	a5,0(sp)
   18c84:	8da2                	c.mv	s11,s0
   18c86:	00f71023          	sh	a5,0(a4)
   18c8a:	bfffe06f          	jal	zero,17888 <_svfprintf_r+0x260>
   18c8e:	1982                	c.slli	s3,0x20
   18c90:	0209d993          	srli	s3,s3,0x20
   18c94:	e83a                	c.sdsp	a4,16(sp)
   18c96:	4785                	c.li	a5,1
   18c98:	81aff06f          	jal	zero,17cb2 <_svfprintf_r+0x68a>
   18c9c:	1982                	c.slli	s3,0x20
   18c9e:	0209d993          	srli	s3,s3,0x20
   18ca2:	804ff06f          	jal	zero,17ca6 <_svfprintf_r+0x67e>
   18ca6:	67c2                	c.ldsp	a5,16(sp)
   18ca8:	0007a983          	lw	s3,0(a5)
   18cac:	87ce                	c.mv	a5,s3
   18cae:	a16ff06f          	jal	zero,17ec4 <_svfprintf_r+0x89c>
   18cb2:	1982                	c.slli	s3,0x20
   18cb4:	0209d993          	srli	s3,s3,0x20
   18cb8:	b2ad                	c.j	18622 <_svfprintf_r+0xffa>
   18cba:	0210                	c.addi4spn	a2,sp,256
   18cbc:	85da                	c.mv	a1,s6
   18cbe:	8562                	c.mv	a0,s8
   18cc0:	00002097          	auipc	ra,0x2
   18cc4:	c16080e7          	jalr	ra,-1002(ra) # 1a8d6 <__ssprint_r>
   18cc8:	010b5783          	lhu	a5,16(s6)
   18ccc:	bd1fe06f          	jal	zero,1789c <_svfprintf_r+0x274>
   18cd0:	0cf14783          	lbu	a5,207(sp)
   18cd4:	bdc9                	c.j	18ba6 <_svfprintf_r+0x157e>
   18cd6:	0210                	c.addi4spn	a2,sp,256
   18cd8:	85da                	c.mv	a1,s6
   18cda:	8562                	c.mv	a0,s8
   18cdc:	00002097          	auipc	ra,0x2
   18ce0:	bfa080e7          	jalr	ra,-1030(ra) # 1a8d6 <__ssprint_r>
   18ce4:	cc051363          	bne	a0,zero,181aa <_svfprintf_r+0xb82>
   18ce8:	466e                	c.lwsp	a2,216(sp)
   18cea:	67d2                	c.ldsp	a5,272(sp)
   18cec:	10812703          	lw	a4,264(sp)
   18cf0:	18010313          	addi	t1,sp,384
   18cf4:	c80657e3          	bge	a2,zero,18982 <_svfprintf_r+0x135a>
   18cf8:	bbc1                	c.j	18ac8 <_svfprintf_r+0x14a0>
   18cfa:	4d19                	c.li	s10,6
   18cfc:	c91fe06f          	jal	zero,1798c <_svfprintf_r+0x364>
   18d00:	7dc2                	c.ldsp	s11,48(sp)
   18d02:	7702                	c.ldsp	a4,32(sp)
   18d04:	eca2                	c.sdsp	s0,88(sp)
   18d06:	7486                	c.ldsp	s1,96(sp)
   18d08:	976e                	c.add	a4,s11
   18d0a:	6462                	c.ldsp	s0,24(sp)
   18d0c:	7926                	c.ldsp	s2,104(sp)
   18d0e:	79a2                	c.ldsp	s3,40(sp)
   18d10:	e7a77d63          	bgeu	a4,s10,1838a <_svfprintf_r+0xd62>
   18d14:	8d3a                	c.mv	s10,a4
   18d16:	e74ff06f          	jal	zero,1838a <_svfprintf_r+0xd62>
   18d1a:	6762                	c.ldsp	a4,24(sp)
   18d1c:	57f5                	c.li	a5,-3
   18d1e:	00f74463          	blt	a4,a5,18d26 <_svfprintf_r+0x16fe>
   18d22:	00ed5863          	bge	s10,a4,18d32 <_svfprintf_r+0x170a>
   18d26:	3cf9                	c.addiw	s9,-2
   18d28:	fdfcf793          	andi	a5,s9,-33
   18d2c:	f43e                	c.sdsp	a5,40(sp)
   18d2e:	cf5fe06f          	jal	zero,17a22 <_svfprintf_r+0x3fa>
   18d32:	6762                	c.ldsp	a4,24(sp)
   18d34:	7782                	c.ldsp	a5,32(sp)
   18d36:	14f74163          	blt	a4,a5,18e78 <_svfprintf_r+0x1850>
   18d3a:	77c2                	c.ldsp	a5,48(sp)
   18d3c:	8a3a                	c.mv	s4,a4
   18d3e:	8b85                	c.andi	a5,1
   18d40:	c781                	c.beqz	a5,18d48 <_svfprintf_r+0x1720>
   18d42:	77e2                	c.ldsp	a5,56(sp)
   18d44:	00e78a3b          	addw	s4,a5,a4
   18d48:	77c2                	c.ldsp	a5,48(sp)
   18d4a:	4007f793          	andi	a5,a5,1024
   18d4e:	c781                	c.beqz	a5,18d56 <_svfprintf_r+0x172e>
   18d50:	67e2                	c.ldsp	a5,24(sp)
   18d52:	54f04163          	blt	zero,a5,19294 <_svfprintf_r+0x1c6c>
   18d56:	fffa4993          	xori	s3,s4,-1
   18d5a:	43f9d993          	srai	s3,s3,0x3f
   18d5e:	013a79b3          	and	s3,s4,s3
   18d62:	2981                	c.addiw	s3,0
   18d64:	06700c93          	addi	s9,zero,103
   18d68:	f802                	c.sdsp	zero,48(sp)
   18d6a:	f402                	c.sdsp	zero,40(sp)
   18d6c:	d99fe06f          	jal	zero,17b04 <_svfprintf_r+0x4dc>
   18d70:	0cf14783          	lbu	a5,207(sp)
   18d74:	4d01                	c.li	s10,0
   18d76:	c399                	c.beqz	a5,18d7c <_svfprintf_r+0x1754>
   18d78:	f11fe06f          	jal	zero,17c88 <_svfprintf_r+0x660>
   18d7c:	a29fe06f          	jal	zero,177a4 <_svfprintf_r+0x17c>
   18d80:	0210                	c.addi4spn	a2,sp,256
   18d82:	85da                	c.mv	a1,s6
   18d84:	8562                	c.mv	a0,s8
   18d86:	00002097          	auipc	ra,0x2
   18d8a:	b50080e7          	jalr	ra,-1200(ra) # 1a8d6 <__ssprint_r>
   18d8e:	c0051e63          	bne	a0,zero,181aa <_svfprintf_r+0xb82>
   18d92:	00044603          	lbu	a2,0(s0)
   18d96:	67d2                	c.ldsp	a5,272(sp)
   18d98:	18010313          	addi	t1,sp,384
   18d9c:	9d32                	c.add	s10,a2
   18d9e:	b4a9                	c.j	187e8 <_svfprintf_r+0x11c0>
   18da0:	09bc                	c.addi4spn	a5,sp,216
   18da2:	876a                	c.mv	a4,s10
   18da4:	0e810893          	addi	a7,sp,232
   18da8:	0dc10813          	addi	a6,sp,220
   18dac:	468d                	c.li	a3,3
   18dae:	85de                	c.mv	a1,s7
   18db0:	8652                	c.mv	a2,s4
   18db2:	8562                	c.mv	a0,s8
   18db4:	ec1a                	c.sdsp	t1,24(sp)
   18db6:	ffffc097          	auipc	ra,0xffffc
   18dba:	80c080e7          	jalr	ra,-2036(ra) # 145c2 <_ldtoa_r>
   18dbe:	00054703          	lbu	a4,0(a0)
   18dc2:	03000793          	addi	a5,zero,48
   18dc6:	6362                	c.ldsp	t1,24(sp)
   18dc8:	8daa                	c.mv	s11,a0
   18dca:	04f70563          	beq	a4,a5,18e14 <_svfprintf_r+0x17ec>
   18dce:	47ee                	c.lwsp	a5,216(sp)
   18dd0:	97ea                	c.add	a5,s10
   18dd2:	00fd89b3          	add	s3,s11,a5
   18dd6:	4681                	c.li	a3,0
   18dd8:	4601                	c.li	a2,0
   18dda:	855e                	c.mv	a0,s7
   18ddc:	85d2                	c.mv	a1,s4
   18dde:	ec1a                	c.sdsp	t1,24(sp)
   18de0:	00003097          	auipc	ra,0x3
   18de4:	030080e7          	jalr	ra,48(ra) # 1be10 <__eqtf2>
   18de8:	6362                	c.ldsp	t1,24(sp)
   18dea:	86ce                	c.mv	a3,s3
   18dec:	e119                	c.bnez	a0,18df2 <_svfprintf_r+0x17ca>
   18dee:	c0ffe06f          	jal	zero,179fc <_svfprintf_r+0x3d4>
   18df2:	76ae                	c.ldsp	a3,232(sp)
   18df4:	0136e463          	bltu	a3,s3,18dfc <_svfprintf_r+0x17d4>
   18df8:	c05fe06f          	jal	zero,179fc <_svfprintf_r+0x3d4>
   18dfc:	03000713          	addi	a4,zero,48
   18e00:	00168793          	addi	a5,a3,1
   18e04:	f5be                	c.sdsp	a5,232(sp)
   18e06:	00e68023          	sb	a4,0(a3)
   18e0a:	76ae                	c.ldsp	a3,232(sp)
   18e0c:	ff36eae3          	bltu	a3,s3,18e00 <_svfprintf_r+0x17d8>
   18e10:	bedfe06f          	jal	zero,179fc <_svfprintf_r+0x3d4>
   18e14:	4601                	c.li	a2,0
   18e16:	4681                	c.li	a3,0
   18e18:	855e                	c.mv	a0,s7
   18e1a:	85d2                	c.mv	a1,s4
   18e1c:	ec1a                	c.sdsp	t1,24(sp)
   18e1e:	00003097          	auipc	ra,0x3
   18e22:	ff2080e7          	jalr	ra,-14(ra) # 1be10 <__eqtf2>
   18e26:	6362                	c.ldsp	t1,24(sp)
   18e28:	d15d                	c.beqz	a0,18dce <_svfprintf_r+0x17a6>
   18e2a:	4705                	c.li	a4,1
   18e2c:	41a707bb          	subw	a5,a4,s10
   18e30:	cdbe                	c.swsp	a5,216(sp)
   18e32:	bf79                	c.j	18dd0 <_svfprintf_r+0x17a8>
   18e34:	0210                	c.addi4spn	a2,sp,256
   18e36:	85da                	c.mv	a1,s6
   18e38:	8562                	c.mv	a0,s8
   18e3a:	00002097          	auipc	ra,0x2
   18e3e:	a9c080e7          	jalr	ra,-1380(ra) # 1a8d6 <__ssprint_r>
   18e42:	b6051463          	bne	a0,zero,181aa <_svfprintf_r+0xb82>
   18e46:	476e                	c.lwsp	a4,216(sp)
   18e48:	67d2                	c.ldsp	a5,272(sp)
   18e4a:	18010313          	addi	t1,sp,384
   18e4e:	d72ff06f          	jal	zero,183c0 <_svfprintf_r+0xd98>
   18e52:	02d00793          	addi	a5,zero,45
   18e56:	0cf107a3          	sb	a5,207(sp)
   18e5a:	befd                	c.j	18a58 <_svfprintf_r+0x1430>
   18e5c:	0cf14783          	lbu	a5,207(sp)
   18e60:	e85e                	c.sdsp	s7,16(sp)
   18e62:	f802                	c.sdsp	zero,48(sp)
   18e64:	f402                	c.sdsp	zero,40(sp)
   18e66:	ec02                	c.sdsp	zero,24(sp)
   18e68:	89ea                	c.mv	s3,s10
   18e6a:	8a6a                	c.mv	s4,s10
   18e6c:	4d01                	c.li	s10,0
   18e6e:	c399                	c.beqz	a5,18e74 <_svfprintf_r+0x184c>
   18e70:	e19fe06f          	jal	zero,17c88 <_svfprintf_r+0x660>
   18e74:	931fe06f          	jal	zero,177a4 <_svfprintf_r+0x17c>
   18e78:	7702                	c.ldsp	a4,32(sp)
   18e7a:	77e2                	c.ldsp	a5,56(sp)
   18e7c:	06700c93          	addi	s9,zero,103
   18e80:	00e78a3b          	addw	s4,a5,a4
   18e84:	6762                	c.ldsp	a4,24(sp)
   18e86:	46e05d63          	bge	zero,a4,19300 <_svfprintf_r+0x1cd8>
   18e8a:	77c2                	c.ldsp	a5,48(sp)
   18e8c:	4007f793          	andi	a5,a5,1024
   18e90:	40079463          	bne	a5,zero,19298 <_svfprintf_r+0x1c70>
   18e94:	fffa4993          	xori	s3,s4,-1
   18e98:	43f9d993          	srai	s3,s3,0x3f
   18e9c:	013a79b3          	and	s3,s4,s3
   18ea0:	2981                	c.addiw	s3,0
   18ea2:	b5d9                	c.j	18d68 <_svfprintf_r+0x1740>
   18ea4:	77c2                	c.ldsp	a5,48(sp)
   18ea6:	6762                	c.ldsp	a4,24(sp)
   18ea8:	8b85                	c.andi	a5,1
   18eaa:	00fd67b3          	or	a5,s10,a5
   18eae:	46e05e63          	bge	zero,a4,1932a <_svfprintf_r+0x1d02>
   18eb2:	3c079963          	bne	a5,zero,19284 <_svfprintf_r+0x1c5c>
   18eb6:	6a62                	c.ldsp	s4,24(sp)
   18eb8:	06600c93          	addi	s9,zero,102
   18ebc:	b7f9                	c.j	18e8a <_svfprintf_r+0x1862>
   18ebe:	0210                	c.addi4spn	a2,sp,256
   18ec0:	85da                	c.mv	a1,s6
   18ec2:	8562                	c.mv	a0,s8
   18ec4:	00002097          	auipc	ra,0x2
   18ec8:	a12080e7          	jalr	ra,-1518(ra) # 1a8d6 <__ssprint_r>
   18ecc:	ac051f63          	bne	a0,zero,181aa <_svfprintf_r+0xb82>
   18ed0:	466e                	c.lwsp	a2,216(sp)
   18ed2:	7702                	c.ldsp	a4,32(sp)
   18ed4:	67d2                	c.ldsp	a5,272(sp)
   18ed6:	18010313          	addi	t1,sp,384
   18eda:	40c7063b          	subw	a2,a4,a2
   18ede:	d1eff06f          	jal	zero,183fc <_svfprintf_r+0xdd4>
   18ee2:	03000793          	addi	a5,zero,48
   18ee6:	0cf10823          	sb	a5,208(sp)
   18eea:	05800713          	addi	a4,zero,88
   18eee:	0024e793          	ori	a5,s1,2
   18ef2:	2781                	c.addiw	a5,0
   18ef4:	0ce108a3          	sb	a4,209(sp)
   18ef8:	f83e                	c.sdsp	a5,48(sp)
   18efa:	06300713          	addi	a4,zero,99
   18efe:	e402                	c.sdsp	zero,8(sp)
   18f00:	11810d93          	addi	s11,sp,280
   18f04:	21a74f63          	blt	a4,s10,19122 <_svfprintf_r+0x1afa>
   18f08:	7a6e                	c.ldsp	s4,248(sp)
   18f0a:	fdfcf793          	andi	a5,s9,-33
   18f0e:	1024e493          	ori	s1,s1,258
   18f12:	f43e                	c.sdsp	a5,40(sp)
   18f14:	f082                	c.sdsp	zero,96(sp)
   18f16:	7bce                	c.ldsp	s7,240(sp)
   18f18:	2481                	c.addiw	s1,0
   18f1a:	1a0a4563          	blt	s4,zero,190c4 <_svfprintf_r+0x1a9c>
   18f1e:	06100793          	addi	a5,zero,97
   18f22:	30fc8463          	beq	s9,a5,1922a <_svfprintf_r+0x1c02>
   18f26:	04100793          	addi	a5,zero,65
   18f2a:	00fc8463          	beq	s9,a5,18f32 <_svfprintf_r+0x190a>
   18f2e:	a79fe06f          	jal	zero,179a6 <_svfprintf_r+0x37e>
   18f32:	85d2                	c.mv	a1,s4
   18f34:	855e                	c.mv	a0,s7
   18f36:	f01a                	c.sdsp	t1,32(sp)
   18f38:	00004097          	auipc	ra,0x4
   18f3c:	0b4080e7          	jalr	ra,180(ra) # 1cfec <__trunctfdf2>
   18f40:	09a8                	c.addi4spn	a0,sp,216
   18f42:	ffffe097          	auipc	ra,0xffffe
   18f46:	2dc080e7          	jalr	ra,732(ra) # 1721e <frexp>
   18f4a:	00004097          	auipc	ra,0x4
   18f4e:	fdc080e7          	jalr	ra,-36(ra) # 1cf26 <__extenddftf2>
   18f52:	00004797          	auipc	a5,0x4
   18f56:	56e78793          	addi	a5,a5,1390 # 1d4c0 <zeroes.0+0x38>
   18f5a:	6390                	c.ld	a2,0(a5)
   18f5c:	6794                	c.ld	a3,8(a5)
   18f5e:	00003097          	auipc	ra,0x3
   18f62:	092080e7          	jalr	ra,146(ra) # 1bff0 <__multf3>
   18f66:	4601                	c.li	a2,0
   18f68:	4681                	c.li	a3,0
   18f6a:	8a2a                	c.mv	s4,a0
   18f6c:	ec2e                	c.sdsp	a1,24(sp)
   18f6e:	00003097          	auipc	ra,0x3
   18f72:	ea2080e7          	jalr	ra,-350(ra) # 1be10 <__eqtf2>
   18f76:	6fe2                	c.ldsp	t6,24(sp)
   18f78:	7302                	c.ldsp	t1,32(sp)
   18f7a:	e119                	c.bnez	a0,18f80 <_svfprintf_r+0x1958>
   18f7c:	4705                	c.li	a4,1
   18f7e:	cdba                	c.swsp	a4,216(sp)
   18f80:	00004797          	auipc	a5,0x4
   18f84:	34878793          	addi	a5,a5,840 # 1d2c8 <__clzdi2+0xb0>
   18f88:	ec3e                	c.sdsp	a5,24(sp)
   18f8a:	020d1713          	slli	a4,s10,0x20
   18f8e:	00004697          	auipc	a3,0x4
   18f92:	51268693          	addi	a3,a3,1298 # 1d4a0 <zeroes.0+0x18>
   18f96:	9301                	c.srli	a4,0x20
   18f98:	629c                	c.ld	a5,0(a3)
   18f9a:	0705                	c.addi	a4,1
   18f9c:	976e                	c.add	a4,s11
   18f9e:	f03a                	c.sdsp	a4,32(sp)
   18fa0:	01ad873b          	addw	a4,s11,s10
   18fa4:	f4e6                	c.sdsp	s9,104(sp)
   18fa6:	e94a                	c.sdsp	s2,144(sp)
   18fa8:	ed6a                	c.sdsp	s10,152(sp)
   18faa:	f562                	c.sdsp	s8,168(sp)
   18fac:	0086b983          	ld	s3,8(a3)
   18fb0:	8bee                	c.mv	s7,s11
   18fb2:	e122                	c.sdsp	s0,128(sp)
   18fb4:	e526                	c.sdsp	s1,136(sp)
   18fb6:	f11a                	c.sdsp	t1,160(sp)
   18fb8:	f95a                	c.sdsp	s6,176(sp)
   18fba:	fd6e                	c.sdsp	s11,184(sp)
   18fbc:	8c52                	c.mv	s8,s4
   18fbe:	8d7e                	c.mv	s10,t6
   18fc0:	893a                	c.mv	s2,a4
   18fc2:	8cbe                	c.mv	s9,a5
   18fc4:	a809                	c.j	18fd6 <_svfprintf_r+0x19ae>
   18fc6:	4601                	c.li	a2,0
   18fc8:	4681                	c.li	a3,0
   18fca:	00003097          	auipc	ra,0x3
   18fce:	e46080e7          	jalr	ra,-442(ra) # 1be10 <__eqtf2>
   18fd2:	20050463          	beq	a0,zero,191da <_svfprintf_r+0x1bb2>
   18fd6:	8666                	c.mv	a2,s9
   18fd8:	86ce                	c.mv	a3,s3
   18fda:	8562                	c.mv	a0,s8
   18fdc:	85ea                	c.mv	a1,s10
   18fde:	00003097          	auipc	ra,0x3
   18fe2:	012080e7          	jalr	ra,18(ra) # 1bff0 <__multf3>
   18fe6:	8a2e                	c.mv	s4,a1
   18fe8:	8b2a                	c.mv	s6,a0
   18fea:	00004097          	auipc	ra,0x4
   18fee:	e50080e7          	jalr	ra,-432(ra) # 1ce3a <__fixtfsi>
   18ff2:	00050d9b          	addiw	s11,a0,0
   18ff6:	856e                	c.mv	a0,s11
   18ff8:	00004097          	auipc	ra,0x4
   18ffc:	ed2080e7          	jalr	ra,-302(ra) # 1ceca <__floatsitf>
   19000:	86ae                	c.mv	a3,a1
   19002:	862a                	c.mv	a2,a0
   19004:	85d2                	c.mv	a1,s4
   19006:	855a                	c.mv	a0,s6
   19008:	00003097          	auipc	ra,0x3
   1900c:	5fe080e7          	jalr	ra,1534(ra) # 1c606 <__subtf3>
   19010:	67e2                	c.ldsp	a5,24(sp)
   19012:	8a5e                	c.mv	s4,s7
   19014:	0b85                	c.addi	s7,1
   19016:	01b78733          	add	a4,a5,s11
   1901a:	00074683          	lbu	a3,0(a4)
   1901e:	7782                	c.ldsp	a5,32(sp)
   19020:	842a                	c.mv	s0,a0
   19022:	fedb8fa3          	sb	a3,-1(s7)
   19026:	84ae                	c.mv	s1,a1
   19028:	8c2a                	c.mv	s8,a0
   1902a:	8d2e                	c.mv	s10,a1
   1902c:	41790b3b          	subw	s6,s2,s7
   19030:	f9779be3          	bne	a5,s7,18fc6 <_svfprintf_r+0x199e>
   19034:	89ee                	c.mv	s3,s11
   19036:	694a                	c.ldsp	s2,144(sp)
   19038:	6d6a                	c.ldsp	s10,152(sp)
   1903a:	730a                	c.ldsp	t1,160(sp)
   1903c:	7c2a                	c.ldsp	s8,168(sp)
   1903e:	7b4a                	c.ldsp	s6,176(sp)
   19040:	7dea                	c.ldsp	s11,184(sp)
   19042:	640a                	c.ldsp	s0,128(sp)
   19044:	64aa                	c.ldsp	s1,136(sp)
   19046:	57fd                	c.li	a5,-1
   19048:	7ca6                	c.ldsp	s9,104(sp)
   1904a:	f052                	c.sdsp	s4,32(sp)
   1904c:	8f2a                	c.mv	t5,a0
   1904e:	872e                	c.mv	a4,a1
   19050:	f4be                	c.sdsp	a5,104(sp)
   19052:	00004797          	auipc	a5,0x4
   19056:	45e78793          	addi	a5,a5,1118 # 1d4b0 <zeroes.0+0x28>
   1905a:	0087ba03          	ld	s4,8(a5)
   1905e:	6390                	c.ld	a2,0(a5)
   19060:	857a                	c.mv	a0,t5
   19062:	86d2                	c.mv	a3,s4
   19064:	85ba                	c.mv	a1,a4
   19066:	e11a                	c.sdsp	t1,128(sp)
   19068:	ed7a                	c.sdsp	t5,152(sp)
   1906a:	e932                	c.sdsp	a2,144(sp)
   1906c:	e53a                	c.sdsp	a4,136(sp)
   1906e:	00003097          	auipc	ra,0x3
   19072:	e36080e7          	jalr	ra,-458(ra) # 1bea4 <__getf2>
   19076:	630a                	c.ldsp	t1,128(sp)
   19078:	04a04e63          	blt	zero,a0,190d4 <_svfprintf_r+0x1aac>
   1907c:	6f6a                	c.ldsp	t5,152(sp)
   1907e:	672a                	c.ldsp	a4,136(sp)
   19080:	664a                	c.ldsp	a2,144(sp)
   19082:	86d2                	c.mv	a3,s4
   19084:	857a                	c.mv	a0,t5
   19086:	85ba                	c.mv	a1,a4
   19088:	00003097          	auipc	ra,0x3
   1908c:	d88080e7          	jalr	ra,-632(ra) # 1be10 <__eqtf2>
   19090:	630a                	c.ldsp	t1,128(sp)
   19092:	e509                	c.bnez	a0,1909c <_svfprintf_r+0x1a74>
   19094:	0019f993          	andi	s3,s3,1
   19098:	02099e63          	bne	s3,zero,190d4 <_svfprintf_r+0x1aac>
   1909c:	76a6                	c.ldsp	a3,104(sp)
   1909e:	03000713          	addi	a4,zero,48
   190a2:	0016879b          	addiw	a5,a3,1
   190a6:	97de                	c.add	a5,s7
   190a8:	0006c763          	blt	a3,zero,190b6 <_svfprintf_r+0x1a8e>
   190ac:	0b85                	c.addi	s7,1
   190ae:	feeb8fa3          	sb	a4,-1(s7)
   190b2:	ff779de3          	bne	a5,s7,190ac <_svfprintf_r+0x1a84>
   190b6:	41bb87bb          	subw	a5,s7,s11
   190ba:	f03e                	c.sdsp	a5,32(sp)
   190bc:	947fe06f          	jal	zero,17a02 <_svfprintf_r+0x3da>
   190c0:	e402                	c.sdsp	zero,8(sp)
   190c2:	84be                	c.mv	s1,a5
   190c4:	57fd                	c.li	a5,-1
   190c6:	17fe                	c.slli	a5,0x3f
   190c8:	00fa4a33          	xor	s4,s4,a5
   190cc:	02d00793          	addi	a5,zero,45
   190d0:	f0be                	c.sdsp	a5,96(sp)
   190d2:	b5b1                	c.j	18f1e <_svfprintf_r+0x18f6>
   190d4:	7782                	c.ldsp	a5,32(sp)
   190d6:	f5be                	c.sdsp	a5,232(sp)
   190d8:	67e2                	c.ldsp	a5,24(sp)
   190da:	fffbc703          	lbu	a4,-1(s7)
   190de:	00f7c683          	lbu	a3,15(a5)
   190e2:	87de                	c.mv	a5,s7
   190e4:	00e69e63          	bne	a3,a4,19100 <_svfprintf_r+0x1ad8>
   190e8:	03000613          	addi	a2,zero,48
   190ec:	fec78fa3          	sb	a2,-1(a5)
   190f0:	77ae                	c.ldsp	a5,232(sp)
   190f2:	fff78713          	addi	a4,a5,-1
   190f6:	f5ba                	c.sdsp	a4,232(sp)
   190f8:	fff7c703          	lbu	a4,-1(a5)
   190fc:	fee688e3          	beq	a3,a4,190ec <_svfprintf_r+0x1ac4>
   19100:	0017069b          	addiw	a3,a4,1
   19104:	03900613          	addi	a2,zero,57
   19108:	0ff6f693          	andi	a3,a3,255
   1910c:	00c70563          	beq	a4,a2,19116 <_svfprintf_r+0x1aee>
   19110:	fed78fa3          	sb	a3,-1(a5)
   19114:	b74d                	c.j	190b6 <_svfprintf_r+0x1a8e>
   19116:	6762                	c.ldsp	a4,24(sp)
   19118:	00a74683          	lbu	a3,10(a4)
   1911c:	fed78fa3          	sb	a3,-1(a5)
   19120:	bf59                	c.j	190b6 <_svfprintf_r+0x1a8e>
   19122:	001d059b          	addiw	a1,s10,1
   19126:	8562                	c.mv	a0,s8
   19128:	e41a                	c.sdsp	t1,8(sp)
   1912a:	ffffc097          	auipc	ra,0xffffc
   1912e:	626080e7          	jalr	ra,1574(ra) # 15750 <_malloc_r>
   19132:	6322                	c.ldsp	t1,8(sp)
   19134:	8daa                	c.mv	s11,a0
   19136:	24050663          	beq	a0,zero,19382 <_svfprintf_r+0x1d5a>
   1913a:	e42a                	c.sdsp	a0,8(sp)
   1913c:	b3f1                	c.j	18f08 <_svfprintf_r+0x18e0>
   1913e:	0017069b          	addiw	a3,a4,1
   19142:	97d2                	c.add	a5,s4
   19144:	00005717          	auipc	a4,0x5
   19148:	a7470713          	addi	a4,a4,-1420 # 1dbb8 <zeroes.0>
   1914c:	00e33023          	sd	a4,0(t1)
   19150:	10d12423          	sw	a3,264(sp)
   19154:	0006871b          	addiw	a4,a3,0
   19158:	01433423          	sd	s4,8(t1)
   1915c:	ea3e                	c.sdsp	a5,272(sp)
   1915e:	469d                	c.li	a3,7
   19160:	82e6d0e3          	bge	a3,a4,18980 <_svfprintf_r+0x1358>
   19164:	0210                	c.addi4spn	a2,sp,256
   19166:	85da                	c.mv	a1,s6
   19168:	8562                	c.mv	a0,s8
   1916a:	00001097          	auipc	ra,0x1
   1916e:	76c080e7          	jalr	ra,1900(ra) # 1a8d6 <__ssprint_r>
   19172:	82051c63          	bne	a0,zero,181aa <_svfprintf_r+0xb82>
   19176:	67d2                	c.ldsp	a5,272(sp)
   19178:	10812703          	lw	a4,264(sp)
   1917c:	18010313          	addi	t1,sp,384
   19180:	b009                	c.j	18982 <_svfprintf_r+0x135a>
   19182:	8ba6                	c.mv	s7,s1
   19184:	d5ffe06f          	jal	zero,17ee2 <_svfprintf_r+0x8ba>
   19188:	03000793          	addi	a5,zero,48
   1918c:	0cf10823          	sb	a5,208(sp)
   19190:	07800713          	addi	a4,zero,120
   19194:	bba9                	c.j	18eee <_svfprintf_r+0x18c6>
   19196:	001d099b          	addiw	s3,s10,1
   1919a:	874e                	c.mv	a4,s3
   1919c:	0e810893          	addi	a7,sp,232
   191a0:	0dc10813          	addi	a6,sp,220
   191a4:	09bc                	c.addi4spn	a5,sp,216
   191a6:	4689                	c.li	a3,2
   191a8:	85de                	c.mv	a1,s7
   191aa:	8652                	c.mv	a2,s4
   191ac:	8562                	c.mv	a0,s8
   191ae:	ffffb097          	auipc	ra,0xffffb
   191b2:	414080e7          	jalr	ra,1044(ra) # 145c2 <_ldtoa_r>
   191b6:	8daa                	c.mv	s11,a0
   191b8:	6362                	c.ldsp	t1,24(sp)
   191ba:	99ee                	c.add	s3,s11
   191bc:	b929                	c.j	18dd6 <_svfprintf_r+0x17ae>
   191be:	01ad89b3          	add	s3,s11,s10
   191c2:	b911                	c.j	18dd6 <_svfprintf_r+0x17ae>
   191c4:	000d0463          	beq	s10,zero,191cc <_svfprintf_r+0x1ba4>
   191c8:	fc4fe06f          	jal	zero,1798c <_svfprintf_r+0x364>
   191cc:	4d05                	c.li	s10,1
   191ce:	fbefe06f          	jal	zero,1798c <_svfprintf_r+0x364>
   191d2:	c31c                	c.sw	a5,0(a4)
   191d4:	8da2                	c.mv	s11,s0
   191d6:	eb2fe06f          	jal	zero,17888 <_svfprintf_r+0x260>
   191da:	7ca6                	c.ldsp	s9,104(sp)
   191dc:	89ee                	c.mv	s3,s11
   191de:	f4da                	c.sdsp	s6,104(sp)
   191e0:	8f22                	c.mv	t5,s0
   191e2:	8726                	c.mv	a4,s1
   191e4:	694a                	c.ldsp	s2,144(sp)
   191e6:	6d6a                	c.ldsp	s10,152(sp)
   191e8:	730a                	c.ldsp	t1,160(sp)
   191ea:	7c2a                	c.ldsp	s8,168(sp)
   191ec:	7b4a                	c.ldsp	s6,176(sp)
   191ee:	7dea                	c.ldsp	s11,184(sp)
   191f0:	640a                	c.ldsp	s0,128(sp)
   191f2:	64aa                	c.ldsp	s1,136(sp)
   191f4:	f052                	c.sdsp	s4,32(sp)
   191f6:	bdb1                	c.j	19052 <_svfprintf_r+0x1a2a>
   191f8:	57fd                	c.li	a5,-1
   191fa:	e03e                	c.sdsp	a5,0(sp)
   191fc:	eaafe06f          	jal	zero,178a6 <_svfprintf_r+0x27e>
   19200:	0e210713          	addi	a4,sp,226
   19204:	e699                	c.bnez	a3,19212 <_svfprintf_r+0x1bea>
   19206:	03000713          	addi	a4,zero,48
   1920a:	0ee10123          	sb	a4,226(sp)
   1920e:	0e310713          	addi	a4,sp,227
   19212:	0414                	c.addi4spn	a3,sp,512
   19214:	0307879b          	addiw	a5,a5,48
   19218:	40d706b3          	sub	a3,a4,a3
   1921c:	00f70023          	sb	a5,0(a4)
   19220:	1216879b          	addiw	a5,a3,289
   19224:	e8be                	c.sdsp	a5,80(sp)
   19226:	8a5fe06f          	jal	zero,17aca <_svfprintf_r+0x4a2>
   1922a:	85d2                	c.mv	a1,s4
   1922c:	855e                	c.mv	a0,s7
   1922e:	f01a                	c.sdsp	t1,32(sp)
   19230:	00004097          	auipc	ra,0x4
   19234:	dbc080e7          	jalr	ra,-580(ra) # 1cfec <__trunctfdf2>
   19238:	09a8                	c.addi4spn	a0,sp,216
   1923a:	ffffe097          	auipc	ra,0xffffe
   1923e:	fe4080e7          	jalr	ra,-28(ra) # 1721e <frexp>
   19242:	00004097          	auipc	ra,0x4
   19246:	ce4080e7          	jalr	ra,-796(ra) # 1cf26 <__extenddftf2>
   1924a:	00004797          	auipc	a5,0x4
   1924e:	27678793          	addi	a5,a5,630 # 1d4c0 <zeroes.0+0x38>
   19252:	6390                	c.ld	a2,0(a5)
   19254:	6794                	c.ld	a3,8(a5)
   19256:	00003097          	auipc	ra,0x3
   1925a:	d9a080e7          	jalr	ra,-614(ra) # 1bff0 <__multf3>
   1925e:	4601                	c.li	a2,0
   19260:	4681                	c.li	a3,0
   19262:	8a2a                	c.mv	s4,a0
   19264:	ec2e                	c.sdsp	a1,24(sp)
   19266:	00003097          	auipc	ra,0x3
   1926a:	baa080e7          	jalr	ra,-1110(ra) # 1be10 <__eqtf2>
   1926e:	6fe2                	c.ldsp	t6,24(sp)
   19270:	7302                	c.ldsp	t1,32(sp)
   19272:	e119                	c.bnez	a0,19278 <_svfprintf_r+0x1c50>
   19274:	4705                	c.li	a4,1
   19276:	cdba                	c.swsp	a4,216(sp)
   19278:	00004797          	auipc	a5,0x4
   1927c:	06878793          	addi	a5,a5,104 # 1d2e0 <__clzdi2+0xc8>
   19280:	ec3e                	c.sdsp	a5,24(sp)
   19282:	b321                	c.j	18f8a <_svfprintf_r+0x1962>
   19284:	77e2                	c.ldsp	a5,56(sp)
   19286:	06600c93          	addi	s9,zero,102
   1928a:	00e78a3b          	addw	s4,a5,a4
   1928e:	01aa0a3b          	addw	s4,s4,s10
   19292:	bee5                	c.j	18e8a <_svfprintf_r+0x1862>
   19294:	06700c93          	addi	s9,zero,103
   19298:	6666                	c.ldsp	a2,88(sp)
   1929a:	0ff00713          	addi	a4,zero,255
   1929e:	00064783          	lbu	a5,0(a2)
   192a2:	10e78463          	beq	a5,a4,193aa <_svfprintf_r+0x1d82>
   192a6:	6762                	c.ldsp	a4,24(sp)
   192a8:	4801                	c.li	a6,0
   192aa:	4501                	c.li	a0,0
   192ac:	0ff00693          	addi	a3,zero,255
   192b0:	0007859b          	addiw	a1,a5,0
   192b4:	00e7da63          	bge	a5,a4,192c8 <_svfprintf_r+0x1ca0>
   192b8:	00164783          	lbu	a5,1(a2)
   192bc:	9f0d                	c.subw	a4,a1
   192be:	cf8d                	c.beqz	a5,192f8 <_svfprintf_r+0x1cd0>
   192c0:	2505                	c.addiw	a0,1
   192c2:	0605                	c.addi	a2,1
   192c4:	fed796e3          	bne	a5,a3,192b0 <_svfprintf_r+0x1c88>
   192c8:	ecb2                	c.sdsp	a2,88(sp)
   192ca:	ec3a                	c.sdsp	a4,24(sp)
   192cc:	f42a                	c.sdsp	a0,40(sp)
   192ce:	f842                	c.sdsp	a6,48(sp)
   192d0:	7742                	c.ldsp	a4,48(sp)
   192d2:	77a2                	c.ldsp	a5,40(sp)
   192d4:	9fb9                	c.addw	a5,a4
   192d6:	7746                	c.ldsp	a4,112(sp)
   192d8:	02e787bb          	mulw	a5,a5,a4
   192dc:	014787bb          	addw	a5,a5,s4
   192e0:	00078a1b          	addiw	s4,a5,0
   192e4:	fffa4993          	xori	s3,s4,-1
   192e8:	43f9d993          	srai	s3,s3,0x3f
   192ec:	0137f7b3          	and	a5,a5,s3
   192f0:	0007899b          	addiw	s3,a5,0
   192f4:	811fe06f          	jal	zero,17b04 <_svfprintf_r+0x4dc>
   192f8:	00064783          	lbu	a5,0(a2)
   192fc:	2805                	c.addiw	a6,1
   192fe:	b7d9                	c.j	192c4 <_svfprintf_r+0x1c9c>
   19300:	40ea07bb          	subw	a5,s4,a4
   19304:	2785                	c.addiw	a5,1
   19306:	00078a1b          	addiw	s4,a5,0
   1930a:	fffa4993          	xori	s3,s4,-1
   1930e:	43f9d993          	srai	s3,s3,0x3f
   19312:	0137f7b3          	and	a5,a5,s3
   19316:	0007899b          	addiw	s3,a5,0
   1931a:	b4b9                	c.j	18d68 <_svfprintf_r+0x1740>
   1931c:	7742                	c.ldsp	a4,48(sp)
   1931e:	8b05                	c.andi	a4,1
   19320:	e319                	c.bnez	a4,19326 <_svfprintf_r+0x1cfe>
   19322:	fc2fe06f          	jal	zero,17ae4 <_svfprintf_r+0x4bc>
   19326:	fb8fe06f          	jal	zero,17ade <_svfprintf_r+0x4b6>
   1932a:	e791                	c.bnez	a5,19336 <_svfprintf_r+0x1d0e>
   1932c:	4985                	c.li	s3,1
   1932e:	06600c93          	addi	s9,zero,102
   19332:	4a05                	c.li	s4,1
   19334:	bc15                	c.j	18d68 <_svfprintf_r+0x1740>
   19336:	77e2                	c.ldsp	a5,56(sp)
   19338:	06600c93          	addi	s9,zero,102
   1933c:	0017869b          	addiw	a3,a5,1
   19340:	01a686bb          	addw	a3,a3,s10
   19344:	00068a1b          	addiw	s4,a3,0
   19348:	fffa4993          	xori	s3,s4,-1
   1934c:	43f9d993          	srai	s3,s3,0x3f
   19350:	0136f6b3          	and	a3,a3,s3
   19354:	0006899b          	addiw	s3,a3,0
   19358:	bc01                	c.j	18d68 <_svfprintf_r+0x1740>
   1935a:	871a                	c.mv	a4,t1
   1935c:	fccff06f          	jal	zero,18b28 <_svfprintf_r+0x1500>
   19360:	66c2                	c.ldsp	a3,16(sp)
   19362:	4298                	c.lw	a4,0(a3)
   19364:	06a1                	c.addi	a3,8
   19366:	00070d1b          	addiw	s10,a4,0
   1936a:	00075363          	bge	a4,zero,19370 <_svfprintf_r+0x1d48>
   1936e:	5d7d                	c.li	s10,-1
   19370:	00144e03          	lbu	t3,1(s0)
   19374:	e836                	c.sdsp	a3,16(sp)
   19376:	843e                	c.mv	s0,a5
   19378:	baafe06f          	jal	zero,17722 <_svfprintf_r+0xfa>
   1937c:	89ea                	c.mv	s3,s10
   1937e:	99ee                	c.add	s3,s11
   19380:	bc99                	c.j	18dd6 <_svfprintf_r+0x17ae>
   19382:	010b5783          	lhu	a5,16(s6)
   19386:	0407e713          	ori	a4,a5,64
   1938a:	87ba                	c.mv	a5,a4
   1938c:	00eb1823          	sh	a4,16(s6)
   19390:	d0cfe06f          	jal	zero,1789c <_svfprintf_r+0x274>
   19394:	4789                	c.li	a5,2
   19396:	e8be                	c.sdsp	a5,80(sp)
   19398:	f32fe06f          	jal	zero,17aca <_svfprintf_r+0x4a2>
   1939c:	47b1                	c.li	a5,12
   1939e:	00fc2023          	sw	a5,0(s8)
   193a2:	57fd                	c.li	a5,-1
   193a4:	e03e                	c.sdsp	a5,0(sp)
   193a6:	d00fe06f          	jal	zero,178a6 <_svfprintf_r+0x27e>
   193aa:	f802                	c.sdsp	zero,48(sp)
   193ac:	f402                	c.sdsp	zero,40(sp)
   193ae:	b70d                	c.j	192d0 <_svfprintf_r+0x1ca8>

00000000000193b0 <__sprint_r.part.0>:
   193b0:	0ac5a783          	lw	a5,172(a1)
   193b4:	715d                	c.addi16sp	sp,-80
   193b6:	6709                	c.lui	a4,0x2
   193b8:	ec56                	c.sdsp	s5,24(sp)
   193ba:	e486                	c.sdsp	ra,72(sp)
   193bc:	e0a2                	c.sdsp	s0,64(sp)
   193be:	fc26                	c.sdsp	s1,56(sp)
   193c0:	f84a                	c.sdsp	s2,48(sp)
   193c2:	f44e                	c.sdsp	s3,40(sp)
   193c4:	f052                	c.sdsp	s4,32(sp)
   193c6:	e85a                	c.sdsp	s6,16(sp)
   193c8:	e45e                	c.sdsp	s7,8(sp)
   193ca:	8ff9                	c.and	a5,a4
   193cc:	8ab2                	c.mv	s5,a2
   193ce:	c3d1                	c.beqz	a5,19452 <__sprint_r.part.0+0xa2>
   193d0:	6a1c                	c.ld	a5,16(a2)
   193d2:	00063b03          	ld	s6,0(a2)
   193d6:	892e                	c.mv	s2,a1
   193d8:	89aa                	c.mv	s3,a0
   193da:	5a7d                	c.li	s4,-1
   193dc:	cbad                	c.beqz	a5,1944e <__sprint_r.part.0+0x9e>
   193de:	008b3483          	ld	s1,8(s6)
   193e2:	000b3403          	ld	s0,0(s6)
   193e6:	8089                	c.srli	s1,0x2
   193e8:	00048b9b          	addiw	s7,s1,0
   193ec:	05705a63          	bge	zero,s7,19440 <__sprint_r.part.0+0x90>
   193f0:	34fd                	c.addiw	s1,-1
   193f2:	02049793          	slli	a5,s1,0x20
   193f6:	01e7d493          	srli	s1,a5,0x1e
   193fa:	00440793          	addi	a5,s0,4
   193fe:	94be                	c.add	s1,a5
   19400:	a019                	c.j	19406 <__sprint_r.part.0+0x56>
   19402:	02848d63          	beq	s1,s0,1943c <__sprint_r.part.0+0x8c>
   19406:	400c                	c.lw	a1,0(s0)
   19408:	864a                	c.mv	a2,s2
   1940a:	854e                	c.mv	a0,s3
   1940c:	00001097          	auipc	ra,0x1
   19410:	200080e7          	jalr	ra,512(ra) # 1a60c <_fputwc_r>
   19414:	2501                	c.addiw	a0,0
   19416:	0411                	c.addi	s0,4
   19418:	ff4515e3          	bne	a0,s4,19402 <__sprint_r.part.0+0x52>
   1941c:	557d                	c.li	a0,-1
   1941e:	60a6                	c.ldsp	ra,72(sp)
   19420:	6406                	c.ldsp	s0,64(sp)
   19422:	000ab823          	sd	zero,16(s5)
   19426:	000aa423          	sw	zero,8(s5)
   1942a:	74e2                	c.ldsp	s1,56(sp)
   1942c:	7942                	c.ldsp	s2,48(sp)
   1942e:	79a2                	c.ldsp	s3,40(sp)
   19430:	7a02                	c.ldsp	s4,32(sp)
   19432:	6ae2                	c.ldsp	s5,24(sp)
   19434:	6b42                	c.ldsp	s6,16(sp)
   19436:	6ba2                	c.ldsp	s7,8(sp)
   19438:	6161                	c.addi16sp	sp,80
   1943a:	8082                	c.jr	ra
   1943c:	010ab783          	ld	a5,16(s5)
   19440:	0b8a                	c.slli	s7,0x2
   19442:	417787b3          	sub	a5,a5,s7
   19446:	00fab823          	sd	a5,16(s5)
   1944a:	0b41                	c.addi	s6,16
   1944c:	fbc9                	c.bnez	a5,193de <__sprint_r.part.0+0x2e>
   1944e:	4501                	c.li	a0,0
   19450:	b7f9                	c.j	1941e <__sprint_r.part.0+0x6e>
   19452:	ffffa097          	auipc	ra,0xffffa
   19456:	a02080e7          	jalr	ra,-1534(ra) # 12e54 <__sfvwrite_r>
   1945a:	b7d1                	c.j	1941e <__sprint_r.part.0+0x6e>

000000000001945c <__sprint_r>:
   1945c:	6a18                	c.ld	a4,16(a2)
   1945e:	c709                	c.beqz	a4,19468 <__sprint_r+0xc>
   19460:	00000317          	auipc	t1,0x0
   19464:	f5030067          	jalr	zero,-176(t1) # 193b0 <__sprint_r.part.0>
   19468:	00062423          	sw	zero,8(a2)
   1946c:	4501                	c.li	a0,0
   1946e:	8082                	c.jr	ra

0000000000019470 <_vfiprintf_r>:
   19470:	7145                	c.addi16sp	sp,-464
   19472:	fb4a                	c.sdsp	s2,432(sp)
   19474:	f74e                	c.sdsp	s3,424(sp)
   19476:	eb5a                	c.sdsp	s6,400(sp)
   19478:	f6ee                	c.sdsp	s11,360(sp)
   1947a:	e786                	c.sdsp	ra,456(sp)
   1947c:	e3a2                	c.sdsp	s0,448(sp)
   1947e:	ff26                	c.sdsp	s1,440(sp)
   19480:	f352                	c.sdsp	s4,416(sp)
   19482:	ef56                	c.sdsp	s5,408(sp)
   19484:	e75e                	c.sdsp	s7,392(sp)
   19486:	e362                	c.sdsp	s8,384(sp)
   19488:	fee6                	c.sdsp	s9,376(sp)
   1948a:	faea                	c.sdsp	s10,368(sp)
   1948c:	89aa                	c.mv	s3,a0
   1948e:	892e                	c.mv	s2,a1
   19490:	8db2                	c.mv	s11,a2
   19492:	8b36                	c.mv	s6,a3
   19494:	c501                	c.beqz	a0,1949c <_vfiprintf_r+0x2c>
   19496:	493c                	c.lw	a5,80(a0)
   19498:	2e078a63          	beq	a5,zero,1978c <_vfiprintf_r+0x31c>
   1949c:	01091703          	lh	a4,16(s2)
   194a0:	6689                	c.lui	a3,0x2
   194a2:	03071793          	slli	a5,a4,0x30
   194a6:	93c1                	c.srli	a5,0x30
   194a8:	00d7f633          	and	a2,a5,a3
   194ac:	e215                	c.bnez	a2,194d0 <_vfiprintf_r+0x60>
   194ae:	0ac92603          	lw	a2,172(s2)
   194b2:	00d767b3          	or	a5,a4,a3
   194b6:	0107979b          	slliw	a5,a5,0x10
   194ba:	7779                	c.lui	a4,0xffffe
   194bc:	4107d79b          	sraiw	a5,a5,0x10
   194c0:	177d                	c.addi	a4,-1
   194c2:	8f71                	c.and	a4,a2
   194c4:	00f91823          	sh	a5,16(s2)
   194c8:	17c2                	c.slli	a5,0x30
   194ca:	0ae92623          	sw	a4,172(s2)
   194ce:	93c1                	c.srli	a5,0x30
   194d0:	0087f713          	andi	a4,a5,8
   194d4:	24070d63          	beq	a4,zero,1972e <_vfiprintf_r+0x2be>
   194d8:	01893703          	ld	a4,24(s2)
   194dc:	24070963          	beq	a4,zero,1972e <_vfiprintf_r+0x2be>
   194e0:	8be9                	c.andi	a5,26
   194e2:	4729                	c.li	a4,10
   194e4:	26e78363          	beq	a5,a4,1974a <_vfiprintf_r+0x2da>
   194e8:	77e1                	c.lui	a5,0xffff8
   194ea:	1184                	c.addi4spn	s1,sp,224
   194ec:	8307c793          	xori	a5,a5,-2000
   194f0:	f0a6                	c.sdsp	s1,96(sp)
   194f2:	f882                	c.sdsp	zero,112(sp)
   194f4:	d482                	c.swsp	zero,104(sp)
   194f6:	8726                	c.mv	a4,s1
   194f8:	e802                	c.sdsp	zero,16(sp)
   194fa:	f002                	c.sdsp	zero,32(sp)
   194fc:	f802                	c.sdsp	zero,48(sp)
   194fe:	f402                	c.sdsp	zero,40(sp)
   19500:	e402                	c.sdsp	zero,8(sp)
   19502:	fc3e                	c.sdsp	a5,56(sp)
   19504:	000dc783          	lbu	a5,0(s11)
   19508:	1e078463          	beq	a5,zero,196f0 <_vfiprintf_r+0x280>
   1950c:	846e                	c.mv	s0,s11
   1950e:	02500693          	addi	a3,zero,37
   19512:	26d78663          	beq	a5,a3,1977e <_vfiprintf_r+0x30e>
   19516:	00144783          	lbu	a5,1(s0)
   1951a:	0405                	c.addi	s0,1
   1951c:	fbfd                	c.bnez	a5,19512 <_vfiprintf_r+0xa2>
   1951e:	41b40bbb          	subw	s7,s0,s11
   19522:	1c0b8763          	beq	s7,zero,196f0 <_vfiprintf_r+0x280>
   19526:	57a6                	c.lwsp	a5,104(sp)
   19528:	76c6                	c.ldsp	a3,112(sp)
   1952a:	01b73023          	sd	s11,0(a4) # ffffffffffffe000 <__BSS_END__+0xfffffffffffddc80>
   1952e:	0017861b          	addiw	a2,a5,1
   19532:	96de                	c.add	a3,s7
   19534:	01773423          	sd	s7,8(a4)
   19538:	f8b6                	c.sdsp	a3,112(sp)
   1953a:	d4b2                	c.swsp	a2,104(sp)
   1953c:	479d                	c.li	a5,7
   1953e:	0741                	c.addi	a4,16
   19540:	00c7de63          	bge	a5,a2,1955c <_vfiprintf_r+0xec>
   19544:	100686e3          	beq	a3,zero,19e50 <_vfiprintf_r+0x9e0>
   19548:	1090                	c.addi4spn	a2,sp,96
   1954a:	85ca                	c.mv	a1,s2
   1954c:	854e                	c.mv	a0,s3
   1954e:	00000097          	auipc	ra,0x0
   19552:	e62080e7          	jalr	ra,-414(ra) # 193b0 <__sprint_r.part.0>
   19556:	1a051063          	bne	a0,zero,196f6 <_vfiprintf_r+0x286>
   1955a:	8726                	c.mv	a4,s1
   1955c:	66a2                	c.ldsp	a3,8(sp)
   1955e:	00044783          	lbu	a5,0(s0)
   19562:	017686bb          	addw	a3,a3,s7
   19566:	e436                	c.sdsp	a3,8(sp)
   19568:	18078463          	beq	a5,zero,196f0 <_vfiprintf_r+0x280>
   1956c:	00144783          	lbu	a5,1(s0)
   19570:	00140d93          	addi	s11,s0,1
   19574:	04010ba3          	sb	zero,87(sp)
   19578:	5d7d                	c.li	s10,-1
   1957a:	4b81                	c.li	s7,0
   1957c:	4a81                	c.li	s5,0
   1957e:	4c25                	c.li	s8,9
   19580:	02a00c93          	addi	s9,zero,42
   19584:	843a                	c.mv	s0,a4
   19586:	0d85                	c.addi	s11,1
   19588:	2781                	c.addiw	a5,0
   1958a:	05a00593          	addi	a1,zero,90
   1958e:	fe07869b          	addiw	a3,a5,-32
   19592:	0006861b          	addiw	a2,a3,0
   19596:	04c5e863          	bltu	a1,a2,195e6 <_vfiprintf_r+0x176>
   1959a:	02069713          	slli	a4,a3,0x20
   1959e:	01e75693          	srli	a3,a4,0x1e
   195a2:	00004717          	auipc	a4,0x4
   195a6:	62670713          	addi	a4,a4,1574 # 1dbc8 <zeroes.0+0x10>
   195aa:	96ba                	c.add	a3,a4
   195ac:	4294                	c.lw	a3,0(a3)
   195ae:	96ba                	c.add	a3,a4
   195b0:	8682                	c.jr	a3
   195b2:	4b81                	c.li	s7,0
   195b4:	000dc603          	lbu	a2,0(s11)
   195b8:	002b969b          	slliw	a3,s7,0x2
   195bc:	01768bbb          	addw	s7,a3,s7
   195c0:	fd07879b          	addiw	a5,a5,-48
   195c4:	001b9b9b          	slliw	s7,s7,0x1
   195c8:	fd06069b          	addiw	a3,a2,-48
   195cc:	01778bbb          	addw	s7,a5,s7
   195d0:	0d85                	c.addi	s11,1
   195d2:	0006079b          	addiw	a5,a2,0
   195d6:	fcdc7fe3          	bgeu	s8,a3,195b4 <_vfiprintf_r+0x144>
   195da:	fe07869b          	addiw	a3,a5,-32
   195de:	0006861b          	addiw	a2,a3,0
   195e2:	fac5fce3          	bgeu	a1,a2,1959a <_vfiprintf_r+0x12a>
   195e6:	8722                	c.mv	a4,s0
   195e8:	10078463          	beq	a5,zero,196f0 <_vfiprintf_r+0x280>
   195ec:	06f10c23          	sb	a5,120(sp)
   195f0:	04010ba3          	sb	zero,87(sp)
   195f4:	4c85                	c.li	s9,1
   195f6:	4c05                	c.li	s8,1
   195f8:	07810a13          	addi	s4,sp,120
   195fc:	4d01                	c.li	s10,0
   195fe:	002afe93          	andi	t4,s5,2
   19602:	000e8363          	beq	t4,zero,19608 <_vfiprintf_r+0x198>
   19606:	2c89                	c.addiw	s9,2
   19608:	56a6                	c.lwsp	a3,104(sp)
   1960a:	084af813          	andi	a6,s5,132
   1960e:	77c6                	c.ldsp	a5,112(sp)
   19610:	0016851b          	addiw	a0,a3,1
   19614:	862a                	c.mv	a2,a0
   19616:	00081663          	bne	a6,zero,19622 <_vfiprintf_r+0x1b2>
   1961a:	419b843b          	subw	s0,s7,s9
   1961e:	6a804863          	blt	zero,s0,19cce <_vfiprintf_r+0x85e>
   19622:	05714603          	lbu	a2,87(sp)
   19626:	01070593          	addi	a1,a4,16
   1962a:	c205                	c.beqz	a2,1964a <_vfiprintf_r+0x1da>
   1962c:	05710693          	addi	a3,sp,87
   19630:	e314                	c.sd	a3,0(a4)
   19632:	0785                	c.addi	a5,1
   19634:	4685                	c.li	a3,1
   19636:	e714                	c.sd	a3,8(a4)
   19638:	f8be                	c.sdsp	a5,112(sp)
   1963a:	d4aa                	c.swsp	a0,104(sp)
   1963c:	471d                	c.li	a4,7
   1963e:	60a74d63          	blt	a4,a0,19c58 <_vfiprintf_r+0x7e8>
   19642:	86aa                	c.mv	a3,a0
   19644:	872e                	c.mv	a4,a1
   19646:	2505                	c.addiw	a0,1
   19648:	05c1                	c.addi	a1,16
   1964a:	020e8e63          	beq	t4,zero,19686 <_vfiprintf_r+0x216>
   1964e:	08b4                	c.addi4spn	a3,sp,88
   19650:	e314                	c.sd	a3,0(a4)
   19652:	0789                	c.addi	a5,2
   19654:	4689                	c.li	a3,2
   19656:	e714                	c.sd	a3,8(a4)
   19658:	f8be                	c.sdsp	a5,112(sp)
   1965a:	d4aa                	c.swsp	a0,104(sp)
   1965c:	471d                	c.li	a4,7
   1965e:	64a75163          	bge	a4,a0,19ca0 <_vfiprintf_r+0x830>
   19662:	000782e3          	beq	a5,zero,19e66 <_vfiprintf_r+0x9f6>
   19666:	1090                	c.addi4spn	a2,sp,96
   19668:	85ca                	c.mv	a1,s2
   1966a:	854e                	c.mv	a0,s3
   1966c:	ec42                	c.sdsp	a6,24(sp)
   1966e:	00000097          	auipc	ra,0x0
   19672:	d42080e7          	jalr	ra,-702(ra) # 193b0 <__sprint_r.part.0>
   19676:	e141                	c.bnez	a0,196f6 <_vfiprintf_r+0x286>
   19678:	56a6                	c.lwsp	a3,104(sp)
   1967a:	77c6                	c.ldsp	a5,112(sp)
   1967c:	6862                	c.ldsp	a6,24(sp)
   1967e:	198c                	c.addi4spn	a1,sp,240
   19680:	0016851b          	addiw	a0,a3,1
   19684:	8726                	c.mv	a4,s1
   19686:	08000613          	addi	a2,zero,128
   1968a:	46c80263          	beq	a6,a2,19aee <_vfiprintf_r+0x67e>
   1968e:	418d043b          	subw	s0,s10,s8
   19692:	50804c63          	blt	zero,s0,19baa <_vfiprintf_r+0x73a>
   19696:	97e2                	c.add	a5,s8
   19698:	01473023          	sd	s4,0(a4)
   1969c:	01873423          	sd	s8,8(a4)
   196a0:	f8be                	c.sdsp	a5,112(sp)
   196a2:	d4aa                	c.swsp	a0,104(sp)
   196a4:	471d                	c.li	a4,7
   196a6:	00a75e63          	bge	a4,a0,196c2 <_vfiprintf_r+0x252>
   196aa:	6c078263          	beq	a5,zero,19d6e <_vfiprintf_r+0x8fe>
   196ae:	1090                	c.addi4spn	a2,sp,96
   196b0:	85ca                	c.mv	a1,s2
   196b2:	854e                	c.mv	a0,s3
   196b4:	00000097          	auipc	ra,0x0
   196b8:	cfc080e7          	jalr	ra,-772(ra) # 193b0 <__sprint_r.part.0>
   196bc:	ed0d                	c.bnez	a0,196f6 <_vfiprintf_r+0x286>
   196be:	77c6                	c.ldsp	a5,112(sp)
   196c0:	85a6                	c.mv	a1,s1
   196c2:	004af893          	andi	a7,s5,4
   196c6:	00088663          	beq	a7,zero,196d2 <_vfiprintf_r+0x262>
   196ca:	419b843b          	subw	s0,s7,s9
   196ce:	6a804a63          	blt	zero,s0,19d82 <_vfiprintf_r+0x912>
   196d2:	875e                	c.mv	a4,s7
   196d4:	019bd363          	bge	s7,s9,196da <_vfiprintf_r+0x26a>
   196d8:	8766                	c.mv	a4,s9
   196da:	66a2                	c.ldsp	a3,8(sp)
   196dc:	9f35                	c.addw	a4,a3
   196de:	e43a                	c.sdsp	a4,8(sp)
   196e0:	54079e63          	bne	a5,zero,19c3c <_vfiprintf_r+0x7cc>
   196e4:	000dc783          	lbu	a5,0(s11)
   196e8:	d482                	c.swsp	zero,104(sp)
   196ea:	8726                	c.mv	a4,s1
   196ec:	e20790e3          	bne	a5,zero,1950c <_vfiprintf_r+0x9c>
   196f0:	77c6                	c.ldsp	a5,112(sp)
   196f2:	1c0795e3          	bne	a5,zero,1a0bc <_vfiprintf_r+0xc4c>
   196f6:	01095783          	lhu	a5,16(s2)
   196fa:	0407f793          	andi	a5,a5,64
   196fe:	200791e3          	bne	a5,zero,1a100 <_vfiprintf_r+0xc90>
   19702:	60be                	c.ldsp	ra,456(sp)
   19704:	641e                	c.ldsp	s0,448(sp)
   19706:	6522                	c.ldsp	a0,8(sp)
   19708:	74fa                	c.ldsp	s1,440(sp)
   1970a:	795a                	c.ldsp	s2,432(sp)
   1970c:	79ba                	c.ldsp	s3,424(sp)
   1970e:	7a1a                	c.ldsp	s4,416(sp)
   19710:	6afa                	c.ldsp	s5,408(sp)
   19712:	6b5a                	c.ldsp	s6,400(sp)
   19714:	6bba                	c.ldsp	s7,392(sp)
   19716:	6c1a                	c.ldsp	s8,384(sp)
   19718:	7cf6                	c.ldsp	s9,376(sp)
   1971a:	7d56                	c.ldsp	s10,368(sp)
   1971c:	7db6                	c.ldsp	s11,360(sp)
   1971e:	6179                	c.addi16sp	sp,464
   19720:	8082                	c.jr	ra
   19722:	010aea93          	ori	s5,s5,16
   19726:	000dc783          	lbu	a5,0(s11)
   1972a:	2a81                	c.addiw	s5,0
   1972c:	bda9                	c.j	19586 <_vfiprintf_r+0x116>
   1972e:	85ca                	c.mv	a1,s2
   19730:	854e                	c.mv	a0,s3
   19732:	ffff9097          	auipc	ra,0xffff9
   19736:	c9c080e7          	jalr	ra,-868(ra) # 123ce <__swsetup_r>
   1973a:	1c0513e3          	bne	a0,zero,1a100 <_vfiprintf_r+0xc90>
   1973e:	01095783          	lhu	a5,16(s2)
   19742:	4729                	c.li	a4,10
   19744:	8be9                	c.andi	a5,26
   19746:	dae791e3          	bne	a5,a4,194e8 <_vfiprintf_r+0x78>
   1974a:	01291783          	lh	a5,18(s2)
   1974e:	d807cde3          	blt	a5,zero,194e8 <_vfiprintf_r+0x78>
   19752:	641e                	c.ldsp	s0,448(sp)
   19754:	60be                	c.ldsp	ra,456(sp)
   19756:	74fa                	c.ldsp	s1,440(sp)
   19758:	7a1a                	c.ldsp	s4,416(sp)
   1975a:	6afa                	c.ldsp	s5,408(sp)
   1975c:	6bba                	c.ldsp	s7,392(sp)
   1975e:	6c1a                	c.ldsp	s8,384(sp)
   19760:	7cf6                	c.ldsp	s9,376(sp)
   19762:	7d56                	c.ldsp	s10,368(sp)
   19764:	86da                	c.mv	a3,s6
   19766:	866e                	c.mv	a2,s11
   19768:	6b5a                	c.ldsp	s6,400(sp)
   1976a:	7db6                	c.ldsp	s11,360(sp)
   1976c:	85ca                	c.mv	a1,s2
   1976e:	854e                	c.mv	a0,s3
   19770:	795a                	c.ldsp	s2,432(sp)
   19772:	79ba                	c.ldsp	s3,424(sp)
   19774:	6179                	c.addi16sp	sp,464
   19776:	00001317          	auipc	t1,0x1
   1977a:	9c830067          	jalr	zero,-1592(t1) # 1a13e <__sbprintf>
   1977e:	41b40bbb          	subw	s7,s0,s11
   19782:	da0b92e3          	bne	s7,zero,19526 <_vfiprintf_r+0xb6>
   19786:	00044783          	lbu	a5,0(s0)
   1978a:	bbf9                	c.j	19568 <_vfiprintf_r+0xf8>
   1978c:	ffff9097          	auipc	ra,0xffff9
   19790:	2ec080e7          	jalr	ra,748(ra) # 12a78 <__sinit>
   19794:	b321                	c.j	1949c <_vfiprintf_r+0x2c>
   19796:	000b3a03          	ld	s4,0(s6)
   1979a:	04010ba3          	sb	zero,87(sp)
   1979e:	8722                	c.mv	a4,s0
   197a0:	0b21                	c.addi	s6,8
   197a2:	060a09e3          	beq	s4,zero,1a014 <_vfiprintf_r+0xba4>
   197a6:	57fd                	c.li	a5,-1
   197a8:	ec22                	c.sdsp	s0,24(sp)
   197aa:	7efd0863          	beq	s10,a5,19f9a <_vfiprintf_r+0xb2a>
   197ae:	866a                	c.mv	a2,s10
   197b0:	4581                	c.li	a1,0
   197b2:	8552                	c.mv	a0,s4
   197b4:	ffffc097          	auipc	ra,0xffffc
   197b8:	658080e7          	jalr	ra,1624(ra) # 15e0c <memchr>
   197bc:	6762                	c.ldsp	a4,24(sp)
   197be:	100508e3          	beq	a0,zero,1a0ce <_vfiprintf_r+0xc5e>
   197c2:	41450c3b          	subw	s8,a0,s4
   197c6:	4d01                	c.li	s10,0
   197c8:	87ea                	c.mv	a5,s10
   197ca:	018d5363          	bge	s10,s8,197d0 <_vfiprintf_r+0x360>
   197ce:	87e2                	c.mv	a5,s8
   197d0:	05714683          	lbu	a3,87(sp)
   197d4:	00078c9b          	addiw	s9,a5,0
   197d8:	e20683e3          	beq	a3,zero,195fe <_vfiprintf_r+0x18e>
   197dc:	00178c9b          	addiw	s9,a5,1
   197e0:	bd39                	c.j	195fe <_vfiprintf_r+0x18e>
   197e2:	000b2783          	lw	a5,0(s6)
   197e6:	8722                	c.mv	a4,s0
   197e8:	04010ba3          	sb	zero,87(sp)
   197ec:	0b21                	c.addi	s6,8
   197ee:	06f10c23          	sb	a5,120(sp)
   197f2:	4c85                	c.li	s9,1
   197f4:	4c05                	c.li	s8,1
   197f6:	07810a13          	addi	s4,sp,120
   197fa:	b509                	c.j	195fc <_vfiprintf_r+0x18c>
   197fc:	8722                	c.mv	a4,s0
   197fe:	020af793          	andi	a5,s5,32
   19802:	008b0693          	addi	a3,s6,8
   19806:	e3a1                	c.bnez	a5,19846 <_vfiprintf_r+0x3d6>
   19808:	010af793          	andi	a5,s5,16
   1980c:	ef8d                	c.bnez	a5,19846 <_vfiprintf_r+0x3d6>
   1980e:	040af793          	andi	a5,s5,64
   19812:	040781e3          	beq	a5,zero,1a054 <_vfiprintf_r+0xbe4>
   19816:	000b1403          	lh	s0,0(s6)
   1981a:	87a2                	c.mv	a5,s0
   1981c:	0207ca63          	blt	a5,zero,19850 <_vfiprintf_r+0x3e0>
   19820:	57fd                	c.li	a5,-1
   19822:	8cd6                	c.mv	s9,s5
   19824:	8b36                	c.mv	s6,a3
   19826:	48fd0863          	beq	s10,a5,19cb6 <_vfiprintf_r+0x846>
   1982a:	f7faf893          	andi	a7,s5,-129
   1982e:	00088c9b          	addiw	s9,a7,0
   19832:	6e041463          	bne	s0,zero,19f1a <_vfiprintf_r+0xaaa>
   19836:	480d1363          	bne	s10,zero,19cbc <_vfiprintf_r+0x84c>
   1983a:	8ae6                	c.mv	s5,s9
   1983c:	4d01                	c.li	s10,0
   1983e:	4c01                	c.li	s8,0
   19840:	0dc10a13          	addi	s4,sp,220
   19844:	b751                	c.j	197c8 <_vfiprintf_r+0x358>
   19846:	000b3783          	ld	a5,0(s6)
   1984a:	843e                	c.mv	s0,a5
   1984c:	fc07dae3          	bge	a5,zero,19820 <_vfiprintf_r+0x3b0>
   19850:	02d00793          	addi	a5,zero,45
   19854:	04f10ba3          	sb	a5,87(sp)
   19858:	8b36                	c.mv	s6,a3
   1985a:	56fd                	c.li	a3,-1
   1985c:	40800433          	sub	s0,zero,s0
   19860:	8cd6                	c.mv	s9,s5
   19862:	4785                	c.li	a5,1
   19864:	08dd1a63          	bne	s10,a3,198f8 <_vfiprintf_r+0x488>
   19868:	4685                	c.li	a3,1
   1986a:	44d78663          	beq	a5,a3,19cb6 <_vfiprintf_r+0x846>
   1986e:	4689                	c.li	a3,2
   19870:	24d78d63          	beq	a5,a3,19aca <_vfiprintf_r+0x65a>
   19874:	0dc10a13          	addi	s4,sp,220
   19878:	00747793          	andi	a5,s0,7
   1987c:	03078793          	addi	a5,a5,48 # ffffffffffff8030 <__BSS_END__+0xfffffffffffd7cb0>
   19880:	fefa0fa3          	sb	a5,-1(s4)
   19884:	800d                	c.srli	s0,0x3
   19886:	86d2                	c.mv	a3,s4
   19888:	1a7d                	c.addi	s4,-1
   1988a:	f47d                	c.bnez	s0,19878 <_vfiprintf_r+0x408>
   1988c:	001cf613          	andi	a2,s9,1
   19890:	24060a63          	beq	a2,zero,19ae4 <_vfiprintf_r+0x674>
   19894:	03000613          	addi	a2,zero,48
   19898:	24c78663          	beq	a5,a2,19ae4 <_vfiprintf_r+0x674>
   1989c:	16f9                	c.addi	a3,-2
   1989e:	09fc                	c.addi4spn	a5,sp,220
   198a0:	feca0fa3          	sb	a2,-1(s4)
   198a4:	40d78c3b          	subw	s8,a5,a3
   198a8:	8ae6                	c.mv	s5,s9
   198aa:	8a36                	c.mv	s4,a3
   198ac:	bf31                	c.j	197c8 <_vfiprintf_r+0x358>
   198ae:	000dc783          	lbu	a5,0(s11)
   198b2:	06800693          	addi	a3,zero,104
   198b6:	74d78763          	beq	a5,a3,1a004 <_vfiprintf_r+0xb94>
   198ba:	040aea93          	ori	s5,s5,64
   198be:	2a81                	c.addiw	s5,0
   198c0:	b1d9                	c.j	19586 <_vfiprintf_r+0x116>
   198c2:	010ae893          	ori	a7,s5,16
   198c6:	8722                	c.mv	a4,s0
   198c8:	00088a9b          	addiw	s5,a7,0
   198cc:	020af793          	andi	a5,s5,32
   198d0:	008b0693          	addi	a3,s6,8
   198d4:	e789                	c.bnez	a5,198de <_vfiprintf_r+0x46e>
   198d6:	010af793          	andi	a5,s5,16
   198da:	62078063          	beq	a5,zero,19efa <_vfiprintf_r+0xa8a>
   198de:	000b3403          	ld	s0,0(s6)
   198e2:	bffaf893          	andi	a7,s5,-1025
   198e6:	00088c9b          	addiw	s9,a7,0
   198ea:	8b36                	c.mv	s6,a3
   198ec:	4781                	c.li	a5,0
   198ee:	04010ba3          	sb	zero,87(sp)
   198f2:	56fd                	c.li	a3,-1
   198f4:	f6dd0ae3          	beq	s10,a3,19868 <_vfiprintf_r+0x3f8>
   198f8:	f7fcf893          	andi	a7,s9,-129
   198fc:	00088a9b          	addiw	s5,a7,0
   19900:	3a041763          	bne	s0,zero,19cae <_vfiprintf_r+0x83e>
   19904:	1a0d1c63          	bne	s10,zero,19abc <_vfiprintf_r+0x64c>
   19908:	fb95                	c.bnez	a5,1983c <_vfiprintf_r+0x3cc>
   1990a:	001cfc13          	andi	s8,s9,1
   1990e:	0dc10a13          	addi	s4,sp,220
   19912:	ea0c0be3          	beq	s8,zero,197c8 <_vfiprintf_r+0x358>
   19916:	03000793          	addi	a5,zero,48
   1991a:	0cf10da3          	sb	a5,219(sp)
   1991e:	0db10a13          	addi	s4,sp,219
   19922:	b55d                	c.j	197c8 <_vfiprintf_r+0x358>
   19924:	010ae893          	ori	a7,s5,16
   19928:	8722                	c.mv	a4,s0
   1992a:	00088a9b          	addiw	s5,a7,0
   1992e:	bdc1                	c.j	197fe <_vfiprintf_r+0x38e>
   19930:	010ae893          	ori	a7,s5,16
   19934:	8722                	c.mv	a4,s0
   19936:	00088c9b          	addiw	s9,a7,0
   1993a:	020cf793          	andi	a5,s9,32
   1993e:	008b0693          	addi	a3,s6,8
   19942:	ef99                	c.bnez	a5,19960 <_vfiprintf_r+0x4f0>
   19944:	010cf793          	andi	a5,s9,16
   19948:	ef81                	c.bnez	a5,19960 <_vfiprintf_r+0x4f0>
   1994a:	040cf793          	andi	a5,s9,64
   1994e:	000b2403          	lw	s0,0(s6)
   19952:	6e078363          	beq	a5,zero,1a038 <_vfiprintf_r+0xbc8>
   19956:	1442                	c.slli	s0,0x30
   19958:	9041                	c.srli	s0,0x30
   1995a:	8b36                	c.mv	s6,a3
   1995c:	4785                	c.li	a5,1
   1995e:	bf41                	c.j	198ee <_vfiprintf_r+0x47e>
   19960:	000b3403          	ld	s0,0(s6)
   19964:	4785                	c.li	a5,1
   19966:	8b36                	c.mv	s6,a3
   19968:	b759                	c.j	198ee <_vfiprintf_r+0x47e>
   1996a:	080aea93          	ori	s5,s5,128
   1996e:	000dc783          	lbu	a5,0(s11)
   19972:	2a81                	c.addiw	s5,0
   19974:	b909                	c.j	19586 <_vfiprintf_r+0x116>
   19976:	000dc783          	lbu	a5,0(s11)
   1997a:	001d8693          	addi	a3,s11,1
   1997e:	79978863          	beq	a5,s9,1a10e <_vfiprintf_r+0xc9e>
   19982:	fd07861b          	addiw	a2,a5,-48
   19986:	8db6                	c.mv	s11,a3
   19988:	4d01                	c.li	s10,0
   1998a:	c0cc62e3          	bltu	s8,a2,1958e <_vfiprintf_r+0x11e>
   1998e:	000dc783          	lbu	a5,0(s11)
   19992:	002d169b          	slliw	a3,s10,0x2
   19996:	01a68d3b          	addw	s10,a3,s10
   1999a:	001d1d1b          	slliw	s10,s10,0x1
   1999e:	00cd0d3b          	addw	s10,s10,a2
   199a2:	fd07861b          	addiw	a2,a5,-48
   199a6:	0d85                	c.addi	s11,1
   199a8:	fecc73e3          	bgeu	s8,a2,1998e <_vfiprintf_r+0x51e>
   199ac:	b6cd                	c.j	1958e <_vfiprintf_r+0x11e>
   199ae:	000dc783          	lbu	a5,0(s11)
   199b2:	004aea93          	ori	s5,s5,4
   199b6:	2a81                	c.addiw	s5,0
   199b8:	b6f9                	c.j	19586 <_vfiprintf_r+0x116>
   199ba:	02b00693          	addi	a3,zero,43
   199be:	000dc783          	lbu	a5,0(s11)
   199c2:	04d10ba3          	sb	a3,87(sp)
   199c6:	b6c1                	c.j	19586 <_vfiprintf_r+0x116>
   199c8:	000b2b83          	lw	s7,0(s6)
   199cc:	000dc783          	lbu	a5,0(s11)
   199d0:	0b21                	c.addi	s6,8
   199d2:	ba0bdae3          	bge	s7,zero,19586 <_vfiprintf_r+0x116>
   199d6:	41700bbb          	subw	s7,zero,s7
   199da:	bfe1                	c.j	199b2 <_vfiprintf_r+0x542>
   199dc:	854e                	c.mv	a0,s3
   199de:	ffffc097          	auipc	ra,0xffffc
   199e2:	ae0080e7          	jalr	ra,-1312(ra) # 154be <_localeconv_r>
   199e6:	651c                	c.ld	a5,8(a0)
   199e8:	853e                	c.mv	a0,a5
   199ea:	f43e                	c.sdsp	a5,40(sp)
   199ec:	ffff7097          	auipc	ra,0xffff7
   199f0:	ade080e7          	jalr	ra,-1314(ra) # 104ca <strlen>
   199f4:	87aa                	c.mv	a5,a0
   199f6:	854e                	c.mv	a0,s3
   199f8:	8a3e                	c.mv	s4,a5
   199fa:	f83e                	c.sdsp	a5,48(sp)
   199fc:	ffffc097          	auipc	ra,0xffffc
   19a00:	ac2080e7          	jalr	ra,-1342(ra) # 154be <_localeconv_r>
   19a04:	6918                	c.ld	a4,16(a0)
   19a06:	000dc783          	lbu	a5,0(s11)
   19a0a:	f03a                	c.sdsp	a4,32(sp)
   19a0c:	b60a0de3          	beq	s4,zero,19586 <_vfiprintf_r+0x116>
   19a10:	b6070be3          	beq	a4,zero,19586 <_vfiprintf_r+0x116>
   19a14:	00074683          	lbu	a3,0(a4)
   19a18:	b60687e3          	beq	a3,zero,19586 <_vfiprintf_r+0x116>
   19a1c:	400aea93          	ori	s5,s5,1024
   19a20:	2a81                	c.addiw	s5,0
   19a22:	b695                	c.j	19586 <_vfiprintf_r+0x116>
   19a24:	001aea93          	ori	s5,s5,1
   19a28:	000dc783          	lbu	a5,0(s11)
   19a2c:	2a81                	c.addiw	s5,0
   19a2e:	bea1                	c.j	19586 <_vfiprintf_r+0x116>
   19a30:	05714683          	lbu	a3,87(sp)
   19a34:	000dc783          	lbu	a5,0(s11)
   19a38:	b40697e3          	bne	a3,zero,19586 <_vfiprintf_r+0x116>
   19a3c:	02000693          	addi	a3,zero,32
   19a40:	04d10ba3          	sb	a3,87(sp)
   19a44:	b689                	c.j	19586 <_vfiprintf_r+0x116>
   19a46:	020aea93          	ori	s5,s5,32
   19a4a:	000dc783          	lbu	a5,0(s11)
   19a4e:	2a81                	c.addiw	s5,0
   19a50:	be1d                	c.j	19586 <_vfiprintf_r+0x116>
   19a52:	77e2                	c.ldsp	a5,56(sp)
   19a54:	002ae893          	ori	a7,s5,2
   19a58:	8722                	c.mv	a4,s0
   19a5a:	04f11c23          	sh	a5,88(sp)
   19a5e:	00004797          	auipc	a5,0x4
   19a62:	88278793          	addi	a5,a5,-1918 # 1d2e0 <__clzdi2+0xc8>
   19a66:	000b3403          	ld	s0,0(s6)
   19a6a:	e83e                	c.sdsp	a5,16(sp)
   19a6c:	00088c9b          	addiw	s9,a7,0
   19a70:	0b21                	c.addi	s6,8
   19a72:	4789                	c.li	a5,2
   19a74:	bdad                	c.j	198ee <_vfiprintf_r+0x47e>
   19a76:	020af793          	andi	a5,s5,32
   19a7a:	000b3683          	ld	a3,0(s6)
   19a7e:	8722                	c.mv	a4,s0
   19a80:	0b21                	c.addi	s6,8
   19a82:	e385                	c.bnez	a5,19aa2 <_vfiprintf_r+0x632>
   19a84:	010af793          	andi	a5,s5,16
   19a88:	ef89                	c.bnez	a5,19aa2 <_vfiprintf_r+0x632>
   19a8a:	040af793          	andi	a5,s5,64
   19a8e:	60079263          	bne	a5,zero,1a092 <_vfiprintf_r+0xc22>
   19a92:	200af893          	andi	a7,s5,512
   19a96:	67a2                	c.ldsp	a5,8(sp)
   19a98:	66088863          	beq	a7,zero,1a108 <_vfiprintf_r+0xc98>
   19a9c:	00f68023          	sb	a5,0(a3) # 2000 <register_fini-0xe0b0>
   19aa0:	b495                	c.j	19504 <_vfiprintf_r+0x94>
   19aa2:	67a2                	c.ldsp	a5,8(sp)
   19aa4:	e29c                	c.sd	a5,0(a3)
   19aa6:	bcb9                	c.j	19504 <_vfiprintf_r+0x94>
   19aa8:	000dc783          	lbu	a5,0(s11)
   19aac:	06c00693          	addi	a3,zero,108
   19ab0:	54d78263          	beq	a5,a3,19ff4 <_vfiprintf_r+0xb84>
   19ab4:	010aea93          	ori	s5,s5,16
   19ab8:	2a81                	c.addiw	s5,0
   19aba:	b4f1                	c.j	19586 <_vfiprintf_r+0x116>
   19abc:	4685                	c.li	a3,1
   19abe:	62d78863          	beq	a5,a3,1a0ee <_vfiprintf_r+0xc7e>
   19ac2:	4689                	c.li	a3,2
   19ac4:	8cd6                	c.mv	s9,s5
   19ac6:	dad797e3          	bne	a5,a3,19874 <_vfiprintf_r+0x404>
   19aca:	66c2                	c.ldsp	a3,16(sp)
   19acc:	0dc10a13          	addi	s4,sp,220
   19ad0:	00f47793          	andi	a5,s0,15
   19ad4:	97b6                	c.add	a5,a3
   19ad6:	0007c783          	lbu	a5,0(a5)
   19ada:	8011                	c.srli	s0,0x4
   19adc:	1a7d                	c.addi	s4,-1
   19ade:	00fa0023          	sb	a5,0(s4)
   19ae2:	f47d                	c.bnez	s0,19ad0 <_vfiprintf_r+0x660>
   19ae4:	09fc                	c.addi4spn	a5,sp,220
   19ae6:	41478c3b          	subw	s8,a5,s4
   19aea:	8ae6                	c.mv	s5,s9
   19aec:	b9f1                	c.j	197c8 <_vfiprintf_r+0x358>
   19aee:	419b8e3b          	subw	t3,s7,s9
   19af2:	b9c05ee3          	bge	zero,t3,1968e <_vfiprintf_r+0x21e>
   19af6:	4641                	c.li	a2,16
   19af8:	5fc65d63          	bge	a2,t3,1a0f2 <_vfiprintf_r+0xc82>
   19afc:	00004317          	auipc	t1,0x4
   19b00:	24c30313          	addi	t1,t1,588 # 1dd48 <zeroes.0>
   19b04:	ec52                	c.sdsp	s4,24(sp)
   19b06:	e0d6                	c.sdsp	s5,64(sp)
   19b08:	8a4a                	c.mv	s4,s2
   19b0a:	4441                	c.li	s0,16
   19b0c:	4e9d                	c.li	t4,7
   19b0e:	8972                	c.mv	s2,t3
   19b10:	8a9a                	c.mv	s5,t1
   19b12:	a801                	c.j	19b22 <_vfiprintf_r+0x6b2>
   19b14:	0026861b          	addiw	a2,a3,2
   19b18:	0741                	c.addi	a4,16
   19b1a:	86aa                	c.mv	a3,a0
   19b1c:	3941                	c.addiw	s2,-16
   19b1e:	05245063          	bge	s0,s2,19b5e <_vfiprintf_r+0x6ee>
   19b22:	0016851b          	addiw	a0,a3,1
   19b26:	07c1                	c.addi	a5,16
   19b28:	01573023          	sd	s5,0(a4)
   19b2c:	e700                	c.sd	s0,8(a4)
   19b2e:	f8be                	c.sdsp	a5,112(sp)
   19b30:	d4aa                	c.swsp	a0,104(sp)
   19b32:	feaed1e3          	bge	t4,a0,19b14 <_vfiprintf_r+0x6a4>
   19b36:	10078d63          	beq	a5,zero,19c50 <_vfiprintf_r+0x7e0>
   19b3a:	1090                	c.addi4spn	a2,sp,96
   19b3c:	85d2                	c.mv	a1,s4
   19b3e:	854e                	c.mv	a0,s3
   19b40:	00000097          	auipc	ra,0x0
   19b44:	870080e7          	jalr	ra,-1936(ra) # 193b0 <__sprint_r.part.0>
   19b48:	30051263          	bne	a0,zero,19e4c <_vfiprintf_r+0x9dc>
   19b4c:	56a6                	c.lwsp	a3,104(sp)
   19b4e:	3941                	c.addiw	s2,-16
   19b50:	77c6                	c.ldsp	a5,112(sp)
   19b52:	8726                	c.mv	a4,s1
   19b54:	0016861b          	addiw	a2,a3,1
   19b58:	4e9d                	c.li	t4,7
   19b5a:	fd2444e3          	blt	s0,s2,19b22 <_vfiprintf_r+0x6b2>
   19b5e:	8e4a                	c.mv	t3,s2
   19b60:	8356                	c.mv	t1,s5
   19b62:	8952                	c.mv	s2,s4
   19b64:	6a86                	c.ldsp	s5,64(sp)
   19b66:	6a62                	c.ldsp	s4,24(sp)
   19b68:	01070e93          	addi	t4,a4,16
   19b6c:	97f2                	c.add	a5,t3
   19b6e:	00673023          	sd	t1,0(a4)
   19b72:	01c73423          	sd	t3,8(a4)
   19b76:	f8be                	c.sdsp	a5,112(sp)
   19b78:	d4b2                	c.swsp	a2,104(sp)
   19b7a:	471d                	c.li	a4,7
   19b7c:	36c75763          	bge	a4,a2,19eea <_vfiprintf_r+0xa7a>
   19b80:	4e078863          	beq	a5,zero,1a070 <_vfiprintf_r+0xc00>
   19b84:	1090                	c.addi4spn	a2,sp,96
   19b86:	85ca                	c.mv	a1,s2
   19b88:	854e                	c.mv	a0,s3
   19b8a:	00000097          	auipc	ra,0x0
   19b8e:	826080e7          	jalr	ra,-2010(ra) # 193b0 <__sprint_r.part.0>
   19b92:	b60512e3          	bne	a0,zero,196f6 <_vfiprintf_r+0x286>
   19b96:	56a6                	c.lwsp	a3,104(sp)
   19b98:	418d043b          	subw	s0,s10,s8
   19b9c:	77c6                	c.ldsp	a5,112(sp)
   19b9e:	198c                	c.addi4spn	a1,sp,240
   19ba0:	0016851b          	addiw	a0,a3,1
   19ba4:	8726                	c.mv	a4,s1
   19ba6:	ae8058e3          	bge	zero,s0,19696 <_vfiprintf_r+0x226>
   19baa:	4641                	c.li	a2,16
   19bac:	4a865c63          	bge	a2,s0,1a064 <_vfiprintf_r+0xbf4>
   19bb0:	00004317          	auipc	t1,0x4
   19bb4:	19830313          	addi	t1,t1,408 # 1dd48 <zeroes.0>
   19bb8:	ec52                	c.sdsp	s4,24(sp)
   19bba:	4d41                	c.li	s10,16
   19bbc:	8a4a                	c.mv	s4,s2
   19bbe:	4e1d                	c.li	t3,7
   19bc0:	891a                	c.mv	s2,t1
   19bc2:	a801                	c.j	19bd2 <_vfiprintf_r+0x762>
   19bc4:	0026851b          	addiw	a0,a3,2
   19bc8:	0741                	c.addi	a4,16
   19bca:	86c2                	c.mv	a3,a6
   19bcc:	3441                	c.addiw	s0,-16
   19bce:	048d5063          	bge	s10,s0,19c0e <_vfiprintf_r+0x79e>
   19bd2:	0016881b          	addiw	a6,a3,1
   19bd6:	07c1                	c.addi	a5,16
   19bd8:	01273023          	sd	s2,0(a4)
   19bdc:	01a73423          	sd	s10,8(a4)
   19be0:	f8be                	c.sdsp	a5,112(sp)
   19be2:	d4c2                	c.swsp	a6,104(sp)
   19be4:	ff0e50e3          	bge	t3,a6,19bc4 <_vfiprintf_r+0x754>
   19be8:	c7b1                	c.beqz	a5,19c34 <_vfiprintf_r+0x7c4>
   19bea:	1090                	c.addi4spn	a2,sp,96
   19bec:	85d2                	c.mv	a1,s4
   19bee:	854e                	c.mv	a0,s3
   19bf0:	fffff097          	auipc	ra,0xfffff
   19bf4:	7c0080e7          	jalr	ra,1984(ra) # 193b0 <__sprint_r.part.0>
   19bf8:	24051a63          	bne	a0,zero,19e4c <_vfiprintf_r+0x9dc>
   19bfc:	56a6                	c.lwsp	a3,104(sp)
   19bfe:	3441                	c.addiw	s0,-16
   19c00:	77c6                	c.ldsp	a5,112(sp)
   19c02:	8726                	c.mv	a4,s1
   19c04:	0016851b          	addiw	a0,a3,1
   19c08:	4e1d                	c.li	t3,7
   19c0a:	fc8d44e3          	blt	s10,s0,19bd2 <_vfiprintf_r+0x762>
   19c0e:	834a                	c.mv	t1,s2
   19c10:	8952                	c.mv	s2,s4
   19c12:	6a62                	c.ldsp	s4,24(sp)
   19c14:	01070693          	addi	a3,a4,16
   19c18:	97a2                	c.add	a5,s0
   19c1a:	00673023          	sd	t1,0(a4)
   19c1e:	e700                	c.sd	s0,8(a4)
   19c20:	f8be                	c.sdsp	a5,112(sp)
   19c22:	d4aa                	c.swsp	a0,104(sp)
   19c24:	471d                	c.li	a4,7
   19c26:	20a74263          	blt	a4,a0,19e2a <_vfiprintf_r+0x9ba>
   19c2a:	2505                	c.addiw	a0,1
   19c2c:	01068593          	addi	a1,a3,16
   19c30:	8736                	c.mv	a4,a3
   19c32:	b495                	c.j	19696 <_vfiprintf_r+0x226>
   19c34:	4505                	c.li	a0,1
   19c36:	4681                	c.li	a3,0
   19c38:	8726                	c.mv	a4,s1
   19c3a:	bf49                	c.j	19bcc <_vfiprintf_r+0x75c>
   19c3c:	1090                	c.addi4spn	a2,sp,96
   19c3e:	85ca                	c.mv	a1,s2
   19c40:	854e                	c.mv	a0,s3
   19c42:	fffff097          	auipc	ra,0xfffff
   19c46:	76e080e7          	jalr	ra,1902(ra) # 193b0 <__sprint_r.part.0>
   19c4a:	a8050de3          	beq	a0,zero,196e4 <_vfiprintf_r+0x274>
   19c4e:	b465                	c.j	196f6 <_vfiprintf_r+0x286>
   19c50:	4605                	c.li	a2,1
   19c52:	4681                	c.li	a3,0
   19c54:	8726                	c.mv	a4,s1
   19c56:	b5d9                	c.j	19b1c <_vfiprintf_r+0x6ac>
   19c58:	20078063          	beq	a5,zero,19e58 <_vfiprintf_r+0x9e8>
   19c5c:	1090                	c.addi4spn	a2,sp,96
   19c5e:	85ca                	c.mv	a1,s2
   19c60:	854e                	c.mv	a0,s3
   19c62:	e0c2                	c.sdsp	a6,64(sp)
   19c64:	ec76                	c.sdsp	t4,24(sp)
   19c66:	fffff097          	auipc	ra,0xfffff
   19c6a:	74a080e7          	jalr	ra,1866(ra) # 193b0 <__sprint_r.part.0>
   19c6e:	a80514e3          	bne	a0,zero,196f6 <_vfiprintf_r+0x286>
   19c72:	56a6                	c.lwsp	a3,104(sp)
   19c74:	77c6                	c.ldsp	a5,112(sp)
   19c76:	6806                	c.ldsp	a6,64(sp)
   19c78:	6ee2                	c.ldsp	t4,24(sp)
   19c7a:	198c                	c.addi4spn	a1,sp,240
   19c7c:	0016851b          	addiw	a0,a3,1
   19c80:	8726                	c.mv	a4,s1
   19c82:	b2e1                	c.j	1964a <_vfiprintf_r+0x1da>
   19c84:	22079f63          	bne	a5,zero,19ec2 <_vfiprintf_r+0xa52>
   19c88:	05714703          	lbu	a4,87(sp)
   19c8c:	3e071a63          	bne	a4,zero,1a080 <_vfiprintf_r+0xc10>
   19c90:	1c0e8663          	beq	t4,zero,19e5c <_vfiprintf_r+0x9ec>
   19c94:	08bc                	c.addi4spn	a5,sp,88
   19c96:	f1be                	c.sdsp	a5,224(sp)
   19c98:	4789                	c.li	a5,2
   19c9a:	f5be                	c.sdsp	a5,232(sp)
   19c9c:	198c                	c.addi4spn	a1,sp,240
   19c9e:	4505                	c.li	a0,1
   19ca0:	872e                	c.mv	a4,a1
   19ca2:	86aa                	c.mv	a3,a0
   19ca4:	0016851b          	addiw	a0,a3,1
   19ca8:	01070593          	addi	a1,a4,16
   19cac:	bae9                	c.j	19686 <_vfiprintf_r+0x216>
   19cae:	4685                	c.li	a3,1
   19cb0:	8cd6                	c.mv	s9,s5
   19cb2:	bad79ee3          	bne	a5,a3,1986e <_vfiprintf_r+0x3fe>
   19cb6:	47a5                	c.li	a5,9
   19cb8:	1a87ec63          	bltu	a5,s0,19e70 <_vfiprintf_r+0xa00>
   19cbc:	0304041b          	addiw	s0,s0,48
   19cc0:	0c810da3          	sb	s0,219(sp)
   19cc4:	8ae6                	c.mv	s5,s9
   19cc6:	4c05                	c.li	s8,1
   19cc8:	0db10a13          	addi	s4,sp,219
   19ccc:	bcf5                	c.j	197c8 <_vfiprintf_r+0x358>
   19cce:	45c1                	c.li	a1,16
   19cd0:	4085d363          	bge	a1,s0,1a0d6 <_vfiprintf_r+0xc66>
   19cd4:	00004317          	auipc	t1,0x4
   19cd8:	06430313          	addi	t1,t1,100 # 1dd38 <blanks.1>
   19cdc:	e4da                	c.sdsp	s6,72(sp)
   19cde:	4f41                	c.li	t5,16
   19ce0:	8b56                	c.mv	s6,s5
   19ce2:	4f9d                	c.li	t6,7
   19ce4:	8ad2                	c.mv	s5,s4
   19ce6:	ec76                	c.sdsp	t4,24(sp)
   19ce8:	e0c2                	c.sdsp	a6,64(sp)
   19cea:	8a1a                	c.mv	s4,t1
   19cec:	a811                	c.j	19d00 <_vfiprintf_r+0x890>
   19cee:	0026861b          	addiw	a2,a3,2
   19cf2:	0741                	c.addi	a4,16
   19cf4:	86aa                	c.mv	a3,a0
   19cf6:	3441                	c.addiw	s0,-16
   19cf8:	048f5363          	bge	t5,s0,19d3e <_vfiprintf_r+0x8ce>
   19cfc:	0016861b          	addiw	a2,a3,1
   19d00:	07c1                	c.addi	a5,16
   19d02:	01473023          	sd	s4,0(a4)
   19d06:	01e73423          	sd	t5,8(a4)
   19d0a:	f8be                	c.sdsp	a5,112(sp)
   19d0c:	0006051b          	addiw	a0,a2,0
   19d10:	d4b2                	c.swsp	a2,104(sp)
   19d12:	fcafdee3          	bge	t6,a0,19cee <_vfiprintf_r+0x87e>
   19d16:	cba1                	c.beqz	a5,19d66 <_vfiprintf_r+0x8f6>
   19d18:	1090                	c.addi4spn	a2,sp,96
   19d1a:	85ca                	c.mv	a1,s2
   19d1c:	854e                	c.mv	a0,s3
   19d1e:	fffff097          	auipc	ra,0xfffff
   19d22:	692080e7          	jalr	ra,1682(ra) # 193b0 <__sprint_r.part.0>
   19d26:	9c0518e3          	bne	a0,zero,196f6 <_vfiprintf_r+0x286>
   19d2a:	56a6                	c.lwsp	a3,104(sp)
   19d2c:	4f41                	c.li	t5,16
   19d2e:	3441                	c.addiw	s0,-16
   19d30:	77c6                	c.ldsp	a5,112(sp)
   19d32:	8726                	c.mv	a4,s1
   19d34:	0016861b          	addiw	a2,a3,1
   19d38:	4f9d                	c.li	t6,7
   19d3a:	fc8f41e3          	blt	t5,s0,19cfc <_vfiprintf_r+0x88c>
   19d3e:	8352                	c.mv	t1,s4
   19d40:	6ee2                	c.ldsp	t4,24(sp)
   19d42:	8a56                	c.mv	s4,s5
   19d44:	6806                	c.ldsp	a6,64(sp)
   19d46:	8ada                	c.mv	s5,s6
   19d48:	6b26                	c.ldsp	s6,72(sp)
   19d4a:	97a2                	c.add	a5,s0
   19d4c:	00673023          	sd	t1,0(a4)
   19d50:	e700                	c.sd	s0,8(a4)
   19d52:	f8be                	c.sdsp	a5,112(sp)
   19d54:	d4b2                	c.swsp	a2,104(sp)
   19d56:	469d                	c.li	a3,7
   19d58:	f2c6c6e3          	blt	a3,a2,19c84 <_vfiprintf_r+0x814>
   19d5c:	0741                	c.addi	a4,16
   19d5e:	0016051b          	addiw	a0,a2,1
   19d62:	86b2                	c.mv	a3,a2
   19d64:	b87d                	c.j	19622 <_vfiprintf_r+0x1b2>
   19d66:	4681                	c.li	a3,0
   19d68:	4605                	c.li	a2,1
   19d6a:	8726                	c.mv	a4,s1
   19d6c:	b769                	c.j	19cf6 <_vfiprintf_r+0x886>
   19d6e:	d482                	c.swsp	zero,104(sp)
   19d70:	004af893          	andi	a7,s5,4
   19d74:	0a088363          	beq	a7,zero,19e1a <_vfiprintf_r+0x9aa>
   19d78:	419b843b          	subw	s0,s7,s9
   19d7c:	08805f63          	bge	zero,s0,19e1a <_vfiprintf_r+0x9aa>
   19d80:	85a6                	c.mv	a1,s1
   19d82:	4741                	c.li	a4,16
   19d84:	56a6                	c.lwsp	a3,104(sp)
   19d86:	34875d63          	bge	a4,s0,1a0e0 <_vfiprintf_r+0xc70>
   19d8a:	00004317          	auipc	t1,0x4
   19d8e:	fae30313          	addi	t1,t1,-82 # 1dd38 <blanks.1>
   19d92:	4c41                	c.li	s8,16
   19d94:	4d1d                	c.li	s10,7
   19d96:	862e                	c.mv	a2,a1
   19d98:	8a1a                	c.mv	s4,t1
   19d9a:	a801                	c.j	19daa <_vfiprintf_r+0x93a>
   19d9c:	0026871b          	addiw	a4,a3,2
   19da0:	0641                	c.addi	a2,16
   19da2:	86aa                	c.mv	a3,a0
   19da4:	3441                	c.addiw	s0,-16
   19da6:	028c5f63          	bge	s8,s0,19de4 <_vfiprintf_r+0x974>
   19daa:	0016851b          	addiw	a0,a3,1
   19dae:	07c1                	c.addi	a5,16
   19db0:	01463023          	sd	s4,0(a2)
   19db4:	01863423          	sd	s8,8(a2)
   19db8:	f8be                	c.sdsp	a5,112(sp)
   19dba:	d4aa                	c.swsp	a0,104(sp)
   19dbc:	fead50e3          	bge	s10,a0,19d9c <_vfiprintf_r+0x92c>
   19dc0:	cba9                	c.beqz	a5,19e12 <_vfiprintf_r+0x9a2>
   19dc2:	1090                	c.addi4spn	a2,sp,96
   19dc4:	85ca                	c.mv	a1,s2
   19dc6:	854e                	c.mv	a0,s3
   19dc8:	fffff097          	auipc	ra,0xfffff
   19dcc:	5e8080e7          	jalr	ra,1512(ra) # 193b0 <__sprint_r.part.0>
   19dd0:	920513e3          	bne	a0,zero,196f6 <_vfiprintf_r+0x286>
   19dd4:	56a6                	c.lwsp	a3,104(sp)
   19dd6:	3441                	c.addiw	s0,-16
   19dd8:	77c6                	c.ldsp	a5,112(sp)
   19dda:	8626                	c.mv	a2,s1
   19ddc:	0016871b          	addiw	a4,a3,1
   19de0:	fc8c45e3          	blt	s8,s0,19daa <_vfiprintf_r+0x93a>
   19de4:	85b2                	c.mv	a1,a2
   19de6:	8352                	c.mv	t1,s4
   19de8:	97a2                	c.add	a5,s0
   19dea:	0065b023          	sd	t1,0(a1)
   19dee:	e580                	c.sd	s0,8(a1)
   19df0:	f8be                	c.sdsp	a5,112(sp)
   19df2:	d4ba                	c.swsp	a4,104(sp)
   19df4:	469d                	c.li	a3,7
   19df6:	8ce6dee3          	bge	a3,a4,196d2 <_vfiprintf_r+0x262>
   19dfa:	c385                	c.beqz	a5,19e1a <_vfiprintf_r+0x9aa>
   19dfc:	1090                	c.addi4spn	a2,sp,96
   19dfe:	85ca                	c.mv	a1,s2
   19e00:	854e                	c.mv	a0,s3
   19e02:	fffff097          	auipc	ra,0xfffff
   19e06:	5ae080e7          	jalr	ra,1454(ra) # 193b0 <__sprint_r.part.0>
   19e0a:	8e0516e3          	bne	a0,zero,196f6 <_vfiprintf_r+0x286>
   19e0e:	77c6                	c.ldsp	a5,112(sp)
   19e10:	b0c9                	c.j	196d2 <_vfiprintf_r+0x262>
   19e12:	4705                	c.li	a4,1
   19e14:	4681                	c.li	a3,0
   19e16:	8626                	c.mv	a2,s1
   19e18:	b771                	c.j	19da4 <_vfiprintf_r+0x934>
   19e1a:	87de                	c.mv	a5,s7
   19e1c:	019bd363          	bge	s7,s9,19e22 <_vfiprintf_r+0x9b2>
   19e20:	87e6                	c.mv	a5,s9
   19e22:	6722                	c.ldsp	a4,8(sp)
   19e24:	9fb9                	c.addw	a5,a4
   19e26:	e43e                	c.sdsp	a5,8(sp)
   19e28:	b875                	c.j	196e4 <_vfiprintf_r+0x274>
   19e2a:	1a078c63          	beq	a5,zero,19fe2 <_vfiprintf_r+0xb72>
   19e2e:	1090                	c.addi4spn	a2,sp,96
   19e30:	85ca                	c.mv	a1,s2
   19e32:	854e                	c.mv	a0,s3
   19e34:	fffff097          	auipc	ra,0xfffff
   19e38:	57c080e7          	jalr	ra,1404(ra) # 193b0 <__sprint_r.part.0>
   19e3c:	8a051de3          	bne	a0,zero,196f6 <_vfiprintf_r+0x286>
   19e40:	5526                	c.lwsp	a0,104(sp)
   19e42:	77c6                	c.ldsp	a5,112(sp)
   19e44:	198c                	c.addi4spn	a1,sp,240
   19e46:	2505                	c.addiw	a0,1
   19e48:	8726                	c.mv	a4,s1
   19e4a:	b0b1                	c.j	19696 <_vfiprintf_r+0x226>
   19e4c:	8952                	c.mv	s2,s4
   19e4e:	b065                	c.j	196f6 <_vfiprintf_r+0x286>
   19e50:	d482                	c.swsp	zero,104(sp)
   19e52:	8726                	c.mv	a4,s1
   19e54:	f08ff06f          	jal	zero,1955c <_vfiprintf_r+0xec>
   19e58:	0a0e9a63          	bne	t4,zero,19f0c <_vfiprintf_r+0xa9c>
   19e5c:	4681                	c.li	a3,0
   19e5e:	198c                	c.addi4spn	a1,sp,240
   19e60:	4505                	c.li	a0,1
   19e62:	8726                	c.mv	a4,s1
   19e64:	b00d                	c.j	19686 <_vfiprintf_r+0x216>
   19e66:	198c                	c.addi4spn	a1,sp,240
   19e68:	4505                	c.li	a0,1
   19e6a:	4681                	c.li	a3,0
   19e6c:	8726                	c.mv	a4,s1
   19e6e:	b821                	c.j	19686 <_vfiprintf_r+0x216>
   19e70:	7802                	c.ldsp	a6,32(sp)
   19e72:	400cf313          	andi	t1,s9,1024
   19e76:	4601                	c.li	a2,0
   19e78:	09f4                	c.addi4spn	a3,sp,220
   19e7a:	4c29                	c.li	s8,10
   19e7c:	48a5                	c.li	a7,9
   19e7e:	0ff00a93          	addi	s5,zero,255
   19e82:	a039                	c.j	19e90 <_vfiprintf_r+0xa20>
   19e84:	038457b3          	divu	a5,s0,s8
   19e88:	0288f763          	bgeu	a7,s0,19eb6 <_vfiprintf_r+0xa46>
   19e8c:	843e                	c.mv	s0,a5
   19e8e:	86d2                	c.mv	a3,s4
   19e90:	fff68a13          	addi	s4,a3,-1
   19e94:	2605                	c.addiw	a2,1
   19e96:	038477b3          	remu	a5,s0,s8
   19e9a:	0307879b          	addiw	a5,a5,48
   19e9e:	fef68fa3          	sb	a5,-1(a3)
   19ea2:	fe0301e3          	beq	t1,zero,19e84 <_vfiprintf_r+0xa14>
   19ea6:	00084783          	lbu	a5,0(a6)
   19eaa:	fcc79de3          	bne	a5,a2,19e84 <_vfiprintf_r+0xa14>
   19eae:	fd578be3          	beq	a5,s5,19e84 <_vfiprintf_r+0xa14>
   19eb2:	0e88ee63          	bltu	a7,s0,19fae <_vfiprintf_r+0xb3e>
   19eb6:	09fc                	c.addi4spn	a5,sp,220
   19eb8:	f042                	c.sdsp	a6,32(sp)
   19eba:	41478c3b          	subw	s8,a5,s4
   19ebe:	8ae6                	c.mv	s5,s9
   19ec0:	b221                	c.j	197c8 <_vfiprintf_r+0x358>
   19ec2:	1090                	c.addi4spn	a2,sp,96
   19ec4:	85ca                	c.mv	a1,s2
   19ec6:	854e                	c.mv	a0,s3
   19ec8:	e0c2                	c.sdsp	a6,64(sp)
   19eca:	ec76                	c.sdsp	t4,24(sp)
   19ecc:	fffff097          	auipc	ra,0xfffff
   19ed0:	4e4080e7          	jalr	ra,1252(ra) # 193b0 <__sprint_r.part.0>
   19ed4:	820511e3          	bne	a0,zero,196f6 <_vfiprintf_r+0x286>
   19ed8:	56a6                	c.lwsp	a3,104(sp)
   19eda:	77c6                	c.ldsp	a5,112(sp)
   19edc:	6806                	c.ldsp	a6,64(sp)
   19ede:	6ee2                	c.ldsp	t4,24(sp)
   19ee0:	8726                	c.mv	a4,s1
   19ee2:	0016851b          	addiw	a0,a3,1
   19ee6:	f3cff06f          	jal	zero,19622 <_vfiprintf_r+0x1b2>
   19eea:	0016051b          	addiw	a0,a2,1
   19eee:	010e8593          	addi	a1,t4,16
   19ef2:	86b2                	c.mv	a3,a2
   19ef4:	8776                	c.mv	a4,t4
   19ef6:	f98ff06f          	jal	zero,1968e <_vfiprintf_r+0x21e>
   19efa:	040af793          	andi	a5,s5,64
   19efe:	000b2403          	lw	s0,0(s6)
   19f02:	12078563          	beq	a5,zero,1a02c <_vfiprintf_r+0xbbc>
   19f06:	1442                	c.slli	s0,0x30
   19f08:	9041                	c.srli	s0,0x30
   19f0a:	bae1                	c.j	198e2 <_vfiprintf_r+0x472>
   19f0c:	08bc                	c.addi4spn	a5,sp,88
   19f0e:	f1be                	c.sdsp	a5,224(sp)
   19f10:	4789                	c.li	a5,2
   19f12:	f5be                	c.sdsp	a5,232(sp)
   19f14:	1998                	c.addi4spn	a4,sp,240
   19f16:	4685                	c.li	a3,1
   19f18:	b371                	c.j	19ca4 <_vfiprintf_r+0x834>
   19f1a:	8b36                	c.mv	s6,a3
   19f1c:	bb69                	c.j	19cb6 <_vfiprintf_r+0x846>
   19f1e:	00003697          	auipc	a3,0x3
   19f22:	3aa68693          	addi	a3,a3,938 # 1d2c8 <__clzdi2+0xb0>
   19f26:	e836                	c.sdsp	a3,16(sp)
   19f28:	020af693          	andi	a3,s5,32
   19f2c:	8722                	c.mv	a4,s0
   19f2e:	008b0613          	addi	a2,s6,8
   19f32:	eeb9                	c.bnez	a3,19f90 <_vfiprintf_r+0xb20>
   19f34:	010af693          	andi	a3,s5,16
   19f38:	eea1                	c.bnez	a3,19f90 <_vfiprintf_r+0xb20>
   19f3a:	040af693          	andi	a3,s5,64
   19f3e:	000b2403          	lw	s0,0(s6)
   19f42:	10068363          	beq	a3,zero,1a048 <_vfiprintf_r+0xbd8>
   19f46:	1442                	c.slli	s0,0x30
   19f48:	9041                	c.srli	s0,0x30
   19f4a:	001af693          	andi	a3,s5,1
   19f4e:	ce81                	c.beqz	a3,19f66 <_vfiprintf_r+0xaf6>
   19f50:	c819                	c.beqz	s0,19f66 <_vfiprintf_r+0xaf6>
   19f52:	002ae893          	ori	a7,s5,2
   19f56:	03000693          	addi	a3,zero,48
   19f5a:	04d10c23          	sb	a3,88(sp)
   19f5e:	04f10ca3          	sb	a5,89(sp)
   19f62:	00088a9b          	addiw	s5,a7,0
   19f66:	bffaf893          	andi	a7,s5,-1025
   19f6a:	00088c9b          	addiw	s9,a7,0
   19f6e:	8b32                	c.mv	s6,a2
   19f70:	4789                	c.li	a5,2
   19f72:	bab5                	c.j	198ee <_vfiprintf_r+0x47e>
   19f74:	8722                	c.mv	a4,s0
   19f76:	8cd6                	c.mv	s9,s5
   19f78:	b2c9                	c.j	1993a <_vfiprintf_r+0x4ca>
   19f7a:	00003697          	auipc	a3,0x3
   19f7e:	36668693          	addi	a3,a3,870 # 1d2e0 <__clzdi2+0xc8>
   19f82:	e836                	c.sdsp	a3,16(sp)
   19f84:	020af693          	andi	a3,s5,32
   19f88:	8722                	c.mv	a4,s0
   19f8a:	008b0613          	addi	a2,s6,8
   19f8e:	d2dd                	c.beqz	a3,19f34 <_vfiprintf_r+0xac4>
   19f90:	000b3403          	ld	s0,0(s6)
   19f94:	bf5d                	c.j	19f4a <_vfiprintf_r+0xada>
   19f96:	8722                	c.mv	a4,s0
   19f98:	ba15                	c.j	198cc <_vfiprintf_r+0x45c>
   19f9a:	8552                	c.mv	a0,s4
   19f9c:	ffff6097          	auipc	ra,0xffff6
   19fa0:	52e080e7          	jalr	ra,1326(ra) # 104ca <strlen>
   19fa4:	6762                	c.ldsp	a4,24(sp)
   19fa6:	00050c1b          	addiw	s8,a0,0
   19faa:	4d01                	c.li	s10,0
   19fac:	b831                	c.j	197c8 <_vfiprintf_r+0x358>
   19fae:	77c2                	c.ldsp	a5,48(sp)
   19fb0:	75a2                	c.ldsp	a1,40(sp)
   19fb2:	e09a                	c.sdsp	t1,64(sp)
   19fb4:	40fa0a33          	sub	s4,s4,a5
   19fb8:	863e                	c.mv	a2,a5
   19fba:	8552                	c.mv	a0,s4
   19fbc:	f03a                	c.sdsp	a4,32(sp)
   19fbe:	ec42                	c.sdsp	a6,24(sp)
   19fc0:	ffffd097          	auipc	ra,0xffffd
   19fc4:	5ee080e7          	jalr	ra,1518(ra) # 175ae <strncpy>
   19fc8:	6862                	c.ldsp	a6,24(sp)
   19fca:	038457b3          	divu	a5,s0,s8
   19fce:	7702                	c.ldsp	a4,32(sp)
   19fd0:	00184683          	lbu	a3,1(a6)
   19fd4:	6306                	c.ldsp	t1,64(sp)
   19fd6:	4601                	c.li	a2,0
   19fd8:	00d036b3          	sltu	a3,zero,a3
   19fdc:	9836                	c.add	a6,a3
   19fde:	48a5                	c.li	a7,9
   19fe0:	b575                	c.j	19e8c <_vfiprintf_r+0xa1c>
   19fe2:	4705                	c.li	a4,1
   19fe4:	87e2                	c.mv	a5,s8
   19fe6:	f1d2                	c.sdsp	s4,224(sp)
   19fe8:	f5e2                	c.sdsp	s8,232(sp)
   19fea:	f8e2                	c.sdsp	s8,112(sp)
   19fec:	d4ba                	c.swsp	a4,104(sp)
   19fee:	198c                	c.addi4spn	a1,sp,240
   19ff0:	ed2ff06f          	jal	zero,196c2 <_vfiprintf_r+0x252>
   19ff4:	020aea93          	ori	s5,s5,32
   19ff8:	001dc783          	lbu	a5,1(s11)
   19ffc:	2a81                	c.addiw	s5,0
   19ffe:	0d85                	c.addi	s11,1
   1a000:	d86ff06f          	jal	zero,19586 <_vfiprintf_r+0x116>
   1a004:	200aea93          	ori	s5,s5,512
   1a008:	001dc783          	lbu	a5,1(s11)
   1a00c:	2a81                	c.addiw	s5,0
   1a00e:	0d85                	c.addi	s11,1
   1a010:	d76ff06f          	jal	zero,19586 <_vfiprintf_r+0x116>
   1a014:	4799                	c.li	a5,6
   1a016:	000d0c1b          	addiw	s8,s10,0
   1a01a:	07a7e163          	bltu	a5,s10,1a07c <_vfiprintf_r+0xc0c>
   1a01e:	8ce2                	c.mv	s9,s8
   1a020:	00003a17          	auipc	s4,0x3
   1a024:	2d8a0a13          	addi	s4,s4,728 # 1d2f8 <__clzdi2+0xe0>
   1a028:	dd4ff06f          	jal	zero,195fc <_vfiprintf_r+0x18c>
   1a02c:	200af793          	andi	a5,s5,512
   1a030:	c3d9                	c.beqz	a5,1a0b6 <_vfiprintf_r+0xc46>
   1a032:	0ff47413          	andi	s0,s0,255
   1a036:	b075                	c.j	198e2 <_vfiprintf_r+0x472>
   1a038:	200cf793          	andi	a5,s9,512
   1a03c:	cba5                	c.beqz	a5,1a0ac <_vfiprintf_r+0xc3c>
   1a03e:	0ff47413          	andi	s0,s0,255
   1a042:	8b36                	c.mv	s6,a3
   1a044:	4785                	c.li	a5,1
   1a046:	b065                	c.j	198ee <_vfiprintf_r+0x47e>
   1a048:	200af693          	andi	a3,s5,512
   1a04c:	cea9                	c.beqz	a3,1a0a6 <_vfiprintf_r+0xc36>
   1a04e:	0ff47413          	andi	s0,s0,255
   1a052:	bde5                	c.j	19f4a <_vfiprintf_r+0xada>
   1a054:	200af793          	andi	a5,s5,512
   1a058:	c3b1                	c.beqz	a5,1a09c <_vfiprintf_r+0xc2c>
   1a05a:	000b0403          	lb	s0,0(s6)
   1a05e:	87a2                	c.mv	a5,s0
   1a060:	fbcff06f          	jal	zero,1981c <_vfiprintf_r+0x3ac>
   1a064:	86ae                	c.mv	a3,a1
   1a066:	00004317          	auipc	t1,0x4
   1a06a:	ce230313          	addi	t1,t1,-798 # 1dd48 <zeroes.0>
   1a06e:	b66d                	c.j	19c18 <_vfiprintf_r+0x7a8>
   1a070:	198c                	c.addi4spn	a1,sp,240
   1a072:	4505                	c.li	a0,1
   1a074:	4681                	c.li	a3,0
   1a076:	8726                	c.mv	a4,s1
   1a078:	e16ff06f          	jal	zero,1968e <_vfiprintf_r+0x21e>
   1a07c:	4c19                	c.li	s8,6
   1a07e:	b745                	c.j	1a01e <_vfiprintf_r+0xbae>
   1a080:	05710793          	addi	a5,sp,87
   1a084:	f1be                	c.sdsp	a5,224(sp)
   1a086:	4785                	c.li	a5,1
   1a088:	f5be                	c.sdsp	a5,232(sp)
   1a08a:	198c                	c.addi4spn	a1,sp,240
   1a08c:	4505                	c.li	a0,1
   1a08e:	db4ff06f          	jal	zero,19642 <_vfiprintf_r+0x1d2>
   1a092:	67a2                	c.ldsp	a5,8(sp)
   1a094:	00f69023          	sh	a5,0(a3)
   1a098:	c6cff06f          	jal	zero,19504 <_vfiprintf_r+0x94>
   1a09c:	000b2403          	lw	s0,0(s6)
   1a0a0:	87a2                	c.mv	a5,s0
   1a0a2:	f7aff06f          	jal	zero,1981c <_vfiprintf_r+0x3ac>
   1a0a6:	1402                	c.slli	s0,0x20
   1a0a8:	9001                	c.srli	s0,0x20
   1a0aa:	b545                	c.j	19f4a <_vfiprintf_r+0xada>
   1a0ac:	1402                	c.slli	s0,0x20
   1a0ae:	9001                	c.srli	s0,0x20
   1a0b0:	8b36                	c.mv	s6,a3
   1a0b2:	4785                	c.li	a5,1
   1a0b4:	b82d                	c.j	198ee <_vfiprintf_r+0x47e>
   1a0b6:	1402                	c.slli	s0,0x20
   1a0b8:	9001                	c.srli	s0,0x20
   1a0ba:	b025                	c.j	198e2 <_vfiprintf_r+0x472>
   1a0bc:	1090                	c.addi4spn	a2,sp,96
   1a0be:	85ca                	c.mv	a1,s2
   1a0c0:	854e                	c.mv	a0,s3
   1a0c2:	fffff097          	auipc	ra,0xfffff
   1a0c6:	2ee080e7          	jalr	ra,750(ra) # 193b0 <__sprint_r.part.0>
   1a0ca:	e2cff06f          	jal	zero,196f6 <_vfiprintf_r+0x286>
   1a0ce:	8c6a                	c.mv	s8,s10
   1a0d0:	4d01                	c.li	s10,0
   1a0d2:	ef6ff06f          	jal	zero,197c8 <_vfiprintf_r+0x358>
   1a0d6:	00004317          	auipc	t1,0x4
   1a0da:	c6230313          	addi	t1,t1,-926 # 1dd38 <blanks.1>
   1a0de:	b1b5                	c.j	19d4a <_vfiprintf_r+0x8da>
   1a0e0:	0016871b          	addiw	a4,a3,1
   1a0e4:	00004317          	auipc	t1,0x4
   1a0e8:	c5430313          	addi	t1,t1,-940 # 1dd38 <blanks.1>
   1a0ec:	b9f5                	c.j	19de8 <_vfiprintf_r+0x978>
   1a0ee:	8cd6                	c.mv	s9,s5
   1a0f0:	b6f1                	c.j	19cbc <_vfiprintf_r+0x84c>
   1a0f2:	8eae                	c.mv	t4,a1
   1a0f4:	862a                	c.mv	a2,a0
   1a0f6:	00004317          	auipc	t1,0x4
   1a0fa:	c5230313          	addi	t1,t1,-942 # 1dd48 <zeroes.0>
   1a0fe:	b4bd                	c.j	19b6c <_vfiprintf_r+0x6fc>
   1a100:	57fd                	c.li	a5,-1
   1a102:	e43e                	c.sdsp	a5,8(sp)
   1a104:	dfeff06f          	jal	zero,19702 <_vfiprintf_r+0x292>
   1a108:	c29c                	c.sw	a5,0(a3)
   1a10a:	bfaff06f          	jal	zero,19504 <_vfiprintf_r+0x94>
   1a10e:	000b2783          	lw	a5,0(s6)
   1a112:	0b21                	c.addi	s6,8
   1a114:	00078d1b          	addiw	s10,a5,0
   1a118:	0007d363          	bge	a5,zero,1a11e <_vfiprintf_r+0xcae>
   1a11c:	5d7d                	c.li	s10,-1
   1a11e:	001dc783          	lbu	a5,1(s11)
   1a122:	8db6                	c.mv	s11,a3
   1a124:	c62ff06f          	jal	zero,19586 <_vfiprintf_r+0x116>

000000000001a128 <vfiprintf>:
   1a128:	86b2                	c.mv	a3,a2
   1a12a:	862e                	c.mv	a2,a1
   1a12c:	85aa                	c.mv	a1,a0
   1a12e:	00006517          	auipc	a0,0x6
   1a132:	1a253503          	ld	a0,418(a0) # 202d0 <_impure_ptr>
   1a136:	fffff317          	auipc	t1,0xfffff
   1a13a:	33a30067          	jalr	zero,826(t1) # 19470 <_vfiprintf_r>

000000000001a13e <__sbprintf>:
   1a13e:	0105d783          	lhu	a5,16(a1)
   1a142:	0ac5ae03          	lw	t3,172(a1)
   1a146:	0125d303          	lhu	t1,18(a1)
   1a14a:	0305b883          	ld	a7,48(a1)
   1a14e:	0405b803          	ld	a6,64(a1)
   1a152:	b3010113          	addi	sp,sp,-1232
   1a156:	9bf5                	c.andi	a5,-3
   1a158:	40000713          	addi	a4,zero,1024
   1a15c:	4c813023          	sd	s0,1216(sp)
   1a160:	00f11823          	sh	a5,16(sp)
   1a164:	842e                	c.mv	s0,a1
   1a166:	191c                	c.addi4spn	a5,sp,176
   1a168:	858a                	c.mv	a1,sp
   1a16a:	4a913c23          	sd	s1,1208(sp)
   1a16e:	4b213823          	sd	s2,1200(sp)
   1a172:	4c113423          	sd	ra,1224(sp)
   1a176:	892a                	c.mv	s2,a0
   1a178:	d772                	c.swsp	t3,172(sp)
   1a17a:	00611923          	sh	t1,18(sp)
   1a17e:	f846                	c.sdsp	a7,48(sp)
   1a180:	e0c2                	c.sdsp	a6,64(sp)
   1a182:	e03e                	c.sdsp	a5,0(sp)
   1a184:	ec3e                	c.sdsp	a5,24(sp)
   1a186:	c63a                	c.swsp	a4,12(sp)
   1a188:	d03a                	c.swsp	a4,32(sp)
   1a18a:	d402                	c.swsp	zero,40(sp)
   1a18c:	fffff097          	auipc	ra,0xfffff
   1a190:	2e4080e7          	jalr	ra,740(ra) # 19470 <_vfiprintf_r>
   1a194:	84aa                	c.mv	s1,a0
   1a196:	02055963          	bge	a0,zero,1a1c8 <__sbprintf+0x8a>
   1a19a:	01015783          	lhu	a5,16(sp)
   1a19e:	0407f793          	andi	a5,a5,64
   1a1a2:	c799                	c.beqz	a5,1a1b0 <__sbprintf+0x72>
   1a1a4:	01045783          	lhu	a5,16(s0)
   1a1a8:	0407e793          	ori	a5,a5,64
   1a1ac:	00f41823          	sh	a5,16(s0)
   1a1b0:	4c813083          	ld	ra,1224(sp)
   1a1b4:	4c013403          	ld	s0,1216(sp)
   1a1b8:	4b013903          	ld	s2,1200(sp)
   1a1bc:	8526                	c.mv	a0,s1
   1a1be:	4b813483          	ld	s1,1208(sp)
   1a1c2:	4d010113          	addi	sp,sp,1232
   1a1c6:	8082                	c.jr	ra
   1a1c8:	858a                	c.mv	a1,sp
   1a1ca:	854a                	c.mv	a0,s2
   1a1cc:	ffff8097          	auipc	ra,0xffff8
   1a1d0:	566080e7          	jalr	ra,1382(ra) # 12732 <_fflush_r>
   1a1d4:	d179                	c.beqz	a0,1a19a <__sbprintf+0x5c>
   1a1d6:	54fd                	c.li	s1,-1
   1a1d8:	b7c9                	c.j	1a19a <__sbprintf+0x5c>

000000000001a1da <_wctomb_r>:
   1a1da:	00005797          	auipc	a5,0x5
   1a1de:	7de7b783          	ld	a5,2014(a5) # 1f9b8 <__global_locale+0xe0>
   1a1e2:	8782                	c.jr	a5

000000000001a1e4 <__ascii_wctomb>:
   1a1e4:	0006079b          	addiw	a5,a2,0
   1a1e8:	cd91                	c.beqz	a1,1a204 <__ascii_wctomb+0x20>
   1a1ea:	0ff00713          	addi	a4,zero,255
   1a1ee:	00f76663          	bltu	a4,a5,1a1fa <__ascii_wctomb+0x16>
   1a1f2:	00c58023          	sb	a2,0(a1)
   1a1f6:	4505                	c.li	a0,1
   1a1f8:	8082                	c.jr	ra
   1a1fa:	08a00793          	addi	a5,zero,138
   1a1fe:	c11c                	c.sw	a5,0(a0)
   1a200:	557d                	c.li	a0,-1
   1a202:	8082                	c.jr	ra
   1a204:	4501                	c.li	a0,0
   1a206:	8082                	c.jr	ra

000000000001a208 <_write_r>:
   1a208:	1141                	c.addi	sp,-16
   1a20a:	872e                	c.mv	a4,a1
   1a20c:	e022                	c.sdsp	s0,0(sp)
   1a20e:	85b2                	c.mv	a1,a2
   1a210:	842a                	c.mv	s0,a0
   1a212:	8636                	c.mv	a2,a3
   1a214:	853a                	c.mv	a0,a4
   1a216:	00006797          	auipc	a5,0x6
   1a21a:	0e07a923          	sw	zero,242(a5) # 20308 <errno>
   1a21e:	e406                	c.sdsp	ra,8(sp)
   1a220:	00002097          	auipc	ra,0x2
   1a224:	b66080e7          	jalr	ra,-1178(ra) # 1bd86 <_write>
   1a228:	57fd                	c.li	a5,-1
   1a22a:	00f50663          	beq	a0,a5,1a236 <_write_r+0x2e>
   1a22e:	60a2                	c.ldsp	ra,8(sp)
   1a230:	6402                	c.ldsp	s0,0(sp)
   1a232:	0141                	c.addi	sp,16
   1a234:	8082                	c.jr	ra
   1a236:	00006797          	auipc	a5,0x6
   1a23a:	0d27a783          	lw	a5,210(a5) # 20308 <errno>
   1a23e:	dbe5                	c.beqz	a5,1a22e <_write_r+0x26>
   1a240:	60a2                	c.ldsp	ra,8(sp)
   1a242:	c01c                	c.sw	a5,0(s0)
   1a244:	6402                	c.ldsp	s0,0(sp)
   1a246:	0141                	c.addi	sp,16
   1a248:	8082                	c.jr	ra

000000000001a24a <__assert_func>:
   1a24a:	1141                	c.addi	sp,-16
   1a24c:	87b6                	c.mv	a5,a3
   1a24e:	00006717          	auipc	a4,0x6
   1a252:	08273703          	ld	a4,130(a4) # 202d0 <_impure_ptr>
   1a256:	8832                	c.mv	a6,a2
   1a258:	e406                	c.sdsp	ra,8(sp)
   1a25a:	01873883          	ld	a7,24(a4)
   1a25e:	863e                	c.mv	a2,a5
   1a260:	86aa                	c.mv	a3,a0
   1a262:	872e                	c.mv	a4,a1
   1a264:	00004797          	auipc	a5,0x4
   1a268:	af478793          	addi	a5,a5,-1292 # 1dd58 <zeroes.0+0x10>
   1a26c:	00080f63          	beq	a6,zero,1a28a <__assert_func+0x40>
   1a270:	00004597          	auipc	a1,0x4
   1a274:	af858593          	addi	a1,a1,-1288 # 1dd68 <zeroes.0+0x20>
   1a278:	8546                	c.mv	a0,a7
   1a27a:	00000097          	auipc	ra,0x0
   1a27e:	28e080e7          	jalr	ra,654(ra) # 1a508 <fiprintf>
   1a282:	00001097          	auipc	ra,0x1
   1a286:	500080e7          	jalr	ra,1280(ra) # 1b782 <abort>
   1a28a:	00003797          	auipc	a5,0x3
   1a28e:	04e78793          	addi	a5,a5,78 # 1d2d8 <__clzdi2+0xc0>
   1a292:	883e                	c.mv	a6,a5
   1a294:	bff1                	c.j	1a270 <__assert_func+0x26>

000000000001a296 <__assert>:
   1a296:	1141                	c.addi	sp,-16
   1a298:	86b2                	c.mv	a3,a2
   1a29a:	4601                	c.li	a2,0
   1a29c:	e406                	c.sdsp	ra,8(sp)
   1a29e:	00000097          	auipc	ra,0x0
   1a2a2:	fac080e7          	jalr	ra,-84(ra) # 1a24a <__assert_func>

000000000001a2a6 <atexit>:
   1a2a6:	85aa                	c.mv	a1,a0
   1a2a8:	4681                	c.li	a3,0
   1a2aa:	4601                	c.li	a2,0
   1a2ac:	4501                	c.li	a0,0
   1a2ae:	00001317          	auipc	t1,0x1
   1a2b2:	4ec30067          	jalr	zero,1260(t1) # 1b79a <__register_exitproc>

000000000001a2b6 <_calloc_r>:
   1a2b6:	02c5b7b3          	mulhu	a5,a1,a2
   1a2ba:	1141                	c.addi	sp,-16
   1a2bc:	e406                	c.sdsp	ra,8(sp)
   1a2be:	e022                	c.sdsp	s0,0(sp)
   1a2c0:	02c585b3          	mul	a1,a1,a2
   1a2c4:	e3d1                	c.bnez	a5,1a348 <_calloc_r+0x92>
   1a2c6:	ffffb097          	auipc	ra,0xffffb
   1a2ca:	48a080e7          	jalr	ra,1162(ra) # 15750 <_malloc_r>
   1a2ce:	842a                	c.mv	s0,a0
   1a2d0:	c521                	c.beqz	a0,1a318 <_calloc_r+0x62>
   1a2d2:	ff853603          	ld	a2,-8(a0)
   1a2d6:	04800713          	addi	a4,zero,72
   1a2da:	9a71                	c.andi	a2,-4
   1a2dc:	1661                	c.addi	a2,-8
   1a2de:	04c76263          	bltu	a4,a2,1a322 <_calloc_r+0x6c>
   1a2e2:	02700693          	addi	a3,zero,39
   1a2e6:	87aa                	c.mv	a5,a0
   1a2e8:	02c6f263          	bgeu	a3,a2,1a30c <_calloc_r+0x56>
   1a2ec:	00053023          	sd	zero,0(a0)
   1a2f0:	00053423          	sd	zero,8(a0)
   1a2f4:	03700793          	addi	a5,zero,55
   1a2f8:	02c7ff63          	bgeu	a5,a2,1a336 <_calloc_r+0x80>
   1a2fc:	00053823          	sd	zero,16(a0)
   1a300:	00053c23          	sd	zero,24(a0)
   1a304:	02050793          	addi	a5,a0,32
   1a308:	04e60c63          	beq	a2,a4,1a360 <_calloc_r+0xaa>
   1a30c:	0007b023          	sd	zero,0(a5)
   1a310:	0007b423          	sd	zero,8(a5)
   1a314:	0007b823          	sd	zero,16(a5)
   1a318:	60a2                	c.ldsp	ra,8(sp)
   1a31a:	8522                	c.mv	a0,s0
   1a31c:	6402                	c.ldsp	s0,0(sp)
   1a31e:	0141                	c.addi	sp,16
   1a320:	8082                	c.jr	ra
   1a322:	4581                	c.li	a1,0
   1a324:	ffff6097          	auipc	ra,0xffff6
   1a328:	004080e7          	jalr	ra,4(ra) # 10328 <memset>
   1a32c:	60a2                	c.ldsp	ra,8(sp)
   1a32e:	8522                	c.mv	a0,s0
   1a330:	6402                	c.ldsp	s0,0(sp)
   1a332:	0141                	c.addi	sp,16
   1a334:	8082                	c.jr	ra
   1a336:	01050793          	addi	a5,a0,16
   1a33a:	0007b023          	sd	zero,0(a5)
   1a33e:	0007b423          	sd	zero,8(a5)
   1a342:	0007b823          	sd	zero,16(a5)
   1a346:	bfc9                	c.j	1a318 <_calloc_r+0x62>
   1a348:	00000097          	auipc	ra,0x0
   1a34c:	062080e7          	jalr	ra,98(ra) # 1a3aa <__errno>
   1a350:	4401                	c.li	s0,0
   1a352:	47b1                	c.li	a5,12
   1a354:	60a2                	c.ldsp	ra,8(sp)
   1a356:	c11c                	c.sw	a5,0(a0)
   1a358:	8522                	c.mv	a0,s0
   1a35a:	6402                	c.ldsp	s0,0(sp)
   1a35c:	0141                	c.addi	sp,16
   1a35e:	8082                	c.jr	ra
   1a360:	02053023          	sd	zero,32(a0)
   1a364:	03050793          	addi	a5,a0,48
   1a368:	02053423          	sd	zero,40(a0)
   1a36c:	b745                	c.j	1a30c <_calloc_r+0x56>

000000000001a36e <_close_r>:
   1a36e:	1141                	c.addi	sp,-16
   1a370:	e022                	c.sdsp	s0,0(sp)
   1a372:	842a                	c.mv	s0,a0
   1a374:	852e                	c.mv	a0,a1
   1a376:	00006797          	auipc	a5,0x6
   1a37a:	f807a923          	sw	zero,-110(a5) # 20308 <errno>
   1a37e:	e406                	c.sdsp	ra,8(sp)
   1a380:	00002097          	auipc	ra,0x2
   1a384:	86a080e7          	jalr	ra,-1942(ra) # 1bbea <_close>
   1a388:	57fd                	c.li	a5,-1
   1a38a:	00f50663          	beq	a0,a5,1a396 <_close_r+0x28>
   1a38e:	60a2                	c.ldsp	ra,8(sp)
   1a390:	6402                	c.ldsp	s0,0(sp)
   1a392:	0141                	c.addi	sp,16
   1a394:	8082                	c.jr	ra
   1a396:	00006797          	auipc	a5,0x6
   1a39a:	f727a783          	lw	a5,-142(a5) # 20308 <errno>
   1a39e:	dbe5                	c.beqz	a5,1a38e <_close_r+0x20>
   1a3a0:	60a2                	c.ldsp	ra,8(sp)
   1a3a2:	c01c                	c.sw	a5,0(s0)
   1a3a4:	6402                	c.ldsp	s0,0(sp)
   1a3a6:	0141                	c.addi	sp,16
   1a3a8:	8082                	c.jr	ra

000000000001a3aa <__errno>:
   1a3aa:	00006517          	auipc	a0,0x6
   1a3ae:	f2653503          	ld	a0,-218(a0) # 202d0 <_impure_ptr>
   1a3b2:	8082                	c.jr	ra

000000000001a3b4 <_fclose_r.part.0>:
   1a3b4:	1101                	c.addi	sp,-32
   1a3b6:	e822                	c.sdsp	s0,16(sp)
   1a3b8:	e426                	c.sdsp	s1,8(sp)
   1a3ba:	e04a                	c.sdsp	s2,0(sp)
   1a3bc:	842e                	c.mv	s0,a1
   1a3be:	ec06                	c.sdsp	ra,24(sp)
   1a3c0:	84aa                	c.mv	s1,a0
   1a3c2:	ffff8097          	auipc	ra,0xffff8
   1a3c6:	1da080e7          	jalr	ra,474(ra) # 1259c <__sflush_r>
   1a3ca:	683c                	c.ld	a5,80(s0)
   1a3cc:	892a                	c.mv	s2,a0
   1a3ce:	c791                	c.beqz	a5,1a3da <_fclose_r.part.0+0x26>
   1a3d0:	780c                	c.ld	a1,48(s0)
   1a3d2:	8526                	c.mv	a0,s1
   1a3d4:	9782                	c.jalr	a5
   1a3d6:	04054e63          	blt	a0,zero,1a432 <_fclose_r.part.0+0x7e>
   1a3da:	01045783          	lhu	a5,16(s0)
   1a3de:	0807f793          	andi	a5,a5,128
   1a3e2:	efb1                	c.bnez	a5,1a43e <_fclose_r.part.0+0x8a>
   1a3e4:	6c2c                	c.ld	a1,88(s0)
   1a3e6:	cd81                	c.beqz	a1,1a3fe <_fclose_r.part.0+0x4a>
   1a3e8:	07440793          	addi	a5,s0,116
   1a3ec:	00f58763          	beq	a1,a5,1a3fa <_fclose_r.part.0+0x46>
   1a3f0:	8526                	c.mv	a0,s1
   1a3f2:	ffff8097          	auipc	ra,0xffff8
   1a3f6:	7f6080e7          	jalr	ra,2038(ra) # 12be8 <_free_r>
   1a3fa:	04043c23          	sd	zero,88(s0)
   1a3fe:	7c2c                	c.ld	a1,120(s0)
   1a400:	c981                	c.beqz	a1,1a410 <_fclose_r.part.0+0x5c>
   1a402:	8526                	c.mv	a0,s1
   1a404:	ffff8097          	auipc	ra,0xffff8
   1a408:	7e4080e7          	jalr	ra,2020(ra) # 12be8 <_free_r>
   1a40c:	06043c23          	sd	zero,120(s0)
   1a410:	ffff8097          	auipc	ra,0xffff8
   1a414:	676080e7          	jalr	ra,1654(ra) # 12a86 <__sfp_lock_acquire>
   1a418:	00041823          	sh	zero,16(s0)
   1a41c:	ffff8097          	auipc	ra,0xffff8
   1a420:	66c080e7          	jalr	ra,1644(ra) # 12a88 <__sfp_lock_release>
   1a424:	60e2                	c.ldsp	ra,24(sp)
   1a426:	6442                	c.ldsp	s0,16(sp)
   1a428:	64a2                	c.ldsp	s1,8(sp)
   1a42a:	854a                	c.mv	a0,s2
   1a42c:	6902                	c.ldsp	s2,0(sp)
   1a42e:	6105                	c.addi16sp	sp,32
   1a430:	8082                	c.jr	ra
   1a432:	01045783          	lhu	a5,16(s0)
   1a436:	597d                	c.li	s2,-1
   1a438:	0807f793          	andi	a5,a5,128
   1a43c:	d7c5                	c.beqz	a5,1a3e4 <_fclose_r.part.0+0x30>
   1a43e:	6c0c                	c.ld	a1,24(s0)
   1a440:	8526                	c.mv	a0,s1
   1a442:	ffff8097          	auipc	ra,0xffff8
   1a446:	7a6080e7          	jalr	ra,1958(ra) # 12be8 <_free_r>
   1a44a:	bf69                	c.j	1a3e4 <_fclose_r.part.0+0x30>

000000000001a44c <_fclose_r>:
   1a44c:	c1b1                	c.beqz	a1,1a490 <_fclose_r+0x44>
   1a44e:	1101                	c.addi	sp,-32
   1a450:	e822                	c.sdsp	s0,16(sp)
   1a452:	ec06                	c.sdsp	ra,24(sp)
   1a454:	842a                	c.mv	s0,a0
   1a456:	c119                	c.beqz	a0,1a45c <_fclose_r+0x10>
   1a458:	493c                	c.lw	a5,80(a0)
   1a45a:	c38d                	c.beqz	a5,1a47c <_fclose_r+0x30>
   1a45c:	01059783          	lh	a5,16(a1)
   1a460:	e791                	c.bnez	a5,1a46c <_fclose_r+0x20>
   1a462:	60e2                	c.ldsp	ra,24(sp)
   1a464:	6442                	c.ldsp	s0,16(sp)
   1a466:	4501                	c.li	a0,0
   1a468:	6105                	c.addi16sp	sp,32
   1a46a:	8082                	c.jr	ra
   1a46c:	8522                	c.mv	a0,s0
   1a46e:	6442                	c.ldsp	s0,16(sp)
   1a470:	60e2                	c.ldsp	ra,24(sp)
   1a472:	6105                	c.addi16sp	sp,32
   1a474:	00000317          	auipc	t1,0x0
   1a478:	f4030067          	jalr	zero,-192(t1) # 1a3b4 <_fclose_r.part.0>
   1a47c:	e42e                	c.sdsp	a1,8(sp)
   1a47e:	ffff8097          	auipc	ra,0xffff8
   1a482:	5fa080e7          	jalr	ra,1530(ra) # 12a78 <__sinit>
   1a486:	65a2                	c.ldsp	a1,8(sp)
   1a488:	01059783          	lh	a5,16(a1)
   1a48c:	dbf9                	c.beqz	a5,1a462 <_fclose_r+0x16>
   1a48e:	bff9                	c.j	1a46c <_fclose_r+0x20>
   1a490:	4501                	c.li	a0,0
   1a492:	8082                	c.jr	ra

000000000001a494 <fclose>:
   1a494:	c531                	c.beqz	a0,1a4e0 <fclose+0x4c>
   1a496:	1101                	c.addi	sp,-32
   1a498:	e822                	c.sdsp	s0,16(sp)
   1a49a:	ec06                	c.sdsp	ra,24(sp)
   1a49c:	842a                	c.mv	s0,a0
   1a49e:	00006517          	auipc	a0,0x6
   1a4a2:	e3253503          	ld	a0,-462(a0) # 202d0 <_impure_ptr>
   1a4a6:	c119                	c.beqz	a0,1a4ac <fclose+0x18>
   1a4a8:	493c                	c.lw	a5,80(a0)
   1a4aa:	c38d                	c.beqz	a5,1a4cc <fclose+0x38>
   1a4ac:	01041783          	lh	a5,16(s0)
   1a4b0:	e791                	c.bnez	a5,1a4bc <fclose+0x28>
   1a4b2:	60e2                	c.ldsp	ra,24(sp)
   1a4b4:	6442                	c.ldsp	s0,16(sp)
   1a4b6:	4501                	c.li	a0,0
   1a4b8:	6105                	c.addi16sp	sp,32
   1a4ba:	8082                	c.jr	ra
   1a4bc:	85a2                	c.mv	a1,s0
   1a4be:	6442                	c.ldsp	s0,16(sp)
   1a4c0:	60e2                	c.ldsp	ra,24(sp)
   1a4c2:	6105                	c.addi16sp	sp,32
   1a4c4:	00000317          	auipc	t1,0x0
   1a4c8:	ef030067          	jalr	zero,-272(t1) # 1a3b4 <_fclose_r.part.0>
   1a4cc:	e42a                	c.sdsp	a0,8(sp)
   1a4ce:	ffff8097          	auipc	ra,0xffff8
   1a4d2:	5aa080e7          	jalr	ra,1450(ra) # 12a78 <__sinit>
   1a4d6:	01041783          	lh	a5,16(s0)
   1a4da:	6522                	c.ldsp	a0,8(sp)
   1a4dc:	dbf9                	c.beqz	a5,1a4b2 <fclose+0x1e>
   1a4de:	bff9                	c.j	1a4bc <fclose+0x28>
   1a4e0:	4501                	c.li	a0,0
   1a4e2:	8082                	c.jr	ra

000000000001a4e4 <_fiprintf_r>:
   1a4e4:	715d                	c.addi16sp	sp,-80
   1a4e6:	02810313          	addi	t1,sp,40
   1a4ea:	f436                	c.sdsp	a3,40(sp)
   1a4ec:	869a                	c.mv	a3,t1
   1a4ee:	ec06                	c.sdsp	ra,24(sp)
   1a4f0:	f83a                	c.sdsp	a4,48(sp)
   1a4f2:	fc3e                	c.sdsp	a5,56(sp)
   1a4f4:	e0c2                	c.sdsp	a6,64(sp)
   1a4f6:	e4c6                	c.sdsp	a7,72(sp)
   1a4f8:	e41a                	c.sdsp	t1,8(sp)
   1a4fa:	fffff097          	auipc	ra,0xfffff
   1a4fe:	f76080e7          	jalr	ra,-138(ra) # 19470 <_vfiprintf_r>
   1a502:	60e2                	c.ldsp	ra,24(sp)
   1a504:	6161                	c.addi16sp	sp,80
   1a506:	8082                	c.jr	ra

000000000001a508 <fiprintf>:
   1a508:	715d                	c.addi16sp	sp,-80
   1a50a:	02010313          	addi	t1,sp,32
   1a50e:	f032                	c.sdsp	a2,32(sp)
   1a510:	f436                	c.sdsp	a3,40(sp)
   1a512:	862e                	c.mv	a2,a1
   1a514:	869a                	c.mv	a3,t1
   1a516:	85aa                	c.mv	a1,a0
   1a518:	00006517          	auipc	a0,0x6
   1a51c:	db853503          	ld	a0,-584(a0) # 202d0 <_impure_ptr>
   1a520:	ec06                	c.sdsp	ra,24(sp)
   1a522:	f83a                	c.sdsp	a4,48(sp)
   1a524:	fc3e                	c.sdsp	a5,56(sp)
   1a526:	e0c2                	c.sdsp	a6,64(sp)
   1a528:	e4c6                	c.sdsp	a7,72(sp)
   1a52a:	e41a                	c.sdsp	t1,8(sp)
   1a52c:	fffff097          	auipc	ra,0xfffff
   1a530:	f44080e7          	jalr	ra,-188(ra) # 19470 <_vfiprintf_r>
   1a534:	60e2                	c.ldsp	ra,24(sp)
   1a536:	6161                	c.addi16sp	sp,80
   1a538:	8082                	c.jr	ra

000000000001a53a <__fputwc>:
   1a53a:	715d                	c.addi16sp	sp,-80
   1a53c:	e0a2                	c.sdsp	s0,64(sp)
   1a53e:	f44e                	c.sdsp	s3,40(sp)
   1a540:	e85a                	c.sdsp	s6,16(sp)
   1a542:	e486                	c.sdsp	ra,72(sp)
   1a544:	fc26                	c.sdsp	s1,56(sp)
   1a546:	f84a                	c.sdsp	s2,48(sp)
   1a548:	f052                	c.sdsp	s4,32(sp)
   1a54a:	ec56                	c.sdsp	s5,24(sp)
   1a54c:	8b2a                	c.mv	s6,a0
   1a54e:	89ae                	c.mv	s3,a1
   1a550:	8432                	c.mv	s0,a2
   1a552:	ffffb097          	auipc	ra,0xffffb
   1a556:	fe4080e7          	jalr	ra,-28(ra) # 15536 <__locale_mb_cur_max>
   1a55a:	4785                	c.li	a5,1
   1a55c:	00f51e63          	bne	a0,a5,1a578 <__fputwc+0x3e>
   1a560:	fff9879b          	addiw	a5,s3,-1
   1a564:	0fe00713          	addi	a4,zero,254
   1a568:	00f76863          	bltu	a4,a5,1a578 <__fputwc+0x3e>
   1a56c:	0ff9f713          	andi	a4,s3,255
   1a570:	00e10423          	sb	a4,8(sp)
   1a574:	4905                	c.li	s2,1
   1a576:	a00d                	c.j	1a598 <__fputwc+0x5e>
   1a578:	0a440693          	addi	a3,s0,164
   1a57c:	864e                	c.mv	a2,s3
   1a57e:	002c                	c.addi4spn	a1,sp,8
   1a580:	855a                	c.mv	a0,s6
   1a582:	00001097          	auipc	ra,0x1
   1a586:	15e080e7          	jalr	ra,350(ra) # 1b6e0 <_wcrtomb_r>
   1a58a:	57fd                	c.li	a5,-1
   1a58c:	892a                	c.mv	s2,a0
   1a58e:	06f50763          	beq	a0,a5,1a5fc <__fputwc+0xc2>
   1a592:	c135                	c.beqz	a0,1a5f6 <__fputwc+0xbc>
   1a594:	00814703          	lbu	a4,8(sp)
   1a598:	4481                	c.li	s1,0
   1a59a:	5a7d                	c.li	s4,-1
   1a59c:	4aa9                	c.li	s5,10
   1a59e:	a831                	c.j	1a5ba <__fputwc+0x80>
   1a5a0:	601c                	c.ld	a5,0(s0)
   1a5a2:	00178693          	addi	a3,a5,1
   1a5a6:	e014                	c.sd	a3,0(s0)
   1a5a8:	00e78023          	sb	a4,0(a5)
   1a5ac:	0485                	c.addi	s1,1
   1a5ae:	003c                	c.addi4spn	a5,sp,8
   1a5b0:	97a6                	c.add	a5,s1
   1a5b2:	0524f263          	bgeu	s1,s2,1a5f6 <__fputwc+0xbc>
   1a5b6:	0007c703          	lbu	a4,0(a5)
   1a5ba:	445c                	c.lw	a5,12(s0)
   1a5bc:	37fd                	c.addiw	a5,-1
   1a5be:	c45c                	c.sw	a5,12(s0)
   1a5c0:	fe07d0e3          	bge	a5,zero,1a5a0 <__fputwc+0x66>
   1a5c4:	5414                	c.lw	a3,40(s0)
   1a5c6:	85ba                	c.mv	a1,a4
   1a5c8:	8622                	c.mv	a2,s0
   1a5ca:	855a                	c.mv	a0,s6
   1a5cc:	00d7c463          	blt	a5,a3,1a5d4 <__fputwc+0x9a>
   1a5d0:	fd5718e3          	bne	a4,s5,1a5a0 <__fputwc+0x66>
   1a5d4:	00001097          	auipc	ra,0x1
   1a5d8:	ff0080e7          	jalr	ra,-16(ra) # 1b5c4 <__swbuf_r>
   1a5dc:	fd4518e3          	bne	a0,s4,1a5ac <__fputwc+0x72>
   1a5e0:	557d                	c.li	a0,-1
   1a5e2:	60a6                	c.ldsp	ra,72(sp)
   1a5e4:	6406                	c.ldsp	s0,64(sp)
   1a5e6:	74e2                	c.ldsp	s1,56(sp)
   1a5e8:	7942                	c.ldsp	s2,48(sp)
   1a5ea:	79a2                	c.ldsp	s3,40(sp)
   1a5ec:	7a02                	c.ldsp	s4,32(sp)
   1a5ee:	6ae2                	c.ldsp	s5,24(sp)
   1a5f0:	6b42                	c.ldsp	s6,16(sp)
   1a5f2:	6161                	c.addi16sp	sp,80
   1a5f4:	8082                	c.jr	ra
   1a5f6:	0009851b          	addiw	a0,s3,0
   1a5fa:	b7e5                	c.j	1a5e2 <__fputwc+0xa8>
   1a5fc:	01045783          	lhu	a5,16(s0)
   1a600:	557d                	c.li	a0,-1
   1a602:	0407e793          	ori	a5,a5,64
   1a606:	00f41823          	sh	a5,16(s0)
   1a60a:	bfe1                	c.j	1a5e2 <__fputwc+0xa8>

000000000001a60c <_fputwc_r>:
   1a60c:	01061783          	lh	a5,16(a2)
   1a610:	03279713          	slli	a4,a5,0x32
   1a614:	00074c63          	blt	a4,zero,1a62c <_fputwc_r+0x20>
   1a618:	0ac62703          	lw	a4,172(a2)
   1a61c:	6689                	c.lui	a3,0x2
   1a61e:	8fd5                	c.or	a5,a3
   1a620:	6689                	c.lui	a3,0x2
   1a622:	8f55                	c.or	a4,a3
   1a624:	00f61823          	sh	a5,16(a2)
   1a628:	0ae62623          	sw	a4,172(a2)
   1a62c:	00000317          	auipc	t1,0x0
   1a630:	f0e30067          	jalr	zero,-242(t1) # 1a53a <__fputwc>

000000000001a634 <fputwc>:
   1a634:	1101                	c.addi	sp,-32
   1a636:	e822                	c.sdsp	s0,16(sp)
   1a638:	ec06                	c.sdsp	ra,24(sp)
   1a63a:	00006417          	auipc	s0,0x6
   1a63e:	c9643403          	ld	s0,-874(s0) # 202d0 <_impure_ptr>
   1a642:	862e                	c.mv	a2,a1
   1a644:	85aa                	c.mv	a1,a0
   1a646:	c019                	c.beqz	s0,1a64c <fputwc+0x18>
   1a648:	483c                	c.lw	a5,80(s0)
   1a64a:	cb8d                	c.beqz	a5,1a67c <fputwc+0x48>
   1a64c:	01061783          	lh	a5,16(a2)
   1a650:	03279713          	slli	a4,a5,0x32
   1a654:	00074c63          	blt	a4,zero,1a66c <fputwc+0x38>
   1a658:	0ac62703          	lw	a4,172(a2)
   1a65c:	6689                	c.lui	a3,0x2
   1a65e:	8fd5                	c.or	a5,a3
   1a660:	6689                	c.lui	a3,0x2
   1a662:	8f55                	c.or	a4,a3
   1a664:	00f61823          	sh	a5,16(a2)
   1a668:	0ae62623          	sw	a4,172(a2)
   1a66c:	8522                	c.mv	a0,s0
   1a66e:	6442                	c.ldsp	s0,16(sp)
   1a670:	60e2                	c.ldsp	ra,24(sp)
   1a672:	6105                	c.addi16sp	sp,32
   1a674:	00000317          	auipc	t1,0x0
   1a678:	ec630067          	jalr	zero,-314(t1) # 1a53a <__fputwc>
   1a67c:	e02a                	c.sdsp	a0,0(sp)
   1a67e:	8522                	c.mv	a0,s0
   1a680:	e432                	c.sdsp	a2,8(sp)
   1a682:	ffff8097          	auipc	ra,0xffff8
   1a686:	3f6080e7          	jalr	ra,1014(ra) # 12a78 <__sinit>
   1a68a:	6622                	c.ldsp	a2,8(sp)
   1a68c:	6582                	c.ldsp	a1,0(sp)
   1a68e:	bf7d                	c.j	1a64c <fputwc+0x18>

000000000001a690 <_fstat_r>:
   1a690:	1141                	c.addi	sp,-16
   1a692:	872e                	c.mv	a4,a1
   1a694:	e022                	c.sdsp	s0,0(sp)
   1a696:	85b2                	c.mv	a1,a2
   1a698:	842a                	c.mv	s0,a0
   1a69a:	853a                	c.mv	a0,a4
   1a69c:	00006797          	auipc	a5,0x6
   1a6a0:	c607a623          	sw	zero,-916(a5) # 20308 <errno>
   1a6a4:	e406                	c.sdsp	ra,8(sp)
   1a6a6:	00001097          	auipc	ra,0x1
   1a6aa:	59a080e7          	jalr	ra,1434(ra) # 1bc40 <_fstat>
   1a6ae:	57fd                	c.li	a5,-1
   1a6b0:	00f50663          	beq	a0,a5,1a6bc <_fstat_r+0x2c>
   1a6b4:	60a2                	c.ldsp	ra,8(sp)
   1a6b6:	6402                	c.ldsp	s0,0(sp)
   1a6b8:	0141                	c.addi	sp,16
   1a6ba:	8082                	c.jr	ra
   1a6bc:	00006797          	auipc	a5,0x6
   1a6c0:	c4c7a783          	lw	a5,-948(a5) # 20308 <errno>
   1a6c4:	dbe5                	c.beqz	a5,1a6b4 <_fstat_r+0x24>
   1a6c6:	60a2                	c.ldsp	ra,8(sp)
   1a6c8:	c01c                	c.sw	a5,0(s0)
   1a6ca:	6402                	c.ldsp	s0,0(sp)
   1a6cc:	0141                	c.addi	sp,16
   1a6ce:	8082                	c.jr	ra

000000000001a6d0 <_isatty_r>:
   1a6d0:	1141                	c.addi	sp,-16
   1a6d2:	e022                	c.sdsp	s0,0(sp)
   1a6d4:	842a                	c.mv	s0,a0
   1a6d6:	852e                	c.mv	a0,a1
   1a6d8:	00006797          	auipc	a5,0x6
   1a6dc:	c207a823          	sw	zero,-976(a5) # 20308 <errno>
   1a6e0:	e406                	c.sdsp	ra,8(sp)
   1a6e2:	00001097          	auipc	ra,0x1
   1a6e6:	5aa080e7          	jalr	ra,1450(ra) # 1bc8c <_isatty>
   1a6ea:	57fd                	c.li	a5,-1
   1a6ec:	00f50663          	beq	a0,a5,1a6f8 <_isatty_r+0x28>
   1a6f0:	60a2                	c.ldsp	ra,8(sp)
   1a6f2:	6402                	c.ldsp	s0,0(sp)
   1a6f4:	0141                	c.addi	sp,16
   1a6f6:	8082                	c.jr	ra
   1a6f8:	00006797          	auipc	a5,0x6
   1a6fc:	c107a783          	lw	a5,-1008(a5) # 20308 <errno>
   1a700:	dbe5                	c.beqz	a5,1a6f0 <_isatty_r+0x20>
   1a702:	60a2                	c.ldsp	ra,8(sp)
   1a704:	c01c                	c.sw	a5,0(s0)
   1a706:	6402                	c.ldsp	s0,0(sp)
   1a708:	0141                	c.addi	sp,16
   1a70a:	8082                	c.jr	ra

000000000001a70c <_lseek_r>:
   1a70c:	1141                	c.addi	sp,-16
   1a70e:	872e                	c.mv	a4,a1
   1a710:	e022                	c.sdsp	s0,0(sp)
   1a712:	85b2                	c.mv	a1,a2
   1a714:	842a                	c.mv	s0,a0
   1a716:	8636                	c.mv	a2,a3
   1a718:	853a                	c.mv	a0,a4
   1a71a:	00006797          	auipc	a5,0x6
   1a71e:	be07a723          	sw	zero,-1042(a5) # 20308 <errno>
   1a722:	e406                	c.sdsp	ra,8(sp)
   1a724:	00001097          	auipc	ra,0x1
   1a728:	5aa080e7          	jalr	ra,1450(ra) # 1bcce <_lseek>
   1a72c:	57fd                	c.li	a5,-1
   1a72e:	00f50663          	beq	a0,a5,1a73a <_lseek_r+0x2e>
   1a732:	60a2                	c.ldsp	ra,8(sp)
   1a734:	6402                	c.ldsp	s0,0(sp)
   1a736:	0141                	c.addi	sp,16
   1a738:	8082                	c.jr	ra
   1a73a:	00006797          	auipc	a5,0x6
   1a73e:	bce7a783          	lw	a5,-1074(a5) # 20308 <errno>
   1a742:	dbe5                	c.beqz	a5,1a732 <_lseek_r+0x26>
   1a744:	60a2                	c.ldsp	ra,8(sp)
   1a746:	c01c                	c.sw	a5,0(s0)
   1a748:	6402                	c.ldsp	s0,0(sp)
   1a74a:	0141                	c.addi	sp,16
   1a74c:	8082                	c.jr	ra

000000000001a74e <_read_r>:
   1a74e:	1141                	c.addi	sp,-16
   1a750:	872e                	c.mv	a4,a1
   1a752:	e022                	c.sdsp	s0,0(sp)
   1a754:	85b2                	c.mv	a1,a2
   1a756:	842a                	c.mv	s0,a0
   1a758:	8636                	c.mv	a2,a3
   1a75a:	853a                	c.mv	a0,a4
   1a75c:	00006797          	auipc	a5,0x6
   1a760:	ba07a623          	sw	zero,-1108(a5) # 20308 <errno>
   1a764:	e406                	c.sdsp	ra,8(sp)
   1a766:	00001097          	auipc	ra,0x1
   1a76a:	598080e7          	jalr	ra,1432(ra) # 1bcfe <_read>
   1a76e:	57fd                	c.li	a5,-1
   1a770:	00f50663          	beq	a0,a5,1a77c <_read_r+0x2e>
   1a774:	60a2                	c.ldsp	ra,8(sp)
   1a776:	6402                	c.ldsp	s0,0(sp)
   1a778:	0141                	c.addi	sp,16
   1a77a:	8082                	c.jr	ra
   1a77c:	00006797          	auipc	a5,0x6
   1a780:	b8c7a783          	lw	a5,-1140(a5) # 20308 <errno>
   1a784:	dbe5                	c.beqz	a5,1a774 <_read_r+0x26>
   1a786:	60a2                	c.ldsp	ra,8(sp)
   1a788:	c01c                	c.sw	a5,0(s0)
   1a78a:	6402                	c.ldsp	s0,0(sp)
   1a78c:	0141                	c.addi	sp,16
   1a78e:	8082                	c.jr	ra

000000000001a790 <cleanup_glue>:
   1a790:	7179                	c.addi16sp	sp,-48
   1a792:	e84a                	c.sdsp	s2,16(sp)
   1a794:	0005b903          	ld	s2,0(a1)
   1a798:	f022                	c.sdsp	s0,32(sp)
   1a79a:	ec26                	c.sdsp	s1,24(sp)
   1a79c:	f406                	c.sdsp	ra,40(sp)
   1a79e:	e44e                	c.sdsp	s3,8(sp)
   1a7a0:	e052                	c.sdsp	s4,0(sp)
   1a7a2:	842e                	c.mv	s0,a1
   1a7a4:	84aa                	c.mv	s1,a0
   1a7a6:	04090363          	beq	s2,zero,1a7ec <cleanup_glue+0x5c>
   1a7aa:	00093983          	ld	s3,0(s2)
   1a7ae:	02098963          	beq	s3,zero,1a7e0 <cleanup_glue+0x50>
   1a7b2:	0009ba03          	ld	s4,0(s3)
   1a7b6:	000a0f63          	beq	s4,zero,1a7d4 <cleanup_glue+0x44>
   1a7ba:	000a3583          	ld	a1,0(s4)
   1a7be:	c589                	c.beqz	a1,1a7c8 <cleanup_glue+0x38>
   1a7c0:	00000097          	auipc	ra,0x0
   1a7c4:	fd0080e7          	jalr	ra,-48(ra) # 1a790 <cleanup_glue>
   1a7c8:	85d2                	c.mv	a1,s4
   1a7ca:	8526                	c.mv	a0,s1
   1a7cc:	ffff8097          	auipc	ra,0xffff8
   1a7d0:	41c080e7          	jalr	ra,1052(ra) # 12be8 <_free_r>
   1a7d4:	85ce                	c.mv	a1,s3
   1a7d6:	8526                	c.mv	a0,s1
   1a7d8:	ffff8097          	auipc	ra,0xffff8
   1a7dc:	410080e7          	jalr	ra,1040(ra) # 12be8 <_free_r>
   1a7e0:	85ca                	c.mv	a1,s2
   1a7e2:	8526                	c.mv	a0,s1
   1a7e4:	ffff8097          	auipc	ra,0xffff8
   1a7e8:	404080e7          	jalr	ra,1028(ra) # 12be8 <_free_r>
   1a7ec:	85a2                	c.mv	a1,s0
   1a7ee:	7402                	c.ldsp	s0,32(sp)
   1a7f0:	70a2                	c.ldsp	ra,40(sp)
   1a7f2:	6942                	c.ldsp	s2,16(sp)
   1a7f4:	69a2                	c.ldsp	s3,8(sp)
   1a7f6:	6a02                	c.ldsp	s4,0(sp)
   1a7f8:	8526                	c.mv	a0,s1
   1a7fa:	64e2                	c.ldsp	s1,24(sp)
   1a7fc:	6145                	c.addi16sp	sp,48
   1a7fe:	ffff8317          	auipc	t1,0xffff8
   1a802:	3ea30067          	jalr	zero,1002(t1) # 12be8 <_free_r>

000000000001a806 <_reclaim_reent>:
   1a806:	00006797          	auipc	a5,0x6
   1a80a:	aca7b783          	ld	a5,-1334(a5) # 202d0 <_impure_ptr>
   1a80e:	0ca78363          	beq	a5,a0,1a8d4 <_reclaim_reent+0xce>
   1a812:	7d2c                	c.ld	a1,120(a0)
   1a814:	7179                	c.addi16sp	sp,-48
   1a816:	ec26                	c.sdsp	s1,24(sp)
   1a818:	f406                	c.sdsp	ra,40(sp)
   1a81a:	f022                	c.sdsp	s0,32(sp)
   1a81c:	e84a                	c.sdsp	s2,16(sp)
   1a81e:	e44e                	c.sdsp	s3,8(sp)
   1a820:	84aa                	c.mv	s1,a0
   1a822:	c98d                	c.beqz	a1,1a854 <_reclaim_reent+0x4e>
   1a824:	4901                	c.li	s2,0
   1a826:	20000993          	addi	s3,zero,512
   1a82a:	012587b3          	add	a5,a1,s2
   1a82e:	6380                	c.ld	s0,0(a5)
   1a830:	c811                	c.beqz	s0,1a844 <_reclaim_reent+0x3e>
   1a832:	85a2                	c.mv	a1,s0
   1a834:	6000                	c.ld	s0,0(s0)
   1a836:	8526                	c.mv	a0,s1
   1a838:	ffff8097          	auipc	ra,0xffff8
   1a83c:	3b0080e7          	jalr	ra,944(ra) # 12be8 <_free_r>
   1a840:	f86d                	c.bnez	s0,1a832 <_reclaim_reent+0x2c>
   1a842:	7cac                	c.ld	a1,120(s1)
   1a844:	0921                	c.addi	s2,8
   1a846:	ff3912e3          	bne	s2,s3,1a82a <_reclaim_reent+0x24>
   1a84a:	8526                	c.mv	a0,s1
   1a84c:	ffff8097          	auipc	ra,0xffff8
   1a850:	39c080e7          	jalr	ra,924(ra) # 12be8 <_free_r>
   1a854:	70ac                	c.ld	a1,96(s1)
   1a856:	c591                	c.beqz	a1,1a862 <_reclaim_reent+0x5c>
   1a858:	8526                	c.mv	a0,s1
   1a85a:	ffff8097          	auipc	ra,0xffff8
   1a85e:	38e080e7          	jalr	ra,910(ra) # 12be8 <_free_r>
   1a862:	1f84b403          	ld	s0,504(s1)
   1a866:	cc11                	c.beqz	s0,1a882 <_reclaim_reent+0x7c>
   1a868:	20048913          	addi	s2,s1,512
   1a86c:	01240b63          	beq	s0,s2,1a882 <_reclaim_reent+0x7c>
   1a870:	85a2                	c.mv	a1,s0
   1a872:	6000                	c.ld	s0,0(s0)
   1a874:	8526                	c.mv	a0,s1
   1a876:	ffff8097          	auipc	ra,0xffff8
   1a87a:	372080e7          	jalr	ra,882(ra) # 12be8 <_free_r>
   1a87e:	fe8919e3          	bne	s2,s0,1a870 <_reclaim_reent+0x6a>
   1a882:	64cc                	c.ld	a1,136(s1)
   1a884:	c591                	c.beqz	a1,1a890 <_reclaim_reent+0x8a>
   1a886:	8526                	c.mv	a0,s1
   1a888:	ffff8097          	auipc	ra,0xffff8
   1a88c:	360080e7          	jalr	ra,864(ra) # 12be8 <_free_r>
   1a890:	48bc                	c.lw	a5,80(s1)
   1a892:	cb95                	c.beqz	a5,1a8c6 <_reclaim_reent+0xc0>
   1a894:	6cbc                	c.ld	a5,88(s1)
   1a896:	8526                	c.mv	a0,s1
   1a898:	9782                	c.jalr	a5
   1a89a:	5204b403          	ld	s0,1312(s1)
   1a89e:	c405                	c.beqz	s0,1a8c6 <_reclaim_reent+0xc0>
   1a8a0:	600c                	c.ld	a1,0(s0)
   1a8a2:	c591                	c.beqz	a1,1a8ae <_reclaim_reent+0xa8>
   1a8a4:	8526                	c.mv	a0,s1
   1a8a6:	00000097          	auipc	ra,0x0
   1a8aa:	eea080e7          	jalr	ra,-278(ra) # 1a790 <cleanup_glue>
   1a8ae:	85a2                	c.mv	a1,s0
   1a8b0:	7402                	c.ldsp	s0,32(sp)
   1a8b2:	70a2                	c.ldsp	ra,40(sp)
   1a8b4:	6942                	c.ldsp	s2,16(sp)
   1a8b6:	69a2                	c.ldsp	s3,8(sp)
   1a8b8:	8526                	c.mv	a0,s1
   1a8ba:	64e2                	c.ldsp	s1,24(sp)
   1a8bc:	6145                	c.addi16sp	sp,48
   1a8be:	ffff8317          	auipc	t1,0xffff8
   1a8c2:	32a30067          	jalr	zero,810(t1) # 12be8 <_free_r>
   1a8c6:	70a2                	c.ldsp	ra,40(sp)
   1a8c8:	7402                	c.ldsp	s0,32(sp)
   1a8ca:	64e2                	c.ldsp	s1,24(sp)
   1a8cc:	6942                	c.ldsp	s2,16(sp)
   1a8ce:	69a2                	c.ldsp	s3,8(sp)
   1a8d0:	6145                	c.addi16sp	sp,48
   1a8d2:	8082                	c.jr	ra
   1a8d4:	8082                	c.jr	ra

000000000001a8d6 <__ssprint_r>:
   1a8d6:	6a1c                	c.ld	a5,16(a2)
   1a8d8:	715d                	c.addi16sp	sp,-80
   1a8da:	f052                	c.sdsp	s4,32(sp)
   1a8dc:	e486                	c.sdsp	ra,72(sp)
   1a8de:	e0a2                	c.sdsp	s0,64(sp)
   1a8e0:	fc26                	c.sdsp	s1,56(sp)
   1a8e2:	f84a                	c.sdsp	s2,48(sp)
   1a8e4:	f44e                	c.sdsp	s3,40(sp)
   1a8e6:	ec56                	c.sdsp	s5,24(sp)
   1a8e8:	e85a                	c.sdsp	s6,16(sp)
   1a8ea:	e45e                	c.sdsp	s7,8(sp)
   1a8ec:	e062                	c.sdsp	s8,0(sp)
   1a8ee:	8a32                	c.mv	s4,a2
   1a8f0:	c7ed                	c.beqz	a5,1a9da <__ssprint_r+0x104>
   1a8f2:	8aaa                	c.mv	s5,a0
   1a8f4:	00063983          	ld	s3,0(a2)
   1a8f8:	6188                	c.ld	a0,0(a1)
   1a8fa:	45c0                	c.lw	s0,12(a1)
   1a8fc:	892e                	c.mv	s2,a1
   1a8fe:	4b01                	c.li	s6,0
   1a900:	4481                	c.li	s1,0
   1a902:	c8fd                	c.beqz	s1,1a9f8 <__ssprint_r+0x122>
   1a904:	8c22                	c.mv	s8,s0
   1a906:	0004879b          	addiw	a5,s1,0
   1a90a:	0e84ed63          	bltu	s1,s0,1aa04 <__ssprint_r+0x12e>
   1a90e:	01095783          	lhu	a5,16(s2)
   1a912:	00048b9b          	addiw	s7,s1,0
   1a916:	4807f713          	andi	a4,a5,1152
   1a91a:	c749                	c.beqz	a4,1a9a4 <__ssprint_r+0xce>
   1a91c:	02092683          	lw	a3,32(s2)
   1a920:	01893583          	ld	a1,24(s2)
   1a924:	00148713          	addi	a4,s1,1
   1a928:	0016941b          	slliw	s0,a3,0x1
   1a92c:	9ea1                	c.addw	a3,s0
   1a92e:	8d0d                	c.sub	a0,a1
   1a930:	01f6d41b          	srliw	s0,a3,0x1f
   1a934:	00050b9b          	addiw	s7,a0,0
   1a938:	9c35                	c.addw	s0,a3
   1a93a:	4014541b          	sraiw	s0,s0,0x1
   1a93e:	975e                	c.add	a4,s7
   1a940:	00e47563          	bgeu	s0,a4,1a94a <__ssprint_r+0x74>
   1a944:	0014841b          	addiw	s0,s1,1
   1a948:	9c29                	c.addw	s0,a0
   1a94a:	4007f793          	andi	a5,a5,1024
   1a94e:	cfdd                	c.beqz	a5,1aa0c <__ssprint_r+0x136>
   1a950:	85a2                	c.mv	a1,s0
   1a952:	8556                	c.mv	a0,s5
   1a954:	ffffb097          	auipc	ra,0xffffb
   1a958:	dfc080e7          	jalr	ra,-516(ra) # 15750 <_malloc_r>
   1a95c:	8c2a                	c.mv	s8,a0
   1a95e:	c571                	c.beqz	a0,1aa2a <__ssprint_r+0x154>
   1a960:	01893583          	ld	a1,24(s2)
   1a964:	865e                	c.mv	a2,s7
   1a966:	ffffb097          	auipc	ra,0xffffb
   1a96a:	53c080e7          	jalr	ra,1340(ra) # 15ea2 <memcpy>
   1a96e:	01095783          	lhu	a5,16(s2)
   1a972:	b7f7f793          	andi	a5,a5,-1153
   1a976:	0807e793          	ori	a5,a5,128
   1a97a:	00f91823          	sh	a5,16(s2)
   1a97e:	017c0533          	add	a0,s8,s7
   1a982:	41740bbb          	subw	s7,s0,s7
   1a986:	0004879b          	addiw	a5,s1,0
   1a98a:	01893c23          	sd	s8,24(s2)
   1a98e:	02892023          	sw	s0,32(s2)
   1a992:	01792623          	sw	s7,12(s2)
   1a996:	00a93023          	sd	a0,0(s2)
   1a99a:	843e                	c.mv	s0,a5
   1a99c:	8bbe                	c.mv	s7,a5
   1a99e:	8c3e                	c.mv	s8,a5
   1a9a0:	06f4e263          	bltu	s1,a5,1aa04 <__ssprint_r+0x12e>
   1a9a4:	8622                	c.mv	a2,s0
   1a9a6:	85da                	c.mv	a1,s6
   1a9a8:	ffffb097          	auipc	ra,0xffffb
   1a9ac:	5e2080e7          	jalr	ra,1506(ra) # 15f8a <memmove>
   1a9b0:	00c92603          	lw	a2,12(s2)
   1a9b4:	00093503          	ld	a0,0(s2)
   1a9b8:	010a3783          	ld	a5,16(s4)
   1a9bc:	4086043b          	subw	s0,a2,s0
   1a9c0:	9562                	c.add	a0,s8
   1a9c2:	00892623          	sw	s0,12(s2)
   1a9c6:	00a93023          	sd	a0,0(s2)
   1a9ca:	417787b3          	sub	a5,a5,s7
   1a9ce:	00fa3823          	sd	a5,16(s4)
   1a9d2:	9b5e                	c.add	s6,s7
   1a9d4:	417484b3          	sub	s1,s1,s7
   1a9d8:	f78d                	c.bnez	a5,1a902 <__ssprint_r+0x2c>
   1a9da:	000a2423          	sw	zero,8(s4)
   1a9de:	4501                	c.li	a0,0
   1a9e0:	60a6                	c.ldsp	ra,72(sp)
   1a9e2:	6406                	c.ldsp	s0,64(sp)
   1a9e4:	74e2                	c.ldsp	s1,56(sp)
   1a9e6:	7942                	c.ldsp	s2,48(sp)
   1a9e8:	79a2                	c.ldsp	s3,40(sp)
   1a9ea:	7a02                	c.ldsp	s4,32(sp)
   1a9ec:	6ae2                	c.ldsp	s5,24(sp)
   1a9ee:	6b42                	c.ldsp	s6,16(sp)
   1a9f0:	6ba2                	c.ldsp	s7,8(sp)
   1a9f2:	6c02                	c.ldsp	s8,0(sp)
   1a9f4:	6161                	c.addi16sp	sp,80
   1a9f6:	8082                	c.jr	ra
   1a9f8:	0009bb03          	ld	s6,0(s3)
   1a9fc:	0089b483          	ld	s1,8(s3)
   1aa00:	09c1                	c.addi	s3,16
   1aa02:	b701                	c.j	1a902 <__ssprint_r+0x2c>
   1aa04:	843e                	c.mv	s0,a5
   1aa06:	8bbe                	c.mv	s7,a5
   1aa08:	8c3e                	c.mv	s8,a5
   1aa0a:	bf69                	c.j	1a9a4 <__ssprint_r+0xce>
   1aa0c:	8622                	c.mv	a2,s0
   1aa0e:	8556                	c.mv	a0,s5
   1aa10:	ffffc097          	auipc	ra,0xffffc
   1aa14:	398080e7          	jalr	ra,920(ra) # 16da8 <_realloc_r>
   1aa18:	8c2a                	c.mv	s8,a0
   1aa1a:	f135                	c.bnez	a0,1a97e <__ssprint_r+0xa8>
   1aa1c:	01893583          	ld	a1,24(s2)
   1aa20:	8556                	c.mv	a0,s5
   1aa22:	ffff8097          	auipc	ra,0xffff8
   1aa26:	1c6080e7          	jalr	ra,454(ra) # 12be8 <_free_r>
   1aa2a:	47b1                	c.li	a5,12
   1aa2c:	00faa023          	sw	a5,0(s5)
   1aa30:	01095783          	lhu	a5,16(s2)
   1aa34:	557d                	c.li	a0,-1
   1aa36:	0407e793          	ori	a5,a5,64
   1aa3a:	00f91823          	sh	a5,16(s2)
   1aa3e:	000a3823          	sd	zero,16(s4)
   1aa42:	000a2423          	sw	zero,8(s4)
   1aa46:	bf69                	c.j	1a9e0 <__ssprint_r+0x10a>

000000000001aa48 <_svfiprintf_r>:
   1aa48:	0105d783          	lhu	a5,16(a1)
   1aa4c:	7145                	c.addi16sp	sp,-464
   1aa4e:	ff26                	c.sdsp	s1,440(sp)
   1aa50:	f74e                	c.sdsp	s3,424(sp)
   1aa52:	f6ee                	c.sdsp	s11,360(sp)
   1aa54:	e786                	c.sdsp	ra,456(sp)
   1aa56:	e3a2                	c.sdsp	s0,448(sp)
   1aa58:	fb4a                	c.sdsp	s2,432(sp)
   1aa5a:	f352                	c.sdsp	s4,416(sp)
   1aa5c:	ef56                	c.sdsp	s5,408(sp)
   1aa5e:	eb5a                	c.sdsp	s6,400(sp)
   1aa60:	e75e                	c.sdsp	s7,392(sp)
   1aa62:	e362                	c.sdsp	s8,384(sp)
   1aa64:	fee6                	c.sdsp	s9,376(sp)
   1aa66:	faea                	c.sdsp	s10,368(sp)
   1aa68:	0807f793          	andi	a5,a5,128
   1aa6c:	e436                	c.sdsp	a3,8(sp)
   1aa6e:	84ae                	c.mv	s1,a1
   1aa70:	89aa                	c.mv	s3,a0
   1aa72:	8db2                	c.mv	s11,a2
   1aa74:	c781                	c.beqz	a5,1aa7c <_svfiprintf_r+0x34>
   1aa76:	6d9c                	c.ld	a5,24(a1)
   1aa78:	1a0786e3          	beq	a5,zero,1b424 <_svfiprintf_r+0x9dc>
   1aa7c:	77e1                	c.lui	a5,0xffff8
   1aa7e:	0e010913          	addi	s2,sp,224
   1aa82:	8307c793          	xori	a5,a5,-2000
   1aa86:	f0ca                	c.sdsp	s2,96(sp)
   1aa88:	f882                	c.sdsp	zero,112(sp)
   1aa8a:	d482                	c.swsp	zero,104(sp)
   1aa8c:	874a                	c.mv	a4,s2
   1aa8e:	e802                	c.sdsp	zero,16(sp)
   1aa90:	f002                	c.sdsp	zero,32(sp)
   1aa92:	f802                	c.sdsp	zero,48(sp)
   1aa94:	f402                	c.sdsp	zero,40(sp)
   1aa96:	e002                	c.sdsp	zero,0(sp)
   1aa98:	00003b97          	auipc	s7,0x3
   1aa9c:	408b8b93          	addi	s7,s7,1032 # 1dea0 <_ctype_+0x108>
   1aaa0:	fc3e                	c.sdsp	a5,56(sp)
   1aaa2:	000dc783          	lbu	a5,0(s11)
   1aaa6:	1a078063          	beq	a5,zero,1ac46 <_svfiprintf_r+0x1fe>
   1aaaa:	846e                	c.mv	s0,s11
   1aaac:	02500693          	addi	a3,zero,37
   1aab0:	1cd78a63          	beq	a5,a3,1ac84 <_svfiprintf_r+0x23c>
   1aab4:	00144783          	lbu	a5,1(s0)
   1aab8:	0405                	c.addi	s0,1
   1aaba:	fbfd                	c.bnez	a5,1aab0 <_svfiprintf_r+0x68>
   1aabc:	41b40c3b          	subw	s8,s0,s11
   1aac0:	180c0363          	beq	s8,zero,1ac46 <_svfiprintf_r+0x1fe>
   1aac4:	76c6                	c.ldsp	a3,112(sp)
   1aac6:	57a6                	c.lwsp	a5,104(sp)
   1aac8:	01b73023          	sd	s11,0(a4)
   1aacc:	96e2                	c.add	a3,s8
   1aace:	2785                	c.addiw	a5,1
   1aad0:	01873423          	sd	s8,8(a4)
   1aad4:	f8b6                	c.sdsp	a3,112(sp)
   1aad6:	d4be                	c.swsp	a5,104(sp)
   1aad8:	0007869b          	addiw	a3,a5,0
   1aadc:	479d                	c.li	a5,7
   1aade:	0741                	c.addi	a4,16
   1aae0:	1ad7c963          	blt	a5,a3,1ac92 <_svfiprintf_r+0x24a>
   1aae4:	6682                	c.ldsp	a3,0(sp)
   1aae6:	00044783          	lbu	a5,0(s0)
   1aaea:	018686bb          	addw	a3,a3,s8
   1aaee:	e036                	c.sdsp	a3,0(sp)
   1aaf0:	14078b63          	beq	a5,zero,1ac46 <_svfiprintf_r+0x1fe>
   1aaf4:	00144783          	lbu	a5,1(s0)
   1aaf8:	00140d93          	addi	s11,s0,1
   1aafc:	04010ba3          	sb	zero,87(sp)
   1ab00:	5afd                	c.li	s5,-1
   1ab02:	4c01                	c.li	s8,0
   1ab04:	4b01                	c.li	s6,0
   1ab06:	4ca5                	c.li	s9,9
   1ab08:	02a00d13          	addi	s10,zero,42
   1ab0c:	843a                	c.mv	s0,a4
   1ab0e:	0d85                	c.addi	s11,1
   1ab10:	2781                	c.addiw	a5,0
   1ab12:	05a00593          	addi	a1,zero,90
   1ab16:	fe07869b          	addiw	a3,a5,-32
   1ab1a:	0006861b          	addiw	a2,a3,0
   1ab1e:	04c5e463          	bltu	a1,a2,1ab66 <_svfiprintf_r+0x11e>
   1ab22:	02069713          	slli	a4,a3,0x20
   1ab26:	01e75693          	srli	a3,a4,0x1e
   1ab2a:	96de                	c.add	a3,s7
   1ab2c:	4294                	c.lw	a3,0(a3)
   1ab2e:	96de                	c.add	a3,s7
   1ab30:	8682                	c.jr	a3
   1ab32:	4c01                	c.li	s8,0
   1ab34:	000dc603          	lbu	a2,0(s11)
   1ab38:	002c169b          	slliw	a3,s8,0x2
   1ab3c:	01868c3b          	addw	s8,a3,s8
   1ab40:	fd07879b          	addiw	a5,a5,-48
   1ab44:	001c1c1b          	slliw	s8,s8,0x1
   1ab48:	fd06069b          	addiw	a3,a2,-48
   1ab4c:	01878c3b          	addw	s8,a5,s8
   1ab50:	0d85                	c.addi	s11,1
   1ab52:	0006079b          	addiw	a5,a2,0
   1ab56:	fcdcffe3          	bgeu	s9,a3,1ab34 <_svfiprintf_r+0xec>
   1ab5a:	fe07869b          	addiw	a3,a5,-32
   1ab5e:	0006861b          	addiw	a2,a3,0
   1ab62:	fcc5f0e3          	bgeu	a1,a2,1ab22 <_svfiprintf_r+0xda>
   1ab66:	8722                	c.mv	a4,s0
   1ab68:	cff9                	c.beqz	a5,1ac46 <_svfiprintf_r+0x1fe>
   1ab6a:	06f10c23          	sb	a5,120(sp)
   1ab6e:	04010ba3          	sb	zero,87(sp)
   1ab72:	4d05                	c.li	s10,1
   1ab74:	4c85                	c.li	s9,1
   1ab76:	07810a13          	addi	s4,sp,120
   1ab7a:	4a81                	c.li	s5,0
   1ab7c:	002b7f13          	andi	t5,s6,2
   1ab80:	000f0363          	beq	t5,zero,1ab86 <_svfiprintf_r+0x13e>
   1ab84:	2d09                	c.addiw	s10,2
   1ab86:	084b7e93          	andi	t4,s6,132
   1ab8a:	77c6                	c.ldsp	a5,112(sp)
   1ab8c:	5626                	c.lwsp	a2,104(sp)
   1ab8e:	000e9663          	bne	t4,zero,1ab9a <_svfiprintf_r+0x152>
   1ab92:	41ac043b          	subw	s0,s8,s10
   1ab96:	5c804063          	blt	zero,s0,1b156 <_svfiprintf_r+0x70e>
   1ab9a:	05714e03          	lbu	t3,87(sp)
   1ab9e:	0016059b          	addiw	a1,a2,1
   1aba2:	01070693          	addi	a3,a4,16
   1aba6:	020e0763          	beq	t3,zero,1abd4 <_svfiprintf_r+0x18c>
   1abaa:	05710e13          	addi	t3,sp,87
   1abae:	0785                	c.addi	a5,1
   1abb0:	01c73023          	sd	t3,0(a4)
   1abb4:	4e05                	c.li	t3,1
   1abb6:	01c73423          	sd	t3,8(a4)
   1abba:	f8be                	c.sdsp	a5,112(sp)
   1abbc:	d4ae                	c.swsp	a1,104(sp)
   1abbe:	451d                	c.li	a0,7
   1abc0:	62b54e63          	blt	a0,a1,1b1fc <_svfiprintf_r+0x7b4>
   1abc4:	00260e1b          	addiw	t3,a2,2
   1abc8:	02070513          	addi	a0,a4,32
   1abcc:	862e                	c.mv	a2,a1
   1abce:	8736                	c.mv	a4,a3
   1abd0:	85f2                	c.mv	a1,t3
   1abd2:	86aa                	c.mv	a3,a0
   1abd4:	020f0063          	beq	t5,zero,1abf4 <_svfiprintf_r+0x1ac>
   1abd8:	08b0                	c.addi4spn	a2,sp,88
   1abda:	e310                	c.sd	a2,0(a4)
   1abdc:	0789                	c.addi	a5,2
   1abde:	4609                	c.li	a2,2
   1abe0:	e710                	c.sd	a2,8(a4)
   1abe2:	f8be                	c.sdsp	a5,112(sp)
   1abe4:	d4ae                	c.swsp	a1,104(sp)
   1abe6:	471d                	c.li	a4,7
   1abe8:	62b74e63          	blt	a4,a1,1b224 <_svfiprintf_r+0x7dc>
   1abec:	862e                	c.mv	a2,a1
   1abee:	8736                	c.mv	a4,a3
   1abf0:	2585                	c.addiw	a1,1
   1abf2:	06c1                	c.addi	a3,16
   1abf4:	08000513          	addi	a0,zero,128
   1abf8:	40ae8763          	beq	t4,a0,1b006 <_svfiprintf_r+0x5be>
   1abfc:	419a8abb          	subw	s5,s5,s9
   1ac00:	49504a63          	blt	zero,s5,1b094 <_svfiprintf_r+0x64c>
   1ac04:	97e6                	c.add	a5,s9
   1ac06:	01473023          	sd	s4,0(a4)
   1ac0a:	01973423          	sd	s9,8(a4)
   1ac0e:	f8be                	c.sdsp	a5,112(sp)
   1ac10:	d4ae                	c.swsp	a1,104(sp)
   1ac12:	471d                	c.li	a4,7
   1ac14:	50b74963          	blt	a4,a1,1b126 <_svfiprintf_r+0x6de>
   1ac18:	004b7893          	andi	a7,s6,4
   1ac1c:	00088663          	beq	a7,zero,1ac28 <_svfiprintf_r+0x1e0>
   1ac20:	41ac043b          	subw	s0,s8,s10
   1ac24:	62804263          	blt	zero,s0,1b248 <_svfiprintf_r+0x800>
   1ac28:	8762                	c.mv	a4,s8
   1ac2a:	01ac5363          	bge	s8,s10,1ac30 <_svfiprintf_r+0x1e8>
   1ac2e:	876a                	c.mv	a4,s10
   1ac30:	6682                	c.ldsp	a3,0(sp)
   1ac32:	9f35                	c.addw	a4,a3
   1ac34:	e03a                	c.sdsp	a4,0(sp)
   1ac36:	50079463          	bne	a5,zero,1b13e <_svfiprintf_r+0x6f6>
   1ac3a:	000dc783          	lbu	a5,0(s11)
   1ac3e:	d482                	c.swsp	zero,104(sp)
   1ac40:	874a                	c.mv	a4,s2
   1ac42:	e60794e3          	bne	a5,zero,1aaaa <_svfiprintf_r+0x62>
   1ac46:	77c6                	c.ldsp	a5,112(sp)
   1ac48:	100799e3          	bne	a5,zero,1b55a <_svfiprintf_r+0xb12>
   1ac4c:	0104d783          	lhu	a5,16(s1)
   1ac50:	0407f793          	andi	a5,a5,64
   1ac54:	12079ee3          	bne	a5,zero,1b590 <_svfiprintf_r+0xb48>
   1ac58:	60be                	c.ldsp	ra,456(sp)
   1ac5a:	641e                	c.ldsp	s0,448(sp)
   1ac5c:	6502                	c.ldsp	a0,0(sp)
   1ac5e:	74fa                	c.ldsp	s1,440(sp)
   1ac60:	795a                	c.ldsp	s2,432(sp)
   1ac62:	79ba                	c.ldsp	s3,424(sp)
   1ac64:	7a1a                	c.ldsp	s4,416(sp)
   1ac66:	6afa                	c.ldsp	s5,408(sp)
   1ac68:	6b5a                	c.ldsp	s6,400(sp)
   1ac6a:	6bba                	c.ldsp	s7,392(sp)
   1ac6c:	6c1a                	c.ldsp	s8,384(sp)
   1ac6e:	7cf6                	c.ldsp	s9,376(sp)
   1ac70:	7d56                	c.ldsp	s10,368(sp)
   1ac72:	7db6                	c.ldsp	s11,360(sp)
   1ac74:	6179                	c.addi16sp	sp,464
   1ac76:	8082                	c.jr	ra
   1ac78:	010b6b13          	ori	s6,s6,16
   1ac7c:	000dc783          	lbu	a5,0(s11)
   1ac80:	2b01                	c.addiw	s6,0
   1ac82:	b571                	c.j	1ab0e <_svfiprintf_r+0xc6>
   1ac84:	41b40c3b          	subw	s8,s0,s11
   1ac88:	e20c1ee3          	bne	s8,zero,1aac4 <_svfiprintf_r+0x7c>
   1ac8c:	00044783          	lbu	a5,0(s0)
   1ac90:	b585                	c.j	1aaf0 <_svfiprintf_r+0xa8>
   1ac92:	1090                	c.addi4spn	a2,sp,96
   1ac94:	85a6                	c.mv	a1,s1
   1ac96:	854e                	c.mv	a0,s3
   1ac98:	00000097          	auipc	ra,0x0
   1ac9c:	c3e080e7          	jalr	ra,-962(ra) # 1a8d6 <__ssprint_r>
   1aca0:	f555                	c.bnez	a0,1ac4c <_svfiprintf_r+0x204>
   1aca2:	874a                	c.mv	a4,s2
   1aca4:	b581                	c.j	1aae4 <_svfiprintf_r+0x9c>
   1aca6:	67a2                	c.ldsp	a5,8(sp)
   1aca8:	04010ba3          	sb	zero,87(sp)
   1acac:	8722                	c.mv	a4,s0
   1acae:	0007ba03          	ld	s4,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd7c80>
   1acb2:	00878413          	addi	s0,a5,8
   1acb6:	000a0ce3          	beq	s4,zero,1b4ce <_svfiprintf_r+0xa86>
   1acba:	57fd                	c.li	a5,-1
   1acbc:	74fa8863          	beq	s5,a5,1b40c <_svfiprintf_r+0x9c4>
   1acc0:	8656                	c.mv	a2,s5
   1acc2:	4581                	c.li	a1,0
   1acc4:	8552                	c.mv	a0,s4
   1acc6:	e43a                	c.sdsp	a4,8(sp)
   1acc8:	ffffb097          	auipc	ra,0xffffb
   1accc:	144080e7          	jalr	ra,324(ra) # 15e0c <memchr>
   1acd0:	6722                	c.ldsp	a4,8(sp)
   1acd2:	08050de3          	beq	a0,zero,1b56c <_svfiprintf_r+0xb24>
   1acd6:	41450cbb          	subw	s9,a0,s4
   1acda:	e422                	c.sdsp	s0,8(sp)
   1acdc:	4a81                	c.li	s5,0
   1acde:	a8b9                	c.j	1ad3c <_svfiprintf_r+0x2f4>
   1ace0:	66a2                	c.ldsp	a3,8(sp)
   1ace2:	8722                	c.mv	a4,s0
   1ace4:	04010ba3          	sb	zero,87(sp)
   1ace8:	429c                	c.lw	a5,0(a3)
   1acea:	06a1                	c.addi	a3,8
   1acec:	e436                	c.sdsp	a3,8(sp)
   1acee:	06f10c23          	sb	a5,120(sp)
   1acf2:	4d05                	c.li	s10,1
   1acf4:	4c85                	c.li	s9,1
   1acf6:	07810a13          	addi	s4,sp,120
   1acfa:	b541                	c.j	1ab7a <_svfiprintf_r+0x132>
   1acfc:	6622                	c.ldsp	a2,8(sp)
   1acfe:	020b7793          	andi	a5,s6,32
   1ad02:	8722                	c.mv	a4,s0
   1ad04:	00860693          	addi	a3,a2,8
   1ad08:	c7f9                	c.beqz	a5,1add6 <_svfiprintf_r+0x38e>
   1ad0a:	621c                	c.ld	a5,0(a2)
   1ad0c:	843e                	c.mv	s0,a5
   1ad0e:	0e07c263          	blt	a5,zero,1adf2 <_svfiprintf_r+0x3aa>
   1ad12:	57fd                	c.li	a5,-1
   1ad14:	76fa8963          	beq	s5,a5,1b486 <_svfiprintf_r+0xa3e>
   1ad18:	f7fb7893          	andi	a7,s6,-129
   1ad1c:	e436                	c.sdsp	a3,8(sp)
   1ad1e:	00088d1b          	addiw	s10,a7,0
   1ad22:	5a040663          	beq	s0,zero,1b2ce <_svfiprintf_r+0x886>
   1ad26:	47a5                	c.li	a5,9
   1ad28:	6087e463          	bltu	a5,s0,1b330 <_svfiprintf_r+0x8e8>
   1ad2c:	0304041b          	addiw	s0,s0,48
   1ad30:	0c810da3          	sb	s0,219(sp)
   1ad34:	8b6a                	c.mv	s6,s10
   1ad36:	4c85                	c.li	s9,1
   1ad38:	0db10a13          	addi	s4,sp,219
   1ad3c:	87d6                	c.mv	a5,s5
   1ad3e:	019ad363          	bge	s5,s9,1ad44 <_svfiprintf_r+0x2fc>
   1ad42:	87e6                	c.mv	a5,s9
   1ad44:	05714683          	lbu	a3,87(sp)
   1ad48:	00078d1b          	addiw	s10,a5,0
   1ad4c:	e20688e3          	beq	a3,zero,1ab7c <_svfiprintf_r+0x134>
   1ad50:	00178d1b          	addiw	s10,a5,1
   1ad54:	b525                	c.j	1ab7c <_svfiprintf_r+0x134>
   1ad56:	000dc783          	lbu	a5,0(s11)
   1ad5a:	06800693          	addi	a3,zero,104
   1ad5e:	72d78763          	beq	a5,a3,1b48c <_svfiprintf_r+0xa44>
   1ad62:	040b6b13          	ori	s6,s6,64
   1ad66:	2b01                	c.addiw	s6,0
   1ad68:	b35d                	c.j	1ab0e <_svfiprintf_r+0xc6>
   1ad6a:	010b6893          	ori	a7,s6,16
   1ad6e:	8722                	c.mv	a4,s0
   1ad70:	00088d1b          	addiw	s10,a7,0
   1ad74:	6622                	c.ldsp	a2,8(sp)
   1ad76:	020d7793          	andi	a5,s10,32
   1ad7a:	00860693          	addi	a3,a2,8
   1ad7e:	56078063          	beq	a5,zero,1b2de <_svfiprintf_r+0x896>
   1ad82:	6200                	c.ld	s0,0(a2)
   1ad84:	4785                	c.li	a5,1
   1ad86:	e436                	c.sdsp	a3,8(sp)
   1ad88:	04010ba3          	sb	zero,87(sp)
   1ad8c:	56fd                	c.li	a3,-1
   1ad8e:	06da8e63          	beq	s5,a3,1ae0a <_svfiprintf_r+0x3c2>
   1ad92:	f7fd7893          	andi	a7,s10,-129
   1ad96:	00088b1b          	addiw	s6,a7,0
   1ad9a:	3a041c63          	bne	s0,zero,1b152 <_svfiprintf_r+0x70a>
   1ad9e:	220a9b63          	bne	s5,zero,1afd4 <_svfiprintf_r+0x58c>
   1ada2:	52079963          	bne	a5,zero,1b2d4 <_svfiprintf_r+0x88c>
   1ada6:	001d7c93          	andi	s9,s10,1
   1adaa:	0dc10a13          	addi	s4,sp,220
   1adae:	f80c87e3          	beq	s9,zero,1ad3c <_svfiprintf_r+0x2f4>
   1adb2:	03000793          	addi	a5,zero,48
   1adb6:	0cf10da3          	sb	a5,219(sp)
   1adba:	0db10a13          	addi	s4,sp,219
   1adbe:	bfbd                	c.j	1ad3c <_svfiprintf_r+0x2f4>
   1adc0:	6622                	c.ldsp	a2,8(sp)
   1adc2:	010b6893          	ori	a7,s6,16
   1adc6:	00088b1b          	addiw	s6,a7,0
   1adca:	020b7793          	andi	a5,s6,32
   1adce:	8722                	c.mv	a4,s0
   1add0:	00860693          	addi	a3,a2,8
   1add4:	fb9d                	c.bnez	a5,1ad0a <_svfiprintf_r+0x2c2>
   1add6:	010b7793          	andi	a5,s6,16
   1adda:	5a079763          	bne	a5,zero,1b388 <_svfiprintf_r+0x940>
   1adde:	040b7793          	andi	a5,s6,64
   1ade2:	72078063          	beq	a5,zero,1b502 <_svfiprintf_r+0xaba>
   1ade6:	67a2                	c.ldsp	a5,8(sp)
   1ade8:	00079403          	lh	s0,0(a5)
   1adec:	87a2                	c.mv	a5,s0
   1adee:	f207d2e3          	bge	a5,zero,1ad12 <_svfiprintf_r+0x2ca>
   1adf2:	02d00793          	addi	a5,zero,45
   1adf6:	04f10ba3          	sb	a5,87(sp)
   1adfa:	e436                	c.sdsp	a3,8(sp)
   1adfc:	56fd                	c.li	a3,-1
   1adfe:	40800433          	sub	s0,zero,s0
   1ae02:	8d5a                	c.mv	s10,s6
   1ae04:	4785                	c.li	a5,1
   1ae06:	f8da96e3          	bne	s5,a3,1ad92 <_svfiprintf_r+0x34a>
   1ae0a:	4685                	c.li	a3,1
   1ae0c:	f0d78de3          	beq	a5,a3,1ad26 <_svfiprintf_r+0x2de>
   1ae10:	4689                	c.li	a3,2
   1ae12:	1cd78863          	beq	a5,a3,1afe2 <_svfiprintf_r+0x59a>
   1ae16:	0dc10a13          	addi	s4,sp,220
   1ae1a:	00747793          	andi	a5,s0,7
   1ae1e:	03078793          	addi	a5,a5,48
   1ae22:	fefa0fa3          	sb	a5,-1(s4)
   1ae26:	800d                	c.srli	s0,0x3
   1ae28:	86d2                	c.mv	a3,s4
   1ae2a:	1a7d                	c.addi	s4,-1
   1ae2c:	f47d                	c.bnez	s0,1ae1a <_svfiprintf_r+0x3d2>
   1ae2e:	001d7613          	andi	a2,s10,1
   1ae32:	1c060563          	beq	a2,zero,1affc <_svfiprintf_r+0x5b4>
   1ae36:	03000613          	addi	a2,zero,48
   1ae3a:	1cc78163          	beq	a5,a2,1affc <_svfiprintf_r+0x5b4>
   1ae3e:	16f9                	c.addi	a3,-2
   1ae40:	09fc                	c.addi4spn	a5,sp,220
   1ae42:	feca0fa3          	sb	a2,-1(s4)
   1ae46:	40d78cbb          	subw	s9,a5,a3
   1ae4a:	8b6a                	c.mv	s6,s10
   1ae4c:	8a36                	c.mv	s4,a3
   1ae4e:	b5fd                	c.j	1ad3c <_svfiprintf_r+0x2f4>
   1ae50:	010b6893          	ori	a7,s6,16
   1ae54:	8722                	c.mv	a4,s0
   1ae56:	00088b1b          	addiw	s6,a7,0
   1ae5a:	6622                	c.ldsp	a2,8(sp)
   1ae5c:	020b7793          	andi	a5,s6,32
   1ae60:	00860693          	addi	a3,a2,8
   1ae64:	48078b63          	beq	a5,zero,1b2fa <_svfiprintf_r+0x8b2>
   1ae68:	6200                	c.ld	s0,0(a2)
   1ae6a:	bffb7893          	andi	a7,s6,-1025
   1ae6e:	00088d1b          	addiw	s10,a7,0
   1ae72:	e436                	c.sdsp	a3,8(sp)
   1ae74:	4781                	c.li	a5,0
   1ae76:	bf09                	c.j	1ad88 <_svfiprintf_r+0x340>
   1ae78:	020b6b13          	ori	s6,s6,32
   1ae7c:	000dc783          	lbu	a5,0(s11)
   1ae80:	2b01                	c.addiw	s6,0
   1ae82:	b171                	c.j	1ab0e <_svfiprintf_r+0xc6>
   1ae84:	080b6b13          	ori	s6,s6,128
   1ae88:	000dc783          	lbu	a5,0(s11)
   1ae8c:	2b01                	c.addiw	s6,0
   1ae8e:	b141                	c.j	1ab0e <_svfiprintf_r+0xc6>
   1ae90:	000dc783          	lbu	a5,0(s11)
   1ae94:	001d8693          	addi	a3,s11,1
   1ae98:	71a78063          	beq	a5,s10,1b598 <_svfiprintf_r+0xb50>
   1ae9c:	fd07861b          	addiw	a2,a5,-48
   1aea0:	8db6                	c.mv	s11,a3
   1aea2:	4a81                	c.li	s5,0
   1aea4:	c6cce9e3          	bltu	s9,a2,1ab16 <_svfiprintf_r+0xce>
   1aea8:	000dc783          	lbu	a5,0(s11)
   1aeac:	002a969b          	slliw	a3,s5,0x2
   1aeb0:	01568abb          	addw	s5,a3,s5
   1aeb4:	001a9a9b          	slliw	s5,s5,0x1
   1aeb8:	00ca8abb          	addw	s5,s5,a2
   1aebc:	fd07861b          	addiw	a2,a5,-48
   1aec0:	0d85                	c.addi	s11,1
   1aec2:	feccf3e3          	bgeu	s9,a2,1aea8 <_svfiprintf_r+0x460>
   1aec6:	b981                	c.j	1ab16 <_svfiprintf_r+0xce>
   1aec8:	000dc783          	lbu	a5,0(s11)
   1aecc:	004b6b13          	ori	s6,s6,4
   1aed0:	2b01                	c.addiw	s6,0
   1aed2:	b935                	c.j	1ab0e <_svfiprintf_r+0xc6>
   1aed4:	02b00693          	addi	a3,zero,43
   1aed8:	000dc783          	lbu	a5,0(s11)
   1aedc:	04d10ba3          	sb	a3,87(sp)
   1aee0:	b13d                	c.j	1ab0e <_svfiprintf_r+0xc6>
   1aee2:	6722                	c.ldsp	a4,8(sp)
   1aee4:	000dc783          	lbu	a5,0(s11)
   1aee8:	00072c03          	lw	s8,0(a4)
   1aeec:	0721                	c.addi	a4,8
   1aeee:	e43a                	c.sdsp	a4,8(sp)
   1aef0:	c00c5fe3          	bge	s8,zero,1ab0e <_svfiprintf_r+0xc6>
   1aef4:	41800c3b          	subw	s8,zero,s8
   1aef8:	bfd1                	c.j	1aecc <_svfiprintf_r+0x484>
   1aefa:	854e                	c.mv	a0,s3
   1aefc:	ffffa097          	auipc	ra,0xffffa
   1af00:	5c2080e7          	jalr	ra,1474(ra) # 154be <_localeconv_r>
   1af04:	651c                	c.ld	a5,8(a0)
   1af06:	853e                	c.mv	a0,a5
   1af08:	f43e                	c.sdsp	a5,40(sp)
   1af0a:	ffff5097          	auipc	ra,0xffff5
   1af0e:	5c0080e7          	jalr	ra,1472(ra) # 104ca <strlen>
   1af12:	87aa                	c.mv	a5,a0
   1af14:	854e                	c.mv	a0,s3
   1af16:	8a3e                	c.mv	s4,a5
   1af18:	f83e                	c.sdsp	a5,48(sp)
   1af1a:	ffffa097          	auipc	ra,0xffffa
   1af1e:	5a4080e7          	jalr	ra,1444(ra) # 154be <_localeconv_r>
   1af22:	6918                	c.ld	a4,16(a0)
   1af24:	000dc783          	lbu	a5,0(s11)
   1af28:	f03a                	c.sdsp	a4,32(sp)
   1af2a:	be0a02e3          	beq	s4,zero,1ab0e <_svfiprintf_r+0xc6>
   1af2e:	be0700e3          	beq	a4,zero,1ab0e <_svfiprintf_r+0xc6>
   1af32:	00074683          	lbu	a3,0(a4)
   1af36:	bc068ce3          	beq	a3,zero,1ab0e <_svfiprintf_r+0xc6>
   1af3a:	400b6b13          	ori	s6,s6,1024
   1af3e:	2b01                	c.addiw	s6,0
   1af40:	b6f9                	c.j	1ab0e <_svfiprintf_r+0xc6>
   1af42:	001b6b13          	ori	s6,s6,1
   1af46:	000dc783          	lbu	a5,0(s11)
   1af4a:	2b01                	c.addiw	s6,0
   1af4c:	b6c9                	c.j	1ab0e <_svfiprintf_r+0xc6>
   1af4e:	05714683          	lbu	a3,87(sp)
   1af52:	000dc783          	lbu	a5,0(s11)
   1af56:	ba069ce3          	bne	a3,zero,1ab0e <_svfiprintf_r+0xc6>
   1af5a:	02000693          	addi	a3,zero,32
   1af5e:	04d10ba3          	sb	a3,87(sp)
   1af62:	b675                	c.j	1ab0e <_svfiprintf_r+0xc6>
   1af64:	67a2                	c.ldsp	a5,8(sp)
   1af66:	76e2                	c.ldsp	a3,56(sp)
   1af68:	8722                	c.mv	a4,s0
   1af6a:	07a1                	c.addi	a5,8
   1af6c:	ff87b403          	ld	s0,-8(a5)
   1af70:	002b6893          	ori	a7,s6,2
   1af74:	e43e                	c.sdsp	a5,8(sp)
   1af76:	00002797          	auipc	a5,0x2
   1af7a:	36a78793          	addi	a5,a5,874 # 1d2e0 <__clzdi2+0xc8>
   1af7e:	e83e                	c.sdsp	a5,16(sp)
   1af80:	00088d1b          	addiw	s10,a7,0
   1af84:	04d11c23          	sh	a3,88(sp)
   1af88:	4789                	c.li	a5,2
   1af8a:	bbfd                	c.j	1ad88 <_svfiprintf_r+0x340>
   1af8c:	6622                	c.ldsp	a2,8(sp)
   1af8e:	020b7793          	andi	a5,s6,32
   1af92:	8722                	c.mv	a4,s0
   1af94:	6214                	c.ld	a3,0(a2)
   1af96:	0621                	c.addi	a2,8
   1af98:	e432                	c.sdsp	a2,8(sp)
   1af9a:	e385                	c.bnez	a5,1afba <_svfiprintf_r+0x572>
   1af9c:	010b7793          	andi	a5,s6,16
   1afa0:	ef89                	c.bnez	a5,1afba <_svfiprintf_r+0x572>
   1afa2:	040b7793          	andi	a5,s6,64
   1afa6:	5a079563          	bne	a5,zero,1b550 <_svfiprintf_r+0xb08>
   1afaa:	200b7893          	andi	a7,s6,512
   1afae:	6782                	c.ldsp	a5,0(sp)
   1afb0:	5c088d63          	beq	a7,zero,1b58a <_svfiprintf_r+0xb42>
   1afb4:	00f68023          	sb	a5,0(a3) # 2000 <register_fini-0xe0b0>
   1afb8:	b4ed                	c.j	1aaa2 <_svfiprintf_r+0x5a>
   1afba:	6782                	c.ldsp	a5,0(sp)
   1afbc:	e29c                	c.sd	a5,0(a3)
   1afbe:	b4d5                	c.j	1aaa2 <_svfiprintf_r+0x5a>
   1afc0:	000dc783          	lbu	a5,0(s11)
   1afc4:	06c00693          	addi	a3,zero,108
   1afc8:	4cd78a63          	beq	a5,a3,1b49c <_svfiprintf_r+0xa54>
   1afcc:	010b6b13          	ori	s6,s6,16
   1afd0:	2b01                	c.addiw	s6,0
   1afd2:	be35                	c.j	1ab0e <_svfiprintf_r+0xc6>
   1afd4:	4685                	c.li	a3,1
   1afd6:	5ad78063          	beq	a5,a3,1b576 <_svfiprintf_r+0xb2e>
   1afda:	4689                	c.li	a3,2
   1afdc:	8d5a                	c.mv	s10,s6
   1afde:	e2d79ce3          	bne	a5,a3,1ae16 <_svfiprintf_r+0x3ce>
   1afe2:	66c2                	c.ldsp	a3,16(sp)
   1afe4:	0dc10a13          	addi	s4,sp,220
   1afe8:	00f47793          	andi	a5,s0,15
   1afec:	97b6                	c.add	a5,a3
   1afee:	0007c783          	lbu	a5,0(a5)
   1aff2:	8011                	c.srli	s0,0x4
   1aff4:	1a7d                	c.addi	s4,-1
   1aff6:	00fa0023          	sb	a5,0(s4)
   1affa:	f47d                	c.bnez	s0,1afe8 <_svfiprintf_r+0x5a0>
   1affc:	09fc                	c.addi4spn	a5,sp,220
   1affe:	41478cbb          	subw	s9,a5,s4
   1b002:	8b6a                	c.mv	s6,s10
   1b004:	bb25                	c.j	1ad3c <_svfiprintf_r+0x2f4>
   1b006:	41ac043b          	subw	s0,s8,s10
   1b00a:	be8059e3          	bge	zero,s0,1abfc <_svfiprintf_r+0x1b4>
   1b00e:	4541                	c.li	a0,16
   1b010:	56855663          	bge	a0,s0,1b57c <_svfiprintf_r+0xb34>
   1b014:	00003e17          	auipc	t3,0x3
   1b018:	00ce0e13          	addi	t3,t3,12 # 1e020 <zeroes.0>
   1b01c:	ec52                	c.sdsp	s4,24(sp)
   1b01e:	4ec1                	c.li	t4,16
   1b020:	8a26                	c.mv	s4,s1
   1b022:	4f1d                	c.li	t5,7
   1b024:	84f2                	c.mv	s1,t3
   1b026:	a021                	c.j	1b02e <_svfiprintf_r+0x5e6>
   1b028:	3441                	c.addiw	s0,-16
   1b02a:	028edd63          	bge	t4,s0,1b064 <_svfiprintf_r+0x61c>
   1b02e:	2605                	c.addiw	a2,1
   1b030:	07c1                	c.addi	a5,16
   1b032:	e304                	c.sd	s1,0(a4)
   1b034:	01d73423          	sd	t4,8(a4)
   1b038:	f8be                	c.sdsp	a5,112(sp)
   1b03a:	d4b2                	c.swsp	a2,104(sp)
   1b03c:	0741                	c.addi	a4,16
   1b03e:	fecf55e3          	bge	t5,a2,1b028 <_svfiprintf_r+0x5e0>
   1b042:	1090                	c.addi4spn	a2,sp,96
   1b044:	85d2                	c.mv	a1,s4
   1b046:	854e                	c.mv	a0,s3
   1b048:	00000097          	auipc	ra,0x0
   1b04c:	88e080e7          	jalr	ra,-1906(ra) # 1a8d6 <__ssprint_r>
   1b050:	26051d63          	bne	a0,zero,1b2ca <_svfiprintf_r+0x882>
   1b054:	4ec1                	c.li	t4,16
   1b056:	3441                	c.addiw	s0,-16
   1b058:	77c6                	c.ldsp	a5,112(sp)
   1b05a:	5626                	c.lwsp	a2,104(sp)
   1b05c:	874a                	c.mv	a4,s2
   1b05e:	4f1d                	c.li	t5,7
   1b060:	fc8ec7e3          	blt	t4,s0,1b02e <_svfiprintf_r+0x5e6>
   1b064:	8e26                	c.mv	t3,s1
   1b066:	84d2                	c.mv	s1,s4
   1b068:	6a62                	c.ldsp	s4,24(sp)
   1b06a:	2605                	c.addiw	a2,1
   1b06c:	01070513          	addi	a0,a4,16
   1b070:	97a2                	c.add	a5,s0
   1b072:	01c73023          	sd	t3,0(a4)
   1b076:	e700                	c.sd	s0,8(a4)
   1b078:	f8be                	c.sdsp	a5,112(sp)
   1b07a:	d4b2                	c.swsp	a2,104(sp)
   1b07c:	471d                	c.li	a4,7
   1b07e:	42c74763          	blt	a4,a2,1b4ac <_svfiprintf_r+0xa64>
   1b082:	419a8abb          	subw	s5,s5,s9
   1b086:	0016059b          	addiw	a1,a2,1
   1b08a:	01050693          	addi	a3,a0,16
   1b08e:	872a                	c.mv	a4,a0
   1b090:	b7505ae3          	bge	zero,s5,1ac04 <_svfiprintf_r+0x1bc>
   1b094:	4541                	c.li	a0,16
   1b096:	49555763          	bge	a0,s5,1b524 <_svfiprintf_r+0xadc>
   1b09a:	00003e17          	auipc	t3,0x3
   1b09e:	f86e0e13          	addi	t3,t3,-122 # 1e020 <zeroes.0>
   1b0a2:	ec52                	c.sdsp	s4,24(sp)
   1b0a4:	4841                	c.li	a6,16
   1b0a6:	8a26                	c.mv	s4,s1
   1b0a8:	441d                	c.li	s0,7
   1b0aa:	84f2                	c.mv	s1,t3
   1b0ac:	a021                	c.j	1b0b4 <_svfiprintf_r+0x66c>
   1b0ae:	3ac1                	c.addiw	s5,-16
   1b0b0:	03585c63          	bge	a6,s5,1b0e8 <_svfiprintf_r+0x6a0>
   1b0b4:	2605                	c.addiw	a2,1
   1b0b6:	07c1                	c.addi	a5,16
   1b0b8:	e304                	c.sd	s1,0(a4)
   1b0ba:	01073423          	sd	a6,8(a4)
   1b0be:	f8be                	c.sdsp	a5,112(sp)
   1b0c0:	d4b2                	c.swsp	a2,104(sp)
   1b0c2:	0741                	c.addi	a4,16
   1b0c4:	fec455e3          	bge	s0,a2,1b0ae <_svfiprintf_r+0x666>
   1b0c8:	1090                	c.addi4spn	a2,sp,96
   1b0ca:	85d2                	c.mv	a1,s4
   1b0cc:	854e                	c.mv	a0,s3
   1b0ce:	00000097          	auipc	ra,0x0
   1b0d2:	808080e7          	jalr	ra,-2040(ra) # 1a8d6 <__ssprint_r>
   1b0d6:	1e051a63          	bne	a0,zero,1b2ca <_svfiprintf_r+0x882>
   1b0da:	4841                	c.li	a6,16
   1b0dc:	3ac1                	c.addiw	s5,-16
   1b0de:	77c6                	c.ldsp	a5,112(sp)
   1b0e0:	5626                	c.lwsp	a2,104(sp)
   1b0e2:	874a                	c.mv	a4,s2
   1b0e4:	fd5848e3          	blt	a6,s5,1b0b4 <_svfiprintf_r+0x66c>
   1b0e8:	8e26                	c.mv	t3,s1
   1b0ea:	84d2                	c.mv	s1,s4
   1b0ec:	6a62                	c.ldsp	s4,24(sp)
   1b0ee:	0016059b          	addiw	a1,a2,1
   1b0f2:	01070613          	addi	a2,a4,16
   1b0f6:	97d6                	c.add	a5,s5
   1b0f8:	01c73023          	sd	t3,0(a4)
   1b0fc:	01573423          	sd	s5,8(a4)
   1b100:	f8be                	c.sdsp	a5,112(sp)
   1b102:	d4ae                	c.swsp	a1,104(sp)
   1b104:	471d                	c.li	a4,7
   1b106:	20b74663          	blt	a4,a1,1b312 <_svfiprintf_r+0x8ca>
   1b10a:	8732                	c.mv	a4,a2
   1b10c:	2585                	c.addiw	a1,1
   1b10e:	97e6                	c.add	a5,s9
   1b110:	01473023          	sd	s4,0(a4)
   1b114:	01973423          	sd	s9,8(a4)
   1b118:	f8be                	c.sdsp	a5,112(sp)
   1b11a:	d4ae                	c.swsp	a1,104(sp)
   1b11c:	471d                	c.li	a4,7
   1b11e:	01060693          	addi	a3,a2,16
   1b122:	aeb75be3          	bge	a4,a1,1ac18 <_svfiprintf_r+0x1d0>
   1b126:	1090                	c.addi4spn	a2,sp,96
   1b128:	85a6                	c.mv	a1,s1
   1b12a:	854e                	c.mv	a0,s3
   1b12c:	fffff097          	auipc	ra,0xfffff
   1b130:	7aa080e7          	jalr	ra,1962(ra) # 1a8d6 <__ssprint_r>
   1b134:	b0051ce3          	bne	a0,zero,1ac4c <_svfiprintf_r+0x204>
   1b138:	77c6                	c.ldsp	a5,112(sp)
   1b13a:	86ca                	c.mv	a3,s2
   1b13c:	bcf1                	c.j	1ac18 <_svfiprintf_r+0x1d0>
   1b13e:	1090                	c.addi4spn	a2,sp,96
   1b140:	85a6                	c.mv	a1,s1
   1b142:	854e                	c.mv	a0,s3
   1b144:	fffff097          	auipc	ra,0xfffff
   1b148:	792080e7          	jalr	ra,1938(ra) # 1a8d6 <__ssprint_r>
   1b14c:	ae0507e3          	beq	a0,zero,1ac3a <_svfiprintf_r+0x1f2>
   1b150:	bcf5                	c.j	1ac4c <_svfiprintf_r+0x204>
   1b152:	8d5a                	c.mv	s10,s6
   1b154:	b95d                	c.j	1ae0a <_svfiprintf_r+0x3c2>
   1b156:	46c1                	c.li	a3,16
   1b158:	00003e17          	auipc	t3,0x3
   1b15c:	eb8e0e13          	addi	t3,t3,-328 # 1e010 <blanks.1>
   1b160:	0686d263          	bge	a3,s0,1b1c4 <_svfiprintf_r+0x77c>
   1b164:	e4ee                	c.sdsp	s11,72(sp)
   1b166:	4fc1                	c.li	t6,16
   1b168:	8de6                	c.mv	s11,s9
   1b16a:	429d                	c.li	t0,7
   1b16c:	8cd6                	c.mv	s9,s5
   1b16e:	ec7a                	c.sdsp	t5,24(sp)
   1b170:	8ad2                	c.mv	s5,s4
   1b172:	e0f6                	c.sdsp	t4,64(sp)
   1b174:	8a72                	c.mv	s4,t3
   1b176:	a021                	c.j	1b17e <_svfiprintf_r+0x736>
   1b178:	3441                	c.addiw	s0,-16
   1b17a:	028fde63          	bge	t6,s0,1b1b6 <_svfiprintf_r+0x76e>
   1b17e:	2605                	c.addiw	a2,1
   1b180:	07c1                	c.addi	a5,16
   1b182:	01473023          	sd	s4,0(a4)
   1b186:	01f73423          	sd	t6,8(a4)
   1b18a:	f8be                	c.sdsp	a5,112(sp)
   1b18c:	d4b2                	c.swsp	a2,104(sp)
   1b18e:	0741                	c.addi	a4,16
   1b190:	fec2d4e3          	bge	t0,a2,1b178 <_svfiprintf_r+0x730>
   1b194:	1090                	c.addi4spn	a2,sp,96
   1b196:	85a6                	c.mv	a1,s1
   1b198:	854e                	c.mv	a0,s3
   1b19a:	fffff097          	auipc	ra,0xfffff
   1b19e:	73c080e7          	jalr	ra,1852(ra) # 1a8d6 <__ssprint_r>
   1b1a2:	aa0515e3          	bne	a0,zero,1ac4c <_svfiprintf_r+0x204>
   1b1a6:	4fc1                	c.li	t6,16
   1b1a8:	3441                	c.addiw	s0,-16
   1b1aa:	77c6                	c.ldsp	a5,112(sp)
   1b1ac:	5626                	c.lwsp	a2,104(sp)
   1b1ae:	874a                	c.mv	a4,s2
   1b1b0:	429d                	c.li	t0,7
   1b1b2:	fc8fc6e3          	blt	t6,s0,1b17e <_svfiprintf_r+0x736>
   1b1b6:	8e52                	c.mv	t3,s4
   1b1b8:	6f62                	c.ldsp	t5,24(sp)
   1b1ba:	8a56                	c.mv	s4,s5
   1b1bc:	6e86                	c.ldsp	t4,64(sp)
   1b1be:	8ae6                	c.mv	s5,s9
   1b1c0:	8cee                	c.mv	s9,s11
   1b1c2:	6da6                	c.ldsp	s11,72(sp)
   1b1c4:	2605                	c.addiw	a2,1
   1b1c6:	97a2                	c.add	a5,s0
   1b1c8:	01c73023          	sd	t3,0(a4)
   1b1cc:	e700                	c.sd	s0,8(a4)
   1b1ce:	f8be                	c.sdsp	a5,112(sp)
   1b1d0:	d4b2                	c.swsp	a2,104(sp)
   1b1d2:	469d                	c.li	a3,7
   1b1d4:	0741                	c.addi	a4,16
   1b1d6:	9cc6d2e3          	bge	a3,a2,1ab9a <_svfiprintf_r+0x152>
   1b1da:	1090                	c.addi4spn	a2,sp,96
   1b1dc:	85a6                	c.mv	a1,s1
   1b1de:	854e                	c.mv	a0,s3
   1b1e0:	e0f6                	c.sdsp	t4,64(sp)
   1b1e2:	ec7a                	c.sdsp	t5,24(sp)
   1b1e4:	fffff097          	auipc	ra,0xfffff
   1b1e8:	6f2080e7          	jalr	ra,1778(ra) # 1a8d6 <__ssprint_r>
   1b1ec:	a60510e3          	bne	a0,zero,1ac4c <_svfiprintf_r+0x204>
   1b1f0:	77c6                	c.ldsp	a5,112(sp)
   1b1f2:	5626                	c.lwsp	a2,104(sp)
   1b1f4:	6e86                	c.ldsp	t4,64(sp)
   1b1f6:	6f62                	c.ldsp	t5,24(sp)
   1b1f8:	874a                	c.mv	a4,s2
   1b1fa:	b245                	c.j	1ab9a <_svfiprintf_r+0x152>
   1b1fc:	1090                	c.addi4spn	a2,sp,96
   1b1fe:	85a6                	c.mv	a1,s1
   1b200:	854e                	c.mv	a0,s3
   1b202:	e0f6                	c.sdsp	t4,64(sp)
   1b204:	ec7a                	c.sdsp	t5,24(sp)
   1b206:	fffff097          	auipc	ra,0xfffff
   1b20a:	6d0080e7          	jalr	ra,1744(ra) # 1a8d6 <__ssprint_r>
   1b20e:	a2051fe3          	bne	a0,zero,1ac4c <_svfiprintf_r+0x204>
   1b212:	5626                	c.lwsp	a2,104(sp)
   1b214:	77c6                	c.ldsp	a5,112(sp)
   1b216:	6e86                	c.ldsp	t4,64(sp)
   1b218:	6f62                	c.ldsp	t5,24(sp)
   1b21a:	1994                	c.addi4spn	a3,sp,240
   1b21c:	0016059b          	addiw	a1,a2,1
   1b220:	874a                	c.mv	a4,s2
   1b222:	ba4d                	c.j	1abd4 <_svfiprintf_r+0x18c>
   1b224:	1090                	c.addi4spn	a2,sp,96
   1b226:	85a6                	c.mv	a1,s1
   1b228:	854e                	c.mv	a0,s3
   1b22a:	ec76                	c.sdsp	t4,24(sp)
   1b22c:	fffff097          	auipc	ra,0xfffff
   1b230:	6aa080e7          	jalr	ra,1706(ra) # 1a8d6 <__ssprint_r>
   1b234:	a0051ce3          	bne	a0,zero,1ac4c <_svfiprintf_r+0x204>
   1b238:	5626                	c.lwsp	a2,104(sp)
   1b23a:	77c6                	c.ldsp	a5,112(sp)
   1b23c:	6ee2                	c.ldsp	t4,24(sp)
   1b23e:	1994                	c.addi4spn	a3,sp,240
   1b240:	0016059b          	addiw	a1,a2,1
   1b244:	874a                	c.mv	a4,s2
   1b246:	b27d                	c.j	1abf4 <_svfiprintf_r+0x1ac>
   1b248:	00003e17          	auipc	t3,0x3
   1b24c:	dc8e0e13          	addi	t3,t3,-568 # 1e010 <blanks.1>
   1b250:	4641                	c.li	a2,16
   1b252:	5726                	c.lwsp	a4,104(sp)
   1b254:	4cc1                	c.li	s9,16
   1b256:	4a1d                	c.li	s4,7
   1b258:	8af2                	c.mv	s5,t3
   1b25a:	00864663          	blt	a2,s0,1b266 <_svfiprintf_r+0x81e>
   1b25e:	a83d                	c.j	1b29c <_svfiprintf_r+0x854>
   1b260:	3441                	c.addiw	s0,-16
   1b262:	028cdc63          	bge	s9,s0,1b29a <_svfiprintf_r+0x852>
   1b266:	2705                	c.addiw	a4,1
   1b268:	07c1                	c.addi	a5,16
   1b26a:	0156b023          	sd	s5,0(a3)
   1b26e:	0196b423          	sd	s9,8(a3)
   1b272:	f8be                	c.sdsp	a5,112(sp)
   1b274:	d4ba                	c.swsp	a4,104(sp)
   1b276:	06c1                	c.addi	a3,16
   1b278:	feea54e3          	bge	s4,a4,1b260 <_svfiprintf_r+0x818>
   1b27c:	1090                	c.addi4spn	a2,sp,96
   1b27e:	85a6                	c.mv	a1,s1
   1b280:	854e                	c.mv	a0,s3
   1b282:	fffff097          	auipc	ra,0xfffff
   1b286:	654080e7          	jalr	ra,1620(ra) # 1a8d6 <__ssprint_r>
   1b28a:	9c0511e3          	bne	a0,zero,1ac4c <_svfiprintf_r+0x204>
   1b28e:	3441                	c.addiw	s0,-16
   1b290:	77c6                	c.ldsp	a5,112(sp)
   1b292:	5726                	c.lwsp	a4,104(sp)
   1b294:	86ca                	c.mv	a3,s2
   1b296:	fc8cc8e3          	blt	s9,s0,1b266 <_svfiprintf_r+0x81e>
   1b29a:	8e56                	c.mv	t3,s5
   1b29c:	2705                	c.addiw	a4,1
   1b29e:	97a2                	c.add	a5,s0
   1b2a0:	01c6b023          	sd	t3,0(a3)
   1b2a4:	e680                	c.sd	s0,8(a3)
   1b2a6:	d4ba                	c.swsp	a4,104(sp)
   1b2a8:	0007069b          	addiw	a3,a4,0
   1b2ac:	f8be                	c.sdsp	a5,112(sp)
   1b2ae:	471d                	c.li	a4,7
   1b2b0:	96d75ce3          	bge	a4,a3,1ac28 <_svfiprintf_r+0x1e0>
   1b2b4:	1090                	c.addi4spn	a2,sp,96
   1b2b6:	85a6                	c.mv	a1,s1
   1b2b8:	854e                	c.mv	a0,s3
   1b2ba:	fffff097          	auipc	ra,0xfffff
   1b2be:	61c080e7          	jalr	ra,1564(ra) # 1a8d6 <__ssprint_r>
   1b2c2:	980515e3          	bne	a0,zero,1ac4c <_svfiprintf_r+0x204>
   1b2c6:	77c6                	c.ldsp	a5,112(sp)
   1b2c8:	b285                	c.j	1ac28 <_svfiprintf_r+0x1e0>
   1b2ca:	84d2                	c.mv	s1,s4
   1b2cc:	b241                	c.j	1ac4c <_svfiprintf_r+0x204>
   1b2ce:	a40a9fe3          	bne	s5,zero,1ad2c <_svfiprintf_r+0x2e4>
   1b2d2:	8b6a                	c.mv	s6,s10
   1b2d4:	4a81                	c.li	s5,0
   1b2d6:	4c81                	c.li	s9,0
   1b2d8:	0dc10a13          	addi	s4,sp,220
   1b2dc:	b485                	c.j	1ad3c <_svfiprintf_r+0x2f4>
   1b2de:	010d7793          	andi	a5,s10,16
   1b2e2:	e7dd                	c.bnez	a5,1b390 <_svfiprintf_r+0x948>
   1b2e4:	6622                	c.ldsp	a2,8(sp)
   1b2e6:	040d7793          	andi	a5,s10,64
   1b2ea:	4200                	c.lw	s0,0(a2)
   1b2ec:	22078463          	beq	a5,zero,1b514 <_svfiprintf_r+0xacc>
   1b2f0:	1442                	c.slli	s0,0x30
   1b2f2:	9041                	c.srli	s0,0x30
   1b2f4:	e436                	c.sdsp	a3,8(sp)
   1b2f6:	4785                	c.li	a5,1
   1b2f8:	bc41                	c.j	1ad88 <_svfiprintf_r+0x340>
   1b2fa:	010b7793          	andi	a5,s6,16
   1b2fe:	e3d1                	c.bnez	a5,1b382 <_svfiprintf_r+0x93a>
   1b300:	6622                	c.ldsp	a2,8(sp)
   1b302:	040b7793          	andi	a5,s6,64
   1b306:	4200                	c.lw	s0,0(a2)
   1b308:	1e078763          	beq	a5,zero,1b4f6 <_svfiprintf_r+0xaae>
   1b30c:	1442                	c.slli	s0,0x30
   1b30e:	9041                	c.srli	s0,0x30
   1b310:	bea9                	c.j	1ae6a <_svfiprintf_r+0x422>
   1b312:	1090                	c.addi4spn	a2,sp,96
   1b314:	85a6                	c.mv	a1,s1
   1b316:	854e                	c.mv	a0,s3
   1b318:	fffff097          	auipc	ra,0xfffff
   1b31c:	5be080e7          	jalr	ra,1470(ra) # 1a8d6 <__ssprint_r>
   1b320:	920516e3          	bne	a0,zero,1ac4c <_svfiprintf_r+0x204>
   1b324:	55a6                	c.lwsp	a1,104(sp)
   1b326:	77c6                	c.ldsp	a5,112(sp)
   1b328:	1994                	c.addi4spn	a3,sp,240
   1b32a:	2585                	c.addiw	a1,1
   1b32c:	874a                	c.mv	a4,s2
   1b32e:	b8d9                	c.j	1ac04 <_svfiprintf_r+0x1bc>
   1b330:	7802                	c.ldsp	a6,32(sp)
   1b332:	400d7e13          	andi	t3,s10,1024
   1b336:	4601                	c.li	a2,0
   1b338:	09f4                	c.addi4spn	a3,sp,220
   1b33a:	4ca9                	c.li	s9,10
   1b33c:	48a5                	c.li	a7,9
   1b33e:	0ff00b13          	addi	s6,zero,255
   1b342:	a039                	c.j	1b350 <_svfiprintf_r+0x908>
   1b344:	039457b3          	divu	a5,s0,s9
   1b348:	0288f763          	bgeu	a7,s0,1b376 <_svfiprintf_r+0x92e>
   1b34c:	843e                	c.mv	s0,a5
   1b34e:	86d2                	c.mv	a3,s4
   1b350:	fff68a13          	addi	s4,a3,-1
   1b354:	2605                	c.addiw	a2,1
   1b356:	039477b3          	remu	a5,s0,s9
   1b35a:	0307879b          	addiw	a5,a5,48
   1b35e:	fef68fa3          	sb	a5,-1(a3)
   1b362:	fe0e01e3          	beq	t3,zero,1b344 <_svfiprintf_r+0x8fc>
   1b366:	00084783          	lbu	a5,0(a6)
   1b36a:	fcc79de3          	bne	a5,a2,1b344 <_svfiprintf_r+0x8fc>
   1b36e:	fd678be3          	beq	a5,s6,1b344 <_svfiprintf_r+0x8fc>
   1b372:	0c88e863          	bltu	a7,s0,1b442 <_svfiprintf_r+0x9fa>
   1b376:	09fc                	c.addi4spn	a5,sp,220
   1b378:	f042                	c.sdsp	a6,32(sp)
   1b37a:	41478cbb          	subw	s9,a5,s4
   1b37e:	8b6a                	c.mv	s6,s10
   1b380:	ba75                	c.j	1ad3c <_svfiprintf_r+0x2f4>
   1b382:	67a2                	c.ldsp	a5,8(sp)
   1b384:	6380                	c.ld	s0,0(a5)
   1b386:	b4d5                	c.j	1ae6a <_svfiprintf_r+0x422>
   1b388:	67a2                	c.ldsp	a5,8(sp)
   1b38a:	639c                	c.ld	a5,0(a5)
   1b38c:	843e                	c.mv	s0,a5
   1b38e:	b241                	c.j	1ad0e <_svfiprintf_r+0x2c6>
   1b390:	67a2                	c.ldsp	a5,8(sp)
   1b392:	e436                	c.sdsp	a3,8(sp)
   1b394:	6380                	c.ld	s0,0(a5)
   1b396:	4785                	c.li	a5,1
   1b398:	bac5                	c.j	1ad88 <_svfiprintf_r+0x340>
   1b39a:	65a2                	c.ldsp	a1,8(sp)
   1b39c:	00002697          	auipc	a3,0x2
   1b3a0:	f2c68693          	addi	a3,a3,-212 # 1d2c8 <__clzdi2+0xb0>
   1b3a4:	e836                	c.sdsp	a3,16(sp)
   1b3a6:	020b7693          	andi	a3,s6,32
   1b3aa:	8722                	c.mv	a4,s0
   1b3ac:	00858613          	addi	a2,a1,8
   1b3b0:	c6b1                	c.beqz	a3,1b3fc <_svfiprintf_r+0x9b4>
   1b3b2:	6180                	c.ld	s0,0(a1)
   1b3b4:	001b7693          	andi	a3,s6,1
   1b3b8:	ce81                	c.beqz	a3,1b3d0 <_svfiprintf_r+0x988>
   1b3ba:	c819                	c.beqz	s0,1b3d0 <_svfiprintf_r+0x988>
   1b3bc:	002b6893          	ori	a7,s6,2
   1b3c0:	03000693          	addi	a3,zero,48
   1b3c4:	04d10c23          	sb	a3,88(sp)
   1b3c8:	04f10ca3          	sb	a5,89(sp)
   1b3cc:	00088b1b          	addiw	s6,a7,0
   1b3d0:	bffb7893          	andi	a7,s6,-1025
   1b3d4:	00088d1b          	addiw	s10,a7,0
   1b3d8:	e432                	c.sdsp	a2,8(sp)
   1b3da:	4789                	c.li	a5,2
   1b3dc:	b275                	c.j	1ad88 <_svfiprintf_r+0x340>
   1b3de:	8722                	c.mv	a4,s0
   1b3e0:	8d5a                	c.mv	s10,s6
   1b3e2:	ba49                	c.j	1ad74 <_svfiprintf_r+0x32c>
   1b3e4:	65a2                	c.ldsp	a1,8(sp)
   1b3e6:	00002697          	auipc	a3,0x2
   1b3ea:	efa68693          	addi	a3,a3,-262 # 1d2e0 <__clzdi2+0xc8>
   1b3ee:	e836                	c.sdsp	a3,16(sp)
   1b3f0:	020b7693          	andi	a3,s6,32
   1b3f4:	8722                	c.mv	a4,s0
   1b3f6:	00858613          	addi	a2,a1,8
   1b3fa:	fec5                	c.bnez	a3,1b3b2 <_svfiprintf_r+0x96a>
   1b3fc:	010b7693          	andi	a3,s6,16
   1b400:	cabd                	c.beqz	a3,1b476 <_svfiprintf_r+0xa2e>
   1b402:	66a2                	c.ldsp	a3,8(sp)
   1b404:	6280                	c.ld	s0,0(a3)
   1b406:	b77d                	c.j	1b3b4 <_svfiprintf_r+0x96c>
   1b408:	8722                	c.mv	a4,s0
   1b40a:	bc81                	c.j	1ae5a <_svfiprintf_r+0x412>
   1b40c:	8552                	c.mv	a0,s4
   1b40e:	ec3a                	c.sdsp	a4,24(sp)
   1b410:	ffff5097          	auipc	ra,0xffff5
   1b414:	0ba080e7          	jalr	ra,186(ra) # 104ca <strlen>
   1b418:	6762                	c.ldsp	a4,24(sp)
   1b41a:	00050c9b          	addiw	s9,a0,0
   1b41e:	e422                	c.sdsp	s0,8(sp)
   1b420:	4a81                	c.li	s5,0
   1b422:	ba29                	c.j	1ad3c <_svfiprintf_r+0x2f4>
   1b424:	04000593          	addi	a1,zero,64
   1b428:	ffffa097          	auipc	ra,0xffffa
   1b42c:	328080e7          	jalr	ra,808(ra) # 15750 <_malloc_r>
   1b430:	e088                	c.sd	a0,0(s1)
   1b432:	ec88                	c.sd	a0,24(s1)
   1b434:	18050163          	beq	a0,zero,1b5b6 <_svfiprintf_r+0xb6e>
   1b438:	04000793          	addi	a5,zero,64
   1b43c:	d09c                	c.sw	a5,32(s1)
   1b43e:	e3eff06f          	jal	zero,1aa7c <_svfiprintf_r+0x34>
   1b442:	77c2                	c.ldsp	a5,48(sp)
   1b444:	75a2                	c.ldsp	a1,40(sp)
   1b446:	e0f2                	c.sdsp	t3,64(sp)
   1b448:	40fa0a33          	sub	s4,s4,a5
   1b44c:	863e                	c.mv	a2,a5
   1b44e:	8552                	c.mv	a0,s4
   1b450:	f03a                	c.sdsp	a4,32(sp)
   1b452:	ec42                	c.sdsp	a6,24(sp)
   1b454:	ffffc097          	auipc	ra,0xffffc
   1b458:	15a080e7          	jalr	ra,346(ra) # 175ae <strncpy>
   1b45c:	6862                	c.ldsp	a6,24(sp)
   1b45e:	039457b3          	divu	a5,s0,s9
   1b462:	7702                	c.ldsp	a4,32(sp)
   1b464:	00184683          	lbu	a3,1(a6)
   1b468:	6e06                	c.ldsp	t3,64(sp)
   1b46a:	4601                	c.li	a2,0
   1b46c:	00d036b3          	sltu	a3,zero,a3
   1b470:	9836                	c.add	a6,a3
   1b472:	48a5                	c.li	a7,9
   1b474:	bde1                	c.j	1b34c <_svfiprintf_r+0x904>
   1b476:	65a2                	c.ldsp	a1,8(sp)
   1b478:	040b7693          	andi	a3,s6,64
   1b47c:	4180                	c.lw	s0,0(a1)
   1b47e:	c6b5                	c.beqz	a3,1b4ea <_svfiprintf_r+0xaa2>
   1b480:	1442                	c.slli	s0,0x30
   1b482:	9041                	c.srli	s0,0x30
   1b484:	bf05                	c.j	1b3b4 <_svfiprintf_r+0x96c>
   1b486:	8d5a                	c.mv	s10,s6
   1b488:	e436                	c.sdsp	a3,8(sp)
   1b48a:	b871                	c.j	1ad26 <_svfiprintf_r+0x2de>
   1b48c:	200b6b13          	ori	s6,s6,512
   1b490:	001dc783          	lbu	a5,1(s11)
   1b494:	2b01                	c.addiw	s6,0
   1b496:	0d85                	c.addi	s11,1
   1b498:	e76ff06f          	jal	zero,1ab0e <_svfiprintf_r+0xc6>
   1b49c:	020b6b13          	ori	s6,s6,32
   1b4a0:	001dc783          	lbu	a5,1(s11)
   1b4a4:	2b01                	c.addiw	s6,0
   1b4a6:	0d85                	c.addi	s11,1
   1b4a8:	e66ff06f          	jal	zero,1ab0e <_svfiprintf_r+0xc6>
   1b4ac:	1090                	c.addi4spn	a2,sp,96
   1b4ae:	85a6                	c.mv	a1,s1
   1b4b0:	854e                	c.mv	a0,s3
   1b4b2:	fffff097          	auipc	ra,0xfffff
   1b4b6:	424080e7          	jalr	ra,1060(ra) # 1a8d6 <__ssprint_r>
   1b4ba:	f8051963          	bne	a0,zero,1ac4c <_svfiprintf_r+0x204>
   1b4be:	5626                	c.lwsp	a2,104(sp)
   1b4c0:	77c6                	c.ldsp	a5,112(sp)
   1b4c2:	1994                	c.addi4spn	a3,sp,240
   1b4c4:	0016059b          	addiw	a1,a2,1
   1b4c8:	874a                	c.mv	a4,s2
   1b4ca:	f32ff06f          	jal	zero,1abfc <_svfiprintf_r+0x1b4>
   1b4ce:	4799                	c.li	a5,6
   1b4d0:	000a8c9b          	addiw	s9,s5,0
   1b4d4:	0157f363          	bgeu	a5,s5,1b4da <_svfiprintf_r+0xa92>
   1b4d8:	4c99                	c.li	s9,6
   1b4da:	8d66                	c.mv	s10,s9
   1b4dc:	e422                	c.sdsp	s0,8(sp)
   1b4de:	00002a17          	auipc	s4,0x2
   1b4e2:	e1aa0a13          	addi	s4,s4,-486 # 1d2f8 <__clzdi2+0xe0>
   1b4e6:	e94ff06f          	jal	zero,1ab7a <_svfiprintf_r+0x132>
   1b4ea:	200b7693          	andi	a3,s6,512
   1b4ee:	ceb1                	c.beqz	a3,1b54a <_svfiprintf_r+0xb02>
   1b4f0:	0ff47413          	andi	s0,s0,255
   1b4f4:	b5c1                	c.j	1b3b4 <_svfiprintf_r+0x96c>
   1b4f6:	200b7793          	andi	a5,s6,512
   1b4fa:	c7a9                	c.beqz	a5,1b544 <_svfiprintf_r+0xafc>
   1b4fc:	0ff47413          	andi	s0,s0,255
   1b500:	b2ad                	c.j	1ae6a <_svfiprintf_r+0x422>
   1b502:	200b7793          	andi	a5,s6,512
   1b506:	cb95                	c.beqz	a5,1b53a <_svfiprintf_r+0xaf2>
   1b508:	67a2                	c.ldsp	a5,8(sp)
   1b50a:	00078403          	lb	s0,0(a5)
   1b50e:	87a2                	c.mv	a5,s0
   1b510:	ffeff06f          	jal	zero,1ad0e <_svfiprintf_r+0x2c6>
   1b514:	200d7793          	andi	a5,s10,512
   1b518:	cf81                	c.beqz	a5,1b530 <_svfiprintf_r+0xae8>
   1b51a:	0ff47413          	andi	s0,s0,255
   1b51e:	e436                	c.sdsp	a3,8(sp)
   1b520:	4785                	c.li	a5,1
   1b522:	b09d                	c.j	1ad88 <_svfiprintf_r+0x340>
   1b524:	8636                	c.mv	a2,a3
   1b526:	00003e17          	auipc	t3,0x3
   1b52a:	afae0e13          	addi	t3,t3,-1286 # 1e020 <zeroes.0>
   1b52e:	b6e1                	c.j	1b0f6 <_svfiprintf_r+0x6ae>
   1b530:	1402                	c.slli	s0,0x20
   1b532:	9001                	c.srli	s0,0x20
   1b534:	e436                	c.sdsp	a3,8(sp)
   1b536:	4785                	c.li	a5,1
   1b538:	b881                	c.j	1ad88 <_svfiprintf_r+0x340>
   1b53a:	67a2                	c.ldsp	a5,8(sp)
   1b53c:	4380                	c.lw	s0,0(a5)
   1b53e:	87a2                	c.mv	a5,s0
   1b540:	fceff06f          	jal	zero,1ad0e <_svfiprintf_r+0x2c6>
   1b544:	1402                	c.slli	s0,0x20
   1b546:	9001                	c.srli	s0,0x20
   1b548:	b20d                	c.j	1ae6a <_svfiprintf_r+0x422>
   1b54a:	1402                	c.slli	s0,0x20
   1b54c:	9001                	c.srli	s0,0x20
   1b54e:	b59d                	c.j	1b3b4 <_svfiprintf_r+0x96c>
   1b550:	6782                	c.ldsp	a5,0(sp)
   1b552:	00f69023          	sh	a5,0(a3)
   1b556:	d4cff06f          	jal	zero,1aaa2 <_svfiprintf_r+0x5a>
   1b55a:	1090                	c.addi4spn	a2,sp,96
   1b55c:	85a6                	c.mv	a1,s1
   1b55e:	854e                	c.mv	a0,s3
   1b560:	fffff097          	auipc	ra,0xfffff
   1b564:	376080e7          	jalr	ra,886(ra) # 1a8d6 <__ssprint_r>
   1b568:	ee4ff06f          	jal	zero,1ac4c <_svfiprintf_r+0x204>
   1b56c:	8cd6                	c.mv	s9,s5
   1b56e:	e422                	c.sdsp	s0,8(sp)
   1b570:	4a81                	c.li	s5,0
   1b572:	fcaff06f          	jal	zero,1ad3c <_svfiprintf_r+0x2f4>
   1b576:	8d5a                	c.mv	s10,s6
   1b578:	fb4ff06f          	jal	zero,1ad2c <_svfiprintf_r+0x2e4>
   1b57c:	8536                	c.mv	a0,a3
   1b57e:	862e                	c.mv	a2,a1
   1b580:	00003e17          	auipc	t3,0x3
   1b584:	aa0e0e13          	addi	t3,t3,-1376 # 1e020 <zeroes.0>
   1b588:	b4e5                	c.j	1b070 <_svfiprintf_r+0x628>
   1b58a:	c29c                	c.sw	a5,0(a3)
   1b58c:	d16ff06f          	jal	zero,1aaa2 <_svfiprintf_r+0x5a>
   1b590:	57fd                	c.li	a5,-1
   1b592:	e03e                	c.sdsp	a5,0(sp)
   1b594:	ec4ff06f          	jal	zero,1ac58 <_svfiprintf_r+0x210>
   1b598:	6722                	c.ldsp	a4,8(sp)
   1b59a:	431c                	c.lw	a5,0(a4)
   1b59c:	00870613          	addi	a2,a4,8
   1b5a0:	00078a9b          	addiw	s5,a5,0
   1b5a4:	0007d363          	bge	a5,zero,1b5aa <_svfiprintf_r+0xb62>
   1b5a8:	5afd                	c.li	s5,-1
   1b5aa:	001dc783          	lbu	a5,1(s11)
   1b5ae:	e432                	c.sdsp	a2,8(sp)
   1b5b0:	8db6                	c.mv	s11,a3
   1b5b2:	d5cff06f          	jal	zero,1ab0e <_svfiprintf_r+0xc6>
   1b5b6:	47b1                	c.li	a5,12
   1b5b8:	00f9a023          	sw	a5,0(s3)
   1b5bc:	57fd                	c.li	a5,-1
   1b5be:	e03e                	c.sdsp	a5,0(sp)
   1b5c0:	e98ff06f          	jal	zero,1ac58 <_svfiprintf_r+0x210>

000000000001b5c4 <__swbuf_r>:
   1b5c4:	7179                	c.addi16sp	sp,-48
   1b5c6:	f022                	c.sdsp	s0,32(sp)
   1b5c8:	ec26                	c.sdsp	s1,24(sp)
   1b5ca:	e84a                	c.sdsp	s2,16(sp)
   1b5cc:	f406                	c.sdsp	ra,40(sp)
   1b5ce:	e44e                	c.sdsp	s3,8(sp)
   1b5d0:	892a                	c.mv	s2,a0
   1b5d2:	84ae                	c.mv	s1,a1
   1b5d4:	8432                	c.mv	s0,a2
   1b5d6:	c119                	c.beqz	a0,1b5dc <__swbuf_r+0x18>
   1b5d8:	493c                	c.lw	a5,80(a0)
   1b5da:	c7e5                	c.beqz	a5,1b6c2 <__swbuf_r+0xfe>
   1b5dc:	01041703          	lh	a4,16(s0)
   1b5e0:	5414                	c.lw	a3,40(s0)
   1b5e2:	00877793          	andi	a5,a4,8
   1b5e6:	c454                	c.sw	a3,12(s0)
   1b5e8:	03071693          	slli	a3,a4,0x30
   1b5ec:	92c1                	c.srli	a3,0x30
   1b5ee:	cbb1                	c.beqz	a5,1b642 <__swbuf_r+0x7e>
   1b5f0:	6c1c                	c.ld	a5,24(s0)
   1b5f2:	cba1                	c.beqz	a5,1b642 <__swbuf_r+0x7e>
   1b5f4:	6609                	c.lui	a2,0x2
   1b5f6:	0ff4f993          	andi	s3,s1,255
   1b5fa:	8ef1                	c.and	a3,a2
   1b5fc:	84ce                	c.mv	s1,s3
   1b5fe:	c6ad                	c.beqz	a3,1b668 <__swbuf_r+0xa4>
   1b600:	6018                	c.ld	a4,0(s0)
   1b602:	5014                	c.lw	a3,32(s0)
   1b604:	40f707bb          	subw	a5,a4,a5
   1b608:	08d7d063          	bge	a5,a3,1b688 <__swbuf_r+0xc4>
   1b60c:	4454                	c.lw	a3,12(s0)
   1b60e:	00170613          	addi	a2,a4,1
   1b612:	e010                	c.sd	a2,0(s0)
   1b614:	36fd                	c.addiw	a3,-1
   1b616:	c454                	c.sw	a3,12(s0)
   1b618:	01370023          	sb	s3,0(a4)
   1b61c:	5018                	c.lw	a4,32(s0)
   1b61e:	2785                	c.addiw	a5,1
   1b620:	08f70863          	beq	a4,a5,1b6b0 <__swbuf_r+0xec>
   1b624:	01045783          	lhu	a5,16(s0)
   1b628:	8b85                	c.andi	a5,1
   1b62a:	c781                	c.beqz	a5,1b632 <__swbuf_r+0x6e>
   1b62c:	47a9                	c.li	a5,10
   1b62e:	08f48163          	beq	s1,a5,1b6b0 <__swbuf_r+0xec>
   1b632:	70a2                	c.ldsp	ra,40(sp)
   1b634:	7402                	c.ldsp	s0,32(sp)
   1b636:	6942                	c.ldsp	s2,16(sp)
   1b638:	69a2                	c.ldsp	s3,8(sp)
   1b63a:	8526                	c.mv	a0,s1
   1b63c:	64e2                	c.ldsp	s1,24(sp)
   1b63e:	6145                	c.addi16sp	sp,48
   1b640:	8082                	c.jr	ra
   1b642:	85a2                	c.mv	a1,s0
   1b644:	854a                	c.mv	a0,s2
   1b646:	ffff7097          	auipc	ra,0xffff7
   1b64a:	d88080e7          	jalr	ra,-632(ra) # 123ce <__swsetup_r>
   1b64e:	e925                	c.bnez	a0,1b6be <__swbuf_r+0xfa>
   1b650:	01041703          	lh	a4,16(s0)
   1b654:	6609                	c.lui	a2,0x2
   1b656:	0ff4f993          	andi	s3,s1,255
   1b65a:	03071693          	slli	a3,a4,0x30
   1b65e:	92c1                	c.srli	a3,0x30
   1b660:	8ef1                	c.and	a3,a2
   1b662:	6c1c                	c.ld	a5,24(s0)
   1b664:	84ce                	c.mv	s1,s3
   1b666:	fec9                	c.bnez	a3,1b600 <__swbuf_r+0x3c>
   1b668:	0ac42683          	lw	a3,172(s0)
   1b66c:	8f51                	c.or	a4,a2
   1b66e:	7679                	c.lui	a2,0xffffe
   1b670:	167d                	c.addi	a2,-1
   1b672:	8ef1                	c.and	a3,a2
   1b674:	00e41823          	sh	a4,16(s0)
   1b678:	6018                	c.ld	a4,0(s0)
   1b67a:	0ad42623          	sw	a3,172(s0)
   1b67e:	5014                	c.lw	a3,32(s0)
   1b680:	40f707bb          	subw	a5,a4,a5
   1b684:	f8d7c4e3          	blt	a5,a3,1b60c <__swbuf_r+0x48>
   1b688:	85a2                	c.mv	a1,s0
   1b68a:	854a                	c.mv	a0,s2
   1b68c:	ffff7097          	auipc	ra,0xffff7
   1b690:	0a6080e7          	jalr	ra,166(ra) # 12732 <_fflush_r>
   1b694:	e50d                	c.bnez	a0,1b6be <__swbuf_r+0xfa>
   1b696:	6018                	c.ld	a4,0(s0)
   1b698:	4454                	c.lw	a3,12(s0)
   1b69a:	4785                	c.li	a5,1
   1b69c:	00170613          	addi	a2,a4,1
   1b6a0:	36fd                	c.addiw	a3,-1
   1b6a2:	e010                	c.sd	a2,0(s0)
   1b6a4:	c454                	c.sw	a3,12(s0)
   1b6a6:	01370023          	sb	s3,0(a4)
   1b6aa:	5018                	c.lw	a4,32(s0)
   1b6ac:	f6f71ce3          	bne	a4,a5,1b624 <__swbuf_r+0x60>
   1b6b0:	85a2                	c.mv	a1,s0
   1b6b2:	854a                	c.mv	a0,s2
   1b6b4:	ffff7097          	auipc	ra,0xffff7
   1b6b8:	07e080e7          	jalr	ra,126(ra) # 12732 <_fflush_r>
   1b6bc:	d93d                	c.beqz	a0,1b632 <__swbuf_r+0x6e>
   1b6be:	54fd                	c.li	s1,-1
   1b6c0:	bf8d                	c.j	1b632 <__swbuf_r+0x6e>
   1b6c2:	ffff7097          	auipc	ra,0xffff7
   1b6c6:	3b6080e7          	jalr	ra,950(ra) # 12a78 <__sinit>
   1b6ca:	bf09                	c.j	1b5dc <__swbuf_r+0x18>

000000000001b6cc <__swbuf>:
   1b6cc:	862e                	c.mv	a2,a1
   1b6ce:	85aa                	c.mv	a1,a0
   1b6d0:	00005517          	auipc	a0,0x5
   1b6d4:	c0053503          	ld	a0,-1024(a0) # 202d0 <_impure_ptr>
   1b6d8:	00000317          	auipc	t1,0x0
   1b6dc:	eec30067          	jalr	zero,-276(t1) # 1b5c4 <__swbuf_r>

000000000001b6e0 <_wcrtomb_r>:
   1b6e0:	7179                	c.addi16sp	sp,-48
   1b6e2:	f022                	c.sdsp	s0,32(sp)
   1b6e4:	ec26                	c.sdsp	s1,24(sp)
   1b6e6:	f406                	c.sdsp	ra,40(sp)
   1b6e8:	842a                	c.mv	s0,a0
   1b6ea:	84b6                	c.mv	s1,a3
   1b6ec:	00004797          	auipc	a5,0x4
   1b6f0:	2cc7b783          	ld	a5,716(a5) # 1f9b8 <__global_locale+0xe0>
   1b6f4:	c991                	c.beqz	a1,1b708 <_wcrtomb_r+0x28>
   1b6f6:	9782                	c.jalr	a5
   1b6f8:	57fd                	c.li	a5,-1
   1b6fa:	00f50d63          	beq	a0,a5,1b714 <_wcrtomb_r+0x34>
   1b6fe:	70a2                	c.ldsp	ra,40(sp)
   1b700:	7402                	c.ldsp	s0,32(sp)
   1b702:	64e2                	c.ldsp	s1,24(sp)
   1b704:	6145                	c.addi16sp	sp,48
   1b706:	8082                	c.jr	ra
   1b708:	4601                	c.li	a2,0
   1b70a:	858a                	c.mv	a1,sp
   1b70c:	9782                	c.jalr	a5
   1b70e:	57fd                	c.li	a5,-1
   1b710:	fef517e3          	bne	a0,a5,1b6fe <_wcrtomb_r+0x1e>
   1b714:	0004a023          	sw	zero,0(s1)
   1b718:	08a00793          	addi	a5,zero,138
   1b71c:	70a2                	c.ldsp	ra,40(sp)
   1b71e:	c01c                	c.sw	a5,0(s0)
   1b720:	7402                	c.ldsp	s0,32(sp)
   1b722:	64e2                	c.ldsp	s1,24(sp)
   1b724:	6145                	c.addi16sp	sp,48
   1b726:	8082                	c.jr	ra

000000000001b728 <wcrtomb>:
   1b728:	7179                	c.addi16sp	sp,-48
   1b72a:	f022                	c.sdsp	s0,32(sp)
   1b72c:	ec26                	c.sdsp	s1,24(sp)
   1b72e:	f406                	c.sdsp	ra,40(sp)
   1b730:	8432                	c.mv	s0,a2
   1b732:	00005497          	auipc	s1,0x5
   1b736:	b9e4b483          	ld	s1,-1122(s1) # 202d0 <_impure_ptr>
   1b73a:	00004797          	auipc	a5,0x4
   1b73e:	27e7b783          	ld	a5,638(a5) # 1f9b8 <__global_locale+0xe0>
   1b742:	cd11                	c.beqz	a0,1b75e <wcrtomb+0x36>
   1b744:	862e                	c.mv	a2,a1
   1b746:	86a2                	c.mv	a3,s0
   1b748:	85aa                	c.mv	a1,a0
   1b74a:	8526                	c.mv	a0,s1
   1b74c:	9782                	c.jalr	a5
   1b74e:	57fd                	c.li	a5,-1
   1b750:	00f50f63          	beq	a0,a5,1b76e <wcrtomb+0x46>
   1b754:	70a2                	c.ldsp	ra,40(sp)
   1b756:	7402                	c.ldsp	s0,32(sp)
   1b758:	64e2                	c.ldsp	s1,24(sp)
   1b75a:	6145                	c.addi16sp	sp,48
   1b75c:	8082                	c.jr	ra
   1b75e:	86b2                	c.mv	a3,a2
   1b760:	858a                	c.mv	a1,sp
   1b762:	4601                	c.li	a2,0
   1b764:	8526                	c.mv	a0,s1
   1b766:	9782                	c.jalr	a5
   1b768:	57fd                	c.li	a5,-1
   1b76a:	fef515e3          	bne	a0,a5,1b754 <wcrtomb+0x2c>
   1b76e:	00042023          	sw	zero,0(s0)
   1b772:	70a2                	c.ldsp	ra,40(sp)
   1b774:	7402                	c.ldsp	s0,32(sp)
   1b776:	08a00793          	addi	a5,zero,138
   1b77a:	c09c                	c.sw	a5,0(s1)
   1b77c:	64e2                	c.ldsp	s1,24(sp)
   1b77e:	6145                	c.addi16sp	sp,48
   1b780:	8082                	c.jr	ra

000000000001b782 <abort>:
   1b782:	1141                	c.addi	sp,-16
   1b784:	4519                	c.li	a0,6
   1b786:	e406                	c.sdsp	ra,8(sp)
   1b788:	00000097          	auipc	ra,0x0
   1b78c:	246080e7          	jalr	ra,582(ra) # 1b9ce <raise>
   1b790:	4505                	c.li	a0,1
   1b792:	00000097          	auipc	ra,0x0
   1b796:	488080e7          	jalr	ra,1160(ra) # 1bc1a <_exit>

000000000001b79a <__register_exitproc>:
   1b79a:	00005717          	auipc	a4,0x5
   1b79e:	b2673703          	ld	a4,-1242(a4) # 202c0 <_global_impure_ptr>
   1b7a2:	1f873783          	ld	a5,504(a4)
   1b7a6:	c3b1                	c.beqz	a5,1b7ea <__register_exitproc+0x50>
   1b7a8:	4798                	c.lw	a4,8(a5)
   1b7aa:	487d                	c.li	a6,31
   1b7ac:	06e84263          	blt	a6,a4,1b810 <__register_exitproc+0x76>
   1b7b0:	c505                	c.beqz	a0,1b7d8 <__register_exitproc+0x3e>
   1b7b2:	00371813          	slli	a6,a4,0x3
   1b7b6:	983e                	c.add	a6,a5
   1b7b8:	10c83823          	sd	a2,272(a6)
   1b7bc:	3107a883          	lw	a7,784(a5)
   1b7c0:	4605                	c.li	a2,1
   1b7c2:	00e6163b          	sllw	a2,a2,a4
   1b7c6:	00c8e8b3          	or	a7,a7,a2
   1b7ca:	3117a823          	sw	a7,784(a5)
   1b7ce:	20d83823          	sd	a3,528(a6)
   1b7d2:	4689                	c.li	a3,2
   1b7d4:	02d50063          	beq	a0,a3,1b7f4 <__register_exitproc+0x5a>
   1b7d8:	00270693          	addi	a3,a4,2
   1b7dc:	068e                	c.slli	a3,0x3
   1b7de:	2705                	c.addiw	a4,1
   1b7e0:	c798                	c.sw	a4,8(a5)
   1b7e2:	97b6                	c.add	a5,a3
   1b7e4:	e38c                	c.sd	a1,0(a5)
   1b7e6:	4501                	c.li	a0,0
   1b7e8:	8082                	c.jr	ra
   1b7ea:	20070793          	addi	a5,a4,512
   1b7ee:	1ef73c23          	sd	a5,504(a4)
   1b7f2:	bf5d                	c.j	1b7a8 <__register_exitproc+0xe>
   1b7f4:	3147a683          	lw	a3,788(a5)
   1b7f8:	4501                	c.li	a0,0
   1b7fa:	8e55                	c.or	a2,a3
   1b7fc:	00270693          	addi	a3,a4,2
   1b800:	068e                	c.slli	a3,0x3
   1b802:	2705                	c.addiw	a4,1
   1b804:	30c7aa23          	sw	a2,788(a5)
   1b808:	c798                	c.sw	a4,8(a5)
   1b80a:	97b6                	c.add	a5,a3
   1b80c:	e38c                	c.sd	a1,0(a5)
   1b80e:	8082                	c.jr	ra
   1b810:	557d                	c.li	a0,-1
   1b812:	8082                	c.jr	ra

000000000001b814 <_init_signal_r>:
   1b814:	51853783          	ld	a5,1304(a0)
   1b818:	c399                	c.beqz	a5,1b81e <_init_signal_r+0xa>
   1b81a:	4501                	c.li	a0,0
   1b81c:	8082                	c.jr	ra
   1b81e:	1141                	c.addi	sp,-16
   1b820:	10000593          	addi	a1,zero,256
   1b824:	e022                	c.sdsp	s0,0(sp)
   1b826:	e406                	c.sdsp	ra,8(sp)
   1b828:	842a                	c.mv	s0,a0
   1b82a:	ffffa097          	auipc	ra,0xffffa
   1b82e:	f26080e7          	jalr	ra,-218(ra) # 15750 <_malloc_r>
   1b832:	50a43c23          	sd	a0,1304(s0)
   1b836:	cd09                	c.beqz	a0,1b850 <_init_signal_r+0x3c>
   1b838:	10050793          	addi	a5,a0,256
   1b83c:	00053023          	sd	zero,0(a0)
   1b840:	0521                	c.addi	a0,8
   1b842:	fef51de3          	bne	a0,a5,1b83c <_init_signal_r+0x28>
   1b846:	4501                	c.li	a0,0
   1b848:	60a2                	c.ldsp	ra,8(sp)
   1b84a:	6402                	c.ldsp	s0,0(sp)
   1b84c:	0141                	c.addi	sp,16
   1b84e:	8082                	c.jr	ra
   1b850:	557d                	c.li	a0,-1
   1b852:	bfdd                	c.j	1b848 <_init_signal_r+0x34>

000000000001b854 <_signal_r>:
   1b854:	7179                	c.addi16sp	sp,-48
   1b856:	ec26                	c.sdsp	s1,24(sp)
   1b858:	f406                	c.sdsp	ra,40(sp)
   1b85a:	f022                	c.sdsp	s0,32(sp)
   1b85c:	47fd                	c.li	a5,31
   1b85e:	84aa                	c.mv	s1,a0
   1b860:	00b7ef63          	bltu	a5,a1,1b87e <_signal_r+0x2a>
   1b864:	51853703          	ld	a4,1304(a0)
   1b868:	842e                	c.mv	s0,a1
   1b86a:	c315                	c.beqz	a4,1b88e <_signal_r+0x3a>
   1b86c:	040e                	c.slli	s0,0x3
   1b86e:	943a                	c.add	s0,a4
   1b870:	6008                	c.ld	a0,0(s0)
   1b872:	e010                	c.sd	a2,0(s0)
   1b874:	70a2                	c.ldsp	ra,40(sp)
   1b876:	7402                	c.ldsp	s0,32(sp)
   1b878:	64e2                	c.ldsp	s1,24(sp)
   1b87a:	6145                	c.addi16sp	sp,48
   1b87c:	8082                	c.jr	ra
   1b87e:	70a2                	c.ldsp	ra,40(sp)
   1b880:	7402                	c.ldsp	s0,32(sp)
   1b882:	47d9                	c.li	a5,22
   1b884:	c11c                	c.sw	a5,0(a0)
   1b886:	64e2                	c.ldsp	s1,24(sp)
   1b888:	557d                	c.li	a0,-1
   1b88a:	6145                	c.addi16sp	sp,48
   1b88c:	8082                	c.jr	ra
   1b88e:	10000593          	addi	a1,zero,256
   1b892:	e432                	c.sdsp	a2,8(sp)
   1b894:	ffffa097          	auipc	ra,0xffffa
   1b898:	ebc080e7          	jalr	ra,-324(ra) # 15750 <_malloc_r>
   1b89c:	50a4bc23          	sd	a0,1304(s1)
   1b8a0:	872a                	c.mv	a4,a0
   1b8a2:	c919                	c.beqz	a0,1b8b8 <_signal_r+0x64>
   1b8a4:	6622                	c.ldsp	a2,8(sp)
   1b8a6:	87aa                	c.mv	a5,a0
   1b8a8:	10050693          	addi	a3,a0,256
   1b8ac:	0007b023          	sd	zero,0(a5)
   1b8b0:	07a1                	c.addi	a5,8
   1b8b2:	fef69de3          	bne	a3,a5,1b8ac <_signal_r+0x58>
   1b8b6:	bf5d                	c.j	1b86c <_signal_r+0x18>
   1b8b8:	557d                	c.li	a0,-1
   1b8ba:	bf6d                	c.j	1b874 <_signal_r+0x20>

000000000001b8bc <_raise_r>:
   1b8bc:	1101                	c.addi	sp,-32
   1b8be:	e426                	c.sdsp	s1,8(sp)
   1b8c0:	ec06                	c.sdsp	ra,24(sp)
   1b8c2:	e822                	c.sdsp	s0,16(sp)
   1b8c4:	47fd                	c.li	a5,31
   1b8c6:	84aa                	c.mv	s1,a0
   1b8c8:	06b7e963          	bltu	a5,a1,1b93a <_raise_r+0x7e>
   1b8cc:	51853783          	ld	a5,1304(a0)
   1b8d0:	842e                	c.mv	s0,a1
   1b8d2:	c795                	c.beqz	a5,1b8fe <_raise_r+0x42>
   1b8d4:	00359713          	slli	a4,a1,0x3
   1b8d8:	97ba                	c.add	a5,a4
   1b8da:	6398                	c.ld	a4,0(a5)
   1b8dc:	c30d                	c.beqz	a4,1b8fe <_raise_r+0x42>
   1b8de:	4685                	c.li	a3,1
   1b8e0:	04d70763          	beq	a4,a3,1b92e <_raise_r+0x72>
   1b8e4:	56fd                	c.li	a3,-1
   1b8e6:	02d70c63          	beq	a4,a3,1b91e <_raise_r+0x62>
   1b8ea:	852e                	c.mv	a0,a1
   1b8ec:	0007b023          	sd	zero,0(a5)
   1b8f0:	9702                	c.jalr	a4
   1b8f2:	4501                	c.li	a0,0
   1b8f4:	60e2                	c.ldsp	ra,24(sp)
   1b8f6:	6442                	c.ldsp	s0,16(sp)
   1b8f8:	64a2                	c.ldsp	s1,8(sp)
   1b8fa:	6105                	c.addi16sp	sp,32
   1b8fc:	8082                	c.jr	ra
   1b8fe:	8526                	c.mv	a0,s1
   1b900:	00000097          	auipc	ra,0x0
   1b904:	2e2080e7          	jalr	ra,738(ra) # 1bbe2 <_getpid_r>
   1b908:	8622                	c.mv	a2,s0
   1b90a:	6442                	c.ldsp	s0,16(sp)
   1b90c:	60e2                	c.ldsp	ra,24(sp)
   1b90e:	85aa                	c.mv	a1,a0
   1b910:	8526                	c.mv	a0,s1
   1b912:	64a2                	c.ldsp	s1,8(sp)
   1b914:	6105                	c.addi16sp	sp,32
   1b916:	00000317          	auipc	t1,0x0
   1b91a:	28c30067          	jalr	zero,652(t1) # 1bba2 <_kill_r>
   1b91e:	60e2                	c.ldsp	ra,24(sp)
   1b920:	6442                	c.ldsp	s0,16(sp)
   1b922:	47d9                	c.li	a5,22
   1b924:	c11c                	c.sw	a5,0(a0)
   1b926:	64a2                	c.ldsp	s1,8(sp)
   1b928:	4505                	c.li	a0,1
   1b92a:	6105                	c.addi16sp	sp,32
   1b92c:	8082                	c.jr	ra
   1b92e:	60e2                	c.ldsp	ra,24(sp)
   1b930:	6442                	c.ldsp	s0,16(sp)
   1b932:	64a2                	c.ldsp	s1,8(sp)
   1b934:	4501                	c.li	a0,0
   1b936:	6105                	c.addi16sp	sp,32
   1b938:	8082                	c.jr	ra
   1b93a:	47d9                	c.li	a5,22
   1b93c:	c11c                	c.sw	a5,0(a0)
   1b93e:	557d                	c.li	a0,-1
   1b940:	bf55                	c.j	1b8f4 <_raise_r+0x38>

000000000001b942 <__sigtramp_r>:
   1b942:	47fd                	c.li	a5,31
   1b944:	08b7e363          	bltu	a5,a1,1b9ca <__sigtramp_r+0x88>
   1b948:	51853703          	ld	a4,1304(a0)
   1b94c:	1101                	c.addi	sp,-32
   1b94e:	e822                	c.sdsp	s0,16(sp)
   1b950:	e426                	c.sdsp	s1,8(sp)
   1b952:	ec06                	c.sdsp	ra,24(sp)
   1b954:	842e                	c.mv	s0,a1
   1b956:	84aa                	c.mv	s1,a0
   1b958:	cf05                	c.beqz	a4,1b990 <__sigtramp_r+0x4e>
   1b95a:	00341513          	slli	a0,s0,0x3
   1b95e:	972a                	c.add	a4,a0
   1b960:	631c                	c.ld	a5,0(a4)
   1b962:	c38d                	c.beqz	a5,1b984 <__sigtramp_r+0x42>
   1b964:	56fd                	c.li	a3,-1
   1b966:	04d78e63          	beq	a5,a3,1b9c2 <__sigtramp_r+0x80>
   1b96a:	4685                	c.li	a3,1
   1b96c:	04d78563          	beq	a5,a3,1b9b6 <__sigtramp_r+0x74>
   1b970:	8522                	c.mv	a0,s0
   1b972:	00073023          	sd	zero,0(a4)
   1b976:	9782                	c.jalr	a5
   1b978:	4501                	c.li	a0,0
   1b97a:	60e2                	c.ldsp	ra,24(sp)
   1b97c:	6442                	c.ldsp	s0,16(sp)
   1b97e:	64a2                	c.ldsp	s1,8(sp)
   1b980:	6105                	c.addi16sp	sp,32
   1b982:	8082                	c.jr	ra
   1b984:	60e2                	c.ldsp	ra,24(sp)
   1b986:	6442                	c.ldsp	s0,16(sp)
   1b988:	64a2                	c.ldsp	s1,8(sp)
   1b98a:	4505                	c.li	a0,1
   1b98c:	6105                	c.addi16sp	sp,32
   1b98e:	8082                	c.jr	ra
   1b990:	10000593          	addi	a1,zero,256
   1b994:	ffffa097          	auipc	ra,0xffffa
   1b998:	dbc080e7          	jalr	ra,-580(ra) # 15750 <_malloc_r>
   1b99c:	50a4bc23          	sd	a0,1304(s1)
   1b9a0:	872a                	c.mv	a4,a0
   1b9a2:	c115                	c.beqz	a0,1b9c6 <__sigtramp_r+0x84>
   1b9a4:	87aa                	c.mv	a5,a0
   1b9a6:	10050693          	addi	a3,a0,256
   1b9aa:	0007b023          	sd	zero,0(a5)
   1b9ae:	07a1                	c.addi	a5,8
   1b9b0:	fed79de3          	bne	a5,a3,1b9aa <__sigtramp_r+0x68>
   1b9b4:	b75d                	c.j	1b95a <__sigtramp_r+0x18>
   1b9b6:	60e2                	c.ldsp	ra,24(sp)
   1b9b8:	6442                	c.ldsp	s0,16(sp)
   1b9ba:	64a2                	c.ldsp	s1,8(sp)
   1b9bc:	450d                	c.li	a0,3
   1b9be:	6105                	c.addi16sp	sp,32
   1b9c0:	8082                	c.jr	ra
   1b9c2:	4509                	c.li	a0,2
   1b9c4:	bf5d                	c.j	1b97a <__sigtramp_r+0x38>
   1b9c6:	557d                	c.li	a0,-1
   1b9c8:	bf4d                	c.j	1b97a <__sigtramp_r+0x38>
   1b9ca:	557d                	c.li	a0,-1
   1b9cc:	8082                	c.jr	ra

000000000001b9ce <raise>:
   1b9ce:	1101                	c.addi	sp,-32
   1b9d0:	e426                	c.sdsp	s1,8(sp)
   1b9d2:	ec06                	c.sdsp	ra,24(sp)
   1b9d4:	e822                	c.sdsp	s0,16(sp)
   1b9d6:	47fd                	c.li	a5,31
   1b9d8:	00005497          	auipc	s1,0x5
   1b9dc:	8f84b483          	ld	s1,-1800(s1) # 202d0 <_impure_ptr>
   1b9e0:	06a7e863          	bltu	a5,a0,1ba50 <raise+0x82>
   1b9e4:	5184b783          	ld	a5,1304(s1)
   1b9e8:	842a                	c.mv	s0,a0
   1b9ea:	c78d                	c.beqz	a5,1ba14 <raise+0x46>
   1b9ec:	00351713          	slli	a4,a0,0x3
   1b9f0:	97ba                	c.add	a5,a4
   1b9f2:	6398                	c.ld	a4,0(a5)
   1b9f4:	c305                	c.beqz	a4,1ba14 <raise+0x46>
   1b9f6:	4685                	c.li	a3,1
   1b9f8:	04d70663          	beq	a4,a3,1ba44 <raise+0x76>
   1b9fc:	56fd                	c.li	a3,-1
   1b9fe:	02d70b63          	beq	a4,a3,1ba34 <raise+0x66>
   1ba02:	0007b023          	sd	zero,0(a5)
   1ba06:	9702                	c.jalr	a4
   1ba08:	4501                	c.li	a0,0
   1ba0a:	60e2                	c.ldsp	ra,24(sp)
   1ba0c:	6442                	c.ldsp	s0,16(sp)
   1ba0e:	64a2                	c.ldsp	s1,8(sp)
   1ba10:	6105                	c.addi16sp	sp,32
   1ba12:	8082                	c.jr	ra
   1ba14:	8526                	c.mv	a0,s1
   1ba16:	00000097          	auipc	ra,0x0
   1ba1a:	1cc080e7          	jalr	ra,460(ra) # 1bbe2 <_getpid_r>
   1ba1e:	8622                	c.mv	a2,s0
   1ba20:	6442                	c.ldsp	s0,16(sp)
   1ba22:	60e2                	c.ldsp	ra,24(sp)
   1ba24:	85aa                	c.mv	a1,a0
   1ba26:	8526                	c.mv	a0,s1
   1ba28:	64a2                	c.ldsp	s1,8(sp)
   1ba2a:	6105                	c.addi16sp	sp,32
   1ba2c:	00000317          	auipc	t1,0x0
   1ba30:	17630067          	jalr	zero,374(t1) # 1bba2 <_kill_r>
   1ba34:	60e2                	c.ldsp	ra,24(sp)
   1ba36:	6442                	c.ldsp	s0,16(sp)
   1ba38:	47d9                	c.li	a5,22
   1ba3a:	c09c                	c.sw	a5,0(s1)
   1ba3c:	4505                	c.li	a0,1
   1ba3e:	64a2                	c.ldsp	s1,8(sp)
   1ba40:	6105                	c.addi16sp	sp,32
   1ba42:	8082                	c.jr	ra
   1ba44:	60e2                	c.ldsp	ra,24(sp)
   1ba46:	6442                	c.ldsp	s0,16(sp)
   1ba48:	64a2                	c.ldsp	s1,8(sp)
   1ba4a:	4501                	c.li	a0,0
   1ba4c:	6105                	c.addi16sp	sp,32
   1ba4e:	8082                	c.jr	ra
   1ba50:	47d9                	c.li	a5,22
   1ba52:	c09c                	c.sw	a5,0(s1)
   1ba54:	557d                	c.li	a0,-1
   1ba56:	bf55                	c.j	1ba0a <raise+0x3c>

000000000001ba58 <signal>:
   1ba58:	1101                	c.addi	sp,-32
   1ba5a:	e04a                	c.sdsp	s2,0(sp)
   1ba5c:	ec06                	c.sdsp	ra,24(sp)
   1ba5e:	e822                	c.sdsp	s0,16(sp)
   1ba60:	e426                	c.sdsp	s1,8(sp)
   1ba62:	47fd                	c.li	a5,31
   1ba64:	00005917          	auipc	s2,0x5
   1ba68:	86c93903          	ld	s2,-1940(s2) # 202d0 <_impure_ptr>
   1ba6c:	02a7e163          	bltu	a5,a0,1ba8e <signal+0x36>
   1ba70:	842a                	c.mv	s0,a0
   1ba72:	51893503          	ld	a0,1304(s2)
   1ba76:	84ae                	c.mv	s1,a1
   1ba78:	c50d                	c.beqz	a0,1baa2 <signal+0x4a>
   1ba7a:	040e                	c.slli	s0,0x3
   1ba7c:	942a                	c.add	s0,a0
   1ba7e:	6008                	c.ld	a0,0(s0)
   1ba80:	e004                	c.sd	s1,0(s0)
   1ba82:	60e2                	c.ldsp	ra,24(sp)
   1ba84:	6442                	c.ldsp	s0,16(sp)
   1ba86:	64a2                	c.ldsp	s1,8(sp)
   1ba88:	6902                	c.ldsp	s2,0(sp)
   1ba8a:	6105                	c.addi16sp	sp,32
   1ba8c:	8082                	c.jr	ra
   1ba8e:	60e2                	c.ldsp	ra,24(sp)
   1ba90:	6442                	c.ldsp	s0,16(sp)
   1ba92:	47d9                	c.li	a5,22
   1ba94:	00f92023          	sw	a5,0(s2)
   1ba98:	64a2                	c.ldsp	s1,8(sp)
   1ba9a:	6902                	c.ldsp	s2,0(sp)
   1ba9c:	557d                	c.li	a0,-1
   1ba9e:	6105                	c.addi16sp	sp,32
   1baa0:	8082                	c.jr	ra
   1baa2:	10000593          	addi	a1,zero,256
   1baa6:	854a                	c.mv	a0,s2
   1baa8:	ffffa097          	auipc	ra,0xffffa
   1baac:	ca8080e7          	jalr	ra,-856(ra) # 15750 <_malloc_r>
   1bab0:	50a93c23          	sd	a0,1304(s2)
   1bab4:	c911                	c.beqz	a0,1bac8 <signal+0x70>
   1bab6:	87aa                	c.mv	a5,a0
   1bab8:	10050713          	addi	a4,a0,256
   1babc:	0007b023          	sd	zero,0(a5)
   1bac0:	07a1                	c.addi	a5,8
   1bac2:	fef71de3          	bne	a4,a5,1babc <signal+0x64>
   1bac6:	bf55                	c.j	1ba7a <signal+0x22>
   1bac8:	557d                	c.li	a0,-1
   1baca:	bf65                	c.j	1ba82 <signal+0x2a>

000000000001bacc <_init_signal>:
   1bacc:	1141                	c.addi	sp,-16
   1bace:	e022                	c.sdsp	s0,0(sp)
   1bad0:	00005417          	auipc	s0,0x5
   1bad4:	80043403          	ld	s0,-2048(s0) # 202d0 <_impure_ptr>
   1bad8:	51843783          	ld	a5,1304(s0)
   1badc:	e406                	c.sdsp	ra,8(sp)
   1bade:	c791                	c.beqz	a5,1baea <_init_signal+0x1e>
   1bae0:	4501                	c.li	a0,0
   1bae2:	60a2                	c.ldsp	ra,8(sp)
   1bae4:	6402                	c.ldsp	s0,0(sp)
   1bae6:	0141                	c.addi	sp,16
   1bae8:	8082                	c.jr	ra
   1baea:	10000593          	addi	a1,zero,256
   1baee:	8522                	c.mv	a0,s0
   1baf0:	ffffa097          	auipc	ra,0xffffa
   1baf4:	c60080e7          	jalr	ra,-928(ra) # 15750 <_malloc_r>
   1baf8:	50a43c23          	sd	a0,1304(s0)
   1bafc:	c909                	c.beqz	a0,1bb0e <_init_signal+0x42>
   1bafe:	10050793          	addi	a5,a0,256
   1bb02:	00053023          	sd	zero,0(a0)
   1bb06:	0521                	c.addi	a0,8
   1bb08:	fef51de3          	bne	a0,a5,1bb02 <_init_signal+0x36>
   1bb0c:	bfd1                	c.j	1bae0 <_init_signal+0x14>
   1bb0e:	557d                	c.li	a0,-1
   1bb10:	bfc9                	c.j	1bae2 <_init_signal+0x16>

000000000001bb12 <__sigtramp>:
   1bb12:	1101                	c.addi	sp,-32
   1bb14:	e426                	c.sdsp	s1,8(sp)
   1bb16:	ec06                	c.sdsp	ra,24(sp)
   1bb18:	e822                	c.sdsp	s0,16(sp)
   1bb1a:	47fd                	c.li	a5,31
   1bb1c:	00004497          	auipc	s1,0x4
   1bb20:	7b44b483          	ld	s1,1972(s1) # 202d0 <_impure_ptr>
   1bb24:	06a7ed63          	bltu	a5,a0,1bb9e <__sigtramp+0x8c>
   1bb28:	5184b703          	ld	a4,1304(s1)
   1bb2c:	842a                	c.mv	s0,a0
   1bb2e:	cf05                	c.beqz	a4,1bb66 <__sigtramp+0x54>
   1bb30:	00341513          	slli	a0,s0,0x3
   1bb34:	972a                	c.add	a4,a0
   1bb36:	631c                	c.ld	a5,0(a4)
   1bb38:	c38d                	c.beqz	a5,1bb5a <__sigtramp+0x48>
   1bb3a:	56fd                	c.li	a3,-1
   1bb3c:	04d78f63          	beq	a5,a3,1bb9a <__sigtramp+0x88>
   1bb40:	4685                	c.li	a3,1
   1bb42:	04d78663          	beq	a5,a3,1bb8e <__sigtramp+0x7c>
   1bb46:	8522                	c.mv	a0,s0
   1bb48:	00073023          	sd	zero,0(a4)
   1bb4c:	9782                	c.jalr	a5
   1bb4e:	4501                	c.li	a0,0
   1bb50:	60e2                	c.ldsp	ra,24(sp)
   1bb52:	6442                	c.ldsp	s0,16(sp)
   1bb54:	64a2                	c.ldsp	s1,8(sp)
   1bb56:	6105                	c.addi16sp	sp,32
   1bb58:	8082                	c.jr	ra
   1bb5a:	60e2                	c.ldsp	ra,24(sp)
   1bb5c:	6442                	c.ldsp	s0,16(sp)
   1bb5e:	64a2                	c.ldsp	s1,8(sp)
   1bb60:	4505                	c.li	a0,1
   1bb62:	6105                	c.addi16sp	sp,32
   1bb64:	8082                	c.jr	ra
   1bb66:	10000593          	addi	a1,zero,256
   1bb6a:	8526                	c.mv	a0,s1
   1bb6c:	ffffa097          	auipc	ra,0xffffa
   1bb70:	be4080e7          	jalr	ra,-1052(ra) # 15750 <_malloc_r>
   1bb74:	50a4bc23          	sd	a0,1304(s1)
   1bb78:	872a                	c.mv	a4,a0
   1bb7a:	c115                	c.beqz	a0,1bb9e <__sigtramp+0x8c>
   1bb7c:	87aa                	c.mv	a5,a0
   1bb7e:	10050693          	addi	a3,a0,256
   1bb82:	0007b023          	sd	zero,0(a5)
   1bb86:	07a1                	c.addi	a5,8
   1bb88:	fed79de3          	bne	a5,a3,1bb82 <__sigtramp+0x70>
   1bb8c:	b755                	c.j	1bb30 <__sigtramp+0x1e>
   1bb8e:	60e2                	c.ldsp	ra,24(sp)
   1bb90:	6442                	c.ldsp	s0,16(sp)
   1bb92:	64a2                	c.ldsp	s1,8(sp)
   1bb94:	450d                	c.li	a0,3
   1bb96:	6105                	c.addi16sp	sp,32
   1bb98:	8082                	c.jr	ra
   1bb9a:	4509                	c.li	a0,2
   1bb9c:	bf55                	c.j	1bb50 <__sigtramp+0x3e>
   1bb9e:	557d                	c.li	a0,-1
   1bba0:	bf45                	c.j	1bb50 <__sigtramp+0x3e>

000000000001bba2 <_kill_r>:
   1bba2:	1141                	c.addi	sp,-16
   1bba4:	872e                	c.mv	a4,a1
   1bba6:	e022                	c.sdsp	s0,0(sp)
   1bba8:	85b2                	c.mv	a1,a2
   1bbaa:	842a                	c.mv	s0,a0
   1bbac:	853a                	c.mv	a0,a4
   1bbae:	00004797          	auipc	a5,0x4
   1bbb2:	7407ad23          	sw	zero,1882(a5) # 20308 <errno>
   1bbb6:	e406                	c.sdsp	ra,8(sp)
   1bbb8:	00000097          	auipc	ra,0x0
   1bbbc:	0fe080e7          	jalr	ra,254(ra) # 1bcb6 <_kill>
   1bbc0:	57fd                	c.li	a5,-1
   1bbc2:	00f50663          	beq	a0,a5,1bbce <_kill_r+0x2c>
   1bbc6:	60a2                	c.ldsp	ra,8(sp)
   1bbc8:	6402                	c.ldsp	s0,0(sp)
   1bbca:	0141                	c.addi	sp,16
   1bbcc:	8082                	c.jr	ra
   1bbce:	00004797          	auipc	a5,0x4
   1bbd2:	73a7a783          	lw	a5,1850(a5) # 20308 <errno>
   1bbd6:	dbe5                	c.beqz	a5,1bbc6 <_kill_r+0x24>
   1bbd8:	60a2                	c.ldsp	ra,8(sp)
   1bbda:	c01c                	c.sw	a5,0(s0)
   1bbdc:	6402                	c.ldsp	s0,0(sp)
   1bbde:	0141                	c.addi	sp,16
   1bbe0:	8082                	c.jr	ra

000000000001bbe2 <_getpid_r>:
   1bbe2:	00000317          	auipc	t1,0x0
   1bbe6:	0a630067          	jalr	zero,166(t1) # 1bc88 <_getpid>

000000000001bbea <_close>:
   1bbea:	1141                	c.addi	sp,-16
   1bbec:	e406                	c.sdsp	ra,8(sp)
   1bbee:	e022                	c.sdsp	s0,0(sp)
   1bbf0:	03900893          	addi	a7,zero,57
   1bbf4:	00000073          	ecall
   1bbf8:	842a                	c.mv	s0,a0
   1bbfa:	00054763          	blt	a0,zero,1bc08 <_close+0x1e>
   1bbfe:	2501                	c.addiw	a0,0
   1bc00:	60a2                	c.ldsp	ra,8(sp)
   1bc02:	6402                	c.ldsp	s0,0(sp)
   1bc04:	0141                	c.addi	sp,16
   1bc06:	8082                	c.jr	ra
   1bc08:	ffffe097          	auipc	ra,0xffffe
   1bc0c:	7a2080e7          	jalr	ra,1954(ra) # 1a3aa <__errno>
   1bc10:	4080043b          	subw	s0,zero,s0
   1bc14:	c100                	c.sw	s0,0(a0)
   1bc16:	557d                	c.li	a0,-1
   1bc18:	b7e5                	c.j	1bc00 <_close+0x16>

000000000001bc1a <_exit>:
   1bc1a:	05d00893          	addi	a7,zero,93
   1bc1e:	00000073          	ecall
   1bc22:	00054363          	blt	a0,zero,1bc28 <_exit+0xe>
   1bc26:	a001                	c.j	1bc26 <_exit+0xc>
   1bc28:	1141                	c.addi	sp,-16
   1bc2a:	e022                	c.sdsp	s0,0(sp)
   1bc2c:	842a                	c.mv	s0,a0
   1bc2e:	e406                	c.sdsp	ra,8(sp)
   1bc30:	4080043b          	subw	s0,zero,s0
   1bc34:	ffffe097          	auipc	ra,0xffffe
   1bc38:	776080e7          	jalr	ra,1910(ra) # 1a3aa <__errno>
   1bc3c:	c100                	c.sw	s0,0(a0)
   1bc3e:	a001                	c.j	1bc3e <_exit+0x24>

000000000001bc40 <_fstat>:
   1bc40:	7135                	c.addi16sp	sp,-160
   1bc42:	e526                	c.sdsp	s1,136(sp)
   1bc44:	ed06                	c.sdsp	ra,152(sp)
   1bc46:	84ae                	c.mv	s1,a1
   1bc48:	e922                	c.sdsp	s0,144(sp)
   1bc4a:	05000893          	addi	a7,zero,80
   1bc4e:	858a                	c.mv	a1,sp
   1bc50:	00000073          	ecall
   1bc54:	842a                	c.mv	s0,a0
   1bc56:	02054063          	blt	a0,zero,1bc76 <_fstat+0x36>
   1bc5a:	0005041b          	addiw	s0,a0,0
   1bc5e:	8526                	c.mv	a0,s1
   1bc60:	858a                	c.mv	a1,sp
   1bc62:	00000097          	auipc	ra,0x0
   1bc66:	154080e7          	jalr	ra,340(ra) # 1bdb6 <_conv_stat>
   1bc6a:	60ea                	c.ldsp	ra,152(sp)
   1bc6c:	8522                	c.mv	a0,s0
   1bc6e:	644a                	c.ldsp	s0,144(sp)
   1bc70:	64aa                	c.ldsp	s1,136(sp)
   1bc72:	610d                	c.addi16sp	sp,160
   1bc74:	8082                	c.jr	ra
   1bc76:	4080043b          	subw	s0,zero,s0
   1bc7a:	ffffe097          	auipc	ra,0xffffe
   1bc7e:	730080e7          	jalr	ra,1840(ra) # 1a3aa <__errno>
   1bc82:	c100                	c.sw	s0,0(a0)
   1bc84:	547d                	c.li	s0,-1
   1bc86:	bfe1                	c.j	1bc5e <_fstat+0x1e>

000000000001bc88 <_getpid>:
   1bc88:	4505                	c.li	a0,1
   1bc8a:	8082                	c.jr	ra

000000000001bc8c <_isatty>:
   1bc8c:	7119                	c.addi16sp	sp,-128
   1bc8e:	002c                	c.addi4spn	a1,sp,8
   1bc90:	fc86                	c.sdsp	ra,120(sp)
   1bc92:	00000097          	auipc	ra,0x0
   1bc96:	fae080e7          	jalr	ra,-82(ra) # 1bc40 <_fstat>
   1bc9a:	57fd                	c.li	a5,-1
   1bc9c:	00f50963          	beq	a0,a5,1bcae <_isatty+0x22>
   1bca0:	4532                	c.lwsp	a0,12(sp)
   1bca2:	70e6                	c.ldsp	ra,120(sp)
   1bca4:	40d5551b          	sraiw	a0,a0,0xd
   1bca8:	8905                	c.andi	a0,1
   1bcaa:	6109                	c.addi16sp	sp,128
   1bcac:	8082                	c.jr	ra
   1bcae:	70e6                	c.ldsp	ra,120(sp)
   1bcb0:	4501                	c.li	a0,0
   1bcb2:	6109                	c.addi16sp	sp,128
   1bcb4:	8082                	c.jr	ra

000000000001bcb6 <_kill>:
   1bcb6:	1141                	c.addi	sp,-16
   1bcb8:	e406                	c.sdsp	ra,8(sp)
   1bcba:	ffffe097          	auipc	ra,0xffffe
   1bcbe:	6f0080e7          	jalr	ra,1776(ra) # 1a3aa <__errno>
   1bcc2:	60a2                	c.ldsp	ra,8(sp)
   1bcc4:	47d9                	c.li	a5,22
   1bcc6:	c11c                	c.sw	a5,0(a0)
   1bcc8:	557d                	c.li	a0,-1
   1bcca:	0141                	c.addi	sp,16
   1bccc:	8082                	c.jr	ra

000000000001bcce <_lseek>:
   1bcce:	1141                	c.addi	sp,-16
   1bcd0:	e406                	c.sdsp	ra,8(sp)
   1bcd2:	e022                	c.sdsp	s0,0(sp)
   1bcd4:	03e00893          	addi	a7,zero,62
   1bcd8:	00000073          	ecall
   1bcdc:	842a                	c.mv	s0,a0
   1bcde:	00054763          	blt	a0,zero,1bcec <_lseek+0x1e>
   1bce2:	60a2                	c.ldsp	ra,8(sp)
   1bce4:	8522                	c.mv	a0,s0
   1bce6:	6402                	c.ldsp	s0,0(sp)
   1bce8:	0141                	c.addi	sp,16
   1bcea:	8082                	c.jr	ra
   1bcec:	4080043b          	subw	s0,zero,s0
   1bcf0:	ffffe097          	auipc	ra,0xffffe
   1bcf4:	6ba080e7          	jalr	ra,1722(ra) # 1a3aa <__errno>
   1bcf8:	c100                	c.sw	s0,0(a0)
   1bcfa:	547d                	c.li	s0,-1
   1bcfc:	b7dd                	c.j	1bce2 <_lseek+0x14>

000000000001bcfe <_read>:
   1bcfe:	1141                	c.addi	sp,-16
   1bd00:	e406                	c.sdsp	ra,8(sp)
   1bd02:	e022                	c.sdsp	s0,0(sp)
   1bd04:	03f00893          	addi	a7,zero,63
   1bd08:	00000073          	ecall
   1bd0c:	842a                	c.mv	s0,a0
   1bd0e:	00054763          	blt	a0,zero,1bd1c <_read+0x1e>
   1bd12:	60a2                	c.ldsp	ra,8(sp)
   1bd14:	8522                	c.mv	a0,s0
   1bd16:	6402                	c.ldsp	s0,0(sp)
   1bd18:	0141                	c.addi	sp,16
   1bd1a:	8082                	c.jr	ra
   1bd1c:	4080043b          	subw	s0,zero,s0
   1bd20:	ffffe097          	auipc	ra,0xffffe
   1bd24:	68a080e7          	jalr	ra,1674(ra) # 1a3aa <__errno>
   1bd28:	c100                	c.sw	s0,0(a0)
   1bd2a:	547d                	c.li	s0,-1
   1bd2c:	b7dd                	c.j	1bd12 <_read+0x14>

000000000001bd2e <_sbrk>:
   1bd2e:	00004697          	auipc	a3,0x4
   1bd32:	5e268693          	addi	a3,a3,1506 # 20310 <heap_end.0>
   1bd36:	6298                	c.ld	a4,0(a3)
   1bd38:	1141                	c.addi	sp,-16
   1bd3a:	e406                	c.sdsp	ra,8(sp)
   1bd3c:	87aa                	c.mv	a5,a0
   1bd3e:	eb19                	c.bnez	a4,1bd54 <_sbrk+0x26>
   1bd40:	0d600893          	addi	a7,zero,214
   1bd44:	4501                	c.li	a0,0
   1bd46:	00000073          	ecall
   1bd4a:	567d                	c.li	a2,-1
   1bd4c:	872a                	c.mv	a4,a0
   1bd4e:	02c50263          	beq	a0,a2,1bd72 <_sbrk+0x44>
   1bd52:	e288                	c.sd	a0,0(a3)
   1bd54:	0d600893          	addi	a7,zero,214
   1bd58:	00e78533          	add	a0,a5,a4
   1bd5c:	00000073          	ecall
   1bd60:	6298                	c.ld	a4,0(a3)
   1bd62:	97ba                	c.add	a5,a4
   1bd64:	00f51763          	bne	a0,a5,1bd72 <_sbrk+0x44>
   1bd68:	60a2                	c.ldsp	ra,8(sp)
   1bd6a:	e288                	c.sd	a0,0(a3)
   1bd6c:	853a                	c.mv	a0,a4
   1bd6e:	0141                	c.addi	sp,16
   1bd70:	8082                	c.jr	ra
   1bd72:	ffffe097          	auipc	ra,0xffffe
   1bd76:	638080e7          	jalr	ra,1592(ra) # 1a3aa <__errno>
   1bd7a:	60a2                	c.ldsp	ra,8(sp)
   1bd7c:	47b1                	c.li	a5,12
   1bd7e:	c11c                	c.sw	a5,0(a0)
   1bd80:	557d                	c.li	a0,-1
   1bd82:	0141                	c.addi	sp,16
   1bd84:	8082                	c.jr	ra

000000000001bd86 <_write>:
   1bd86:	1141                	c.addi	sp,-16
   1bd88:	e406                	c.sdsp	ra,8(sp)
   1bd8a:	e022                	c.sdsp	s0,0(sp)
   1bd8c:	04000893          	addi	a7,zero,64
   1bd90:	00000073          	ecall
   1bd94:	842a                	c.mv	s0,a0
   1bd96:	00054763          	blt	a0,zero,1bda4 <_write+0x1e>
   1bd9a:	60a2                	c.ldsp	ra,8(sp)
   1bd9c:	8522                	c.mv	a0,s0
   1bd9e:	6402                	c.ldsp	s0,0(sp)
   1bda0:	0141                	c.addi	sp,16
   1bda2:	8082                	c.jr	ra
   1bda4:	4080043b          	subw	s0,zero,s0
   1bda8:	ffffe097          	auipc	ra,0xffffe
   1bdac:	602080e7          	jalr	ra,1538(ra) # 1a3aa <__errno>
   1bdb0:	c100                	c.sw	s0,0(a0)
   1bdb2:	547d                	c.li	s0,-1
   1bdb4:	b7dd                	c.j	1bd9a <_write+0x14>

000000000001bdb6 <_conv_stat>:
   1bdb6:	0005b383          	ld	t2,0(a1)
   1bdba:	0085b283          	ld	t0,8(a1)
   1bdbe:	0105af83          	lw	t6,16(a1)
   1bdc2:	0145af03          	lw	t5,20(a1)
   1bdc6:	0185ae83          	lw	t4,24(a1)
   1bdca:	01c5ae03          	lw	t3,28(a1)
   1bdce:	0205b303          	ld	t1,32(a1)
   1bdd2:	0305b883          	ld	a7,48(a1)
   1bdd6:	0405b803          	ld	a6,64(a1)
   1bdda:	5d90                	c.lw	a2,56(a1)
   1bddc:	65b4                	c.ld	a3,72(a1)
   1bdde:	6db8                	c.ld	a4,88(a1)
   1bde0:	75bc                	c.ld	a5,104(a1)
   1bde2:	00751023          	sh	t2,0(a0)
   1bde6:	00551123          	sh	t0,2(a0)
   1bdea:	01f52223          	sw	t6,4(a0)
   1bdee:	01e51423          	sh	t5,8(a0)
   1bdf2:	01d51523          	sh	t4,10(a0)
   1bdf6:	01c51623          	sh	t3,12(a0)
   1bdfa:	00651723          	sh	t1,14(a0)
   1bdfe:	01153823          	sd	a7,16(a0)
   1be02:	05053823          	sd	a6,80(a0)
   1be06:	e530                	c.sd	a2,72(a0)
   1be08:	ed14                	c.sd	a3,24(a0)
   1be0a:	f518                	c.sd	a4,40(a0)
   1be0c:	fd1c                	c.sd	a5,56(a0)
   1be0e:	8082                	c.jr	ra

000000000001be10 <__eqtf2>:
   1be10:	882a                	c.mv	a6,a0
   1be12:	002027f3          	csrrs	a5,frm,zero
   1be16:	6521                	c.lui	a0,0x8
   1be18:	0305d893          	srli	a7,a1,0x30
   1be1c:	157d                	c.addi	a0,-1
   1be1e:	57fd                	c.li	a5,-1
   1be20:	83c1                	c.srli	a5,0x10
   1be22:	0306d313          	srli	t1,a3,0x30
   1be26:	00a8f8b3          	and	a7,a7,a0
   1be2a:	00f5f733          	and	a4,a1,a5
   1be2e:	00a37333          	and	t1,t1,a0
   1be32:	8ff5                	c.and	a5,a3
   1be34:	91fd                	c.srli	a1,0x3f
   1be36:	92fd                	c.srli	a3,0x3f
   1be38:	00a89863          	bne	a7,a0,1be48 <__eqtf2+0x38>
   1be3c:	01076533          	or	a0,a4,a6
   1be40:	e105                	c.bnez	a0,1be60 <__eqtf2+0x50>
   1be42:	03131a63          	bne	t1,a7,1be76 <__eqtf2+0x66>
   1be46:	a019                	c.j	1be4c <__eqtf2+0x3c>
   1be48:	02a31963          	bne	t1,a0,1be7a <__eqtf2+0x6a>
   1be4c:	00c7e533          	or	a0,a5,a2
   1be50:	c50d                	c.beqz	a0,1be7a <__eqtf2+0x6a>
   1be52:	66a1                	c.lui	a3,0x8
   1be54:	16fd                	c.addi	a3,-1
   1be56:	00d89e63          	bne	a7,a3,1be72 <__eqtf2+0x62>
   1be5a:	01076533          	or	a0,a4,a6
   1be5e:	c911                	c.beqz	a0,1be72 <__eqtf2+0x62>
   1be60:	933d                	c.srli	a4,0x2f
   1be62:	cf15                	c.beqz	a4,1be9e <__eqtf2+0x8e>
   1be64:	6721                	c.lui	a4,0x8
   1be66:	177d                	c.addi	a4,-1
   1be68:	4505                	c.li	a0,1
   1be6a:	00e31763          	bne	t1,a4,1be78 <__eqtf2+0x68>
   1be6e:	8e5d                	c.or	a2,a5
   1be70:	c601                	c.beqz	a2,1be78 <__eqtf2+0x68>
   1be72:	93bd                	c.srli	a5,0x2f
   1be74:	c78d                	c.beqz	a5,1be9e <__eqtf2+0x8e>
   1be76:	4505                	c.li	a0,1
   1be78:	8082                	c.jr	ra
   1be7a:	4505                	c.li	a0,1
   1be7c:	fe689ee3          	bne	a7,t1,1be78 <__eqtf2+0x68>
   1be80:	fef71ce3          	bne	a4,a5,1be78 <__eqtf2+0x68>
   1be84:	fec81ae3          	bne	a6,a2,1be78 <__eqtf2+0x68>
   1be88:	00d58963          	beq	a1,a3,1be9a <__eqtf2+0x8a>
   1be8c:	fe0896e3          	bne	a7,zero,1be78 <__eqtf2+0x68>
   1be90:	01076533          	or	a0,a4,a6
   1be94:	00a03533          	sltu	a0,zero,a0
   1be98:	8082                	c.jr	ra
   1be9a:	4501                	c.li	a0,0
   1be9c:	8082                	c.jr	ra
   1be9e:	00186073          	csrrsi	zero,fflags,16
   1bea2:	bfd1                	c.j	1be76 <__eqtf2+0x66>

000000000001bea4 <__getf2>:
   1bea4:	88aa                	c.mv	a7,a0
   1bea6:	002027f3          	csrrs	a5,frm,zero
   1beaa:	6321                	c.lui	t1,0x8
   1beac:	137d                	c.addi	t1,-1
   1beae:	57fd                	c.li	a5,-1
   1beb0:	0305d813          	srli	a6,a1,0x30
   1beb4:	83c1                	c.srli	a5,0x10
   1beb6:	0306d713          	srli	a4,a3,0x30
   1beba:	00687833          	and	a6,a6,t1
   1bebe:	00f5fe33          	and	t3,a1,a5
   1bec2:	03f5d513          	srli	a0,a1,0x3f
   1bec6:	8ff5                	c.and	a5,a3
   1bec8:	00677733          	and	a4,a4,t1
   1becc:	92fd                	c.srli	a3,0x3f
   1bece:	00681963          	bne	a6,t1,1bee0 <__getf2+0x3c>
   1bed2:	011e65b3          	or	a1,t3,a7
   1bed6:	c5ad                	c.beqz	a1,1bf40 <__getf2+0x9c>
   1bed8:	00186073          	csrrsi	zero,fflags,16
   1bedc:	5579                	c.li	a0,-2
   1bede:	8082                	c.jr	ra
   1bee0:	00671563          	bne	a4,t1,1beea <__getf2+0x46>
   1bee4:	00c7e5b3          	or	a1,a5,a2
   1bee8:	f9e5                	c.bnez	a1,1bed8 <__getf2+0x34>
   1beea:	04081d63          	bne	a6,zero,1bf44 <__getf2+0xa0>
   1beee:	011e65b3          	or	a1,t3,a7
   1bef2:	0015b593          	sltiu	a1,a1,1
   1bef6:	eb0d                	c.bnez	a4,1bf28 <__getf2+0x84>
   1bef8:	00c7e333          	or	t1,a5,a2
   1befc:	02031663          	bne	t1,zero,1bf28 <__getf2+0x84>
   1bf00:	e185                	c.bnez	a1,1bf20 <__getf2+0x7c>
   1bf02:	c10d                	c.beqz	a0,1bf24 <__getf2+0x80>
   1bf04:	557d                	c.li	a0,-1
   1bf06:	8082                	c.jr	ra
   1bf08:	557d                	c.li	a0,-1
   1bf0a:	c69d                	c.beqz	a3,1bf38 <__getf2+0x94>
   1bf0c:	8536                	c.mv	a0,a3
   1bf0e:	8082                	c.jr	ra
   1bf10:	ffc7e9e3          	bltu	a5,t3,1bf02 <__getf2+0x5e>
   1bf14:	02fe1363          	bne	t3,a5,1bf3a <__getf2+0x96>
   1bf18:	ff1665e3          	bltu	a2,a7,1bf02 <__getf2+0x5e>
   1bf1c:	00c8ed63          	bltu	a7,a2,1bf36 <__getf2+0x92>
   1bf20:	4501                	c.li	a0,0
   1bf22:	8082                	c.jr	ra
   1bf24:	4505                	c.li	a0,1
   1bf26:	8082                	c.jr	ra
   1bf28:	f1e5                	c.bnez	a1,1bf08 <__getf2+0x64>
   1bf2a:	fcd51ce3          	bne	a0,a3,1bf02 <__getf2+0x5e>
   1bf2e:	fd074ae3          	blt	a4,a6,1bf02 <__getf2+0x5e>
   1bf32:	fce85fe3          	bge	a6,a4,1bf10 <__getf2+0x6c>
   1bf36:	d579                	c.beqz	a0,1bf04 <__getf2+0x60>
   1bf38:	8082                	c.jr	ra
   1bf3a:	fefe6ee3          	bltu	t3,a5,1bf36 <__getf2+0x92>
   1bf3e:	b7cd                	c.j	1bf20 <__getf2+0x7c>
   1bf40:	fb0702e3          	beq	a4,a6,1bee4 <__getf2+0x40>
   1bf44:	f37d                	c.bnez	a4,1bf2a <__getf2+0x86>
   1bf46:	4581                	c.li	a1,0
   1bf48:	bf45                	c.j	1bef8 <__getf2+0x54>

000000000001bf4a <__letf2>:
   1bf4a:	88aa                	c.mv	a7,a0
   1bf4c:	002027f3          	csrrs	a5,frm,zero
   1bf50:	6321                	c.lui	t1,0x8
   1bf52:	137d                	c.addi	t1,-1
   1bf54:	57fd                	c.li	a5,-1
   1bf56:	0305d813          	srli	a6,a1,0x30
   1bf5a:	83c1                	c.srli	a5,0x10
   1bf5c:	0306d713          	srli	a4,a3,0x30
   1bf60:	00687833          	and	a6,a6,t1
   1bf64:	00f5fe33          	and	t3,a1,a5
   1bf68:	03f5d513          	srli	a0,a1,0x3f
   1bf6c:	8ff5                	c.and	a5,a3
   1bf6e:	00677733          	and	a4,a4,t1
   1bf72:	92fd                	c.srli	a3,0x3f
   1bf74:	00681963          	bne	a6,t1,1bf86 <__letf2+0x3c>
   1bf78:	011e65b3          	or	a1,t3,a7
   1bf7c:	c5ad                	c.beqz	a1,1bfe6 <__letf2+0x9c>
   1bf7e:	00186073          	csrrsi	zero,fflags,16
   1bf82:	4509                	c.li	a0,2
   1bf84:	8082                	c.jr	ra
   1bf86:	00671563          	bne	a4,t1,1bf90 <__letf2+0x46>
   1bf8a:	00c7e5b3          	or	a1,a5,a2
   1bf8e:	f9e5                	c.bnez	a1,1bf7e <__letf2+0x34>
   1bf90:	04081d63          	bne	a6,zero,1bfea <__letf2+0xa0>
   1bf94:	011e65b3          	or	a1,t3,a7
   1bf98:	0015b593          	sltiu	a1,a1,1
   1bf9c:	eb0d                	c.bnez	a4,1bfce <__letf2+0x84>
   1bf9e:	00c7e333          	or	t1,a5,a2
   1bfa2:	02031663          	bne	t1,zero,1bfce <__letf2+0x84>
   1bfa6:	e185                	c.bnez	a1,1bfc6 <__letf2+0x7c>
   1bfa8:	c10d                	c.beqz	a0,1bfca <__letf2+0x80>
   1bfaa:	557d                	c.li	a0,-1
   1bfac:	8082                	c.jr	ra
   1bfae:	557d                	c.li	a0,-1
   1bfb0:	c69d                	c.beqz	a3,1bfde <__letf2+0x94>
   1bfb2:	8536                	c.mv	a0,a3
   1bfb4:	8082                	c.jr	ra
   1bfb6:	ffc7e9e3          	bltu	a5,t3,1bfa8 <__letf2+0x5e>
   1bfba:	02fe1363          	bne	t3,a5,1bfe0 <__letf2+0x96>
   1bfbe:	ff1665e3          	bltu	a2,a7,1bfa8 <__letf2+0x5e>
   1bfc2:	00c8ed63          	bltu	a7,a2,1bfdc <__letf2+0x92>
   1bfc6:	4501                	c.li	a0,0
   1bfc8:	8082                	c.jr	ra
   1bfca:	4505                	c.li	a0,1
   1bfcc:	8082                	c.jr	ra
   1bfce:	f1e5                	c.bnez	a1,1bfae <__letf2+0x64>
   1bfd0:	fcd51ce3          	bne	a0,a3,1bfa8 <__letf2+0x5e>
   1bfd4:	fd074ae3          	blt	a4,a6,1bfa8 <__letf2+0x5e>
   1bfd8:	fce85fe3          	bge	a6,a4,1bfb6 <__letf2+0x6c>
   1bfdc:	d579                	c.beqz	a0,1bfaa <__letf2+0x60>
   1bfde:	8082                	c.jr	ra
   1bfe0:	fefe6ee3          	bltu	t3,a5,1bfdc <__letf2+0x92>
   1bfe4:	b7cd                	c.j	1bfc6 <__letf2+0x7c>
   1bfe6:	fb0702e3          	beq	a4,a6,1bf8a <__letf2+0x40>
   1bfea:	f37d                	c.bnez	a4,1bfd0 <__letf2+0x86>
   1bfec:	4581                	c.li	a1,0
   1bfee:	bf45                	c.j	1bf9e <__letf2+0x54>

000000000001bff0 <__multf3>:
   1bff0:	711d                	c.addi16sp	sp,-96
   1bff2:	f05a                	c.sdsp	s6,32(sp)
   1bff4:	e466                	c.sdsp	s9,8(sp)
   1bff6:	ec86                	c.sdsp	ra,88(sp)
   1bff8:	e8a2                	c.sdsp	s0,80(sp)
   1bffa:	e4a6                	c.sdsp	s1,72(sp)
   1bffc:	e0ca                	c.sdsp	s2,64(sp)
   1bffe:	fc4e                	c.sdsp	s3,56(sp)
   1c000:	f852                	c.sdsp	s4,48(sp)
   1c002:	f456                	c.sdsp	s5,40(sp)
   1c004:	ec5e                	c.sdsp	s7,24(sp)
   1c006:	e862                	c.sdsp	s8,16(sp)
   1c008:	8cb2                	c.mv	s9,a2
   1c00a:	8b36                	c.mv	s6,a3
   1c00c:	00202973          	csrrs	s2,frm,zero
   1c010:	6721                	c.lui	a4,0x8
   1c012:	0305da93          	srli	s5,a1,0x30
   1c016:	177d                	c.addi	a4,-1
   1c018:	01059993          	slli	s3,a1,0x10
   1c01c:	00eaf7b3          	and	a5,s5,a4
   1c020:	2901                	c.addiw	s2,0
   1c022:	0109d993          	srli	s3,s3,0x10
   1c026:	03f5db93          	srli	s7,a1,0x3f
   1c02a:	c79d                	c.beqz	a5,1c058 <__multf3+0x68>
   1c02c:	8a2a                	c.mv	s4,a0
   1c02e:	00078a9b          	addiw	s5,a5,0
   1c032:	08e78863          	beq	a5,a4,1c0c2 <__multf3+0xd2>
   1c036:	098e                	c.slli	s3,0x3
   1c038:	03d55713          	srli	a4,a0,0x3d
   1c03c:	01376733          	or	a4,a4,s3
   1c040:	7af1                	c.lui	s5,0xffffc
   1c042:	4985                	c.li	s3,1
   1c044:	19ce                	c.slli	s3,0x33
   1c046:	0a85                	c.addi	s5,1
   1c048:	013769b3          	or	s3,a4,s3
   1c04c:	00351a13          	slli	s4,a0,0x3
   1c050:	9abe                	c.add	s5,a5
   1c052:	4c01                	c.li	s8,0
   1c054:	4481                	c.li	s1,0
   1c056:	a8bd                	c.j	1c0d4 <__multf3+0xe4>
   1c058:	00a9e7b3          	or	a5,s3,a0
   1c05c:	842a                	c.mv	s0,a0
   1c05e:	cff1                	c.beqz	a5,1c13a <__multf3+0x14a>
   1c060:	04098463          	beq	s3,zero,1c0a8 <__multf3+0xb8>
   1c064:	854e                	c.mv	a0,s3
   1c066:	00001097          	auipc	ra,0x1
   1c06a:	1b2080e7          	jalr	ra,434(ra) # 1d218 <__clzdi2>
   1c06e:	0005079b          	addiw	a5,a0,0
   1c072:	ff178693          	addi	a3,a5,-15
   1c076:	03c00613          	addi	a2,zero,60
   1c07a:	0006871b          	addiw	a4,a3,0
   1c07e:	02d64c63          	blt	a2,a3,1c0b6 <__multf3+0xc6>
   1c082:	03d00693          	addi	a3,zero,61
   1c086:	00370a1b          	addiw	s4,a4,3
   1c08a:	40e6873b          	subw	a4,a3,a4
   1c08e:	014999b3          	sll	s3,s3,s4
   1c092:	00e45733          	srl	a4,s0,a4
   1c096:	013769b3          	or	s3,a4,s3
   1c09a:	01441a33          	sll	s4,s0,s4
   1c09e:	7af1                	c.lui	s5,0xffffc
   1c0a0:	0ac5                	c.addi	s5,17
   1c0a2:	40fa8ab3          	sub	s5,s5,a5
   1c0a6:	b775                	c.j	1c052 <__multf3+0x62>
   1c0a8:	00001097          	auipc	ra,0x1
   1c0ac:	170080e7          	jalr	ra,368(ra) # 1d218 <__clzdi2>
   1c0b0:	0405079b          	addiw	a5,a0,64
   1c0b4:	bf7d                	c.j	1c072 <__multf3+0x82>
   1c0b6:	fc37071b          	addiw	a4,a4,-61
   1c0ba:	00e419b3          	sll	s3,s0,a4
   1c0be:	4a01                	c.li	s4,0
   1c0c0:	bff9                	c.j	1c09e <__multf3+0xae>
   1c0c2:	00a9e7b3          	or	a5,s3,a0
   1c0c6:	cfbd                	c.beqz	a5,1c144 <__multf3+0x154>
   1c0c8:	02f9d793          	srli	a5,s3,0x2f
   1c0cc:	8b85                	c.andi	a5,1
   1c0ce:	4c0d                	c.li	s8,3
   1c0d0:	44c1                	c.li	s1,16
   1c0d2:	f3c9                	c.bnez	a5,1c054 <__multf3+0x64>
   1c0d4:	66a1                	c.lui	a3,0x8
   1c0d6:	030b5513          	srli	a0,s6,0x30
   1c0da:	16fd                	c.addi	a3,-1
   1c0dc:	010b1413          	slli	s0,s6,0x10
   1c0e0:	00d57733          	and	a4,a0,a3
   1c0e4:	87e6                	c.mv	a5,s9
   1c0e6:	8041                	c.srli	s0,0x10
   1c0e8:	03fb5b13          	srli	s6,s6,0x3f
   1c0ec:	c325                	c.beqz	a4,1c14c <__multf3+0x15c>
   1c0ee:	0007051b          	addiw	a0,a4,0
   1c0f2:	0ad70f63          	beq	a4,a3,1c1b0 <__multf3+0x1c0>
   1c0f6:	040e                	c.slli	s0,0x3
   1c0f8:	03dcd693          	srli	a3,s9,0x3d
   1c0fc:	8ec1                	c.or	a3,s0
   1c0fe:	7571                	c.lui	a0,0xffffc
   1c100:	4405                	c.li	s0,1
   1c102:	144e                	c.slli	s0,0x33
   1c104:	0505                	c.addi	a0,1
   1c106:	8c55                	c.or	s0,a3
   1c108:	003c9793          	slli	a5,s9,0x3
   1c10c:	953a                	c.add	a0,a4
   1c10e:	4701                	c.li	a4,0
   1c110:	002c1693          	slli	a3,s8,0x2
   1c114:	8ed9                	c.or	a3,a4
   1c116:	9aaa                	c.add	s5,a0
   1c118:	16fd                	c.addi	a3,-1
   1c11a:	45b9                	c.li	a1,14
   1c11c:	016bc633          	xor	a2,s7,s6
   1c120:	001a8813          	addi	a6,s5,1 # ffffffffffffc001 <__BSS_END__+0xfffffffffffdbc81>
   1c124:	0ed5eb63          	bltu	a1,a3,1c21a <__multf3+0x22a>
   1c128:	00002597          	auipc	a1,0x2
   1c12c:	f0858593          	addi	a1,a1,-248 # 1e030 <zeroes.0+0x10>
   1c130:	068a                	c.slli	a3,0x2
   1c132:	96ae                	c.add	a3,a1
   1c134:	4294                	c.lw	a3,0(a3)
   1c136:	96ae                	c.add	a3,a1
   1c138:	8682                	c.jr	a3
   1c13a:	4981                	c.li	s3,0
   1c13c:	4a01                	c.li	s4,0
   1c13e:	4a81                	c.li	s5,0
   1c140:	4c05                	c.li	s8,1
   1c142:	bf09                	c.j	1c054 <__multf3+0x64>
   1c144:	4981                	c.li	s3,0
   1c146:	4a01                	c.li	s4,0
   1c148:	4c09                	c.li	s8,2
   1c14a:	b729                	c.j	1c054 <__multf3+0x64>
   1c14c:	008ce7b3          	or	a5,s9,s0
   1c150:	cbb5                	c.beqz	a5,1c1c4 <__multf3+0x1d4>
   1c152:	c029                	c.beqz	s0,1c194 <__multf3+0x1a4>
   1c154:	8522                	c.mv	a0,s0
   1c156:	00001097          	auipc	ra,0x1
   1c15a:	0c2080e7          	jalr	ra,194(ra) # 1d218 <__clzdi2>
   1c15e:	0005071b          	addiw	a4,a0,0
   1c162:	ff170793          	addi	a5,a4,-15 # 7ff1 <register_fini-0x80bf>
   1c166:	03c00613          	addi	a2,zero,60
   1c16a:	0007869b          	addiw	a3,a5,0
   1c16e:	02f64b63          	blt	a2,a5,1c1a4 <__multf3+0x1b4>
   1c172:	03d00613          	addi	a2,zero,61
   1c176:	0036879b          	addiw	a5,a3,3
   1c17a:	40d606bb          	subw	a3,a2,a3
   1c17e:	00f41433          	sll	s0,s0,a5
   1c182:	00dcd6b3          	srl	a3,s9,a3
   1c186:	8c55                	c.or	s0,a3
   1c188:	00fc97b3          	sll	a5,s9,a5
   1c18c:	7571                	c.lui	a0,0xffffc
   1c18e:	0545                	c.addi	a0,17
   1c190:	8d19                	c.sub	a0,a4
   1c192:	bfb5                	c.j	1c10e <__multf3+0x11e>
   1c194:	8566                	c.mv	a0,s9
   1c196:	00001097          	auipc	ra,0x1
   1c19a:	082080e7          	jalr	ra,130(ra) # 1d218 <__clzdi2>
   1c19e:	0405071b          	addiw	a4,a0,64
   1c1a2:	b7c1                	c.j	1c162 <__multf3+0x172>
   1c1a4:	fc36869b          	addiw	a3,a3,-61
   1c1a8:	00dc9433          	sll	s0,s9,a3
   1c1ac:	4781                	c.li	a5,0
   1c1ae:	bff9                	c.j	1c18c <__multf3+0x19c>
   1c1b0:	008ce733          	or	a4,s9,s0
   1c1b4:	cf09                	c.beqz	a4,1c1ce <__multf3+0x1de>
   1c1b6:	02f45713          	srli	a4,s0,0x2f
   1c1ba:	8b05                	c.andi	a4,1
   1c1bc:	ef09                	c.bnez	a4,1c1d6 <__multf3+0x1e6>
   1c1be:	470d                	c.li	a4,3
   1c1c0:	44c1                	c.li	s1,16
   1c1c2:	b7b9                	c.j	1c110 <__multf3+0x120>
   1c1c4:	4401                	c.li	s0,0
   1c1c6:	4781                	c.li	a5,0
   1c1c8:	4501                	c.li	a0,0
   1c1ca:	4705                	c.li	a4,1
   1c1cc:	b791                	c.j	1c110 <__multf3+0x120>
   1c1ce:	4401                	c.li	s0,0
   1c1d0:	4781                	c.li	a5,0
   1c1d2:	4709                	c.li	a4,2
   1c1d4:	bf35                	c.j	1c110 <__multf3+0x120>
   1c1d6:	470d                	c.li	a4,3
   1c1d8:	bf25                	c.j	1c110 <__multf3+0x120>
   1c1da:	4405                	c.li	s0,1
   1c1dc:	6721                	c.lui	a4,0x8
   1c1de:	143e                	c.slli	s0,0x2f
   1c1e0:	4501                	c.li	a0,0
   1c1e2:	177d                	c.addi	a4,-1
   1c1e4:	4601                	c.li	a2,0
   1c1e6:	44c1                	c.li	s1,16
   1c1e8:	1746                	c.slli	a4,0x31
   1c1ea:	9345                	c.srli	a4,0x31
   1c1ec:	063e                	c.slli	a2,0xf
   1c1ee:	0442                	c.slli	s0,0x10
   1c1f0:	8f51                	c.or	a4,a2
   1c1f2:	1742                	c.slli	a4,0x30
   1c1f4:	01045593          	srli	a1,s0,0x10
   1c1f8:	8dd9                	c.or	a1,a4
   1c1fa:	c099                	c.beqz	s1,1c200 <__multf3+0x210>
   1c1fc:	0014a073          	csrrs	zero,fflags,s1
   1c200:	60e6                	c.ldsp	ra,88(sp)
   1c202:	6446                	c.ldsp	s0,80(sp)
   1c204:	64a6                	c.ldsp	s1,72(sp)
   1c206:	6906                	c.ldsp	s2,64(sp)
   1c208:	79e2                	c.ldsp	s3,56(sp)
   1c20a:	7a42                	c.ldsp	s4,48(sp)
   1c20c:	7aa2                	c.ldsp	s5,40(sp)
   1c20e:	7b02                	c.ldsp	s6,32(sp)
   1c210:	6be2                	c.ldsp	s7,24(sp)
   1c212:	6c42                	c.ldsp	s8,16(sp)
   1c214:	6ca2                	c.ldsp	s9,8(sp)
   1c216:	6125                	c.addi16sp	sp,96
   1c218:	8082                	c.jr	ra
   1c21a:	557d                	c.li	a0,-1
   1c21c:	9101                	c.srli	a0,0x20
   1c21e:	014983b3          	add	t2,s3,s4
   1c222:	00878f33          	add	t5,a5,s0
   1c226:	020a5e93          	srli	t4,s4,0x20
   1c22a:	0207d693          	srli	a3,a5,0x20
   1c22e:	0143bfb3          	sltu	t6,t2,s4
   1c232:	00ff32b3          	sltu	t0,t5,a5
   1c236:	00aa7a33          	and	s4,s4,a0
   1c23a:	8fe9                	c.and	a5,a0
   1c23c:	03478533          	mul	a0,a5,s4
   1c240:	8e7e                	c.mv	t3,t6
   1c242:	8316                	c.mv	t1,t0
   1c244:	02fe87b3          	mul	a5,t4,a5
   1c248:	02de8733          	mul	a4,t4,a3
   1c24c:	034686b3          	mul	a3,a3,s4
   1c250:	02055a13          	srli	s4,a0,0x20
   1c254:	96be                	c.add	a3,a5
   1c256:	9a36                	c.add	s4,a3
   1c258:	00fa7563          	bgeu	s4,a5,1c262 <__multf3+0x272>
   1c25c:	4785                	c.li	a5,1
   1c25e:	1782                	c.slli	a5,0x20
   1c260:	973e                	c.add	a4,a5
   1c262:	56fd                	c.li	a3,-1
   1c264:	9281                	c.srli	a3,0x20
   1c266:	00da75b3          	and	a1,s4,a3
   1c26a:	8d75                	c.and	a0,a3
   1c26c:	1582                	c.slli	a1,0x20
   1c26e:	0203d893          	srli	a7,t2,0x20
   1c272:	020f5793          	srli	a5,t5,0x20
   1c276:	020a5e93          	srli	t4,s4,0x20
   1c27a:	95aa                	c.add	a1,a0
   1c27c:	00d3f533          	and	a0,t2,a3
   1c280:	00df76b3          	and	a3,t5,a3
   1c284:	02f88b33          	mul	s6,a7,a5
   1c288:	9eba                	c.add	t4,a4
   1c28a:	02a787b3          	mul	a5,a5,a0
   1c28e:	02a68733          	mul	a4,a3,a0
   1c292:	02d886b3          	mul	a3,a7,a3
   1c296:	00d78533          	add	a0,a5,a3
   1c29a:	02075793          	srli	a5,a4,0x20
   1c29e:	97aa                	c.add	a5,a0
   1c2a0:	00d7f563          	bgeu	a5,a3,1c2aa <__multf3+0x2ba>
   1c2a4:	4685                	c.li	a3,1
   1c2a6:	1682                	c.slli	a3,0x20
   1c2a8:	9b36                	c.add	s6,a3
   1c2aa:	58fd                	c.li	a7,-1
   1c2ac:	0208d893          	srli	a7,a7,0x20
   1c2b0:	0117f6b3          	and	a3,a5,a7
   1c2b4:	02045b93          	srli	s7,s0,0x20
   1c2b8:	01177533          	and	a0,a4,a7
   1c2bc:	0207da13          	srli	s4,a5,0x20
   1c2c0:	0209d793          	srli	a5,s3,0x20
   1c2c4:	0119f9b3          	and	s3,s3,a7
   1c2c8:	011478b3          	and	a7,s0,a7
   1c2cc:	03198433          	mul	s0,s3,a7
   1c2d0:	1682                	c.slli	a3,0x20
   1c2d2:	9536                	c.add	a0,a3
   1c2d4:	031788b3          	mul	a7,a5,a7
   1c2d8:	037787b3          	mul	a5,a5,s7
   1c2dc:	033b8bb3          	mul	s7,s7,s3
   1c2e0:	02045993          	srli	s3,s0,0x20
   1c2e4:	9bc6                	c.add	s7,a7
   1c2e6:	99de                	c.add	s3,s7
   1c2e8:	0119f563          	bgeu	s3,a7,1c2f2 <__multf3+0x302>
   1c2ec:	4705                	c.li	a4,1
   1c2ee:	1702                	c.slli	a4,0x20
   1c2f0:	97ba                	c.add	a5,a4
   1c2f2:	0209d693          	srli	a3,s3,0x20
   1c2f6:	97b6                	c.add	a5,a3
   1c2f8:	56fd                	c.li	a3,-1
   1c2fa:	9281                	c.srli	a3,0x20
   1c2fc:	00d9f733          	and	a4,s3,a3
   1c300:	8c75                	c.and	s0,a3
   1c302:	01d506b3          	add	a3,a0,t4
   1c306:	01d6b533          	sltu	a0,a3,t4
   1c30a:	00aa08b3          	add	a7,s4,a0
   1c30e:	40600333          	sub	t1,zero,t1
   1c312:	98da                	c.add	a7,s6
   1c314:	007373b3          	and	t2,t1,t2
   1c318:	41c00e33          	sub	t3,zero,t3
   1c31c:	93c6                	c.add	t2,a7
   1c31e:	01ee7f33          	and	t5,t3,t5
   1c322:	00a8b533          	sltu	a0,a7,a0
   1c326:	005fffb3          	and	t6,t6,t0
   1c32a:	9f1e                	c.add	t5,t2
   1c32c:	0113b8b3          	sltu	a7,t2,a7
   1c330:	957e                	c.add	a0,t6
   1c332:	40b68333          	sub	t1,a3,a1
   1c336:	9546                	c.add	a0,a7
   1c338:	0066be33          	sltu	t3,a3,t1
   1c33c:	41df08b3          	sub	a7,t5,t4
   1c340:	1702                	c.slli	a4,0x20
   1c342:	007f33b3          	sltu	t2,t5,t2
   1c346:	011f3fb3          	sltu	t6,t5,a7
   1c34a:	9722                	c.add	a4,s0
   1c34c:	41c888b3          	sub	a7,a7,t3
   1c350:	951e                	c.add	a0,t2
   1c352:	4e01                	c.li	t3,0
   1c354:	0066f663          	bgeu	a3,t1,1c360 <__multf3+0x370>
   1c358:	41ee8f33          	sub	t5,t4,t5
   1c35c:	001f3e13          	sltiu	t3,t5,1
   1c360:	01fe6f33          	or	t5,t3,t6
   1c364:	40e30e33          	sub	t3,t1,a4
   1c368:	40f886b3          	sub	a3,a7,a5
   1c36c:	953e                	c.add	a0,a5
   1c36e:	01c337b3          	sltu	a5,t1,t3
   1c372:	00d8b8b3          	sltu	a7,a7,a3
   1c376:	40f707b3          	sub	a5,a4,a5
   1c37a:	4e81                	c.li	t4,0
   1c37c:	01c37463          	bgeu	t1,t3,1c384 <__multf3+0x394>
   1c380:	0016be93          	sltiu	t4,a3,1
   1c384:	96be                	c.add	a3,a5
   1c386:	00e6b733          	sltu	a4,a3,a4
   1c38a:	972a                	c.add	a4,a0
   1c38c:	41e70733          	sub	a4,a4,t5
   1c390:	011ee8b3          	or	a7,t4,a7
   1c394:	41170733          	sub	a4,a4,a7
   1c398:	00de1793          	slli	a5,t3,0xd
   1c39c:	0736                	c.slli	a4,0xd
   1c39e:	0336d413          	srli	s0,a3,0x33
   1c3a2:	8fcd                	c.or	a5,a1
   1c3a4:	8c59                	c.or	s0,a4
   1c3a6:	00f037b3          	sltu	a5,zero,a5
   1c3aa:	033e5513          	srli	a0,t3,0x33
   1c3ae:	9351                	c.srli	a4,0x34
   1c3b0:	8fc9                	c.or	a5,a0
   1c3b2:	06b6                	c.slli	a3,0xd
   1c3b4:	8b05                	c.andi	a4,1
   1c3b6:	8fd5                	c.or	a5,a3
   1c3b8:	cb2d                	c.beqz	a4,1c42a <__multf3+0x43a>
   1c3ba:	0017d713          	srli	a4,a5,0x1
   1c3be:	8b85                	c.andi	a5,1
   1c3c0:	03f41513          	slli	a0,s0,0x3f
   1c3c4:	8fd9                	c.or	a5,a4
   1c3c6:	8fc9                	c.or	a5,a0
   1c3c8:	8005                	c.srli	s0,0x1
   1c3ca:	6711                	c.lui	a4,0x4
   1c3cc:	177d                	c.addi	a4,-1
   1c3ce:	9742                	c.add	a4,a6
   1c3d0:	0ce05163          	bge	zero,a4,1c492 <__multf3+0x4a2>
   1c3d4:	0077f693          	andi	a3,a5,7
   1c3d8:	c2a5                	c.beqz	a3,1c438 <__multf3+0x448>
   1c3da:	4689                	c.li	a3,2
   1c3dc:	0014e493          	ori	s1,s1,1
   1c3e0:	04d90b63          	beq	s2,a3,1c436 <__multf3+0x446>
   1c3e4:	468d                	c.li	a3,3
   1c3e6:	04d90463          	beq	s2,a3,1c42e <__multf3+0x43e>
   1c3ea:	04091763          	bne	s2,zero,1c438 <__multf3+0x448>
   1c3ee:	00f7f693          	andi	a3,a5,15
   1c3f2:	4591                	c.li	a1,4
   1c3f4:	04b68263          	beq	a3,a1,1c438 <__multf3+0x448>
   1c3f8:	00478693          	addi	a3,a5,4
   1c3fc:	00f6b7b3          	sltu	a5,a3,a5
   1c400:	943e                	c.add	s0,a5
   1c402:	87b6                	c.mv	a5,a3
   1c404:	a815                	c.j	1c438 <__multf3+0x448>
   1c406:	865e                	c.mv	a2,s7
   1c408:	844e                	c.mv	s0,s3
   1c40a:	87d2                	c.mv	a5,s4
   1c40c:	8762                	c.mv	a4,s8
   1c40e:	4689                	c.li	a3,2
   1c410:	1cd70f63          	beq	a4,a3,1c5ee <__multf3+0x5fe>
   1c414:	468d                	c.li	a3,3
   1c416:	1ed70163          	beq	a4,a3,1c5f8 <__multf3+0x608>
   1c41a:	4685                	c.li	a3,1
   1c41c:	fad717e3          	bne	a4,a3,1c3ca <__multf3+0x3da>
   1c420:	4401                	c.li	s0,0
   1c422:	4501                	c.li	a0,0
   1c424:	aa65                	c.j	1c5dc <__multf3+0x5ec>
   1c426:	865a                	c.mv	a2,s6
   1c428:	b7dd                	c.j	1c40e <__multf3+0x41e>
   1c42a:	8856                	c.mv	a6,s5
   1c42c:	bf79                	c.j	1c3ca <__multf3+0x3da>
   1c42e:	e609                	c.bnez	a2,1c438 <__multf3+0x448>
   1c430:	00878693          	addi	a3,a5,8
   1c434:	b7e1                	c.j	1c3fc <__multf3+0x40c>
   1c436:	fe6d                	c.bnez	a2,1c430 <__multf3+0x440>
   1c438:	03445693          	srli	a3,s0,0x34
   1c43c:	8a85                	c.andi	a3,1
   1c43e:	c699                	c.beqz	a3,1c44c <__multf3+0x45c>
   1c440:	577d                	c.li	a4,-1
   1c442:	1752                	c.slli	a4,0x34
   1c444:	177d                	c.addi	a4,-1
   1c446:	8c79                	c.and	s0,a4
   1c448:	6711                	c.lui	a4,0x4
   1c44a:	9742                	c.add	a4,a6
   1c44c:	66a1                	c.lui	a3,0x8
   1c44e:	ffe68593          	addi	a1,a3,-2 # 7ffe <register_fini-0x80b2>
   1c452:	00e5c863          	blt	a1,a4,1c462 <__multf3+0x472>
   1c456:	03d41513          	slli	a0,s0,0x3d
   1c45a:	838d                	c.srli	a5,0x3
   1c45c:	8d5d                	c.or	a0,a5
   1c45e:	800d                	c.srli	s0,0x3
   1c460:	b361                	c.j	1c1e8 <__multf3+0x1f8>
   1c462:	4789                	c.li	a5,2
   1c464:	02f90263          	beq	s2,a5,1c488 <__multf3+0x498>
   1c468:	478d                	c.li	a5,3
   1c46a:	fff68713          	addi	a4,a3,-1
   1c46e:	00f90663          	beq	s2,a5,1c47a <__multf3+0x48a>
   1c472:	00091563          	bne	s2,zero,1c47c <__multf3+0x48c>
   1c476:	4501                	c.li	a0,0
   1c478:	a021                	c.j	1c480 <__multf3+0x490>
   1c47a:	de75                	c.beqz	a2,1c476 <__multf3+0x486>
   1c47c:	557d                	c.li	a0,-1
   1c47e:	872e                	c.mv	a4,a1
   1c480:	0054e493          	ori	s1,s1,5
   1c484:	842a                	c.mv	s0,a0
   1c486:	b38d                	c.j	1c1e8 <__multf3+0x1f8>
   1c488:	da75                	c.beqz	a2,1c47c <__multf3+0x48c>
   1c48a:	4501                	c.li	a0,0
   1c48c:	fff68713          	addi	a4,a3,-1
   1c490:	bfc5                	c.j	1c480 <__multf3+0x490>
   1c492:	4685                	c.li	a3,1
   1c494:	e729                	c.bnez	a4,1c4de <__multf3+0x4ee>
   1c496:	0077f593          	andi	a1,a5,7
   1c49a:	86a2                	c.mv	a3,s0
   1c49c:	cd8d                	c.beqz	a1,1c4d6 <__multf3+0x4e6>
   1c49e:	4589                	c.li	a1,2
   1c4a0:	0014e493          	ori	s1,s1,1
   1c4a4:	02b90863          	beq	s2,a1,1c4d4 <__multf3+0x4e4>
   1c4a8:	458d                	c.li	a1,3
   1c4aa:	02b90163          	beq	s2,a1,1c4cc <__multf3+0x4dc>
   1c4ae:	02091463          	bne	s2,zero,1c4d6 <__multf3+0x4e6>
   1c4b2:	00f7f593          	andi	a1,a5,15
   1c4b6:	4511                	c.li	a0,4
   1c4b8:	00a58f63          	beq	a1,a0,1c4d6 <__multf3+0x4e6>
   1c4bc:	ffc7b693          	sltiu	a3,a5,-4
   1c4c0:	0016c693          	xori	a3,a3,1
   1c4c4:	1682                	c.slli	a3,0x20
   1c4c6:	9281                	c.srli	a3,0x20
   1c4c8:	96a2                	c.add	a3,s0
   1c4ca:	a031                	c.j	1c4d6 <__multf3+0x4e6>
   1c4cc:	e609                	c.bnez	a2,1c4d6 <__multf3+0x4e6>
   1c4ce:	ff87b693          	sltiu	a3,a5,-8
   1c4d2:	b7fd                	c.j	1c4c0 <__multf3+0x4d0>
   1c4d4:	fe6d                	c.bnez	a2,1c4ce <__multf3+0x4de>
   1c4d6:	92d1                	c.srli	a3,0x34
   1c4d8:	0016c693          	xori	a3,a3,1
   1c4dc:	8a85                	c.andi	a3,1
   1c4de:	4805                	c.li	a6,1
   1c4e0:	40e80833          	sub	a6,a6,a4
   1c4e4:	07400713          	addi	a4,zero,116
   1c4e8:	0d074663          	blt	a4,a6,1c5b4 <__multf3+0x5c4>
   1c4ec:	03f00593          	addi	a1,zero,63
   1c4f0:	0008071b          	addiw	a4,a6,0
   1c4f4:	0505cb63          	blt	a1,a6,1c54a <__multf3+0x55a>
   1c4f8:	04000593          	addi	a1,zero,64
   1c4fc:	9d99                	c.subw	a1,a4
   1c4fe:	00b41533          	sll	a0,s0,a1
   1c502:	00e7d833          	srl	a6,a5,a4
   1c506:	00b797b3          	sll	a5,a5,a1
   1c50a:	01056533          	or	a0,a0,a6
   1c50e:	00f037b3          	sltu	a5,zero,a5
   1c512:	8d5d                	c.or	a0,a5
   1c514:	00e45433          	srl	s0,s0,a4
   1c518:	00757793          	andi	a5,a0,7
   1c51c:	c3ad                	c.beqz	a5,1c57e <__multf3+0x58e>
   1c51e:	4789                	c.li	a5,2
   1c520:	0014e493          	ori	s1,s1,1
   1c524:	04f90c63          	beq	s2,a5,1c57c <__multf3+0x58c>
   1c528:	478d                	c.li	a5,3
   1c52a:	04f90563          	beq	s2,a5,1c574 <__multf3+0x584>
   1c52e:	04091863          	bne	s2,zero,1c57e <__multf3+0x58e>
   1c532:	00f57793          	andi	a5,a0,15
   1c536:	4711                	c.li	a4,4
   1c538:	04e78363          	beq	a5,a4,1c57e <__multf3+0x58e>
   1c53c:	00450793          	addi	a5,a0,4 # ffffffffffffc004 <__BSS_END__+0xfffffffffffdbc84>
   1c540:	00a7b533          	sltu	a0,a5,a0
   1c544:	942a                	c.add	s0,a0
   1c546:	853e                	c.mv	a0,a5
   1c548:	a81d                	c.j	1c57e <__multf3+0x58e>
   1c54a:	fc07051b          	addiw	a0,a4,-64
   1c54e:	04000893          	addi	a7,zero,64
   1c552:	00a45533          	srl	a0,s0,a0
   1c556:	4581                	c.li	a1,0
   1c558:	01180863          	beq	a6,a7,1c568 <__multf3+0x578>
   1c55c:	08000593          	addi	a1,zero,128
   1c560:	40e5873b          	subw	a4,a1,a4
   1c564:	00e415b3          	sll	a1,s0,a4
   1c568:	8fcd                	c.or	a5,a1
   1c56a:	00f037b3          	sltu	a5,zero,a5
   1c56e:	8d5d                	c.or	a0,a5
   1c570:	4401                	c.li	s0,0
   1c572:	b75d                	c.j	1c518 <__multf3+0x528>
   1c574:	e609                	c.bnez	a2,1c57e <__multf3+0x58e>
   1c576:	00850793          	addi	a5,a0,8
   1c57a:	b7d9                	c.j	1c540 <__multf3+0x550>
   1c57c:	fe6d                	c.bnez	a2,1c576 <__multf3+0x586>
   1c57e:	03345793          	srli	a5,s0,0x33
   1c582:	8b85                	c.andi	a5,1
   1c584:	cb99                	c.beqz	a5,1c59a <__multf3+0x5aa>
   1c586:	0014e493          	ori	s1,s1,1
   1c58a:	4401                	c.li	s0,0
   1c58c:	4501                	c.li	a0,0
   1c58e:	4705                	c.li	a4,1
   1c590:	c4068ce3          	beq	a3,zero,1c1e8 <__multf3+0x1f8>
   1c594:	0024e493          	ori	s1,s1,2
   1c598:	b981                	c.j	1c1e8 <__multf3+0x1f8>
   1c59a:	03d41793          	slli	a5,s0,0x3d
   1c59e:	810d                	c.srli	a0,0x3
   1c5a0:	8d5d                	c.or	a0,a5
   1c5a2:	800d                	c.srli	s0,0x3
   1c5a4:	4701                	c.li	a4,0
   1c5a6:	c40681e3          	beq	a3,zero,1c1e8 <__multf3+0x1f8>
   1c5aa:	0014f793          	andi	a5,s1,1
   1c5ae:	c2078de3          	beq	a5,zero,1c1e8 <__multf3+0x1f8>
   1c5b2:	b7cd                	c.j	1c594 <__multf3+0x5a4>
   1c5b4:	0087e533          	or	a0,a5,s0
   1c5b8:	cd19                	c.beqz	a0,1c5d6 <__multf3+0x5e6>
   1c5ba:	4789                	c.li	a5,2
   1c5bc:	0014e493          	ori	s1,s1,1
   1c5c0:	02f90463          	beq	s2,a5,1c5e8 <__multf3+0x5f8>
   1c5c4:	478d                	c.li	a5,3
   1c5c6:	00f90d63          	beq	s2,a5,1c5e0 <__multf3+0x5f0>
   1c5ca:	4785                	c.li	a5,1
   1c5cc:	00091363          	bne	s2,zero,1c5d2 <__multf3+0x5e2>
   1c5d0:	4795                	c.li	a5,5
   1c5d2:	0037d513          	srli	a0,a5,0x3
   1c5d6:	0024e493          	ori	s1,s1,2
   1c5da:	4401                	c.li	s0,0
   1c5dc:	4701                	c.li	a4,0
   1c5de:	b129                	c.j	1c1e8 <__multf3+0x1f8>
   1c5e0:	47a5                	c.li	a5,9
   1c5e2:	da65                	c.beqz	a2,1c5d2 <__multf3+0x5e2>
   1c5e4:	4785                	c.li	a5,1
   1c5e6:	b7f5                	c.j	1c5d2 <__multf3+0x5e2>
   1c5e8:	47a5                	c.li	a5,9
   1c5ea:	f665                	c.bnez	a2,1c5d2 <__multf3+0x5e2>
   1c5ec:	bfe5                	c.j	1c5e4 <__multf3+0x5f4>
   1c5ee:	6721                	c.lui	a4,0x8
   1c5f0:	4401                	c.li	s0,0
   1c5f2:	4501                	c.li	a0,0
   1c5f4:	177d                	c.addi	a4,-1
   1c5f6:	becd                	c.j	1c1e8 <__multf3+0x1f8>
   1c5f8:	4405                	c.li	s0,1
   1c5fa:	6721                	c.lui	a4,0x8
   1c5fc:	143e                	c.slli	s0,0x2f
   1c5fe:	4501                	c.li	a0,0
   1c600:	177d                	c.addi	a4,-1
   1c602:	4601                	c.li	a2,0
   1c604:	b6d5                	c.j	1c1e8 <__multf3+0x1f8>

000000000001c606 <__subtf3>:
   1c606:	7179                	c.addi16sp	sp,-48
   1c608:	f406                	c.sdsp	ra,40(sp)
   1c60a:	f022                	c.sdsp	s0,32(sp)
   1c60c:	ec26                	c.sdsp	s1,24(sp)
   1c60e:	e84a                	c.sdsp	s2,16(sp)
   1c610:	e44e                	c.sdsp	s3,8(sp)
   1c612:	e052                	c.sdsp	s4,0(sp)
   1c614:	00202473          	csrrs	s0,frm,zero
   1c618:	577d                	c.li	a4,-1
   1c61a:	8341                	c.srli	a4,0x10
   1c61c:	6821                	c.lui	a6,0x8
   1c61e:	0305d893          	srli	a7,a1,0x30
   1c622:	187d                	c.addi	a6,-1
   1c624:	0306de93          	srli	t4,a3,0x30
   1c628:	03f5d493          	srli	s1,a1,0x3f
   1c62c:	03f6d313          	srli	t1,a3,0x3f
   1c630:	8df9                	c.and	a1,a4
   1c632:	8ef9                	c.and	a3,a4
   1c634:	058e                	c.slli	a1,0x3
   1c636:	03d55793          	srli	a5,a0,0x3d
   1c63a:	03d65713          	srli	a4,a2,0x3d
   1c63e:	0108f8b3          	and	a7,a7,a6
   1c642:	010efeb3          	and	t4,t4,a6
   1c646:	068e                	c.slli	a3,0x3
   1c648:	8fcd                	c.or	a5,a1
   1c64a:	2401                	c.addiw	s0,0
   1c64c:	89c6                	c.mv	s3,a7
   1c64e:	050e                	c.slli	a0,0x3
   1c650:	85f6                	c.mv	a1,t4
   1c652:	8f55                	c.or	a4,a3
   1c654:	060e                	c.slli	a2,0x3
   1c656:	010e9563          	bne	t4,a6,1c660 <__subtf3+0x5a>
   1c65a:	00c766b3          	or	a3,a4,a2
   1c65e:	e299                	c.bnez	a3,1c664 <__subtf3+0x5e>
   1c660:	00134313          	xori	t1,t1,1
   1c664:	41d886bb          	subw	a3,a7,t4
   1c668:	6e21                	c.lui	t3,0x8
   1c66a:	0006881b          	addiw	a6,a3,0
   1c66e:	fffe0f13          	addi	t5,t3,-1 # 7fff <register_fini-0x80b1>
   1c672:	36931f63          	bne	t1,s1,1c9f0 <__subtf3+0x3ea>
   1c676:	0f005663          	bge	zero,a6,1c762 <__subtf3+0x15c>
   1c67a:	060e9c63          	bne	t4,zero,1c6f2 <__subtf3+0xec>
   1c67e:	00c765b3          	or	a1,a4,a2
   1c682:	e591                	c.bnez	a1,1c68e <__subtf3+0x88>
   1c684:	05e88b63          	beq	a7,t5,1c6da <__subtf3+0xd4>
   1c688:	873e                	c.mv	a4,a5
   1c68a:	85c6                	c.mv	a1,a7
   1c68c:	adcd                	c.j	1cd7e <__subtf3+0x778>
   1c68e:	fff6881b          	addiw	a6,a3,-1
   1c692:	04081263          	bne	a6,zero,1c6d6 <__subtf3+0xd0>
   1c696:	962a                	c.add	a2,a0
   1c698:	00a63533          	sltu	a0,a2,a0
   1c69c:	973e                	c.add	a4,a5
   1c69e:	972a                	c.add	a4,a0
   1c6a0:	85c6                	c.mv	a1,a7
   1c6a2:	8532                	c.mv	a0,a2
   1c6a4:	03375793          	srli	a5,a4,0x33
   1c6a8:	8b85                	c.andi	a5,1
   1c6aa:	6c078a63          	beq	a5,zero,1cd7e <__subtf3+0x778>
   1c6ae:	66a1                	c.lui	a3,0x8
   1c6b0:	0585                	c.addi	a1,1
   1c6b2:	fff68793          	addi	a5,a3,-1 # 7fff <register_fini-0x80b1>
   1c6b6:	30f58d63          	beq	a1,a5,1c9d0 <__subtf3+0x3ca>
   1c6ba:	57fd                	c.li	a5,-1
   1c6bc:	17ce                	c.slli	a5,0x33
   1c6be:	17fd                	c.addi	a5,-1
   1c6c0:	8ff9                	c.and	a5,a4
   1c6c2:	00155713          	srli	a4,a0,0x1
   1c6c6:	8905                	c.andi	a0,1
   1c6c8:	8d59                	c.or	a0,a4
   1c6ca:	03f79713          	slli	a4,a5,0x3f
   1c6ce:	8d59                	c.or	a0,a4
   1c6d0:	8385                	c.srli	a5,0x1
   1c6d2:	4801                	c.li	a6,0
   1c6d4:	a46d                	c.j	1c97e <__subtf3+0x378>
   1c6d6:	03e89363          	bne	a7,t5,1c6fc <__subtf3+0xf6>
   1c6da:	00a7e733          	or	a4,a5,a0
   1c6de:	6e070563          	beq	a4,zero,1cdc8 <__subtf3+0x7c2>
   1c6e2:	0327d713          	srli	a4,a5,0x32
   1c6e6:	8b05                	c.andi	a4,1
   1c6e8:	85c6                	c.mv	a1,a7
   1c6ea:	4801                	c.li	a6,0
   1c6ec:	28071963          	bne	a4,zero,1c97e <__subtf3+0x378>
   1c6f0:	a879                	c.j	1c78e <__subtf3+0x188>
   1c6f2:	ffe884e3          	beq	a7,t5,1c6da <__subtf3+0xd4>
   1c6f6:	4685                	c.li	a3,1
   1c6f8:	16ce                	c.slli	a3,0x33
   1c6fa:	8f55                	c.or	a4,a3
   1c6fc:	07400693          	addi	a3,zero,116
   1c700:	0506cd63          	blt	a3,a6,1c75a <__subtf3+0x154>
   1c704:	03f00693          	addi	a3,zero,63
   1c708:	0306c463          	blt	a3,a6,1c730 <__subtf3+0x12a>
   1c70c:	04000593          	addi	a1,zero,64
   1c710:	410585bb          	subw	a1,a1,a6
   1c714:	00b716b3          	sll	a3,a4,a1
   1c718:	01065333          	srl	t1,a2,a6
   1c71c:	00b61633          	sll	a2,a2,a1
   1c720:	0066e6b3          	or	a3,a3,t1
   1c724:	00c03633          	sltu	a2,zero,a2
   1c728:	8e55                	c.or	a2,a3
   1c72a:	01075733          	srl	a4,a4,a6
   1c72e:	b7a5                	c.j	1c696 <__subtf3+0x90>
   1c730:	fc08069b          	addiw	a3,a6,-64
   1c734:	04000313          	addi	t1,zero,64
   1c738:	00d756b3          	srl	a3,a4,a3
   1c73c:	4581                	c.li	a1,0
   1c73e:	00680863          	beq	a6,t1,1c74e <__subtf3+0x148>
   1c742:	08000593          	addi	a1,zero,128
   1c746:	410585bb          	subw	a1,a1,a6
   1c74a:	00b715b3          	sll	a1,a4,a1
   1c74e:	8e4d                	c.or	a2,a1
   1c750:	00c03633          	sltu	a2,zero,a2
   1c754:	8e55                	c.or	a2,a3
   1c756:	4701                	c.li	a4,0
   1c758:	bf3d                	c.j	1c696 <__subtf3+0x90>
   1c75a:	8e59                	c.or	a2,a4
   1c75c:	00c03633          	sltu	a2,zero,a2
   1c760:	bfdd                	c.j	1c756 <__subtf3+0x150>
   1c762:	0e080563          	beq	a6,zero,1c84c <__subtf3+0x246>
   1c766:	04089f63          	bne	a7,zero,1c7c4 <__subtf3+0x1be>
   1c76a:	00a7e833          	or	a6,a5,a0
   1c76e:	02081263          	bne	a6,zero,1c792 <__subtf3+0x18c>
   1c772:	8532                	c.mv	a0,a2
   1c774:	61ee9563          	bne	t4,t5,1cd7e <__subtf3+0x778>
   1c778:	00c76533          	or	a0,a4,a2
   1c77c:	64050063          	beq	a0,zero,1cdbc <__subtf3+0x7b6>
   1c780:	03275793          	srli	a5,a4,0x32
   1c784:	8b85                	c.andi	a5,1
   1c786:	62079e63          	bne	a5,zero,1cdc2 <__subtf3+0x7bc>
   1c78a:	87ba                	c.mv	a5,a4
   1c78c:	8532                	c.mv	a0,a2
   1c78e:	46c1                	c.li	a3,16
   1c790:	a209                	c.j	1c892 <__subtf3+0x28c>
   1c792:	fff6c693          	xori	a3,a3,-1
   1c796:	2681                	c.addiw	a3,0
   1c798:	e699                	c.bnez	a3,1c7a6 <__subtf3+0x1a0>
   1c79a:	9532                	c.add	a0,a2
   1c79c:	973e                	c.add	a4,a5
   1c79e:	00c53633          	sltu	a2,a0,a2
   1c7a2:	9732                	c.add	a4,a2
   1c7a4:	b701                	c.j	1c6a4 <__subtf3+0x9e>
   1c7a6:	03ee9763          	bne	t4,t5,1c7d4 <__subtf3+0x1ce>
   1c7aa:	00c76533          	or	a0,a4,a2
   1c7ae:	60050763          	beq	a0,zero,1cdbc <__subtf3+0x7b6>
   1c7b2:	03275793          	srli	a5,a4,0x32
   1c7b6:	8b85                	c.andi	a5,1
   1c7b8:	60079563          	bne	a5,zero,1cdc2 <__subtf3+0x7bc>
   1c7bc:	87ba                	c.mv	a5,a4
   1c7be:	8532                	c.mv	a0,a2
   1c7c0:	4801                	c.li	a6,0
   1c7c2:	b7f1                	c.j	1c78e <__subtf3+0x188>
   1c7c4:	ffee83e3          	beq	t4,t5,1c7aa <__subtf3+0x1a4>
   1c7c8:	4805                	c.li	a6,1
   1c7ca:	184e                	c.slli	a6,0x33
   1c7cc:	40d006bb          	subw	a3,zero,a3
   1c7d0:	0107e7b3          	or	a5,a5,a6
   1c7d4:	07400813          	addi	a6,zero,116
   1c7d8:	06d84663          	blt	a6,a3,1c844 <__subtf3+0x23e>
   1c7dc:	03f00813          	addi	a6,zero,63
   1c7e0:	02d84b63          	blt	a6,a3,1c816 <__subtf3+0x210>
   1c7e4:	04000893          	addi	a7,zero,64
   1c7e8:	40d888bb          	subw	a7,a7,a3
   1c7ec:	00d55333          	srl	t1,a0,a3
   1c7f0:	01179833          	sll	a6,a5,a7
   1c7f4:	01151533          	sll	a0,a0,a7
   1c7f8:	00686833          	or	a6,a6,t1
   1c7fc:	00a03533          	sltu	a0,zero,a0
   1c800:	00a86533          	or	a0,a6,a0
   1c804:	00d7d6b3          	srl	a3,a5,a3
   1c808:	9532                	c.add	a0,a2
   1c80a:	96ba                	c.add	a3,a4
   1c80c:	00c53633          	sltu	a2,a0,a2
   1c810:	00c68733          	add	a4,a3,a2
   1c814:	bd41                	c.j	1c6a4 <__subtf3+0x9e>
   1c816:	fc06881b          	addiw	a6,a3,-64
   1c81a:	04000313          	addi	t1,zero,64
   1c81e:	0107d833          	srl	a6,a5,a6
   1c822:	4881                	c.li	a7,0
   1c824:	00668863          	beq	a3,t1,1c834 <__subtf3+0x22e>
   1c828:	08000893          	addi	a7,zero,128
   1c82c:	40d886bb          	subw	a3,a7,a3
   1c830:	00d798b3          	sll	a7,a5,a3
   1c834:	00a8e533          	or	a0,a7,a0
   1c838:	00a03533          	sltu	a0,zero,a0
   1c83c:	00a86533          	or	a0,a6,a0
   1c840:	4681                	c.li	a3,0
   1c842:	b7d9                	c.j	1c808 <__subtf3+0x202>
   1c844:	8d5d                	c.or	a0,a5
   1c846:	00a03533          	sltu	a0,zero,a0
   1c84a:	bfdd                	c.j	1c840 <__subtf3+0x23a>
   1c84c:	00188593          	addi	a1,a7,1
   1c850:	ffee0693          	addi	a3,t3,-2
   1c854:	00d5f333          	and	t1,a1,a3
   1c858:	10031763          	bne	t1,zero,1c966 <__subtf3+0x360>
   1c85c:	00a7e5b3          	or	a1,a5,a0
   1c860:	04089563          	bne	a7,zero,1c8aa <__subtf3+0x2a4>
   1c864:	52058463          	beq	a1,zero,1cd8c <__subtf3+0x786>
   1c868:	00c766b3          	or	a3,a4,a2
   1c86c:	34068b63          	beq	a3,zero,1cbc2 <__subtf3+0x5bc>
   1c870:	962a                	c.add	a2,a0
   1c872:	97ba                	c.add	a5,a4
   1c874:	00a63533          	sltu	a0,a2,a0
   1c878:	97aa                	c.add	a5,a0
   1c87a:	0337d713          	srli	a4,a5,0x33
   1c87e:	8b05                	c.andi	a4,1
   1c880:	50070763          	beq	a4,zero,1cd8e <__subtf3+0x788>
   1c884:	577d                	c.li	a4,-1
   1c886:	174e                	c.slli	a4,0x33
   1c888:	177d                	c.addi	a4,-1
   1c88a:	8ff9                	c.and	a5,a4
   1c88c:	8532                	c.mv	a0,a2
   1c88e:	4681                	c.li	a3,0
   1c890:	4585                	c.li	a1,1
   1c892:	00757713          	andi	a4,a0,7
   1c896:	10071763          	bne	a4,zero,1c9a4 <__subtf3+0x39e>
   1c89a:	06080163          	beq	a6,zero,1c8fc <__subtf3+0x2f6>
   1c89e:	0016f713          	andi	a4,a3,1
   1c8a2:	cf29                	c.beqz	a4,1c8fc <__subtf3+0x2f6>
   1c8a4:	0026e693          	ori	a3,a3,2
   1c8a8:	a891                	c.j	1c8fc <__subtf3+0x2f6>
   1c8aa:	03e89863          	bne	a7,t5,1c8da <__subtf3+0x2d4>
   1c8ae:	58058263          	beq	a1,zero,1ce32 <__subtf3+0x82c>
   1c8b2:	0327d693          	srli	a3,a5,0x32
   1c8b6:	8a85                	c.andi	a3,1
   1c8b8:	0016b693          	sltiu	a3,a3,1
   1c8bc:	0692                	c.slli	a3,0x4
   1c8be:	031e9763          	bne	t4,a7,1c8ec <__subtf3+0x2e6>
   1c8c2:	00c768b3          	or	a7,a4,a2
   1c8c6:	00088d63          	beq	a7,zero,1c8e0 <__subtf3+0x2da>
   1c8ca:	03275893          	srli	a7,a4,0x32
   1c8ce:	0018f893          	andi	a7,a7,1
   1c8d2:	00089763          	bne	a7,zero,1c8e0 <__subtf3+0x2da>
   1c8d6:	46c1                	c.li	a3,16
   1c8d8:	a021                	c.j	1c8e0 <__subtf3+0x2da>
   1c8da:	4681                	c.li	a3,0
   1c8dc:	ffee83e3          	beq	t4,t5,1c8c2 <__subtf3+0x2bc>
   1c8e0:	e591                	c.bnez	a1,1c8ec <__subtf3+0x2e6>
   1c8e2:	87ba                	c.mv	a5,a4
   1c8e4:	8532                	c.mv	a0,a2
   1c8e6:	65a1                	c.lui	a1,0x8
   1c8e8:	15fd                	c.addi	a1,-1
   1c8ea:	b765                	c.j	1c892 <__subtf3+0x28c>
   1c8ec:	8e59                	c.or	a2,a4
   1c8ee:	de65                	c.beqz	a2,1c8e6 <__subtf3+0x2e0>
   1c8f0:	4785                	c.li	a5,1
   1c8f2:	65a1                	c.lui	a1,0x8
   1c8f4:	4481                	c.li	s1,0
   1c8f6:	17ca                	c.slli	a5,0x32
   1c8f8:	4501                	c.li	a0,0
   1c8fa:	15fd                	c.addi	a1,-1
   1c8fc:	0337d713          	srli	a4,a5,0x33
   1c900:	8b05                	c.andi	a4,1
   1c902:	cb19                	c.beqz	a4,1c918 <__subtf3+0x312>
   1c904:	6721                	c.lui	a4,0x8
   1c906:	0585                	c.addi	a1,1
   1c908:	fff70613          	addi	a2,a4,-1 # 7fff <register_fini-0x80b1>
   1c90c:	4ec58d63          	beq	a1,a2,1ce06 <__subtf3+0x800>
   1c910:	577d                	c.li	a4,-1
   1c912:	174e                	c.slli	a4,0x33
   1c914:	177d                	c.addi	a4,-1
   1c916:	8ff9                	c.and	a5,a4
   1c918:	00355713          	srli	a4,a0,0x3
   1c91c:	03d79513          	slli	a0,a5,0x3d
   1c920:	8d59                	c.or	a0,a4
   1c922:	6721                	c.lui	a4,0x8
   1c924:	177d                	c.addi	a4,-1
   1c926:	838d                	c.srli	a5,0x3
   1c928:	00e59963          	bne	a1,a4,1c93a <__subtf3+0x334>
   1c92c:	8d5d                	c.or	a0,a5
   1c92e:	4781                	c.li	a5,0
   1c930:	c509                	c.beqz	a0,1c93a <__subtf3+0x334>
   1c932:	4785                	c.li	a5,1
   1c934:	17be                	c.slli	a5,0x2f
   1c936:	4501                	c.li	a0,0
   1c938:	4481                	c.li	s1,0
   1c93a:	15c6                	c.slli	a1,0x31
   1c93c:	00f4949b          	slliw	s1,s1,0xf
   1c940:	91c5                	c.srli	a1,0x31
   1c942:	8dc5                	c.or	a1,s1
   1c944:	07c2                	c.slli	a5,0x10
   1c946:	03059493          	slli	s1,a1,0x30
   1c94a:	0107d593          	srli	a1,a5,0x10
   1c94e:	8dc5                	c.or	a1,s1
   1c950:	c299                	c.beqz	a3,1c956 <__subtf3+0x350>
   1c952:	0016a073          	csrrs	zero,fflags,a3
   1c956:	70a2                	c.ldsp	ra,40(sp)
   1c958:	7402                	c.ldsp	s0,32(sp)
   1c95a:	64e2                	c.ldsp	s1,24(sp)
   1c95c:	6942                	c.ldsp	s2,16(sp)
   1c95e:	69a2                	c.ldsp	s3,8(sp)
   1c960:	6a02                	c.ldsp	s4,0(sp)
   1c962:	6145                	c.addi16sp	sp,48
   1c964:	8082                	c.jr	ra
   1c966:	01e58e63          	beq	a1,t5,1c982 <__subtf3+0x37c>
   1c96a:	962a                	c.add	a2,a0
   1c96c:	00a63533          	sltu	a0,a2,a0
   1c970:	97ba                	c.add	a5,a4
   1c972:	97aa                	c.add	a5,a0
   1c974:	03f79513          	slli	a0,a5,0x3f
   1c978:	8205                	c.srli	a2,0x1
   1c97a:	8d51                	c.or	a0,a2
   1c97c:	8385                	c.srli	a5,0x1
   1c97e:	4681                	c.li	a3,0
   1c980:	bf09                	c.j	1c892 <__subtf3+0x28c>
   1c982:	c409                	c.beqz	s0,1c98c <__subtf3+0x386>
   1c984:	478d                	c.li	a5,3
   1c986:	00f41763          	bne	s0,a5,1c994 <__subtf3+0x38e>
   1c98a:	e889                	c.bnez	s1,1c99c <__subtf3+0x396>
   1c98c:	4781                	c.li	a5,0
   1c98e:	4501                	c.li	a0,0
   1c990:	4695                	c.li	a3,5
   1c992:	b7ad                	c.j	1c8fc <__subtf3+0x2f6>
   1c994:	4789                	c.li	a5,2
   1c996:	00f41363          	bne	s0,a5,1c99c <__subtf3+0x396>
   1c99a:	f8ed                	c.bnez	s1,1c98c <__subtf3+0x386>
   1c99c:	57fd                	c.li	a5,-1
   1c99e:	557d                	c.li	a0,-1
   1c9a0:	85b6                	c.mv	a1,a3
   1c9a2:	4695                	c.li	a3,5
   1c9a4:	4709                	c.li	a4,2
   1c9a6:	0016e693          	ori	a3,a3,1
   1c9aa:	44e40a63          	beq	s0,a4,1cdfe <__subtf3+0x7f8>
   1c9ae:	470d                	c.li	a4,3
   1c9b0:	44e40363          	beq	s0,a4,1cdf6 <__subtf3+0x7f0>
   1c9b4:	44041663          	bne	s0,zero,1ce00 <__subtf3+0x7fa>
   1c9b8:	00f57713          	andi	a4,a0,15
   1c9bc:	4611                	c.li	a2,4
   1c9be:	44c70163          	beq	a4,a2,1ce00 <__subtf3+0x7fa>
   1c9c2:	00450713          	addi	a4,a0,4
   1c9c6:	00a73533          	sltu	a0,a4,a0
   1c9ca:	97aa                	c.add	a5,a0
   1c9cc:	853a                	c.mv	a0,a4
   1c9ce:	a90d                	c.j	1ce00 <__subtf3+0x7fa>
   1c9d0:	dc55                	c.beqz	s0,1c98c <__subtf3+0x386>
   1c9d2:	478d                	c.li	a5,3
   1c9d4:	00f41963          	bne	s0,a5,1c9e6 <__subtf3+0x3e0>
   1c9d8:	d8d5                	c.beqz	s1,1c98c <__subtf3+0x386>
   1c9da:	57fd                	c.li	a5,-1
   1c9dc:	557d                	c.li	a0,-1
   1c9de:	ffe68593          	addi	a1,a3,-2
   1c9e2:	4801                	c.li	a6,0
   1c9e4:	bf7d                	c.j	1c9a2 <__subtf3+0x39c>
   1c9e6:	4789                	c.li	a5,2
   1c9e8:	fef419e3          	bne	s0,a5,1c9da <__subtf3+0x3d4>
   1c9ec:	f0c5                	c.bnez	s1,1c98c <__subtf3+0x386>
   1c9ee:	b7f5                	c.j	1c9da <__subtf3+0x3d4>
   1c9f0:	0b005b63          	bge	zero,a6,1caa6 <__subtf3+0x4a0>
   1c9f4:	060e9a63          	bne	t4,zero,1ca68 <__subtf3+0x462>
   1c9f8:	00c765b3          	or	a1,a4,a2
   1c9fc:	c80584e3          	beq	a1,zero,1c684 <__subtf3+0x7e>
   1ca00:	fff6881b          	addiw	a6,a3,-1
   1ca04:	02081663          	bne	a6,zero,1ca30 <__subtf3+0x42a>
   1ca08:	40c50633          	sub	a2,a0,a2
   1ca0c:	00c53533          	sltu	a0,a0,a2
   1ca10:	40e78733          	sub	a4,a5,a4
   1ca14:	8f09                	c.sub	a4,a0
   1ca16:	85c6                	c.mv	a1,a7
   1ca18:	8532                	c.mv	a0,a2
   1ca1a:	03375793          	srli	a5,a4,0x33
   1ca1e:	8b85                	c.andi	a5,1
   1ca20:	34078f63          	beq	a5,zero,1cd7e <__subtf3+0x778>
   1ca24:	0736                	c.slli	a4,0xd
   1ca26:	00d75913          	srli	s2,a4,0xd
   1ca2a:	8a2a                	c.mv	s4,a0
   1ca2c:	89ae                	c.mv	s3,a1
   1ca2e:	ac49                	c.j	1ccc0 <__subtf3+0x6ba>
   1ca30:	cbe885e3          	beq	a7,t5,1c6da <__subtf3+0xd4>
   1ca34:	07400693          	addi	a3,zero,116
   1ca38:	0706c363          	blt	a3,a6,1ca9e <__subtf3+0x498>
   1ca3c:	03f00693          	addi	a3,zero,63
   1ca40:	0306ca63          	blt	a3,a6,1ca74 <__subtf3+0x46e>
   1ca44:	04000593          	addi	a1,zero,64
   1ca48:	410585bb          	subw	a1,a1,a6
   1ca4c:	00b716b3          	sll	a3,a4,a1
   1ca50:	01065333          	srl	t1,a2,a6
   1ca54:	00b61633          	sll	a2,a2,a1
   1ca58:	0066e6b3          	or	a3,a3,t1
   1ca5c:	00c03633          	sltu	a2,zero,a2
   1ca60:	8e55                	c.or	a2,a3
   1ca62:	01075733          	srl	a4,a4,a6
   1ca66:	b74d                	c.j	1ca08 <__subtf3+0x402>
   1ca68:	c7e889e3          	beq	a7,t5,1c6da <__subtf3+0xd4>
   1ca6c:	4685                	c.li	a3,1
   1ca6e:	16ce                	c.slli	a3,0x33
   1ca70:	8f55                	c.or	a4,a3
   1ca72:	b7c9                	c.j	1ca34 <__subtf3+0x42e>
   1ca74:	fc08069b          	addiw	a3,a6,-64
   1ca78:	04000313          	addi	t1,zero,64
   1ca7c:	00d756b3          	srl	a3,a4,a3
   1ca80:	4581                	c.li	a1,0
   1ca82:	00680863          	beq	a6,t1,1ca92 <__subtf3+0x48c>
   1ca86:	08000593          	addi	a1,zero,128
   1ca8a:	410585bb          	subw	a1,a1,a6
   1ca8e:	00b715b3          	sll	a1,a4,a1
   1ca92:	8e4d                	c.or	a2,a1
   1ca94:	00c03633          	sltu	a2,zero,a2
   1ca98:	8e55                	c.or	a2,a3
   1ca9a:	4701                	c.li	a4,0
   1ca9c:	b7b5                	c.j	1ca08 <__subtf3+0x402>
   1ca9e:	8e59                	c.or	a2,a4
   1caa0:	00c03633          	sltu	a2,zero,a2
   1caa4:	bfdd                	c.j	1ca9a <__subtf3+0x494>
   1caa6:	0e080863          	beq	a6,zero,1cb96 <__subtf3+0x590>
   1caaa:	06089063          	bne	a7,zero,1cb0a <__subtf3+0x504>
   1caae:	00a7e833          	or	a6,a5,a0
   1cab2:	02081163          	bne	a6,zero,1cad4 <__subtf3+0x4ce>
   1cab6:	2dee9863          	bne	t4,t5,1cd86 <__subtf3+0x780>
   1caba:	00c76533          	or	a0,a4,a2
   1cabe:	30050963          	beq	a0,zero,1cdd0 <__subtf3+0x7ca>
   1cac2:	03275793          	srli	a5,a4,0x32
   1cac6:	8b85                	c.andi	a5,1
   1cac8:	30079763          	bne	a5,zero,1cdd6 <__subtf3+0x7d0>
   1cacc:	87ba                	c.mv	a5,a4
   1cace:	8532                	c.mv	a0,a2
   1cad0:	849a                	c.mv	s1,t1
   1cad2:	b975                	c.j	1c78e <__subtf3+0x188>
   1cad4:	fff6c693          	xori	a3,a3,-1
   1cad8:	2681                	c.addiw	a3,0
   1cada:	ea89                	c.bnez	a3,1caec <__subtf3+0x4e6>
   1cadc:	40a60533          	sub	a0,a2,a0
   1cae0:	8f1d                	c.sub	a4,a5
   1cae2:	00a63633          	sltu	a2,a2,a0
   1cae6:	8f11                	c.sub	a4,a2
   1cae8:	849a                	c.mv	s1,t1
   1caea:	bf05                	c.j	1ca1a <__subtf3+0x414>
   1caec:	03ee9763          	bne	t4,t5,1cb1a <__subtf3+0x514>
   1caf0:	00c76533          	or	a0,a4,a2
   1caf4:	2c050e63          	beq	a0,zero,1cdd0 <__subtf3+0x7ca>
   1caf8:	03275793          	srli	a5,a4,0x32
   1cafc:	8b85                	c.andi	a5,1
   1cafe:	2c079c63          	bne	a5,zero,1cdd6 <__subtf3+0x7d0>
   1cb02:	87ba                	c.mv	a5,a4
   1cb04:	8532                	c.mv	a0,a2
   1cb06:	849a                	c.mv	s1,t1
   1cb08:	b965                	c.j	1c7c0 <__subtf3+0x1ba>
   1cb0a:	ffee83e3          	beq	t4,t5,1caf0 <__subtf3+0x4ea>
   1cb0e:	4805                	c.li	a6,1
   1cb10:	184e                	c.slli	a6,0x33
   1cb12:	40d006bb          	subw	a3,zero,a3
   1cb16:	0107e7b3          	or	a5,a5,a6
   1cb1a:	07400813          	addi	a6,zero,116
   1cb1e:	06d84863          	blt	a6,a3,1cb8e <__subtf3+0x588>
   1cb22:	03f00813          	addi	a6,zero,63
   1cb26:	02d84d63          	blt	a6,a3,1cb60 <__subtf3+0x55a>
   1cb2a:	04000893          	addi	a7,zero,64
   1cb2e:	40d888bb          	subw	a7,a7,a3
   1cb32:	01179833          	sll	a6,a5,a7
   1cb36:	00d55e33          	srl	t3,a0,a3
   1cb3a:	01151533          	sll	a0,a0,a7
   1cb3e:	01c86833          	or	a6,a6,t3
   1cb42:	00a03533          	sltu	a0,zero,a0
   1cb46:	00a86533          	or	a0,a6,a0
   1cb4a:	00d7d7b3          	srl	a5,a5,a3
   1cb4e:	40a60533          	sub	a0,a2,a0
   1cb52:	40f707b3          	sub	a5,a4,a5
   1cb56:	00a63633          	sltu	a2,a2,a0
   1cb5a:	40c78733          	sub	a4,a5,a2
   1cb5e:	b769                	c.j	1cae8 <__subtf3+0x4e2>
   1cb60:	fc06881b          	addiw	a6,a3,-64
   1cb64:	04000e13          	addi	t3,zero,64
   1cb68:	0107d833          	srl	a6,a5,a6
   1cb6c:	4881                	c.li	a7,0
   1cb6e:	01c68863          	beq	a3,t3,1cb7e <__subtf3+0x578>
   1cb72:	08000893          	addi	a7,zero,128
   1cb76:	40d886bb          	subw	a3,a7,a3
   1cb7a:	00d798b3          	sll	a7,a5,a3
   1cb7e:	00a8e533          	or	a0,a7,a0
   1cb82:	00a03533          	sltu	a0,zero,a0
   1cb86:	00a86533          	or	a0,a6,a0
   1cb8a:	4781                	c.li	a5,0
   1cb8c:	b7c9                	c.j	1cb4e <__subtf3+0x548>
   1cb8e:	8d5d                	c.or	a0,a5
   1cb90:	00a03533          	sltu	a0,zero,a0
   1cb94:	bfdd                	c.j	1cb8a <__subtf3+0x584>
   1cb96:	00188593          	addi	a1,a7,1
   1cb9a:	ffee0693          	addi	a3,t3,-2
   1cb9e:	8eed                	c.and	a3,a1
   1cba0:	eee5                	c.bnez	a3,1cc98 <__subtf3+0x692>
   1cba2:	00a7ee33          	or	t3,a5,a0
   1cba6:	00c765b3          	or	a1,a4,a2
   1cbaa:	0a089463          	bne	a7,zero,1cc52 <__subtf3+0x64c>
   1cbae:	060e1063          	bne	t3,zero,1cc0e <__subtf3+0x608>
   1cbb2:	1e059063          	bne	a1,zero,1cd92 <__subtf3+0x78c>
   1cbb6:	ffe40493          	addi	s1,s0,-2
   1cbba:	0014b493          	sltiu	s1,s1,1
   1cbbe:	4781                	c.li	a5,0
   1cbc0:	4501                	c.li	a0,0
   1cbc2:	00f56733          	or	a4,a0,a5
   1cbc6:	22070463          	beq	a4,zero,1cdee <__subtf3+0x7e8>
   1cbca:	03f55713          	srli	a4,a0,0x3f
   1cbce:	00179813          	slli	a6,a5,0x1
   1cbd2:	983a                	c.add	a6,a4
   1cbd4:	00151713          	slli	a4,a0,0x1
   1cbd8:	00777613          	andi	a2,a4,7
   1cbdc:	4681                	c.li	a3,0
   1cbde:	c205                	c.beqz	a2,1cbfe <__subtf3+0x5f8>
   1cbe0:	4689                	c.li	a3,2
   1cbe2:	1cd40963          	beq	s0,a3,1cdb4 <__subtf3+0x7ae>
   1cbe6:	468d                	c.li	a3,3
   1cbe8:	1ad40b63          	beq	s0,a3,1cd9e <__subtf3+0x798>
   1cbec:	4685                	c.li	a3,1
   1cbee:	e801                	c.bnez	s0,1cbfe <__subtf3+0x5f8>
   1cbf0:	00f77613          	andi	a2,a4,15
   1cbf4:	4591                	c.li	a1,4
   1cbf6:	ffc73713          	sltiu	a4,a4,-4
   1cbfa:	1ab61763          	bne	a2,a1,1cda8 <__subtf3+0x7a2>
   1cbfe:	03485813          	srli	a6,a6,0x34
   1cc02:	00184813          	xori	a6,a6,1
   1cc06:	00187813          	andi	a6,a6,1
   1cc0a:	4581                	c.li	a1,0
   1cc0c:	b159                	c.j	1c892 <__subtf3+0x28c>
   1cc0e:	d9d5                	c.beqz	a1,1cbc2 <__subtf3+0x5bc>
   1cc10:	40c505b3          	sub	a1,a0,a2
   1cc14:	00b53833          	sltu	a6,a0,a1
   1cc18:	40e786b3          	sub	a3,a5,a4
   1cc1c:	410686b3          	sub	a3,a3,a6
   1cc20:	0336d813          	srli	a6,a3,0x33
   1cc24:	00187813          	andi	a6,a6,1
   1cc28:	00080b63          	beq	a6,zero,1cc3e <__subtf3+0x638>
   1cc2c:	40a60533          	sub	a0,a2,a0
   1cc30:	40f707b3          	sub	a5,a4,a5
   1cc34:	00a63633          	sltu	a2,a2,a0
   1cc38:	8f91                	c.sub	a5,a2
   1cc3a:	849a                	c.mv	s1,t1
   1cc3c:	b759                	c.j	1cbc2 <__subtf3+0x5bc>
   1cc3e:	00d5e533          	or	a0,a1,a3
   1cc42:	14051b63          	bne	a0,zero,1cd98 <__subtf3+0x792>
   1cc46:	ffe40493          	addi	s1,s0,-2
   1cc4a:	0014b493          	sltiu	s1,s1,1
   1cc4e:	4781                	c.li	a5,0
   1cc50:	bf8d                	c.j	1cbc2 <__subtf3+0x5bc>
   1cc52:	03e89563          	bne	a7,t5,1cc7c <__subtf3+0x676>
   1cc56:	1c0e0a63          	beq	t3,zero,1ce2a <__subtf3+0x824>
   1cc5a:	0327d693          	srli	a3,a5,0x32
   1cc5e:	8a85                	c.andi	a3,1
   1cc60:	0016b693          	sltiu	a3,a3,1
   1cc64:	0692                	c.slli	a3,0x4
   1cc66:	031e9663          	bne	t4,a7,1cc92 <__subtf3+0x68c>
   1cc6a:	cd81                	c.beqz	a1,1cc82 <__subtf3+0x67c>
   1cc6c:	03275893          	srli	a7,a4,0x32
   1cc70:	0018f893          	andi	a7,a7,1
   1cc74:	00089763          	bne	a7,zero,1cc82 <__subtf3+0x67c>
   1cc78:	46c1                	c.li	a3,16
   1cc7a:	a021                	c.j	1cc82 <__subtf3+0x67c>
   1cc7c:	4681                	c.li	a3,0
   1cc7e:	ffee86e3          	beq	t4,t5,1cc6a <__subtf3+0x664>
   1cc82:	000e1863          	bne	t3,zero,1cc92 <__subtf3+0x68c>
   1cc86:	14058c63          	beq	a1,zero,1cdde <__subtf3+0x7d8>
   1cc8a:	87ba                	c.mv	a5,a4
   1cc8c:	8532                	c.mv	a0,a2
   1cc8e:	849a                	c.mv	s1,t1
   1cc90:	b999                	c.j	1c8e6 <__subtf3+0x2e0>
   1cc92:	c4058ae3          	beq	a1,zero,1c8e6 <__subtf3+0x2e0>
   1cc96:	b9a9                	c.j	1c8f0 <__subtf3+0x2ea>
   1cc98:	40c50a33          	sub	s4,a0,a2
   1cc9c:	014536b3          	sltu	a3,a0,s4
   1cca0:	40e78933          	sub	s2,a5,a4
   1cca4:	40d90933          	sub	s2,s2,a3
   1cca8:	03395693          	srli	a3,s2,0x33
   1ccac:	8a85                	c.andi	a3,1
   1ccae:	cead                	c.beqz	a3,1cd28 <__subtf3+0x722>
   1ccb0:	40a60a33          	sub	s4,a2,a0
   1ccb4:	8f1d                	c.sub	a4,a5
   1ccb6:	01463633          	sltu	a2,a2,s4
   1ccba:	40c70933          	sub	s2,a4,a2
   1ccbe:	849a                	c.mv	s1,t1
   1ccc0:	06090863          	beq	s2,zero,1cd30 <__subtf3+0x72a>
   1ccc4:	854a                	c.mv	a0,s2
   1ccc6:	00000097          	auipc	ra,0x0
   1ccca:	552080e7          	jalr	ra,1362(ra) # 1d218 <__clzdi2>
   1ccce:	2501                	c.addiw	a0,0
   1ccd0:	ff45059b          	addiw	a1,a0,-12
   1ccd4:	03f00793          	addi	a5,zero,63
   1ccd8:	86ae                	c.mv	a3,a1
   1ccda:	06b7c363          	blt	a5,a1,1cd40 <__subtf3+0x73a>
   1ccde:	04000713          	addi	a4,zero,64
   1cce2:	9f0d                	c.subw	a4,a1
   1cce4:	00b91933          	sll	s2,s2,a1
   1cce8:	00ea5733          	srl	a4,s4,a4
   1ccec:	01276733          	or	a4,a4,s2
   1ccf0:	00ba1533          	sll	a0,s4,a1
   1ccf4:	0735cf63          	blt	a1,s3,1cd72 <__subtf3+0x76c>
   1ccf8:	413686bb          	subw	a3,a3,s3
   1ccfc:	0016879b          	addiw	a5,a3,1
   1cd00:	03f00613          	addi	a2,zero,63
   1cd04:	04f64463          	blt	a2,a5,1cd4c <__subtf3+0x746>
   1cd08:	04000693          	addi	a3,zero,64
   1cd0c:	9e9d                	c.subw	a3,a5
   1cd0e:	00f555b3          	srl	a1,a0,a5
   1cd12:	00d71633          	sll	a2,a4,a3
   1cd16:	00d51533          	sll	a0,a0,a3
   1cd1a:	8e4d                	c.or	a2,a1
   1cd1c:	00a03533          	sltu	a0,zero,a0
   1cd20:	8d51                	c.or	a0,a2
   1cd22:	00f757b3          	srl	a5,a4,a5
   1cd26:	bd71                	c.j	1cbc2 <__subtf3+0x5bc>
   1cd28:	012a6533          	or	a0,s4,s2
   1cd2c:	f951                	c.bnez	a0,1ccc0 <__subtf3+0x6ba>
   1cd2e:	bf21                	c.j	1cc46 <__subtf3+0x640>
   1cd30:	8552                	c.mv	a0,s4
   1cd32:	00000097          	auipc	ra,0x0
   1cd36:	4e6080e7          	jalr	ra,1254(ra) # 1d218 <__clzdi2>
   1cd3a:	0405051b          	addiw	a0,a0,64
   1cd3e:	bf49                	c.j	1ccd0 <__subtf3+0x6ca>
   1cd40:	fb45071b          	addiw	a4,a0,-76
   1cd44:	00ea1733          	sll	a4,s4,a4
   1cd48:	4501                	c.li	a0,0
   1cd4a:	b76d                	c.j	1ccf4 <__subtf3+0x6ee>
   1cd4c:	fc16869b          	addiw	a3,a3,-63
   1cd50:	04000813          	addi	a6,zero,64
   1cd54:	00d75633          	srl	a2,a4,a3
   1cd58:	4681                	c.li	a3,0
   1cd5a:	01078763          	beq	a5,a6,1cd68 <__subtf3+0x762>
   1cd5e:	08000693          	addi	a3,zero,128
   1cd62:	9e9d                	c.subw	a3,a5
   1cd64:	00d716b3          	sll	a3,a4,a3
   1cd68:	8d55                	c.or	a0,a3
   1cd6a:	00a03533          	sltu	a0,zero,a0
   1cd6e:	8d51                	c.or	a0,a2
   1cd70:	bdf9                	c.j	1cc4e <__subtf3+0x648>
   1cd72:	57fd                	c.li	a5,-1
   1cd74:	17ce                	c.slli	a5,0x33
   1cd76:	17fd                	c.addi	a5,-1
   1cd78:	40b985b3          	sub	a1,s3,a1
   1cd7c:	8f7d                	c.and	a4,a5
   1cd7e:	87ba                	c.mv	a5,a4
   1cd80:	e40581e3          	beq	a1,zero,1cbc2 <__subtf3+0x5bc>
   1cd84:	b2b9                	c.j	1c6d2 <__subtf3+0xcc>
   1cd86:	8532                	c.mv	a0,a2
   1cd88:	849a                	c.mv	s1,t1
   1cd8a:	bfd5                	c.j	1cd7e <__subtf3+0x778>
   1cd8c:	87ba                	c.mv	a5,a4
   1cd8e:	8532                	c.mv	a0,a2
   1cd90:	bd0d                	c.j	1cbc2 <__subtf3+0x5bc>
   1cd92:	87ba                	c.mv	a5,a4
   1cd94:	8532                	c.mv	a0,a2
   1cd96:	b555                	c.j	1cc3a <__subtf3+0x634>
   1cd98:	87b6                	c.mv	a5,a3
   1cd9a:	852e                	c.mv	a0,a1
   1cd9c:	b51d                	c.j	1cbc2 <__subtf3+0x5bc>
   1cd9e:	4685                	c.li	a3,1
   1cda0:	e4049fe3          	bne	s1,zero,1cbfe <__subtf3+0x5f8>
   1cda4:	ff873713          	sltiu	a4,a4,-8
   1cda8:	00174713          	xori	a4,a4,1
   1cdac:	1702                	c.slli	a4,0x20
   1cdae:	9301                	c.srli	a4,0x20
   1cdb0:	983a                	c.add	a6,a4
   1cdb2:	b5b1                	c.j	1cbfe <__subtf3+0x5f8>
   1cdb4:	4685                	c.li	a3,1
   1cdb6:	e40484e3          	beq	s1,zero,1cbfe <__subtf3+0x5f8>
   1cdba:	b7ed                	c.j	1cda4 <__subtf3+0x79e>
   1cdbc:	4781                	c.li	a5,0
   1cdbe:	4681                	c.li	a3,0
   1cdc0:	be35                	c.j	1c8fc <__subtf3+0x2f6>
   1cdc2:	87ba                	c.mv	a5,a4
   1cdc4:	8532                	c.mv	a0,a2
   1cdc6:	b231                	c.j	1c6d2 <__subtf3+0xcc>
   1cdc8:	4781                	c.li	a5,0
   1cdca:	4501                	c.li	a0,0
   1cdcc:	85c6                	c.mv	a1,a7
   1cdce:	bfc5                	c.j	1cdbe <__subtf3+0x7b8>
   1cdd0:	4781                	c.li	a5,0
   1cdd2:	849a                	c.mv	s1,t1
   1cdd4:	b7ed                	c.j	1cdbe <__subtf3+0x7b8>
   1cdd6:	87ba                	c.mv	a5,a4
   1cdd8:	8532                	c.mv	a0,a2
   1cdda:	849a                	c.mv	s1,t1
   1cddc:	b8dd                	c.j	1c6d2 <__subtf3+0xcc>
   1cdde:	4785                	c.li	a5,1
   1cde0:	65a1                	c.lui	a1,0x8
   1cde2:	4501                	c.li	a0,0
   1cde4:	4481                	c.li	s1,0
   1cde6:	17ca                	c.slli	a5,0x32
   1cde8:	15fd                	c.addi	a1,-1
   1cdea:	46c1                	c.li	a3,16
   1cdec:	be01                	c.j	1c8fc <__subtf3+0x2f6>
   1cdee:	4781                	c.li	a5,0
   1cdf0:	4501                	c.li	a0,0
   1cdf2:	4581                	c.li	a1,0
   1cdf4:	b7e9                	c.j	1cdbe <__subtf3+0x7b8>
   1cdf6:	e489                	c.bnez	s1,1ce00 <__subtf3+0x7fa>
   1cdf8:	00850713          	addi	a4,a0,8
   1cdfc:	b6e9                	c.j	1c9c6 <__subtf3+0x3c0>
   1cdfe:	fced                	c.bnez	s1,1cdf8 <__subtf3+0x7f2>
   1ce00:	aa0812e3          	bne	a6,zero,1c8a4 <__subtf3+0x29e>
   1ce04:	bce5                	c.j	1c8fc <__subtf3+0x2f6>
   1ce06:	4501                	c.li	a0,0
   1ce08:	cc09                	c.beqz	s0,1ce22 <__subtf3+0x81c>
   1ce0a:	478d                	c.li	a5,3
   1ce0c:	00f41763          	bne	s0,a5,1ce1a <__subtf3+0x814>
   1ce10:	c889                	c.beqz	s1,1ce22 <__subtf3+0x81c>
   1ce12:	557d                	c.li	a0,-1
   1ce14:	ffe70593          	addi	a1,a4,-2 # 7ffe <register_fini-0x80b2>
   1ce18:	a029                	c.j	1ce22 <__subtf3+0x81c>
   1ce1a:	4789                	c.li	a5,2
   1ce1c:	fef41be3          	bne	s0,a5,1ce12 <__subtf3+0x80c>
   1ce20:	d8ed                	c.beqz	s1,1ce12 <__subtf3+0x80c>
   1ce22:	0056e693          	ori	a3,a3,5
   1ce26:	87aa                	c.mv	a5,a0
   1ce28:	bcc5                	c.j	1c918 <__subtf3+0x312>
   1ce2a:	4681                	c.li	a3,0
   1ce2c:	e51e9de3          	bne	t4,a7,1cc86 <__subtf3+0x680>
   1ce30:	bd2d                	c.j	1cc6a <__subtf3+0x664>
   1ce32:	4681                	c.li	a3,0
   1ce34:	ab1e97e3          	bne	t4,a7,1c8e2 <__subtf3+0x2dc>
   1ce38:	b469                	c.j	1c8c2 <__subtf3+0x2bc>

000000000001ce3a <__fixtfsi>:
   1ce3a:	862a                	c.mv	a2,a0
   1ce3c:	002027f3          	csrrs	a5,frm,zero
   1ce40:	6811                	c.lui	a6,0x4
   1ce42:	00159693          	slli	a3,a1,0x1
   1ce46:	01059793          	slli	a5,a1,0x10
   1ce4a:	92c5                	c.srli	a3,0x31
   1ce4c:	ffe80713          	addi	a4,a6,-2 # 3ffe <register_fini-0xc0b2>
   1ce50:	83c1                	c.srli	a5,0x10
   1ce52:	91fd                	c.srli	a1,0x3f
   1ce54:	00d74763          	blt	a4,a3,1ce62 <__fixtfsi+0x28>
   1ce58:	e2bd                	c.bnez	a3,1cebe <__fixtfsi+0x84>
   1ce5a:	8fc9                	c.or	a5,a0
   1ce5c:	4501                	c.li	a0,0
   1ce5e:	e79d                	c.bnez	a5,1ce8c <__fixtfsi+0x52>
   1ce60:	8082                	c.jr	ra
   1ce62:	01d80713          	addi	a4,a6,29
   1ce66:	02d75563          	bge	a4,a3,1ce90 <__fixtfsi+0x56>
   1ce6a:	80000737          	lui	a4,0x80000
   1ce6e:	fff74713          	xori	a4,a4,-1
   1ce72:	00b7053b          	addw	a0,a4,a1
   1ce76:	c5b1                	c.beqz	a1,1cec2 <__fixtfsi+0x88>
   1ce78:	0879                	c.addi	a6,30
   1ce7a:	4741                	c.li	a4,16
   1ce7c:	05069463          	bne	a3,a6,1cec4 <__fixtfsi+0x8a>
   1ce80:	0117d693          	srli	a3,a5,0x11
   1ce84:	e2a1                	c.bnez	a3,1cec4 <__fixtfsi+0x8a>
   1ce86:	17be                	c.slli	a5,0x2f
   1ce88:	8fd1                	c.or	a5,a2
   1ce8a:	cb8d                	c.beqz	a5,1cebc <__fixtfsi+0x82>
   1ce8c:	4705                	c.li	a4,1
   1ce8e:	a81d                	c.j	1cec4 <__fixtfsi+0x8a>
   1ce90:	4505                	c.li	a0,1
   1ce92:	1542                	c.slli	a0,0x30
   1ce94:	8fc9                	c.or	a5,a0
   1ce96:	7771                	c.lui	a4,0xffffc
   1ce98:	6511                	c.lui	a0,0x4
   1ce9a:	02f5051b          	addiw	a0,a0,47
   1ce9e:	2745                	c.addiw	a4,17
   1cea0:	9f35                	c.addw	a4,a3
   1cea2:	40d506bb          	subw	a3,a0,a3
   1cea6:	00e79733          	sll	a4,a5,a4
   1ceaa:	00d7d7b3          	srl	a5,a5,a3
   1ceae:	8f51                	c.or	a4,a2
   1ceb0:	0007851b          	addiw	a0,a5,0
   1ceb4:	c199                	c.beqz	a1,1ceba <__fixtfsi+0x80>
   1ceb6:	40a0053b          	subw	a0,zero,a0
   1ceba:	fb69                	c.bnez	a4,1ce8c <__fixtfsi+0x52>
   1cebc:	8082                	c.jr	ra
   1cebe:	4501                	c.li	a0,0
   1cec0:	b7f1                	c.j	1ce8c <__fixtfsi+0x52>
   1cec2:	4741                	c.li	a4,16
   1cec4:	00172073          	csrrs	zero,fflags,a4
   1cec8:	bfd5                	c.j	1cebc <__fixtfsi+0x82>

000000000001ceca <__floatsitf>:
   1ceca:	1101                	c.addi	sp,-32
   1cecc:	ec06                	c.sdsp	ra,24(sp)
   1cece:	e822                	c.sdsp	s0,16(sp)
   1ced0:	e426                	c.sdsp	s1,8(sp)
   1ced2:	c531                	c.beqz	a0,1cf1e <__floatsitf+0x54>
   1ced4:	0005079b          	addiw	a5,a0,0
   1ced8:	03f55493          	srli	s1,a0,0x3f
   1cedc:	00055463          	bge	a0,zero,1cee4 <__floatsitf+0x1a>
   1cee0:	40f007bb          	subw	a5,zero,a5
   1cee4:	02079413          	slli	s0,a5,0x20
   1cee8:	9001                	c.srli	s0,0x20
   1ceea:	8522                	c.mv	a0,s0
   1ceec:	00000097          	auipc	ra,0x0
   1cef0:	32c080e7          	jalr	ra,812(ra) # 1d218 <__clzdi2>
   1cef4:	6591                	c.lui	a1,0x4
   1cef6:	03e5859b          	addiw	a1,a1,62
   1cefa:	ff15079b          	addiw	a5,a0,-15
   1cefe:	9d89                	c.subw	a1,a0
   1cf00:	00f417b3          	sll	a5,s0,a5
   1cf04:	60e2                	c.ldsp	ra,24(sp)
   1cf06:	6442                	c.ldsp	s0,16(sp)
   1cf08:	00f4949b          	slliw	s1,s1,0xf
   1cf0c:	8dc5                	c.or	a1,s1
   1cf0e:	07c2                	c.slli	a5,0x10
   1cf10:	15c2                	c.slli	a1,0x30
   1cf12:	83c1                	c.srli	a5,0x10
   1cf14:	64a2                	c.ldsp	s1,8(sp)
   1cf16:	4501                	c.li	a0,0
   1cf18:	8ddd                	c.or	a1,a5
   1cf1a:	6105                	c.addi16sp	sp,32
   1cf1c:	8082                	c.jr	ra
   1cf1e:	4781                	c.li	a5,0
   1cf20:	4581                	c.li	a1,0
   1cf22:	4481                	c.li	s1,0
   1cf24:	b7c5                	c.j	1cf04 <__floatsitf+0x3a>

000000000001cf26 <__extenddftf2>:
   1cf26:	1101                	c.addi	sp,-32
   1cf28:	e20507d3          	fmv.x.d	a5,fa0
   1cf2c:	ec06                	c.sdsp	ra,24(sp)
   1cf2e:	e822                	c.sdsp	s0,16(sp)
   1cf30:	e426                	c.sdsp	s1,8(sp)
   1cf32:	00202773          	csrrs	a4,frm,zero
   1cf36:	0347d513          	srli	a0,a5,0x34
   1cf3a:	7ff57513          	andi	a0,a0,2047
   1cf3e:	00c79413          	slli	s0,a5,0xc
   1cf42:	03f7d493          	srli	s1,a5,0x3f
   1cf46:	00150793          	addi	a5,a0,1 # 4001 <register_fini-0xc0af>
   1cf4a:	7fe7f793          	andi	a5,a5,2046
   1cf4e:	8031                	c.srli	s0,0xc
   1cf50:	cb91                	c.beqz	a5,1cf64 <__extenddftf2+0x3e>
   1cf52:	6791                	c.lui	a5,0x4
   1cf54:	c0078793          	addi	a5,a5,-1024 # 3c00 <register_fini-0xc4b0>
   1cf58:	00445593          	srli	a1,s0,0x4
   1cf5c:	953e                	c.add	a0,a5
   1cf5e:	1472                	c.slli	s0,0x3c
   1cf60:	4781                	c.li	a5,0
   1cf62:	a08d                	c.j	1cfc4 <__extenddftf2+0x9e>
   1cf64:	e129                	c.bnez	a0,1cfa6 <__extenddftf2+0x80>
   1cf66:	4581                	c.li	a1,0
   1cf68:	dc65                	c.beqz	s0,1cf60 <__extenddftf2+0x3a>
   1cf6a:	8522                	c.mv	a0,s0
   1cf6c:	00000097          	auipc	ra,0x0
   1cf70:	2ac080e7          	jalr	ra,684(ra) # 1d218 <__clzdi2>
   1cf74:	0005071b          	addiw	a4,a0,0
   1cf78:	47b9                	c.li	a5,14
   1cf7a:	02e7c063          	blt	a5,a4,1cf9a <__extenddftf2+0x74>
   1cf7e:	45bd                	c.li	a1,15
   1cf80:	9d89                	c.subw	a1,a0
   1cf82:	0315079b          	addiw	a5,a0,49
   1cf86:	00b455b3          	srl	a1,s0,a1
   1cf8a:	00f41433          	sll	s0,s0,a5
   1cf8e:	6791                	c.lui	a5,0x4
   1cf90:	c0c7879b          	addiw	a5,a5,-1012
   1cf94:	40a7853b          	subw	a0,a5,a0
   1cf98:	b7e1                	c.j	1cf60 <__extenddftf2+0x3a>
   1cf9a:	ff15059b          	addiw	a1,a0,-15
   1cf9e:	00b415b3          	sll	a1,s0,a1
   1cfa2:	4401                	c.li	s0,0
   1cfa4:	b7ed                	c.j	1cf8e <__extenddftf2+0x68>
   1cfa6:	cc1d                	c.beqz	s0,1cfe4 <__extenddftf2+0xbe>
   1cfa8:	4705                	c.li	a4,1
   1cfaa:	03371793          	slli	a5,a4,0x33
   1cfae:	8fe1                	c.and	a5,s0
   1cfb0:	00445593          	srli	a1,s0,0x4
   1cfb4:	0017b793          	sltiu	a5,a5,1
   1cfb8:	173e                	c.slli	a4,0x2f
   1cfba:	6521                	c.lui	a0,0x8
   1cfbc:	0792                	c.slli	a5,0x4
   1cfbe:	8dd9                	c.or	a1,a4
   1cfc0:	1472                	c.slli	s0,0x3c
   1cfc2:	157d                	c.addi	a0,-1
   1cfc4:	00f4949b          	slliw	s1,s1,0xf
   1cfc8:	05c2                	c.slli	a1,0x10
   1cfca:	8d45                	c.or	a0,s1
   1cfcc:	1542                	c.slli	a0,0x30
   1cfce:	81c1                	c.srli	a1,0x10
   1cfd0:	8dc9                	c.or	a1,a0
   1cfd2:	c399                	c.beqz	a5,1cfd8 <__extenddftf2+0xb2>
   1cfd4:	0017a073          	csrrs	zero,fflags,a5
   1cfd8:	60e2                	c.ldsp	ra,24(sp)
   1cfda:	8522                	c.mv	a0,s0
   1cfdc:	6442                	c.ldsp	s0,16(sp)
   1cfde:	64a2                	c.ldsp	s1,8(sp)
   1cfe0:	6105                	c.addi16sp	sp,32
   1cfe2:	8082                	c.jr	ra
   1cfe4:	6521                	c.lui	a0,0x8
   1cfe6:	4581                	c.li	a1,0
   1cfe8:	157d                	c.addi	a0,-1
   1cfea:	bf9d                	c.j	1cf60 <__extenddftf2+0x3a>

000000000001cfec <__trunctfdf2>:
   1cfec:	00202873          	csrrs	a6,frm,zero
   1cff0:	6321                	c.lui	t1,0x8
   1cff2:	0305d713          	srli	a4,a1,0x30
   1cff6:	fff30e13          	addi	t3,t1,-1 # 7fff <register_fini-0x80b1>
   1cffa:	01c77633          	and	a2,a4,t3
   1cffe:	03f5d693          	srli	a3,a1,0x3f
   1d002:	00160793          	addi	a5,a2,1 # ffffffffffffe001 <__BSS_END__+0xfffffffffffddc81>
   1d006:	05c2                	c.slli	a1,0x10
   1d008:	1379                	c.addi	t1,-2
   1d00a:	81b5                	c.srli	a1,0xd
   1d00c:	03d55713          	srli	a4,a0,0x3d
   1d010:	0067f333          	and	t1,a5,t1
   1d014:	2801                	c.addiw	a6,0
   1d016:	8f4d                	c.or	a4,a1
   1d018:	00351e93          	slli	t4,a0,0x3
   1d01c:	16030f63          	beq	t1,zero,1d19a <__trunctfdf2+0x1ae>
   1d020:	77f1                	c.lui	a5,0xffffc
   1d022:	40078793          	addi	a5,a5,1024 # ffffffffffffc400 <__BSS_END__+0xfffffffffffdc080>
   1d026:	963e                	c.add	a2,a5
   1d028:	7fe00793          	addi	a5,zero,2046
   1d02c:	08c7de63          	bge	a5,a2,1d0c8 <__trunctfdf2+0xdc>
   1d030:	04080363          	beq	a6,zero,1d076 <__trunctfdf2+0x8a>
   1d034:	478d                	c.li	a5,3
   1d036:	02f81c63          	bne	a6,a5,1d06e <__trunctfdf2+0x82>
   1d03a:	ce95                	c.beqz	a3,1d076 <__trunctfdf2+0x8a>
   1d03c:	57fd                	c.li	a5,-1
   1d03e:	7fe00613          	addi	a2,zero,2046
   1d042:	4701                	c.li	a4,0
   1d044:	4895                	c.li	a7,5
   1d046:	4589                	c.li	a1,2
   1d048:	0018e893          	ori	a7,a7,1
   1d04c:	1ab80163          	beq	a6,a1,1d1ee <__trunctfdf2+0x202>
   1d050:	458d                	c.li	a1,3
   1d052:	18b80a63          	beq	a6,a1,1d1e6 <__trunctfdf2+0x1fa>
   1d056:	00081863          	bne	a6,zero,1d066 <__trunctfdf2+0x7a>
   1d05a:	00f7f593          	andi	a1,a5,15
   1d05e:	4511                	c.li	a0,4
   1d060:	00a58363          	beq	a1,a0,1d066 <__trunctfdf2+0x7a>
   1d064:	0791                	c.addi	a5,4
   1d066:	cf01                	c.beqz	a4,1d07e <__trunctfdf2+0x92>
   1d068:	0028e893          	ori	a7,a7,2
   1d06c:	a809                	c.j	1d07e <__trunctfdf2+0x92>
   1d06e:	4789                	c.li	a5,2
   1d070:	fcf816e3          	bne	a6,a5,1d03c <__trunctfdf2+0x50>
   1d074:	d6e1                	c.beqz	a3,1d03c <__trunctfdf2+0x50>
   1d076:	4781                	c.li	a5,0
   1d078:	7ff00613          	addi	a2,zero,2047
   1d07c:	4895                	c.li	a7,5
   1d07e:	0377d713          	srli	a4,a5,0x37
   1d082:	8b05                	c.andi	a4,1
   1d084:	cb11                	c.beqz	a4,1d098 <__trunctfdf2+0xac>
   1d086:	0605                	c.addi	a2,1
   1d088:	7ff00713          	addi	a4,zero,2047
   1d08c:	16e60463          	beq	a2,a4,1d1f4 <__trunctfdf2+0x208>
   1d090:	55fd                	c.li	a1,-1
   1d092:	15de                	c.slli	a1,0x37
   1d094:	15fd                	c.addi	a1,-1
   1d096:	8fed                	c.and	a5,a1
   1d098:	7ff00713          	addi	a4,zero,2047
   1d09c:	838d                	c.srli	a5,0x3
   1d09e:	00e61663          	bne	a2,a4,1d0aa <__trunctfdf2+0xbe>
   1d0a2:	c781                	c.beqz	a5,1d0aa <__trunctfdf2+0xbe>
   1d0a4:	4785                	c.li	a5,1
   1d0a6:	17ce                	c.slli	a5,0x33
   1d0a8:	4681                	c.li	a3,0
   1d0aa:	7ff67713          	andi	a4,a2,2047
   1d0ae:	07b2                	c.slli	a5,0xc
   1d0b0:	1752                	c.slli	a4,0x34
   1d0b2:	83b1                	c.srli	a5,0xc
   1d0b4:	8fd9                	c.or	a5,a4
   1d0b6:	16fe                	c.slli	a3,0x3f
   1d0b8:	8fd5                	c.or	a5,a3
   1d0ba:	00088463          	beq	a7,zero,1d0c2 <__trunctfdf2+0xd6>
   1d0be:	0018a073          	csrrs	zero,fflags,a7
   1d0c2:	f2078553          	fmv.d.x	fa0,a5
   1d0c6:	8082                	c.jr	ra
   1d0c8:	0ac04563          	blt	zero,a2,1d172 <__trunctfdf2+0x186>
   1d0cc:	fcc00793          	addi	a5,zero,-52
   1d0d0:	10f64063          	blt	a2,a5,1d1d0 <__trunctfdf2+0x1e4>
   1d0d4:	4785                	c.li	a5,1
   1d0d6:	17ce                	c.slli	a5,0x33
   1d0d8:	03d00e13          	addi	t3,zero,61
   1d0dc:	8f5d                	c.or	a4,a5
   1d0de:	40ce0e33          	sub	t3,t3,a2
   1d0e2:	03f00793          	addi	a5,zero,63
   1d0e6:	0006089b          	addiw	a7,a2,0
   1d0ea:	05c7cf63          	blt	a5,t3,1d148 <__trunctfdf2+0x15c>
   1d0ee:	0038859b          	addiw	a1,a7,3
   1d0f2:	03d00613          	addi	a2,zero,61
   1d0f6:	4116063b          	subw	a2,a2,a7
   1d0fa:	00be97b3          	sll	a5,t4,a1
   1d0fe:	00ced633          	srl	a2,t4,a2
   1d102:	00f037b3          	sltu	a5,zero,a5
   1d106:	8fd1                	c.or	a5,a2
   1d108:	00b71733          	sll	a4,a4,a1
   1d10c:	8fd9                	c.or	a5,a4
   1d10e:	4601                	c.li	a2,0
   1d110:	cbc9                	c.beqz	a5,1d1a2 <__trunctfdf2+0x1b6>
   1d112:	00179713          	slli	a4,a5,0x1
   1d116:	00777613          	andi	a2,a4,7
   1d11a:	4881                	c.li	a7,0
   1d11c:	c205                	c.beqz	a2,1d13c <__trunctfdf2+0x150>
   1d11e:	4609                	c.li	a2,2
   1d120:	0ac80d63          	beq	a6,a2,1d1da <__trunctfdf2+0x1ee>
   1d124:	460d                	c.li	a2,3
   1d126:	4885                	c.li	a7,1
   1d128:	0ac80663          	beq	a6,a2,1d1d4 <__trunctfdf2+0x1e8>
   1d12c:	00081863          	bne	a6,zero,1d13c <__trunctfdf2+0x150>
   1d130:	00f77613          	andi	a2,a4,15
   1d134:	4591                	c.li	a1,4
   1d136:	00b60363          	beq	a2,a1,1d13c <__trunctfdf2+0x150>
   1d13a:	0711                	c.addi	a4,4
   1d13c:	9361                	c.srli	a4,0x38
   1d13e:	00174713          	xori	a4,a4,1
   1d142:	8b05                	c.andi	a4,1
   1d144:	4601                	c.li	a2,0
   1d146:	a089                	c.j	1d188 <__trunctfdf2+0x19c>
   1d148:	5375                	c.li	t1,-3
   1d14a:	4113033b          	subw	t1,t1,a7
   1d14e:	04000793          	addi	a5,zero,64
   1d152:	00675333          	srl	t1,a4,t1
   1d156:	4581                	c.li	a1,0
   1d158:	00fe0663          	beq	t3,a5,1d164 <__trunctfdf2+0x178>
   1d15c:	0438861b          	addiw	a2,a7,67
   1d160:	00c715b3          	sll	a1,a4,a2
   1d164:	01d5e5b3          	or	a1,a1,t4
   1d168:	00b035b3          	sltu	a1,zero,a1
   1d16c:	00b367b3          	or	a5,t1,a1
   1d170:	bf79                	c.j	1d10e <__trunctfdf2+0x122>
   1d172:	00751793          	slli	a5,a0,0x7
   1d176:	00f037b3          	sltu	a5,zero,a5
   1d17a:	03ced593          	srli	a1,t4,0x3c
   1d17e:	0712                	c.slli	a4,0x4
   1d180:	8fcd                	c.or	a5,a1
   1d182:	8fd9                	c.or	a5,a4
   1d184:	4881                	c.li	a7,0
   1d186:	4701                	c.li	a4,0
   1d188:	0077f593          	andi	a1,a5,7
   1d18c:	ea059de3          	bne	a1,zero,1d046 <__trunctfdf2+0x5a>
   1d190:	ee0707e3          	beq	a4,zero,1d07e <__trunctfdf2+0x92>
   1d194:	0018f713          	andi	a4,a7,1
   1d198:	b5f9                	c.j	1d066 <__trunctfdf2+0x7a>
   1d19a:	01d767b3          	or	a5,a4,t4
   1d19e:	e601                	c.bnez	a2,1d1a6 <__trunctfdf2+0x1ba>
   1d1a0:	eb85                	c.bnez	a5,1d1d0 <__trunctfdf2+0x1e4>
   1d1a2:	4881                	c.li	a7,0
   1d1a4:	bde9                	c.j	1d07e <__trunctfdf2+0x92>
   1d1a6:	cf8d                	c.beqz	a5,1d1e0 <__trunctfdf2+0x1f4>
   1d1a8:	4881                	c.li	a7,0
   1d1aa:	01c61763          	bne	a2,t3,1d1b8 <__trunctfdf2+0x1cc>
   1d1ae:	03275893          	srli	a7,a4,0x32
   1d1b2:	0018b893          	sltiu	a7,a7,1
   1d1b6:	0892                	c.slli	a7,0x4
   1d1b8:	03ced793          	srli	a5,t4,0x3c
   1d1bc:	0712                	c.slli	a4,0x4
   1d1be:	8f5d                	c.or	a4,a5
   1d1c0:	4785                	c.li	a5,1
   1d1c2:	9b61                	c.andi	a4,-8
   1d1c4:	17da                	c.slli	a5,0x36
   1d1c6:	8fd9                	c.or	a5,a4
   1d1c8:	7ff00613          	addi	a2,zero,2047
   1d1cc:	4701                	c.li	a4,0
   1d1ce:	bf6d                	c.j	1d188 <__trunctfdf2+0x19c>
   1d1d0:	4785                	c.li	a5,1
   1d1d2:	b781                	c.j	1d112 <__trunctfdf2+0x126>
   1d1d4:	f6a5                	c.bnez	a3,1d13c <__trunctfdf2+0x150>
   1d1d6:	0721                	c.addi	a4,8
   1d1d8:	b795                	c.j	1d13c <__trunctfdf2+0x150>
   1d1da:	4885                	c.li	a7,1
   1d1dc:	d2a5                	c.beqz	a3,1d13c <__trunctfdf2+0x150>
   1d1de:	bfe5                	c.j	1d1d6 <__trunctfdf2+0x1ea>
   1d1e0:	7ff00613          	addi	a2,zero,2047
   1d1e4:	bf7d                	c.j	1d1a2 <__trunctfdf2+0x1b6>
   1d1e6:	e80690e3          	bne	a3,zero,1d066 <__trunctfdf2+0x7a>
   1d1ea:	07a1                	c.addi	a5,8
   1d1ec:	bdad                	c.j	1d066 <__trunctfdf2+0x7a>
   1d1ee:	e6068ce3          	beq	a3,zero,1d066 <__trunctfdf2+0x7a>
   1d1f2:	bfe5                	c.j	1d1ea <__trunctfdf2+0x1fe>
   1d1f4:	4781                	c.li	a5,0
   1d1f6:	00080e63          	beq	a6,zero,1d212 <__trunctfdf2+0x226>
   1d1fa:	470d                	c.li	a4,3
   1d1fc:	00e81763          	bne	a6,a4,1d20a <__trunctfdf2+0x21e>
   1d200:	ca89                	c.beqz	a3,1d212 <__trunctfdf2+0x226>
   1d202:	57fd                	c.li	a5,-1
   1d204:	7fe00613          	addi	a2,zero,2046
   1d208:	a029                	c.j	1d212 <__trunctfdf2+0x226>
   1d20a:	4709                	c.li	a4,2
   1d20c:	fee81be3          	bne	a6,a4,1d202 <__trunctfdf2+0x216>
   1d210:	daed                	c.beqz	a3,1d202 <__trunctfdf2+0x216>
   1d212:	0058e893          	ori	a7,a7,5
   1d216:	b549                	c.j	1d098 <__trunctfdf2+0xac>

000000000001d218 <__clzdi2>:
   1d218:	03800793          	addi	a5,zero,56
   1d21c:	00f55733          	srl	a4,a0,a5
   1d220:	0ff77713          	andi	a4,a4,255
   1d224:	e319                	c.bnez	a4,1d22a <__clzdi2+0x12>
   1d226:	17e1                	c.addi	a5,-8
   1d228:	fbf5                	c.bnez	a5,1d21c <__clzdi2+0x4>
   1d22a:	04000713          	addi	a4,zero,64
   1d22e:	8f1d                	c.sub	a4,a5
   1d230:	00f55533          	srl	a0,a0,a5
   1d234:	00001797          	auipc	a5,0x1
   1d238:	e3c78793          	addi	a5,a5,-452 # 1e070 <__clz_tab>
   1d23c:	953e                	c.add	a0,a5
   1d23e:	00054503          	lbu	a0,0(a0) # 8000 <register_fini-0x80b0>
   1d242:	40a7053b          	subw	a0,a4,a0
   1d246:	8082                	c.jr	ra
