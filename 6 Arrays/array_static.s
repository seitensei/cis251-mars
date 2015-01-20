			.include	"..\macros.asm"
# program prelude

			.text
			jal     main
			li      $v0, 10
			syscall



			.data
alphabet:  .ascii  "ABC  FGHIJKLMNOPQRSTUVWXYZ"
			.byte   10, 13, 0


			.text
			.globl  main
main:

										# Console.Write( alphabet )
			PRINT_STATIC_STRING	alphabet

										# alphabet[3] = 'D'
			la  $a0, alphabet
			li  $t0, 'D'
			sb  $t0, 3($a0)
										# alphabet[4] = 'E'
			la  $a0, alphabet
			li  $t1, 'E'
			sb  $t1, 4($a0)
										# notice the mistaken magnitude
										#    in the following

										# alphabet[8] =  0x12345678 
			la  $a0, alphabet

			li  $t2, 0x12345678
			sb  $t2, 8($a0)		# notice sb

										# notice the mistaken magnitude
										#    in the following

										# alphabet[12] =  'A'
			la  $a0, alphabet
 
			li  $t2, 'A'
			sw  $t2, 12($a0)     # notice sw

										# Console.Write( alphabet )
			PRINT_STATIC_STRING		alphabet
			
			li      $v0, 10
			syscall






















