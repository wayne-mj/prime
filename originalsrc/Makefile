FC=gfortran
FFLAGS=-O3 -Wall -Wextra -Jmods
MOD=lib/prime_module.f90 
PROG=src/prime.f90
OBJ=$(PROG:.f90=.o)
MOD_OBJ=$(MOD:.f90=.o)
BASE=$(PROG:.f90=)

all: prime

%.o: %.f90
	$(FC) $(FFLAGS) -I mods -o $@ -c $<

$(OBJ): $(MOD_OBJ)

prime: $(MOD_OBJ) $(OBJ)
	$(FC) $(FFLAGS) -I mods -o $@ $(MOD_OBJ) $(OBJ)

clean:
	rm -f *.o mods/*.mod prime src/*.o lib/*.o