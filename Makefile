CC=gcc
ASM=nasm
CFLAGS=-Wall -O3 -nostdlib
ASMFLAGS=-f elf64

OBJS=src/main.o asm/functions.o

main: $(OBJS)
	$(CC) -o tasky $(OBJS)

src/main.o: src/main.c src/asminclude.h
	$(CC) $(CFLAGS) -c src/main.c -o src/main.o

asm/functions.o: asm/functions.asm
	$(ASM) $(ASMFLAGS) asm/functions.asm -o asm/functions.o

clean:
	rm -f tasky $(OBJS)
