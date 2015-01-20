# program prelude

	.text
	
	jal     main
	li      $v0, 10
	syscall


	.text
	.globl  main

main:         
	la	$t0, Label
	b	Label		
	j	Label
	jr	$t0

	li	$t1, 1
	li	$t2, 1

Label:
	li	$t3, 3

	li	$v0, 10                
	syscall





