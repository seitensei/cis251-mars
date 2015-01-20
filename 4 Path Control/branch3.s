# program prelude

	.text
	jal     main
	li      $v0, 10
	syscall


	.text
	.globl  main
main:         
	li	$t1, 1
	li	$t2, 1

	bge	$t1, $t2, Label		#  bgt,  blt,  ble,  bne,  beq
	bgeu	$t1, 2, Label		#  bgtu, bltu, bleu, 
        
Label:
	li	$t3, 3

	bgez	$t1, Label		#  bgtz, bltz, blez, bnez, beqz


	li	$v0, 10                
	syscall





