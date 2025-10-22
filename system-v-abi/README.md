## Build and Run

To build all the assembly files, run: `make` or `make all`
To clean up the generated files, run: `make clean`

To run the listed programs individually, use: `make <target-name>`
For example, to build the code model examples, run: `make code-model`

## List of Programs

- `code-model`: Generates assembly files for different x86-64 code models (small, medium, large). You can checkout the generated files and see how addressing and sectioning differ across these models.
- `tail-call`: Generates assembly files demonstrating tail call optimizations (optimized and non-optimized). You can see how the compiler optimises the recursive calls to a loop structure.