echo "Compiling mercury6 package"

gfortran -O2 element6.for -o element6
gfortran -O2 close6.for -o close6
gfortran -O2 mercury6_2.for -o mercury6

if [ "$1" != "-s" ]; then
    for i in *.sample; do
        cp $i `echo $i | sed 's/.sample//g'`
    done
fi
