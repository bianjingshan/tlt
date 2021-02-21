#!/bin/bash

python ../data_utils/data2kitti.py \
  --kaggle-dataset-path    /data/raw_dataset/Kaggle-Medical-Mask-Dataset \
  --mafa-dataset-path      /data/raw_dataset/MAFA \
  --fddb-dataset-path      /data/raw_dataset/FDDB \
  --widerface-dataset-path /data/raw_dataset/WiderFace \
  --kitti-base-path        /data/kitti_dataset \
  --train
