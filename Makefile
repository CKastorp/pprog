CFLAGS = -std=gnu99 -Wall -O

.PHONEY: default

default: out.txt
	cat out.txt

out.txt: main
	./main > out.txt
main: maxima.o epsilon.o float_sums.o main.o
	$(CC) $(CFLAGS) main.o maxima.o epsilon.o float_sums.o -o main -lm
main.o: main.c
	$(CC) $(CFLAGS) -c main.c -o main.o
float_sums.o: float_sums.c
	$(CC) $(CFLAGS) -c float_sums.c -o float_sums.o
maxima.o: maxima.c
	$(CC) $(CFLAGS) -c maxima.c -o maxima.o
epsilon.o: epsilon.c
	$(CC) $(CFLAGS) -c epsilon.c -o epsilon.o
clean:
	$(RM) maxima.o out.txt epsilon.o float_sums.o
