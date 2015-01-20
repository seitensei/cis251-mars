# Program prelude to launch program application

		.text
		jal	main
		li	$v0, 10
		syscall
	

			.data
							
info:		.word	0xABCD1234
mask:		.word	0xFF0000FF
			.align	4
												
bitSet:		.word   0
bitClear:	.word   0
change:		.word   0


		.text
		.globl  main
main:	
		lw	$t0, info
		lw	$t1, mask


		and	$t2, $t0, $t1
		sw	$t2, bitClear

		or	$t3, $t0, $t1
		sw	$t3, bitSet

		xor	$t4, $t0, $t1
		sw	 $t4, change

						
		li	$v0, 10
		syscall
