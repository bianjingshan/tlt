#!/bin/bash

tlt-infer detectnet_v2 -e ../tlt_specs/detectnet_v2_inference_kitti_tlt.txt \
                       -o /data/infer_output \
		       -i /data/test_images \
                       -k ${KEY}

