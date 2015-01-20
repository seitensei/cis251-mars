
		.include "..\macros.asm"
		
# program prelude

		.text
			
		jal     main
		li      $v0, 10
		syscall




		.data
							#int  distance = 0,  
distance:	.word   0
							#     airplane = 30, 
airplane:	.word   30
							#     bus      = 40, 
bus:		.word   40
							#     car      = 50;
car:		.word   50




		.text
							#void  main( )
		.globl  main
main:	
							#{
							#   distance = 45  +  
							#               airplane * (bus / 3 % (car-44));
		PUSHI_   45
		PUSHW_   airplane
		PUSHW_   bus
		PUSHI_   3
		DIV_
		PUSHW_   car
		PUSHI_   44
		SUB_
		MOD_
		MUL_
		ADD_
		POPW_    distance

							#}
		li      $v0, 10
		syscall
