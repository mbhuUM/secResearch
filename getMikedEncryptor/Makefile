CC=g++ -g -Wall -fno-builtin -std=c++17

# List of source files for your pager
SOURCES=

# Generate the names of the pager's object files
OBJS=${SOURCES:.cpp=.o}

all: app

# Compile an application program
app: main.cpp 
	${CC} -o $@ $^ -ldl

# Generic rules for compiling a source file to an object file
%.o: %.cpp
	${CC} -c $<
%.o: %.cc
	${CC} -c $<

clean:
	rm -f ${OBJS} app
