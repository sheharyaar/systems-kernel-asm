.section	.data
num: .int 5

.section	.text
.globl _start

_start:
	mov $60, %rax		# syscall for exit in 64-bit assembly
	mov num, %rdi		# 
	syscall			# execute syscall
