#! /bin/bash

#SBATCH -A MST111109
#SBATCH -J eval_std_fid
#SBATCH -p gp4d
#SBATCH -e test_eval_std_fid_v2i_ckpt_130_2.txt
#SBATCH -c 4
#SBATCH --gres=gpu:1
#SBATCH --mail-type=ALL
#SBATCH --mail-user=gohyixian456@gmail.com

# 525737
srun python eval_std_fid.py -s /work/u5832291/datasets/LLVIP/infrared/test -d /work/u5832291/yixian/palette_scene2scene_rec/experiments/test_train_TWCC_palette_LLVIP_Visible2Infrared_batchnorm_231003_103232_ckpt_130/output_only

# compute FID between two folders
# Found 3463 images in the folder /work/u5832291/datasets/LLVIP/infrared/test
# Found 3463 images in the folder /work/u5832291/yixian/palette_scene2scene_rec/experiments/test_train_TWCC_palette_LLVIP_Visible2Infrared_batchnorm_231003_103232_ckpt_130/output_only
# make_dataset
#   Std FID: 309.15623120442115
#       FID: 318.81216120825036
# IS (mean): 2.824915148857471
#  IS (std): 0.2853169890142246
