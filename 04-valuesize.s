.section .text
.globl _start

_start:
	movw $0b0000000100000010, %bx	# initialise 16-bit bx register
	addb %bh, %bl			# add the higher 8bits (1 byte) to the lower byte
	#movb $0, %bh			# clear the higher byte
	xorb %bh, %bh			# clear the higher byte

	movq %rbx, %rdi			# move the value to the arg
	movq $60, %rax			# sys_exit syscall number (on 64-bit)
	syscall				# execute syscall

/*
Q: Why not use `rdi` directly ?

A: `rdi` cannot access individual bytes directly, so we needed a register
(as mmentioned by the book). But it seems that we can access individual can be acessed
using `%dil` but only in 64-bit mode (REX prefix), a CPU running in 32-bit cannot do that. Also, 
you cannot use t`%dil` together with `dh`, so the addb operation won't be possible.

You can try this by uncommenting the below program

_start:
	movq $0b0000000100000010, %rdi	
	addb %dil, %dh			
	xorb %dh, %dh			

	movq $60, %rax			
	syscall				
*/
