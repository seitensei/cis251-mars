# Program prelude to launch program application

		.text
		
		jal     main
		li      $v0, 10
		syscall




		.data
													
NegNum:		.word	0x80FACE01
PosNum:		.word	0x70FACE01

													
RotateLeft:	.word	0
RotateRight:	.word	0

LogicalLeft:	.word	0
LogicalRight:	.word	0

ArithLeft:	.word	0
ArithRight:	.word	0



		.text
		.globl	main
main:	
		li      $t2, 4
								# rotate word
		lw      $t1, NegNum
		#rol	$t0, $t1, $t2	 
		rol	$t0, $t1, 4	 
		sw	$t0, RotateLeft

		lw	$t1, NegNum
		#ror	$t0, $t1, $t2	 
		ror	$t0, $t1, 4	 
		sw		$t0, RotateRight

								# logical shift word
		lw	$t1, NegNum
	#	sll	$t0, $t1, $t2
		sll	$t0, $t1, 4
		sw	$t0, LogicalLeft

		lw	$t1, NegNum
	#	srl	$t0, $t1, $t2
		srl	$t0, $t1, 4
		sw	$t0, LogicalRight

								# arithmetic shift word
#		lw      $t1, NegNum
#		sla		$t0, $t1, $t2
#		sw		$t0, ArithLeft

		lw	 $t1, NegNum
	#	sra	$t0, $t1, $t2
		sra	$t0, $t1, 4
		sw	$t0, ArithRight

		lw	$t1, NegNum
		li      $t3, 8
		sra	$t0, $t1, $t3				

								# rotate word
		lw	$t1, PosNum
		rol	$t0, $t1, $t2	 
		sw	$t0, RotateLeft

		lw	$t1, PosNum
		ror	$t0, $t1, $t2	 
		sw	$t0, RotateRight

								# logical shift word
		lw	$t1, PosNum
		sll	$t0, $t1, $t2
		sw	$t0, LogicalLeft

		lw	$t1, PosNum
		srl	$t0, $t1, $t2
		sw	$t0, LogicalRight

								# arithmetic shift word
#		lw      $t1, PosNum
#		sla		$t0, $t1, $t2
#		sw		$t0, ArithLeft

		lw	$t1, PosNum
		sra	$t0, $t1, $t2
		sw	$t0, ArithRight

						
		li	$v0, 10
		syscall
