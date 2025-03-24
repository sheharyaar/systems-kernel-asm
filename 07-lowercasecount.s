# One thing to think in this program is what is the difference between
# `jb` and `jl`, can they be used interchangeably in this program ?
# The books uses `jb`, I have used `jl` when comparing with 'a'.

.section .data
	mytext: .ascii "This is a string of characters.\0"

.section .text
.globl _start

_start:
	movq $0, %rdi
	movq $mytext, %rbx	# store the address of first character

loop:
	movb (%rbx), %al
	cmpb $0, %al
	je out

	cmpb $'a', %al
	jl continue


	cmpb $'z', %al
	jg continue

	incq %rdi
continue:
	incq %rbx
	jmp loop
out:
	mov $60, %rax
	syscall
