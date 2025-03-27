.section .text
.globl main

# some standard libraries require setups to be already done, so 
# we use main
main:
	movq $-5, %rdi
	call abs

	# Since main is a function called by C runtime library, we need to return
	# rather than exit. The retrun value (abs value in this case) is already
	# in %rax
	ret
