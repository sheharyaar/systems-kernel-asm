I have created this repository to learn assembly quickly in context of systems programming to get the foundational skills to build a toy hypervisor in near future.

- [ ] Practice context saving and restoration -- saving all general-purpose registers on the stack, modifying their contents and restoring their values
- [ ] Create a scheduler in assembly that saves the context (registers, stack pointer, etc.) of the currently running routine and switches to the other.
- [ ] Create a simple page table load the address into the page table base register
- [ ] Implement a basic interrupt handler in assembly
- [ ] Build a minimal kernel service: write an assembly routine that acts as a system call handler (using a software interrupt or exception) to, say, print a string. Then, from user mode (or simulated user code), invoke this system call to verify the interface works.
- [ ] Play with control registers

### Source Code Study (Linux Kernel)

- Interrupt, Exceptions and System calls
- Switching tasks
- Early boot and initialisations
- Atomics and Locks
- CPU initialisation and feature detection
- Memory paging and MMU
- Trampoline
- VDSO ??
