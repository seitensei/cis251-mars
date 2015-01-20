# Program prelude to launch program application

		.text
		
		jal     main
		li      $v0, 10
		syscall



		.data
									# int Source = 0x89ABCDEF
Source:		.word   0x89ABCDEF
									# int Destination
Destination:	.word	0


		.text
									# void main()
		.globl	main
main:
									# {
									#	Destination = Source
		lw      $t0, Source 
		sw      $t0, Destination
									# }

		li      $v0, 10
		syscall
