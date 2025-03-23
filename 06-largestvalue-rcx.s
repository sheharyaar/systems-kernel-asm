# The goal of the program is to find the largest element in the array, but using the rcx register
# and general addressing mode

.globl _start

.section .data
	count: .quad 7
	elements: .quad 105, 20, 33, 80, 52, 10, 120

.section .text
_start:
	movq $0, %rdi		# store initial 0 to the rdi
	movq count, %rcx	# counter

	cmpq $0, %rcx
	je out
loop:
	movq (elements-8)(, %rcx, 8), %rax	# use general addressing, since base and idx are registers
						# we cannot perform arithment (-8), but since `value` is a fixed
						# number, we can perform arithmet (elements-8)
	cmpq %rdi, %rax
	jle skip_store
	
	movq %rax, %rdi
skip_store:
	loopq loop
out:
	movq $60, %rax
	syscall
