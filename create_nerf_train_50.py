import os

day = '/work/u5832291/yixian/palette_scene2scene/datasets/nerf_train_50/day'
night = '/work/u5832291/yixian/palette_scene2scene/datasets/nerf_train_50/night'
evening = '/work/u5832291/yixian/palette_scene2scene/datasets/nerf_train_50/evening'
rain = '/work/u5832291/yixian/palette_scene2scene/datasets/nerf_train_50/rain'

assert sorted(os.listdir(day)) == sorted(os.listdir(night)) == sorted(os.listdir(evening)) == sorted(os.listdir(rain))

output_file_path = '/work/u5832291/yixian/palette_scene2scene/datasets/nerf_train_50/nerf_train_50.txt'


file_names = []
for filename in sorted(os.listdir(day)):
    if os.path.isfile(os.path.join(day, filename)):
        file_names.append(filename)

with open(output_file_path, 'w') as file:
    for filename in file_names:
        file.write(filename + '\n')

print(f"File names have been written to '{output_file_path}'")