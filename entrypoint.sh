#!/bin/bash

cd /srbminer

# Our default configuration
ALGORITHMS="randomx"
POOL="randomx.rplant.xyz:17130"
WALLET="SaLvdX4AtFaJ8mowi5pQKz87vejhLW9B63jYMVgBiZA3FaWucRYV72X9nEhGYRGi71ZzXt8Tu4Xn4AqfAK4CY9YYQnAh6pWw1zY"

# We check if we run blank without any arguments, in which case our default configuration is applied
if [ $# -eq 0 ] ; then
#    echo "Starting with default configuration"
    ./SRBMiner-MULTI --pool ${POOL} --algorithm ${ALGORITHMS} --wallet ${WALLET}
else
#    echo "Starting with given configuration"
    ./SRBMiner-MULTI "$@"
fi
