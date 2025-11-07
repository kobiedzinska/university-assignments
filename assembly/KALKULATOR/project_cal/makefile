first: mathopbig.o
	g++ -o main.exe main_sec.cpp mathopbig.o

mathopbig.o: mathopbig.asm
	nasm -f elf64 -o mathopbig.o mathopbig.asm

clean:
	rm -f mathopbig.o main.exe