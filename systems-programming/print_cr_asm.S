#include <asm/nospec-branch.h>

.globl print_cr0
.globl print_cr2
.globl print_cr3

print_cr0:
	movq %cr0, %rax
	RET

print_cr2:
	movq %cr2, %rax
	RET

print_cr3:
	movq %cr3, %rax
	RET
