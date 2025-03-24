.globl _start

.section .text
_start:
	# Initialise registers
	movq $0, %rdi
	movq numpeople, %rcx
	movq $people, %rbx

	cmpq $0, %rcx
	je out
loop:
	# Iterate over the array
	movq HEIGHT_OFF(%rbx), %rax	# access the height
	addq $PERSON_RECORD_SZ, %rbx	# advance into the person array

	# Check for the largest height
	cmpq %rdi, %rax
	jle skip_store

	# store if the largest
	movq %rax, %rdi
skip_store:
	loopq loop
out:
	movq $60, %rax
	syscall
