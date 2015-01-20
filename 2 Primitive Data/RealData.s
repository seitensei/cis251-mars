# Program prelude to launch program application

		.text
		
		jal     main
		li      $v0, 10
		syscall




		.data
								# float  zero
 zero:		.float	0.0
								# float  one
one:		.float	1.0
								# float threePoint25
threePoint25	.float  3.25

		.float -1.75
								# float  oneHalf
 oneHalf:	.float 0.5
								# float  pi = 3.141596
pi:		.float	3.141596
								# float  e = 2.7
e:   		.float	2.7



		.text
		.globl  main
								# void main( )
main:
								# {
								# }


# show addresses for variables	
		la	$t0, zero
		la	$t1, one
		la	$t2, threePoint25
		la	$t3, pi
		la	$t4, e
		la	$t5, oneHalf


		li      $v0, 10
		syscall
