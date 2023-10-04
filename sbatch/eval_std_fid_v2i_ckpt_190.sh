#! /bin/bash

#SBATCH -A MST111109
#SBATCH -J eval_std_fid
#SBATCH -p gp4d
#SBATCH -e test_eval_std_fid_v2i_ckpt_190.txt
#SBATCH -c 4
#SBATCH --gres=gpu:1
#SBATCH --mail-type=ALL
#SBATCH --mail-user=gohyixian456@gmail.com

# 525739
srun python eval_std_fid.py -s /work/u5832291/datasets/LLVIP/infrared/test -d /work/u5832291/yixian/palette_scene2scene_rec/experiments/test_train_TWCC_palette_LLVIP_Visible2Infrared_batchnorm_231003_102912_ckpt_190/output_only

# compute FID between two folders
# Found 3463 images in the folder /work/u5832291/datasets/LLVIP/infrared/test
# Found 3463 images in the folder /work/u5832291/yixian/palette_scene2scene_rec/experiments/test_train_TWCC_palette_LLVIP_Visible2Infrared_batchnorm_231003_102912_ckpt_190/output_only
# make_dataset
#   Std FID: 299.17589956163687
#       FID: 303.85675087435294
# IS (mean): 2.708485320653767
#  IS (std): 0.20926224651739697
