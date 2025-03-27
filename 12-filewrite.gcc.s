.section .data
fname: .ascii "myfile.txt\0"
openmode: .ascii "w\0"
fmtstring: .ascii "The age of %s is %d.\n\0"

sallyname: .ascii "Sally\0"
sallyage: .quad 53

.section .text
.global main

main:
	# create a stack frame with one local variable for the file pointer
	enter $16, $0
	movq $fname, %rdi	# pathname
	movq $openmode, %rsi	# mode
	call fopen		# call fopen(pathname, mode), the resulting pointer is in %rax
	
	movq %rax, -8(%rbp)	# move the pointer to the stack

	# call fprintf(FILE*, *format_str, ...)
	movq -8(%rbp), %rdi
	movq $fmtstring, %rsi
	movq $sallyname, %rdx
	movq sallyage, %rcx
	movq $0, %rax
	call fprintf

	# close the file
	mov -8(%rbp), %rdi
	call fclose

	xorq %rax, %rax
	leave
	ret
