PRO_DIR=$(shell pwd)
SRC_DIR=$(PRO_DIR)/src
OBJ_DIR=$(PRO_DIR)/obj
INC_DIR=$(PRO_DIR)/include
LIB_DIR=$(PRO_DIR)/lib
BIN_DIR=$(PRO_DIR)/bin

CC=gcc
AR=ar

SRCS=$(filter-out $(SRC_DIR)/myapp.c, $(wildcard $(SRC_DIR)/*.c))
OBJS=$(subst $(SRC_DIR), $(OBJ_DIR), $(SRCS:.c=.o))

.PHONY: all library clean

all: $(BIN_DIR)/myapp

$(BIN_DIR)/myapp: $(SRC_DIR)/myapp.c $(LIB_DIR)/libmyops.so.1.0
	$(CC) $< -I$(INC_DIR) -L$(LIB_DIR) -lmyops -lm -o $@

library: $(LIB_DIR)/libmyops.so.1.0

$(LIB_DIR)/libmyops.so.1.0: $(OBJS)
	$(CC) -fPIC -shared -Wl,-soname=libmyops.so.1 $^ -o $@
	ln -s libmyops.so.1.0 lib/libmyops.so.1
	ln -s libmyops.so.1 lib/libmyops.so

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) -fPIC -c $< -I$(INC_DIR) -o $@

clean:
	rm -rf $(OBJ_DIR)/* $(LIB_DIR)/* $(BIN_DIR)/myapp