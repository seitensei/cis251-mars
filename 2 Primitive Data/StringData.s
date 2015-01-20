# Program prelude to launch program application

		.text
		
		jal     main
		li      $v0, 10
		syscall



		.data
								# string greetings = " 123ABCDabcd\n\r\0$$$$"
greetings:
hello:
		.ascii  " 123ABCabcd\n\t$$$$"
		.byte   0
		.byte   0xFF



		.text
		.globl  main
								# void main( )
main:
								# {
								#    Console.Write( greetings )	
		la      $a0, greetings
		li      $v0, 4
		syscall
								# }


		li      $v0, 10
		syscall
