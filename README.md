The John E Chambers N-Body integrator
-------------------------------------

This software was initially created by John E. Chambers. It is the N-Body integrator based on Bulirsh-Stoer, Everhart and other methods. As-is, it can integrate any star system like our Solar System. 

Currently, this Gnu Fortran github project is configured for Linux and Mac OS X users.  It is certainly adaptable for Windows and other O/S environments.

### Manual Authored by John E. Chambers

See ```JOHN_E_CHAMBERS.md```

### How to Prepare for use

- Clone the repository from github to local storage somewhere.
- Position (cd) into the ```mercury``` folder.
- ```make build``` # Compile and link edit all programs.

### Try the Sample files
- ```make gen-in``` # Copy the sample files to the ```mercury6``` input files.
- ```mercury6``` # Execute the N-Body integrator.

### Mercury6 Output based on the Sample Files
```
   Integrating massive bodies and particles up to the same epoch.
   Beginning the main integration.
 Date:       2119  8  6.4   dE/E:  3.38494E-13   dL/L: -9.19199E-15
 Date:       2229  2 15.8   dE/E:  7.94146E-13   dL/L:  7.57420E-14
 Date:       2338  8 24.1   dE/E:  9.69144E-13   dL/L:  1.50381E-13
 Date:       2448  2 29.8   dE/E:  1.47573E-12   dL/L:  2.74473E-13
 Date:       2557  9 11.2   dE/E:  1.43055E-12   dL/L:  2.25571E-13
 Date:       2667  3 23.6   dE/E:  9.88369E-13   dL/L: -2.38992E-14
 Date:       2776 10  2.8   dE/E:  6.86847E-13   dL/L: -2.16380E-13
 Date:       2886  4 10.5   dE/E:  1.19048E-12   dL/L: -2.06268E-13
 Date:       2995 10 21.6   dE/E:  1.01778E-12   dL/L: -2.15460E-13
 Date:       3105  5  1.7   dE/E:  1.36844E-12   dL/L: -1.03502E-13
 Date:       3214 11  7.1   dE/E:  5.73796E-13   dL/L: -4.11434E-13
 Date:       3324  5 16.7   dE/E:  6.31800E-13   dL/L: -3.48928E-13
 Date:       3433 11 26.4   dE/E: -1.85514E-13   dL/L: -7.66980E-13
   Integration complete.
```

### Executables Produced by Make

**mercury6**

This is the basic integration programme. It contains all of the
subroutines you need to carry out integrations using any of the 
algorithms described by John E. Chambers and elsewhere. Output files
are produced in a machine-independent compressed format.  The element6 and close6 programmes
are required to convert mercury6 output into a readable format.

**element6**

This programme converts the mercury6 output file into
a set of files (*.out) containing Keplerian orbital elements for each of the
objects of the integration. These files allow you to see how the orbit of each object
change with time, thus can be used as the basis for making
graphs or movies using a graphics/video package.  

The sample input files will yield ```element6``` output files (*.aei) for Earth, Apollo, and Apophis.

The resultant ```element.out``` file for the sample input files contains a summary of features for 
the Solar System planets, Apollo, and Apophis.

**close6**

This programme converts the mercury6 output file 
into a set of files (*.clo) containing details of close encounters between
objects during the integration.

The sample input files will yield ```close6``` output for the Solar System planets, Apollo, and Apophis.

### Makefile Options
```
- make build   : Build the Fortran programs
- make unbuild : Remove all Fortran program executables
- make gen-in  : Generate input files by copying them from samples
- make rm-gen  : Remove all files generated by the Fortran programs
- make rm-in   : Remove all input files used by the Fortran programs
- make clean   : Remove all input files, generated files, and the executables

```
