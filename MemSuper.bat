#!/bin/bash -l
# Set SCC project
#$ -P my_project
# Request 4 CPUs
#$ -pe omp 4
# Request 1 GPU 
#$ -l gpus=1
# Specify minimum GPU compute capability. 
#$ -l gpu_c=6.0
module load python3/3.8.10
# PyTorch requires a compute capability of at least 6.0
module load pytorch/1.11.0
python myprog.py
