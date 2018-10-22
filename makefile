OBJS	= p13_test.o scanner.o StringTable.o token.o
SOURCE	= p13_test.cpp scanner.cpp StringTable.cpp token.cpp
HEADER	= scanner.h StringTable.h token.h
OUT	= main
CC	 = g++
FLAGS	 = -g -c
LFLAGS	 = 

all: $(OBJS)
	$(CC) -g $(OBJS) -o $(OUT) $(LFLAGS)

p13_test.o: p13_test.cpp
	$(CC) $(FLAGS) p13_test.cpp 

scanner.o: scanner.cpp
	$(CC) $(FLAGS) scanner.cpp 

StringTable.o: StringTable.cpp
	$(CC) $(FLAGS) StringTable.cpp 

Token.o: token.cpp
	$(CC) $(FLAGS) token.cpp 


clean:
	rm -f $(OBJS) $(OUT)