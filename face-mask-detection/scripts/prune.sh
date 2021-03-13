#!/bin/bash

tlt-prune -m /model/train/weights/resnet18_detector.tlt \
          -o /model/pruned.tlt \
          -eq union \
          -pth 0.1 \
          -k ${KEY}

