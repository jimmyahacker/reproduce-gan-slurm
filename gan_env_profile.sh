#!/bin/bash
# record some system variables for pylearn2
export PYTHONPATH=$SCRATCH/hsn/attack_generate/original_gan_reproduction
# export PYLEARN2_VIEWER_COMMAND="eog --new-instance"
export PYLEARN2_DATA_PATH=$SCRATCH/hsn/attack_generate/original_gan_reproduction/data

# virtualenv
. $PYTHONPATH/.env/bin/activate

# load module
module load cuda/8.0.44 cudnn/7.0v4.0
