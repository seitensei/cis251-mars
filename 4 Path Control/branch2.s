# program prelude

	.text
	jal     main
	li      $v0, 10
	syscall


	.text
	.globl  main

main:         
	li	$t1, 0
	li	$t2, 1
	la	$t3, main

	beq	$t1, $t2, Label
#	beq	$t1, main, Label		# illegal
	beq	$t1, 4,Label
        
Label:
	li	$t3, 3

	beqz	$t1, Label


	li	$v0, 10                
	syscall


