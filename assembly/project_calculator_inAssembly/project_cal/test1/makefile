test: test.o
	gcc -g test.o test.c -o test

test.o:
	nasm -g -felf64 test.asm

clean:
	rm test test.o