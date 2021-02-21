#!/bin/bash

tlt-prune -m /model/train/weights/resnet18_detector.tlt \
          -o /model/prune.tlt \
          -eq union \
          -pth 0.1 \
          -k ${KEY}

