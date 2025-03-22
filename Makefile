# Generate by ChatGPT

AS = as
LD = ld
ASMFLAGS = --64
LDFLAGS = -nostdlib -static

# Find all .s files in the current directory
SOURCES = $(wildcard *.s)
# Convert .s files to .o files
OBJECTS = $(SOURCES:.s=.o)
# Convert .s files to binaries (no extension)
BINARIES = $(SOURCES:.s=)

all: $(BINARIES)

# Rule to assemble .s to .o
%.o: %.s
	$(AS) $(ASMFLAGS) -o $@ $<

# Rule to link .o to binary
%: %.o
	$(LD) $(LDFLAGS) -o $@ $<

clean:
	rm -f $(OBJECTS) $(BINARIES)

.PHONY: all clean
