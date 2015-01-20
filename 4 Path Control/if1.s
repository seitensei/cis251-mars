	.include "..\macros.asm"


	.include "..\macros.asm"
		
# program prelude

	.text
			
	jal     main
	li      $v0, 10
	syscall



							# const boolean true  = 1
	.eqv	true	1
							# const boolean false = 0
	.eqv	false	0


	.data
							# int      number = 13
number:	.word    13
							# boolean  done = false
done:	.byte    false


	.text
	.globl  main
							# void main()
main: 
							# {                                             
							#    if (number == 0)
	lw	$t0, number
	bgtz	$t0, L10
	j	L30
L10:
	li      $t0, true
	sb      $t0, done
							#    endif
L30:
							# }
	li      $v0, 10
	syscall





