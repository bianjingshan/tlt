sudo docker run --rm --gpus all --name ds_test --device=/dev/video0 -it -p 8554:8554  -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=:0 -v "/home/jia/wxh/tlt-demo":"/tlt-demo" -w /tlt-demo/face-mask-detection/ds_configs nvcr.io/nvidia/deepstream:5.0.1-20.09-samples /bin/bash