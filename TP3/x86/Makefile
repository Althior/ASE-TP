CFLAGS = -g -I../include/ -std=c99 -Wall
CC=gcc
OBJS =  obj/edge_detect.o \
	    obj/pgm.o \
	    obj/alloc.o 

INCS = ../include/common.h
PROG = sobel
SRCDIR = ../src/
all: run 
	
	
sobel : $(OBJS) $(INCS) 
	$(CC) $(CFLAGS) -o sobel $(OBJS) -lm

obj/edge_detect.o : $(SRCDIR)edge_detect.c $(INCS) 
	$(CC) $(CFLAGS) -c -o obj/edge_detect.o $(SRCDIR)edge_detect.c
	
obj/pgm.o : $(SRCDIR)pgm.c $(INCS)
	$(CC) $(CFLAGS) -c -o obj/pgm.o $(SRCDIR)pgm.c
	
obj/alloc.o : $(SRCDIR)alloc.c $(INCS)
	$(CC) $(CFLAGS) -c -o obj/alloc.o $(SRCDIR)alloc.c
	
	
run: $(PROG)
	./$(PROG) ../data/tsukuba1.pgm ./sobel.pgm
	
clean:
	rm obj/* $(PROG)