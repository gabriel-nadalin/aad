#!/bin/bash
echo "" > log
TIMEFORMAT=%R
for i in {100,500,1000,10000,100000,1000000,10000000,100000000}; do 
	echo "Teste com $i elementos"
    time python3 serial.py $i > /dev/null
    time python3 mpi.py 4 $i > /dev/null
    echo
done
