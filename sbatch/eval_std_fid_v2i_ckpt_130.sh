#! /bin/bash

#SBATCH -A MST111109
#SBATCH -J eval_std_fid
#SBATCH -p gp4d
#SBATCH -e test_eval_std_fid_v2i_ckpt_130.txt
#SBATCH -c 4
#SBATCH --gres=gpu:1
#SBATCH --mail-type=ALL
#SBATCH --mail-user=gohyixian456@gmail.com

# 525738
srun python eval_std_fid.py -s /work/u5832291/datasets/LLVIP/infrared/test -d /work/u5832291/yixian/palette_scene2scene_rec/experiments/test_train_TWCC_palette_LLVIP_Visible2Infrared_batchnorm_231003_102905_ckpt_130/output_only

# compute FID between two folders
# Found 3463 images in the folder /work/u5832291/datasets/LLVIP/infrared/test
# Found 3463 images in the folder /work/u5832291/yixian/palette_scene2scene_rec/experiments/test_train_TWCC_palette_LLVIP_Visible2Infrared_batchnorm_231003_102905_ckpt_130/output_only
# make_dataset
#   Std FID: 325.841580722966
#       FID: 334.6016341441749
# IS (mean): 2.8472659783560266
#  IS (std): 0.18518937505925917
