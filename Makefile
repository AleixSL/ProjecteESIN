OPCIONS = -O0 -Wall -Wextra -Werror -Wno-sign-compare -std=c++11 -ansi -g

program.exe: driver_gestterm.o ubicacio.o contenidor.o terminal.o
	g++ -o program.exe driver_gestterm.o ubicacio.o contenidor.o terminal.o -lesin
	rm *.o

driver_gestterm.o: driver_gestterm.cpp ubicacio.hpp ubicacio.rep contenidor.hpp contenidor.rep cataleg.t cataleg.hpp terminal.hpp terminal.rep
	g++ -c driver_gestterm.cpp $(OPCIONS)

ubicacio.o: ubicacio.cpp ubicacio.hpp ubicacio.rep
	g++ -c ubicacio.cpp $(OPCIONS)

contenidor.o: contenidor.cpp contenidor.hpp contenidor.rep
	g++ -c contenidor.cpp $(OPCIONS)

terminal.o: terminal.cpp terminal.hpp terminal.rep ubicacio.hpp ubicacio.rep contenidor.hpp contenidor.rep cataleg.t cataleg.hpp
	g++ -c terminal.cpp $(OPCIONS)

clean:
	rm *.o
	rm *.exe
	rm *.gch
