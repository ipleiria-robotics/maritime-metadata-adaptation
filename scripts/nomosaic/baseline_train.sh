#!/bin/bash

echo "Training YOLOv7"
# Variables
num_epochs=80
batch_size=16

data="./hyp/data/SeaDronesSee_real.yaml"
config="./hyp/cfg/yolov7_SeaDronesSee_real.yaml"
weights="./yolov7_training.pt"

hyper="./hyp/hyp/hyp_evolved_nomoisaic.yaml"
python3 ./baseline/train.py \
    --workers 4 \
    --device 0 \
    --batch-size $batch_size \
    --epochs $num_epochs \
    --img-size 640 \
    --data $data \
    --hyp $hyper \
    --cfg $config \
    --name baseline_evolved-seed0 \
    --project results_nomosaic \
    --weights $weights \
    --cache-images \
    --seed 0

python3 ./baseline/train.py \
    --workers 4 \
    --device 0 \
    --batch-size $batch_size \
    --epochs $num_epochs \
    --img-size 640 \
    --data $data \
    --hyp $hyper \
    --cfg $config \
    --name baseline_evolved-seed42 \
    --project results_nomosaic \
    --weights $weights \
    --cache-images \
    --seed 42

python3 ./baseline/train.py \
    --workers 4 \
    --device 0 \
    --batch-size $batch_size \
    --epochs $num_epochs \
    --img-size 640 \
    --data $data \
    --hyp $hyper \
    --cfg $config \
    --name baseline_evolved-seed821 \
    --project results_nomosaic \
    --weights $weights \
    --cache-images \
    --seed 821

python3 ./baseline/train.py \
    --workers 4 \
    --device 0 \
    --batch-size $batch_size \
    --epochs $num_epochs \
    --img-size 640 \
    --data $data \
    --hyp $hyper \
    --cfg $config \
    --name baseline_evolved-seed1765 \
    --project results_nomosaic \
    --weights $weights \
    --cache-images \
    --seed 1765