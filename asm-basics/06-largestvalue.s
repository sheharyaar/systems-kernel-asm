.global _start

.section .data
count: .quad 7
elements: .quad 5, 20, 33, 80, 52, 10, 1

.section .text

_start:
	movq count, %rcx	# no. of elements, better to store in a register, since we have many access
				# notice the use of $ to use the memory location address as integer
				# This is the direct addressing mode
	movq $elements, %rbx	# address of the first variable (again we store it, to have faster access)
							# This is immediate mode
	movq $0, %rdi		# need a 0 value in case we don't have any elements

	cmpq $0, %rcx
	je out
loop:
	movq (%rbx), %rax	# get the value held by rbx to rax
	cmpq %rdi, %rax
	jle skip_store

	movq %rax, %rdi
skip_store:
	addq $8, %rbx		# advance the address of the element
	loopq loop
out:
	movq $60, %rax
	syscall

