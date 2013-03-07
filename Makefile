FC = gfortran
FFLAGS = -x f95-cpp-input -ffree-line-length-none

SOURCES_STD =  \
  SharedTypes.f90 \
  AeroMods.f90 \
  GenSubs.f90 \
  AeroSubs.f90 \
  AeroDyn.f90 

SOURCES_SYS = SysGnuLinux.f90

SOURCES = $(SOURCES_STD) $(SOURCES_SYS)

OBJ = $(SOURCES:.f90=.o)

.SUFFIXES : .f90 .o

.f90.o:
	$(FC) $(FFLAGS) $(INCLUDE) $< -c -o $@

default: libnwtc.a

libnwtc.a : $(OBJ)
	ar cr libnwtc.a $(OBJ)
	ranlib libnwtc.a

clean:
	/bin/rm -f *.o *.mod *.a

### DO NOT DELETE OR EDIT THIS LINE
# Everything from here on down is generated by f90depend
# so do NOT add any translation rules below here.



#--- Module-Dependencies

NWTC_Aero.o: NWTC_IO.o NWTC_Num.o
NWTC_IO.o: SysGnuLinux.o
NWTC_Library.o: NWTC_Aero.o ModMesh.o
NWTC_Num.o: NWTC_IO.o
SysGnuLinux.o: SingPrec.o
ModMesh.o: SingPrec.o


