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
	neg	$t1, $t0		#$t1 = - $t0

	li	$t2, 2
	neg	$t3, $t2

        li      $v0, 10
        syscall
