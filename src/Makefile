# Cxx Makefile Template

.PHONY : clean all go

CFLAGS = -Wall -ggdb
LIBS =

OBJECTS = berggrens.o library.o

HEADERS = berggrens.hxx library.hxx

OBJS = $(addprefix ../obj/, $(OBJECTS) )
HDRS = $(addprefix ../inc/, $(HEADERS))
OUT = ../obj/$@

RUNFILE = ../bin/berggrens

all : $(OBJECTS) $(HDRS)
	g++ $(CFLAGS) $(OBJS) $(LIBS) -o $(RUNFILE)

berggrens.o : berggrens.cxx $(HDRS)
	g++ -c $(CFLAGS) $< -o $(OUT)
	
library.o : library.cxx $(HDRS)
	g++ -c $(CFLAGS) $< -o $(OUT)
	
solution : solution.cxx $(HDRS)
	g++ -c $(CFLAGS) $< -o ../bin/soln

# ----------------------------------------------------------------------

go :
	@echo "Running file $(RUNFILE)"
	$(RUNFILE)
	



