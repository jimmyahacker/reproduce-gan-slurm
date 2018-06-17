#!/bin/bash
#BATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --gres=gpu:1
#SBATCH --time=20:00:00
#SBATCH --mem=16GB
#SBATCH --job-name=GAN_REPRODUCTION
#SBATCH --output=slurm_%j.out

# load gan env profile
. "$PROFILE"

# train
THEANO_FLAGS=mode=FAST_RUN,device=gpu,floatX=float32 python2 -m pylearn2.scripts.train "$YAML_FILE"
