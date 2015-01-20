                                         .data
# char[] str;
                              str:       .word    0



                                         .text
                                         .globl  main
                              main:

# str = new char[ 16 ]

                                         li      $a0, 16   #request for 16 bytes
                                         li      $v0, 9    #dynamic allocation
                                         syscall
                                         sw      $v0, str

# str[ 0 ] = 'A'
                                         li      $t0, 'A'
                                         lw      $a0, str
                                         sb      $t0, ($a0)

# str[ 1 ] = 'B'
                                         li      $t0, 'B'
                                         lw      $a0, str
                                         sb      $t0, 1($a0)

# str[ 2 ] = 'C'
                                         li      $t0, 'C'
                                         lw      $a0, str
                                         addi    $a0, $a0, 2
                                         sb      $t0, ($a0)

# str[ 3 ] = chr(0)
                                         li      $t0, 0
                                         lw      $a0, str
                                         addi    $a0, $a0, 3
                                         sb      $t0, ($a0)

# Console.Write( str )
                                         lw      $a0, str   # string address
                                         li      $v0, 4	    # print string
                                         syscall


                                         li      $v0, 10
                                         syscall