#
#
#

CC = gcc
CFLAGS = -fopenmp -O -lpthread
DEBUGFLAGS = -fopenmp -lpthread -g

all: primeomp primepth
debug: primeomp_debug primepth_debug

.PHONY: clean

clean:
	rm -rf primeomp primepth primeomp_debug primepth_debug *~ *.o

primeomp: prime_omp.c
	$(CC) $(CFLAGS) $< -o $@

primepth: prime_pth.c
	$(CC) $(CFLAGS) $< -o $@

primeomp_debug: prime_omp.c
	$(CC) $(DEBUGFLAGS) $< -o $@

primepth_debug: prime_pth.c
	$(CC) $(DEBUGFLAGS) $< -o $@
