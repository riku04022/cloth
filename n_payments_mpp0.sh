#!/bin/sh

n_payments=(2500 5000 7500 10000 12500 15000 17500 20000 22500 25000 27500 30000)

for var in {1..11}
do
    
    sed -i -e "s/n_payments=${n_payments[$var - 1]}/n_payments=${n_payments[$var]}/g" ./cloth_input.txt
    ./run-simulation.sh 1000 ./output${n_payments[$var]}/
done