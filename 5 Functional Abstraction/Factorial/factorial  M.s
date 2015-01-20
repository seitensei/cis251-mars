		.include  "..\..\macros.asm"
		
	        .text
	        
		jal     main
		li      $v0, 10
		syscall

					
						
.text
						# int Factorial( int n )
		.eqv	n  4
Factorial:
						#{
		BUILD_ACTIVATION  0

						#   if (n > 0)
		lw	$t0, n($fp)
		bgtz	$t0, L10
		j	L20
L10:
						#      return Factorial( n - 1 ) * n
		lw	$t0, n($fp)
		addi	$t0, $t0, -1
		addi	$sp, $sp, -4
		sw	$t0, ($sp)

		jal	Factorial
		addi	$sp, $sp, 4

		lw	$t0, n($fp)
		mul	$v0, $v0, $t0
		j	cleanup
						#  else
		j	L30
L20:
						#    return 1
		li	$v0, 1
		j	cleanup
L30:

						# }
		cleanup:
		DELETE_ACTIVATION

		jr	$ra



		.data
						# int product
product: 	.word	0

		.text
						# void main( )	
		.globl	main
main:
		addi	$sp, $sp, -4
		sw	$fp, ($sp)
		move	$fp, $sp

		addi	$sp, $sp, -4
		sw	$ra, ($sp)
						# {
						#  product = Factorial( 5 )
		PUSHI_	5
				
		jal	Factorial
		addi	$sp, $sp, 4

		sw	$v0, product
						# }
		lw	$ra, ($sp)
		addi	$sp, $sp, 4

		move	$sp, $fp
		lw	$fp, ($sp)
		addi	$sp, $sp, 4

		jr	$ra

