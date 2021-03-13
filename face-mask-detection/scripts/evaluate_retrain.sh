#!/bin/bash

tlt-evaluate detectnet_v2 -e ../tlt_specs/detectnet_v2_train_resnet18_kitti.txt \
                       -m /model/retrain/weights/resnet18_detector.tlt \
                       -k ${KEY}

