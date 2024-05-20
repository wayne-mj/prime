FC=gfortran
FFLAGS=-O3 -Wall -Wextra
SRC=prime_module.f90 prime.f90
OBJ=${SRC:.f90=.o}

%.o: %.f90
	$(FC) $(FFLAGS) -o $@ -c $<

prime: $(OBJ)
	$(FC) $(FFLAGS) -o $@ $(OBJ)

clean:
	rm -f *.o *.mod prime
