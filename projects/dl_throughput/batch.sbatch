#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem=8GB
#SBATCH --cpus-per-task=1
#SBATCH --time=16:00:00
#SBATCH --mail-type=END
#SBATCH --mail-user=ps3857@nyu.edu

module purge
module load matlab/2020a

RUNDIR=$SCRATCH/mmwComm/projects/dl_throughput
cd $RUNDIR

matlab -nodisplay -nodesktop -r "run rffeTest.m"
