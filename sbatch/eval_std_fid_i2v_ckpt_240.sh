#! /bin/bash

#SBATCH -A MST111109
#SBATCH -J eval_std_fid
#SBATCH -p gp4d
#SBATCH -e test_eval_std_fid_i2v_ckpt_240.txt
#SBATCH -c 4
#SBATCH --gres=gpu:1
#SBATCH --mail-type=ALL
#SBATCH --mail-user=gohyixian456@gmail.com

# 525736
srun python eval_std_fid.py -s /work/u5832291/datasets/LLVIP/visible/test -d /work/u5832291/yixian/palette_scene2scene_rec/experiments/test_TWCC_palette_LLVIP_Infrared2Visible_batchnorm_231003_102843_ckpt_240/output_only

# compute FID between two folders
# Found 3463 images in the folder /work/u5832291/datasets/LLVIP/visible/test
# Found 3463 images in the folder /work/u5832291/yixian/palette_scene2scene_rec/experiments/test_TWCC_palette_LLVIP_Infrared2Visible_batchnorm_231003_102843_ckpt_240/output_only
# make_dataset
#   Std FID: 352.4058053580552
#       FID: 353.7095932722837
# IS (mean): 2.1060377963568913
#  IS (std): 0.2686906987868008
