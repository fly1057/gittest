TARGET  =  application
SRC = $(wildcard ./*.c)
OBJS = $(patsubst %.c,%.o,$(SRC))
CC = gcc 
INC = -I .
LIBS = -lmodbus -lm
CFLAGS = -g -c -Wall

$(TARGET):$(OBJS)
	$(CC)  $^  -o  $@ $(LIBS)

%.o:%.c
	$(CC)  $^  -o  $@ $(INC)  $(CFLAGS)
clean:
	rm -fr $(TARGET)  $(OBJS)


