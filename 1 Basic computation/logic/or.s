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
	li	$t1, 0xFF0000FF		# mask
	or	$t2, $t0,$t1		# $t2 = $t0 or $t1

	li	$t3, 0xFACE0123
	ori	$t4, $t3, 0xFF

	li	$v0, 10
	syscall
