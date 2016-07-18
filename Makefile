CC = g++
CFLAGS = -O2 -ggdb -Wall
LFLAGS = -lboost_thread-mt -lboost_system -lpthread


all: server client

server: server.cpp
	$(CC) $(CFLAGS) $(LFLAGS) -o server server.cpp

client: client.cpp
	$(CC) $(CFLAGS) $(LFLAGS) -o client client.cpp

clean:
	rm -f *.o server client

tar:
	tar -czvf payment.tar.gz *.h *.cpp
