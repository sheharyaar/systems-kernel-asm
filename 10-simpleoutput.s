.section .data
mytext: .ascii "Hello World\n\0"
mytext_end:

.equ mytext_len, mytext_end - mytext

.section .text
.globl _start

_start:
	# write(int fd, const void buf[.count], size_t count) 
	mov $10, %rcx
loop:
	mov $1, %rax
	mov $1, %rdi	# fd value
	mov $mytext, %rsi
	mov $mytext_len, %rdx

	mov %rcx, %rbx		# save rcx value, it will get clobbered
	syscall
	mov %rbx, %rcx

	loopq loop

	mov $60, %rax
	xor %rdi, %rdi	# zero out rdi
	syscall
