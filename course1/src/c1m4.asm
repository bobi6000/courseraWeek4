
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
   10420:	000120ec 	.word	0x000120ec

00010424 <raise@plt>:
   10424:	e28fc600 	add	ip, pc, #0, 12
   10428:	e28cca12 	add	ip, ip, #73728	; 0x12000
   1042c:	e5bcf0ec 	ldr	pc, [ip, #236]!	; 0xec

00010430 <printf@plt>:
   10430:	e28fc600 	add	ip, pc, #0, 12
   10434:	e28cca12 	add	ip, ip, #73728	; 0x12000
   10438:	e5bcf0e4 	ldr	pc, [ip, #228]!	; 0xe4

0001043c <free@plt>:
   1043c:	e28fc600 	add	ip, pc, #0, 12
   10440:	e28cca12 	add	ip, ip, #73728	; 0x12000
   10444:	e5bcf0dc 	ldr	pc, [ip, #220]!	; 0xdc

00010448 <pow@plt>:
   10448:	e28fc600 	add	ip, pc, #0, 12
   1044c:	e28cca12 	add	ip, ip, #73728	; 0x12000
   10450:	e5bcf0d4 	ldr	pc, [ip, #212]!	; 0xd4

00010454 <puts@plt>:
   10454:	e28fc600 	add	ip, pc, #0, 12
   10458:	e28cca12 	add	ip, ip, #73728	; 0x12000
   1045c:	e5bcf0cc 	ldr	pc, [ip, #204]!	; 0xcc

00010460 <malloc@plt>:
   10460:	e28fc600 	add	ip, pc, #0, 12
   10464:	e28cca12 	add	ip, ip, #73728	; 0x12000
   10468:	e5bcf0c4 	ldr	pc, [ip, #196]!	; 0xc4

0001046c <__libc_start_main@plt>:
   1046c:	e28fc600 	add	ip, pc, #0, 12
   10470:	e28cca12 	add	ip, ip, #73728	; 0x12000
   10474:	e5bcf0bc 	ldr	pc, [ip, #188]!	; 0xbc

00010478 <__gmon_start__@plt>:
   10478:	e28fc600 	add	ip, pc, #0, 12
   1047c:	e28cca12 	add	ip, ip, #73728	; 0x12000
   10480:	e5bcf0b4 	ldr	pc, [ip, #180]!	; 0xb4

00010484 <abort@plt>:
   10484:	e28fc600 	add	ip, pc, #0, 12
   10488:	e28cca12 	add	ip, ip, #73728	; 0x12000
   1048c:	e5bcf0ac 	ldr	pc, [ip, #172]!	; 0xac

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
   104c0:	00012174 	.word	0x00012174
   104c4:	000105b8 	.word	0x000105b8
   104c8:	00012110 	.word	0x00012110

000104cc <call_weak_fn>:
   104cc:	e59f3014 	ldr	r3, [pc, #20]	; 104e8 <call_weak_fn+0x1c>
   104d0:	e59f2014 	ldr	r2, [pc, #20]	; 104ec <call_weak_fn+0x20>
   104d4:	e08f3003 	add	r3, pc, r3
   104d8:	e7932002 	ldr	r2, [r3, r2]
   104dc:	e3520000 	cmp	r2, #0
   104e0:	012fff1e 	bxeq	lr
   104e4:	eaffffe3 	b	10478 <__gmon_start__@plt>
   104e8:	00012030 	.word	0x00012030
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
   10514:	0002254b 	.word	0x0002254b
   10518:	00022548 	.word	0x00022548
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
   1054c:	00022548 	.word	0x00022548
   10550:	00022548 	.word	0x00022548
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
   1057c:	00022548 	.word	0x00022548

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
   105b0:	00022418 	.word	0x00022418
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
   105f0:	eb00039c 	bl	11468 <reserve_words>
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
   10618:	eb0004bd 	bl	11914 <my_itoa>
   1061c:	e1a03000 	mov	r3, r0
   10620:	e50b3010 	str	r3, [fp, #-16]
  value = my_atoi( ptr, digits, BASE_16);
   10624:	e51b3010 	ldr	r3, [fp, #-16]
   10628:	e6ef3073 	uxtb	r3, r3
   1062c:	e51b000c 	ldr	r0, [fp, #-12]
   10630:	e1a01003 	mov	r1, r3
   10634:	e3a02010 	mov	r2, #16
   10638:	eb0005b8 	bl	11d20 <my_atoi>
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
   1065c:	eb00038d 	bl	11498 <free_words>

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
   10690:	00012184 	.word	0x00012184
   10694:	00012194 	.word	0x00012194
   10698:	000121ac 	.word	0x000121ac

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
   106bc:	eb000369 	bl	11468 <reserve_words>
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
   106e4:	eb00048a 	bl	11914 <my_itoa>
   106e8:	e1a03000 	mov	r3, r0
   106ec:	e50b3010 	str	r3, [fp, #-16]
  value = my_atoi( ptr, digits, BASE_10);
   106f0:	e51b3010 	ldr	r3, [fp, #-16]
   106f4:	e6ef3073 	uxtb	r3, r3
   106f8:	e51b000c 	ldr	r0, [fp, #-12]
   106fc:	e1a01003 	mov	r1, r3
   10700:	e3a0200a 	mov	r2, #10
   10704:	eb000585 	bl	11d20 <my_atoi>
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
   10734:	eb000357 	bl	11498 <free_words>

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
   10768:	000121c8 	.word	0x000121c8
   1076c:	000121d8 	.word	0x000121d8
   10770:	000121f8 	.word	0x000121f8
   10774:	000121ac 	.word	0x000121ac

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
   10798:	eb000332 	bl	11468 <reserve_words>
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
   10808:	eb000344 	bl	11520 <print_array>
  my_memmove(ptra, ptrb, TEST_MEMMOVE_LENGTH);
   1080c:	e51b0010 	ldr	r0, [fp, #-16]
   10810:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
   10814:	e3a02010 	mov	r2, #16
   10818:	eb000224 	bl	110b0 <my_memmove>
  print_array(set, MEM_SET_SIZE_B);
   1081c:	e51b000c 	ldr	r0, [fp, #-12]
   10820:	e3a01020 	mov	r1, #32
   10824:	eb00033d 	bl	11520 <print_array>

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
   10878:	eb000306 	bl	11498 <free_words>

  return ret;
   1087c:	e55b3006 	ldrb	r3, [fp, #-6]
   10880:	e6af3073 	sxtb	r3, r3
}
   10884:	e1a00003 	mov	r0, r3
   10888:	e24bd004 	sub	sp, fp, #4
   1088c:	e8bd8800 	pop	{fp, pc}
   10890:	00012214 	.word	0x00012214

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
   108b4:	eb0002eb 	bl	11468 <reserve_words>
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
   10924:	eb0002fd 	bl	11520 <print_array>
  my_memmove(ptra, ptrb, TEST_MEMMOVE_LENGTH);
   10928:	e51b0010 	ldr	r0, [fp, #-16]
   1092c:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
   10930:	e3a02010 	mov	r2, #16
   10934:	eb0001dd 	bl	110b0 <my_memmove>
  print_array(set, MEM_SET_SIZE_B);
   10938:	e51b000c 	ldr	r0, [fp, #-12]
   1093c:	e3a01020 	mov	r1, #32
   10940:	eb0002f6 	bl	11520 <print_array>
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
   10994:	eb0002bf 	bl	11498 <free_words>
  return ret;
   10998:	e55b3006 	ldrb	r3, [fp, #-6]
   1099c:	e6af3073 	sxtb	r3, r3
}
   109a0:	e1a00003 	mov	r0, r3
   109a4:	e24bd004 	sub	sp, fp, #4
   109a8:	e8bd8800 	pop	{fp, pc}
   109ac:	00012234 	.word	0x00012234

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
   109d0:	eb0002a4 	bl	11468 <reserve_words>
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
   10a40:	eb0002b6 	bl	11520 <print_array>
  my_memmove(ptra, ptrb, TEST_MEMMOVE_LENGTH);
   10a44:	e51b0010 	ldr	r0, [fp, #-16]
   10a48:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
   10a4c:	e3a02010 	mov	r2, #16
   10a50:	eb000196 	bl	110b0 <my_memmove>
  print_array(set, MEM_SET_SIZE_B);
   10a54:	e51b000c 	ldr	r0, [fp, #-12]
   10a58:	e3a01020 	mov	r1, #32
   10a5c:	eb0002af 	bl	11520 <print_array>

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
   10ab4:	eb000277 	bl	11498 <free_words>
  return ret;
   10ab8:	e55b3006 	ldrb	r3, [fp, #-6]
   10abc:	e6af3073 	sxtb	r3, r3

}
   10ac0:	e1a00003 	mov	r0, r3
   10ac4:	e24bd004 	sub	sp, fp, #4
   10ac8:	e8bd8800 	pop	{fp, pc}
   10acc:	0001226c 	.word	0x0001226c

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
   10af0:	eb00025c 	bl	11468 <reserve_words>
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
   10b60:	eb00026e 	bl	11520 <print_array>
  my_memcopy(ptra, ptrb, TEST_MEMMOVE_LENGTH);
   10b64:	e51b0010 	ldr	r0, [fp, #-16]
   10b68:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
   10b6c:	e3a02010 	mov	r2, #16
   10b70:	eb0001a5 	bl	1120c <my_memcopy>
  print_array(set, MEM_SET_SIZE_B);
   10b74:	e51b000c 	ldr	r0, [fp, #-12]
   10b78:	e3a01020 	mov	r1, #32
   10b7c:	eb000267 	bl	11520 <print_array>

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
   10bd0:	eb000230 	bl	11498 <free_words>
  return ret;
   10bd4:	e55b3006 	ldrb	r3, [fp, #-6]
   10bd8:	e6af3073 	sxtb	r3, r3
}
   10bdc:	e1a00003 	mov	r0, r3
   10be0:	e24bd004 	sub	sp, fp, #4
   10be4:	e8bd8800 	pop	{fp, pc}
   10be8:	000122a4 	.word	0x000122a4

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
   10c0c:	eb000215 	bl	11468 <reserve_words>
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
   10c7c:	eb000227 	bl	11520 <print_array>
  my_memset(ptra, MEM_SET_SIZE_B, 0xFF);
   10c80:	e51b0010 	ldr	r0, [fp, #-16]
   10c84:	e3a01020 	mov	r1, #32
   10c88:	e3a020ff 	mov	r2, #255	; 0xff
   10c8c:	eb00017f 	bl	11290 <my_memset>
  print_array(set, MEM_SET_SIZE_B);
   10c90:	e51b000c 	ldr	r0, [fp, #-12]
   10c94:	e3a01020 	mov	r1, #32
   10c98:	eb000220 	bl	11520 <print_array>
  my_memzero(ptrb, MEM_ZERO_LENGTH);
   10c9c:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
   10ca0:	e3a01010 	mov	r1, #16
   10ca4:	eb000198 	bl	1130c <my_memzero>
  print_array(set, MEM_SET_SIZE_B);
   10ca8:	e51b000c 	ldr	r0, [fp, #-12]
   10cac:	e3a01020 	mov	r1, #32
   10cb0:	eb00021a 	bl	11520 <print_array>
  
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
   10d24:	eb0001db 	bl	11498 <free_words>
  return ret;
   10d28:	e55b3006 	ldrb	r3, [fp, #-6]
   10d2c:	e6af3073 	sxtb	r3, r3
}
   10d30:	e1a00003 	mov	r0, r3
   10d34:	e24bd004 	sub	sp, fp, #4
   10d38:	e8bd8800 	pop	{fp, pc}
   10d3c:	000122b4 	.word	0x000122b4

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
   10d94:	eb0001b3 	bl	11468 <reserve_words>
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
   10dc0:	eb000111 	bl	1120c <my_memcopy>

  print_array(set, MEM_SET_SIZE_B);
   10dc4:	e24b302c 	sub	r3, fp, #44	; 0x2c
   10dc8:	e1a00003 	mov	r0, r3
   10dcc:	e3a01020 	mov	r1, #32
   10dd0:	eb0001d2 	bl	11520 <print_array>
  my_reverse(set, MEM_SET_SIZE_B);
   10dd4:	e24b302c 	sub	r3, fp, #44	; 0x2c
   10dd8:	e1a00003 	mov	r0, r3
   10ddc:	e3a01020 	mov	r1, #32
   10de0:	eb000166 	bl	11380 <my_reverse>
  print_array(set, MEM_SET_SIZE_B);
   10de4:	e24b302c 	sub	r3, fp, #44	; 0x2c
   10de8:	e1a00003 	mov	r0, r3
   10dec:	e3a01020 	mov	r1, #32
   10df0:	eb0001ca 	bl	11520 <print_array>

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
   10e50:	eb000190 	bl	11498 <free_words>
  return ret;
   10e54:	e55b3006 	ldrb	r3, [fp, #-6]
   10e58:	e6af3073 	sxtb	r3, r3
}
   10e5c:	e1a00003 	mov	r0, r3
   10e60:	e24bd004 	sub	sp, fp, #4
   10e64:	e8bd8800 	pop	{fp, pc}
   10e68:	000122d4 	.word	0x000122d4
   10e6c:	000122c4 	.word	0x000122c4

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
   10f78:	000122f4 	.word	0x000122f4
   10f7c:	00012318 	.word	0x00012318
   10f80:	00012328 	.word	0x00012328
   10f84:	0001233c 	.word	0x0001233c

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
   110b0:	e92d49f0 	push	{r4, r5, r6, r7, r8, fp, lr}
   110b4:	e28db018 	add	fp, sp, #24
   110b8:	e24dd024 	sub	sp, sp, #36	; 0x24
   110bc:	e50b0030 	str	r0, [fp, #-48]	; 0xffffffd0
   110c0:	e50b1034 	str	r1, [fp, #-52]	; 0xffffffcc
   110c4:	e50b2038 	str	r2, [fp, #-56]	; 0xffffffc8
   110c8:	e1a0300d 	mov	r3, sp
   110cc:	e1a08003 	mov	r8, r3
	int8_t  pos=0U;
   110d0:	e3a03000 	mov	r3, #0
   110d4:	e54b301d 	strb	r3, [fp, #-29]	; 0xffffffe3
	uint8_t temp[length];
   110d8:	e51b1038 	ldr	r1, [fp, #-56]	; 0xffffffc8
   110dc:	e1a03001 	mov	r3, r1
   110e0:	e2433001 	sub	r3, r3, #1
   110e4:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
   110e8:	e1a02001 	mov	r2, r1
   110ec:	e3a03000 	mov	r3, #0
   110f0:	e1a07183 	lsl	r7, r3, #3
   110f4:	e1877ea2 	orr	r7, r7, r2, lsr #29
   110f8:	e1a06182 	lsl	r6, r2, #3
   110fc:	e1a02001 	mov	r2, r1
   11100:	e3a03000 	mov	r3, #0
   11104:	e1a05183 	lsl	r5, r3, #3
   11108:	e1855ea2 	orr	r5, r5, r2, lsr #29
   1110c:	e1a04182 	lsl	r4, r2, #3
   11110:	e2813007 	add	r3, r1, #7
   11114:	e1a031a3 	lsr	r3, r3, #3
   11118:	e1a03183 	lsl	r3, r3, #3
   1111c:	e04dd003 	sub	sp, sp, r3
   11120:	e1a0300d 	mov	r3, sp
   11124:	e2833000 	add	r3, r3, #0
   11128:	e50b3028 	str	r3, [fp, #-40]	; 0xffffffd8
printf("dlugosc= %d\n",length);
   1112c:	e59f00d0 	ldr	r0, [pc, #208]	; 11204 <my_memmove+0x154>
   11130:	e51b1038 	ldr	r1, [fp, #-56]	; 0xffffffc8
   11134:	ebfffcbd 	bl	10430 <printf@plt>
 for(pos=length-1;pos>=0;pos--){
   11138:	e51b3038 	ldr	r3, [fp, #-56]	; 0xffffffc8
   1113c:	e6ef3073 	uxtb	r3, r3
   11140:	e2433001 	sub	r3, r3, #1
   11144:	e6ef3073 	uxtb	r3, r3
   11148:	e54b301d 	strb	r3, [fp, #-29]	; 0xffffffe3
   1114c:	ea000010 	b	11194 <my_memmove+0xe4>
	*(temp+pos)=*(src+pos);
   11150:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
   11154:	e15b31dd 	ldrsb	r3, [fp, #-29]	; 0xffffffe3
   11158:	e0823003 	add	r3, r2, r3
   1115c:	e15b21dd 	ldrsb	r2, [fp, #-29]	; 0xffffffe3
   11160:	e51b1030 	ldr	r1, [fp, #-48]	; 0xffffffd0
   11164:	e0812002 	add	r2, r1, r2
   11168:	e5d22000 	ldrb	r2, [r2]
   1116c:	e5c32000 	strb	r2, [r3]
	printf("pozycja wzg poczatku %d\n",pos);
   11170:	e15b31dd 	ldrsb	r3, [fp, #-29]	; 0xffffffe3
   11174:	e59f008c 	ldr	r0, [pc, #140]	; 11208 <my_memmove+0x158>
   11178:	e1a01003 	mov	r1, r3
   1117c:	ebfffcab 	bl	10430 <printf@plt>

uint8_t* my_memmove(uint8_t *src, uint8_t *dst, size_t length){
	int8_t  pos=0U;
	uint8_t temp[length];
printf("dlugosc= %d\n",length);
 for(pos=length-1;pos>=0;pos--){
   11180:	e55b301d 	ldrb	r3, [fp, #-29]	; 0xffffffe3
   11184:	e6ef3073 	uxtb	r3, r3
   11188:	e2433001 	sub	r3, r3, #1
   1118c:	e6ef3073 	uxtb	r3, r3
   11190:	e54b301d 	strb	r3, [fp, #-29]	; 0xffffffe3
   11194:	e15b31dd 	ldrsb	r3, [fp, #-29]	; 0xffffffe3
   11198:	e3530000 	cmp	r3, #0
   1119c:	aaffffeb 	bge	11150 <my_memmove+0xa0>
	*(temp+pos)=*(src+pos);
	printf("pozycja wzg poczatku %d\n",pos);
	}
 for(pos=0;pos<length;pos++)
   111a0:	e3a03000 	mov	r3, #0
   111a4:	e54b301d 	strb	r3, [fp, #-29]	; 0xffffffe3
   111a8:	ea00000c 	b	111e0 <my_memmove+0x130>
	*(dst+pos)=*(temp+pos);
   111ac:	e15b31dd 	ldrsb	r3, [fp, #-29]	; 0xffffffe3
   111b0:	e51b2034 	ldr	r2, [fp, #-52]	; 0xffffffcc
   111b4:	e0823003 	add	r3, r2, r3
   111b8:	e51b1028 	ldr	r1, [fp, #-40]	; 0xffffffd8
   111bc:	e15b21dd 	ldrsb	r2, [fp, #-29]	; 0xffffffe3
   111c0:	e0812002 	add	r2, r1, r2
   111c4:	e5d22000 	ldrb	r2, [r2]
   111c8:	e5c32000 	strb	r2, [r3]
printf("dlugosc= %d\n",length);
 for(pos=length-1;pos>=0;pos--){
	*(temp+pos)=*(src+pos);
	printf("pozycja wzg poczatku %d\n",pos);
	}
 for(pos=0;pos<length;pos++)
   111cc:	e55b301d 	ldrb	r3, [fp, #-29]	; 0xffffffe3
   111d0:	e6ef3073 	uxtb	r3, r3
   111d4:	e2833001 	add	r3, r3, #1
   111d8:	e6ef3073 	uxtb	r3, r3
   111dc:	e54b301d 	strb	r3, [fp, #-29]	; 0xffffffe3
   111e0:	e15b21dd 	ldrsb	r2, [fp, #-29]	; 0xffffffe3
   111e4:	e51b3038 	ldr	r3, [fp, #-56]	; 0xffffffc8
   111e8:	e1520003 	cmp	r2, r3
   111ec:	3affffee 	bcc	111ac <my_memmove+0xfc>
	*(dst+pos)=*(temp+pos);

	return dst;
   111f0:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
   111f4:	e1a0d008 	mov	sp, r8
}
   111f8:	e1a00003 	mov	r0, r3
   111fc:	e24bd018 	sub	sp, fp, #24
   11200:	e8bd89f0 	pop	{r4, r5, r6, r7, r8, fp, pc}
   11204:	00012350 	.word	0x00012350
   11208:	00012360 	.word	0x00012360

0001120c <my_memcopy>:

uint8_t * my_memcopy(uint8_t * src, uint8_t * dst, size_t length){
   1120c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   11210:	e28db000 	add	fp, sp, #0
   11214:	e24dd01c 	sub	sp, sp, #28
   11218:	e50b0010 	str	r0, [fp, #-16]
   1121c:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
   11220:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
	int8_t pos=0U;
   11224:	e3a03000 	mov	r3, #0
   11228:	e54b3005 	strb	r3, [fp, #-5]
 for(pos=0U;pos<length;pos++)
   1122c:	e3a03000 	mov	r3, #0
   11230:	e54b3005 	strb	r3, [fp, #-5]
   11234:	ea00000c 	b	1126c <my_memcopy+0x60>
	*(dst+pos)=*(src+pos);
   11238:	e15b30d5 	ldrsb	r3, [fp, #-5]
   1123c:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   11240:	e0823003 	add	r3, r2, r3
   11244:	e15b20d5 	ldrsb	r2, [fp, #-5]
   11248:	e51b1010 	ldr	r1, [fp, #-16]
   1124c:	e0812002 	add	r2, r1, r2
   11250:	e5d22000 	ldrb	r2, [r2]
   11254:	e5c32000 	strb	r2, [r3]
	return dst;
}

uint8_t * my_memcopy(uint8_t * src, uint8_t * dst, size_t length){
	int8_t pos=0U;
 for(pos=0U;pos<length;pos++)
   11258:	e55b3005 	ldrb	r3, [fp, #-5]
   1125c:	e6ef3073 	uxtb	r3, r3
   11260:	e2833001 	add	r3, r3, #1
   11264:	e6ef3073 	uxtb	r3, r3
   11268:	e54b3005 	strb	r3, [fp, #-5]
   1126c:	e15b20d5 	ldrsb	r2, [fp, #-5]
   11270:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   11274:	e1520003 	cmp	r2, r3
   11278:	3affffee 	bcc	11238 <my_memcopy+0x2c>
	*(dst+pos)=*(src+pos);

	return dst;
   1127c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
}
   11280:	e1a00003 	mov	r0, r3
   11284:	e24bd000 	sub	sp, fp, #0
   11288:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
   1128c:	e12fff1e 	bx	lr

00011290 <my_memset>:

uint8_t * my_memset(uint8_t * src, size_t length, uint8_t value){
   11290:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   11294:	e28db000 	add	fp, sp, #0
   11298:	e24dd01c 	sub	sp, sp, #28
   1129c:	e50b0010 	str	r0, [fp, #-16]
   112a0:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
   112a4:	e1a03002 	mov	r3, r2
   112a8:	e54b3015 	strb	r3, [fp, #-21]	; 0xffffffeb
	int8_t pos=0U;
   112ac:	e3a03000 	mov	r3, #0
   112b0:	e54b3005 	strb	r3, [fp, #-5]
	for(pos=0U;pos<length;pos++)
   112b4:	e3a03000 	mov	r3, #0
   112b8:	e54b3005 	strb	r3, [fp, #-5]
   112bc:	ea000009 	b	112e8 <my_memset+0x58>
	*(src+pos)=value;
   112c0:	e15b30d5 	ldrsb	r3, [fp, #-5]
   112c4:	e51b2010 	ldr	r2, [fp, #-16]
   112c8:	e0823003 	add	r3, r2, r3
   112cc:	e55b2015 	ldrb	r2, [fp, #-21]	; 0xffffffeb
   112d0:	e5c32000 	strb	r2, [r3]
	return dst;
}

uint8_t * my_memset(uint8_t * src, size_t length, uint8_t value){
	int8_t pos=0U;
	for(pos=0U;pos<length;pos++)
   112d4:	e55b3005 	ldrb	r3, [fp, #-5]
   112d8:	e6ef3073 	uxtb	r3, r3
   112dc:	e2833001 	add	r3, r3, #1
   112e0:	e6ef3073 	uxtb	r3, r3
   112e4:	e54b3005 	strb	r3, [fp, #-5]
   112e8:	e15b20d5 	ldrsb	r2, [fp, #-5]
   112ec:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   112f0:	e1520003 	cmp	r2, r3
   112f4:	3afffff1 	bcc	112c0 <my_memset+0x30>
	*(src+pos)=value;

	return src;
   112f8:	e51b3010 	ldr	r3, [fp, #-16]
}
   112fc:	e1a00003 	mov	r0, r3
   11300:	e24bd000 	sub	sp, fp, #0
   11304:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
   11308:	e12fff1e 	bx	lr

0001130c <my_memzero>:

uint8_t * my_memzero(uint8_t * src, size_t length){
   1130c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   11310:	e28db000 	add	fp, sp, #0
   11314:	e24dd014 	sub	sp, sp, #20
   11318:	e50b0010 	str	r0, [fp, #-16]
   1131c:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
	int8_t pos=0U;
   11320:	e3a03000 	mov	r3, #0
   11324:	e54b3005 	strb	r3, [fp, #-5]
	for(pos=0U;pos<length;pos++)
   11328:	e3a03000 	mov	r3, #0
   1132c:	e54b3005 	strb	r3, [fp, #-5]
   11330:	ea000009 	b	1135c <my_memzero+0x50>
	*(src+pos)=0;
   11334:	e15b30d5 	ldrsb	r3, [fp, #-5]
   11338:	e51b2010 	ldr	r2, [fp, #-16]
   1133c:	e0823003 	add	r3, r2, r3
   11340:	e3a02000 	mov	r2, #0
   11344:	e5c32000 	strb	r2, [r3]
	return src;
}

uint8_t * my_memzero(uint8_t * src, size_t length){
	int8_t pos=0U;
	for(pos=0U;pos<length;pos++)
   11348:	e55b3005 	ldrb	r3, [fp, #-5]
   1134c:	e6ef3073 	uxtb	r3, r3
   11350:	e2833001 	add	r3, r3, #1
   11354:	e6ef3073 	uxtb	r3, r3
   11358:	e54b3005 	strb	r3, [fp, #-5]
   1135c:	e15b20d5 	ldrsb	r2, [fp, #-5]
   11360:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   11364:	e1520003 	cmp	r2, r3
   11368:	3afffff1 	bcc	11334 <my_memzero+0x28>
	*(src+pos)=0;

	return src;
   1136c:	e51b3010 	ldr	r3, [fp, #-16]
}
   11370:	e1a00003 	mov	r0, r3
   11374:	e24bd000 	sub	sp, fp, #0
   11378:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
   1137c:	e12fff1e 	bx	lr

00011380 <my_reverse>:

uint8_t * my_reverse(uint8_t * src, size_t length){
   11380:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   11384:	e28db000 	add	fp, sp, #0
   11388:	e24dd014 	sub	sp, sp, #20
   1138c:	e50b0010 	str	r0, [fp, #-16]
   11390:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
	uint32_t temp=0U;
   11394:	e3a03000 	mov	r3, #0
   11398:	e50b300c 	str	r3, [fp, #-12]
	int8_t pos=0U;
   1139c:	e3a03000 	mov	r3, #0
   113a0:	e54b3005 	strb	r3, [fp, #-5]

	for(pos=0U;pos<length;pos++){
   113a4:	e3a03000 	mov	r3, #0
   113a8:	e54b3005 	strb	r3, [fp, #-5]
   113ac:	ea000024 	b	11444 <my_reverse+0xc4>
		if(pos < (length-1-pos)){
   113b0:	e15b20d5 	ldrsb	r2, [fp, #-5]
   113b4:	e15b30d5 	ldrsb	r3, [fp, #-5]
   113b8:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
   113bc:	e0633001 	rsb	r3, r3, r1
   113c0:	e2433001 	sub	r3, r3, #1
   113c4:	e1520003 	cmp	r2, r3
   113c8:	2a000018 	bcs	11430 <my_reverse+0xb0>
	temp=*(src+pos);
   113cc:	e15b30d5 	ldrsb	r3, [fp, #-5]
   113d0:	e51b2010 	ldr	r2, [fp, #-16]
   113d4:	e0823003 	add	r3, r2, r3
   113d8:	e5d33000 	ldrb	r3, [r3]
   113dc:	e50b300c 	str	r3, [fp, #-12]
	*(src+pos)=*(src+length-1-pos);
   113e0:	e15b30d5 	ldrsb	r3, [fp, #-5]
   113e4:	e51b2010 	ldr	r2, [fp, #-16]
   113e8:	e0823003 	add	r3, r2, r3
   113ec:	e15b20d5 	ldrsb	r2, [fp, #-5]
   113f0:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
   113f4:	e0622001 	rsb	r2, r2, r1
   113f8:	e2422001 	sub	r2, r2, #1
   113fc:	e51b1010 	ldr	r1, [fp, #-16]
   11400:	e0812002 	add	r2, r1, r2
   11404:	e5d22000 	ldrb	r2, [r2]
   11408:	e5c32000 	strb	r2, [r3]
	*(src+length-1-pos)=temp;
   1140c:	e15b30d5 	ldrsb	r3, [fp, #-5]
   11410:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   11414:	e0633002 	rsb	r3, r3, r2
   11418:	e2433001 	sub	r3, r3, #1
   1141c:	e51b2010 	ldr	r2, [fp, #-16]
   11420:	e0823003 	add	r3, r2, r3
   11424:	e51b200c 	ldr	r2, [fp, #-12]
   11428:	e6ef2072 	uxtb	r2, r2
   1142c:	e5c32000 	strb	r2, [r3]

uint8_t * my_reverse(uint8_t * src, size_t length){
	uint32_t temp=0U;
	int8_t pos=0U;

	for(pos=0U;pos<length;pos++){
   11430:	e55b3005 	ldrb	r3, [fp, #-5]
   11434:	e6ef3073 	uxtb	r3, r3
   11438:	e2833001 	add	r3, r3, #1
   1143c:	e6ef3073 	uxtb	r3, r3
   11440:	e54b3005 	strb	r3, [fp, #-5]
   11444:	e15b20d5 	ldrsb	r2, [fp, #-5]
   11448:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   1144c:	e1520003 	cmp	r2, r3
   11450:	3affffd6 	bcc	113b0 <my_reverse+0x30>
	temp=*(src+pos);
	*(src+pos)=*(src+length-1-pos);
	*(src+length-1-pos)=temp;
		}
	}
	return src;
   11454:	e51b3010 	ldr	r3, [fp, #-16]
}
   11458:	e1a00003 	mov	r0, r3
   1145c:	e24bd000 	sub	sp, fp, #0
   11460:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
   11464:	e12fff1e 	bx	lr

00011468 <reserve_words>:

uint32_t * reserve_words(size_t length){
   11468:	e92d4800 	push	{fp, lr}
   1146c:	e28db004 	add	fp, sp, #4
   11470:	e24dd010 	sub	sp, sp, #16
   11474:	e50b0010 	str	r0, [fp, #-16]
	uint32_t * ptr;

	ptr= (uint32_t*)malloc(length);
   11478:	e51b0010 	ldr	r0, [fp, #-16]
   1147c:	ebfffbf7 	bl	10460 <malloc@plt>
   11480:	e1a03000 	mov	r3, r0
   11484:	e50b3008 	str	r3, [fp, #-8]

	return ptr;
   11488:	e51b3008 	ldr	r3, [fp, #-8]
}
   1148c:	e1a00003 	mov	r0, r3
   11490:	e24bd004 	sub	sp, fp, #4
   11494:	e8bd8800 	pop	{fp, pc}

00011498 <free_words>:

void free_words(uint32_t * src){
   11498:	e92d4800 	push	{fp, lr}
   1149c:	e28db004 	add	fp, sp, #4
   114a0:	e24dd008 	sub	sp, sp, #8
   114a4:	e50b0008 	str	r0, [fp, #-8]
	free((void*)src);
   114a8:	e51b0008 	ldr	r0, [fp, #-8]
   114ac:	ebfffbe2 	bl	1043c <free@plt>
}
   114b0:	e24bd004 	sub	sp, fp, #4
   114b4:	e8bd8800 	pop	{fp, pc}

000114b8 <print_statistics>:
  printf("=========Statistic data of array=============\n");
  print_statistics (statistic);
}
*/

void print_statistics ( STAT s){
   114b8:	e92d4800 	push	{fp, lr}
   114bc:	e28db004 	add	fp, sp, #4
   114c0:	e24dd008 	sub	sp, sp, #8
   114c4:	e50b0008 	str	r0, [fp, #-8]

	printf("Max value od data = %d \n",s.max);
   114c8:	e55b3006 	ldrb	r3, [fp, #-6]
   114cc:	e59f003c 	ldr	r0, [pc, #60]	; 11510 <print_statistics+0x58>
   114d0:	e1a01003 	mov	r1, r3
   114d4:	ebfffbd5 	bl	10430 <printf@plt>
	printf("Min value od data = %d \n",s.min);
   114d8:	e55b3005 	ldrb	r3, [fp, #-5]
   114dc:	e59f0030 	ldr	r0, [pc, #48]	; 11514 <print_statistics+0x5c>
   114e0:	e1a01003 	mov	r1, r3
   114e4:	ebfffbd1 	bl	10430 <printf@plt>
	printf("Mean value od data = %d \n",s.mean);
   114e8:	e55b3007 	ldrb	r3, [fp, #-7]
   114ec:	e59f0024 	ldr	r0, [pc, #36]	; 11518 <print_statistics+0x60>
   114f0:	e1a01003 	mov	r1, r3
   114f4:	ebfffbcd 	bl	10430 <printf@plt>
	printf("Median value od data = %d \n",s.median);
   114f8:	e55b3008 	ldrb	r3, [fp, #-8]
   114fc:	e59f0018 	ldr	r0, [pc, #24]	; 1151c <print_statistics+0x64>
   11500:	e1a01003 	mov	r1, r3
   11504:	ebfffbc9 	bl	10430 <printf@plt>

}
   11508:	e24bd004 	sub	sp, fp, #4
   1150c:	e8bd8800 	pop	{fp, pc}
   11510:	0001237c 	.word	0x0001237c
   11514:	00012398 	.word	0x00012398
   11518:	000123b4 	.word	0x000123b4
   1151c:	000123d0 	.word	0x000123d0

00011520 <print_array>:

void print_array (unsigned char *arr,char size){
   11520:	e92d4800 	push	{fp, lr}
   11524:	e28db004 	add	fp, sp, #4
   11528:	e24dd010 	sub	sp, sp, #16
   1152c:	e50b0010 	str	r0, [fp, #-16]
   11530:	e1a03001 	mov	r3, r1
   11534:	e54b3011 	strb	r3, [fp, #-17]	; 0xffffffef
unsigned int i=0U;
   11538:	e3a03000 	mov	r3, #0
   1153c:	e50b3008 	str	r3, [fp, #-8]

#ifdef VERBOSE
 for (i=0;i<size;i++)
   11540:	e3a03000 	mov	r3, #0
   11544:	e50b3008 	str	r3, [fp, #-8]
   11548:	ea00000a 	b	11578 <print_array+0x58>
	PRINTF("index=%d \t value=%d \n",i,*(arr+i));
   1154c:	e51b2010 	ldr	r2, [fp, #-16]
   11550:	e51b3008 	ldr	r3, [fp, #-8]
   11554:	e0823003 	add	r3, r2, r3
   11558:	e5d33000 	ldrb	r3, [r3]
   1155c:	e59f002c 	ldr	r0, [pc, #44]	; 11590 <print_array+0x70>
   11560:	e51b1008 	ldr	r1, [fp, #-8]
   11564:	e1a02003 	mov	r2, r3
   11568:	ebfffbb0 	bl	10430 <printf@plt>

void print_array (unsigned char *arr,char size){
unsigned int i=0U;

#ifdef VERBOSE
 for (i=0;i<size;i++)
   1156c:	e51b3008 	ldr	r3, [fp, #-8]
   11570:	e2833001 	add	r3, r3, #1
   11574:	e50b3008 	str	r3, [fp, #-8]
   11578:	e55b2011 	ldrb	r2, [fp, #-17]	; 0xffffffef
   1157c:	e51b3008 	ldr	r3, [fp, #-8]
   11580:	e1520003 	cmp	r2, r3
   11584:	8afffff0 	bhi	1154c <print_array+0x2c>
	PRINTF("index=%d \t value=%d \n",i,*(arr+i));
#endif
}
   11588:	e24bd004 	sub	sp, fp, #4
   1158c:	e8bd8800 	pop	{fp, pc}
   11590:	000123ec 	.word	0x000123ec

00011594 <find_median>:

int find_median (unsigned char *arr,char size){
   11594:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   11598:	e28db000 	add	fp, sp, #0
   1159c:	e24dd014 	sub	sp, sp, #20
   115a0:	e50b0010 	str	r0, [fp, #-16]
   115a4:	e1a03001 	mov	r3, r1
   115a8:	e54b3011 	strb	r3, [fp, #-17]	; 0xffffffef
unsigned char  median;
 if(size%2==0U)
   115ac:	e55b3011 	ldrb	r3, [fp, #-17]	; 0xffffffef
   115b0:	e2033001 	and	r3, r3, #1
   115b4:	e6ef3073 	uxtb	r3, r3
   115b8:	e3530000 	cmp	r3, #0
   115bc:	1a000014 	bne	11614 <find_median+0x80>
	median=(*(arr+size/2)+*(arr+1+size/2))/2;
   115c0:	e55b3011 	ldrb	r3, [fp, #-17]	; 0xffffffef
   115c4:	e1a030a3 	lsr	r3, r3, #1
   115c8:	e6ef3073 	uxtb	r3, r3
   115cc:	e1a02003 	mov	r2, r3
   115d0:	e51b3010 	ldr	r3, [fp, #-16]
   115d4:	e0833002 	add	r3, r3, r2
   115d8:	e5d33000 	ldrb	r3, [r3]
   115dc:	e1a01003 	mov	r1, r3
   115e0:	e55b3011 	ldrb	r3, [fp, #-17]	; 0xffffffef
   115e4:	e1a030a3 	lsr	r3, r3, #1
   115e8:	e6ef3073 	uxtb	r3, r3
   115ec:	e2833001 	add	r3, r3, #1
   115f0:	e51b2010 	ldr	r2, [fp, #-16]
   115f4:	e0823003 	add	r3, r2, r3
   115f8:	e5d33000 	ldrb	r3, [r3]
   115fc:	e0813003 	add	r3, r1, r3
   11600:	e1a02fa3 	lsr	r2, r3, #31
   11604:	e0823003 	add	r3, r2, r3
   11608:	e1a030c3 	asr	r3, r3, #1
   1160c:	e54b3005 	strb	r3, [fp, #-5]
   11610:	ea000001 	b	1161c <find_median+0x88>
 else median=-1;
   11614:	e3e03000 	mvn	r3, #0
   11618:	e54b3005 	strb	r3, [fp, #-5]
return median;
   1161c:	e55b3005 	ldrb	r3, [fp, #-5]
}
   11620:	e1a00003 	mov	r0, r3
   11624:	e24bd000 	sub	sp, fp, #0
   11628:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
   1162c:	e12fff1e 	bx	lr

00011630 <find_mean>:

char find_mean (unsigned char *arr,char size){
   11630:	e92d4800 	push	{fp, lr}
   11634:	e28db004 	add	fp, sp, #4
   11638:	e24dd010 	sub	sp, sp, #16
   1163c:	e50b0010 	str	r0, [fp, #-16]
   11640:	e1a03001 	mov	r3, r1
   11644:	e54b3011 	strb	r3, [fp, #-17]	; 0xffffffef

unsigned int i=0U;
   11648:	e3a03000 	mov	r3, #0
   1164c:	e50b3008 	str	r3, [fp, #-8]
unsigned int mean=0U;
   11650:	e3a03000 	mov	r3, #0
   11654:	e50b300c 	str	r3, [fp, #-12]

 for(i=0;i<size;i++)
   11658:	e3a03000 	mov	r3, #0
   1165c:	e50b3008 	str	r3, [fp, #-8]
   11660:	ea00000a 	b	11690 <find_mean+0x60>
  	mean+=*(arr+i);
   11664:	e51b2010 	ldr	r2, [fp, #-16]
   11668:	e51b3008 	ldr	r3, [fp, #-8]
   1166c:	e0823003 	add	r3, r2, r3
   11670:	e5d33000 	ldrb	r3, [r3]
   11674:	e1a02003 	mov	r2, r3
   11678:	e51b300c 	ldr	r3, [fp, #-12]
   1167c:	e0833002 	add	r3, r3, r2
   11680:	e50b300c 	str	r3, [fp, #-12]
char find_mean (unsigned char *arr,char size){

unsigned int i=0U;
unsigned int mean=0U;

 for(i=0;i<size;i++)
   11684:	e51b3008 	ldr	r3, [fp, #-8]
   11688:	e2833001 	add	r3, r3, #1
   1168c:	e50b3008 	str	r3, [fp, #-8]
   11690:	e55b2011 	ldrb	r2, [fp, #-17]	; 0xffffffef
   11694:	e51b3008 	ldr	r3, [fp, #-8]
   11698:	e1520003 	cmp	r2, r3
   1169c:	8afffff0 	bhi	11664 <find_mean+0x34>
  	mean+=*(arr+i);
 
mean/=size;
   116a0:	e55b3011 	ldrb	r3, [fp, #-17]	; 0xffffffef
   116a4:	e51b000c 	ldr	r0, [fp, #-12]
   116a8:	e1a01003 	mov	r1, r3
   116ac:	eb000210 	bl	11ef4 <__aeabi_uidiv>
   116b0:	e1a03000 	mov	r3, r0
   116b4:	e50b300c 	str	r3, [fp, #-12]
return (char)mean;
   116b8:	e51b300c 	ldr	r3, [fp, #-12]
   116bc:	e6ef3073 	uxtb	r3, r3
}
   116c0:	e1a00003 	mov	r0, r3
   116c4:	e24bd004 	sub	sp, fp, #4
   116c8:	e8bd8800 	pop	{fp, pc}

000116cc <find_maximum>:

int find_maximum (unsigned char *arr, char size){
   116cc:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   116d0:	e28db000 	add	fp, sp, #0
   116d4:	e24dd014 	sub	sp, sp, #20
   116d8:	e50b0010 	str	r0, [fp, #-16]
   116dc:	e1a03001 	mov	r3, r1
   116e0:	e54b3011 	strb	r3, [fp, #-17]	; 0xffffffef
unsigned int i=0U;
   116e4:	e3a03000 	mov	r3, #0
   116e8:	e50b3008 	str	r3, [fp, #-8]
unsigned char max=0U;
   116ec:	e3a03000 	mov	r3, #0
   116f0:	e54b3009 	strb	r3, [fp, #-9]
max=*arr;
   116f4:	e51b3010 	ldr	r3, [fp, #-16]
   116f8:	e5d33000 	ldrb	r3, [r3]
   116fc:	e54b3009 	strb	r3, [fp, #-9]
 for(i=0;i<size;i++){
   11700:	e3a03000 	mov	r3, #0
   11704:	e50b3008 	str	r3, [fp, #-8]
   11708:	ea00000e 	b	11748 <find_maximum+0x7c>
  if(max<=*(arr+i))max=*(arr+i);
   1170c:	e51b2010 	ldr	r2, [fp, #-16]
   11710:	e51b3008 	ldr	r3, [fp, #-8]
   11714:	e0823003 	add	r3, r2, r3
   11718:	e5d33000 	ldrb	r3, [r3]
   1171c:	e55b2009 	ldrb	r2, [fp, #-9]
   11720:	e1520003 	cmp	r2, r3
   11724:	8a000004 	bhi	1173c <find_maximum+0x70>
   11728:	e51b2010 	ldr	r2, [fp, #-16]
   1172c:	e51b3008 	ldr	r3, [fp, #-8]
   11730:	e0823003 	add	r3, r2, r3
   11734:	e5d33000 	ldrb	r3, [r3]
   11738:	e54b3009 	strb	r3, [fp, #-9]

int find_maximum (unsigned char *arr, char size){
unsigned int i=0U;
unsigned char max=0U;
max=*arr;
 for(i=0;i<size;i++){
   1173c:	e51b3008 	ldr	r3, [fp, #-8]
   11740:	e2833001 	add	r3, r3, #1
   11744:	e50b3008 	str	r3, [fp, #-8]
   11748:	e55b2011 	ldrb	r2, [fp, #-17]	; 0xffffffef
   1174c:	e51b3008 	ldr	r3, [fp, #-8]
   11750:	e1520003 	cmp	r2, r3
   11754:	8affffec 	bhi	1170c <find_maximum+0x40>
  if(max<=*(arr+i))max=*(arr+i);
 }

return max;
   11758:	e55b3009 	ldrb	r3, [fp, #-9]
}
   1175c:	e1a00003 	mov	r0, r3
   11760:	e24bd000 	sub	sp, fp, #0
   11764:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
   11768:	e12fff1e 	bx	lr

0001176c <find_minimum>:

int find_minimum (unsigned char *arr, char size){
   1176c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   11770:	e28db000 	add	fp, sp, #0
   11774:	e24dd014 	sub	sp, sp, #20
   11778:	e50b0010 	str	r0, [fp, #-16]
   1177c:	e1a03001 	mov	r3, r1
   11780:	e54b3011 	strb	r3, [fp, #-17]	; 0xffffffef
unsigned int i=0U;
   11784:	e3a03000 	mov	r3, #0
   11788:	e50b3008 	str	r3, [fp, #-8]
unsigned char min=0U;
   1178c:	e3a03000 	mov	r3, #0
   11790:	e54b3009 	strb	r3, [fp, #-9]
min=*arr;
   11794:	e51b3010 	ldr	r3, [fp, #-16]
   11798:	e5d33000 	ldrb	r3, [r3]
   1179c:	e54b3009 	strb	r3, [fp, #-9]
 for(i=0;i<size;i++){
   117a0:	e3a03000 	mov	r3, #0
   117a4:	e50b3008 	str	r3, [fp, #-8]
   117a8:	ea00000e 	b	117e8 <find_minimum+0x7c>
  if(min>=*(arr+i))min=*(arr+i);
   117ac:	e51b2010 	ldr	r2, [fp, #-16]
   117b0:	e51b3008 	ldr	r3, [fp, #-8]
   117b4:	e0823003 	add	r3, r2, r3
   117b8:	e5d33000 	ldrb	r3, [r3]
   117bc:	e55b2009 	ldrb	r2, [fp, #-9]
   117c0:	e1520003 	cmp	r2, r3
   117c4:	3a000004 	bcc	117dc <find_minimum+0x70>
   117c8:	e51b2010 	ldr	r2, [fp, #-16]
   117cc:	e51b3008 	ldr	r3, [fp, #-8]
   117d0:	e0823003 	add	r3, r2, r3
   117d4:	e5d33000 	ldrb	r3, [r3]
   117d8:	e54b3009 	strb	r3, [fp, #-9]

int find_minimum (unsigned char *arr, char size){
unsigned int i=0U;
unsigned char min=0U;
min=*arr;
 for(i=0;i<size;i++){
   117dc:	e51b3008 	ldr	r3, [fp, #-8]
   117e0:	e2833001 	add	r3, r3, #1
   117e4:	e50b3008 	str	r3, [fp, #-8]
   117e8:	e55b2011 	ldrb	r2, [fp, #-17]	; 0xffffffef
   117ec:	e51b3008 	ldr	r3, [fp, #-8]
   117f0:	e1520003 	cmp	r2, r3
   117f4:	8affffec 	bhi	117ac <find_minimum+0x40>
  if(min>=*(arr+i))min=*(arr+i);
 }

return min;
   117f8:	e55b3009 	ldrb	r3, [fp, #-9]
}
   117fc:	e1a00003 	mov	r0, r3
   11800:	e24bd000 	sub	sp, fp, #0
   11804:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
   11808:	e12fff1e 	bx	lr

0001180c <sort_array>:

void sort_array(unsigned char *arr,char size){
   1180c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   11810:	e28db000 	add	fp, sp, #0
   11814:	e24dd014 	sub	sp, sp, #20
   11818:	e50b0010 	str	r0, [fp, #-16]
   1181c:	e1a03001 	mov	r3, r1
   11820:	e54b3011 	strb	r3, [fp, #-17]	; 0xffffffef
unsigned char i=0U,j=0U,buf=0U;
   11824:	e3a03000 	mov	r3, #0
   11828:	e54b3005 	strb	r3, [fp, #-5]
   1182c:	e3a03000 	mov	r3, #0
   11830:	e54b3006 	strb	r3, [fp, #-6]
   11834:	e3a03000 	mov	r3, #0
   11838:	e54b3007 	strb	r3, [fp, #-7]
 for(i=0;i<size;i++)
   1183c:	e3a03000 	mov	r3, #0
   11840:	e54b3005 	strb	r3, [fp, #-5]
   11844:	ea00002b 	b	118f8 <sort_array+0xec>
	for(j=1;j<size;j++)
   11848:	e3a03001 	mov	r3, #1
   1184c:	e54b3006 	strb	r3, [fp, #-6]
   11850:	ea000021 	b	118dc <sort_array+0xd0>
		if(*(arr+j-1)<*(arr+j)){
   11854:	e55b3006 	ldrb	r3, [fp, #-6]
   11858:	e2433001 	sub	r3, r3, #1
   1185c:	e51b2010 	ldr	r2, [fp, #-16]
   11860:	e0823003 	add	r3, r2, r3
   11864:	e5d32000 	ldrb	r2, [r3]
   11868:	e55b3006 	ldrb	r3, [fp, #-6]
   1186c:	e51b1010 	ldr	r1, [fp, #-16]
   11870:	e0813003 	add	r3, r1, r3
   11874:	e5d33000 	ldrb	r3, [r3]
   11878:	e1520003 	cmp	r2, r3
   1187c:	2a000013 	bcs	118d0 <sort_array+0xc4>
		buf=*(arr+j);
   11880:	e55b3006 	ldrb	r3, [fp, #-6]
   11884:	e51b2010 	ldr	r2, [fp, #-16]
   11888:	e0823003 	add	r3, r2, r3
   1188c:	e5d33000 	ldrb	r3, [r3]
   11890:	e54b3007 	strb	r3, [fp, #-7]
		*(arr+j)=*(arr+j-1);
   11894:	e55b3006 	ldrb	r3, [fp, #-6]
   11898:	e51b2010 	ldr	r2, [fp, #-16]
   1189c:	e0823003 	add	r3, r2, r3
   118a0:	e55b2006 	ldrb	r2, [fp, #-6]
   118a4:	e2422001 	sub	r2, r2, #1
   118a8:	e51b1010 	ldr	r1, [fp, #-16]
   118ac:	e0812002 	add	r2, r1, r2
   118b0:	e5d22000 	ldrb	r2, [r2]
   118b4:	e5c32000 	strb	r2, [r3]
		*(arr+j-1)=buf;
   118b8:	e55b3006 	ldrb	r3, [fp, #-6]
   118bc:	e2433001 	sub	r3, r3, #1
   118c0:	e51b2010 	ldr	r2, [fp, #-16]
   118c4:	e0823003 	add	r3, r2, r3
   118c8:	e55b2007 	ldrb	r2, [fp, #-7]
   118cc:	e5c32000 	strb	r2, [r3]
}

void sort_array(unsigned char *arr,char size){
unsigned char i=0U,j=0U,buf=0U;
 for(i=0;i<size;i++)
	for(j=1;j<size;j++)
   118d0:	e55b3006 	ldrb	r3, [fp, #-6]
   118d4:	e2833001 	add	r3, r3, #1
   118d8:	e54b3006 	strb	r3, [fp, #-6]
   118dc:	e55b2006 	ldrb	r2, [fp, #-6]
   118e0:	e55b3011 	ldrb	r3, [fp, #-17]	; 0xffffffef
   118e4:	e1520003 	cmp	r2, r3
   118e8:	3affffd9 	bcc	11854 <sort_array+0x48>
return min;
}

void sort_array(unsigned char *arr,char size){
unsigned char i=0U,j=0U,buf=0U;
 for(i=0;i<size;i++)
   118ec:	e55b3005 	ldrb	r3, [fp, #-5]
   118f0:	e2833001 	add	r3, r3, #1
   118f4:	e54b3005 	strb	r3, [fp, #-5]
   118f8:	e55b2005 	ldrb	r2, [fp, #-5]
   118fc:	e55b3011 	ldrb	r3, [fp, #-17]	; 0xffffffef
   11900:	e1520003 	cmp	r2, r3
   11904:	3affffcf 	bcc	11848 <sort_array+0x3c>
		if(*(arr+j-1)<*(arr+j)){
		buf=*(arr+j);
		*(arr+j)=*(arr+j-1);
		*(arr+j-1)=buf;
		}
}
   11908:	e24bd000 	sub	sp, fp, #0
   1190c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
   11910:	e12fff1e 	bx	lr

00011914 <my_itoa>:
*/

#include "data.h"


uint8_t my_itoa(int32_t data, uint8_t * ptr, uint32_t base){
   11914:	e92d4800 	push	{fp, lr}
   11918:	e28db004 	add	fp, sp, #4
   1191c:	e24dd018 	sub	sp, sp, #24
   11920:	e50b0010 	str	r0, [fp, #-16]
   11924:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
   11928:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8

uint8_t length=0U,pos_stop=0U,pos_start=0U,res=0U;
   1192c:	e3a03000 	mov	r3, #0
   11930:	e54b3005 	strb	r3, [fp, #-5]
   11934:	e3a03000 	mov	r3, #0
   11938:	e54b3006 	strb	r3, [fp, #-6]
   1193c:	e3a03000 	mov	r3, #0
   11940:	e54b3007 	strb	r3, [fp, #-7]
   11944:	e3a03000 	mov	r3, #0
   11948:	e54b3008 	strb	r3, [fp, #-8]
char temp=0;
   1194c:	e3a03000 	mov	r3, #0
   11950:	e54b3009 	strb	r3, [fp, #-9]

 if(data==0U) *(ptr+(length++))='0';
   11954:	e51b3010 	ldr	r3, [fp, #-16]
   11958:	e3530000 	cmp	r3, #0
   1195c:	1a000008 	bne	11984 <my_itoa+0x70>
   11960:	e55b3005 	ldrb	r3, [fp, #-5]
   11964:	e2832001 	add	r2, r3, #1
   11968:	e54b2005 	strb	r2, [fp, #-5]
   1196c:	e1a02003 	mov	r2, r3
   11970:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   11974:	e0833002 	add	r3, r3, r2
   11978:	e3a02030 	mov	r2, #48	; 0x30
   1197c:	e5c32000 	strb	r2, [r3]
   11980:	ea0000dc 	b	11cf8 <my_itoa+0x3e4>
 else if (data>0){
   11984:	e51b3010 	ldr	r3, [fp, #-16]
   11988:	e3530000 	cmp	r3, #0
   1198c:	da000041 	ble	11a98 <my_itoa+0x184>

	while(data!=0U){
   11990:	ea00001f 	b	11a14 <my_itoa+0x100>
	res=data%base;
   11994:	e51b3010 	ldr	r3, [fp, #-16]
   11998:	e1a00003 	mov	r0, r3
   1199c:	e51b1018 	ldr	r1, [fp, #-24]	; 0xffffffe8
   119a0:	eb0001ce 	bl	120e0 <__aeabi_uidivmod>
   119a4:	e1a03001 	mov	r3, r1
   119a8:	e54b3008 	strb	r3, [fp, #-8]
	*(ptr+(length++))=(res>9)?(res-10)+'a' : res+'0';
   119ac:	e55b3005 	ldrb	r3, [fp, #-5]
   119b0:	e2832001 	add	r2, r3, #1
   119b4:	e54b2005 	strb	r2, [fp, #-5]
   119b8:	e1a02003 	mov	r2, r3
   119bc:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   119c0:	e0832002 	add	r2, r3, r2
   119c4:	e55b3008 	ldrb	r3, [fp, #-8]
   119c8:	e3530009 	cmp	r3, #9
   119cc:	9a000003 	bls	119e0 <my_itoa+0xcc>
   119d0:	e55b3008 	ldrb	r3, [fp, #-8]
   119d4:	e2833057 	add	r3, r3, #87	; 0x57
   119d8:	e6ef3073 	uxtb	r3, r3
   119dc:	ea000002 	b	119ec <my_itoa+0xd8>
   119e0:	e55b3008 	ldrb	r3, [fp, #-8]
   119e4:	e2833030 	add	r3, r3, #48	; 0x30
   119e8:	e6ef3073 	uxtb	r3, r3
   119ec:	e5c23000 	strb	r3, [r2]
	data/=base;
   119f0:	e51b3010 	ldr	r3, [fp, #-16]
   119f4:	e1a00003 	mov	r0, r3
   119f8:	e51b1018 	ldr	r1, [fp, #-24]	; 0xffffffe8
   119fc:	eb00013c 	bl	11ef4 <__aeabi_uidiv>
   11a00:	e1a03000 	mov	r3, r0
   11a04:	e50b3010 	str	r3, [fp, #-16]
	pos_stop=length-1;
   11a08:	e55b3005 	ldrb	r3, [fp, #-5]
   11a0c:	e2433001 	sub	r3, r3, #1
   11a10:	e54b3006 	strb	r3, [fp, #-6]
char temp=0;

 if(data==0U) *(ptr+(length++))='0';
 else if (data>0){

	while(data!=0U){
   11a14:	e51b3010 	ldr	r3, [fp, #-16]
   11a18:	e3530000 	cmp	r3, #0
   11a1c:	1affffdc 	bne	11994 <my_itoa+0x80>
	*(ptr+(length++))=(res>9)?(res-10)+'a' : res+'0';
	data/=base;
	pos_stop=length-1;
	}

	while(pos_start<pos_stop){
   11a20:	ea000017 	b	11a84 <my_itoa+0x170>
	temp=*(ptr+pos_start);
   11a24:	e55b3007 	ldrb	r3, [fp, #-7]
   11a28:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   11a2c:	e0823003 	add	r3, r2, r3
   11a30:	e5d33000 	ldrb	r3, [r3]
   11a34:	e54b3009 	strb	r3, [fp, #-9]
	*(ptr+pos_start)=*(ptr+pos_stop);
   11a38:	e55b3007 	ldrb	r3, [fp, #-7]
   11a3c:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   11a40:	e0823003 	add	r3, r2, r3
   11a44:	e55b2006 	ldrb	r2, [fp, #-6]
   11a48:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
   11a4c:	e0812002 	add	r2, r1, r2
   11a50:	e5d22000 	ldrb	r2, [r2]
   11a54:	e5c32000 	strb	r2, [r3]
	*(ptr+pos_stop)=temp;
   11a58:	e55b3006 	ldrb	r3, [fp, #-6]
   11a5c:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   11a60:	e0823003 	add	r3, r2, r3
   11a64:	e55b2009 	ldrb	r2, [fp, #-9]
   11a68:	e5c32000 	strb	r2, [r3]
	pos_start++;
   11a6c:	e55b3007 	ldrb	r3, [fp, #-7]
   11a70:	e2833001 	add	r3, r3, #1
   11a74:	e54b3007 	strb	r3, [fp, #-7]
	pos_stop--;
   11a78:	e55b3006 	ldrb	r3, [fp, #-6]
   11a7c:	e2433001 	sub	r3, r3, #1
   11a80:	e54b3006 	strb	r3, [fp, #-6]
	*(ptr+(length++))=(res>9)?(res-10)+'a' : res+'0';
	data/=base;
	pos_stop=length-1;
	}

	while(pos_start<pos_stop){
   11a84:	e55b2007 	ldrb	r2, [fp, #-7]
   11a88:	e55b3006 	ldrb	r3, [fp, #-6]
   11a8c:	e1520003 	cmp	r2, r3
   11a90:	3affffe3 	bcc	11a24 <my_itoa+0x110>
   11a94:	ea000097 	b	11cf8 <my_itoa+0x3e4>
	pos_start++;
	pos_stop--;
	}

 }
 else if (data<0 && base!=10){
   11a98:	e51b3010 	ldr	r3, [fp, #-16]
   11a9c:	e3530000 	cmp	r3, #0
   11aa0:	aa000044 	bge	11bb8 <my_itoa+0x2a4>
   11aa4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   11aa8:	e353000a 	cmp	r3, #10
   11aac:	0a000041 	beq	11bb8 <my_itoa+0x2a4>
	
	data=0xffffffff+data+0x00000001;
       while(data!=0U){
   11ab0:	ea00001f 	b	11b34 <my_itoa+0x220>
        res=data%base;
   11ab4:	e51b3010 	ldr	r3, [fp, #-16]
   11ab8:	e1a00003 	mov	r0, r3
   11abc:	e51b1018 	ldr	r1, [fp, #-24]	; 0xffffffe8
   11ac0:	eb000186 	bl	120e0 <__aeabi_uidivmod>
   11ac4:	e1a03001 	mov	r3, r1
   11ac8:	e54b3008 	strb	r3, [fp, #-8]
        *(ptr+(length++))=(res>9)?(res-10)+'a' : res+'0';
   11acc:	e55b3005 	ldrb	r3, [fp, #-5]
   11ad0:	e2832001 	add	r2, r3, #1
   11ad4:	e54b2005 	strb	r2, [fp, #-5]
   11ad8:	e1a02003 	mov	r2, r3
   11adc:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   11ae0:	e0832002 	add	r2, r3, r2
   11ae4:	e55b3008 	ldrb	r3, [fp, #-8]
   11ae8:	e3530009 	cmp	r3, #9
   11aec:	9a000003 	bls	11b00 <my_itoa+0x1ec>
   11af0:	e55b3008 	ldrb	r3, [fp, #-8]
   11af4:	e2833057 	add	r3, r3, #87	; 0x57
   11af8:	e6ef3073 	uxtb	r3, r3
   11afc:	ea000002 	b	11b0c <my_itoa+0x1f8>
   11b00:	e55b3008 	ldrb	r3, [fp, #-8]
   11b04:	e2833030 	add	r3, r3, #48	; 0x30
   11b08:	e6ef3073 	uxtb	r3, r3
   11b0c:	e5c23000 	strb	r3, [r2]
        data/=base;
   11b10:	e51b3010 	ldr	r3, [fp, #-16]
   11b14:	e1a00003 	mov	r0, r3
   11b18:	e51b1018 	ldr	r1, [fp, #-24]	; 0xffffffe8
   11b1c:	eb0000f4 	bl	11ef4 <__aeabi_uidiv>
   11b20:	e1a03000 	mov	r3, r0
   11b24:	e50b3010 	str	r3, [fp, #-16]
        pos_stop=length-1;
   11b28:	e55b3005 	ldrb	r3, [fp, #-5]
   11b2c:	e2433001 	sub	r3, r3, #1
   11b30:	e54b3006 	strb	r3, [fp, #-6]

 }
 else if (data<0 && base!=10){
	
	data=0xffffffff+data+0x00000001;
       while(data!=0U){
   11b34:	e51b3010 	ldr	r3, [fp, #-16]
   11b38:	e3530000 	cmp	r3, #0
   11b3c:	1affffdc 	bne	11ab4 <my_itoa+0x1a0>
        *(ptr+(length++))=(res>9)?(res-10)+'a' : res+'0';
        data/=base;
        pos_stop=length-1;
        }

        while(pos_start<pos_stop){
   11b40:	ea000017 	b	11ba4 <my_itoa+0x290>
        temp=*(ptr+pos_start);
   11b44:	e55b3007 	ldrb	r3, [fp, #-7]
   11b48:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   11b4c:	e0823003 	add	r3, r2, r3
   11b50:	e5d33000 	ldrb	r3, [r3]
   11b54:	e54b3009 	strb	r3, [fp, #-9]
        *(ptr+pos_start)=*(ptr+pos_stop);
   11b58:	e55b3007 	ldrb	r3, [fp, #-7]
   11b5c:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   11b60:	e0823003 	add	r3, r2, r3
   11b64:	e55b2006 	ldrb	r2, [fp, #-6]
   11b68:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
   11b6c:	e0812002 	add	r2, r1, r2
   11b70:	e5d22000 	ldrb	r2, [r2]
   11b74:	e5c32000 	strb	r2, [r3]
        *(ptr+pos_stop)=temp;
   11b78:	e55b3006 	ldrb	r3, [fp, #-6]
   11b7c:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   11b80:	e0823003 	add	r3, r2, r3
   11b84:	e55b2009 	ldrb	r2, [fp, #-9]
   11b88:	e5c32000 	strb	r2, [r3]
        pos_start++;
   11b8c:	e55b3007 	ldrb	r3, [fp, #-7]
   11b90:	e2833001 	add	r3, r3, #1
   11b94:	e54b3007 	strb	r3, [fp, #-7]
        pos_stop--;
   11b98:	e55b3006 	ldrb	r3, [fp, #-6]
   11b9c:	e2433001 	sub	r3, r3, #1
   11ba0:	e54b3006 	strb	r3, [fp, #-6]
        *(ptr+(length++))=(res>9)?(res-10)+'a' : res+'0';
        data/=base;
        pos_stop=length-1;
        }

        while(pos_start<pos_stop){
   11ba4:	e55b2007 	ldrb	r2, [fp, #-7]
   11ba8:	e55b3006 	ldrb	r3, [fp, #-6]
   11bac:	e1520003 	cmp	r2, r3
   11bb0:	3affffe3 	bcc	11b44 <my_itoa+0x230>
	pos_start++;
	pos_stop--;
	}

 }
 else if (data<0 && base!=10){
   11bb4:	ea00004f 	b	11cf8 <my_itoa+0x3e4>
        pos_stop--;
        }

 }
 else{
	data=-data;
   11bb8:	e51b3010 	ldr	r3, [fp, #-16]
   11bbc:	e2633000 	rsb	r3, r3, #0
   11bc0:	e50b3010 	str	r3, [fp, #-16]
	*(ptr+(length++))='-';
   11bc4:	e55b3005 	ldrb	r3, [fp, #-5]
   11bc8:	e2832001 	add	r2, r3, #1
   11bcc:	e54b2005 	strb	r2, [fp, #-5]
   11bd0:	e1a02003 	mov	r2, r3
   11bd4:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   11bd8:	e0833002 	add	r3, r3, r2
   11bdc:	e3a0202d 	mov	r2, #45	; 0x2d
   11be0:	e5c32000 	strb	r2, [r3]
	pos_start++;
   11be4:	e55b3007 	ldrb	r3, [fp, #-7]
   11be8:	e2833001 	add	r3, r3, #1
   11bec:	e54b3007 	strb	r3, [fp, #-7]
   	while(data!=0U){
   11bf0:	ea000020 	b	11c78 <my_itoa+0x364>
        res=data%10;
   11bf4:	e51b2010 	ldr	r2, [fp, #-16]
   11bf8:	e59f311c 	ldr	r3, [pc, #284]	; 11d1c <my_itoa+0x408>
   11bfc:	e0c31293 	smull	r1, r3, r3, r2
   11c00:	e1a01143 	asr	r1, r3, #2
   11c04:	e1a03fc2 	asr	r3, r2, #31
   11c08:	e0631001 	rsb	r1, r3, r1
   11c0c:	e1a03001 	mov	r3, r1
   11c10:	e1a03103 	lsl	r3, r3, #2
   11c14:	e0833001 	add	r3, r3, r1
   11c18:	e1a03083 	lsl	r3, r3, #1
   11c1c:	e0631002 	rsb	r1, r3, r2
   11c20:	e1a03001 	mov	r3, r1
   11c24:	e54b3008 	strb	r3, [fp, #-8]
        *(ptr+(length++))=( res+'0');
   11c28:	e55b3005 	ldrb	r3, [fp, #-5]
   11c2c:	e2832001 	add	r2, r3, #1
   11c30:	e54b2005 	strb	r2, [fp, #-5]
   11c34:	e1a02003 	mov	r2, r3
   11c38:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   11c3c:	e0833002 	add	r3, r3, r2
   11c40:	e55b2008 	ldrb	r2, [fp, #-8]
   11c44:	e2822030 	add	r2, r2, #48	; 0x30
   11c48:	e6ef2072 	uxtb	r2, r2
   11c4c:	e5c32000 	strb	r2, [r3]
        data/=10;
   11c50:	e51b3010 	ldr	r3, [fp, #-16]
   11c54:	e59f20c0 	ldr	r2, [pc, #192]	; 11d1c <my_itoa+0x408>
   11c58:	e0c21392 	smull	r1, r2, r2, r3
   11c5c:	e1a02142 	asr	r2, r2, #2
   11c60:	e1a03fc3 	asr	r3, r3, #31
   11c64:	e0633002 	rsb	r3, r3, r2
   11c68:	e50b3010 	str	r3, [fp, #-16]
        pos_stop=length-1;
   11c6c:	e55b3005 	ldrb	r3, [fp, #-5]
   11c70:	e2433001 	sub	r3, r3, #1
   11c74:	e54b3006 	strb	r3, [fp, #-6]
 }
 else{
	data=-data;
	*(ptr+(length++))='-';
	pos_start++;
   	while(data!=0U){
   11c78:	e51b3010 	ldr	r3, [fp, #-16]
   11c7c:	e3530000 	cmp	r3, #0
   11c80:	1affffdb 	bne	11bf4 <my_itoa+0x2e0>
        *(ptr+(length++))=( res+'0');
        data/=10;
        pos_stop=length-1;
        }

        while(pos_start<pos_stop){
   11c84:	ea000017 	b	11ce8 <my_itoa+0x3d4>
        temp=*(ptr+pos_start);
   11c88:	e55b3007 	ldrb	r3, [fp, #-7]
   11c8c:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   11c90:	e0823003 	add	r3, r2, r3
   11c94:	e5d33000 	ldrb	r3, [r3]
   11c98:	e54b3009 	strb	r3, [fp, #-9]
        *(ptr+pos_start)=*(ptr+pos_stop);
   11c9c:	e55b3007 	ldrb	r3, [fp, #-7]
   11ca0:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   11ca4:	e0823003 	add	r3, r2, r3
   11ca8:	e55b2006 	ldrb	r2, [fp, #-6]
   11cac:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
   11cb0:	e0812002 	add	r2, r1, r2
   11cb4:	e5d22000 	ldrb	r2, [r2]
   11cb8:	e5c32000 	strb	r2, [r3]
        *(ptr+pos_stop)=temp;
   11cbc:	e55b3006 	ldrb	r3, [fp, #-6]
   11cc0:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   11cc4:	e0823003 	add	r3, r2, r3
   11cc8:	e55b2009 	ldrb	r2, [fp, #-9]
   11ccc:	e5c32000 	strb	r2, [r3]
        pos_start++;
   11cd0:	e55b3007 	ldrb	r3, [fp, #-7]
   11cd4:	e2833001 	add	r3, r3, #1
   11cd8:	e54b3007 	strb	r3, [fp, #-7]
        pos_stop--;
   11cdc:	e55b3006 	ldrb	r3, [fp, #-6]
   11ce0:	e2433001 	sub	r3, r3, #1
   11ce4:	e54b3006 	strb	r3, [fp, #-6]
        *(ptr+(length++))=( res+'0');
        data/=10;
        pos_stop=length-1;
        }

        while(pos_start<pos_stop){
   11ce8:	e55b2007 	ldrb	r2, [fp, #-7]
   11cec:	e55b3006 	ldrb	r3, [fp, #-6]
   11cf0:	e1520003 	cmp	r2, r3
   11cf4:	3affffe3 	bcc	11c88 <my_itoa+0x374>
        }

 }


 	*(ptr+length)='\0';
   11cf8:	e55b3005 	ldrb	r3, [fp, #-5]
   11cfc:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   11d00:	e0823003 	add	r3, r2, r3
   11d04:	e3a02000 	mov	r2, #0
   11d08:	e5c32000 	strb	r2, [r3]

	return length;
   11d0c:	e55b3005 	ldrb	r3, [fp, #-5]
}
   11d10:	e1a00003 	mov	r0, r3
   11d14:	e24bd004 	sub	sp, fp, #4
   11d18:	e8bd8800 	pop	{fp, pc}
   11d1c:	66666667 	.word	0x66666667

00011d20 <my_atoi>:

int32_t my_atoi(uint8_t * ptr, uint8_t digits, uint32_t base){
   11d20:	e92d4800 	push	{fp, lr}
   11d24:	e28db004 	add	fp, sp, #4
   11d28:	e24dd020 	sub	sp, sp, #32
   11d2c:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
   11d30:	e1a03001 	mov	r3, r1
   11d34:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
   11d38:	e54b3019 	strb	r3, [fp, #-25]	; 0xffffffe7

	uint8_t i=0U,negative=0U;
   11d3c:	e3a03000 	mov	r3, #0
   11d40:	e54b3005 	strb	r3, [fp, #-5]
   11d44:	e3a03000 	mov	r3, #0
   11d48:	e54b3006 	strb	r3, [fp, #-6]
	int32_t val=0,val2=0,val3=0;
   11d4c:	e3a03000 	mov	r3, #0
   11d50:	e50b300c 	str	r3, [fp, #-12]
   11d54:	e3a03000 	mov	r3, #0
   11d58:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   11d5c:	e3a03000 	mov	r3, #0
   11d60:	e50b3010 	str	r3, [fp, #-16]

	if(*(ptr)=='-'){
   11d64:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   11d68:	e5d33000 	ldrb	r3, [r3]
   11d6c:	e353002d 	cmp	r3, #45	; 0x2d
   11d70:	1a000004 	bne	11d88 <my_atoi+0x68>
	negative=1U;
   11d74:	e3a03001 	mov	r3, #1
   11d78:	e54b3006 	strb	r3, [fp, #-6]
	i++;
   11d7c:	e55b3005 	ldrb	r3, [fp, #-5]
   11d80:	e2833001 	add	r3, r3, #1
   11d84:	e54b3005 	strb	r3, [fp, #-5]
	}



 while(*(ptr+i)!='\0'){
   11d88:	ea000049 	b	11eb4 <my_atoi+0x194>

	if(*(ptr+i)=='a' || *(ptr+i)=='b' ||*(ptr+i)=='c' ||*(ptr+i)=='d' ||*(ptr+i)=='e' ||*(ptr+i)=='f')
   11d8c:	e55b3005 	ldrb	r3, [fp, #-5]
   11d90:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
   11d94:	e0823003 	add	r3, r2, r3
   11d98:	e5d33000 	ldrb	r3, [r3]
   11d9c:	e3530061 	cmp	r3, #97	; 0x61
   11da0:	0a00001d 	beq	11e1c <my_atoi+0xfc>
   11da4:	e55b3005 	ldrb	r3, [fp, #-5]
   11da8:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
   11dac:	e0823003 	add	r3, r2, r3
   11db0:	e5d33000 	ldrb	r3, [r3]
   11db4:	e3530062 	cmp	r3, #98	; 0x62
   11db8:	0a000017 	beq	11e1c <my_atoi+0xfc>
   11dbc:	e55b3005 	ldrb	r3, [fp, #-5]
   11dc0:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
   11dc4:	e0823003 	add	r3, r2, r3
   11dc8:	e5d33000 	ldrb	r3, [r3]
   11dcc:	e3530063 	cmp	r3, #99	; 0x63
   11dd0:	0a000011 	beq	11e1c <my_atoi+0xfc>
   11dd4:	e55b3005 	ldrb	r3, [fp, #-5]
   11dd8:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
   11ddc:	e0823003 	add	r3, r2, r3
   11de0:	e5d33000 	ldrb	r3, [r3]
   11de4:	e3530064 	cmp	r3, #100	; 0x64
   11de8:	0a00000b 	beq	11e1c <my_atoi+0xfc>
   11dec:	e55b3005 	ldrb	r3, [fp, #-5]
   11df0:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
   11df4:	e0823003 	add	r3, r2, r3
   11df8:	e5d33000 	ldrb	r3, [r3]
   11dfc:	e3530065 	cmp	r3, #101	; 0x65
   11e00:	0a000005 	beq	11e1c <my_atoi+0xfc>
   11e04:	e55b3005 	ldrb	r3, [fp, #-5]
   11e08:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
   11e0c:	e0823003 	add	r3, r2, r3
   11e10:	e5d33000 	ldrb	r3, [r3]
   11e14:	e3530066 	cmp	r3, #102	; 0x66
   11e18:	1a000006 	bne	11e38 <my_atoi+0x118>
		val= *(ptr+i)-'a'+10;
   11e1c:	e55b3005 	ldrb	r3, [fp, #-5]
   11e20:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
   11e24:	e0823003 	add	r3, r2, r3
   11e28:	e5d33000 	ldrb	r3, [r3]
   11e2c:	e2433057 	sub	r3, r3, #87	; 0x57
   11e30:	e50b300c 	str	r3, [fp, #-12]
   11e34:	ea000005 	b	11e50 <my_atoi+0x130>
	else val= *(ptr+i)-'0';
   11e38:	e55b3005 	ldrb	r3, [fp, #-5]
   11e3c:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
   11e40:	e0823003 	add	r3, r2, r3
   11e44:	e5d33000 	ldrb	r3, [r3]
   11e48:	e2433030 	sub	r3, r3, #48	; 0x30
   11e4c:	e50b300c 	str	r3, [fp, #-12]

	val2=pow(base,digits-1-i);
   11e50:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
   11e54:	ee073a90 	vmov	s15, r3
   11e58:	eeb86b67 	vcvt.f64.u32	d6, s15
   11e5c:	e55b3019 	ldrb	r3, [fp, #-25]	; 0xffffffe7
   11e60:	e2432001 	sub	r2, r3, #1
   11e64:	e55b3005 	ldrb	r3, [fp, #-5]
   11e68:	e0633002 	rsb	r3, r3, r2
   11e6c:	ee073a90 	vmov	s15, r3
   11e70:	eeb87be7 	vcvt.f64.s32	d7, s15
   11e74:	eeb00b46 	vmov.f64	d0, d6
   11e78:	eeb01b47 	vmov.f64	d1, d7
   11e7c:	ebfff971 	bl	10448 <pow@plt>
   11e80:	eeb07b40 	vmov.f64	d7, d0
   11e84:	eefd7bc7 	vcvt.s32.f64	s15, d7
   11e88:	ee173a90 	vmov	r3, s15
   11e8c:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec

	val3+=val*val2;
   11e90:	e51b300c 	ldr	r3, [fp, #-12]
   11e94:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   11e98:	e0030392 	mul	r3, r2, r3
   11e9c:	e51b2010 	ldr	r2, [fp, #-16]
   11ea0:	e0823003 	add	r3, r2, r3
   11ea4:	e50b3010 	str	r3, [fp, #-16]
	i++;
   11ea8:	e55b3005 	ldrb	r3, [fp, #-5]
   11eac:	e2833001 	add	r3, r3, #1
   11eb0:	e54b3005 	strb	r3, [fp, #-5]
	i++;
	}



 while(*(ptr+i)!='\0'){
   11eb4:	e55b3005 	ldrb	r3, [fp, #-5]
   11eb8:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
   11ebc:	e0823003 	add	r3, r2, r3
   11ec0:	e5d33000 	ldrb	r3, [r3]
   11ec4:	e3530000 	cmp	r3, #0
   11ec8:	1affffaf 	bne	11d8c <my_atoi+0x6c>
	val2=pow(base,digits-1-i);

	val3+=val*val2;
	i++;
 }
	if(negative)val3*=-1;
   11ecc:	e55b3006 	ldrb	r3, [fp, #-6]
   11ed0:	e3530000 	cmp	r3, #0
   11ed4:	0a000002 	beq	11ee4 <my_atoi+0x1c4>
   11ed8:	e51b3010 	ldr	r3, [fp, #-16]
   11edc:	e2633000 	rsb	r3, r3, #0
   11ee0:	e50b3010 	str	r3, [fp, #-16]
	return val3;
   11ee4:	e51b3010 	ldr	r3, [fp, #-16]
}
   11ee8:	e1a00003 	mov	r0, r3
   11eec:	e24bd004 	sub	sp, fp, #4
   11ef0:	e8bd8800 	pop	{fp, pc}

00011ef4 <__aeabi_uidiv>:
   11ef4:	e2512001 	subs	r2, r1, #1
   11ef8:	012fff1e 	bxeq	lr
   11efc:	3a000074 	bcc	120d4 <__aeabi_uidiv+0x1e0>
   11f00:	e1500001 	cmp	r0, r1
   11f04:	9a00006b 	bls	120b8 <__aeabi_uidiv+0x1c4>
   11f08:	e1110002 	tst	r1, r2
   11f0c:	0a00006c 	beq	120c4 <__aeabi_uidiv+0x1d0>
   11f10:	e16f3f10 	clz	r3, r0
   11f14:	e16f2f11 	clz	r2, r1
   11f18:	e0423003 	sub	r3, r2, r3
   11f1c:	e273301f 	rsbs	r3, r3, #31
   11f20:	10833083 	addne	r3, r3, r3, lsl #1
   11f24:	e3a02000 	mov	r2, #0
   11f28:	108ff103 	addne	pc, pc, r3, lsl #2
   11f2c:	e1a00000 	nop			; (mov r0, r0)
   11f30:	e1500f81 	cmp	r0, r1, lsl #31
   11f34:	e0a22002 	adc	r2, r2, r2
   11f38:	20400f81 	subcs	r0, r0, r1, lsl #31
   11f3c:	e1500f01 	cmp	r0, r1, lsl #30
   11f40:	e0a22002 	adc	r2, r2, r2
   11f44:	20400f01 	subcs	r0, r0, r1, lsl #30
   11f48:	e1500e81 	cmp	r0, r1, lsl #29
   11f4c:	e0a22002 	adc	r2, r2, r2
   11f50:	20400e81 	subcs	r0, r0, r1, lsl #29
   11f54:	e1500e01 	cmp	r0, r1, lsl #28
   11f58:	e0a22002 	adc	r2, r2, r2
   11f5c:	20400e01 	subcs	r0, r0, r1, lsl #28
   11f60:	e1500d81 	cmp	r0, r1, lsl #27
   11f64:	e0a22002 	adc	r2, r2, r2
   11f68:	20400d81 	subcs	r0, r0, r1, lsl #27
   11f6c:	e1500d01 	cmp	r0, r1, lsl #26
   11f70:	e0a22002 	adc	r2, r2, r2
   11f74:	20400d01 	subcs	r0, r0, r1, lsl #26
   11f78:	e1500c81 	cmp	r0, r1, lsl #25
   11f7c:	e0a22002 	adc	r2, r2, r2
   11f80:	20400c81 	subcs	r0, r0, r1, lsl #25
   11f84:	e1500c01 	cmp	r0, r1, lsl #24
   11f88:	e0a22002 	adc	r2, r2, r2
   11f8c:	20400c01 	subcs	r0, r0, r1, lsl #24
   11f90:	e1500b81 	cmp	r0, r1, lsl #23
   11f94:	e0a22002 	adc	r2, r2, r2
   11f98:	20400b81 	subcs	r0, r0, r1, lsl #23
   11f9c:	e1500b01 	cmp	r0, r1, lsl #22
   11fa0:	e0a22002 	adc	r2, r2, r2
   11fa4:	20400b01 	subcs	r0, r0, r1, lsl #22
   11fa8:	e1500a81 	cmp	r0, r1, lsl #21
   11fac:	e0a22002 	adc	r2, r2, r2
   11fb0:	20400a81 	subcs	r0, r0, r1, lsl #21
   11fb4:	e1500a01 	cmp	r0, r1, lsl #20
   11fb8:	e0a22002 	adc	r2, r2, r2
   11fbc:	20400a01 	subcs	r0, r0, r1, lsl #20
   11fc0:	e1500981 	cmp	r0, r1, lsl #19
   11fc4:	e0a22002 	adc	r2, r2, r2
   11fc8:	20400981 	subcs	r0, r0, r1, lsl #19
   11fcc:	e1500901 	cmp	r0, r1, lsl #18
   11fd0:	e0a22002 	adc	r2, r2, r2
   11fd4:	20400901 	subcs	r0, r0, r1, lsl #18
   11fd8:	e1500881 	cmp	r0, r1, lsl #17
   11fdc:	e0a22002 	adc	r2, r2, r2
   11fe0:	20400881 	subcs	r0, r0, r1, lsl #17
   11fe4:	e1500801 	cmp	r0, r1, lsl #16
   11fe8:	e0a22002 	adc	r2, r2, r2
   11fec:	20400801 	subcs	r0, r0, r1, lsl #16
   11ff0:	e1500781 	cmp	r0, r1, lsl #15
   11ff4:	e0a22002 	adc	r2, r2, r2
   11ff8:	20400781 	subcs	r0, r0, r1, lsl #15
   11ffc:	e1500701 	cmp	r0, r1, lsl #14
   12000:	e0a22002 	adc	r2, r2, r2
   12004:	20400701 	subcs	r0, r0, r1, lsl #14
   12008:	e1500681 	cmp	r0, r1, lsl #13
   1200c:	e0a22002 	adc	r2, r2, r2
   12010:	20400681 	subcs	r0, r0, r1, lsl #13
   12014:	e1500601 	cmp	r0, r1, lsl #12
   12018:	e0a22002 	adc	r2, r2, r2
   1201c:	20400601 	subcs	r0, r0, r1, lsl #12
   12020:	e1500581 	cmp	r0, r1, lsl #11
   12024:	e0a22002 	adc	r2, r2, r2
   12028:	20400581 	subcs	r0, r0, r1, lsl #11
   1202c:	e1500501 	cmp	r0, r1, lsl #10
   12030:	e0a22002 	adc	r2, r2, r2
   12034:	20400501 	subcs	r0, r0, r1, lsl #10
   12038:	e1500481 	cmp	r0, r1, lsl #9
   1203c:	e0a22002 	adc	r2, r2, r2
   12040:	20400481 	subcs	r0, r0, r1, lsl #9
   12044:	e1500401 	cmp	r0, r1, lsl #8
   12048:	e0a22002 	adc	r2, r2, r2
   1204c:	20400401 	subcs	r0, r0, r1, lsl #8
   12050:	e1500381 	cmp	r0, r1, lsl #7
   12054:	e0a22002 	adc	r2, r2, r2
   12058:	20400381 	subcs	r0, r0, r1, lsl #7
   1205c:	e1500301 	cmp	r0, r1, lsl #6
   12060:	e0a22002 	adc	r2, r2, r2
   12064:	20400301 	subcs	r0, r0, r1, lsl #6
   12068:	e1500281 	cmp	r0, r1, lsl #5
   1206c:	e0a22002 	adc	r2, r2, r2
   12070:	20400281 	subcs	r0, r0, r1, lsl #5
   12074:	e1500201 	cmp	r0, r1, lsl #4
   12078:	e0a22002 	adc	r2, r2, r2
   1207c:	20400201 	subcs	r0, r0, r1, lsl #4
   12080:	e1500181 	cmp	r0, r1, lsl #3
   12084:	e0a22002 	adc	r2, r2, r2
   12088:	20400181 	subcs	r0, r0, r1, lsl #3
   1208c:	e1500101 	cmp	r0, r1, lsl #2
   12090:	e0a22002 	adc	r2, r2, r2
   12094:	20400101 	subcs	r0, r0, r1, lsl #2
   12098:	e1500081 	cmp	r0, r1, lsl #1
   1209c:	e0a22002 	adc	r2, r2, r2
   120a0:	20400081 	subcs	r0, r0, r1, lsl #1
   120a4:	e1500001 	cmp	r0, r1
   120a8:	e0a22002 	adc	r2, r2, r2
   120ac:	20400001 	subcs	r0, r0, r1
   120b0:	e1a00002 	mov	r0, r2
   120b4:	e12fff1e 	bx	lr
   120b8:	03a00001 	moveq	r0, #1
   120bc:	13a00000 	movne	r0, #0
   120c0:	e12fff1e 	bx	lr
   120c4:	e16f2f11 	clz	r2, r1
   120c8:	e262201f 	rsb	r2, r2, #31
   120cc:	e1a00230 	lsr	r0, r0, r2
   120d0:	e12fff1e 	bx	lr
   120d4:	e3500000 	cmp	r0, #0
   120d8:	13e00000 	mvnne	r0, #0
   120dc:	ea000007 	b	12100 <__aeabi_idiv0>

000120e0 <__aeabi_uidivmod>:
   120e0:	e3510000 	cmp	r1, #0
   120e4:	0afffffa 	beq	120d4 <__aeabi_uidiv+0x1e0>
   120e8:	e92d4003 	push	{r0, r1, lr}
   120ec:	ebffff80 	bl	11ef4 <__aeabi_uidiv>
   120f0:	e8bd4006 	pop	{r1, r2, lr}
   120f4:	e0030092 	mul	r3, r2, r0
   120f8:	e0411003 	sub	r1, r1, r3
   120fc:	e12fff1e 	bx	lr

00012100 <__aeabi_idiv0>:
   12100:	e92d4002 	push	{r1, lr}
   12104:	e3a00008 	mov	r0, #8
   12108:	ebfff8c5 	bl	10424 <raise@plt>
   1210c:	e8bd8002 	pop	{r1, pc}

00012110 <__libc_csu_init>:
   12110:	e92d43f8 	push	{r3, r4, r5, r6, r7, r8, r9, lr}
   12114:	e1a07000 	mov	r7, r0
   12118:	e59f604c 	ldr	r6, [pc, #76]	; 1216c <__libc_csu_init+0x5c>
   1211c:	e59f504c 	ldr	r5, [pc, #76]	; 12170 <__libc_csu_init+0x60>
   12120:	e08f6006 	add	r6, pc, r6
   12124:	e08f5005 	add	r5, pc, r5
   12128:	e0656006 	rsb	r6, r5, r6
   1212c:	e1a08001 	mov	r8, r1
   12130:	e1a09002 	mov	r9, r2
   12134:	ebfff8b2 	bl	10404 <_init>
   12138:	e1b06146 	asrs	r6, r6, #2
   1213c:	08bd83f8 	popeq	{r3, r4, r5, r6, r7, r8, r9, pc}
   12140:	e2455004 	sub	r5, r5, #4
   12144:	e3a04000 	mov	r4, #0
   12148:	e2844001 	add	r4, r4, #1
   1214c:	e5b53004 	ldr	r3, [r5, #4]!
   12150:	e1a00007 	mov	r0, r7
   12154:	e1a01008 	mov	r1, r8
   12158:	e1a02009 	mov	r2, r9
   1215c:	e12fff33 	blx	r3
   12160:	e1540006 	cmp	r4, r6
   12164:	1afffff7 	bne	12148 <__libc_csu_init+0x38>
   12168:	e8bd83f8 	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
   1216c:	000102ec 	.word	0x000102ec
   12170:	000102e4 	.word	0x000102e4

00012174 <__libc_csu_fini>:
   12174:	e12fff1e 	bx	lr

Disassembly of section .fini:

00012178 <_fini>:
   12178:	e92d4008 	push	{r3, lr}
   1217c:	e8bd8008 	pop	{r3, pc}
