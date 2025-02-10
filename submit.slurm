#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=42
#SBATCH --mem-per-cpu=3850
#SBATCH --gres=gpu:ampere_a100:1
#SBATCH --partition=gpu
#SBATCH --time=01:00:00
#SBATCH --account=su008-acw799

source ../env/sam2_env/bin/activate
export PYTHONPATH=$PYTHONPATH:~/sam2
module purge
module load CUDA/11.7.0
module load GCCcore/12.2.0 Python/3.10.8
