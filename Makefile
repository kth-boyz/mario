# Variable that says which compiler to use
CXX = g++

# Variable that tells what flags to use with the compiler
CXXFLAGS = -Wall -g

INC = -ISFML/include/

ifeq ($(shell uname -s),Linux)        # Mac OS X
    LIBS = -LSFML/lib/ -lsfml-graphics -lsfml-window -lsfml-system
else
    LIBS = -LSFML/libmac/ -lsfml-graphics -lsfml-window -lsfml-system
endif

mario: main.o
	$(CXX) $(CXXFLAGS) -o mario main.o $(LIBS)

main.o: main.cpp
	$(CXX) $(CXXFLAGS) $(INC) -c main.cpp
