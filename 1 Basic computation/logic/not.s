# Program prelude to launch program application

	.text
	
	jal     main
	li      $v0, 10
	syscall


	.data



	.text
	.globl  main

main:
	li	$t0, 0xFACE0123		# info
	not	$t1, $t0		# $t1 = not $t0

	li	$t2, 0
	not	$t3,$t2

	li	$t4, 1
	not	$t5,$t4

	li      $v0, 10
	syscall
