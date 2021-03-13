#!/bin/bash

tlt-export detectnet_v2 \
            -m /model/retrain/weights/resnet18_detector.tlt \
            -o /model/final_int8.etlt \
            -k $KEY  \
            --cal_data_file /model/int8_calibration.tensor \
            --data_type int8 \
            --batches 40 \
            --batch_size 4 \
            --max_batch_size 4\
            --engine_file /model/final_int8.trt \
            --cal_cache_file /model/int8_calibration.bin \
            --verbose

