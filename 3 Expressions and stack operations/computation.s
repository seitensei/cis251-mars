# Program prelude to launch program application

		.text
		
		jal     main
		li      $v0, 10
		syscall



		.data
								# int operand1 = 5
operand1:	.word	5
								# int operand2 = 3
operand2:	.word	3
								# int sum
sum:		.word	0
								# int diff
diff:		.word	0
								# int product
product:	.word	0
								# int quotient
quotient:	.word	0
								# int remainder
remainder:	.word	0
								# int negative
negative:	.word	0
								# int union
union:		.word	0
								# int intersection
intersection:	.word	0
								# int complement
complement:	.word	0



		.text
		.globl  main
main:
								# sum = operand1 + operand2 + 1
		lw		$t0, operand1
		lw		$t1, operand2
		add		$t2, $t0, $t1
		addi	$t2, $t2, 1
		sw		$t2, sum
								# diff = operand1 - operand2
		lw		$t0, operand1
		lw		$t1, operand2
		sub		$t2, $t0, $t1
		sw		$t2, diff
								# product = operand1 * operand2
		lw		$t0, operand1
		lw		$t1, operand2
		mul		$t2, $t0, $t1
		sw		$t2, product
								# quotient = operand1 / operand2
		lw		$t0, operand1
		lw		$t1, operand2
		div		$t2, $t0, $t1
		sw		$t2, quotient

								# remainder = operand1 % operand2
		lw		$t0, operand1
		lw		$t1, operand2
		rem		$t2, $t0, $t1
		sw		$t2, remainder
								# negative = -operand1
		lw		$t0, operand1
		neg		$t2, $t0
		sw		$t2, negative
								# union = operand1 | operand2
		lw		$t0, operand1
		lw		$t1, operand2
		or		$t2, $t0, $t1
		sw		$t2, union
								# intersection = operand1 & operand2
		lw		$t0, operand1
		lw		$t1, operand2
		and		$t2, $t0, $t1
		sw		$t2, intersection
								# complement = ! operand1 
		lw		$t0, operand1
		not		$t2, $t0
		sw		$t2, complement


		li      $v0, 10
		syscall
