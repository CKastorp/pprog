CFLAGS = -std=gnu99 -Wall -O
LDLIBS= -lm

.PHONEY: default

default: out.txt
	cat out.txt

out.txt: main
	./main > out.txt
main: main.o komplex.o
	$(CC) $(CFLAGS) komplex.o main.o -o main $(LDLIBS)
komplex.o: komplex.c
	$(CC) $(CFLAGS) -c komplex.c -o komplex.o
main.o: main.c
	$(CC) $(CFLAGS) -c main.c -o main.o
clean:
	$(RM) main.o main komplex.o
