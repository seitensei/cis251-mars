		.include	"..\macros.asm"
			
						
												.data
										# char[] str0;
str0:		.word	0
										# char[] str;
str:		.word	0
	#	.asciiz	"DEF"
	#	.byte	0x7F


		.text
		.globl  main
main:
										# str0 = new char[ 16 ]
		ALLOCATE	16,  str0
										# str = new char[ 16 ]
		ALLOCATE	16,  str
										# str[ 0 ] = 'A'
		li		$v0,  'A'								
		PUT_CHAR	str,  0
										# str[ 1 ] = 'B'
		li		$v0,  'B'																		
		PUT_CHAR	str  1
										# str[ 2 ] = 'C'
		li		$v0,  'C'																		
		PUT_CHAR	str  2
										# str[ 3 ] = chr(0)
		li		$v0,  0								
		PUT_CHAR	str  3
										# Console.Write( str )
		PRINT_DYNAMIC_STRING	str



		GET_CHAR	str  0
		PUT_CHAR	str0  0
		
		li		$v0,  0								
		PUT_CHAR	str0  1
		PRINT_DYNAMIC_STRING	str0

		li      $v0, 10
		syscall
