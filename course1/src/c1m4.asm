
c1m4.out:     file format elf32-littlearm


Disassembly of section .init:

00010404 <_init>:
   10404:	e92d4008 	push	{r3, lr}
   10408:	eb00002f 	bl	104cc <call_weak_fn>
   1040c:	e8bd8008 	pop	{r3, pc}

Disassembly of section .plt:

00010410 <raise@plt-0x14>:
   10410:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
   10414:	e59fe004 	ldr	lr, [pc, #4]	; 10420 <_init+0x1c>
   10418:	e08fe00e 	add	lr, pc, lr
   1041c:	e5bef008 	ldr	pc, [lr, #8]!
   10420:	00012070 	.word	0x00012070

00010424 <raise@plt>:
   10424:	e28fc600 	add	ip, pc, #0, 12
   10428:	e28cca12 	add	ip, ip, #73728	; 0x12000
   1042c:	e5bcf070 	ldr	pc, [ip, #112]!	; 0x70

00010430 <printf@plt>:
   10430:	e28fc600 	add	ip, pc, #0, 12
   10434:	e28cca12 	add	ip, ip, #73728	; 0x12000
   10438:	e5bcf068 	ldr	pc, [ip, #104]!	; 0x68

0001043c <free@plt>:
   1043c:	e28fc600 	add	ip, pc, #0, 12
   10440:	e28cca12 	add	ip, ip, #73728	; 0x12000
   10444:	e5bcf060 	ldr	pc, [ip, #96]!	; 0x60

00010448 <pow@plt>:
   10448:	e28fc600 	add	ip, pc, #0, 12
   1044c:	e28cca12 	add	ip, ip, #73728	; 0x12000
   10450:	e5bcf058 	ldr	pc, [ip, #88]!	; 0x58

00010454 <puts@plt>:
   10454:	e28fc600 	add	ip, pc, #0, 12
   10458:	e28cca12 	add	ip, ip, #73728	; 0x12000
   1045c:	e5bcf050 	ldr	pc, [ip, #80]!	; 0x50

00010460 <malloc@plt>:
   10460:	e28fc600 	add	ip, pc, #0, 12
   10464:	e28cca12 	add	ip, ip, #73728	; 0x12000
   10468:	e5bcf048 	ldr	pc, [ip, #72]!	; 0x48

0001046c <__libc_start_main@plt>:
   1046c:	e28fc600 	add	ip, pc, #0, 12
   10470:	e28cca12 	add	ip, ip, #73728	; 0x12000
   10474:	e5bcf040 	ldr	pc, [ip, #64]!	; 0x40

00010478 <__gmon_start__@plt>:
   10478:	e28fc600 	add	ip, pc, #0, 12
   1047c:	e28cca12 	add	ip, ip, #73728	; 0x12000
   10480:	e5bcf038 	ldr	pc, [ip, #56]!	; 0x38

00010484 <abort@plt>:
   10484:	e28fc600 	add	ip, pc, #0, 12
   10488:	e28cca12 	add	ip, ip, #73728	; 0x12000
   1048c:	e5bcf030 	ldr	pc, [ip, #48]!	; 0x30

Disassembly of section .text:

00010490 <_start>:
   10490:	e3a0b000 	mov	fp, #0
   10494:	e3a0e000 	mov	lr, #0
   10498:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
   1049c:	e1a0200d 	mov	r2, sp
   104a0:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
   104a4:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
   104a8:	e59fc010 	ldr	ip, [pc, #16]	; 104c0 <_start+0x30>
   104ac:	e52dc004 	push	{ip}		; (str ip, [sp, #-4]!)
   104b0:	e59f000c 	ldr	r0, [pc, #12]	; 104c4 <_start+0x34>
   104b4:	e59f300c 	ldr	r3, [pc, #12]	; 104c8 <_start+0x38>
   104b8:	ebffffeb 	bl	1046c <__libc_start_main@plt>
   104bc:	ebfffff0 	bl	10484 <abort@plt>
   104c0:	00012124 	.word	0x00012124
   104c4:	000105b8 	.word	0x000105b8
   104c8:	000120c0 	.word	0x000120c0

000104cc <call_weak_fn>:
   104cc:	e59f3014 	ldr	r3, [pc, #20]	; 104e8 <call_weak_fn+0x1c>
   104d0:	e59f2014 	ldr	r2, [pc, #20]	; 104ec <call_weak_fn+0x20>
   104d4:	e08f3003 	add	r3, pc, r3
   104d8:	e7932002 	ldr	r2, [r3, r2]
   104dc:	e3520000 	cmp	r2, #0
   104e0:	012fff1e 	bxeq	lr
   104e4:	eaffffe3 	b	10478 <__gmon_start__@plt>
   104e8:	00011fb4 	.word	0x00011fb4
   104ec:	00000030 	.word	0x00000030

000104f0 <deregister_tm_clones>:
   104f0:	e59f301c 	ldr	r3, [pc, #28]	; 10514 <deregister_tm_clones+0x24>
   104f4:	e59f001c 	ldr	r0, [pc, #28]	; 10518 <deregister_tm_clones+0x28>
   104f8:	e0603003 	rsb	r3, r0, r3
   104fc:	e3530006 	cmp	r3, #6
   10500:	912fff1e 	bxls	lr
   10504:	e59f3010 	ldr	r3, [pc, #16]	; 1051c <deregister_tm_clones+0x2c>
   10508:	e3530000 	cmp	r3, #0
   1050c:	012fff1e 	bxeq	lr
   10510:	e12fff13 	bx	r3
   10514:	000224cf 	.word	0x000224cf
   10518:	000224cc 	.word	0x000224cc
   1051c:	00000000 	.word	0x00000000

00010520 <register_tm_clones>:
   10520:	e59f1024 	ldr	r1, [pc, #36]	; 1054c <register_tm_clones+0x2c>
   10524:	e59f0024 	ldr	r0, [pc, #36]	; 10550 <register_tm_clones+0x30>
   10528:	e0601001 	rsb	r1, r0, r1
   1052c:	e1a01141 	asr	r1, r1, #2
   10530:	e0811fa1 	add	r1, r1, r1, lsr #31
   10534:	e1b010c1 	asrs	r1, r1, #1
   10538:	012fff1e 	bxeq	lr
   1053c:	e59f3010 	ldr	r3, [pc, #16]	; 10554 <register_tm_clones+0x34>
   10540:	e3530000 	cmp	r3, #0
   10544:	012fff1e 	bxeq	lr
   10548:	e12fff13 	bx	r3
   1054c:	000224cc 	.word	0x000224cc
   10550:	000224cc 	.word	0x000224cc
   10554:	00000000 	.word	0x00000000

00010558 <__do_global_dtors_aux>:
   10558:	e92d4010 	push	{r4, lr}
   1055c:	e59f4018 	ldr	r4, [pc, #24]	; 1057c <__do_global_dtors_aux+0x24>
   10560:	e5d43000 	ldrb	r3, [r4]
   10564:	e3530000 	cmp	r3, #0
   10568:	18bd8010 	popne	{r4, pc}
   1056c:	ebffffdf 	bl	104f0 <deregister_tm_clones>
   10570:	e3a03001 	mov	r3, #1
   10574:	e5c43000 	strb	r3, [r4]
   10578:	e8bd8010 	pop	{r4, pc}
   1057c:	000224cc 	.word	0x000224cc

00010580 <frame_dummy>:
   10580:	e92d4008 	push	{r3, lr}
   10584:	e59f0024 	ldr	r0, [pc, #36]	; 105b0 <frame_dummy+0x30>
   10588:	e5903000 	ldr	r3, [r0]
   1058c:	e3530000 	cmp	r3, #0
   10590:	1a000001 	bne	1059c <frame_dummy+0x1c>
   10594:	e8bd4008 	pop	{r3, lr}
   10598:	eaffffe0 	b	10520 <register_tm_clones>
   1059c:	e59f3010 	ldr	r3, [pc, #16]	; 105b4 <frame_dummy+0x34>
   105a0:	e3530000 	cmp	r3, #0
   105a4:	0afffffa 	beq	10594 <frame_dummy+0x14>
   105a8:	e12fff33 	blx	r3
   105ac:	eafffff8 	b	10594 <frame_dummy+0x14>
   105b0:	0002239c 	.word	0x0002239c
   105b4:	00000000 	.word	0x00000000

000105b8 <main>:

#define MAX_LENGTH (10)
char buffer[MAX_LENGTH];

/* A pretty boring main file */
int main(void) {
   105b8:	e92d4800 	push	{fp, lr}
   105bc:	e28db004 	add	fp, sp, #4

#ifdef COURSE1
	course1();
   105c0:	eb00022a 	bl	10e70 <course1>

//  for ( i = 0; i < MAX_LENGTH; i++ ){
//    PRINTF("%c", buffer[i]);
//  }
//  PRINTF("\n");
  return 0;
   105c4:	e3a03000 	mov	r3, #0
}
   105c8:	e1a00003 	mov	r0, r3
   105cc:	e8bd8800 	pop	{fp, pc}

000105d0 <test_data1>:
#include "platform.h"
#include "memory.h"
#include "data.h"
#include "stats.h"

int8_t test_data1() {
   105d0:	e92d4800 	push	{fp, lr}
   105d4:	e28db004 	add	fp, sp, #4
   105d8:	e24dd010 	sub	sp, sp, #16
  uint8_t * ptr;
  int32_t num =  -4096;
   105dc:	e59f30a8 	ldr	r3, [pc, #168]	; 1068c <test_data1+0xbc>
   105e0:	e50b3008 	str	r3, [fp, #-8]
  uint32_t digits;
  int32_t value;

  PRINTF("\ntest_data1();\n");
   105e4:	e59f00a4 	ldr	r0, [pc, #164]	; 10690 <test_data1+0xc0>
   105e8:	ebffff99 	bl	10454 <puts@plt>

  ptr = (uint8_t*) reserve_words( DATA_SET_SIZE_W );
   105ec:	e3a0000a 	mov	r0, #10
   105f0:	eb000383 	bl	11404 <reserve_words>
   105f4:	e50b000c 	str	r0, [fp, #-12]

  if (! ptr )
   105f8:	e51b300c 	ldr	r3, [fp, #-12]
   105fc:	e3530000 	cmp	r3, #0
   10600:	1a000001 	bne	1060c <test_data1+0x3c>
  {
    return TEST_ERROR;
   10604:	e3a03001 	mov	r3, #1
   10608:	ea00001b 	b	1067c <test_data1+0xac>
  }

  digits = my_itoa( num, ptr, BASE_16); 
   1060c:	e51b0008 	ldr	r0, [fp, #-8]
   10610:	e51b100c 	ldr	r1, [fp, #-12]
   10614:	e3a02010 	mov	r2, #16
   10618:	eb0004a9 	bl	118c4 <my_itoa>
   1061c:	e1a03000 	mov	r3, r0
   10620:	e50b3010 	str	r3, [fp, #-16]
  value = my_atoi( ptr, digits, BASE_16);
   10624:	e51b3010 	ldr	r3, [fp, #-16]
   10628:	e6ef3073 	uxtb	r3, r3
   1062c:	e51b000c 	ldr	r0, [fp, #-12]
   10630:	e1a01003 	mov	r1, r3
   10634:	e3a02010 	mov	r2, #16
   10638:	eb0005a4 	bl	11cd0 <my_atoi>
   1063c:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
  #ifdef VERBOSE
  PRINTF("  Initial number: %d\n", num);
   10640:	e59f004c 	ldr	r0, [pc, #76]	; 10694 <test_data1+0xc4>
   10644:	e51b1008 	ldr	r1, [fp, #-8]
   10648:	ebffff78 	bl	10430 <printf@plt>
  PRINTF("  Final Decimal number: %d\n", value);
   1064c:	e59f0044 	ldr	r0, [pc, #68]	; 10698 <test_data1+0xc8>
   10650:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
   10654:	ebffff75 	bl	10430 <printf@plt>
  #endif
  free_words( (uint32_t*)ptr );
   10658:	e51b000c 	ldr	r0, [fp, #-12]
   1065c:	eb000379 	bl	11448 <free_words>

  if ( value != num )
   10660:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   10664:	e51b3008 	ldr	r3, [fp, #-8]
   10668:	e1520003 	cmp	r2, r3
   1066c:	0a000001 	beq	10678 <test_data1+0xa8>
  {
    return TEST_ERROR;
   10670:	e3a03001 	mov	r3, #1
   10674:	ea000000 	b	1067c <test_data1+0xac>
  }
  return TEST_NO_ERROR;
   10678:	e3a03000 	mov	r3, #0
   1067c:	e6af3073 	sxtb	r3, r3
}
   10680:	e1a00003 	mov	r0, r3
   10684:	e24bd004 	sub	sp, fp, #4
   10688:	e8bd8800 	pop	{fp, pc}
   1068c:	fffff000 	.word	0xfffff000
   10690:	00012134 	.word	0x00012134
   10694:	00012144 	.word	0x00012144
   10698:	0001215c 	.word	0x0001215c

0001069c <test_data2>:

int8_t test_data2() {
   1069c:	e92d4800 	push	{fp, lr}
   106a0:	e28db004 	add	fp, sp, #4
   106a4:	e24dd010 	sub	sp, sp, #16
  uint8_t * ptr;
  int32_t num = 123456;
   106a8:	e59f30b4 	ldr	r3, [pc, #180]	; 10764 <test_data2+0xc8>
   106ac:	e50b3008 	str	r3, [fp, #-8]
  uint32_t digits;
  int32_t value;

  PRINTF("test_data2():\n");
   106b0:	e59f00b0 	ldr	r0, [pc, #176]	; 10768 <test_data2+0xcc>
   106b4:	ebffff66 	bl	10454 <puts@plt>
  ptr = (uint8_t*) reserve_words( DATA_SET_SIZE_W );
   106b8:	e3a0000a 	mov	r0, #10
   106bc:	eb000350 	bl	11404 <reserve_words>
   106c0:	e50b000c 	str	r0, [fp, #-12]

  if (! ptr )
   106c4:	e51b300c 	ldr	r3, [fp, #-12]
   106c8:	e3530000 	cmp	r3, #0
   106cc:	1a000001 	bne	106d8 <test_data2+0x3c>
  {
    return TEST_ERROR;
   106d0:	e3a03001 	mov	r3, #1
   106d4:	ea00001e 	b	10754 <test_data2+0xb8>
  }

  digits = my_itoa( num, ptr, BASE_10);
   106d8:	e51b0008 	ldr	r0, [fp, #-8]
   106dc:	e51b100c 	ldr	r1, [fp, #-12]
   106e0:	e3a0200a 	mov	r2, #10
   106e4:	eb000476 	bl	118c4 <my_itoa>
   106e8:	e1a03000 	mov	r3, r0
   106ec:	e50b3010 	str	r3, [fp, #-16]
  value = my_atoi( ptr, digits, BASE_10);
   106f0:	e51b3010 	ldr	r3, [fp, #-16]
   106f4:	e6ef3073 	uxtb	r3, r3
   106f8:	e51b000c 	ldr	r0, [fp, #-12]
   106fc:	e1a01003 	mov	r1, r3
   10700:	e3a0200a 	mov	r2, #10
   10704:	eb000571 	bl	11cd0 <my_atoi>
   10708:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
  #ifdef VERBOSE
  PRINTF("  Initial Decimal number: %d\n", num);
   1070c:	e59f0058 	ldr	r0, [pc, #88]	; 1076c <test_data2+0xd0>
   10710:	e51b1008 	ldr	r1, [fp, #-8]
   10714:	ebffff45 	bl	10430 <printf@plt>
  PRINTF("  Converting String: %s\n",ptr);
   10718:	e59f0050 	ldr	r0, [pc, #80]	; 10770 <test_data2+0xd4>
   1071c:	e51b100c 	ldr	r1, [fp, #-12]
   10720:	ebffff42 	bl	10430 <printf@plt>
  PRINTF("  Final Decimal number: %d\n", value);
   10724:	e59f0048 	ldr	r0, [pc, #72]	; 10774 <test_data2+0xd8>
   10728:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
   1072c:	ebffff3f 	bl	10430 <printf@plt>
  #endif
  free_words( (uint32_t*)ptr );
   10730:	e51b000c 	ldr	r0, [fp, #-12]
   10734:	eb000343 	bl	11448 <free_words>

  if ( value != num )
   10738:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   1073c:	e51b3008 	ldr	r3, [fp, #-8]
   10740:	e1520003 	cmp	r2, r3
   10744:	0a000001 	beq	10750 <test_data2+0xb4>
  {
    return TEST_ERROR;
   10748:	e3a03001 	mov	r3, #1
   1074c:	ea000000 	b	10754 <test_data2+0xb8>
  }
  return TEST_NO_ERROR;
   10750:	e3a03000 	mov	r3, #0
   10754:	e6af3073 	sxtb	r3, r3
}
   10758:	e1a00003 	mov	r0, r3
   1075c:	e24bd004 	sub	sp, fp, #4
   10760:	e8bd8800 	pop	{fp, pc}
   10764:	0001e240 	.word	0x0001e240
   10768:	00012178 	.word	0x00012178
   1076c:	00012188 	.word	0x00012188
   10770:	000121a8 	.word	0x000121a8
   10774:	0001215c 	.word	0x0001215c

00010778 <test_memmove1>:

int8_t test_memmove1() {
   10778:	e92d4800 	push	{fp, lr}
   1077c:	e28db004 	add	fp, sp, #4
   10780:	e24dd010 	sub	sp, sp, #16
  uint8_t i;
  int8_t ret = TEST_NO_ERROR;
   10784:	e3a03000 	mov	r3, #0
   10788:	e54b3006 	strb	r3, [fp, #-6]
  uint8_t * set;
  uint8_t * ptra;
  uint8_t * ptrb;

  PRINTF("test_memmove1() - NO OVERLAP\n");
   1078c:	e59f00fc 	ldr	r0, [pc, #252]	; 10890 <test_memmove1+0x118>
   10790:	ebffff2f 	bl	10454 <puts@plt>
  set = (uint8_t*) reserve_words( MEM_SET_SIZE_W );
   10794:	e3a00040 	mov	r0, #64	; 0x40
   10798:	eb000319 	bl	11404 <reserve_words>
   1079c:	e50b000c 	str	r0, [fp, #-12]

  if (! set ) 
   107a0:	e51b300c 	ldr	r3, [fp, #-12]
   107a4:	e3530000 	cmp	r3, #0
   107a8:	1a000001 	bne	107b4 <test_memmove1+0x3c>
  {
    return TEST_ERROR;
   107ac:	e3a03001 	mov	r3, #1
   107b0:	ea000032 	b	10880 <test_memmove1+0x108>
  }
  
  ptra = &set[0];
   107b4:	e51b300c 	ldr	r3, [fp, #-12]
   107b8:	e50b3010 	str	r3, [fp, #-16]
  ptrb = &set[16];
   107bc:	e51b300c 	ldr	r3, [fp, #-12]
   107c0:	e2833010 	add	r3, r3, #16
   107c4:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
  
  /* Initialize the set to test values */
  for( i = 0; i < MEM_SET_SIZE_B; i++)
   107c8:	e3a03000 	mov	r3, #0
   107cc:	e54b3005 	strb	r3, [fp, #-5]
   107d0:	ea000007 	b	107f4 <test_memmove1+0x7c>
  {
    set[i] = i;
   107d4:	e55b3005 	ldrb	r3, [fp, #-5]
   107d8:	e51b200c 	ldr	r2, [fp, #-12]
   107dc:	e0823003 	add	r3, r2, r3
   107e0:	e55b2005 	ldrb	r2, [fp, #-5]
   107e4:	e5c32000 	strb	r2, [r3]
  
  ptra = &set[0];
  ptrb = &set[16];
  
  /* Initialize the set to test values */
  for( i = 0; i < MEM_SET_SIZE_B; i++)
   107e8:	e55b3005 	ldrb	r3, [fp, #-5]
   107ec:	e2833001 	add	r3, r3, #1
   107f0:	e54b3005 	strb	r3, [fp, #-5]
   107f4:	e55b3005 	ldrb	r3, [fp, #-5]
   107f8:	e353001f 	cmp	r3, #31
   107fc:	9afffff4 	bls	107d4 <test_memmove1+0x5c>
  {
    set[i] = i;
  }

  print_array(set, MEM_SET_SIZE_B);
   10800:	e51b000c 	ldr	r0, [fp, #-12]
   10804:	e3a01020 	mov	r1, #32
   10808:	eb000330 	bl	114d0 <print_array>
  my_memmove(ptra, ptrb, TEST_MEMMOVE_LENGTH);
   1080c:	e51b0010 	ldr	r0, [fp, #-16]
   10810:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
   10814:	e3a02010 	mov	r2, #16
   10818:	eb000224 	bl	110b0 <my_memmove>
  print_array(set, MEM_SET_SIZE_B);
   1081c:	e51b000c 	ldr	r0, [fp, #-12]
   10820:	e3a01020 	mov	r1, #32
   10824:	eb000329 	bl	114d0 <print_array>

  for (i = 0; i < TEST_MEMMOVE_LENGTH; i++)
   10828:	e3a03000 	mov	r3, #0
   1082c:	e54b3005 	strb	r3, [fp, #-5]
   10830:	ea00000c 	b	10868 <test_memmove1+0xf0>
  {
    if (set[i + 16] != i)
   10834:	e55b3005 	ldrb	r3, [fp, #-5]
   10838:	e2833010 	add	r3, r3, #16
   1083c:	e51b200c 	ldr	r2, [fp, #-12]
   10840:	e0823003 	add	r3, r2, r3
   10844:	e5d33000 	ldrb	r3, [r3]
   10848:	e55b2005 	ldrb	r2, [fp, #-5]
   1084c:	e1520003 	cmp	r2, r3
   10850:	0a000001 	beq	1085c <test_memmove1+0xe4>
    {
      ret = TEST_ERROR;
   10854:	e3a03001 	mov	r3, #1
   10858:	e54b3006 	strb	r3, [fp, #-6]

  print_array(set, MEM_SET_SIZE_B);
  my_memmove(ptra, ptrb, TEST_MEMMOVE_LENGTH);
  print_array(set, MEM_SET_SIZE_B);

  for (i = 0; i < TEST_MEMMOVE_LENGTH; i++)
   1085c:	e55b3005 	ldrb	r3, [fp, #-5]
   10860:	e2833001 	add	r3, r3, #1
   10864:	e54b3005 	strb	r3, [fp, #-5]
   10868:	e55b3005 	ldrb	r3, [fp, #-5]
   1086c:	e353000f 	cmp	r3, #15
   10870:	9affffef 	bls	10834 <test_memmove1+0xbc>
    {
      ret = TEST_ERROR;
    }
  }

  free_words( (uint32_t*)set );
   10874:	e51b000c 	ldr	r0, [fp, #-12]
   10878:	eb0002f2 	bl	11448 <free_words>

  return ret;
   1087c:	e55b3006 	ldrb	r3, [fp, #-6]
   10880:	e6af3073 	sxtb	r3, r3
}
   10884:	e1a00003 	mov	r0, r3
   10888:	e24bd004 	sub	sp, fp, #4
   1088c:	e8bd8800 	pop	{fp, pc}
   10890:	000121c4 	.word	0x000121c4

00010894 <test_memmove2>:

int8_t test_memmove2() {
   10894:	e92d4800 	push	{fp, lr}
   10898:	e28db004 	add	fp, sp, #4
   1089c:	e24dd010 	sub	sp, sp, #16
  uint8_t i;
  int8_t ret = TEST_NO_ERROR;
   108a0:	e3a03000 	mov	r3, #0
   108a4:	e54b3006 	strb	r3, [fp, #-6]
  uint8_t * set;
  uint8_t * ptra;
  uint8_t * ptrb;

  PRINTF("test_memmove2() -OVERLAP END OF SRC BEGINNING OF DST\n");
   108a8:	e59f00fc 	ldr	r0, [pc, #252]	; 109ac <test_memmove2+0x118>
   108ac:	ebfffee8 	bl	10454 <puts@plt>
  set = (uint8_t*) reserve_words(MEM_SET_SIZE_W);
   108b0:	e3a00040 	mov	r0, #64	; 0x40
   108b4:	eb0002d2 	bl	11404 <reserve_words>
   108b8:	e50b000c 	str	r0, [fp, #-12]

  if (! set )
   108bc:	e51b300c 	ldr	r3, [fp, #-12]
   108c0:	e3530000 	cmp	r3, #0
   108c4:	1a000001 	bne	108d0 <test_memmove2+0x3c>
  {
    return TEST_ERROR;
   108c8:	e3a03001 	mov	r3, #1
   108cc:	ea000032 	b	1099c <test_memmove2+0x108>
  }
  ptra = &set[0];
   108d0:	e51b300c 	ldr	r3, [fp, #-12]
   108d4:	e50b3010 	str	r3, [fp, #-16]
  ptrb = &set[8];
   108d8:	e51b300c 	ldr	r3, [fp, #-12]
   108dc:	e2833008 	add	r3, r3, #8
   108e0:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec

  /* Initialize the set to test values */
  for( i = 0; i < MEM_SET_SIZE_B; i++) {
   108e4:	e3a03000 	mov	r3, #0
   108e8:	e54b3005 	strb	r3, [fp, #-5]
   108ec:	ea000007 	b	10910 <test_memmove2+0x7c>
    set[i] = i;
   108f0:	e55b3005 	ldrb	r3, [fp, #-5]
   108f4:	e51b200c 	ldr	r2, [fp, #-12]
   108f8:	e0823003 	add	r3, r2, r3
   108fc:	e55b2005 	ldrb	r2, [fp, #-5]
   10900:	e5c32000 	strb	r2, [r3]
  }
  ptra = &set[0];
  ptrb = &set[8];

  /* Initialize the set to test values */
  for( i = 0; i < MEM_SET_SIZE_B; i++) {
   10904:	e55b3005 	ldrb	r3, [fp, #-5]
   10908:	e2833001 	add	r3, r3, #1
   1090c:	e54b3005 	strb	r3, [fp, #-5]
   10910:	e55b3005 	ldrb	r3, [fp, #-5]
   10914:	e353001f 	cmp	r3, #31
   10918:	9afffff4 	bls	108f0 <test_memmove2+0x5c>
    set[i] = i;
  }

  print_array(set, MEM_SET_SIZE_B);
   1091c:	e51b000c 	ldr	r0, [fp, #-12]
   10920:	e3a01020 	mov	r1, #32
   10924:	eb0002e9 	bl	114d0 <print_array>
  my_memmove(ptra, ptrb, TEST_MEMMOVE_LENGTH);
   10928:	e51b0010 	ldr	r0, [fp, #-16]
   1092c:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
   10930:	e3a02010 	mov	r2, #16
   10934:	eb0001dd 	bl	110b0 <my_memmove>
  print_array(set, MEM_SET_SIZE_B);
   10938:	e51b000c 	ldr	r0, [fp, #-12]
   1093c:	e3a01020 	mov	r1, #32
   10940:	eb0002e2 	bl	114d0 <print_array>
  for (i = 0; i < TEST_MEMMOVE_LENGTH; i++)
   10944:	e3a03000 	mov	r3, #0
   10948:	e54b3005 	strb	r3, [fp, #-5]
   1094c:	ea00000c 	b	10984 <test_memmove2+0xf0>
  {
    if (set[i + 8] != i)
   10950:	e55b3005 	ldrb	r3, [fp, #-5]
   10954:	e2833008 	add	r3, r3, #8
   10958:	e51b200c 	ldr	r2, [fp, #-12]
   1095c:	e0823003 	add	r3, r2, r3
   10960:	e5d33000 	ldrb	r3, [r3]
   10964:	e55b2005 	ldrb	r2, [fp, #-5]
   10968:	e1520003 	cmp	r2, r3
   1096c:	0a000001 	beq	10978 <test_memmove2+0xe4>
    {
      ret = TEST_ERROR;
   10970:	e3a03001 	mov	r3, #1
   10974:	e54b3006 	strb	r3, [fp, #-6]
  }

  print_array(set, MEM_SET_SIZE_B);
  my_memmove(ptra, ptrb, TEST_MEMMOVE_LENGTH);
  print_array(set, MEM_SET_SIZE_B);
  for (i = 0; i < TEST_MEMMOVE_LENGTH; i++)
   10978:	e55b3005 	ldrb	r3, [fp, #-5]
   1097c:	e2833001 	add	r3, r3, #1
   10980:	e54b3005 	strb	r3, [fp, #-5]
   10984:	e55b3005 	ldrb	r3, [fp, #-5]
   10988:	e353000f 	cmp	r3, #15
   1098c:	9affffef 	bls	10950 <test_memmove2+0xbc>
    {
      ret = TEST_ERROR;
    }
  }

  free_words( (uint32_t*)set );
   10990:	e51b000c 	ldr	r0, [fp, #-12]
   10994:	eb0002ab 	bl	11448 <free_words>
  return ret;
   10998:	e55b3006 	ldrb	r3, [fp, #-6]
   1099c:	e6af3073 	sxtb	r3, r3
}
   109a0:	e1a00003 	mov	r0, r3
   109a4:	e24bd004 	sub	sp, fp, #4
   109a8:	e8bd8800 	pop	{fp, pc}
   109ac:	000121e4 	.word	0x000121e4

000109b0 <test_memmove3>:

int8_t test_memmove3() {
   109b0:	e92d4800 	push	{fp, lr}
   109b4:	e28db004 	add	fp, sp, #4
   109b8:	e24dd010 	sub	sp, sp, #16
  uint8_t i;
  int8_t ret = TEST_NO_ERROR;
   109bc:	e3a03000 	mov	r3, #0
   109c0:	e54b3006 	strb	r3, [fp, #-6]
  uint8_t * set;
  uint8_t * ptra;
  uint8_t * ptrb;

  PRINTF("test_memove3() - OVERLAP END OF DEST BEGINNING OF SRC\n");
   109c4:	e59f0100 	ldr	r0, [pc, #256]	; 10acc <test_memmove3+0x11c>
   109c8:	ebfffea1 	bl	10454 <puts@plt>
  set = (uint8_t*)reserve_words( MEM_SET_SIZE_W);
   109cc:	e3a00040 	mov	r0, #64	; 0x40
   109d0:	eb00028b 	bl	11404 <reserve_words>
   109d4:	e50b000c 	str	r0, [fp, #-12]

  if (! set ) 
   109d8:	e51b300c 	ldr	r3, [fp, #-12]
   109dc:	e3530000 	cmp	r3, #0
   109e0:	1a000001 	bne	109ec <test_memmove3+0x3c>
  {
    return TEST_ERROR;
   109e4:	e3a03001 	mov	r3, #1
   109e8:	ea000033 	b	10abc <test_memmove3+0x10c>
  }
  ptra = &set[8];
   109ec:	e51b300c 	ldr	r3, [fp, #-12]
   109f0:	e2833008 	add	r3, r3, #8
   109f4:	e50b3010 	str	r3, [fp, #-16]
  ptrb = &set[0];
   109f8:	e51b300c 	ldr	r3, [fp, #-12]
   109fc:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec

  /* Initialize the set to test values */
  for( i = 0; i < MEM_SET_SIZE_B; i++)
   10a00:	e3a03000 	mov	r3, #0
   10a04:	e54b3005 	strb	r3, [fp, #-5]
   10a08:	ea000007 	b	10a2c <test_memmove3+0x7c>
  {
    set[i] = i;
   10a0c:	e55b3005 	ldrb	r3, [fp, #-5]
   10a10:	e51b200c 	ldr	r2, [fp, #-12]
   10a14:	e0823003 	add	r3, r2, r3
   10a18:	e55b2005 	ldrb	r2, [fp, #-5]
   10a1c:	e5c32000 	strb	r2, [r3]
  }
  ptra = &set[8];
  ptrb = &set[0];

  /* Initialize the set to test values */
  for( i = 0; i < MEM_SET_SIZE_B; i++)
   10a20:	e55b3005 	ldrb	r3, [fp, #-5]
   10a24:	e2833001 	add	r3, r3, #1
   10a28:	e54b3005 	strb	r3, [fp, #-5]
   10a2c:	e55b3005 	ldrb	r3, [fp, #-5]
   10a30:	e353001f 	cmp	r3, #31
   10a34:	9afffff4 	bls	10a0c <test_memmove3+0x5c>
  {
    set[i] = i;
  }

  print_array(set, MEM_SET_SIZE_B);
   10a38:	e51b000c 	ldr	r0, [fp, #-12]
   10a3c:	e3a01020 	mov	r1, #32
   10a40:	eb0002a2 	bl	114d0 <print_array>
  my_memmove(ptra, ptrb, TEST_MEMMOVE_LENGTH);
   10a44:	e51b0010 	ldr	r0, [fp, #-16]
   10a48:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
   10a4c:	e3a02010 	mov	r2, #16
   10a50:	eb000196 	bl	110b0 <my_memmove>
  print_array(set, MEM_SET_SIZE_B);
   10a54:	e51b000c 	ldr	r0, [fp, #-12]
   10a58:	e3a01020 	mov	r1, #32
   10a5c:	eb00029b 	bl	114d0 <print_array>

  for (i = 0; i < TEST_MEMMOVE_LENGTH; i++)
   10a60:	e3a03000 	mov	r3, #0
   10a64:	e54b3005 	strb	r3, [fp, #-5]
   10a68:	ea00000d 	b	10aa4 <test_memmove3+0xf4>
  {
    if (set[i] != (i + 8))
   10a6c:	e55b3005 	ldrb	r3, [fp, #-5]
   10a70:	e51b200c 	ldr	r2, [fp, #-12]
   10a74:	e0823003 	add	r3, r2, r3
   10a78:	e5d33000 	ldrb	r3, [r3]
   10a7c:	e1a02003 	mov	r2, r3
   10a80:	e55b3005 	ldrb	r3, [fp, #-5]
   10a84:	e2833008 	add	r3, r3, #8
   10a88:	e1520003 	cmp	r2, r3
   10a8c:	0a000001 	beq	10a98 <test_memmove3+0xe8>
    {
      ret = TEST_ERROR;
   10a90:	e3a03001 	mov	r3, #1
   10a94:	e54b3006 	strb	r3, [fp, #-6]

  print_array(set, MEM_SET_SIZE_B);
  my_memmove(ptra, ptrb, TEST_MEMMOVE_LENGTH);
  print_array(set, MEM_SET_SIZE_B);

  for (i = 0; i < TEST_MEMMOVE_LENGTH; i++)
   10a98:	e55b3005 	ldrb	r3, [fp, #-5]
   10a9c:	e2833001 	add	r3, r3, #1
   10aa0:	e54b3005 	strb	r3, [fp, #-5]
   10aa4:	e55b3005 	ldrb	r3, [fp, #-5]
   10aa8:	e353000f 	cmp	r3, #15
   10aac:	9affffee 	bls	10a6c <test_memmove3+0xbc>
      ret = TEST_ERROR;
    }
  }


  free_words( (uint32_t*)set );
   10ab0:	e51b000c 	ldr	r0, [fp, #-12]
   10ab4:	eb000263 	bl	11448 <free_words>
  return ret;
   10ab8:	e55b3006 	ldrb	r3, [fp, #-6]
   10abc:	e6af3073 	sxtb	r3, r3

}
   10ac0:	e1a00003 	mov	r0, r3
   10ac4:	e24bd004 	sub	sp, fp, #4
   10ac8:	e8bd8800 	pop	{fp, pc}
   10acc:	0001221c 	.word	0x0001221c

00010ad0 <test_memcopy>:

int8_t test_memcopy() {
   10ad0:	e92d4800 	push	{fp, lr}
   10ad4:	e28db004 	add	fp, sp, #4
   10ad8:	e24dd010 	sub	sp, sp, #16
  uint8_t i;
  int8_t ret = TEST_NO_ERROR;
   10adc:	e3a03000 	mov	r3, #0
   10ae0:	e54b3006 	strb	r3, [fp, #-6]
  uint8_t * set;
  uint8_t * ptra;
  uint8_t * ptrb;

  PRINTF("test_memcopy()\n");
   10ae4:	e59f00fc 	ldr	r0, [pc, #252]	; 10be8 <test_memcopy+0x118>
   10ae8:	ebfffe59 	bl	10454 <puts@plt>
  set = (uint8_t*) reserve_words(MEM_SET_SIZE_W);
   10aec:	e3a00040 	mov	r0, #64	; 0x40
   10af0:	eb000243 	bl	11404 <reserve_words>
   10af4:	e50b000c 	str	r0, [fp, #-12]

  if (! set ) 
   10af8:	e51b300c 	ldr	r3, [fp, #-12]
   10afc:	e3530000 	cmp	r3, #0
   10b00:	1a000001 	bne	10b0c <test_memcopy+0x3c>
  {
    return TEST_ERROR;
   10b04:	e3a03001 	mov	r3, #1
   10b08:	ea000032 	b	10bd8 <test_memcopy+0x108>
  }
  ptra = &set[0];
   10b0c:	e51b300c 	ldr	r3, [fp, #-12]
   10b10:	e50b3010 	str	r3, [fp, #-16]
  ptrb = &set[16];
   10b14:	e51b300c 	ldr	r3, [fp, #-12]
   10b18:	e2833010 	add	r3, r3, #16
   10b1c:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec

  /* Initialize the set to test values */
  for( i = 0; i < MEM_SET_SIZE_B; i++) {
   10b20:	e3a03000 	mov	r3, #0
   10b24:	e54b3005 	strb	r3, [fp, #-5]
   10b28:	ea000007 	b	10b4c <test_memcopy+0x7c>
    set[i] = i;
   10b2c:	e55b3005 	ldrb	r3, [fp, #-5]
   10b30:	e51b200c 	ldr	r2, [fp, #-12]
   10b34:	e0823003 	add	r3, r2, r3
   10b38:	e55b2005 	ldrb	r2, [fp, #-5]
   10b3c:	e5c32000 	strb	r2, [r3]
  }
  ptra = &set[0];
  ptrb = &set[16];

  /* Initialize the set to test values */
  for( i = 0; i < MEM_SET_SIZE_B; i++) {
   10b40:	e55b3005 	ldrb	r3, [fp, #-5]
   10b44:	e2833001 	add	r3, r3, #1
   10b48:	e54b3005 	strb	r3, [fp, #-5]
   10b4c:	e55b3005 	ldrb	r3, [fp, #-5]
   10b50:	e353001f 	cmp	r3, #31
   10b54:	9afffff4 	bls	10b2c <test_memcopy+0x5c>
    set[i] = i;
  }

  print_array(set, MEM_SET_SIZE_B);
   10b58:	e51b000c 	ldr	r0, [fp, #-12]
   10b5c:	e3a01020 	mov	r1, #32
   10b60:	eb00025a 	bl	114d0 <print_array>
  my_memcopy(ptra, ptrb, TEST_MEMMOVE_LENGTH);
   10b64:	e51b0010 	ldr	r0, [fp, #-16]
   10b68:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
   10b6c:	e3a02010 	mov	r2, #16
   10b70:	eb00018d 	bl	111ac <my_memcopy>
  print_array(set, MEM_SET_SIZE_B);
   10b74:	e51b000c 	ldr	r0, [fp, #-12]
   10b78:	e3a01020 	mov	r1, #32
   10b7c:	eb000253 	bl	114d0 <print_array>

  for (i = 0; i < TEST_MEMMOVE_LENGTH; i++)
   10b80:	e3a03000 	mov	r3, #0
   10b84:	e54b3005 	strb	r3, [fp, #-5]
   10b88:	ea00000c 	b	10bc0 <test_memcopy+0xf0>
  {
    if (set[i+16] != i)
   10b8c:	e55b3005 	ldrb	r3, [fp, #-5]
   10b90:	e2833010 	add	r3, r3, #16
   10b94:	e51b200c 	ldr	r2, [fp, #-12]
   10b98:	e0823003 	add	r3, r2, r3
   10b9c:	e5d33000 	ldrb	r3, [r3]
   10ba0:	e55b2005 	ldrb	r2, [fp, #-5]
   10ba4:	e1520003 	cmp	r2, r3
   10ba8:	0a000001 	beq	10bb4 <test_memcopy+0xe4>
    {
      ret = TEST_ERROR;
   10bac:	e3a03001 	mov	r3, #1
   10bb0:	e54b3006 	strb	r3, [fp, #-6]

  print_array(set, MEM_SET_SIZE_B);
  my_memcopy(ptra, ptrb, TEST_MEMMOVE_LENGTH);
  print_array(set, MEM_SET_SIZE_B);

  for (i = 0; i < TEST_MEMMOVE_LENGTH; i++)
   10bb4:	e55b3005 	ldrb	r3, [fp, #-5]
   10bb8:	e2833001 	add	r3, r3, #1
   10bbc:	e54b3005 	strb	r3, [fp, #-5]
   10bc0:	e55b3005 	ldrb	r3, [fp, #-5]
   10bc4:	e353000f 	cmp	r3, #15
   10bc8:	9affffef 	bls	10b8c <test_memcopy+0xbc>
    {
      ret = TEST_ERROR;
    }
  }

  free_words( (uint32_t*)set );
   10bcc:	e51b000c 	ldr	r0, [fp, #-12]
   10bd0:	eb00021c 	bl	11448 <free_words>
  return ret;
   10bd4:	e55b3006 	ldrb	r3, [fp, #-6]
   10bd8:	e6af3073 	sxtb	r3, r3
}
   10bdc:	e1a00003 	mov	r0, r3
   10be0:	e24bd004 	sub	sp, fp, #4
   10be4:	e8bd8800 	pop	{fp, pc}
   10be8:	00012254 	.word	0x00012254

00010bec <test_memset>:

int8_t test_memset() 
{
   10bec:	e92d4800 	push	{fp, lr}
   10bf0:	e28db004 	add	fp, sp, #4
   10bf4:	e24dd010 	sub	sp, sp, #16
  uint8_t i;
  uint8_t ret = TEST_NO_ERROR;
   10bf8:	e3a03000 	mov	r3, #0
   10bfc:	e54b3006 	strb	r3, [fp, #-6]
  uint8_t * set;
  uint8_t * ptra;
  uint8_t * ptrb;

  PRINTF("test_memset()\n");
   10c00:	e59f0134 	ldr	r0, [pc, #308]	; 10d3c <test_memset+0x150>
   10c04:	ebfffe12 	bl	10454 <puts@plt>
  set = (uint8_t*)reserve_words(MEM_SET_SIZE_W);
   10c08:	e3a00040 	mov	r0, #64	; 0x40
   10c0c:	eb0001fc 	bl	11404 <reserve_words>
   10c10:	e50b000c 	str	r0, [fp, #-12]
  if (! set )
   10c14:	e51b300c 	ldr	r3, [fp, #-12]
   10c18:	e3530000 	cmp	r3, #0
   10c1c:	1a000001 	bne	10c28 <test_memset+0x3c>
  {
    return TEST_ERROR;
   10c20:	e3a03001 	mov	r3, #1
   10c24:	ea000040 	b	10d2c <test_memset+0x140>
  }
  ptra = &set[0];
   10c28:	e51b300c 	ldr	r3, [fp, #-12]
   10c2c:	e50b3010 	str	r3, [fp, #-16]
  ptrb = &set[16];
   10c30:	e51b300c 	ldr	r3, [fp, #-12]
   10c34:	e2833010 	add	r3, r3, #16
   10c38:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec

  /* Initialize the set to test values */
  for( i = 0; i < MEM_SET_SIZE_B; i++) 
   10c3c:	e3a03000 	mov	r3, #0
   10c40:	e54b3005 	strb	r3, [fp, #-5]
   10c44:	ea000007 	b	10c68 <test_memset+0x7c>
  {
    set[i] = i;
   10c48:	e55b3005 	ldrb	r3, [fp, #-5]
   10c4c:	e51b200c 	ldr	r2, [fp, #-12]
   10c50:	e0823003 	add	r3, r2, r3
   10c54:	e55b2005 	ldrb	r2, [fp, #-5]
   10c58:	e5c32000 	strb	r2, [r3]
  }
  ptra = &set[0];
  ptrb = &set[16];

  /* Initialize the set to test values */
  for( i = 0; i < MEM_SET_SIZE_B; i++) 
   10c5c:	e55b3005 	ldrb	r3, [fp, #-5]
   10c60:	e2833001 	add	r3, r3, #1
   10c64:	e54b3005 	strb	r3, [fp, #-5]
   10c68:	e55b3005 	ldrb	r3, [fp, #-5]
   10c6c:	e353001f 	cmp	r3, #31
   10c70:	9afffff4 	bls	10c48 <test_memset+0x5c>
  {
    set[i] = i;
  }

  print_array(set, MEM_SET_SIZE_B);
   10c74:	e51b000c 	ldr	r0, [fp, #-12]
   10c78:	e3a01020 	mov	r1, #32
   10c7c:	eb000213 	bl	114d0 <print_array>
  my_memset(ptra, MEM_SET_SIZE_B, 0xFF);
   10c80:	e51b0010 	ldr	r0, [fp, #-16]
   10c84:	e3a01020 	mov	r1, #32
   10c88:	e3a020ff 	mov	r2, #255	; 0xff
   10c8c:	eb000167 	bl	11230 <my_memset>
  print_array(set, MEM_SET_SIZE_B);
   10c90:	e51b000c 	ldr	r0, [fp, #-12]
   10c94:	e3a01020 	mov	r1, #32
   10c98:	eb00020c 	bl	114d0 <print_array>
  my_memzero(ptrb, MEM_ZERO_LENGTH);
   10c9c:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
   10ca0:	e3a01010 	mov	r1, #16
   10ca4:	eb000180 	bl	112ac <my_memzero>
  print_array(set, MEM_SET_SIZE_B);
   10ca8:	e51b000c 	ldr	r0, [fp, #-12]
   10cac:	e3a01020 	mov	r1, #32
   10cb0:	eb000206 	bl	114d0 <print_array>
  
  /* Validate Set & Zero Functionality */
  for (i = 0; i < MEM_ZERO_LENGTH; i++)
   10cb4:	e3a03000 	mov	r3, #0
   10cb8:	e54b3005 	strb	r3, [fp, #-5]
   10cbc:	ea000014 	b	10d14 <test_memset+0x128>
  {
    if (set[i] != 0xFF)
   10cc0:	e55b3005 	ldrb	r3, [fp, #-5]
   10cc4:	e51b200c 	ldr	r2, [fp, #-12]
   10cc8:	e0823003 	add	r3, r2, r3
   10ccc:	e5d33000 	ldrb	r3, [r3]
   10cd0:	e35300ff 	cmp	r3, #255	; 0xff
   10cd4:	0a000001 	beq	10ce0 <test_memset+0xf4>
    {
      ret = TEST_ERROR;
   10cd8:	e3a03001 	mov	r3, #1
   10cdc:	e54b3006 	strb	r3, [fp, #-6]
    }
    if (set[16 + i] != 0)
   10ce0:	e55b3005 	ldrb	r3, [fp, #-5]
   10ce4:	e2833010 	add	r3, r3, #16
   10ce8:	e1a02003 	mov	r2, r3
   10cec:	e51b300c 	ldr	r3, [fp, #-12]
   10cf0:	e0833002 	add	r3, r3, r2
   10cf4:	e5d33000 	ldrb	r3, [r3]
   10cf8:	e3530000 	cmp	r3, #0
   10cfc:	0a000001 	beq	10d08 <test_memset+0x11c>
    {
      ret = TEST_ERROR;
   10d00:	e3a03001 	mov	r3, #1
   10d04:	e54b3006 	strb	r3, [fp, #-6]
  print_array(set, MEM_SET_SIZE_B);
  my_memzero(ptrb, MEM_ZERO_LENGTH);
  print_array(set, MEM_SET_SIZE_B);
  
  /* Validate Set & Zero Functionality */
  for (i = 0; i < MEM_ZERO_LENGTH; i++)
   10d08:	e55b3005 	ldrb	r3, [fp, #-5]
   10d0c:	e2833001 	add	r3, r3, #1
   10d10:	e54b3005 	strb	r3, [fp, #-5]
   10d14:	e55b3005 	ldrb	r3, [fp, #-5]
   10d18:	e353000f 	cmp	r3, #15
   10d1c:	9affffe7 	bls	10cc0 <test_memset+0xd4>
    {
      ret = TEST_ERROR;
    }
  }
  
  free_words( (uint32_t*)set );
   10d20:	e51b000c 	ldr	r0, [fp, #-12]
   10d24:	eb0001c7 	bl	11448 <free_words>
  return ret;
   10d28:	e55b3006 	ldrb	r3, [fp, #-6]
   10d2c:	e6af3073 	sxtb	r3, r3
}
   10d30:	e1a00003 	mov	r0, r3
   10d34:	e24bd004 	sub	sp, fp, #4
   10d38:	e8bd8800 	pop	{fp, pc}
   10d3c:	00012264 	.word	0x00012264

00010d40 <test_reverse>:

int8_t test_reverse()
{
   10d40:	e92d4800 	push	{fp, lr}
   10d44:	e28db004 	add	fp, sp, #4
   10d48:	e24dd028 	sub	sp, sp, #40	; 0x28
  uint8_t i;
  int8_t ret = TEST_NO_ERROR;
   10d4c:	e3a03000 	mov	r3, #0
   10d50:	e54b3006 	strb	r3, [fp, #-6]
  uint8_t * copy;
  uint8_t set[MEM_SET_SIZE_B] = {0x3F, 0x73, 0x72, 0x33, 0x54, 0x43, 0x72, 0x26,
   10d54:	e59f310c 	ldr	r3, [pc, #268]	; 10e68 <test_reverse+0x128>
   10d58:	e24bc02c 	sub	ip, fp, #44	; 0x2c
   10d5c:	e1a0e003 	mov	lr, r3
   10d60:	e59e0000 	ldr	r0, [lr]
   10d64:	e59e1004 	ldr	r1, [lr, #4]
   10d68:	e59e2008 	ldr	r2, [lr, #8]
   10d6c:	e59e300c 	ldr	r3, [lr, #12]
   10d70:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
   10d74:	e59e0010 	ldr	r0, [lr, #16]
   10d78:	e59e1014 	ldr	r1, [lr, #20]
   10d7c:	e59e2018 	ldr	r2, [lr, #24]
   10d80:	e59e301c 	ldr	r3, [lr, #28]
   10d84:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
                                 0x48, 0x63, 0x20, 0x66, 0x6F, 0x00, 0x20, 0x33,
                                 0x72, 0x75, 0x74, 0x78, 0x21, 0x4D, 0x20, 0x40,
                                 0x20, 0x24, 0x7C, 0x20, 0x24, 0x69, 0x68, 0x54
                               };

  PRINTF("test_reverse()\n");
   10d88:	e59f00dc 	ldr	r0, [pc, #220]	; 10e6c <test_reverse+0x12c>
   10d8c:	ebfffdb0 	bl	10454 <puts@plt>
  copy = (uint8_t*)reserve_words(MEM_SET_SIZE_W);
   10d90:	e3a00040 	mov	r0, #64	; 0x40
   10d94:	eb00019a 	bl	11404 <reserve_words>
   10d98:	e50b000c 	str	r0, [fp, #-12]
  if (! copy )
   10d9c:	e51b300c 	ldr	r3, [fp, #-12]
   10da0:	e3530000 	cmp	r3, #0
   10da4:	1a000001 	bne	10db0 <test_reverse+0x70>
  {
    return TEST_ERROR;
   10da8:	e3a03001 	mov	r3, #1
   10dac:	ea000029 	b	10e58 <test_reverse+0x118>
  }
  
  my_memcopy(set, copy, MEM_SET_SIZE_B);
   10db0:	e24b302c 	sub	r3, fp, #44	; 0x2c
   10db4:	e1a00003 	mov	r0, r3
   10db8:	e51b100c 	ldr	r1, [fp, #-12]
   10dbc:	e3a02020 	mov	r2, #32
   10dc0:	eb0000f9 	bl	111ac <my_memcopy>

  print_array(set, MEM_SET_SIZE_B);
   10dc4:	e24b302c 	sub	r3, fp, #44	; 0x2c
   10dc8:	e1a00003 	mov	r0, r3
   10dcc:	e3a01020 	mov	r1, #32
   10dd0:	eb0001be 	bl	114d0 <print_array>
  my_reverse(set, MEM_SET_SIZE_B);
   10dd4:	e24b302c 	sub	r3, fp, #44	; 0x2c
   10dd8:	e1a00003 	mov	r0, r3
   10ddc:	e3a01020 	mov	r1, #32
   10de0:	eb00014e 	bl	11320 <my_reverse>
  print_array(set, MEM_SET_SIZE_B);
   10de4:	e24b302c 	sub	r3, fp, #44	; 0x2c
   10de8:	e1a00003 	mov	r0, r3
   10dec:	e3a01020 	mov	r1, #32
   10df0:	eb0001b6 	bl	114d0 <print_array>

  for (i = 0; i < MEM_SET_SIZE_B; i++)
   10df4:	e3a03000 	mov	r3, #0
   10df8:	e54b3005 	strb	r3, [fp, #-5]
   10dfc:	ea00000f 	b	10e40 <test_reverse+0x100>
  {
    if (set[i] != copy[MEM_SET_SIZE_B - i - 1])
   10e00:	e55b3005 	ldrb	r3, [fp, #-5]
   10e04:	e24b2004 	sub	r2, fp, #4
   10e08:	e0823003 	add	r3, r2, r3
   10e0c:	e5532028 	ldrb	r2, [r3, #-40]	; 0xffffffd8
   10e10:	e55b3005 	ldrb	r3, [fp, #-5]
   10e14:	e263301f 	rsb	r3, r3, #31
   10e18:	e51b100c 	ldr	r1, [fp, #-12]
   10e1c:	e0813003 	add	r3, r1, r3
   10e20:	e5d33000 	ldrb	r3, [r3]
   10e24:	e1520003 	cmp	r2, r3
   10e28:	0a000001 	beq	10e34 <test_reverse+0xf4>
    {
      ret = TEST_ERROR;
   10e2c:	e3a03001 	mov	r3, #1
   10e30:	e54b3006 	strb	r3, [fp, #-6]

  print_array(set, MEM_SET_SIZE_B);
  my_reverse(set, MEM_SET_SIZE_B);
  print_array(set, MEM_SET_SIZE_B);

  for (i = 0; i < MEM_SET_SIZE_B; i++)
   10e34:	e55b3005 	ldrb	r3, [fp, #-5]
   10e38:	e2833001 	add	r3, r3, #1
   10e3c:	e54b3005 	strb	r3, [fp, #-5]
   10e40:	e55b3005 	ldrb	r3, [fp, #-5]
   10e44:	e353001f 	cmp	r3, #31
   10e48:	9affffec 	bls	10e00 <test_reverse+0xc0>
    {
      ret = TEST_ERROR;
    }
  }

  free_words( (uint32_t*)copy );
   10e4c:	e51b000c 	ldr	r0, [fp, #-12]
   10e50:	eb00017c 	bl	11448 <free_words>
  return ret;
   10e54:	e55b3006 	ldrb	r3, [fp, #-6]
   10e58:	e6af3073 	sxtb	r3, r3
}
   10e5c:	e1a00003 	mov	r0, r3
   10e60:	e24bd004 	sub	sp, fp, #4
   10e64:	e8bd8800 	pop	{fp, pc}
   10e68:	00012284 	.word	0x00012284
   10e6c:	00012274 	.word	0x00012274

00010e70 <course1>:

void course1(void) 
{
   10e70:	e92d4800 	push	{fp, lr}
   10e74:	e28db004 	add	fp, sp, #4
   10e78:	e24dd010 	sub	sp, sp, #16
  uint8_t i;
  int8_t failed = 0;
   10e7c:	e3a03000 	mov	r3, #0
   10e80:	e54b3006 	strb	r3, [fp, #-6]
  int8_t results[TESTCOUNT];

  results[0] = test_data1();
   10e84:	ebfffdd1 	bl	105d0 <test_data1>
   10e88:	e1a03000 	mov	r3, r0
   10e8c:	e54b3010 	strb	r3, [fp, #-16]
  results[1] = test_data2();
   10e90:	ebfffe01 	bl	1069c <test_data2>
   10e94:	e1a03000 	mov	r3, r0
   10e98:	e54b300f 	strb	r3, [fp, #-15]
  results[2] = test_memmove1();
   10e9c:	ebfffe35 	bl	10778 <test_memmove1>
   10ea0:	e1a03000 	mov	r3, r0
   10ea4:	e54b300e 	strb	r3, [fp, #-14]
  results[3] = test_memmove2();
   10ea8:	ebfffe79 	bl	10894 <test_memmove2>
   10eac:	e1a03000 	mov	r3, r0
   10eb0:	e54b300d 	strb	r3, [fp, #-13]
  results[4] = test_memmove3();
   10eb4:	ebfffebd 	bl	109b0 <test_memmove3>
   10eb8:	e1a03000 	mov	r3, r0
   10ebc:	e54b300c 	strb	r3, [fp, #-12]
  results[5] = test_memcopy();
   10ec0:	ebffff02 	bl	10ad0 <test_memcopy>
   10ec4:	e1a03000 	mov	r3, r0
   10ec8:	e54b300b 	strb	r3, [fp, #-11]
  results[6] = test_memset();
   10ecc:	ebffff46 	bl	10bec <test_memset>
   10ed0:	e1a03000 	mov	r3, r0
   10ed4:	e54b300a 	strb	r3, [fp, #-10]
  results[7] = test_reverse();
   10ed8:	ebffff98 	bl	10d40 <test_reverse>
   10edc:	e1a03000 	mov	r3, r0
   10ee0:	e54b3009 	strb	r3, [fp, #-9]

  for ( i = 0; i < TESTCOUNT; i++) 
   10ee4:	e3a03000 	mov	r3, #0
   10ee8:	e54b3005 	strb	r3, [fp, #-5]
   10eec:	ea00000b 	b	10f20 <course1+0xb0>
  {
    failed += results[i];
   10ef0:	e55b3005 	ldrb	r3, [fp, #-5]
   10ef4:	e24b2004 	sub	r2, fp, #4
   10ef8:	e0823003 	add	r3, r2, r3
   10efc:	e553300c 	ldrb	r3, [r3, #-12]
   10f00:	e6ef2073 	uxtb	r2, r3
   10f04:	e55b3006 	ldrb	r3, [fp, #-6]
   10f08:	e0823003 	add	r3, r2, r3
   10f0c:	e6ef3073 	uxtb	r3, r3
   10f10:	e54b3006 	strb	r3, [fp, #-6]
  results[4] = test_memmove3();
  results[5] = test_memcopy();
  results[6] = test_memset();
  results[7] = test_reverse();

  for ( i = 0; i < TESTCOUNT; i++) 
   10f14:	e55b3005 	ldrb	r3, [fp, #-5]
   10f18:	e2833001 	add	r3, r3, #1
   10f1c:	e54b3005 	strb	r3, [fp, #-5]
   10f20:	e55b3005 	ldrb	r3, [fp, #-5]
   10f24:	e3530007 	cmp	r3, #7
   10f28:	9afffff0 	bls	10ef0 <course1+0x80>
  {
    failed += results[i];
  }

  PRINTF("--------------------------------\n");
   10f2c:	e59f0044 	ldr	r0, [pc, #68]	; 10f78 <course1+0x108>
   10f30:	ebfffd47 	bl	10454 <puts@plt>
  PRINTF("Test Results:\n");
   10f34:	e59f0040 	ldr	r0, [pc, #64]	; 10f7c <course1+0x10c>
   10f38:	ebfffd45 	bl	10454 <puts@plt>
  PRINTF("  PASSED: %d / %d\n", (TESTCOUNT - failed), TESTCOUNT);
   10f3c:	e15b30d6 	ldrsb	r3, [fp, #-6]
   10f40:	e2633008 	rsb	r3, r3, #8
   10f44:	e59f0034 	ldr	r0, [pc, #52]	; 10f80 <course1+0x110>
   10f48:	e1a01003 	mov	r1, r3
   10f4c:	e3a02008 	mov	r2, #8
   10f50:	ebfffd36 	bl	10430 <printf@plt>
  PRINTF("  FAILED: %d / %d\n", failed, TESTCOUNT);
   10f54:	e15b30d6 	ldrsb	r3, [fp, #-6]
   10f58:	e59f0024 	ldr	r0, [pc, #36]	; 10f84 <course1+0x114>
   10f5c:	e1a01003 	mov	r1, r3
   10f60:	e3a02008 	mov	r2, #8
   10f64:	ebfffd31 	bl	10430 <printf@plt>
  PRINTF("--------------------------------\n");
   10f68:	e59f0008 	ldr	r0, [pc, #8]	; 10f78 <course1+0x108>
   10f6c:	ebfffd38 	bl	10454 <puts@plt>

}
   10f70:	e24bd004 	sub	sp, fp, #4
   10f74:	e8bd8800 	pop	{fp, pc}
   10f78:	000122a4 	.word	0x000122a4
   10f7c:	000122c8 	.word	0x000122c8
   10f80:	000122d8 	.word	0x000122d8
   10f84:	000122ec 	.word	0x000122ec

00010f88 <set_value>:
#include "memory.h"

/***********************************************************
 Function Definitions
***********************************************************/
void set_value(char * ptr, unsigned int index, char value){
   10f88:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   10f8c:	e28db000 	add	fp, sp, #0
   10f90:	e24dd014 	sub	sp, sp, #20
   10f94:	e50b0008 	str	r0, [fp, #-8]
   10f98:	e50b100c 	str	r1, [fp, #-12]
   10f9c:	e1a03002 	mov	r3, r2
   10fa0:	e54b300d 	strb	r3, [fp, #-13]
  ptr[index] = value;
   10fa4:	e51b2008 	ldr	r2, [fp, #-8]
   10fa8:	e51b300c 	ldr	r3, [fp, #-12]
   10fac:	e0823003 	add	r3, r2, r3
   10fb0:	e55b200d 	ldrb	r2, [fp, #-13]
   10fb4:	e5c32000 	strb	r2, [r3]
}
   10fb8:	e24bd000 	sub	sp, fp, #0
   10fbc:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
   10fc0:	e12fff1e 	bx	lr

00010fc4 <clear_value>:

void clear_value(char * ptr, unsigned int index){
   10fc4:	e92d4800 	push	{fp, lr}
   10fc8:	e28db004 	add	fp, sp, #4
   10fcc:	e24dd008 	sub	sp, sp, #8
   10fd0:	e50b0008 	str	r0, [fp, #-8]
   10fd4:	e50b100c 	str	r1, [fp, #-12]
  set_value(ptr, index, 0);
   10fd8:	e51b0008 	ldr	r0, [fp, #-8]
   10fdc:	e51b100c 	ldr	r1, [fp, #-12]
   10fe0:	e3a02000 	mov	r2, #0
   10fe4:	ebffffe7 	bl	10f88 <set_value>
}
   10fe8:	e24bd004 	sub	sp, fp, #4
   10fec:	e8bd8800 	pop	{fp, pc}

00010ff0 <get_value>:

char get_value(char * ptr, unsigned int index){
   10ff0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   10ff4:	e28db000 	add	fp, sp, #0
   10ff8:	e24dd00c 	sub	sp, sp, #12
   10ffc:	e50b0008 	str	r0, [fp, #-8]
   11000:	e50b100c 	str	r1, [fp, #-12]
  return ptr[index];
   11004:	e51b2008 	ldr	r2, [fp, #-8]
   11008:	e51b300c 	ldr	r3, [fp, #-12]
   1100c:	e0823003 	add	r3, r2, r3
   11010:	e5d33000 	ldrb	r3, [r3]
}
   11014:	e1a00003 	mov	r0, r3
   11018:	e24bd000 	sub	sp, fp, #0
   1101c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
   11020:	e12fff1e 	bx	lr

00011024 <set_all>:

void set_all(char * ptr, char value, unsigned int size){
   11024:	e92d4800 	push	{fp, lr}
   11028:	e28db004 	add	fp, sp, #4
   1102c:	e24dd018 	sub	sp, sp, #24
   11030:	e50b0010 	str	r0, [fp, #-16]
   11034:	e1a03001 	mov	r3, r1
   11038:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
   1103c:	e54b3011 	strb	r3, [fp, #-17]	; 0xffffffef
  unsigned int i;
  for(i = 0; i < size; i++) {
   11040:	e3a03000 	mov	r3, #0
   11044:	e50b3008 	str	r3, [fp, #-8]
   11048:	ea000007 	b	1106c <set_all+0x48>
    set_value(ptr, i, value);
   1104c:	e55b3011 	ldrb	r3, [fp, #-17]	; 0xffffffef
   11050:	e51b0010 	ldr	r0, [fp, #-16]
   11054:	e51b1008 	ldr	r1, [fp, #-8]
   11058:	e1a02003 	mov	r2, r3
   1105c:	ebffffc9 	bl	10f88 <set_value>
  return ptr[index];
}

void set_all(char * ptr, char value, unsigned int size){
  unsigned int i;
  for(i = 0; i < size; i++) {
   11060:	e51b3008 	ldr	r3, [fp, #-8]
   11064:	e2833001 	add	r3, r3, #1
   11068:	e50b3008 	str	r3, [fp, #-8]
   1106c:	e51b2008 	ldr	r2, [fp, #-8]
   11070:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   11074:	e1520003 	cmp	r2, r3
   11078:	3afffff3 	bcc	1104c <set_all+0x28>
    set_value(ptr, i, value);
  }
}
   1107c:	e24bd004 	sub	sp, fp, #4
   11080:	e8bd8800 	pop	{fp, pc}

00011084 <clear_all>:

void clear_all(char * ptr, unsigned int size){
   11084:	e92d4800 	push	{fp, lr}
   11088:	e28db004 	add	fp, sp, #4
   1108c:	e24dd008 	sub	sp, sp, #8
   11090:	e50b0008 	str	r0, [fp, #-8]
   11094:	e50b100c 	str	r1, [fp, #-12]
  set_all(ptr, 0, size);
   11098:	e51b0008 	ldr	r0, [fp, #-8]
   1109c:	e3a01000 	mov	r1, #0
   110a0:	e51b200c 	ldr	r2, [fp, #-12]
   110a4:	ebffffde 	bl	11024 <set_all>
}
   110a8:	e24bd004 	sub	sp, fp, #4
   110ac:	e8bd8800 	pop	{fp, pc}

000110b0 <my_memmove>:

uint8_t* my_memmove(uint8_t *src, uint8_t *dst, size_t length){
   110b0:	e92d4800 	push	{fp, lr}
   110b4:	e28db004 	add	fp, sp, #4
   110b8:	e24dd018 	sub	sp, sp, #24
   110bc:	e50b0010 	str	r0, [fp, #-16]
   110c0:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
   110c4:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
	int8_t  pos=0U;
   110c8:	e3a03000 	mov	r3, #0
   110cc:	e54b3005 	strb	r3, [fp, #-5]
	uint32_t *temp;

	temp=(uint32_t*)malloc(sizeof *temp * length);
   110d0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   110d4:	e1a03103 	lsl	r3, r3, #2
   110d8:	e1a00003 	mov	r0, r3
   110dc:	ebfffcdf 	bl	10460 <malloc@plt>
   110e0:	e1a03000 	mov	r3, r0
   110e4:	e50b300c 	str	r3, [fp, #-12]
 for(pos=0;pos<length;pos++)
   110e8:	e3a03000 	mov	r3, #0
   110ec:	e54b3005 	strb	r3, [fp, #-5]
   110f0:	ea00000d 	b	1112c <my_memmove+0x7c>
	*(temp+pos)=*(src+pos);
   110f4:	e15b30d5 	ldrsb	r3, [fp, #-5]
   110f8:	e1a03103 	lsl	r3, r3, #2
   110fc:	e51b200c 	ldr	r2, [fp, #-12]
   11100:	e0823003 	add	r3, r2, r3
   11104:	e15b20d5 	ldrsb	r2, [fp, #-5]
   11108:	e51b1010 	ldr	r1, [fp, #-16]
   1110c:	e0812002 	add	r2, r1, r2
   11110:	e5d22000 	ldrb	r2, [r2]
   11114:	e5832000 	str	r2, [r3]
uint8_t* my_memmove(uint8_t *src, uint8_t *dst, size_t length){
	int8_t  pos=0U;
	uint32_t *temp;

	temp=(uint32_t*)malloc(sizeof *temp * length);
 for(pos=0;pos<length;pos++)
   11118:	e55b3005 	ldrb	r3, [fp, #-5]
   1111c:	e6ef3073 	uxtb	r3, r3
   11120:	e2833001 	add	r3, r3, #1
   11124:	e6ef3073 	uxtb	r3, r3
   11128:	e54b3005 	strb	r3, [fp, #-5]
   1112c:	e15b20d5 	ldrsb	r2, [fp, #-5]
   11130:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   11134:	e1520003 	cmp	r2, r3
   11138:	3affffed 	bcc	110f4 <my_memmove+0x44>
	*(temp+pos)=*(src+pos);

 for(pos=0;pos<length;pos++)
   1113c:	e3a03000 	mov	r3, #0
   11140:	e54b3005 	strb	r3, [fp, #-5]
   11144:	ea00000e 	b	11184 <my_memmove+0xd4>
	*(dst+pos)=*(temp+pos);
   11148:	e15b30d5 	ldrsb	r3, [fp, #-5]
   1114c:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   11150:	e0823003 	add	r3, r2, r3
   11154:	e15b20d5 	ldrsb	r2, [fp, #-5]
   11158:	e1a02102 	lsl	r2, r2, #2
   1115c:	e51b100c 	ldr	r1, [fp, #-12]
   11160:	e0812002 	add	r2, r1, r2
   11164:	e5922000 	ldr	r2, [r2]
   11168:	e6ef2072 	uxtb	r2, r2
   1116c:	e5c32000 	strb	r2, [r3]

	temp=(uint32_t*)malloc(sizeof *temp * length);
 for(pos=0;pos<length;pos++)
	*(temp+pos)=*(src+pos);

 for(pos=0;pos<length;pos++)
   11170:	e55b3005 	ldrb	r3, [fp, #-5]
   11174:	e6ef3073 	uxtb	r3, r3
   11178:	e2833001 	add	r3, r3, #1
   1117c:	e6ef3073 	uxtb	r3, r3
   11180:	e54b3005 	strb	r3, [fp, #-5]
   11184:	e15b20d5 	ldrsb	r2, [fp, #-5]
   11188:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   1118c:	e1520003 	cmp	r2, r3
   11190:	3affffec 	bcc	11148 <my_memmove+0x98>
	*(dst+pos)=*(temp+pos);

	free(temp);
   11194:	e51b000c 	ldr	r0, [fp, #-12]
   11198:	ebfffca7 	bl	1043c <free@plt>
 return dst;
   1119c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
}
   111a0:	e1a00003 	mov	r0, r3
   111a4:	e24bd004 	sub	sp, fp, #4
   111a8:	e8bd8800 	pop	{fp, pc}

000111ac <my_memcopy>:

uint8_t * my_memcopy(uint8_t * src, uint8_t * dst, size_t length){
   111ac:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   111b0:	e28db000 	add	fp, sp, #0
   111b4:	e24dd01c 	sub	sp, sp, #28
   111b8:	e50b0010 	str	r0, [fp, #-16]
   111bc:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
   111c0:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
	int8_t pos=0U;
   111c4:	e3a03000 	mov	r3, #0
   111c8:	e54b3005 	strb	r3, [fp, #-5]
 for(pos=0U;pos<length;pos++)
   111cc:	e3a03000 	mov	r3, #0
   111d0:	e54b3005 	strb	r3, [fp, #-5]
   111d4:	ea00000c 	b	1120c <my_memcopy+0x60>
	*(dst+pos)=*(src+pos);
   111d8:	e15b30d5 	ldrsb	r3, [fp, #-5]
   111dc:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   111e0:	e0823003 	add	r3, r2, r3
   111e4:	e15b20d5 	ldrsb	r2, [fp, #-5]
   111e8:	e51b1010 	ldr	r1, [fp, #-16]
   111ec:	e0812002 	add	r2, r1, r2
   111f0:	e5d22000 	ldrb	r2, [r2]
   111f4:	e5c32000 	strb	r2, [r3]
 return dst;
}

uint8_t * my_memcopy(uint8_t * src, uint8_t * dst, size_t length){
	int8_t pos=0U;
 for(pos=0U;pos<length;pos++)
   111f8:	e55b3005 	ldrb	r3, [fp, #-5]
   111fc:	e6ef3073 	uxtb	r3, r3
   11200:	e2833001 	add	r3, r3, #1
   11204:	e6ef3073 	uxtb	r3, r3
   11208:	e54b3005 	strb	r3, [fp, #-5]
   1120c:	e15b20d5 	ldrsb	r2, [fp, #-5]
   11210:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   11214:	e1520003 	cmp	r2, r3
   11218:	3affffee 	bcc	111d8 <my_memcopy+0x2c>
	*(dst+pos)=*(src+pos);

	return dst;
   1121c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
}
   11220:	e1a00003 	mov	r0, r3
   11224:	e24bd000 	sub	sp, fp, #0
   11228:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
   1122c:	e12fff1e 	bx	lr

00011230 <my_memset>:

uint8_t * my_memset(uint8_t * src, size_t length, uint8_t value){
   11230:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   11234:	e28db000 	add	fp, sp, #0
   11238:	e24dd01c 	sub	sp, sp, #28
   1123c:	e50b0010 	str	r0, [fp, #-16]
   11240:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
   11244:	e1a03002 	mov	r3, r2
   11248:	e54b3015 	strb	r3, [fp, #-21]	; 0xffffffeb
	int8_t pos=0U;
   1124c:	e3a03000 	mov	r3, #0
   11250:	e54b3005 	strb	r3, [fp, #-5]
	for(pos=0U;pos<length;pos++)
   11254:	e3a03000 	mov	r3, #0
   11258:	e54b3005 	strb	r3, [fp, #-5]
   1125c:	ea000009 	b	11288 <my_memset+0x58>
	*(src+pos)=value;
   11260:	e15b30d5 	ldrsb	r3, [fp, #-5]
   11264:	e51b2010 	ldr	r2, [fp, #-16]
   11268:	e0823003 	add	r3, r2, r3
   1126c:	e55b2015 	ldrb	r2, [fp, #-21]	; 0xffffffeb
   11270:	e5c32000 	strb	r2, [r3]
	return dst;
}

uint8_t * my_memset(uint8_t * src, size_t length, uint8_t value){
	int8_t pos=0U;
	for(pos=0U;pos<length;pos++)
   11274:	e55b3005 	ldrb	r3, [fp, #-5]
   11278:	e6ef3073 	uxtb	r3, r3
   1127c:	e2833001 	add	r3, r3, #1
   11280:	e6ef3073 	uxtb	r3, r3
   11284:	e54b3005 	strb	r3, [fp, #-5]
   11288:	e15b20d5 	ldrsb	r2, [fp, #-5]
   1128c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   11290:	e1520003 	cmp	r2, r3
   11294:	3afffff1 	bcc	11260 <my_memset+0x30>
	*(src+pos)=value;

	return src;
   11298:	e51b3010 	ldr	r3, [fp, #-16]
}
   1129c:	e1a00003 	mov	r0, r3
   112a0:	e24bd000 	sub	sp, fp, #0
   112a4:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
   112a8:	e12fff1e 	bx	lr

000112ac <my_memzero>:

uint8_t * my_memzero(uint8_t * src, size_t length){
   112ac:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   112b0:	e28db000 	add	fp, sp, #0
   112b4:	e24dd014 	sub	sp, sp, #20
   112b8:	e50b0010 	str	r0, [fp, #-16]
   112bc:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
	int8_t pos=0U;
   112c0:	e3a03000 	mov	r3, #0
   112c4:	e54b3005 	strb	r3, [fp, #-5]
	for(pos=0U;pos<length;pos++)
   112c8:	e3a03000 	mov	r3, #0
   112cc:	e54b3005 	strb	r3, [fp, #-5]
   112d0:	ea000009 	b	112fc <my_memzero+0x50>
	*(src+pos)=0;
   112d4:	e15b30d5 	ldrsb	r3, [fp, #-5]
   112d8:	e51b2010 	ldr	r2, [fp, #-16]
   112dc:	e0823003 	add	r3, r2, r3
   112e0:	e3a02000 	mov	r2, #0
   112e4:	e5c32000 	strb	r2, [r3]
	return src;
}

uint8_t * my_memzero(uint8_t * src, size_t length){
	int8_t pos=0U;
	for(pos=0U;pos<length;pos++)
   112e8:	e55b3005 	ldrb	r3, [fp, #-5]
   112ec:	e6ef3073 	uxtb	r3, r3
   112f0:	e2833001 	add	r3, r3, #1
   112f4:	e6ef3073 	uxtb	r3, r3
   112f8:	e54b3005 	strb	r3, [fp, #-5]
   112fc:	e15b20d5 	ldrsb	r2, [fp, #-5]
   11300:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   11304:	e1520003 	cmp	r2, r3
   11308:	3afffff1 	bcc	112d4 <my_memzero+0x28>
	*(src+pos)=0;

	return src;
   1130c:	e51b3010 	ldr	r3, [fp, #-16]
}
   11310:	e1a00003 	mov	r0, r3
   11314:	e24bd000 	sub	sp, fp, #0
   11318:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
   1131c:	e12fff1e 	bx	lr

00011320 <my_reverse>:

uint8_t * my_reverse(uint8_t * src, size_t length){
   11320:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   11324:	e28db000 	add	fp, sp, #0
   11328:	e24dd014 	sub	sp, sp, #20
   1132c:	e50b0010 	str	r0, [fp, #-16]
   11330:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
	uint8_t temp=0U;
   11334:	e3a03000 	mov	r3, #0
   11338:	e54b3006 	strb	r3, [fp, #-6]
	int8_t pos=0U;
   1133c:	e3a03000 	mov	r3, #0
   11340:	e54b3005 	strb	r3, [fp, #-5]

	for(pos=0U;pos<length;pos++){
   11344:	e3a03000 	mov	r3, #0
   11348:	e54b3005 	strb	r3, [fp, #-5]
   1134c:	ea000023 	b	113e0 <my_reverse+0xc0>
		if(pos < (length-1-pos)){
   11350:	e15b20d5 	ldrsb	r2, [fp, #-5]
   11354:	e15b30d5 	ldrsb	r3, [fp, #-5]
   11358:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
   1135c:	e0633001 	rsb	r3, r3, r1
   11360:	e2433001 	sub	r3, r3, #1
   11364:	e1520003 	cmp	r2, r3
   11368:	2a000017 	bcs	113cc <my_reverse+0xac>
	temp=*(src+pos);
   1136c:	e15b30d5 	ldrsb	r3, [fp, #-5]
   11370:	e51b2010 	ldr	r2, [fp, #-16]
   11374:	e0823003 	add	r3, r2, r3
   11378:	e5d33000 	ldrb	r3, [r3]
   1137c:	e54b3006 	strb	r3, [fp, #-6]
	*(src+pos)=*(src+length-1-pos);
   11380:	e15b30d5 	ldrsb	r3, [fp, #-5]
   11384:	e51b2010 	ldr	r2, [fp, #-16]
   11388:	e0823003 	add	r3, r2, r3
   1138c:	e15b20d5 	ldrsb	r2, [fp, #-5]
   11390:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
   11394:	e0622001 	rsb	r2, r2, r1
   11398:	e2422001 	sub	r2, r2, #1
   1139c:	e51b1010 	ldr	r1, [fp, #-16]
   113a0:	e0812002 	add	r2, r1, r2
   113a4:	e5d22000 	ldrb	r2, [r2]
   113a8:	e5c32000 	strb	r2, [r3]
	*(src+length-1-pos)=temp;
   113ac:	e15b30d5 	ldrsb	r3, [fp, #-5]
   113b0:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   113b4:	e0633002 	rsb	r3, r3, r2
   113b8:	e2433001 	sub	r3, r3, #1
   113bc:	e51b2010 	ldr	r2, [fp, #-16]
   113c0:	e0823003 	add	r3, r2, r3
   113c4:	e55b2006 	ldrb	r2, [fp, #-6]
   113c8:	e5c32000 	strb	r2, [r3]

uint8_t * my_reverse(uint8_t * src, size_t length){
	uint8_t temp=0U;
	int8_t pos=0U;

	for(pos=0U;pos<length;pos++){
   113cc:	e55b3005 	ldrb	r3, [fp, #-5]
   113d0:	e6ef3073 	uxtb	r3, r3
   113d4:	e2833001 	add	r3, r3, #1
   113d8:	e6ef3073 	uxtb	r3, r3
   113dc:	e54b3005 	strb	r3, [fp, #-5]
   113e0:	e15b20d5 	ldrsb	r2, [fp, #-5]
   113e4:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   113e8:	e1520003 	cmp	r2, r3
   113ec:	3affffd7 	bcc	11350 <my_reverse+0x30>
	temp=*(src+pos);
	*(src+pos)=*(src+length-1-pos);
	*(src+length-1-pos)=temp;
		}
	}
	return src;
   113f0:	e51b3010 	ldr	r3, [fp, #-16]
}
   113f4:	e1a00003 	mov	r0, r3
   113f8:	e24bd000 	sub	sp, fp, #0
   113fc:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
   11400:	e12fff1e 	bx	lr

00011404 <reserve_words>:

uint32_t * reserve_words(size_t length){
   11404:	e92d4800 	push	{fp, lr}
   11408:	e28db004 	add	fp, sp, #4
   1140c:	e24dd010 	sub	sp, sp, #16
   11410:	e50b0010 	str	r0, [fp, #-16]
	uint32_t * ptr;

	ptr= (uint32_t*)malloc(length);
   11414:	e51b0010 	ldr	r0, [fp, #-16]
   11418:	ebfffc10 	bl	10460 <malloc@plt>
   1141c:	e1a03000 	mov	r3, r0
   11420:	e50b3008 	str	r3, [fp, #-8]
	if(!ptr)return NULL;
   11424:	e51b3008 	ldr	r3, [fp, #-8]
   11428:	e3530000 	cmp	r3, #0
   1142c:	1a000001 	bne	11438 <reserve_words+0x34>
   11430:	e3a03000 	mov	r3, #0
   11434:	ea000000 	b	1143c <reserve_words+0x38>
	return ptr;
   11438:	e51b3008 	ldr	r3, [fp, #-8]
}
   1143c:	e1a00003 	mov	r0, r3
   11440:	e24bd004 	sub	sp, fp, #4
   11444:	e8bd8800 	pop	{fp, pc}

00011448 <free_words>:

void free_words(uint32_t * src){
   11448:	e92d4800 	push	{fp, lr}
   1144c:	e28db004 	add	fp, sp, #4
   11450:	e24dd008 	sub	sp, sp, #8
   11454:	e50b0008 	str	r0, [fp, #-8]
	free((void*)src);
   11458:	e51b0008 	ldr	r0, [fp, #-8]
   1145c:	ebfffbf6 	bl	1043c <free@plt>
}
   11460:	e24bd004 	sub	sp, fp, #4
   11464:	e8bd8800 	pop	{fp, pc}

00011468 <print_statistics>:
  printf("=========Statistic data of array=============\n");
  print_statistics (statistic);
}
*/

void print_statistics ( STAT s){
   11468:	e92d4800 	push	{fp, lr}
   1146c:	e28db004 	add	fp, sp, #4
   11470:	e24dd008 	sub	sp, sp, #8
   11474:	e50b0008 	str	r0, [fp, #-8]

	printf("Max value od data = %d \n",s.max);
   11478:	e55b3006 	ldrb	r3, [fp, #-6]
   1147c:	e59f003c 	ldr	r0, [pc, #60]	; 114c0 <print_statistics+0x58>
   11480:	e1a01003 	mov	r1, r3
   11484:	ebfffbe9 	bl	10430 <printf@plt>
	printf("Min value od data = %d \n",s.min);
   11488:	e55b3005 	ldrb	r3, [fp, #-5]
   1148c:	e59f0030 	ldr	r0, [pc, #48]	; 114c4 <print_statistics+0x5c>
   11490:	e1a01003 	mov	r1, r3
   11494:	ebfffbe5 	bl	10430 <printf@plt>
	printf("Mean value od data = %d \n",s.mean);
   11498:	e55b3007 	ldrb	r3, [fp, #-7]
   1149c:	e59f0024 	ldr	r0, [pc, #36]	; 114c8 <print_statistics+0x60>
   114a0:	e1a01003 	mov	r1, r3
   114a4:	ebfffbe1 	bl	10430 <printf@plt>
	printf("Median value od data = %d \n",s.median);
   114a8:	e55b3008 	ldrb	r3, [fp, #-8]
   114ac:	e59f0018 	ldr	r0, [pc, #24]	; 114cc <print_statistics+0x64>
   114b0:	e1a01003 	mov	r1, r3
   114b4:	ebfffbdd 	bl	10430 <printf@plt>

}
   114b8:	e24bd004 	sub	sp, fp, #4
   114bc:	e8bd8800 	pop	{fp, pc}
   114c0:	00012300 	.word	0x00012300
   114c4:	0001231c 	.word	0x0001231c
   114c8:	00012338 	.word	0x00012338
   114cc:	00012354 	.word	0x00012354

000114d0 <print_array>:

void print_array (unsigned char *arr,char size){
   114d0:	e92d4800 	push	{fp, lr}
   114d4:	e28db004 	add	fp, sp, #4
   114d8:	e24dd010 	sub	sp, sp, #16
   114dc:	e50b0010 	str	r0, [fp, #-16]
   114e0:	e1a03001 	mov	r3, r1
   114e4:	e54b3011 	strb	r3, [fp, #-17]	; 0xffffffef
unsigned int i=0U;
   114e8:	e3a03000 	mov	r3, #0
   114ec:	e50b3008 	str	r3, [fp, #-8]

#ifdef VERBOSE
 for (i=0;i<size;i++)
   114f0:	e3a03000 	mov	r3, #0
   114f4:	e50b3008 	str	r3, [fp, #-8]
   114f8:	ea00000a 	b	11528 <print_array+0x58>
	PRINTF("index=%d \t value=%d \n",i,*(arr+i));
   114fc:	e51b2010 	ldr	r2, [fp, #-16]
   11500:	e51b3008 	ldr	r3, [fp, #-8]
   11504:	e0823003 	add	r3, r2, r3
   11508:	e5d33000 	ldrb	r3, [r3]
   1150c:	e59f002c 	ldr	r0, [pc, #44]	; 11540 <print_array+0x70>
   11510:	e51b1008 	ldr	r1, [fp, #-8]
   11514:	e1a02003 	mov	r2, r3
   11518:	ebfffbc4 	bl	10430 <printf@plt>

void print_array (unsigned char *arr,char size){
unsigned int i=0U;

#ifdef VERBOSE
 for (i=0;i<size;i++)
   1151c:	e51b3008 	ldr	r3, [fp, #-8]
   11520:	e2833001 	add	r3, r3, #1
   11524:	e50b3008 	str	r3, [fp, #-8]
   11528:	e55b2011 	ldrb	r2, [fp, #-17]	; 0xffffffef
   1152c:	e51b3008 	ldr	r3, [fp, #-8]
   11530:	e1520003 	cmp	r2, r3
   11534:	8afffff0 	bhi	114fc <print_array+0x2c>
	PRINTF("index=%d \t value=%d \n",i,*(arr+i));
#endif
}
   11538:	e24bd004 	sub	sp, fp, #4
   1153c:	e8bd8800 	pop	{fp, pc}
   11540:	00012370 	.word	0x00012370

00011544 <find_median>:

int find_median (unsigned char *arr,char size){
   11544:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   11548:	e28db000 	add	fp, sp, #0
   1154c:	e24dd014 	sub	sp, sp, #20
   11550:	e50b0010 	str	r0, [fp, #-16]
   11554:	e1a03001 	mov	r3, r1
   11558:	e54b3011 	strb	r3, [fp, #-17]	; 0xffffffef
unsigned char  median;
 if(size%2==0U)
   1155c:	e55b3011 	ldrb	r3, [fp, #-17]	; 0xffffffef
   11560:	e2033001 	and	r3, r3, #1
   11564:	e6ef3073 	uxtb	r3, r3
   11568:	e3530000 	cmp	r3, #0
   1156c:	1a000014 	bne	115c4 <find_median+0x80>
	median=(*(arr+size/2)+*(arr+1+size/2))/2;
   11570:	e55b3011 	ldrb	r3, [fp, #-17]	; 0xffffffef
   11574:	e1a030a3 	lsr	r3, r3, #1
   11578:	e6ef3073 	uxtb	r3, r3
   1157c:	e1a02003 	mov	r2, r3
   11580:	e51b3010 	ldr	r3, [fp, #-16]
   11584:	e0833002 	add	r3, r3, r2
   11588:	e5d33000 	ldrb	r3, [r3]
   1158c:	e1a01003 	mov	r1, r3
   11590:	e55b3011 	ldrb	r3, [fp, #-17]	; 0xffffffef
   11594:	e1a030a3 	lsr	r3, r3, #1
   11598:	e6ef3073 	uxtb	r3, r3
   1159c:	e2833001 	add	r3, r3, #1
   115a0:	e51b2010 	ldr	r2, [fp, #-16]
   115a4:	e0823003 	add	r3, r2, r3
   115a8:	e5d33000 	ldrb	r3, [r3]
   115ac:	e0813003 	add	r3, r1, r3
   115b0:	e1a02fa3 	lsr	r2, r3, #31
   115b4:	e0823003 	add	r3, r2, r3
   115b8:	e1a030c3 	asr	r3, r3, #1
   115bc:	e54b3005 	strb	r3, [fp, #-5]
   115c0:	ea000001 	b	115cc <find_median+0x88>
 else median=-1;
   115c4:	e3e03000 	mvn	r3, #0
   115c8:	e54b3005 	strb	r3, [fp, #-5]
return median;
   115cc:	e55b3005 	ldrb	r3, [fp, #-5]
}
   115d0:	e1a00003 	mov	r0, r3
   115d4:	e24bd000 	sub	sp, fp, #0
   115d8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
   115dc:	e12fff1e 	bx	lr

000115e0 <find_mean>:

char find_mean (unsigned char *arr,char size){
   115e0:	e92d4800 	push	{fp, lr}
   115e4:	e28db004 	add	fp, sp, #4
   115e8:	e24dd010 	sub	sp, sp, #16
   115ec:	e50b0010 	str	r0, [fp, #-16]
   115f0:	e1a03001 	mov	r3, r1
   115f4:	e54b3011 	strb	r3, [fp, #-17]	; 0xffffffef

unsigned int i=0U;
   115f8:	e3a03000 	mov	r3, #0
   115fc:	e50b3008 	str	r3, [fp, #-8]
unsigned int mean=0U;
   11600:	e3a03000 	mov	r3, #0
   11604:	e50b300c 	str	r3, [fp, #-12]

 for(i=0;i<size;i++)
   11608:	e3a03000 	mov	r3, #0
   1160c:	e50b3008 	str	r3, [fp, #-8]
   11610:	ea00000a 	b	11640 <find_mean+0x60>
  	mean+=*(arr+i);
   11614:	e51b2010 	ldr	r2, [fp, #-16]
   11618:	e51b3008 	ldr	r3, [fp, #-8]
   1161c:	e0823003 	add	r3, r2, r3
   11620:	e5d33000 	ldrb	r3, [r3]
   11624:	e1a02003 	mov	r2, r3
   11628:	e51b300c 	ldr	r3, [fp, #-12]
   1162c:	e0833002 	add	r3, r3, r2
   11630:	e50b300c 	str	r3, [fp, #-12]
char find_mean (unsigned char *arr,char size){

unsigned int i=0U;
unsigned int mean=0U;

 for(i=0;i<size;i++)
   11634:	e51b3008 	ldr	r3, [fp, #-8]
   11638:	e2833001 	add	r3, r3, #1
   1163c:	e50b3008 	str	r3, [fp, #-8]
   11640:	e55b2011 	ldrb	r2, [fp, #-17]	; 0xffffffef
   11644:	e51b3008 	ldr	r3, [fp, #-8]
   11648:	e1520003 	cmp	r2, r3
   1164c:	8afffff0 	bhi	11614 <find_mean+0x34>
  	mean+=*(arr+i);
 
mean/=size;
   11650:	e55b3011 	ldrb	r3, [fp, #-17]	; 0xffffffef
   11654:	e51b000c 	ldr	r0, [fp, #-12]
   11658:	e1a01003 	mov	r1, r3
   1165c:	eb000210 	bl	11ea4 <__aeabi_uidiv>
   11660:	e1a03000 	mov	r3, r0
   11664:	e50b300c 	str	r3, [fp, #-12]
return (char)mean;
   11668:	e51b300c 	ldr	r3, [fp, #-12]
   1166c:	e6ef3073 	uxtb	r3, r3
}
   11670:	e1a00003 	mov	r0, r3
   11674:	e24bd004 	sub	sp, fp, #4
   11678:	e8bd8800 	pop	{fp, pc}

0001167c <find_maximum>:

int find_maximum (unsigned char *arr, char size){
   1167c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   11680:	e28db000 	add	fp, sp, #0
   11684:	e24dd014 	sub	sp, sp, #20
   11688:	e50b0010 	str	r0, [fp, #-16]
   1168c:	e1a03001 	mov	r3, r1
   11690:	e54b3011 	strb	r3, [fp, #-17]	; 0xffffffef
unsigned int i=0U;
   11694:	e3a03000 	mov	r3, #0
   11698:	e50b3008 	str	r3, [fp, #-8]
unsigned char max=0U;
   1169c:	e3a03000 	mov	r3, #0
   116a0:	e54b3009 	strb	r3, [fp, #-9]
max=*arr;
   116a4:	e51b3010 	ldr	r3, [fp, #-16]
   116a8:	e5d33000 	ldrb	r3, [r3]
   116ac:	e54b3009 	strb	r3, [fp, #-9]
 for(i=0;i<size;i++){
   116b0:	e3a03000 	mov	r3, #0
   116b4:	e50b3008 	str	r3, [fp, #-8]
   116b8:	ea00000e 	b	116f8 <find_maximum+0x7c>
  if(max<=*(arr+i))max=*(arr+i);
   116bc:	e51b2010 	ldr	r2, [fp, #-16]
   116c0:	e51b3008 	ldr	r3, [fp, #-8]
   116c4:	e0823003 	add	r3, r2, r3
   116c8:	e5d33000 	ldrb	r3, [r3]
   116cc:	e55b2009 	ldrb	r2, [fp, #-9]
   116d0:	e1520003 	cmp	r2, r3
   116d4:	8a000004 	bhi	116ec <find_maximum+0x70>
   116d8:	e51b2010 	ldr	r2, [fp, #-16]
   116dc:	e51b3008 	ldr	r3, [fp, #-8]
   116e0:	e0823003 	add	r3, r2, r3
   116e4:	e5d33000 	ldrb	r3, [r3]
   116e8:	e54b3009 	strb	r3, [fp, #-9]

int find_maximum (unsigned char *arr, char size){
unsigned int i=0U;
unsigned char max=0U;
max=*arr;
 for(i=0;i<size;i++){
   116ec:	e51b3008 	ldr	r3, [fp, #-8]
   116f0:	e2833001 	add	r3, r3, #1
   116f4:	e50b3008 	str	r3, [fp, #-8]
   116f8:	e55b2011 	ldrb	r2, [fp, #-17]	; 0xffffffef
   116fc:	e51b3008 	ldr	r3, [fp, #-8]
   11700:	e1520003 	cmp	r2, r3
   11704:	8affffec 	bhi	116bc <find_maximum+0x40>
  if(max<=*(arr+i))max=*(arr+i);
 }

return max;
   11708:	e55b3009 	ldrb	r3, [fp, #-9]
}
   1170c:	e1a00003 	mov	r0, r3
   11710:	e24bd000 	sub	sp, fp, #0
   11714:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
   11718:	e12fff1e 	bx	lr

0001171c <find_minimum>:

int find_minimum (unsigned char *arr, char size){
   1171c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   11720:	e28db000 	add	fp, sp, #0
   11724:	e24dd014 	sub	sp, sp, #20
   11728:	e50b0010 	str	r0, [fp, #-16]
   1172c:	e1a03001 	mov	r3, r1
   11730:	e54b3011 	strb	r3, [fp, #-17]	; 0xffffffef
unsigned int i=0U;
   11734:	e3a03000 	mov	r3, #0
   11738:	e50b3008 	str	r3, [fp, #-8]
unsigned char min=0U;
   1173c:	e3a03000 	mov	r3, #0
   11740:	e54b3009 	strb	r3, [fp, #-9]
min=*arr;
   11744:	e51b3010 	ldr	r3, [fp, #-16]
   11748:	e5d33000 	ldrb	r3, [r3]
   1174c:	e54b3009 	strb	r3, [fp, #-9]
 for(i=0;i<size;i++){
   11750:	e3a03000 	mov	r3, #0
   11754:	e50b3008 	str	r3, [fp, #-8]
   11758:	ea00000e 	b	11798 <find_minimum+0x7c>
  if(min>=*(arr+i))min=*(arr+i);
   1175c:	e51b2010 	ldr	r2, [fp, #-16]
   11760:	e51b3008 	ldr	r3, [fp, #-8]
   11764:	e0823003 	add	r3, r2, r3
   11768:	e5d33000 	ldrb	r3, [r3]
   1176c:	e55b2009 	ldrb	r2, [fp, #-9]
   11770:	e1520003 	cmp	r2, r3
   11774:	3a000004 	bcc	1178c <find_minimum+0x70>
   11778:	e51b2010 	ldr	r2, [fp, #-16]
   1177c:	e51b3008 	ldr	r3, [fp, #-8]
   11780:	e0823003 	add	r3, r2, r3
   11784:	e5d33000 	ldrb	r3, [r3]
   11788:	e54b3009 	strb	r3, [fp, #-9]

int find_minimum (unsigned char *arr, char size){
unsigned int i=0U;
unsigned char min=0U;
min=*arr;
 for(i=0;i<size;i++){
   1178c:	e51b3008 	ldr	r3, [fp, #-8]
   11790:	e2833001 	add	r3, r3, #1
   11794:	e50b3008 	str	r3, [fp, #-8]
   11798:	e55b2011 	ldrb	r2, [fp, #-17]	; 0xffffffef
   1179c:	e51b3008 	ldr	r3, [fp, #-8]
   117a0:	e1520003 	cmp	r2, r3
   117a4:	8affffec 	bhi	1175c <find_minimum+0x40>
  if(min>=*(arr+i))min=*(arr+i);
 }

return min;
   117a8:	e55b3009 	ldrb	r3, [fp, #-9]
}
   117ac:	e1a00003 	mov	r0, r3
   117b0:	e24bd000 	sub	sp, fp, #0
   117b4:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
   117b8:	e12fff1e 	bx	lr

000117bc <sort_array>:

void sort_array(unsigned char *arr,char size){
   117bc:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   117c0:	e28db000 	add	fp, sp, #0
   117c4:	e24dd014 	sub	sp, sp, #20
   117c8:	e50b0010 	str	r0, [fp, #-16]
   117cc:	e1a03001 	mov	r3, r1
   117d0:	e54b3011 	strb	r3, [fp, #-17]	; 0xffffffef
unsigned char i=0U,j=0U,buf=0U;
   117d4:	e3a03000 	mov	r3, #0
   117d8:	e54b3005 	strb	r3, [fp, #-5]
   117dc:	e3a03000 	mov	r3, #0
   117e0:	e54b3006 	strb	r3, [fp, #-6]
   117e4:	e3a03000 	mov	r3, #0
   117e8:	e54b3007 	strb	r3, [fp, #-7]
 for(i=0;i<size;i++)
   117ec:	e3a03000 	mov	r3, #0
   117f0:	e54b3005 	strb	r3, [fp, #-5]
   117f4:	ea00002b 	b	118a8 <sort_array+0xec>
	for(j=1;j<size;j++)
   117f8:	e3a03001 	mov	r3, #1
   117fc:	e54b3006 	strb	r3, [fp, #-6]
   11800:	ea000021 	b	1188c <sort_array+0xd0>
		if(*(arr+j-1)<*(arr+j)){
   11804:	e55b3006 	ldrb	r3, [fp, #-6]
   11808:	e2433001 	sub	r3, r3, #1
   1180c:	e51b2010 	ldr	r2, [fp, #-16]
   11810:	e0823003 	add	r3, r2, r3
   11814:	e5d32000 	ldrb	r2, [r3]
   11818:	e55b3006 	ldrb	r3, [fp, #-6]
   1181c:	e51b1010 	ldr	r1, [fp, #-16]
   11820:	e0813003 	add	r3, r1, r3
   11824:	e5d33000 	ldrb	r3, [r3]
   11828:	e1520003 	cmp	r2, r3
   1182c:	2a000013 	bcs	11880 <sort_array+0xc4>
		buf=*(arr+j);
   11830:	e55b3006 	ldrb	r3, [fp, #-6]
   11834:	e51b2010 	ldr	r2, [fp, #-16]
   11838:	e0823003 	add	r3, r2, r3
   1183c:	e5d33000 	ldrb	r3, [r3]
   11840:	e54b3007 	strb	r3, [fp, #-7]
		*(arr+j)=*(arr+j-1);
   11844:	e55b3006 	ldrb	r3, [fp, #-6]
   11848:	e51b2010 	ldr	r2, [fp, #-16]
   1184c:	e0823003 	add	r3, r2, r3
   11850:	e55b2006 	ldrb	r2, [fp, #-6]
   11854:	e2422001 	sub	r2, r2, #1
   11858:	e51b1010 	ldr	r1, [fp, #-16]
   1185c:	e0812002 	add	r2, r1, r2
   11860:	e5d22000 	ldrb	r2, [r2]
   11864:	e5c32000 	strb	r2, [r3]
		*(arr+j-1)=buf;
   11868:	e55b3006 	ldrb	r3, [fp, #-6]
   1186c:	e2433001 	sub	r3, r3, #1
   11870:	e51b2010 	ldr	r2, [fp, #-16]
   11874:	e0823003 	add	r3, r2, r3
   11878:	e55b2007 	ldrb	r2, [fp, #-7]
   1187c:	e5c32000 	strb	r2, [r3]
}

void sort_array(unsigned char *arr,char size){
unsigned char i=0U,j=0U,buf=0U;
 for(i=0;i<size;i++)
	for(j=1;j<size;j++)
   11880:	e55b3006 	ldrb	r3, [fp, #-6]
   11884:	e2833001 	add	r3, r3, #1
   11888:	e54b3006 	strb	r3, [fp, #-6]
   1188c:	e55b2006 	ldrb	r2, [fp, #-6]
   11890:	e55b3011 	ldrb	r3, [fp, #-17]	; 0xffffffef
   11894:	e1520003 	cmp	r2, r3
   11898:	3affffd9 	bcc	11804 <sort_array+0x48>
return min;
}

void sort_array(unsigned char *arr,char size){
unsigned char i=0U,j=0U,buf=0U;
 for(i=0;i<size;i++)
   1189c:	e55b3005 	ldrb	r3, [fp, #-5]
   118a0:	e2833001 	add	r3, r3, #1
   118a4:	e54b3005 	strb	r3, [fp, #-5]
   118a8:	e55b2005 	ldrb	r2, [fp, #-5]
   118ac:	e55b3011 	ldrb	r3, [fp, #-17]	; 0xffffffef
   118b0:	e1520003 	cmp	r2, r3
   118b4:	3affffcf 	bcc	117f8 <sort_array+0x3c>
		if(*(arr+j-1)<*(arr+j)){
		buf=*(arr+j);
		*(arr+j)=*(arr+j-1);
		*(arr+j-1)=buf;
		}
}
   118b8:	e24bd000 	sub	sp, fp, #0
   118bc:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
   118c0:	e12fff1e 	bx	lr

000118c4 <my_itoa>:
*/

#include "data.h"


uint8_t my_itoa(int32_t data, uint8_t * ptr, uint32_t base){
   118c4:	e92d4800 	push	{fp, lr}
   118c8:	e28db004 	add	fp, sp, #4
   118cc:	e24dd018 	sub	sp, sp, #24
   118d0:	e50b0010 	str	r0, [fp, #-16]
   118d4:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
   118d8:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8

uint8_t length=0U,pos_stop=0U,pos_start=0U,res=0U;
   118dc:	e3a03000 	mov	r3, #0
   118e0:	e54b3005 	strb	r3, [fp, #-5]
   118e4:	e3a03000 	mov	r3, #0
   118e8:	e54b3006 	strb	r3, [fp, #-6]
   118ec:	e3a03000 	mov	r3, #0
   118f0:	e54b3007 	strb	r3, [fp, #-7]
   118f4:	e3a03000 	mov	r3, #0
   118f8:	e54b3008 	strb	r3, [fp, #-8]
char temp=0;
   118fc:	e3a03000 	mov	r3, #0
   11900:	e54b3009 	strb	r3, [fp, #-9]

 if(data==0U) *(ptr+(length++))='0';
   11904:	e51b3010 	ldr	r3, [fp, #-16]
   11908:	e3530000 	cmp	r3, #0
   1190c:	1a000008 	bne	11934 <my_itoa+0x70>
   11910:	e55b3005 	ldrb	r3, [fp, #-5]
   11914:	e2832001 	add	r2, r3, #1
   11918:	e54b2005 	strb	r2, [fp, #-5]
   1191c:	e1a02003 	mov	r2, r3
   11920:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   11924:	e0833002 	add	r3, r3, r2
   11928:	e3a02030 	mov	r2, #48	; 0x30
   1192c:	e5c32000 	strb	r2, [r3]
   11930:	ea0000dc 	b	11ca8 <my_itoa+0x3e4>
 else if (data>0){
   11934:	e51b3010 	ldr	r3, [fp, #-16]
   11938:	e3530000 	cmp	r3, #0
   1193c:	da000041 	ble	11a48 <my_itoa+0x184>

	while(data!=0U){
   11940:	ea00001f 	b	119c4 <my_itoa+0x100>
	res=data%base;
   11944:	e51b3010 	ldr	r3, [fp, #-16]
   11948:	e1a00003 	mov	r0, r3
   1194c:	e51b1018 	ldr	r1, [fp, #-24]	; 0xffffffe8
   11950:	eb0001ce 	bl	12090 <__aeabi_uidivmod>
   11954:	e1a03001 	mov	r3, r1
   11958:	e54b3008 	strb	r3, [fp, #-8]
	*(ptr+(length++))=(res>9)?(res-10)+'a' : res+'0';
   1195c:	e55b3005 	ldrb	r3, [fp, #-5]
   11960:	e2832001 	add	r2, r3, #1
   11964:	e54b2005 	strb	r2, [fp, #-5]
   11968:	e1a02003 	mov	r2, r3
   1196c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   11970:	e0832002 	add	r2, r3, r2
   11974:	e55b3008 	ldrb	r3, [fp, #-8]
   11978:	e3530009 	cmp	r3, #9
   1197c:	9a000003 	bls	11990 <my_itoa+0xcc>
   11980:	e55b3008 	ldrb	r3, [fp, #-8]
   11984:	e2833057 	add	r3, r3, #87	; 0x57
   11988:	e6ef3073 	uxtb	r3, r3
   1198c:	ea000002 	b	1199c <my_itoa+0xd8>
   11990:	e55b3008 	ldrb	r3, [fp, #-8]
   11994:	e2833030 	add	r3, r3, #48	; 0x30
   11998:	e6ef3073 	uxtb	r3, r3
   1199c:	e5c23000 	strb	r3, [r2]
	data/=base;
   119a0:	e51b3010 	ldr	r3, [fp, #-16]
   119a4:	e1a00003 	mov	r0, r3
   119a8:	e51b1018 	ldr	r1, [fp, #-24]	; 0xffffffe8
   119ac:	eb00013c 	bl	11ea4 <__aeabi_uidiv>
   119b0:	e1a03000 	mov	r3, r0
   119b4:	e50b3010 	str	r3, [fp, #-16]
	pos_stop=length-1;
   119b8:	e55b3005 	ldrb	r3, [fp, #-5]
   119bc:	e2433001 	sub	r3, r3, #1
   119c0:	e54b3006 	strb	r3, [fp, #-6]
char temp=0;

 if(data==0U) *(ptr+(length++))='0';
 else if (data>0){

	while(data!=0U){
   119c4:	e51b3010 	ldr	r3, [fp, #-16]
   119c8:	e3530000 	cmp	r3, #0
   119cc:	1affffdc 	bne	11944 <my_itoa+0x80>
	*(ptr+(length++))=(res>9)?(res-10)+'a' : res+'0';
	data/=base;
	pos_stop=length-1;
	}

	while(pos_start<pos_stop){
   119d0:	ea000017 	b	11a34 <my_itoa+0x170>
	temp=*(ptr+pos_start);
   119d4:	e55b3007 	ldrb	r3, [fp, #-7]
   119d8:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   119dc:	e0823003 	add	r3, r2, r3
   119e0:	e5d33000 	ldrb	r3, [r3]
   119e4:	e54b3009 	strb	r3, [fp, #-9]
	*(ptr+pos_start)=*(ptr+pos_stop);
   119e8:	e55b3007 	ldrb	r3, [fp, #-7]
   119ec:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   119f0:	e0823003 	add	r3, r2, r3
   119f4:	e55b2006 	ldrb	r2, [fp, #-6]
   119f8:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
   119fc:	e0812002 	add	r2, r1, r2
   11a00:	e5d22000 	ldrb	r2, [r2]
   11a04:	e5c32000 	strb	r2, [r3]
	*(ptr+pos_stop)=temp;
   11a08:	e55b3006 	ldrb	r3, [fp, #-6]
   11a0c:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   11a10:	e0823003 	add	r3, r2, r3
   11a14:	e55b2009 	ldrb	r2, [fp, #-9]
   11a18:	e5c32000 	strb	r2, [r3]
	pos_start++;
   11a1c:	e55b3007 	ldrb	r3, [fp, #-7]
   11a20:	e2833001 	add	r3, r3, #1
   11a24:	e54b3007 	strb	r3, [fp, #-7]
	pos_stop--;
   11a28:	e55b3006 	ldrb	r3, [fp, #-6]
   11a2c:	e2433001 	sub	r3, r3, #1
   11a30:	e54b3006 	strb	r3, [fp, #-6]
	*(ptr+(length++))=(res>9)?(res-10)+'a' : res+'0';
	data/=base;
	pos_stop=length-1;
	}

	while(pos_start<pos_stop){
   11a34:	e55b2007 	ldrb	r2, [fp, #-7]
   11a38:	e55b3006 	ldrb	r3, [fp, #-6]
   11a3c:	e1520003 	cmp	r2, r3
   11a40:	3affffe3 	bcc	119d4 <my_itoa+0x110>
   11a44:	ea000097 	b	11ca8 <my_itoa+0x3e4>
	pos_start++;
	pos_stop--;
	}

 }
 else if (data<0 && base!=10){
   11a48:	e51b3010 	ldr	r3, [fp, #-16]
   11a4c:	e3530000 	cmp	r3, #0
   11a50:	aa000044 	bge	11b68 <my_itoa+0x2a4>
   11a54:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   11a58:	e353000a 	cmp	r3, #10
   11a5c:	0a000041 	beq	11b68 <my_itoa+0x2a4>
	
	data=0xffffffff+data+0x00000001;
       while(data!=0U){
   11a60:	ea00001f 	b	11ae4 <my_itoa+0x220>
        res=data%base;
   11a64:	e51b3010 	ldr	r3, [fp, #-16]
   11a68:	e1a00003 	mov	r0, r3
   11a6c:	e51b1018 	ldr	r1, [fp, #-24]	; 0xffffffe8
   11a70:	eb000186 	bl	12090 <__aeabi_uidivmod>
   11a74:	e1a03001 	mov	r3, r1
   11a78:	e54b3008 	strb	r3, [fp, #-8]
        *(ptr+(length++))=(res>9)?(res-10)+'a' : res+'0';
   11a7c:	e55b3005 	ldrb	r3, [fp, #-5]
   11a80:	e2832001 	add	r2, r3, #1
   11a84:	e54b2005 	strb	r2, [fp, #-5]
   11a88:	e1a02003 	mov	r2, r3
   11a8c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   11a90:	e0832002 	add	r2, r3, r2
   11a94:	e55b3008 	ldrb	r3, [fp, #-8]
   11a98:	e3530009 	cmp	r3, #9
   11a9c:	9a000003 	bls	11ab0 <my_itoa+0x1ec>
   11aa0:	e55b3008 	ldrb	r3, [fp, #-8]
   11aa4:	e2833057 	add	r3, r3, #87	; 0x57
   11aa8:	e6ef3073 	uxtb	r3, r3
   11aac:	ea000002 	b	11abc <my_itoa+0x1f8>
   11ab0:	e55b3008 	ldrb	r3, [fp, #-8]
   11ab4:	e2833030 	add	r3, r3, #48	; 0x30
   11ab8:	e6ef3073 	uxtb	r3, r3
   11abc:	e5c23000 	strb	r3, [r2]
        data/=base;
   11ac0:	e51b3010 	ldr	r3, [fp, #-16]
   11ac4:	e1a00003 	mov	r0, r3
   11ac8:	e51b1018 	ldr	r1, [fp, #-24]	; 0xffffffe8
   11acc:	eb0000f4 	bl	11ea4 <__aeabi_uidiv>
   11ad0:	e1a03000 	mov	r3, r0
   11ad4:	e50b3010 	str	r3, [fp, #-16]
        pos_stop=length-1;
   11ad8:	e55b3005 	ldrb	r3, [fp, #-5]
   11adc:	e2433001 	sub	r3, r3, #1
   11ae0:	e54b3006 	strb	r3, [fp, #-6]

 }
 else if (data<0 && base!=10){
	
	data=0xffffffff+data+0x00000001;
       while(data!=0U){
   11ae4:	e51b3010 	ldr	r3, [fp, #-16]
   11ae8:	e3530000 	cmp	r3, #0
   11aec:	1affffdc 	bne	11a64 <my_itoa+0x1a0>
        *(ptr+(length++))=(res>9)?(res-10)+'a' : res+'0';
        data/=base;
        pos_stop=length-1;
        }

        while(pos_start<pos_stop){
   11af0:	ea000017 	b	11b54 <my_itoa+0x290>
        temp=*(ptr+pos_start);
   11af4:	e55b3007 	ldrb	r3, [fp, #-7]
   11af8:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   11afc:	e0823003 	add	r3, r2, r3
   11b00:	e5d33000 	ldrb	r3, [r3]
   11b04:	e54b3009 	strb	r3, [fp, #-9]
        *(ptr+pos_start)=*(ptr+pos_stop);
   11b08:	e55b3007 	ldrb	r3, [fp, #-7]
   11b0c:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   11b10:	e0823003 	add	r3, r2, r3
   11b14:	e55b2006 	ldrb	r2, [fp, #-6]
   11b18:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
   11b1c:	e0812002 	add	r2, r1, r2
   11b20:	e5d22000 	ldrb	r2, [r2]
   11b24:	e5c32000 	strb	r2, [r3]
        *(ptr+pos_stop)=temp;
   11b28:	e55b3006 	ldrb	r3, [fp, #-6]
   11b2c:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   11b30:	e0823003 	add	r3, r2, r3
   11b34:	e55b2009 	ldrb	r2, [fp, #-9]
   11b38:	e5c32000 	strb	r2, [r3]
        pos_start++;
   11b3c:	e55b3007 	ldrb	r3, [fp, #-7]
   11b40:	e2833001 	add	r3, r3, #1
   11b44:	e54b3007 	strb	r3, [fp, #-7]
        pos_stop--;
   11b48:	e55b3006 	ldrb	r3, [fp, #-6]
   11b4c:	e2433001 	sub	r3, r3, #1
   11b50:	e54b3006 	strb	r3, [fp, #-6]
        *(ptr+(length++))=(res>9)?(res-10)+'a' : res+'0';
        data/=base;
        pos_stop=length-1;
        }

        while(pos_start<pos_stop){
   11b54:	e55b2007 	ldrb	r2, [fp, #-7]
   11b58:	e55b3006 	ldrb	r3, [fp, #-6]
   11b5c:	e1520003 	cmp	r2, r3
   11b60:	3affffe3 	bcc	11af4 <my_itoa+0x230>
	pos_start++;
	pos_stop--;
	}

 }
 else if (data<0 && base!=10){
   11b64:	ea00004f 	b	11ca8 <my_itoa+0x3e4>
        pos_stop--;
        }

 }
 else{
	data=-data;
   11b68:	e51b3010 	ldr	r3, [fp, #-16]
   11b6c:	e2633000 	rsb	r3, r3, #0
   11b70:	e50b3010 	str	r3, [fp, #-16]
	*(ptr+(length++))='-';
   11b74:	e55b3005 	ldrb	r3, [fp, #-5]
   11b78:	e2832001 	add	r2, r3, #1
   11b7c:	e54b2005 	strb	r2, [fp, #-5]
   11b80:	e1a02003 	mov	r2, r3
   11b84:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   11b88:	e0833002 	add	r3, r3, r2
   11b8c:	e3a0202d 	mov	r2, #45	; 0x2d
   11b90:	e5c32000 	strb	r2, [r3]
	pos_start++;
   11b94:	e55b3007 	ldrb	r3, [fp, #-7]
   11b98:	e2833001 	add	r3, r3, #1
   11b9c:	e54b3007 	strb	r3, [fp, #-7]
   	while(data!=0U){
   11ba0:	ea000020 	b	11c28 <my_itoa+0x364>
        res=data%10;
   11ba4:	e51b2010 	ldr	r2, [fp, #-16]
   11ba8:	e59f311c 	ldr	r3, [pc, #284]	; 11ccc <my_itoa+0x408>
   11bac:	e0c31293 	smull	r1, r3, r3, r2
   11bb0:	e1a01143 	asr	r1, r3, #2
   11bb4:	e1a03fc2 	asr	r3, r2, #31
   11bb8:	e0631001 	rsb	r1, r3, r1
   11bbc:	e1a03001 	mov	r3, r1
   11bc0:	e1a03103 	lsl	r3, r3, #2
   11bc4:	e0833001 	add	r3, r3, r1
   11bc8:	e1a03083 	lsl	r3, r3, #1
   11bcc:	e0631002 	rsb	r1, r3, r2
   11bd0:	e1a03001 	mov	r3, r1
   11bd4:	e54b3008 	strb	r3, [fp, #-8]
        *(ptr+(length++))=( res+'0');
   11bd8:	e55b3005 	ldrb	r3, [fp, #-5]
   11bdc:	e2832001 	add	r2, r3, #1
   11be0:	e54b2005 	strb	r2, [fp, #-5]
   11be4:	e1a02003 	mov	r2, r3
   11be8:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   11bec:	e0833002 	add	r3, r3, r2
   11bf0:	e55b2008 	ldrb	r2, [fp, #-8]
   11bf4:	e2822030 	add	r2, r2, #48	; 0x30
   11bf8:	e6ef2072 	uxtb	r2, r2
   11bfc:	e5c32000 	strb	r2, [r3]
        data/=10;
   11c00:	e51b3010 	ldr	r3, [fp, #-16]
   11c04:	e59f20c0 	ldr	r2, [pc, #192]	; 11ccc <my_itoa+0x408>
   11c08:	e0c21392 	smull	r1, r2, r2, r3
   11c0c:	e1a02142 	asr	r2, r2, #2
   11c10:	e1a03fc3 	asr	r3, r3, #31
   11c14:	e0633002 	rsb	r3, r3, r2
   11c18:	e50b3010 	str	r3, [fp, #-16]
        pos_stop=length-1;
   11c1c:	e55b3005 	ldrb	r3, [fp, #-5]
   11c20:	e2433001 	sub	r3, r3, #1
   11c24:	e54b3006 	strb	r3, [fp, #-6]
 }
 else{
	data=-data;
	*(ptr+(length++))='-';
	pos_start++;
   	while(data!=0U){
   11c28:	e51b3010 	ldr	r3, [fp, #-16]
   11c2c:	e3530000 	cmp	r3, #0
   11c30:	1affffdb 	bne	11ba4 <my_itoa+0x2e0>
        *(ptr+(length++))=( res+'0');
        data/=10;
        pos_stop=length-1;
        }

        while(pos_start<pos_stop){
   11c34:	ea000017 	b	11c98 <my_itoa+0x3d4>
        temp=*(ptr+pos_start);
   11c38:	e55b3007 	ldrb	r3, [fp, #-7]
   11c3c:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   11c40:	e0823003 	add	r3, r2, r3
   11c44:	e5d33000 	ldrb	r3, [r3]
   11c48:	e54b3009 	strb	r3, [fp, #-9]
        *(ptr+pos_start)=*(ptr+pos_stop);
   11c4c:	e55b3007 	ldrb	r3, [fp, #-7]
   11c50:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   11c54:	e0823003 	add	r3, r2, r3
   11c58:	e55b2006 	ldrb	r2, [fp, #-6]
   11c5c:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
   11c60:	e0812002 	add	r2, r1, r2
   11c64:	e5d22000 	ldrb	r2, [r2]
   11c68:	e5c32000 	strb	r2, [r3]
        *(ptr+pos_stop)=temp;
   11c6c:	e55b3006 	ldrb	r3, [fp, #-6]
   11c70:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   11c74:	e0823003 	add	r3, r2, r3
   11c78:	e55b2009 	ldrb	r2, [fp, #-9]
   11c7c:	e5c32000 	strb	r2, [r3]
        pos_start++;
   11c80:	e55b3007 	ldrb	r3, [fp, #-7]
   11c84:	e2833001 	add	r3, r3, #1
   11c88:	e54b3007 	strb	r3, [fp, #-7]
        pos_stop--;
   11c8c:	e55b3006 	ldrb	r3, [fp, #-6]
   11c90:	e2433001 	sub	r3, r3, #1
   11c94:	e54b3006 	strb	r3, [fp, #-6]
        *(ptr+(length++))=( res+'0');
        data/=10;
        pos_stop=length-1;
        }

        while(pos_start<pos_stop){
   11c98:	e55b2007 	ldrb	r2, [fp, #-7]
   11c9c:	e55b3006 	ldrb	r3, [fp, #-6]
   11ca0:	e1520003 	cmp	r2, r3
   11ca4:	3affffe3 	bcc	11c38 <my_itoa+0x374>
        }

 }


 	*(ptr+length)='\0';
   11ca8:	e55b3005 	ldrb	r3, [fp, #-5]
   11cac:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   11cb0:	e0823003 	add	r3, r2, r3
   11cb4:	e3a02000 	mov	r2, #0
   11cb8:	e5c32000 	strb	r2, [r3]

	return length;
   11cbc:	e55b3005 	ldrb	r3, [fp, #-5]
}
   11cc0:	e1a00003 	mov	r0, r3
   11cc4:	e24bd004 	sub	sp, fp, #4
   11cc8:	e8bd8800 	pop	{fp, pc}
   11ccc:	66666667 	.word	0x66666667

00011cd0 <my_atoi>:

int32_t my_atoi(uint8_t * ptr, uint8_t digits, uint32_t base){
   11cd0:	e92d4800 	push	{fp, lr}
   11cd4:	e28db004 	add	fp, sp, #4
   11cd8:	e24dd020 	sub	sp, sp, #32
   11cdc:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
   11ce0:	e1a03001 	mov	r3, r1
   11ce4:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
   11ce8:	e54b3019 	strb	r3, [fp, #-25]	; 0xffffffe7

	uint8_t i=0U,negative=0U;
   11cec:	e3a03000 	mov	r3, #0
   11cf0:	e54b3005 	strb	r3, [fp, #-5]
   11cf4:	e3a03000 	mov	r3, #0
   11cf8:	e54b3006 	strb	r3, [fp, #-6]
	int32_t val=0,val2=0,val3=0;
   11cfc:	e3a03000 	mov	r3, #0
   11d00:	e50b300c 	str	r3, [fp, #-12]
   11d04:	e3a03000 	mov	r3, #0
   11d08:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   11d0c:	e3a03000 	mov	r3, #0
   11d10:	e50b3010 	str	r3, [fp, #-16]

	if(*(ptr)=='-'){
   11d14:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   11d18:	e5d33000 	ldrb	r3, [r3]
   11d1c:	e353002d 	cmp	r3, #45	; 0x2d
   11d20:	1a000004 	bne	11d38 <my_atoi+0x68>
	negative=1U;
   11d24:	e3a03001 	mov	r3, #1
   11d28:	e54b3006 	strb	r3, [fp, #-6]
	i++;
   11d2c:	e55b3005 	ldrb	r3, [fp, #-5]
   11d30:	e2833001 	add	r3, r3, #1
   11d34:	e54b3005 	strb	r3, [fp, #-5]
	}



 while(*(ptr+i)!='\0'){
   11d38:	ea000049 	b	11e64 <my_atoi+0x194>

	if(*(ptr+i)=='a' || *(ptr+i)=='b' ||*(ptr+i)=='c' ||*(ptr+i)=='d' ||*(ptr+i)=='e' ||*(ptr+i)=='f')
   11d3c:	e55b3005 	ldrb	r3, [fp, #-5]
   11d40:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
   11d44:	e0823003 	add	r3, r2, r3
   11d48:	e5d33000 	ldrb	r3, [r3]
   11d4c:	e3530061 	cmp	r3, #97	; 0x61
   11d50:	0a00001d 	beq	11dcc <my_atoi+0xfc>
   11d54:	e55b3005 	ldrb	r3, [fp, #-5]
   11d58:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
   11d5c:	e0823003 	add	r3, r2, r3
   11d60:	e5d33000 	ldrb	r3, [r3]
   11d64:	e3530062 	cmp	r3, #98	; 0x62
   11d68:	0a000017 	beq	11dcc <my_atoi+0xfc>
   11d6c:	e55b3005 	ldrb	r3, [fp, #-5]
   11d70:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
   11d74:	e0823003 	add	r3, r2, r3
   11d78:	e5d33000 	ldrb	r3, [r3]
   11d7c:	e3530063 	cmp	r3, #99	; 0x63
   11d80:	0a000011 	beq	11dcc <my_atoi+0xfc>
   11d84:	e55b3005 	ldrb	r3, [fp, #-5]
   11d88:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
   11d8c:	e0823003 	add	r3, r2, r3
   11d90:	e5d33000 	ldrb	r3, [r3]
   11d94:	e3530064 	cmp	r3, #100	; 0x64
   11d98:	0a00000b 	beq	11dcc <my_atoi+0xfc>
   11d9c:	e55b3005 	ldrb	r3, [fp, #-5]
   11da0:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
   11da4:	e0823003 	add	r3, r2, r3
   11da8:	e5d33000 	ldrb	r3, [r3]
   11dac:	e3530065 	cmp	r3, #101	; 0x65
   11db0:	0a000005 	beq	11dcc <my_atoi+0xfc>
   11db4:	e55b3005 	ldrb	r3, [fp, #-5]
   11db8:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
   11dbc:	e0823003 	add	r3, r2, r3
   11dc0:	e5d33000 	ldrb	r3, [r3]
   11dc4:	e3530066 	cmp	r3, #102	; 0x66
   11dc8:	1a000006 	bne	11de8 <my_atoi+0x118>
		val= *(ptr+i)-'a'+10;
   11dcc:	e55b3005 	ldrb	r3, [fp, #-5]
   11dd0:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
   11dd4:	e0823003 	add	r3, r2, r3
   11dd8:	e5d33000 	ldrb	r3, [r3]
   11ddc:	e2433057 	sub	r3, r3, #87	; 0x57
   11de0:	e50b300c 	str	r3, [fp, #-12]
   11de4:	ea000005 	b	11e00 <my_atoi+0x130>
	else val= *(ptr+i)-'0';
   11de8:	e55b3005 	ldrb	r3, [fp, #-5]
   11dec:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
   11df0:	e0823003 	add	r3, r2, r3
   11df4:	e5d33000 	ldrb	r3, [r3]
   11df8:	e2433030 	sub	r3, r3, #48	; 0x30
   11dfc:	e50b300c 	str	r3, [fp, #-12]

	val2=pow(base,digits-1-i);
   11e00:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
   11e04:	ee073a90 	vmov	s15, r3
   11e08:	eeb86b67 	vcvt.f64.u32	d6, s15
   11e0c:	e55b3019 	ldrb	r3, [fp, #-25]	; 0xffffffe7
   11e10:	e2432001 	sub	r2, r3, #1
   11e14:	e55b3005 	ldrb	r3, [fp, #-5]
   11e18:	e0633002 	rsb	r3, r3, r2
   11e1c:	ee073a90 	vmov	s15, r3
   11e20:	eeb87be7 	vcvt.f64.s32	d7, s15
   11e24:	eeb00b46 	vmov.f64	d0, d6
   11e28:	eeb01b47 	vmov.f64	d1, d7
   11e2c:	ebfff985 	bl	10448 <pow@plt>
   11e30:	eeb07b40 	vmov.f64	d7, d0
   11e34:	eefd7bc7 	vcvt.s32.f64	s15, d7
   11e38:	ee173a90 	vmov	r3, s15
   11e3c:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec

	val3+=val*val2;
   11e40:	e51b300c 	ldr	r3, [fp, #-12]
   11e44:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   11e48:	e0030392 	mul	r3, r2, r3
   11e4c:	e51b2010 	ldr	r2, [fp, #-16]
   11e50:	e0823003 	add	r3, r2, r3
   11e54:	e50b3010 	str	r3, [fp, #-16]
	i++;
   11e58:	e55b3005 	ldrb	r3, [fp, #-5]
   11e5c:	e2833001 	add	r3, r3, #1
   11e60:	e54b3005 	strb	r3, [fp, #-5]
	i++;
	}



 while(*(ptr+i)!='\0'){
   11e64:	e55b3005 	ldrb	r3, [fp, #-5]
   11e68:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
   11e6c:	e0823003 	add	r3, r2, r3
   11e70:	e5d33000 	ldrb	r3, [r3]
   11e74:	e3530000 	cmp	r3, #0
   11e78:	1affffaf 	bne	11d3c <my_atoi+0x6c>
	val2=pow(base,digits-1-i);

	val3+=val*val2;
	i++;
 }
	if(negative)val3*=-1;
   11e7c:	e55b3006 	ldrb	r3, [fp, #-6]
   11e80:	e3530000 	cmp	r3, #0
   11e84:	0a000002 	beq	11e94 <my_atoi+0x1c4>
   11e88:	e51b3010 	ldr	r3, [fp, #-16]
   11e8c:	e2633000 	rsb	r3, r3, #0
   11e90:	e50b3010 	str	r3, [fp, #-16]
	return val3;
   11e94:	e51b3010 	ldr	r3, [fp, #-16]
}
   11e98:	e1a00003 	mov	r0, r3
   11e9c:	e24bd004 	sub	sp, fp, #4
   11ea0:	e8bd8800 	pop	{fp, pc}

00011ea4 <__aeabi_uidiv>:
   11ea4:	e2512001 	subs	r2, r1, #1
   11ea8:	012fff1e 	bxeq	lr
   11eac:	3a000074 	bcc	12084 <__aeabi_uidiv+0x1e0>
   11eb0:	e1500001 	cmp	r0, r1
   11eb4:	9a00006b 	bls	12068 <__aeabi_uidiv+0x1c4>
   11eb8:	e1110002 	tst	r1, r2
   11ebc:	0a00006c 	beq	12074 <__aeabi_uidiv+0x1d0>
   11ec0:	e16f3f10 	clz	r3, r0
   11ec4:	e16f2f11 	clz	r2, r1
   11ec8:	e0423003 	sub	r3, r2, r3
   11ecc:	e273301f 	rsbs	r3, r3, #31
   11ed0:	10833083 	addne	r3, r3, r3, lsl #1
   11ed4:	e3a02000 	mov	r2, #0
   11ed8:	108ff103 	addne	pc, pc, r3, lsl #2
   11edc:	e1a00000 	nop			; (mov r0, r0)
   11ee0:	e1500f81 	cmp	r0, r1, lsl #31
   11ee4:	e0a22002 	adc	r2, r2, r2
   11ee8:	20400f81 	subcs	r0, r0, r1, lsl #31
   11eec:	e1500f01 	cmp	r0, r1, lsl #30
   11ef0:	e0a22002 	adc	r2, r2, r2
   11ef4:	20400f01 	subcs	r0, r0, r1, lsl #30
   11ef8:	e1500e81 	cmp	r0, r1, lsl #29
   11efc:	e0a22002 	adc	r2, r2, r2
   11f00:	20400e81 	subcs	r0, r0, r1, lsl #29
   11f04:	e1500e01 	cmp	r0, r1, lsl #28
   11f08:	e0a22002 	adc	r2, r2, r2
   11f0c:	20400e01 	subcs	r0, r0, r1, lsl #28
   11f10:	e1500d81 	cmp	r0, r1, lsl #27
   11f14:	e0a22002 	adc	r2, r2, r2
   11f18:	20400d81 	subcs	r0, r0, r1, lsl #27
   11f1c:	e1500d01 	cmp	r0, r1, lsl #26
   11f20:	e0a22002 	adc	r2, r2, r2
   11f24:	20400d01 	subcs	r0, r0, r1, lsl #26
   11f28:	e1500c81 	cmp	r0, r1, lsl #25
   11f2c:	e0a22002 	adc	r2, r2, r2
   11f30:	20400c81 	subcs	r0, r0, r1, lsl #25
   11f34:	e1500c01 	cmp	r0, r1, lsl #24
   11f38:	e0a22002 	adc	r2, r2, r2
   11f3c:	20400c01 	subcs	r0, r0, r1, lsl #24
   11f40:	e1500b81 	cmp	r0, r1, lsl #23
   11f44:	e0a22002 	adc	r2, r2, r2
   11f48:	20400b81 	subcs	r0, r0, r1, lsl #23
   11f4c:	e1500b01 	cmp	r0, r1, lsl #22
   11f50:	e0a22002 	adc	r2, r2, r2
   11f54:	20400b01 	subcs	r0, r0, r1, lsl #22
   11f58:	e1500a81 	cmp	r0, r1, lsl #21
   11f5c:	e0a22002 	adc	r2, r2, r2
   11f60:	20400a81 	subcs	r0, r0, r1, lsl #21
   11f64:	e1500a01 	cmp	r0, r1, lsl #20
   11f68:	e0a22002 	adc	r2, r2, r2
   11f6c:	20400a01 	subcs	r0, r0, r1, lsl #20
   11f70:	e1500981 	cmp	r0, r1, lsl #19
   11f74:	e0a22002 	adc	r2, r2, r2
   11f78:	20400981 	subcs	r0, r0, r1, lsl #19
   11f7c:	e1500901 	cmp	r0, r1, lsl #18
   11f80:	e0a22002 	adc	r2, r2, r2
   11f84:	20400901 	subcs	r0, r0, r1, lsl #18
   11f88:	e1500881 	cmp	r0, r1, lsl #17
   11f8c:	e0a22002 	adc	r2, r2, r2
   11f90:	20400881 	subcs	r0, r0, r1, lsl #17
   11f94:	e1500801 	cmp	r0, r1, lsl #16
   11f98:	e0a22002 	adc	r2, r2, r2
   11f9c:	20400801 	subcs	r0, r0, r1, lsl #16
   11fa0:	e1500781 	cmp	r0, r1, lsl #15
   11fa4:	e0a22002 	adc	r2, r2, r2
   11fa8:	20400781 	subcs	r0, r0, r1, lsl #15
   11fac:	e1500701 	cmp	r0, r1, lsl #14
   11fb0:	e0a22002 	adc	r2, r2, r2
   11fb4:	20400701 	subcs	r0, r0, r1, lsl #14
   11fb8:	e1500681 	cmp	r0, r1, lsl #13
   11fbc:	e0a22002 	adc	r2, r2, r2
   11fc0:	20400681 	subcs	r0, r0, r1, lsl #13
   11fc4:	e1500601 	cmp	r0, r1, lsl #12
   11fc8:	e0a22002 	adc	r2, r2, r2
   11fcc:	20400601 	subcs	r0, r0, r1, lsl #12
   11fd0:	e1500581 	cmp	r0, r1, lsl #11
   11fd4:	e0a22002 	adc	r2, r2, r2
   11fd8:	20400581 	subcs	r0, r0, r1, lsl #11
   11fdc:	e1500501 	cmp	r0, r1, lsl #10
   11fe0:	e0a22002 	adc	r2, r2, r2
   11fe4:	20400501 	subcs	r0, r0, r1, lsl #10
   11fe8:	e1500481 	cmp	r0, r1, lsl #9
   11fec:	e0a22002 	adc	r2, r2, r2
   11ff0:	20400481 	subcs	r0, r0, r1, lsl #9
   11ff4:	e1500401 	cmp	r0, r1, lsl #8
   11ff8:	e0a22002 	adc	r2, r2, r2
   11ffc:	20400401 	subcs	r0, r0, r1, lsl #8
   12000:	e1500381 	cmp	r0, r1, lsl #7
   12004:	e0a22002 	adc	r2, r2, r2
   12008:	20400381 	subcs	r0, r0, r1, lsl #7
   1200c:	e1500301 	cmp	r0, r1, lsl #6
   12010:	e0a22002 	adc	r2, r2, r2
   12014:	20400301 	subcs	r0, r0, r1, lsl #6
   12018:	e1500281 	cmp	r0, r1, lsl #5
   1201c:	e0a22002 	adc	r2, r2, r2
   12020:	20400281 	subcs	r0, r0, r1, lsl #5
   12024:	e1500201 	cmp	r0, r1, lsl #4
   12028:	e0a22002 	adc	r2, r2, r2
   1202c:	20400201 	subcs	r0, r0, r1, lsl #4
   12030:	e1500181 	cmp	r0, r1, lsl #3
   12034:	e0a22002 	adc	r2, r2, r2
   12038:	20400181 	subcs	r0, r0, r1, lsl #3
   1203c:	e1500101 	cmp	r0, r1, lsl #2
   12040:	e0a22002 	adc	r2, r2, r2
   12044:	20400101 	subcs	r0, r0, r1, lsl #2
   12048:	e1500081 	cmp	r0, r1, lsl #1
   1204c:	e0a22002 	adc	r2, r2, r2
   12050:	20400081 	subcs	r0, r0, r1, lsl #1
   12054:	e1500001 	cmp	r0, r1
   12058:	e0a22002 	adc	r2, r2, r2
   1205c:	20400001 	subcs	r0, r0, r1
   12060:	e1a00002 	mov	r0, r2
   12064:	e12fff1e 	bx	lr
   12068:	03a00001 	moveq	r0, #1
   1206c:	13a00000 	movne	r0, #0
   12070:	e12fff1e 	bx	lr
   12074:	e16f2f11 	clz	r2, r1
   12078:	e262201f 	rsb	r2, r2, #31
   1207c:	e1a00230 	lsr	r0, r0, r2
   12080:	e12fff1e 	bx	lr
   12084:	e3500000 	cmp	r0, #0
   12088:	13e00000 	mvnne	r0, #0
   1208c:	ea000007 	b	120b0 <__aeabi_idiv0>

00012090 <__aeabi_uidivmod>:
   12090:	e3510000 	cmp	r1, #0
   12094:	0afffffa 	beq	12084 <__aeabi_uidiv+0x1e0>
   12098:	e92d4003 	push	{r0, r1, lr}
   1209c:	ebffff80 	bl	11ea4 <__aeabi_uidiv>
   120a0:	e8bd4006 	pop	{r1, r2, lr}
   120a4:	e0030092 	mul	r3, r2, r0
   120a8:	e0411003 	sub	r1, r1, r3
   120ac:	e12fff1e 	bx	lr

000120b0 <__aeabi_idiv0>:
   120b0:	e92d4002 	push	{r1, lr}
   120b4:	e3a00008 	mov	r0, #8
   120b8:	ebfff8d9 	bl	10424 <raise@plt>
   120bc:	e8bd8002 	pop	{r1, pc}

000120c0 <__libc_csu_init>:
   120c0:	e92d43f8 	push	{r3, r4, r5, r6, r7, r8, r9, lr}
   120c4:	e1a07000 	mov	r7, r0
   120c8:	e59f604c 	ldr	r6, [pc, #76]	; 1211c <__libc_csu_init+0x5c>
   120cc:	e59f504c 	ldr	r5, [pc, #76]	; 12120 <__libc_csu_init+0x60>
   120d0:	e08f6006 	add	r6, pc, r6
   120d4:	e08f5005 	add	r5, pc, r5
   120d8:	e0656006 	rsb	r6, r5, r6
   120dc:	e1a08001 	mov	r8, r1
   120e0:	e1a09002 	mov	r9, r2
   120e4:	ebfff8c6 	bl	10404 <_init>
   120e8:	e1b06146 	asrs	r6, r6, #2
   120ec:	08bd83f8 	popeq	{r3, r4, r5, r6, r7, r8, r9, pc}
   120f0:	e2455004 	sub	r5, r5, #4
   120f4:	e3a04000 	mov	r4, #0
   120f8:	e2844001 	add	r4, r4, #1
   120fc:	e5b53004 	ldr	r3, [r5, #4]!
   12100:	e1a00007 	mov	r0, r7
   12104:	e1a01008 	mov	r1, r8
   12108:	e1a02009 	mov	r2, r9
   1210c:	e12fff33 	blx	r3
   12110:	e1540006 	cmp	r4, r6
   12114:	1afffff7 	bne	120f8 <__libc_csu_init+0x38>
   12118:	e8bd83f8 	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
   1211c:	000102c0 	.word	0x000102c0
   12120:	000102b8 	.word	0x000102b8

00012124 <__libc_csu_fini>:
   12124:	e12fff1e 	bx	lr

Disassembly of section .fini:

00012128 <_fini>:
   12128:	e92d4008 	push	{r3, lr}
   1212c:	e8bd8008 	pop	{r3, pc}
