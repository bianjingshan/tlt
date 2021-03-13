#!/bin/bash


tlt-converter /model/final_int8.etlt \
              -k ${KEY} \
	      -c /model/int8_calibration.bin \
              -o output_cov/Sigmoid,output_bbox/BiasAdd \
	      -d 3,544,960 \
	      -i nchw \
	      -m 64 \
	      -t int8 \
	      -e /model/final_int8.engine \
	      -b 4


