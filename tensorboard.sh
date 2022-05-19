#!/bin/bash
#SBATCH --job-name=tensorboard
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-task=4
#SBATCH --time=3-00:00:00
#SBATCH --mem=64GB
#SBATCH --exclude=linux[1-40]
#SBATCH --output=./tensorboard.log

source /home/home1/hh219/anaconda3/bin/activate
conda activate torch

tensorboard --logdir=/home/home1/hh219/moenet/exploration/benchmark/time_profile/torch_trace_6 --host=0.0.0.0

