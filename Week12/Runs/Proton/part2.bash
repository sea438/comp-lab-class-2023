#!/bin/bash
#SBATCH --tasks-per-node=12
#SBATCH --cpus-per-task=1
#SBATCH --time=6:00:00
#SBATCH --mem=20G

source /scratch/work/courses/CHEM-GA-2671-2023fa/software/lammps-gcc-30Oct2022/setup_lammps.bash

module load cp2k/openmpi/intel/20201212

mpirun -np 12 cp2k.popt -i proton.inp -o proton_aimd_1ps_output.log