	.include "..\macros.asm"
		
# program prelude

	.text
			
	jal     main
	li      $v0, 10
	syscall

	
	
					#   true  = 1
	.eqv	true	1
					#   false = 0
	.eqv	false	0
	
	
	.data
					# int      sum = 5
sum:	.word    5
					# boolean  isZero = false
isZero:	.byte    false



	.text
					# void main()
	.globl  main
 main: 
					# {                                             
					#  if (sum == 0)
	lw      $t0, sum
	beqz    $t0, L10
	j       L20
L10:
					#      isZero  =  true
	li      $t0, true
	sb      $t0, isZero
					#  else
	j       L30
L20:
					#      isZero  =  false
	li      $t0, false
	sb      $t0, isZero
					#  endif
L30:
					# }
	li      $v0, 10
	syscall





