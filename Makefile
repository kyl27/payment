CC = g++
CFLAGS = -O2 -ggdb -Wall
LFLAGS = -lboost_thread-mt -lboost_system


all: server

server: server.cpp
	$(CC) $(CFLAGS) $(LFLAGS) -o server server.cpp

clean:
	rm -f *.o server

tar:
	tar -czvf payment.tar.gz *.h *.cpp
