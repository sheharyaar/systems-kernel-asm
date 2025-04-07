.section .text
.globl _start

# Calculate 2^3.
# Modify %rbx and %rcx to calculate

_start:
	movq $2, %rbx	# base
	movq $3, %rcx	# exponent

	movq $1, %rax	# stores the result

loop:
	addq $0, %rcx	# this is needed to allow us to use flags in jnz
	jz out		# go back to the loop
	mulq %rbx	# multiply %rax by %rbx
	decq %rcx	# decrease loop counter

	jmp loop

out:
	movq %rax, %rdi	# mov the result to arg
	movq $60, %rax	# syscall exit
	syscall

# I could have used comparison, but need to move along with the exercises
