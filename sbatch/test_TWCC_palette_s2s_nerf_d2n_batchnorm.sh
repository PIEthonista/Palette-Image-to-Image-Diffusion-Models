#! /bin/bash

#SBATCH -A MST111109
#SBATCH -J TWCC_palette_s2s_nerf_d2n_batchnorm
#SBATCH -p gp4d
#SBATCH -e test_TWCC_palette_s2s_nerf_d2n_batchnorm_ckpt_2000_train_50.txt
#SBATCH -c 4
#SBATCH --gres=gpu:1
#SBATCH --mail-type=ALL
#SBATCH --mail-user=gohyixian456@gmail.com

# 518565
srun python run.py -p test -c /work/u5832291/yixian/palette_scene2scene/config/inference/inf_TWCC_palette_s2s_nerf_d2n_batchnorm.json