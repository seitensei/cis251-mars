
# Program prelude to launch program application

		.text
		
		jal     main
		li      $v0, 10
		syscall



			.data
									# int  num0 = 0x12345678
num0:		.word	0x12345678
									# int  num1 = 1
num1:		.word	1
									# int  num2 = 2
num2:		.word	2
									# int  num3 = MAX_INT
num3:		.word	0x7FFFFFFF
									# int  num4 = MIN_INT
num4:		.word	0x80000000
									# int  num5 = -1
num5:		.word	-1
									# int  num6 = -2
num6:		.word	-2


									# unsigned int max = 4294967295
max:		.word	4294967295
									# unsigned int max_plus1 = 4294967296
max_plus1:	.word	4294967296
									# short int      num7 = 0
num7:		.half	0
									# short unsigned largest = 65535
largest:	.half	65535
									# int  smallest = 32768
smallest:	.half -32768



		.text
		.globl  main
									# void main( )
main:
									# {
									#    num0 = 10	
		li		$t0, 10
		sw		$t0, num0
									#    num0 = num1	
		lw		$t0, num1
		sw		$t0, num0
									# }


# show addresses for variables	
		la		$t0, num1
		la		$t1, num2
		la		$t2, num3
		la		$t3, num4
		la		$t4, num5
		la		$t5, num6


		li      $v0, 10
		syscall
