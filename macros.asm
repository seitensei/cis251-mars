#              A Macro Library for MARS MIPS assembler


.macro PUSHI_    %0
                      
        li      $t0, %0                      
        addi    $sp, $sp, -4
        sw      $t0, ($sp)
.end_macro



.macro PUSHW_    %0
                      
        lw      $t0, %0                      
        addi    $sp, $sp, -4
        sw      $t0, ($sp)
.end_macro



.macro POPW_      %0

        lw      $t0, ($sp)
        sw      $t0, %0
        addi    $sp, $sp, 4
.end_macro



#         Integer Arithmetic using the hardware stack


.macro NEG_

        lw      $t0, ($sp)
	neg	$t0, $t0
        sw      $t0, ($sp)
.end_macro




.macro ADD_
 
        lw      $t0, ($sp)
        addi    $sp, $sp, 4
        lw      $t1, ($sp)  
        add     $t0, $t1, $t0
        sw      $t0, ($sp)
.end_macro



.macro SUB_
 
        lw      $t0, ($sp)
        addi    $sp, $sp, 4
        lw      $t1, ($sp)  
        sub     $t0, $t1, $t0
        sw      $t0, ($sp)
.end_macro



.macro MUL_

        lw      $t0, ($sp)
        addi    $sp, $sp, 4
        lw      $t1, ($sp)  
        mul     $t0, $t1, $t0
        sw      $t0, ($sp)
.end_macro



.macro DIV_

        lw      $t0, ($sp)
        addi    $sp, $sp, 4
        lw      $t1, ($sp)  
        div     $t0, $t1, $t0
        sw      $t0, ($sp)
.end_macro


.macro MOD_

        lw      $t0, ($sp)
        addi    $sp, $sp, 4
        lw      $t1, ($sp)  
        rem     $t0, $t1, $t0
        sw      $t0, ($sp)
.end_macro

.macro REM_

        lw      $t0, ($sp)
        addi    $sp, $sp, 4
        lw      $t1, ($sp)  
        rem     $t0, $t1, $t0
        sw      $t0, ($sp)
.end_macro


.macro AND_
 
        lw      $t0, ($sp)
        addi    $sp, $sp, 4
        lw      $t1, ($sp)  
        and     $t0, $t1, $t0
        sw      $t0, ($sp)
.end_macro


.macro OR_
 
        lw      $t0, ($sp)
        addi    $sp, $sp, 4
        lw      $t1, ($sp)  
        or      $t0, $t1, $t0
        sw      $t0, ($sp)
.end_macro


.macro NOTB_

        lw      $t0, ($sp)
	ori	$t0, $t0, 1
        sw      $t0, ($sp)
.end_macro

.macro ONES_COMP_

        lw      $t0, ($sp)
	not	$t0, $t0
        sw      $t0, ($sp)
.end_macro



# validate the register order: $t0, $t1

.macro  EQUAL_

	lw	$t0, ($sp)
        addi    $sp, $sp, 4
	lw	$t1, ($sp)
	seq	$t0, $t0, $t1
	sw	$t0, ($sp)
.end_macro


.macro  NOTEQUAL_

	lw	$t0, ($sp)
        addi    $sp, $sp, 4
	lw	$t1, ($sp)
	sne	$t0, $t0, $t1
	sw	$t0, ($sp)
.end_macro


.macro  LESS_

	lw	$t0, ($sp)
        addi    $sp, $sp, 4
	lw	$t1, ($sp)
	slt	$t0, $t0, $t1
	sw	$t0, ($sp)
.end_macro


.macro  LESSEQUAL_

	lw	$t0, ($sp)
        addi    $sp, $sp, 4
	lw	$t1, ($sp)
	sle	$t0, $t0, $t1
	sw	$t0, ($sp)
.end_macro


.macro  GREATER

	lw	$t0, ($sp)
        addi    $sp, $sp, 4
	lw	$t1, ($sp)
	sgt	$t0, $t0, $t1
	sw	$t0, ($sp)
.end_macro


.macro  GREATEREQUAL_

	lw	$t0, ($sp)
        addi    $sp, $sp, 4
	lw	$t1, ($sp)
	sge	$t0, $t0, $t1
	sw	$t0, ($sp)
.end_macro


.macro SAVE_FP

	addi	$sp, $sp, -4
	sw	$fp, ($sp)
	move	$fp, $sp
.end_macro

.macro SAVE_RA

	addi	$sp, $sp, -4
	sw	$ra, ($sp)
.end_macro



.macro BUILD_ACTIVATION  %0

	addi    $sp, $sp, -4 
	sw      $fp, ($sp)
	move    $fp, $sp
 
	addi    $sp, $sp, -%0

	addi    $sp, $sp, -4 
	sw      $ra, ($sp)
.end_macro



.macro DELETE_ACTIVATION

	lw      $ra, ($sp)
	addi    $sp, $sp, 4

	move    $sp, $fp    
	lw      $fp, ($sp)
	addi    $sp, $sp, 4
.end_macro



.macro ALLOCATE	%0, %1

	li      $a0, %0   #request for 16 bytes
	li      $v0, 9    #dynamic allocation
	syscall
	sw      $v0, %1
.end_macro



.macro PRINT_STATIC_STRING	%0		# string address

	la      $a0, %0			
	li      $v0, 4
	syscall
.end_macro



.macro PRINT_DYNAMIC_STRING	%0		# string address

	lW      $a0, %0			
	li      $v0, 4
	syscall
.end_macro



.macro PUT_CHAR		%0, %1			# string address, index

	lw      $a0, %0
	add		$a0, $a0, %1
	sb      $v0, ($a0)
.end_macro



.macro GET_CHAR		%0, %1			# string address, index

	lw      $a0, %0
	add		$a0, $a0, %1
	lb      $v0, ($a0)
.end_macro
