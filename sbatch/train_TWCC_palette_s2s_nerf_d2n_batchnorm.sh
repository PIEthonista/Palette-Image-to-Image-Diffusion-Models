#! /bin/bash

#SBATCH -A MST111109
#SBATCH -J TWCC_palette_s2s_nerf_d2n_batchnorm_ckpt100
#SBATCH -p gp4d
#SBATCH -e train_TWCC_palette_s2s_nerf_d2n_batchnorm.txt
#SBATCH -c 4
#SBATCH --gres=gpu:1
#SBATCH --mail-type=ALL
#SBATCH --mail-user=gohyixian456@gmail.com

# 516621
# 519164
srun python run.py -p train -c /work/u5832291/yixian/palette_scene2scene_rec/config/TWCC_palette_s2s_nerf_d2n_batchnorm.json