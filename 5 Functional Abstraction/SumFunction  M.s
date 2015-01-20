		.include	"..\macros.asm"
			
		.text
		jal     main
		li      $v0, 10
		syscall


		.text		
										#---------------------------------------
										#int Sum(int augend, int addend )
										#---------------------------------------
		.eqv	augend	4
		.eqv	addend	8
										#{
										#int sumNoCarry
 		.eqv	sumNoCarry	-4
Sum:
		BUILD_ACTIVATION	4
										#  while ( addend != 0 )
L10:
		lw      $t0, addend($fp)
		bnez    $t0, L15
		j       L20
L15:
										#  {
										#   sumNoCarry = augend XOR addend
		lw      $t0, augend($fp)
		lw      $t1, addend($fp)
		xor     $t0, $t0, $t1
		sw      $t0, sumNoCarry($fp)					
										#   addend = (augend AND addend) * (B)10
		lw      $t0, augend($fp)
		lw      $t1, addend($fp)
 		and     $t0, $t0, $t1
		sll     $t0, $t0, 1
		sw      $t0, addend($fp)
										#   augend = sumNoCarry
		lw     $t0, sumNoCarry($fp)
		sw      $t0, augend($fp)
										#  }
		j       L10						
L20:    
										#  return augend
		lw     $v0, augend($fp)
		j       ReturnSum
										#}

ReturnSum:
		DELETE_ACTIVATION	   

		jr      $ra



#---------------------------------------


		.data
										#int	num1
num1:   	.word   5  #0x627
										#int    num2
num2:   	.word   3  #0x4B6
										#int    total
total:  	.word   0
										#int    negSum
negSum: 	.word   0


		.text
		.globl main
										#void main( )
main:	
										#{

										#  total  =  Sum( num1, num2)
 		PUSHW_	num2
		PUSHW_	num1
		jal     Sum

		addi    $sp, $sp, 8

		sw      $v0, total

										#  negNum  =  Sum( -1, -2)
		PUSHI_	2
		NEG_
		PUSHI_	1
		NEG_
		jal     Sum

		addi    $sp, $sp, 8

 		sw      $v0, negSum
										#}

		li      $v0, 10
		syscall
