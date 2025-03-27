.section .text
.globl _start

_start:
	movq $-8, %rdi
	call abs	# call the abs function

	movq %rax, %rdi
	movq $60, %rax
	syscall
