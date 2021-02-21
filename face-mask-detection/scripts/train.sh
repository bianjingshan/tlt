#!/bin/bash

tlt-train detectnet_v2 -e ../tlt_specs/detectnet_v2_train_resnet18_kitti.txt \
                       -r /model/train \
                       -k ${KEY} \
                       -n resnet18_detector \
                       --gpus 1

