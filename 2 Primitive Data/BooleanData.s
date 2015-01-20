# Program prelude to launch program application

		.text
			
		jal     main
		li      $v0, 10
		syscall


								# true is a constant
								# false is a constant
		.eqv	true	1
		.eqv	false	0


		.data
								# boolean  isJanuary = false
isJanuary:	.byte	false
								# boolean  isApril = false
isApril:	.byte	false
								# boolean  is2015
is2015:		.byte	0



		.text
		.globl  main
								# void main( )
main:
								# {
								#    isJanuary = true	
		li	$t0, true
		sb	$t0, isJanuary
								#    isApril = false	
		li	$t0, false
		sb	$t0, isApril
								#    is2015 = true	
		li	$t0, true
		sb	$t0, is2015
								# }

								# show addresses for variables	
		la	$t1, isJanuary
		la	$t2, isApril
		la	$t3, is2015


		li      $v0, 10
		syscall
