#!/bin/bash
#SBATCH --job-name=default_train
#SBATCH --output=%J.out_
#SBATCH --error=%J.err_
#SBATCH --gres=gpu:1
#SBATCH --time=12:00:00
#SBATCH --ntasks=1
CUDA_VISIBLE_DEVICES=0 python train.py  data-bin/iwslt14.tokenized.de-en --lr 0.25 --optimizer nag --clip-norm 0.1  --dropout 0.2 --max-tokens 4000 --max-sentences 64 --arch fconv_iwslt_de_en --save-dir checkpoints/fconv