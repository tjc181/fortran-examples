FC=gfortran
CFLAGS=
#LDFLAGS=-static
LDFLAGS=-dynamic
FILES=ptr-sub.f90 ptr-main.f90
OBJS=ptr-sub.o ptr-main.o
PROG=ptr

all: objects program

objects:
	$(FC) -c $(CFLAGS) $(FILES)

program:
	$(FC) -o $(PROG) $(LDFLAGS) $(OBJS)

clean:
	@rm $(PROG) *.o

.PHONY: all
