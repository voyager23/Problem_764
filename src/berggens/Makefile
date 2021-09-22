# Cxx Makefile Template

.PHONY : clean all go

CFLAGS = -Wall -ggdb -std=c++11
LIBS =

OBJECTS = berggrens.o library.o

HEADERS = berggrens.hxx library.hxx

RUNFILE = a_berggrens

all : $(OBJECTS) $(HEADERS)
	g++ $(CFLAGS) $(OBJECTS) $(LIBS) -o $(RUNFILE)

berggrens.o : berggrens.cxx $(HDRS)
	g++ -c $(CFLAGS) $< -o berggrens.o
	
library.o : library.cxx $(HDRS)
	g++ -c $(CFLAGS) $< -o library.o

# ----------------------------------------------------------------------

go :
	@echo "Running file $(RUNFILE)"
	$(RUNFILE)
	



