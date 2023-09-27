#! /bin/bash

#SBATCH -A MST111109
#SBATCH -J TWCC_palette_s2s_LLVIP_i2v_batchnorm
#SBATCH -p gp4d
#SBATCH -e test_TWCC_palette_s2s_LLVIP_i2v_batchnorm_ckpt_230.txt
#SBATCH -c 4
#SBATCH --gres=gpu:1
#SBATCH --mail-type=ALL
#SBATCH --mail-user=gohyixian456@gmail.com

# 518565
srun python run.py -p test -c /work/u5832291/yixian/palette_scene2scene_rec/config/inference/inf_TWCC_palette_s2s_LLVIP_i2v_batchnorm.json
