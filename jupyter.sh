#!/bin/bash
#SBATCH --job-name=jupyter
#SBATCH --gres=gpu:1
#SBATCH --time=3-00:00:00
#SBATCH --mem=40GB
#SBATCH --exclude=linux[1-40]
#SBATCH --output=./jupyter.log

source /home/home1/hh219/anaconda3/bin/activate
conda activate torch

jupyter-notebook --ip=0.0.0.0 --port=7888

