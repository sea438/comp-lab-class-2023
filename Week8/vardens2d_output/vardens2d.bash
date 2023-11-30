#!/bin/bash

densities=('0.5' '0.6' '0.7' '0.8' '0.9' '1.0' '1.1')

input_file="../Inputs/2dWCA.in"

for density in "${densities[@]}"; do
    log_file="log_2d_d_${density}.log"
	mpirun lmp -var density "$density" -in "$input_file" -log "$log_file"
	echo "Simulation density $density completed."
done

