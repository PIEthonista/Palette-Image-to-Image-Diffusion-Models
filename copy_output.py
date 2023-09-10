import os
import shutil
import argparse

# file copier for evaluation: fid calculation
parser = argparse.ArgumentParser()
parser.add_argument('--src', default='', type=str, help='Source dir to copy files')
parser.add_argument('--dest', default='', type=str, help='Destination dir to paste copied files')
parser.add_argument('--startswith', default='Out_', type=str, help='Only copy files from source that startswith this value')
parser.add_argument('--remove_startswith', default='Out_', type=str, help='Value to remove from pasted files\' name')
args = parser.parse_args()

files = [f for f in sorted(os.listdir(args.src)) if f.startswith(args.startswith)]
done=0
for f in files:
    shutil.copy(os.path.join(args.src, f), os.path.join(args.dest, f.replace(args.remove_startswith, "")))
    done += 1
print(f"Copied {done} files")