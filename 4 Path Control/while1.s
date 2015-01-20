		.include "..\macros.asm"
		
# program prelude

	.text
			
	jal     main
	li      $v0, 10
	syscall



	.data
						# int n = 5
n:	.word	5
						# int sum = 0
sum:	.word	0


	.text
						# void main( )
		
	.globl  main
main: 
						# {     
						#    sum = 0
	sw	$0, sum			
						#    n = 5
	li	$t0, 5					
	sw	$t0, n						                                        
						#    while (n > 0)
L10:
	lw      $t0, n
	bgtz    $t0, L20
	j       L30
						#    {
L20:
						#      sum = sum + n
	lw	$t0, sum
	lw	$t1, n	
	add	$t0, $t0, $t1	
	sw	$t0, sum				
						#      n  =  n - 1
	lw      $t0, n
	addi    $t0, $t0, -1
	sw      $t0, n
						#  }
	j       L10
 L30:

						#}
	li      $v0, 10
	syscall





