.PHONY: clean build

SRC_DIR := src
BIN_DIR := build
SRC := $(wildcard $(SRC_DIR)/*.cpp)
BIN := $(SRC:$(SRC_DIR)/%.cpp=$(BIN_DIR)/%)

build: clean ${BIN}

$(BIN_DIR)/%: $(SRC_DIR)/%.cpp
	g++ $< -o $@

clean:
	-rm -f ${BIN}

