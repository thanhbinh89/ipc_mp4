CXX = g++
CXXFLAGS = -std=c++11 -Wall

all: clean ipc_mp4

ipc_mp4: ipc_mp4.o mp4v2_mp4.o
	$(CXX) $(CXXFLAGS) -o $@ $^ -lmp4v2 -lpthread

ipc_mp4.o: ipc_mp4.cpp
	$(CXX) $(CXXFLAGS) -c $<

mp4v2_mp4.o: mp4v2_mp4.cpp
	$(CXX) $(CXXFLAGS) -c $<

clean:
	rm -f ipc_mp4 ipc_mp4.o mp4v2_mp4.o
