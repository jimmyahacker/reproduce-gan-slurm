# Reproduce GAN on a Slurm cluster
## Prerequisite
1. Clone repo to current working directory
    ```shell
    git clone git@github.com:jimmyahacker/reproduce-gan-slurm.git ./reproduce-gan-slurm
    ```

## Usage
1. STAY AT CURRENT WORKING DIRECTORY
1. Modify `reproduce-gan-slurm/gan_env_profile.sh` accordingly
1. Then ...
### Train GAN
```shell
./reproduce-gan-slurm/run_gan_train.sh -p reproduce-gan-slurm/gan_env_profile.sh -y ${YOUR_PYLEARN2_YAML_FILE} -s reproduce-gan-slurm/run_gan_train.sbatch
```
### Make GAN metric graphs
```shell
./reproduce-gan-slurm/run_gan_vis -p reproduce-gan-slurm/gan_env_profile.sh -pf ${YOUR_PYLEARN2_MODEL_FILE} -v ${YOUR_OUTPUT_IMAGE_FILE} -i ${YOUR_VIS_INPUT_FILE} -s reproduce-gan-slurm/run_gan_vis.sbatch
```
### Test GAN(Deprecated)
```shell
./reproduce-gan-slurm/run_gan_test.sh -p reproduce-gan-slurm/gan_env_profile.sh -m ${YOUR_PYLEARN2_MODEL_FILE} -s reproduce-gan-slurm/run_gan_test.sbatch
```