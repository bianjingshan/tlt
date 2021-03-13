#!/bin/bash

echo "KEY: ${KEY}"

tlt-converter /model/final.etlt \
              -k ${KEY} \
              -o output_cov/Sigmoid,output_bbox/BiasAdd \
	      -d 3,544,960 \
	      -i nchw \
	      -t fp32 \
	      -e /model/final.trt


