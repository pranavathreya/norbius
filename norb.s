	.file	"norb.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	__vector_1
	.type	__vector_1, @function
__vector_1:
	push r1
	push r0
	lds r0,95
	push r0
	clr __zero_reg__
	push r18
	push r19
	push r24
	push r25
	push r30
	push r31
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 11 */
.L__stack_usage = 11
	ldi r24,lo8(37)
	ldi r25,0
	ldi r18,lo8(37)
	ldi r19,0
	movw r30,r18
	ld r19,Z
	ldi r18,lo8(4)
	eor r18,r19
	movw r30,r24
	st Z,r18
	nop
/* epilogue start */
	pop r29
	pop r28
	pop r31
	pop r30
	pop r25
	pop r24
	pop r19
	pop r18
	pop r0
	sts 95,r0
	pop r0
	pop r1
	reti
	.size	__vector_1, .-__vector_1
.global	ioinit
	.type	ioinit, @function
ioinit:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	ldi r24,lo8(105)
	ldi r25,0
	ldi r18,lo8(2)
	movw r30,r24
	st Z,r18
	ldi r24,lo8(61)
	ldi r25,0
	ldi r18,lo8(1)
	movw r30,r24
	st Z,r18
/* #APP */
 ;  11 "norb.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	ldi r24,lo8(43)
	ldi r25,0
	ldi r18,lo8(4)
	movw r30,r24
	st Z,r18
	ldi r24,lo8(36)
	ldi r25,0
	ldi r18,lo8(-1)
	movw r30,r24
	st Z,r18
	nop
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	ioinit, .-ioinit
.global	main
	.type	main, @function
main:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	call ioinit
.L4:
	ldi r24,lo8(37)
	ldi r25,0
	ldi r18,lo8(8)
	movw r30,r24
	st Z,r18
	rjmp .L4
	.size	main, .-main
	.ident	"GCC: (GNU) 5.4.0"
