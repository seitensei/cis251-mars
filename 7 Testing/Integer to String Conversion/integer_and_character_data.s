
                                        .data

# int   number = 327
                                        number:  .word   327
# char  ch
                                        ch:      .byte   0, 0


                                                 .text
# void main()  
                                                 .globl  main
                                        main:
#{


#   ch = (char) (number % 10 + (int) '0')
                                                 lw     $t0, number
                                                 li     $t1, 10
                                                 rem    $t0, $t0, $t1
                                                 addi   $t0, $t0, '0'
                                                 sb     $t0, ch
#   number = number / 10
                                                 lw     $t0, number
                                                 li     $t1, 10
                                                 div    $t0, $t0, $t1


#   print( ch )

                                                 la     $a0, ch
                                                 li     $v0, 4
                                                 syscall


#}
                                                 li      $v0, 10
                                                 syscall
