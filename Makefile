default: clean execute

execute: hello
	./hello

hello: hello1.o hello2.o hello3.o hello.c++ hello.h
	g++ hello.c++ hello1.o hello2.o hello3.o -o hello

hello1.o: hello1.c++
	g++ -c hello1.c++ -o hello1.o

hello2.o: hello2.c++
	g++ -c hello2.c++ -o hello2.o

hello3.o: hello3.c++
	g++ -c hello3.c++ -o hello3.o

clean:
	rm -f hello hello?.o

