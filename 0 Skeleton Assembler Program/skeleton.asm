# Program prelude to launch program application

			.text

			jal     main
			li      $v0, 10
			syscall


# data section for data

			.data



# text section for program code

			.text
			.globl  main
main:
			li      $v0, 10
			syscall
