#!/bin/bash
DATASET_NAME="VN3K"

CUDA_VISIBLE_DEVICES=0 \
python train.py \
--name iira \
--img_aug \
--batch_size 8 \
--MLM \
--dataset_name $DATASET_NAME \
--loss_names 'sdm+mlm+id' \
--num_epoch 60