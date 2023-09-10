#! /bin/bash

#SBATCH -A MST111109
#SBATCH -J eval
#SBATCH -p gp4d
#SBATCH -e test_eval.txt
#SBATCH -c 4
#SBATCH --gres=gpu:1
#SBATCH --mail-type=ALL
#SBATCH --mail-user=gohyixian456@gmail.com

# 518572 - ckpt_1000
# 518573 - ckpt_2000
srun python eval.py -s /work/u5832291/Palette-Image-to-Image-Diffusion-Models/datasets/nerf/test/night -d /work/u5832291/yixian/palette_scene2scene/experiments/test_outputs_only_copied/ckpt_2000


# compute FID between two folders
# Found 76 images in the folder /work/u5832291/Palette-Image-to-Image-Diffusion-Models/datasets/nerf/test/night
# Found 76 images in the folder /work/u5832291/yixian/palette_scene2scene/experiments/test_outputs_only_copied/ckpt_1000
# make_dataset
# FID: 157.79765533010988
# IS:1.9532159593769172 0.16038566955601813

# compute FID between two folders
# Found 76 images in the folder /work/u5832291/Palette-Image-to-Image-Diffusion-Models/datasets/nerf/test/night
# Found 76 images in the folder /work/u5832291/yixian/palette_scene2scene/experiments/test_outputs_only_copied/ckpt_2000
# make_dataset
# FID: 472.87638279171694
# IS:1.0146067945386592 0.007191178612207012
