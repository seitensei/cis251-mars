# Program prelude to launch program application

	.text
	
	jal     main
	li      $v0, 10
	syscall




	.data

	.byte	-4
	.byte	-3
	.byte	-2
	.byte	-1
	.byte	0, 1, 2, 3



	.text
	.globl  main
						# void main( )
main:
						# {	
						# }

	li      $v0, 10
	syscall
