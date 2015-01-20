
# Program prelude to launch program application

	.text
			
	jal     main
	li      $v0, 10
	syscall



#  SPIM stores character data ASCII encoded.
#  ASCII ref: http://en.wikipedia.org/wiki/ASCII_code

	.data
							# char  a = 'A'
a:      .byte	'A'
							# char  null = chr( 0 )
null:	.byte	0
							# char  digit = '0'
digit:	.byte	'0'
							# char  blank = ' '
blank:	.byte	' '
							# char  CR = chr( 13 )
CR:	.byte	13
							# char  LF = chr( 10 )
LF:	.byte	10

							# char  ch
ch:     .byte	0



	.text
	.globl  main
							# void main( )
main:
							# {
							#    ch = a	
	lb	$t0, a
	sb	$t0, ch
							#    ch = '$'
	li	$t0, '$'
	sb	$t0, ch
							# }


# show addresses for variables	
	la	$t0, a
	la	$t1, null
	la	$t2, digit
	la	$t3, blank
	la	$t4, CR
	la	$t5, LF
 
	li      $v0, 10
	syscall
