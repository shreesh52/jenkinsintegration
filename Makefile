# Makefile
CXX = g++
CXXFLAGS = -std=c++11
SRC = main.cpp functions.cpp
OBJ = $(SRC:.cpp=.o)
EXEC = myprogram

all: $(EXEC)

$(EXEC): $(OBJ)
	$(CXX) $(CXXFLAGS) -o $@ $^

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c -o $@ $<

clean:
	rm -f $(OBJ) $(EXEC)

