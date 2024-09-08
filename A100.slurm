#!/bin/bash

#SBATCH --job-name=a100
#SBATCH --partition=a100_batch
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --gres=gpu:1              #若使用 2 块卡，就给 gres=gpu:2
#SBATCH --output=a100.out
#SBATCH --error=a100.err

source activate base
jupyter notebook --no-browser --port=8893