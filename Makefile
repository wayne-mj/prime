FC=gfortran
MODULES=./Modules
PRIME=prime
PRIME_MOD=prime_module

all: clean prime

prime: $(PRIME).f90 $(PRIME_MOD).f90
	[ ! -e $(MODULES) ] && mkdir -p $(MODULES)
	$(FC) -c -J$(MODULES) $(PRIME_MOD).f90
	$(FC) -c -I$(MODULES) $(PRIME).f90	 
	$(FC) -o $(PRIME) $(PRIME).o $(PRIME_MOD).o

clean:
	rm -rf $(PRIME) $(PRIME).o $(PRIME_MOD).o $(MODULES) *.mod

