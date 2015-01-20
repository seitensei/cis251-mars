
	.data
					#int volume  
volume:   .word   0
					#int surface 
surface:  .word   0
					#int radius = 1 
radius:   .word   1
					#int height = 5
height:   .word   5


	.text
					#void    main( )
	.globl  main
main:	
#{

					# volume = radius * radius * height * 22 / 7
#        PUSHW   radius

	lw      $t0, radius                      
	addi    $sp, $sp, -4
	sw      $t0, ($sp)

#        PUSHW   radius
#        MUL
#        PUSHW   height
#        MUL
#        PUSHI   22
#        MUL
#        PUSHI   7
#        DIV
#        POPW    volume


					# surface = (radius  + height) * 2 * radius * 22 / 7

#        PUSHW   radius
#        PUSHW   height
#        ADD
#        PUSHI   2
#        MUL






  #        POPW    Surface




					#}
	li      $v0, 10
	syscall
