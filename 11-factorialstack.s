.section .data
value: .quad 3

.section .text
.globl _start

_start:
	pushq $0
	movq value, %rax

push_num:
	pushq %rax
	decq %rax
	jnz push_num

	mov $1, %rax
multiply:
	popq %rcx
	cmpq $0, %rcx
	je out

	mulq %rcx
	jmp multiply
out:
	movq %rax, %rdi
	movq $60, %rax
	syscall
