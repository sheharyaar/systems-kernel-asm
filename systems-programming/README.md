## Build and Run

1. First run `make`
2. Then run the `sudo insmod <module_name>` to load the kernel module\_name
3. Check `dmesg -w` for output by the kernel module\_name
4. Unload the module using `sudo rmmod <module_name>`


## List of programs:

The module names are as follow:
- `print_cr_regs`: prints the contents of `cr0`, `cr2` and `cr3` registers. 
