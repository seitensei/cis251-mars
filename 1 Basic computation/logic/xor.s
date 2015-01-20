# Program prelude to launch program application

	.text
	
	jal	main
	li	$v0, 10
	syscall



	.data



	.text
	.globl  main
main:
	li	$t0, 0xFACE0123			# info
	li	$t1, 0xFF0000FF			# mask
	xor	$t2, $t0, $t1			# $t2 = $t0 xor $t1
	xor	$t3, $t2, $t1

	li	$t4, 0
	xori	$t5, $t4, 0x1

	li	$t6, 0
	xori	$t7, $t6, 0x1


	li	$v0, 10
	syscall
