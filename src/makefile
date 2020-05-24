CC=gcc
CFLAGS=-g -Wall

TARGET=main
SOURCES=$(wildcard *.c)
OBJS=$(patsubst %.c,%.o,$(SOURCES))

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

$(TARGET): $(OBJS)
	$(CC) $(OBJS) -o $(TARGET)

clean:
	@echo $(SOURCES)
	@echo $(OBJS)
	@rm -fr *.o main

#############################################################
# auto generate below
main.o: main.c print.h
print.o: print.c print.h
