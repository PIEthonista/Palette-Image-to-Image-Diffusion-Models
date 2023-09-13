#! /bin/bash

#SBATCH -A MST111109
#SBATCH -J TWCC_palette_LLVIP_Infrared2Visible_batchnorm
#SBATCH -p gp4d
#SBATCH -e train_TWCC_palette_LLVIP_Infrared2Visible_batchnorm.txt
#SBATCH -c 4
#SBATCH --gres=gpu:1
#SBATCH --mail-type=ALL
#SBATCH --mail-user=gohyixian456@gmail.com

# 519506
srun python run.py -p train -c /work/u5832291/yixian/palette_scene2scene/config/TWCC_palette_LLVIP_Infrared2Visible_batchnorm.json