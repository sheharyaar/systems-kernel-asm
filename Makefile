# Generate by ChatGPT

AS = as
LD = ld
ASMFLAGS = --64

# Find all .asm files in the current directory
SOURCES = $(wildcard *.asm)
# Convert .asm files to .o files
OBJECTS = $(SOURCES:.asm=.o)
# Convert .asm files to binaries (no extension)
BINARIES = $(SOURCES:.asm=)

all: $(BINARIES)

# Rule to assemble .asm to .o
%.o: %.asm
	$(AS) $(ASMFLAGS) -o $@ $<

# Rule to link .o to binary
%: %.o
	$(LD) -o $@ $<

clean:
	rm -f $(OBJECTS) $(BINARIES)

.PHONY: all clean
