.globl _start

.section .text
_start:
	# Initialise variables
	movq $0, %rdi
	movq $people, %rbx
	movq numpeople, %rcx

	cmpq $0, %rcx
	je out
loop:
	movq HAIR_OFF(%rbx), %rax
	cmpq $2, %rax
	jne skip_store

	incq %rdi
skip_store:
	addq $PERSON_RECORD_SZ, %rbx
	loopq loop
out:
	movq $60, %rax
	syscall
