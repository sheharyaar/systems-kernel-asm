SOURCES = $(wildcard *.c)
# Convert .s files to .o files
OBJECTS = $(SOURCES:.c=.o)
# Convert .s files to binaries (no extension)

obj-m += print_cr_regs.o
print_cr_regs-objs := print_cr.o print_cr_asm.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean

.PHONY: all clean
