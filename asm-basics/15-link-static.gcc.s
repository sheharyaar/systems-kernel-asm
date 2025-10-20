.globl main

.section .data
output:
    .ascii "hello\n\0"

.section .text

main:
    enter $0, $0

    movq stdout, %rdi
    movq $output, %rsi
    call fprintf

    movq $0, %rax

    leave
    ret

# now check the size of the binary, it is built using static linking in the Makefile
