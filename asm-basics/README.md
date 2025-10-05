## Build and Run

To run the programs, build using `make` and you can execute the generated binaries.

> The `.s` files use `_start` label to run the assembly programs. The `.gcc.s` files use `main` to run the programs. I have changed the extension to make it easier for the Makefile to perform compilation. The `.gcc.s` programs use `gcc`, the `.s` labelled programs use `as`.

## List of programs:
The folder contains the following assembly programs that demonstrate various concepts:

| Category | Program | Description |
|-----------|----------|-------------|
| **Introduction** | [`00-exit.s`](00-exit.s) | A simple program that exits with a given exit code. |
| **Registers usage** | [`04-valuesize.s`](04-valuesize.s) | Plays around with register sizes. Adds the upper half of a 16-bit register to the lower half and returns the result. |
| **Comparison, Branching, Loops** | [`05-exponent.s`](05-exponent.s) | Calculates the exponent of a number using a loop and demonstrates the `jmp` instruction. |
|  | [`05-exponentloop.s`](05-exponentloop.s) | Similar to `05-exponent.s` but uses the `loopq` instruction to simplify the loop. |
| **Data in memory** | [`06-largestvalue.s`](06-largestvalue.s) | Finds the largest value in an array using `direct memory mode` and `immediate addressing mode`. |
|  | [`06-largestvalue-rcx.s`](06-largestvalue-rcx.s) | Finds the largest value in an array using `rcx` as the loop counter and general addressing mode. |
| **Data records and strings** | [`07-persondata.s`](07-persondata.s) | Generates an object file containing only data (no instructions). Demonstrates usage of `.quad`, `.equ`. |
|  | [`07-tallest.s`](07-tallest.s) | Uses the dataset in `07-persondata.s` to find the tallest person. Demonstrates splitting data and code into different files. |
|  | [`07-browncount.s`](07-browncount.s) | Counts the number of "brown" haired people in the dataset. |
|  | [`07-lowercasecount.s`](07-lowercasecount.s) | Counts the number of lowercase letters in a string. Demonstrates `.data` and `.text` sections and string storage. |
| **Signed/Unsigned numbers, Bitwise ops** | [`08-addsigned.s`](08-addsigned.s) | Adds two signed numbers and returns `0` if no overflow, `1` if overflow occurs. Demonstrates `jo` (jump if overflow). |
|  | [`08-countounes.s`](08-countounes.s) | Counts the number of `1`s in a given unsigned number. Demonstrates `rol` (rotate left). |
| **System calls** | [`10-wait5.s`](10-wait5.s) | Uses `sys_time` syscall to loop until 5 seconds have passed. |
|  | [`10-simpleoutput.s`](10-simpleoutput.s) | Outputs a string to the console using `sys_write` syscall. |
| **Stack and function calls** | [`11-factorialstack.s`](11-factorialstack.s) | Calculates factorial by pushing numbers to the stack and popping them for multiplication. Demonstrates `push`, `pop`. |
|  | [`11-exponentfunc.s`](11-exponentfunc.s) | Creates a stack frame with one 8-byte variable for result storage; `rdi` = base, `rsi` = exponent. Callable from C or assembly. |
|  | [`11-runexponent-c.c`](11-runexponent-c.c) | Calls `11-exponentfunc.s` from a C program. |
|  | [`11-runexponent.s`](11-runexponent.s) | Calls `11-exponentfunc.s` from another assembly program. |
| **Library Calls** | [`12-abscall.s`](12-abscall.s) | Calls the `abs(3)` function from the C standard library, linked manually. |
|  | [`12-absmain.gcc.s`](12-absmain.gcc.s) | Calls `abs(3)` using `main` as entry point; GCC handles C library linking. |
|  | [`12-filewrite.gcc.s`](12-filewrite.gcc.s) | Opens a file and writes a string using `fopen`, `fprintf`, and `fclose`. Uses `main` as entry point. |
