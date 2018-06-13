#!/bin/bash

profile=
sbatch_file=
yaml_file=

while [ "$1" != "" ]; do
    case $1 in
        -p | --profile )        shift
                                profile=$1
                                ;;
        -s | --sbatch-file )    shift
                                sbatch_file=$1
                                ;;
        -y | --yaml-file )      shift
                                yaml_file=$1
                                ;;
        * )                     echo "Illegal usage"
                                return
    esac
    shift
done
sbatch --export=YAML_FILE="$yaml_file",PROFILE="$profile" "$sbatch_file"
