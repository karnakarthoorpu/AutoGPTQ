#!/bin/bash
#SBATCH --job-name=GPTQ-Auto
#SBATCH --output=falcon_p_q.out
#SBATCH --partition=gpu
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1 
#SBATCH --cpus-per-task=4 
#SBATCH --gres=gpu:1 
#SBATCH --time=1:00:00


 