.section .text
.globl _start

_start:
	movq $0, %rdi		# store the number of ones
	movb $0b11111101, %al
	movq $8, %rcx		# counter
loop:
	testb $0b00000001, %al
	jz continue

	incq %rdi
continue:
	rol $1, %al
	loopq loop
out:
	movq $60, %rax
	syscall
