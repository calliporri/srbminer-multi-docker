#!/bin/bash

cd /srbminer

# Our default configuration
ALGORITHMS="randomx"
POOL="us-zephyr.miningocean.org:5342"
WALLET="ZEPHYR2efUaEbchEZGVhgW63veURr9s4BTQJEpCUCvKfSFgqfV4mrb4cKwL2JxkufffAZ5LfgVE7sfpoSX79wYueZryzpNNdPCx2A"

# We check if we run blank without any arguments, in which case our default configuration is applied
if [ $# -eq 0 ] ; then
#    echo "Starting with default configuration"
    ./SRBMiner-MULTI --pool ${POOL} --algorithm ${ALGORITHMS} --wallet ${WALLET}
else
#    echo "Starting with given configuration"
    ./SRBMiner-MULTI "$@"
fi