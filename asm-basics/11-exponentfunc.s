.globl exponent
.type exponent, @function

.section .text
exponent:
	enter $16, $0
	movq $1, %rax
	movq %rsi, -8(%rbp)
loop:
	mulq %rdi
	decq -8(%rbp)
	jnz loop
out:
	leave
	ret
