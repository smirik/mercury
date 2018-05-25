# Build the Fortran IV/77 programs
#
# --- constants
FORTRAN=gfortran
FFLAGS=-g -O2 -Wline-truncation -Wsurprising -Werror
BIN=.
EXEC=.
SRC=.
FDEPENDS=$(SRC)/mercury.inc $(SRC)/swift.inc

# --- targets
all:	$(BIN)/close6 $(BIN)/element6 $(BIN)/mercury6

$(BIN)/close6:	$(FDEPENDS) $(SRC)/close6.for
	$(FORTRAN) $(FFLAGS) -o $(BIN)/close6 $(SRC)/close6.for

$(BIN)/element6:	$(FDEPENDS) $(SRC)/element6.for
	$(FORTRAN) $(FFLAGS) -o $(BIN)/element6 $(SRC)/element6.for

$(BIN)/mercury6:	$(FDEPENDS) $(SRC)/mercury6_2.for
	$(FORTRAN) $(FFLAGS) -o $(BIN)/mercury6 $(SRC)/mercury6_2.for

# --- remove executable files
clean:
	rm -f $(BIN)/element6 $(BIN)/close6 $(BIN)/mercury6

