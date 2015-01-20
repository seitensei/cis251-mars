# Program prelude to launch program application

	.text
	jal     main
	li	$v0, 10
	syscall


	.data



	.text
	.globl  main
main:

	li	$t0, 0xFACE0123		# info
	li	$t1, 0xFF0000FF		# mask
	and	$t2, $t0,$t1		# $t2 = $t0 and $t1

 	li	$v0, 10
	syscall
