CC=g++
FLAGS=-Wall -std=c++14

shellkil: shell.o delep.o history.o 
	$(CC) $(FLAGS) -o shellkil shell.o delep.o history.o -lreadline

shell.o: shell.cpp
	$(CC) $(FLAGS) -c shell.cpp -lreadline

delep.o: delep.cpp delep.hpp
	$(CC) $(FLAGS) -c delep.cpp

history.o: history.cpp history.hpp
	$(CC) $(FLAGS) -c history.cpp -lreadline

utils: createlock  nolock

createlock: createlock.cpp 
	$(CC) $(FLAGS) -o createlock createlock.cpp

nolock: nolock.cpp
	$(CC) $(FLAGS) -o nolock nolock.cpp

clean:
	rm -f *.o 

distclean: 
	rm -f *.o shellkil createlock  nolock
