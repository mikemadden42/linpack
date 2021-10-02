PROGRAMS = linpack

CC = cc
CFLAGS=-Wall -Wextra -O3 -std=c11 -pedantic
LIBS=

all: $(PROGRAMS)

.c: ; $(CC) $(CFLAGS) $@.c $(LIBS) -o $@
	strip $@

clean:
	rm $(PROGRAMS)
