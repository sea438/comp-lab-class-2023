#!/bin/bash

densities=('0.8' '0.9' '1.0' '1.1' '1.2' '1.3' '1.4' '1.5')

input_file="../Inputs/3dWCA.in"

for density in "${densities[@]}"; do
    log_file="3d_d${density}.log"
	mpirun lmp -var density "$density" -in "$input_file" -log "$log_file"
	echo "Simulation density $density completed."
done