.section .text
.globl _start

_start:
    movq $60, %rax   # syscall number for exit
    movq $5, %rdi    # exit status
    syscall         # invoke the system call
