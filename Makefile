default: clean execute

execute: compile
	./hello

compile:
	g++ hello.c++ -o hello

clean:
	rm -f hello

