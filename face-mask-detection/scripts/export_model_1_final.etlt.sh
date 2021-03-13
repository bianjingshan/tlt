#!/bin/bash

tlt-export detectnet_v2 -m /model/retrain/weights/resnet18_detector.tlt \
                        -o /model/final.etlt \
                        -k ${KEY}

