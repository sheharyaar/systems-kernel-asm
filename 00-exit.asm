section	.text
global _start

_start:
	mov eax, 1	; 1 is the exit syscall number
	mov ebx, 5	; the status value to return
	int 0x80	; execute system call '0x80'
