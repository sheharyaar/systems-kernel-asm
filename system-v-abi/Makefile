CC = gcc
SOURCES = $(wildcard *.c)
TARGET = code_model_small.s \
		code_model_medium.s \
		code_model_large.s \
		tail_call_not_optim.s \
		tail_call_optim.s \

all: $(TARGET)

code-model: code_model_%.s

code_model_%.s: code-model.c
	$(CC) -mcmodel=small -S -o code_model_small.s $< && \
	$(CC) -mcmodel=medium -S -o code_model_medium.s $< && \
	$(CC) -mcmodel=large -S -o code_model_large.s $<

tail-call: tail_call_%.s

tail_call_%.s: tail-call.c
	$(CC) -O0 -S -o tail_call_not_optim.s $< && \
	$(CC) -O1 -S -o tail_call_optim.s $<

clean:
	rm -f $(TARGET)

.PHONY: all clean code-model tail-call