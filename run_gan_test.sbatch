#!/bin/bash
#BATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --gres=gpu:1
#SBATCH --time=10:00:00
#SBATCH --mem=16GB
#SBATCH --job-name=GAN_REPRODUCTION
#SBATCH --output=slurm_%j.out

# load gan env profile
. $PROFILE

# test
THEANO_FLAGS=mode=FAST_RUN,device=gpu,floatX=float32 python2 -m adversarial.parzen_ll.py -p $MODEL_PATH -d mnist -s 0.01 -v
