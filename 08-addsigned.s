.section .text
.globl _start

_start:

	movb $127, %al
	addb $1, %al

	jo overflow
no_overflow:
	movq $0, %rdi
	jmp out
overflow:
	movq $1, %rdi
out:
	movq $60, %rax
	syscall
