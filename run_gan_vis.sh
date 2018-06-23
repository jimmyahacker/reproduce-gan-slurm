#!/bin/bash

profile=
sbatch_file=
pkl_file=
vis_out_file=
input_file=

while [ "$1" != "" ]; do
    case $1 in
        -p | --profile )        shift
                                profile=$1
                                ;;
        -s | --sbatch-file )    shift
                                sbatch_file=$1
                                ;;
        -pf | --pkl-file )      shift
                                pkl_file=$1
                                ;;
        -v | --vis-out )        shift
                                vis_out_file=$1
                                ;;
        -i | --input-file )     shift
                                input_file=$1
                                ;;
        * )                     echo "Illegal usage"
                                return
    esac
    shift
done
sbatch --export=PKL_FILE="$pkl_file",PROFILE="$profile",VIS_OUT="$vis_out_file",INPUT_FILE="$input_file" "$sbatch_file"
