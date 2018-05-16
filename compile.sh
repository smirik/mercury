FFLAGS='-g -O2 -Wline-truncation -Wsurprising -Werror'

echo "Compiling mercury6 package"

gfortran $FFLAGS element6.for -o element6
gfortran $FFLAGS close6.for -o close6
gfortran $FFLAGS mercury6_2.for -o mercury6

if [ "$1" != "-s" ]; then
    for i in *.sample; do
        cp $i `echo $i | sed 's/.sample//g'`
    done
fi
