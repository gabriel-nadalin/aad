#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Error: You must provide exactly two parameters"
    echo "Usage: $0 <number_of_points> <number_of_nodes>"
    exit 1
fi

mpirun -n $2 python3 mpi.py $1 $2