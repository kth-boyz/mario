#!/bin/bash
g++ -c -o main main.cpp -I SFML/include/
g++ main.o -o sfml-app -L SFML/lib -lsfml-graphics -lsfml-window -lsfml-system
export LD_LIBRARY_PATH=SFML/lib
./sfml-app
