
                                                  .data
# int    number = 0xFFFF
                                        number:   .word    0xFFFF
# string reversed
                                        reversed:
                                                  .word    0
# string inOrder
                                        inOrder:
                                                  .word    0
# int    length = 0
                                        length:   .word    0
# int    r = 0
                                        r:        .word    0
# int    k = 0
                                        k:        .word    0
# char   ch
                                        ch:       .byte    0

# string label1 = " Digits reversed = "
# string label2 = "  Digits in order = "
                                        label1:   .asciiz  " Digits reversed = "
                                        label2:   .asciiz  "  Digits in order = "


# void main()  
                                                  .text
                                                  .globl  main
                                        main:
# {
#    reversed = new char[ 16 ]
                                                  li      $a0, 16
                                                  li      $v0, 9
                                                  syscall
                                                  sw      $v0, reversed
#    do
                                        loop:
#    {
#       ch = (char) ( number % 10 +
#                           (int) '0' )






#       reversed[ r ] = ch
                                                  lb      $t0, ch

                                                  lw      $a0, reversed



#       r++



#       number = number / 10




#    }
#    while (number > 0)
                                        while:    lw     $t0, number
                                                  blez   $t0, endWhile
                                                  j      loop
                                        endWhile:



#    reversed[ r ] = chr(0)




#    length = r
                                                  lw      $t0, r
                                                  sw      $t0, length


#    inOrder = new char[ 16 ]




#    r = length - 1



#    while ( r >= 0 )
                                        while2:   lw     $t0, r


                                        loop2:
#    {
#       inOrder[ k ] = reversed[ r ]








#       k++



#       r--



#    }

                                        endWhile2:
#    inOrder[ length ] = chr(0)
                                                  lw      $a0, inOrder
                                                  lw      $t1, length
                                                  add     $a0, $a0, $t1
                                                  sb      $0, ($a0)
#    Console.Write( label1 )
                                                  la      $a0, label1
                                                  li      $v0, 4
                                                  syscall
#    Console.Write( reversed )
                                                  lw      $a0, reversed
                                                  li      $v0, 4
                                                  syscall
#    Console.Write( label2 )



#    Console.Write( inOrder )



# }
                                                  li      $v0, 10
                                                  syscall
