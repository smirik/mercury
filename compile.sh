echo "Compiling mercury6 package"

make all

if [ "$1" != "-s" ]; then
    for i in *.sample; do
        cp $i `echo $i | sed 's/.sample//g'`
    done
fi
