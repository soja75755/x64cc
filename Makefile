CFLAGS=-std=c11 -g -static -fno-common

x64cc: main.o
	$(CC) -o $@ $? $(LDFLAGS)

test: x64cc
	./test.sh

clean:
	rm -f x64cc *.o *~ tmp*

.PHONY: test clean
