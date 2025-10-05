SOURCES = $(wildcard *.c)
OBJECTS = $(SOURCES:.c=.o)

obj-m += print_cr_regs.o
print_cr_regs-objs := print_cr.o print_cr_asm.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean

.PHONY: all clean
