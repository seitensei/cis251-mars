# Program prelude to launch program application

	.text
	
	jal     main
	li      $v0, 10
	syscall



	.data



	.text
	.globl  main
main:
	li	$t0, 1
	li	$t1, 2
	add	$t2, $t0, $t1		# $t2 = $t0 + $t1

	li	$t3, -1
	li	$t4, -2
	add	$t5, $t3, $t4

	addi	$t6, $t5, 1

	li      $v0, 10
	syscall
