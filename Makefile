objects = hello.o hello1.o hello2.o hello3.o

default: clean execute

hello: $(objects)
	g++ -o hello $(objects)

$(objects): hello.h

.PHONY: clean elecute
clean:
	rm -f hello $(objects)

execute: hello
	./hello

