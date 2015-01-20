# Program prelude to launch program application

	.text
	jal     main
	li		$v0, 10
	syscall




	.data

	.byte	-15, -14, -13, -12, -11, -10, -9, -8
	.byte	-7, -6, -5, -4, -3, -2, -1
	.byte	0
	.byte	1, 2, 3, 4, 5, 6, 7, 8, 9
	.byte	10, 11, 12, 13, 14, 15



	.text
	.globl  main
							# void main( )
main:
							# {	
							# }
	li      $v0, 10
	syscall
