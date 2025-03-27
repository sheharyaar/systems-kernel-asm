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
BINARIES = 00-exit \
	   04-valuesize \
	   05-exponentloop \
	   05-exponent \
	   06-largestvalue-rcx \
	   06-largestvalue \
	   07-tallest \
	   07-browncount \
	   07-lowercasecount \
	   08-addsigned \
	   08-countones \
	   10-wait5 \
	   10-simpleoutput \
	   11-factorialstack \
	   11-runexponent \
	   11-runexponent-c \
	   12-abscall \
	   12-absmain \
	   12-filewrite

SIDE_EFFECTS = myfile.txt

all: $(BINARIES)

# Rule to assemble .s to .o
%.o: %.s
	$(AS) $(ASMFLAGS) -o $@ $<

%: %.gcc.s
	gcc -static -o $@ $<

# Rule to link .o to binary
%: %.o
	$(LD) $(LDFLAGS) -o $@ $<

07-tallest: 07-tallest.o 07-persondata.o
	$(LD) $(LDFLAGS) -o $@ $^

07-browncount: 07-browncount.o 07-persondata.o
	$(LD) $(LDFLAGS) -o $@ $^

11-runexponent: 11-exponentfunc.o 11-runexponent.o
	$(LD) $(LDFLAGS) -o $@ $^

11-runexponent-c: 11-exponentfunc.o 11-runexponent-c.c
	gcc -o $@ $^

12-abscall: 12-abscall.o
	ld $^ -static -lc -o $@

#12-absmain: 12-absmain.s
#	gcc $^ -static -o $@

clean:
	rm -f $(OBJECTS) $(BINARIES) $(SIDE_EFFECTS)

.PHONY: all clean
