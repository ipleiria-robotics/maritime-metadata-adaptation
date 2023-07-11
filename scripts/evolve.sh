#!/bin/bash
echo "Training YOLOv7"

# Variables
data="./hyp/data/SeaDronesSee_real.yaml"
config="./hyp/cfg/yolov7_SeaDronesSee_real.yaml"
hyper="./hyp/hyp/hyp_evolved.yaml"
weights="./weights/yolov7_training.pt"

num_epochs=20
batch_size=16

# Variables
python3 ./baseline/train.py \
    --workers 4 \
    --device 0 \
    --batch-size $batch_size \
    --epochs $num_epochs \
    --img 640 640 \
    --data $data \
    --hyp $hyper \
    --cfg $config \
    --name yolov7-synth-evolve \
    --weights $weights \
    --cache-images \
    --evolve
