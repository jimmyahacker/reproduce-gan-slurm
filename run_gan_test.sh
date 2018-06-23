#!/bin/bash

model_path=
sbatch_file=
profile=

while [ "$1" != "" ]; do
    case $1 in
        -m | --model-path )     shift
                                model_path=$1
                                ;;
        -s | --sbatch-file )    shift
                                sbatch_file=$1
                                ;;
        -p | --profile )        shift
                                profile=$1
                                ;;
        * )                     echo "Illegal usage"
                                return
    esac
    shift
done
sbatch --export=MODEL_PATH="$model_path",PROFILE="$profile" "$sbatch_file"
