#!/bin/bash
#SBATCH --verbose
#SBATCH --job-name=jiant
#SBATCH --time=100:00:00
#SBATCH --nodes=1
#SBATCH --mem=50GB
###SBATCH --partition=gpu
#SBATCH --gres=gpu:1

# Quick-start: run this
#python main.py --config_file config/demo.conf
python main.py --config_file config/iwslt.conf  --overrides "exp_name = iwslt, run_name = iwslt, d_hid = 256"
