#!/bin/bash
#SBATCH --tasks-per-node=4
#SBATCH --cpus-per-task=1
#SBATCH --time=3:00:00

source /scratch/work/courses/CHEM-GA-2671-2023fa/software/lammps-gcc-30Oct2022/setup_lammps.bash

temperatures=('1.5' '1.0' '0.9' '0.8' '0.7' '0.65' '0.6' '0.55' '0.5' '0.475')

# Loop over each temperature
for temp in "${temperatures[@]}"; do
    mpirun lmp -var configfile "../Inputs/n360/kalj_n360_T${temp}.lmp" -var id 1 -in "../Inputs/production_3d_binary.lmp"
done