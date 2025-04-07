.section .data
currtime: .quad 0

.section .text
.globl _start

_start:
	movq $201, %rax
	movq $currtime, %rdi
	syscall

	# curr time
	movq currtime, %rdx
	addq $5, %rdx
loop:
	movq $201, %rax
	#movq $currtime, %rdi 	# no need to load it again, since it is not clobbered by the prev call
	syscall

	cmpq %rdx, currtime
	jb loop

	movq $60, %rax
	xorq %rdi, %rdi
	syscall
