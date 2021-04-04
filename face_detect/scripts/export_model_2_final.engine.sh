#!/bin/bash

echo "KEY: ${KEY}"

tlt-converter /model/pretrained/face_detect/model.etlt \
              -k ${KEY} \
              -o output_cov/Sigmoid,output_bbox/BiasAdd \
	      -d 3,416,736 \
	      -i nchw \
	      -t fp32 \
	      -e /model/pretrained/face_detect/model.engine


