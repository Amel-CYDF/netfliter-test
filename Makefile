LDLIBS = -lnetfilter_queue
CC = g++
CPPFLAGS = -std=c++14

all: netfilter-test

netfilter-test: netfilter-test.o
	$(LINK.cc) $^ $(LOADLIBES) $(LDLIBS) -o $@

clean:
	rm -f netfilter-test *.o
