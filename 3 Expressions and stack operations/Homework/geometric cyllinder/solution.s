
                                                          .data

                                                           PiNum  = 22
                                                           PiDenom  = 7
#int volume  
                                                volume:   .word   0
#int surface 
                                                surface:  .word   0
#int radius  = 10 
                                                radius:   .word   1
#int height = 5
                                                height:   .word   5


                                                          .text
#void    main( )
                                                          .globl  main
                                                main:	
#{

# volume = radius * radius * height * PiN / PiD
                                                 #        PUSHW   radius

                                                          lw      $t0, radius                      
                                                          addi    $sp, $sp, -4
                                                          sw      $t0, ($sp)

                                                 #        PUSHW   radius

                                                          lw      $t0, radius                      
                                                          addi    $sp, $sp, -4
                                                          sw      $t0, ($sp)

                                                 #        MUL

                                                          lw      $t0, ($sp)
                                                          addi    $sp, $sp, 4
                                                          lw      $t1, ($sp)  
                                                          mul     $t0, $t1, $t0
                                                          sw      $t0, ($sp)

                                                 #        PUSHW   height

                                                          lw      $t0, height                      
                                                          addi    $sp, $sp, -4
                                                          sw      $t0, ($sp)

                                                 #        MUL

                                                          lw      $t0, ($sp)
                                                          addi    $sp, $sp, 4
                                                          lw      $t1, ($sp)  
                                                          mul     $t0, $t1, $t0
                                                          sw      $t0, ($sp)

                                                 #        PUSHI   PiNum

                                                          li      $t0, PiNum                      
                                                          addi    $sp, $sp, -4
                                                          sw      $t0, ($sp)

                                                 #        MUL

                                                          lw      $t0, ($sp)
                                                          addi    $sp, $sp, 4
                                                          lw      $t1, ($sp)  
                                                          mul     $t0, $t1, $t0
                                                          sw      $t0, ($sp)

                                                 #        PUSHI   PiDenom

                                                          li      $t0, PiDenom                      
                                                          addi    $sp, $sp, -4
                                                          sw      $t0, ($sp)

                                                 #        DIV

                                                          lw      $t0, ($sp)
                                                          addi    $sp, $sp, 4
                                                          lw      $t1, ($sp)  
                                                          div     $t0, $t1, $t0
                                                          sw      $t0, ($sp)

                                                 #        POPW    volume

                                                          lw      $t0, ($sp)                    
                                                          addi    $sp, $sp, 4
                                                          sw      $t0, volume

# surface = (radius * radius + 2 * radius * height) * PiN / PiD

                                                 #        PUSHW   radius

                                                          lw      $t0, radius                      
                                                          addi    $sp, $sp, -4
                                                          sw      $t0, ($sp)

                                                 #        PUSHW   radius

                                                          lw      $t0, radius                      
                                                          addi    $sp, $sp, -4
                                                          sw      $t0, ($sp)

                                                 #        MUL

                                                          lw      $t0, ($sp)
                                                          addi    $sp, $sp, 4
                                                          lw      $t1, ($sp)  
                                                          mul     $t0, $t1, $t0
                                                          sw      $t0, ($sp)

                                                 #        PUSHI   2

                                                          li      $t0, 2                      
                                                          addi    $sp, $sp, -4
                                                          sw      $t0, ($sp)

                                                 #        PUSHW   radius

                                                          lw      $t0, radius                      
                                                          addi    $sp, $sp, -4
                                                          sw      $t0, ($sp)

                                                 #        MUL

                                                          lw      $t0, ($sp)
                                                          addi    $sp, $sp, 4
                                                          lw      $t1, ($sp)  
                                                          mul     $t0, $t1, $t0
                                                          sw      $t0, ($sp)

                                                 #        PUSHW   height

                                                          lw      $t0, height                      
                                                          addi    $sp, $sp, -4
                                                          sw      $t0, ($sp)

                                                 #        MUL

                                                          lw      $t0, ($sp)
                                                          addi    $sp, $sp, 4
                                                          lw      $t1, ($sp)  
                                                          mul     $t0, $t1, $t0
                                                          sw      $t0, ($sp)

                                                 #        ADD

                                                          lw      $t0, ($sp)
                                                          addi    $sp, $sp, 4
                                                          lw      $t1, ($sp)  
                                                          add     $t0, $t1, $t0
                                                          sw      $t0, ($sp)

                                                 #        PUSHI   PiNum

                                                          li      $t0, PiNum                      
                                                          addi    $sp, $sp, -4
                                                          sw      $t0, ($sp)

                                                 #        MUL

                                                          lw      $t0, ($sp)
                                                          addi    $sp, $sp, 4
                                                          lw      $t1, ($sp)  
                                                          mul     $t0, $t1, $t0
                                                          sw      $t0, ($sp)

                                                 #        PUSHI   PiDenom

                                                          li      $t0, PiDenom                      
                                                          addi    $sp, $sp, -4
                                                          sw      $t0, ($sp)

                                                 #        DIV

                                                          lw      $t0, ($sp)
                                                          addi    $sp, $sp, 4
                                                          lw      $t1, ($sp)  
                                                          div     $t0, $t1, $t0
                                                          sw      $t0, ($sp)

                                                 #        POPW    Surface

                                                          lw      $t0, ($sp)                    
                                                          addi    $sp, $sp, 4
                                                          sw      $t0, surface

#}
                                                          li      $v0, 10
                                                          syscall