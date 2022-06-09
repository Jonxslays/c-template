CC=gcc
CFLAGS=-Wall -Wextra -Werror -pedantic

BIN=./bin
SRC=./src
OBJ=./obj
TARGET=$(BIN)/main

SRCS=$(wildcard $(SRC)/*.c)
OBJS=$(patsubst $(SRC)/%.c, $(OBJ)/%.o, $(SRCS))

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $@

$(OBJ)/%.o: $(SRC)/%.c
	$(CC) $(CFLAGS) -c $< -o $@

init:
	mkdir $(BIN) && mkdir $(OBJ)

run:
	@$(TARGET)

clean:
	$(RM) -r $(BIN)/* $(OBJ)/*

all: clean $(TARGET) run
