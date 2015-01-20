	.include "..\macros.asm"

# program prelude
	.text
	
	jal	main
	li	$v0, 10
	syscall
        
        
        .data
src:    .word     0x12345678
dst:    .word     0


        .text
        .globl  main

main: 
   
#       PUSH     src
                      
        lw      $t0, src                       
        addi    $sp, $sp, -4
        sw      $t0, ($sp)


#       PUSH     src
                      
        lw      $t0, src                       
        addi    $sp, $sp, -4
        sw      $t0, ($sp)

#       POP     dst
                      
        lw      $t1, ($sp)                       
        addi    $sp, $sp, 4
        sw      $t1, dst

		PUSH    5
	
        li      $v0, 10                
        syscall




