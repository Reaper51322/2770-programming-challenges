CC = gcc
CFLAGS = -Wall -pthread
SRCS = ThreadedMatrixMultiply (2).c
OBJS = $(SRCS:.c=.o)
TARGET = ThreadedMatrixMultiply

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(TARGET)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGET)

.PHONY: debug
debug:
	@echo "Source files: $(SRCS)"
	@echo "Object files: $(OBJS)"
