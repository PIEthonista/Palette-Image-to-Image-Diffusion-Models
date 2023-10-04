#! /bin/bash

#SBATCH -A MST111109
#SBATCH -J eval_std_fid
#SBATCH -p gp4d
#SBATCH -e test_eval_std_fid_i2v_ckpt_100.txt
#SBATCH -c 4
#SBATCH --gres=gpu:1
#SBATCH --mail-type=ALL
#SBATCH --mail-user=gohyixian456@gmail.com

# 525735
srun python eval_std_fid.py -s /work/u5832291/datasets/LLVIP/visible/test -d /work/u5832291/yixian/palette_scene2scene_rec/experiments/test_TWCC_palette_LLVIP_Infrared2Visible_batchnorm_231003_102743_ckpt_100/output_only

# compute FID between two folders
# Found 3463 images in the folder /work/u5832291/datasets/LLVIP/visible/test
# Found 3463 images in the folder /work/u5832291/yixian/palette_scene2scene_rec/experiments/test_TWCC_palette_LLVIP_Infrared2Visible_batchnorm_231003_102743_ckpt_100/output_only
# make_dataset
#   Std FID: 296.1676055514096
#       FID: 299.1677323617
# IS (mean): 1.8564692401140537
#  IS (std): 0.17895662770345358
