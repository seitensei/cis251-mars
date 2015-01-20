                                      		.text
#                                      		.globl   SumSquares
					
#---------------------------------------
#int SumSquares(int First, int Second )
#---------------------------------------

#   saved       ($sp)
# registers     
#   local       ...
#  storage    -4($fp) = LocalSum($fp)
#  old $fp     0($fp)
#     3        4($fp) = First($fp)
#     4        8($fp) = Second($fp)

#						Function value will be returned in $v0.

						First         = 4
						Second        = 8
#{
#int LocalSum
						LocalSum      = -4

					SumSquares:

# 1) allocate storage for local 
#    variables in the activation
#    record.
# 2) save registers that this
#    function will use.
                                      		addi    $sp, $sp, -4 
                                      		sw      $fp, ($sp)    	# save frame pointer

                                      		move    $fp, $sp      	# $fp points to the middle
                                                            		# of the activation record:
                                                           		#  below are the parameters
                                                            		#  above are the local variables
 
                                      		addi    $sp, $sp, -4  	# make room for LocalSum

                                      		addi    $sp, $sp, -4  
                                      		sw      $ra, ($sp)    	#save $ra if this function
                                                            		# calls another function
						 
#    LocalSum  =  First * First;
                                      		lw      $t0, First($fp)
                                      		lw      $t1, First($fp)
                                      		mul     $t0, $t0, $t1
                                      		sw      $t0, LocalSum($fp)

#    LocalSum  =  Second * Second
#                  +  LocalSum;
                                      		lw      $t0, Second($fp)
                                      		lw      $t1, Second($fp)
                                      		mul     $t0, $t0, $t1
                                      		lw      $t1, LocalSum($fp)
                                      		add     $t0, $t0, $t1
                                      		sw      $t0, LocalSum($fp)                                      
					
#    return LocalSum
			              		lw      $v0, LocalSum($fp)
                                      		j       return
                                            
#						RestoreRegisters

                                 	return:
						  
                                      		lw      $ra, ($sp)   	# restore register $ra
                                      		addi    $sp, $sp,  4

                                      		move    $sp, $fp    
                                      		lw      $fp, ($sp)   	# restore register $fp
                                      		addi    $sp, $sp, 4


                                      		jr      $ra          	# return to calling function
#}





					.data

#int	Num1, Num2,
#	TwoSquares
					Num1:        .word   3
					Num2:        .word   4
					TwoSquares:  .word   0


						.text
						.globl main
#void main( )
					main:	
#{
#TwoSquares  =  SumSquares( Num1, Num2)
					
                              			lw      $t0, Num2    	# push last parameter
                              			addi    $sp, $sp, -4
                              			sw      $t0, ($sp)

                              			lw      $t0, Num1    	# push first parameter
                              			addi    $sp, $sp, -4
                              			sw      $t0, ($sp)

			      			jal     SumSquares   	# switch to function, SumSquares

			      			addi    $sp, $sp, 8  	# clean up

			      			sw      $v0, TwoSquares
#}


                              			li      $v0, 10
                              			syscall