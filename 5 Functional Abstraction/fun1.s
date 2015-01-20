
# prelude code
	        .text
	        
		jal     main
		li      $v0, 10
		syscall

         
          
          	.data
        
          	.text
fun1:           jr      $ra


          	.globl  main
main:                                  
	  	jal     fun1		
L10: 
        	li      $v0, 10                
       		syscall



