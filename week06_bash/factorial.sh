#! /bin/bash

factorial()
{
    fac=1
    for n in $(seq 1 $1); do
        fac=$(($fac * $n))
    done
    echo $fac
}

read -p "Enter number: " NUM
factorial $NUM