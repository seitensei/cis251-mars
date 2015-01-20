	.include "..\macros.asm"

# program prelude
	.text
	
	jal	main
	li	$v0, 10
	syscall
        
        
        
        .data


        .text
        .globl  main
main: 
   

	PUSHI_    5
	NEG_
	
	li      $v0, 10                
        syscall




