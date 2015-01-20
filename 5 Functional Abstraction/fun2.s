          .text
           jal     main
           li      $v0, 10
           syscall


        .text
        .globl  main

main:

        jr      $ra


#       li      $v0, 10
#       syscall
