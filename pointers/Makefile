FC=gfortran
CFLAGS=
#LDFLAGS=-static
LDFLAGS=-dynamic
SUBFILES=ptr-sub.f90 ptr-main.f90
MODFILES=ptr-module.f90 ptr-mod-main.f90
SUBOBJS=ptr-sub.o ptr-main.o
MODOBJS=ptr-module.o ptr-mod-main.o
SUBPROG=ptrTest-sub
MODPROG=ptrTest-mod

all: objects program

objects: subobjects modobjects

program: subroutine module

subobjects:
	$(FC) -c $(CFLAGS) $(SUBFILES)

modobjects:
	$(FC) -c $(CFLAGS) $(MODFILES)

subroutine: subobjects
	$(FC) -o $(SUBPROG) $(LDFLAGS) $(SUBOBJS)

module: modobjects
	$(FC) -o $(MODPROG) $(LDFLAGS) $(MODOBJS)

clean:
	@rm $(SUBPROG) $(MODPROG) *.o *.mod

.PHONY: all
