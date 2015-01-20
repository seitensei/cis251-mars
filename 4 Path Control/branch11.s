# program prelude

	.text
	jal     main
	li      $v0, 10
	syscall

	.text
	.globl  main
main:         

	j		L20					#   2       target
										#   6         26        (bits)
L10:
	beq	$t2, $t1, L20		#   4  $t2   $t1  Offset
	beq	$t2, $t1, L20		#   6   5     5     16  (bits)
	beq	$t2, $t1, L20
	
	beq	$t2, $t1, L10
	beq	$t2, $t1, L10
	beq	$t2, $t1, L10
L20:

	li      $v0, 10                
	syscall





