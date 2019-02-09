# Variable that says which compiler to use
CXX = g++

# Variable that tells what flags to use with the compiler
CXXFLAGS = -Wall -g

# Variable that tells the include path of SFML
INC = -ISFML/include/

# Variable that says which libraries to use
LIBS = -LSFML/lib/ -lsfml-graphics -lsfml-window -lsfml-system

mario: main.o
	$(CXX) $(CXXFLAGS) -o mario main.o $(LIBS)

main.o: main.cpp
	$(CXX) $(CXXFLAGS) $(INC) -c main.cpp
