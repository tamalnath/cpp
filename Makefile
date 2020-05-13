.PHONY: clean init build

SRC_DIR := src
BIN_DIR := build
SRC := $(wildcard $(SRC_DIR)/*.cpp)
BIN := $(SRC:$(SRC_DIR)/%.cpp=$(BIN_DIR)/%)

build: clean init ${BIN}

$(BIN_DIR)/%: $(SRC_DIR)/%.cpp
	g++ $< -o $@

init:
	-mkdir -p $(BIN_DIR)

clean:
	-rm -f ${BIN}

