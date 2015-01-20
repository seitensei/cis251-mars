# Program prelude to launch program application

	.text
	jal     main
	li      $v0, 10
	syscall


	.data


	.text
	.globl  main

main:
	li	$t0, 0xFACE
	li	$t1, 0x10
	mul	$t2, $t0, $t1		# $t2 = $t0 * $t1

	li	$t3, -1
	li	$t4, 0x10
	mul	$t5, $t3, $t4

	li      $v0, 	10
	syscall
