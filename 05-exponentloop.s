.section .text
.globl _start

_start:
	movq $5, %rbx
	movq $3, %rcx

	movq $1, %rax	

	cmpq $0, %rcx
	je out
loop:
	mulq %rbx
	loopq loop
out:
	movq %rax, %rdi
	movq $60, %rax
	syscall
